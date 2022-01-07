; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/syscons/extr_schistory.c_sc_hist_ioctl.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/syscons/extr_schistory.c_sc_hist_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty = type { i32 }
%struct.thread = type { i32 }
%struct.TYPE_6__ = type { i32, %struct.TYPE_5__*, i32, i32 }
%struct.TYPE_5__ = type { i32* }

@EINVAL = common dso_local global i32 0, align 4
@BUFFER_SAVED = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"lines:%d, ysize:%d, pool:%d\0A\00", align 1
@extra_history_size = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"error:%d, rows:%d, pool:%d\0A\00", align 1
@SC_NORM_ATTR = common dso_local global i32 0, align 4
@ENOIOCTL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sc_hist_ioctl(%struct.tty* %0, i32 %1, i64 %2, %struct.thread* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.tty*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca %struct.thread*, align 8
  %10 = alloca %struct.TYPE_6__*, align 8
  %11 = alloca i32, align 4
  store %struct.tty* %0, %struct.tty** %6, align 8
  store i32 %1, i32* %7, align 4
  store i64 %2, i64* %8, align 8
  store %struct.thread* %3, %struct.thread** %9, align 8
  %12 = load i32, i32* %7, align 4
  switch i32 %12, label %81 [
    i32 128, label %13
    i32 129, label %65
  ]

13:                                               ; preds = %4
  %14 = load %struct.tty*, %struct.tty** %6, align 8
  %15 = call %struct.TYPE_6__* @SC_STAT(%struct.tty* %14)
  store %struct.TYPE_6__* %15, %struct.TYPE_6__** %10, align 8
  %16 = load i64, i64* %8, align 8
  %17 = inttoptr i64 %16 to i32*
  %18 = load i32, i32* %17, align 4
  %19 = icmp sle i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %13
  %21 = load i32, i32* @EINVAL, align 4
  store i32 %21, i32* %5, align 4
  br label %83

22:                                               ; preds = %13
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @BUFFER_SAVED, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %22
  %30 = load i32, i32* @EBUSY, align 4
  store i32 %30, i32* %5, align 4
  br label %83

31:                                               ; preds = %22
  %32 = load i64, i64* %8, align 8
  %33 = inttoptr i64 %32 to i32*
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 3
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @extra_history_size, align 4
  %39 = sext i32 %38 to i64
  %40 = inttoptr i64 %39 to i8*
  %41 = call i32 @DPRINTF(i32 5, i8* %40)
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %43 = load i64, i64* %8, align 8
  %44 = inttoptr i64 %43 to i32*
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 3
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @imax(i32 %45, i32 %48)
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 3
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @TRUE, align 4
  %54 = call i32 @sc_alloc_history_buffer(%struct.TYPE_6__* %42, i32 %49, i32 %52, i32 %53)
  store i32 %54, i32* %11, align 4
  %55 = load i32, i32* %11, align 4
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 8
  %59 = call i32 @sc_vtb_rows(i32 %58)
  %60 = load i32, i32* @extra_history_size, align 4
  %61 = sext i32 %60 to i64
  %62 = inttoptr i64 %61 to i8*
  %63 = call i32 @DPRINTF(i32 5, i8* %62)
  %64 = load i32, i32* %11, align 4
  store i32 %64, i32* %5, align 4
  br label %83

65:                                               ; preds = %4
  %66 = load %struct.tty*, %struct.tty** %6, align 8
  %67 = call %struct.TYPE_6__* @SC_STAT(%struct.tty* %66)
  store %struct.TYPE_6__* %67, %struct.TYPE_6__** %10, align 8
  %68 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 8
  %71 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 1
  %73 = load %struct.TYPE_5__*, %struct.TYPE_5__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 0
  %75 = load i32*, i32** %74, align 8
  %76 = getelementptr inbounds i32, i32* %75, i64 32
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* @SC_NORM_ATTR, align 4
  %79 = shl i32 %78, 8
  %80 = call i32 @sc_vtb_clear(i32 %70, i32 %77, i32 %79)
  store i32 0, i32* %5, align 4
  br label %83

81:                                               ; preds = %4
  %82 = load i32, i32* @ENOIOCTL, align 4
  store i32 %82, i32* %5, align 4
  br label %83

83:                                               ; preds = %81, %65, %31, %29, %20
  %84 = load i32, i32* %5, align 4
  ret i32 %84
}

declare dso_local %struct.TYPE_6__* @SC_STAT(%struct.tty*) #1

declare dso_local i32 @DPRINTF(i32, i8*) #1

declare dso_local i32 @sc_alloc_history_buffer(%struct.TYPE_6__*, i32, i32, i32) #1

declare dso_local i32 @imax(i32, i32) #1

declare dso_local i32 @sc_vtb_rows(i32) #1

declare dso_local i32 @sc_vtb_clear(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
