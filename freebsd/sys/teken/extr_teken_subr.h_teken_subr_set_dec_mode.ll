; ModuleID = '/home/carl/AnghaBench/freebsd/sys/teken/extr_teken_subr.h_teken_subr_set_dec_mode.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/teken/extr_teken_subr.h_teken_subr_set_dec_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, %struct.TYPE_9__, %struct.TYPE_8__, %struct.TYPE_8__ }
%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_8__ = type { i32 }

@TS_CURSORKEYS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"DECSET VT52\0A\00", align 1
@TP_132COLS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"DECSET inverse video\0A\00", align 1
@TS_ORIGIN = common dso_local global i32 0, align 4
@TS_WRAPPED = common dso_local global i32 0, align 4
@TS_AUTOWRAP = common dso_local global i32 0, align 4
@TP_AUTOREPEAT = common dso_local global i32 0, align 4
@TP_SHOWCURSOR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [18 x i8] c"DECSET allow 132\0A\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"DECSET reverse wraparound\0A\00", align 1
@.str.4 = private unnamed_addr constant [35 x i8] c"Switch away from alternate buffer\0A\00", align 1
@TP_MOUSE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [20 x i8] c"Unknown DECSET: %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_10__*, i32)* @teken_subr_set_dec_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @teken_subr_set_dec_mode(%struct.TYPE_10__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_10__*, align 8
  %4 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  switch i32 %5, label %76 [
    i32 1, label %6
    i32 2, label %12
    i32 3, label %14
    i32 5, label %20
    i32 6, label %22
    i32 7, label %52
    i32 8, label %58
    i32 25, label %62
    i32 40, label %66
    i32 45, label %68
    i32 47, label %70
    i32 1000, label %72
  ]

6:                                                ; preds = %2
  %7 = load i32, i32* @TS_CURSORKEYS, align 4
  %8 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = or i32 %10, %7
  store i32 %11, i32* %9, align 4
  br label %79

12:                                               ; preds = %2
  %13 = call i32 (i8*, ...) @teken_printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  br label %79

14:                                               ; preds = %2
  %15 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %16 = load i32, i32* @TP_132COLS, align 4
  %17 = call i32 @teken_funcs_param(%struct.TYPE_10__* %15, i32 %16, i32 1)
  %18 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %19 = call i32 @teken_subr_reset_to_initial_state(%struct.TYPE_10__* %18)
  br label %79

20:                                               ; preds = %2
  %21 = call i32 (i8*, ...) @teken_printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  br label %79

22:                                               ; preds = %2
  %23 = load i32, i32* @TS_ORIGIN, align 4
  %24 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = or i32 %26, %23
  store i32 %27, i32* %25, align 4
  %28 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %28, i32 0, i32 3
  %30 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %30, i32 0, i32 2
  %32 = bitcast %struct.TYPE_8__* %29 to i8*
  %33 = bitcast %struct.TYPE_8__* %31 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %32, i8* align 4 %33, i64 4, i1 false)
  %34 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %34, i32 0, i32 2
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %39 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %39, i32 0, i32 1
  store i32 %37, i32* %40, align 4
  %41 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %42 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %42, i32 0, i32 0
  store i32 0, i32* %43, align 4
  %44 = load i32, i32* @TS_WRAPPED, align 4
  %45 = xor i32 %44, -1
  %46 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %47 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = and i32 %48, %45
  store i32 %49, i32* %47, align 4
  %50 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %51 = call i32 @teken_funcs_cursor(%struct.TYPE_10__* %50)
  br label %79

52:                                               ; preds = %2
  %53 = load i32, i32* @TS_AUTOWRAP, align 4
  %54 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %55 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = or i32 %56, %53
  store i32 %57, i32* %55, align 4
  br label %79

58:                                               ; preds = %2
  %59 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %60 = load i32, i32* @TP_AUTOREPEAT, align 4
  %61 = call i32 @teken_funcs_param(%struct.TYPE_10__* %59, i32 %60, i32 1)
  br label %79

62:                                               ; preds = %2
  %63 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %64 = load i32, i32* @TP_SHOWCURSOR, align 4
  %65 = call i32 @teken_funcs_param(%struct.TYPE_10__* %63, i32 %64, i32 1)
  br label %79

66:                                               ; preds = %2
  %67 = call i32 (i8*, ...) @teken_printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  br label %79

68:                                               ; preds = %2
  %69 = call i32 (i8*, ...) @teken_printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0))
  br label %79

70:                                               ; preds = %2
  %71 = call i32 (i8*, ...) @teken_printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0))
  br label %79

72:                                               ; preds = %2
  %73 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %74 = load i32, i32* @TP_MOUSE, align 4
  %75 = call i32 @teken_funcs_param(%struct.TYPE_10__* %73, i32 %74, i32 1)
  br label %79

76:                                               ; preds = %2
  %77 = load i32, i32* %4, align 4
  %78 = call i32 (i8*, ...) @teken_printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0), i32 %77)
  br label %79

79:                                               ; preds = %76, %72, %70, %68, %66, %62, %58, %52, %22, %20, %14, %12, %6
  ret void
}

declare dso_local i32 @teken_printf(i8*, ...) #1

declare dso_local i32 @teken_funcs_param(%struct.TYPE_10__*, i32, i32) #1

declare dso_local i32 @teken_subr_reset_to_initial_state(%struct.TYPE_10__*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @teken_funcs_cursor(%struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
