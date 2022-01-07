; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/vt/extr_vt_core.c_vt_proc_alive.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/vt/extr_vt_core.c_vt_proc_alive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vt_window = type { i64, %struct.TYPE_2__, %struct.proc* }
%struct.TYPE_2__ = type { i64 }
%struct.proc = type { i32 }

@VT_PROCESS = common dso_local global i64 0, align 8
@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@VT_AUTO = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [32 x i8] c"vt controlling process %d died\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vt_window*)* @vt_proc_alive to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vt_proc_alive(%struct.vt_window* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vt_window*, align 8
  %4 = alloca %struct.proc*, align 8
  store %struct.vt_window* %0, %struct.vt_window** %3, align 8
  %5 = load %struct.vt_window*, %struct.vt_window** %3, align 8
  %6 = getelementptr inbounds %struct.vt_window, %struct.vt_window* %5, i32 0, i32 1
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @VT_PROCESS, align 8
  %10 = icmp ne i64 %8, %9
  br i1 %10, label %11, label %13

11:                                               ; preds = %1
  %12 = load i32, i32* @FALSE, align 4
  store i32 %12, i32* %2, align 4
  br label %50

13:                                               ; preds = %1
  %14 = load %struct.vt_window*, %struct.vt_window** %3, align 8
  %15 = getelementptr inbounds %struct.vt_window, %struct.vt_window* %14, i32 0, i32 2
  %16 = load %struct.proc*, %struct.proc** %15, align 8
  %17 = icmp ne %struct.proc* %16, null
  br i1 %17, label %18, label %48

18:                                               ; preds = %13
  %19 = load %struct.vt_window*, %struct.vt_window** %3, align 8
  %20 = getelementptr inbounds %struct.vt_window, %struct.vt_window* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = call %struct.proc* @pfind(i64 %21)
  store %struct.proc* %22, %struct.proc** %4, align 8
  %23 = icmp ne %struct.proc* %22, null
  br i1 %23, label %24, label %27

24:                                               ; preds = %18
  %25 = load %struct.proc*, %struct.proc** %4, align 8
  %26 = call i32 @PROC_UNLOCK(%struct.proc* %25)
  br label %27

27:                                               ; preds = %24, %18
  %28 = load %struct.vt_window*, %struct.vt_window** %3, align 8
  %29 = getelementptr inbounds %struct.vt_window, %struct.vt_window* %28, i32 0, i32 2
  %30 = load %struct.proc*, %struct.proc** %29, align 8
  %31 = load %struct.proc*, %struct.proc** %4, align 8
  %32 = icmp eq %struct.proc* %30, %31
  br i1 %32, label %33, label %35

33:                                               ; preds = %27
  %34 = load i32, i32* @TRUE, align 4
  store i32 %34, i32* %2, align 4
  br label %50

35:                                               ; preds = %27
  %36 = load %struct.vt_window*, %struct.vt_window** %3, align 8
  %37 = getelementptr inbounds %struct.vt_window, %struct.vt_window* %36, i32 0, i32 2
  store %struct.proc* null, %struct.proc** %37, align 8
  %38 = load i64, i64* @VT_AUTO, align 8
  %39 = load %struct.vt_window*, %struct.vt_window** %3, align 8
  %40 = getelementptr inbounds %struct.vt_window, %struct.vt_window* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  store i64 %38, i64* %41, align 8
  %42 = load %struct.vt_window*, %struct.vt_window** %3, align 8
  %43 = getelementptr inbounds %struct.vt_window, %struct.vt_window* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = call i32 @DPRINTF(i32 1, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i64 %44)
  %46 = load %struct.vt_window*, %struct.vt_window** %3, align 8
  %47 = getelementptr inbounds %struct.vt_window, %struct.vt_window* %46, i32 0, i32 0
  store i64 0, i64* %47, align 8
  br label %48

48:                                               ; preds = %35, %13
  %49 = load i32, i32* @FALSE, align 4
  store i32 %49, i32* %2, align 4
  br label %50

50:                                               ; preds = %48, %33, %11
  %51 = load i32, i32* %2, align 4
  ret i32 %51
}

declare dso_local %struct.proc* @pfind(i64) #1

declare dso_local i32 @PROC_UNLOCK(%struct.proc*) #1

declare dso_local i32 @DPRINTF(i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
