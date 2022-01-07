; ModuleID = '/home/carl/AnghaBench/freebsd/sys/teken/extr_teken_subr.h_teken_subr_reset_dec_mode.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/teken/extr_teken_subr.h_teken_subr_reset_dec_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, %struct.TYPE_11__, %struct.TYPE_10__, %struct.TYPE_9__ }
%struct.TYPE_11__ = type { i32, i32 }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i32, i32 }

@TS_CURSORKEYS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"DECRST VT52\0A\00", align 1
@TP_132COLS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"DECRST inverse video\0A\00", align 1
@TS_ORIGIN = common dso_local global i32 0, align 4
@TS_WRAPPED = common dso_local global i32 0, align 4
@TS_AUTOWRAP = common dso_local global i32 0, align 4
@TP_AUTOREPEAT = common dso_local global i32 0, align 4
@TP_SHOWCURSOR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [18 x i8] c"DECRST allow 132\0A\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"DECRST reverse wraparound\0A\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"Switch to alternate buffer\0A\00", align 1
@TP_MOUSE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [20 x i8] c"Unknown DECRST: %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_12__*, i32)* @teken_subr_reset_dec_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @teken_subr_reset_dec_mode(%struct.TYPE_12__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_12__*, align 8
  %4 = alloca i32, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  switch i32 %5, label %79 [
    i32 1, label %6
    i32 2, label %13
    i32 3, label %15
    i32 5, label %21
    i32 6, label %23
    i32 7, label %54
    i32 8, label %61
    i32 25, label %65
    i32 40, label %69
    i32 45, label %71
    i32 47, label %73
    i32 1000, label %75
  ]

6:                                                ; preds = %2
  %7 = load i32, i32* @TS_CURSORKEYS, align 4
  %8 = xor i32 %7, -1
  %9 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = and i32 %11, %8
  store i32 %12, i32* %10, align 4
  br label %82

13:                                               ; preds = %2
  %14 = call i32 (i8*, ...) @teken_printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  br label %82

15:                                               ; preds = %2
  %16 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %17 = load i32, i32* @TP_132COLS, align 4
  %18 = call i32 @teken_funcs_param(%struct.TYPE_12__* %16, i32 %17, i32 0)
  %19 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %20 = call i32 @teken_subr_reset_to_initial_state(%struct.TYPE_12__* %19)
  br label %82

21:                                               ; preds = %2
  %22 = call i32 (i8*, ...) @teken_printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  br label %82

23:                                               ; preds = %2
  %24 = load i32, i32* @TS_ORIGIN, align 4
  %25 = xor i32 %24, -1
  %26 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = and i32 %28, %25
  store i32 %29, i32* %27, align 4
  %30 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %30, i32 0, i32 3
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i32 0, i32 1
  store i32 0, i32* %32, align 4
  %33 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %33, i32 0, i32 2
  %35 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %37, i32 0, i32 3
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i32 0, i32 0
  store i32 %36, i32* %39, align 4
  %40 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %41 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %41, i32 0, i32 0
  store i32 0, i32* %42, align 4
  %43 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %44 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %44, i32 0, i32 1
  store i32 0, i32* %45, align 4
  %46 = load i32, i32* @TS_WRAPPED, align 4
  %47 = xor i32 %46, -1
  %48 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %49 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = and i32 %50, %47
  store i32 %51, i32* %49, align 4
  %52 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %53 = call i32 @teken_funcs_cursor(%struct.TYPE_12__* %52)
  br label %82

54:                                               ; preds = %2
  %55 = load i32, i32* @TS_AUTOWRAP, align 4
  %56 = xor i32 %55, -1
  %57 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %58 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = and i32 %59, %56
  store i32 %60, i32* %58, align 4
  br label %82

61:                                               ; preds = %2
  %62 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %63 = load i32, i32* @TP_AUTOREPEAT, align 4
  %64 = call i32 @teken_funcs_param(%struct.TYPE_12__* %62, i32 %63, i32 0)
  br label %82

65:                                               ; preds = %2
  %66 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %67 = load i32, i32* @TP_SHOWCURSOR, align 4
  %68 = call i32 @teken_funcs_param(%struct.TYPE_12__* %66, i32 %67, i32 0)
  br label %82

69:                                               ; preds = %2
  %70 = call i32 (i8*, ...) @teken_printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  br label %82

71:                                               ; preds = %2
  %72 = call i32 (i8*, ...) @teken_printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0))
  br label %82

73:                                               ; preds = %2
  %74 = call i32 (i8*, ...) @teken_printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0))
  br label %82

75:                                               ; preds = %2
  %76 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %77 = load i32, i32* @TP_MOUSE, align 4
  %78 = call i32 @teken_funcs_param(%struct.TYPE_12__* %76, i32 %77, i32 0)
  br label %82

79:                                               ; preds = %2
  %80 = load i32, i32* %4, align 4
  %81 = call i32 (i8*, ...) @teken_printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0), i32 %80)
  br label %82

82:                                               ; preds = %79, %75, %73, %71, %69, %65, %61, %54, %23, %21, %15, %13, %6
  ret void
}

declare dso_local i32 @teken_printf(i8*, ...) #1

declare dso_local i32 @teken_funcs_param(%struct.TYPE_12__*, i32, i32) #1

declare dso_local i32 @teken_subr_reset_to_initial_state(%struct.TYPE_12__*) #1

declare dso_local i32 @teken_funcs_cursor(%struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
