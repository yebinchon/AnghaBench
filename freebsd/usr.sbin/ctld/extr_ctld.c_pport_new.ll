; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ctld/extr_ctld.c_pport_new.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ctld/extr_ctld.c_pport_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pport = type { i32, i32, i32, %struct.conf* }
%struct.conf = type { i32 }

@.str = private unnamed_addr constant [7 x i8] c"calloc\00", align 1
@pp_next = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.pport* @pport_new(%struct.conf* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.conf*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.pport*, align 8
  store %struct.conf* %0, %struct.conf** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = call %struct.pport* @calloc(i32 1, i32 24)
  store %struct.pport* %8, %struct.pport** %7, align 8
  %9 = load %struct.pport*, %struct.pport** %7, align 8
  %10 = icmp eq %struct.pport* %9, null
  br i1 %10, label %11, label %13

11:                                               ; preds = %3
  %12 = call i32 @log_err(i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  br label %13

13:                                               ; preds = %11, %3
  %14 = load %struct.conf*, %struct.conf** %4, align 8
  %15 = load %struct.pport*, %struct.pport** %7, align 8
  %16 = getelementptr inbounds %struct.pport, %struct.pport* %15, i32 0, i32 3
  store %struct.conf* %14, %struct.conf** %16, align 8
  %17 = load i8*, i8** %5, align 8
  %18 = call i32 @checked_strdup(i8* %17)
  %19 = load %struct.pport*, %struct.pport** %7, align 8
  %20 = getelementptr inbounds %struct.pport, %struct.pport* %19, i32 0, i32 2
  store i32 %18, i32* %20, align 8
  %21 = load i32, i32* %6, align 4
  %22 = load %struct.pport*, %struct.pport** %7, align 8
  %23 = getelementptr inbounds %struct.pport, %struct.pport* %22, i32 0, i32 1
  store i32 %21, i32* %23, align 4
  %24 = load %struct.pport*, %struct.pport** %7, align 8
  %25 = getelementptr inbounds %struct.pport, %struct.pport* %24, i32 0, i32 0
  %26 = call i32 @TAILQ_INIT(i32* %25)
  %27 = load %struct.conf*, %struct.conf** %4, align 8
  %28 = getelementptr inbounds %struct.conf, %struct.conf* %27, i32 0, i32 0
  %29 = load %struct.pport*, %struct.pport** %7, align 8
  %30 = load i32, i32* @pp_next, align 4
  %31 = call i32 @TAILQ_INSERT_TAIL(i32* %28, %struct.pport* %29, i32 %30)
  %32 = load %struct.pport*, %struct.pport** %7, align 8
  ret %struct.pport* %32
}

declare dso_local %struct.pport* @calloc(i32, i32) #1

declare dso_local i32 @log_err(i32, i8*) #1

declare dso_local i32 @checked_strdup(i8*) #1

declare dso_local i32 @TAILQ_INIT(i32*) #1

declare dso_local i32 @TAILQ_INSERT_TAIL(i32*, %struct.pport*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
