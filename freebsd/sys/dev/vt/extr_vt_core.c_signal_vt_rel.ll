; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/vt/extr_vt_core.c_signal_vt_rel.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/vt/extr_vt_core.c_signal_vt_rel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vt_window = type { i64, i32*, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i64, i32 }

@VT_PROCESS = common dso_local global i64 0, align 8
@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@VWF_SWWAIT_REL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"sending relsig to %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vt_window*)* @signal_vt_rel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @signal_vt_rel(%struct.vt_window* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vt_window*, align 8
  store %struct.vt_window* %0, %struct.vt_window** %3, align 8
  %4 = load %struct.vt_window*, %struct.vt_window** %3, align 8
  %5 = getelementptr inbounds %struct.vt_window, %struct.vt_window* %4, i32 0, i32 2
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @VT_PROCESS, align 8
  %9 = icmp ne i64 %7, %8
  br i1 %9, label %10, label %12

10:                                               ; preds = %1
  %11 = load i32, i32* @FALSE, align 4
  store i32 %11, i32* %2, align 4
  br label %55

12:                                               ; preds = %1
  %13 = load %struct.vt_window*, %struct.vt_window** %3, align 8
  %14 = getelementptr inbounds %struct.vt_window, %struct.vt_window* %13, i32 0, i32 1
  %15 = load i32*, i32** %14, align 8
  %16 = icmp eq i32* %15, null
  br i1 %16, label %22, label %17

17:                                               ; preds = %12
  %18 = load %struct.vt_window*, %struct.vt_window** %3, align 8
  %19 = call i32 @vt_proc_alive(%struct.vt_window* %18)
  %20 = load i32, i32* @FALSE, align 4
  %21 = icmp eq i32 %19, %20
  br i1 %21, label %22, label %28

22:                                               ; preds = %17, %12
  %23 = load %struct.vt_window*, %struct.vt_window** %3, align 8
  %24 = getelementptr inbounds %struct.vt_window, %struct.vt_window* %23, i32 0, i32 1
  store i32* null, i32** %24, align 8
  %25 = load %struct.vt_window*, %struct.vt_window** %3, align 8
  %26 = getelementptr inbounds %struct.vt_window, %struct.vt_window* %25, i32 0, i32 0
  store i64 0, i64* %26, align 8
  %27 = load i32, i32* @TRUE, align 4
  store i32 %27, i32* %2, align 4
  br label %55

28:                                               ; preds = %17
  %29 = load i32, i32* @VWF_SWWAIT_REL, align 4
  %30 = load %struct.vt_window*, %struct.vt_window** %3, align 8
  %31 = getelementptr inbounds %struct.vt_window, %struct.vt_window* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 8
  %33 = or i32 %32, %29
  store i32 %33, i32* %31, align 8
  %34 = load %struct.vt_window*, %struct.vt_window** %3, align 8
  %35 = getelementptr inbounds %struct.vt_window, %struct.vt_window* %34, i32 0, i32 1
  %36 = load i32*, i32** %35, align 8
  %37 = call i32 @PROC_LOCK(i32* %36)
  %38 = load %struct.vt_window*, %struct.vt_window** %3, align 8
  %39 = getelementptr inbounds %struct.vt_window, %struct.vt_window* %38, i32 0, i32 1
  %40 = load i32*, i32** %39, align 8
  %41 = load %struct.vt_window*, %struct.vt_window** %3, align 8
  %42 = getelementptr inbounds %struct.vt_window, %struct.vt_window* %41, i32 0, i32 2
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @kern_psignal(i32* %40, i32 %44)
  %46 = load %struct.vt_window*, %struct.vt_window** %3, align 8
  %47 = getelementptr inbounds %struct.vt_window, %struct.vt_window* %46, i32 0, i32 1
  %48 = load i32*, i32** %47, align 8
  %49 = call i32 @PROC_UNLOCK(i32* %48)
  %50 = load %struct.vt_window*, %struct.vt_window** %3, align 8
  %51 = getelementptr inbounds %struct.vt_window, %struct.vt_window* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = call i32 @DPRINTF(i32 1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i64 %52)
  %54 = load i32, i32* @TRUE, align 4
  store i32 %54, i32* %2, align 4
  br label %55

55:                                               ; preds = %28, %22, %10
  %56 = load i32, i32* %2, align 4
  ret i32 %56
}

declare dso_local i32 @vt_proc_alive(%struct.vt_window*) #1

declare dso_local i32 @PROC_LOCK(i32*) #1

declare dso_local i32 @kern_psignal(i32*, i32) #1

declare dso_local i32 @PROC_UNLOCK(i32*) #1

declare dso_local i32 @DPRINTF(i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
