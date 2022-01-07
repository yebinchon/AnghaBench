; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/extr_geom_subr.c_g_modevent.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/extr_geom_subr.c_g_modevent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.g_hh00 = type { i32, i32, %struct.g_class* }
%struct.g_class = type { i64, i8*, i32 }

@g_modevent.g_ignition = internal global i32 0, align 4
@G_VERSION = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [36 x i8] c"GEOM class %s has Wrong version %x\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@G_T_TOPOLOGY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"g_modevent(%s, LOAD)\00", align 1
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@cold = common dso_local global i32 0, align 4
@g_load_class = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [23 x i8] c"g_modevent(%s, UNLOAD)\00", align 1
@.str.3 = private unnamed_addr constant [35 x i8] c"Unloaded class (%s) still has geom\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @g_modevent(i32 %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.g_hh00*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.g_class*, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %11 = load i8*, i8** %7, align 8
  %12 = bitcast i8* %11 to %struct.g_class*
  store %struct.g_class* %12, %struct.g_class** %10, align 8
  %13 = load %struct.g_class*, %struct.g_class** %10, align 8
  %14 = getelementptr inbounds %struct.g_class, %struct.g_class* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @G_VERSION, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %18, label %27

18:                                               ; preds = %3
  %19 = load %struct.g_class*, %struct.g_class** %10, align 8
  %20 = getelementptr inbounds %struct.g_class, %struct.g_class* %19, i32 0, i32 1
  %21 = load i8*, i8** %20, align 8
  %22 = load %struct.g_class*, %struct.g_class** %10, align 8
  %23 = getelementptr inbounds %struct.g_class, %struct.g_class* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = call i32 @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i8* %21, i64 %24)
  %26 = load i32, i32* @EINVAL, align 4
  store i32 %26, i32* %4, align 4
  br label %95

27:                                               ; preds = %3
  %28 = load i32, i32* @g_modevent.g_ignition, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %34, label %30

30:                                               ; preds = %27
  %31 = load i32, i32* @g_modevent.g_ignition, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* @g_modevent.g_ignition, align 4
  %33 = call i32 (...) @g_init()
  br label %34

34:                                               ; preds = %30, %27
  %35 = load i32, i32* @EOPNOTSUPP, align 4
  store i32 %35, i32* %9, align 4
  %36 = load i32, i32* %6, align 4
  switch i32 %36, label %93 [
    i32 129, label %37
    i32 128, label %74
  ]

37:                                               ; preds = %34
  %38 = load i32, i32* @G_T_TOPOLOGY, align 4
  %39 = load %struct.g_class*, %struct.g_class** %10, align 8
  %40 = getelementptr inbounds %struct.g_class, %struct.g_class* %39, i32 0, i32 1
  %41 = load i8*, i8** %40, align 8
  %42 = call i32 @g_trace(i32 %38, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i8* %41)
  %43 = load i32, i32* @M_WAITOK, align 4
  %44 = load i32, i32* @M_ZERO, align 4
  %45 = or i32 %43, %44
  %46 = call %struct.g_hh00* @g_malloc(i32 16, i32 %45)
  store %struct.g_hh00* %46, %struct.g_hh00** %8, align 8
  %47 = load %struct.g_class*, %struct.g_class** %10, align 8
  %48 = load %struct.g_hh00*, %struct.g_hh00** %8, align 8
  %49 = getelementptr inbounds %struct.g_hh00, %struct.g_hh00* %48, i32 0, i32 2
  store %struct.g_class* %47, %struct.g_class** %49, align 8
  %50 = load i32, i32* @cold, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %59

52:                                               ; preds = %37
  %53 = load %struct.g_hh00*, %struct.g_hh00** %8, align 8
  %54 = getelementptr inbounds %struct.g_hh00, %struct.g_hh00* %53, i32 0, i32 0
  store i32 1, i32* %54, align 8
  %55 = load i32, i32* @g_load_class, align 4
  %56 = load %struct.g_hh00*, %struct.g_hh00** %8, align 8
  %57 = load i32, i32* @M_WAITOK, align 4
  %58 = call i32 @g_post_event(i32 %55, %struct.g_hh00* %56, i32 %57, i32* null)
  store i32 %58, i32* %9, align 4
  br label %73

59:                                               ; preds = %37
  %60 = load i32, i32* @g_load_class, align 4
  %61 = load %struct.g_hh00*, %struct.g_hh00** %8, align 8
  %62 = load i32, i32* @M_WAITOK, align 4
  %63 = call i32 @g_waitfor_event(i32 %60, %struct.g_hh00* %61, i32 %62, i32* null)
  store i32 %63, i32* %9, align 4
  %64 = load i32, i32* %9, align 4
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %70

66:                                               ; preds = %59
  %67 = load %struct.g_hh00*, %struct.g_hh00** %8, align 8
  %68 = getelementptr inbounds %struct.g_hh00, %struct.g_hh00* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  store i32 %69, i32* %9, align 4
  br label %70

70:                                               ; preds = %66, %59
  %71 = load %struct.g_hh00*, %struct.g_hh00** %8, align 8
  %72 = call i32 @g_free(%struct.g_hh00* %71)
  br label %73

73:                                               ; preds = %70, %52
  br label %93

74:                                               ; preds = %34
  %75 = load i32, i32* @G_T_TOPOLOGY, align 4
  %76 = load %struct.g_class*, %struct.g_class** %10, align 8
  %77 = getelementptr inbounds %struct.g_class, %struct.g_class* %76, i32 0, i32 1
  %78 = load i8*, i8** %77, align 8
  %79 = call i32 @g_trace(i32 %75, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i8* %78)
  %80 = load %struct.g_class*, %struct.g_class** %10, align 8
  %81 = call i32 @g_unload_class(%struct.g_class* %80)
  store i32 %81, i32* %9, align 4
  %82 = load i32, i32* %9, align 4
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %84, label %92

84:                                               ; preds = %74
  %85 = load %struct.g_class*, %struct.g_class** %10, align 8
  %86 = getelementptr inbounds %struct.g_class, %struct.g_class* %85, i32 0, i32 2
  %87 = call i32 @LIST_EMPTY(i32* %86)
  %88 = load %struct.g_class*, %struct.g_class** %10, align 8
  %89 = getelementptr inbounds %struct.g_class, %struct.g_class* %88, i32 0, i32 1
  %90 = load i8*, i8** %89, align 8
  %91 = call i32 @KASSERT(i32 %87, i8* %90)
  br label %92

92:                                               ; preds = %84, %74
  br label %93

93:                                               ; preds = %34, %92, %73
  %94 = load i32, i32* %9, align 4
  store i32 %94, i32* %4, align 4
  br label %95

95:                                               ; preds = %93, %18
  %96 = load i32, i32* %4, align 4
  ret i32 %96
}

declare dso_local i32 @printf(i8*, i8*, i64) #1

declare dso_local i32 @g_init(...) #1

declare dso_local i32 @g_trace(i32, i8*, i8*) #1

declare dso_local %struct.g_hh00* @g_malloc(i32, i32) #1

declare dso_local i32 @g_post_event(i32, %struct.g_hh00*, i32, i32*) #1

declare dso_local i32 @g_waitfor_event(i32, %struct.g_hh00*, i32, i32*) #1

declare dso_local i32 @g_free(%struct.g_hh00*) #1

declare dso_local i32 @g_unload_class(%struct.g_class*) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @LIST_EMPTY(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
