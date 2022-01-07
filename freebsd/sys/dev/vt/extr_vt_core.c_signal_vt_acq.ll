; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/vt/extr_vt_core.c_signal_vt_acq.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/vt/extr_vt_core.c_signal_vt_acq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vt_window = type { i64, i32*, %struct.TYPE_6__, i32, %struct.TYPE_5__*, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { i64, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { %struct.vt_window** }

@VT_PROCESS = common dso_local global i64 0, align 8
@FALSE = common dso_local global i32 0, align 4
@VT_CONSWINDOW = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@VWF_SWWAIT_ACQ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"sending acqsig to %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vt_window*)* @signal_vt_acq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @signal_vt_acq(%struct.vt_window* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vt_window*, align 8
  store %struct.vt_window* %0, %struct.vt_window** %3, align 8
  %4 = load %struct.vt_window*, %struct.vt_window** %3, align 8
  %5 = getelementptr inbounds %struct.vt_window, %struct.vt_window* %4, i32 0, i32 2
  %6 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @VT_PROCESS, align 8
  %9 = icmp ne i64 %7, %8
  br i1 %9, label %10, label %12

10:                                               ; preds = %1
  %11 = load i32, i32* @FALSE, align 4
  store i32 %11, i32* %2, align 4
  br label %74

12:                                               ; preds = %1
  %13 = load %struct.vt_window*, %struct.vt_window** %3, align 8
  %14 = load %struct.vt_window*, %struct.vt_window** %3, align 8
  %15 = getelementptr inbounds %struct.vt_window, %struct.vt_window* %14, i32 0, i32 5
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load %struct.vt_window**, %struct.vt_window*** %17, align 8
  %19 = load i64, i64* @VT_CONSWINDOW, align 8
  %20 = getelementptr inbounds %struct.vt_window*, %struct.vt_window** %18, i64 %19
  %21 = load %struct.vt_window*, %struct.vt_window** %20, align 8
  %22 = icmp eq %struct.vt_window* %13, %21
  br i1 %22, label %23, label %31

23:                                               ; preds = %12
  %24 = load %struct.vt_window*, %struct.vt_window** %3, align 8
  %25 = getelementptr inbounds %struct.vt_window, %struct.vt_window* %24, i32 0, i32 4
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @FALSE, align 4
  %30 = call i32 @cnavailable(i32 %28, i32 %29)
  br label %31

31:                                               ; preds = %23, %12
  %32 = load %struct.vt_window*, %struct.vt_window** %3, align 8
  %33 = getelementptr inbounds %struct.vt_window, %struct.vt_window* %32, i32 0, i32 1
  %34 = load i32*, i32** %33, align 8
  %35 = icmp eq i32* %34, null
  br i1 %35, label %41, label %36

36:                                               ; preds = %31
  %37 = load %struct.vt_window*, %struct.vt_window** %3, align 8
  %38 = call i32 @vt_proc_alive(%struct.vt_window* %37)
  %39 = load i32, i32* @FALSE, align 4
  %40 = icmp eq i32 %38, %39
  br i1 %40, label %41, label %47

41:                                               ; preds = %36, %31
  %42 = load %struct.vt_window*, %struct.vt_window** %3, align 8
  %43 = getelementptr inbounds %struct.vt_window, %struct.vt_window* %42, i32 0, i32 1
  store i32* null, i32** %43, align 8
  %44 = load %struct.vt_window*, %struct.vt_window** %3, align 8
  %45 = getelementptr inbounds %struct.vt_window, %struct.vt_window* %44, i32 0, i32 0
  store i64 0, i64* %45, align 8
  %46 = load i32, i32* @TRUE, align 4
  store i32 %46, i32* %2, align 4
  br label %74

47:                                               ; preds = %36
  %48 = load i32, i32* @VWF_SWWAIT_ACQ, align 4
  %49 = load %struct.vt_window*, %struct.vt_window** %3, align 8
  %50 = getelementptr inbounds %struct.vt_window, %struct.vt_window* %49, i32 0, i32 3
  %51 = load i32, i32* %50, align 8
  %52 = or i32 %51, %48
  store i32 %52, i32* %50, align 8
  %53 = load %struct.vt_window*, %struct.vt_window** %3, align 8
  %54 = getelementptr inbounds %struct.vt_window, %struct.vt_window* %53, i32 0, i32 1
  %55 = load i32*, i32** %54, align 8
  %56 = call i32 @PROC_LOCK(i32* %55)
  %57 = load %struct.vt_window*, %struct.vt_window** %3, align 8
  %58 = getelementptr inbounds %struct.vt_window, %struct.vt_window* %57, i32 0, i32 1
  %59 = load i32*, i32** %58, align 8
  %60 = load %struct.vt_window*, %struct.vt_window** %3, align 8
  %61 = getelementptr inbounds %struct.vt_window, %struct.vt_window* %60, i32 0, i32 2
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 8
  %64 = call i32 @kern_psignal(i32* %59, i32 %63)
  %65 = load %struct.vt_window*, %struct.vt_window** %3, align 8
  %66 = getelementptr inbounds %struct.vt_window, %struct.vt_window* %65, i32 0, i32 1
  %67 = load i32*, i32** %66, align 8
  %68 = call i32 @PROC_UNLOCK(i32* %67)
  %69 = load %struct.vt_window*, %struct.vt_window** %3, align 8
  %70 = getelementptr inbounds %struct.vt_window, %struct.vt_window* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = call i32 @DPRINTF(i32 1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i64 %71)
  %73 = load i32, i32* @TRUE, align 4
  store i32 %73, i32* %2, align 4
  br label %74

74:                                               ; preds = %47, %41, %10
  %75 = load i32, i32* %2, align 4
  ret i32 %75
}

declare dso_local i32 @cnavailable(i32, i32) #1

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
