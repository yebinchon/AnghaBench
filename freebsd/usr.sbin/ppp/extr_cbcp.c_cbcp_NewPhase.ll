; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_cbcp.c_cbcp_NewPhase.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_cbcp.c_cbcp_NewPhase.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cbcp = type { %struct.TYPE_6__, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@LogCBCP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"%s: State change %s --> %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cbcp*, i32)* @cbcp_NewPhase to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cbcp_NewPhase(%struct.cbcp* %0, i32 %1) #0 {
  %3 = alloca %struct.cbcp*, align 8
  %4 = alloca i32, align 4
  store %struct.cbcp* %0, %struct.cbcp** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.cbcp*, %struct.cbcp** %3, align 8
  %6 = getelementptr inbounds %struct.cbcp, %struct.cbcp* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = load i32, i32* %4, align 4
  %10 = icmp ne i32 %8, %9
  br i1 %10, label %11, label %32

11:                                               ; preds = %2
  %12 = load i32, i32* @LogCBCP, align 4
  %13 = load %struct.cbcp*, %struct.cbcp** %3, align 8
  %14 = getelementptr inbounds %struct.cbcp, %struct.cbcp* %13, i32 0, i32 1
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.cbcp*, %struct.cbcp** %3, align 8
  %21 = getelementptr inbounds %struct.cbcp, %struct.cbcp* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @cbcpstate(i32 %23)
  %25 = load i32, i32* %4, align 4
  %26 = call i32 @cbcpstate(i32 %25)
  %27 = call i32 @log_Printf(i32 %12, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %19, i32 %24, i32 %26)
  %28 = load i32, i32* %4, align 4
  %29 = load %struct.cbcp*, %struct.cbcp** %3, align 8
  %30 = getelementptr inbounds %struct.cbcp, %struct.cbcp* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  store i32 %28, i32* %31, align 8
  br label %32

32:                                               ; preds = %11, %2
  ret void
}

declare dso_local i32 @log_Printf(i32, i8*, i32, i32, i32) #1

declare dso_local i32 @cbcpstate(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
