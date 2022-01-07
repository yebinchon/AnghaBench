; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/autofs/extr_autofs.c_autofs_task.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/autofs/extr_autofs.c_autofs_task.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }
%struct.autofs_request = type { i32, i32, i32, i32, i32, i32 }

@autofs_softc = common dso_local global %struct.TYPE_2__* null, align 8
@.str = private unnamed_addr constant [45 x i8] c"request %d for %s timed out after %d seconds\00", align 1
@autofs_timeout = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @autofs_task to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @autofs_task(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.autofs_request*, align 8
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i8*, i8** %3, align 8
  %7 = bitcast i8* %6 to %struct.autofs_request*
  store %struct.autofs_request* %7, %struct.autofs_request** %5, align 8
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** @autofs_softc, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = call i32 @sx_xlock(i32* %9)
  %11 = load %struct.autofs_request*, %struct.autofs_request** %5, align 8
  %12 = getelementptr inbounds %struct.autofs_request, %struct.autofs_request* %11, i32 0, i32 5
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.autofs_request*, %struct.autofs_request** %5, align 8
  %15 = getelementptr inbounds %struct.autofs_request, %struct.autofs_request* %14, i32 0, i32 4
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @autofs_timeout, align 4
  %18 = call i32 @AUTOFS_WARN(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %13, i32 %16, i32 %17)
  %19 = load i32, i32* @ETIMEDOUT, align 4
  %20 = load %struct.autofs_request*, %struct.autofs_request** %5, align 8
  %21 = getelementptr inbounds %struct.autofs_request, %struct.autofs_request* %20, i32 0, i32 3
  store i32 %19, i32* %21, align 4
  %22 = load %struct.autofs_request*, %struct.autofs_request** %5, align 8
  %23 = getelementptr inbounds %struct.autofs_request, %struct.autofs_request* %22, i32 0, i32 0
  store i32 1, i32* %23, align 4
  %24 = load %struct.autofs_request*, %struct.autofs_request** %5, align 8
  %25 = getelementptr inbounds %struct.autofs_request, %struct.autofs_request* %24, i32 0, i32 1
  store i32 1, i32* %25, align 4
  %26 = load %struct.autofs_request*, %struct.autofs_request** %5, align 8
  %27 = getelementptr inbounds %struct.autofs_request, %struct.autofs_request* %26, i32 0, i32 2
  store i32 0, i32* %27, align 4
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** @autofs_softc, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 1
  %30 = call i32 @cv_broadcast(i32* %29)
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** @autofs_softc, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = call i32 @sx_xunlock(i32* %32)
  ret void
}

declare dso_local i32 @sx_xlock(i32*) #1

declare dso_local i32 @AUTOFS_WARN(i8*, i32, i32, i32) #1

declare dso_local i32 @cv_broadcast(i32*) #1

declare dso_local i32 @sx_xunlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
