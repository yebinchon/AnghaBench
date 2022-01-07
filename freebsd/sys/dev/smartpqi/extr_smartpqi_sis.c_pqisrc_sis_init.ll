; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/smartpqi/extr_smartpqi_sis.c_pqisrc_sis_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/smartpqi/extr_smartpqi_sis.c_pqisrc_sis_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32 }

@PQI_STATUS_SUCCESS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"IN\0A\00", align 1
@.str.1 = private unnamed_addr constant [48 x i8] c"Failed to switch back the adapter to SIS mode!\0A\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"PQI Controller is not ready !!!\0A\00", align 1
@.str.3 = private unnamed_addr constant [34 x i8] c"Failed to get adapter properties\0A\00", align 1
@SIS_SUPPORT_EXT_OPT = common dso_local global i32 0, align 4
@SIS_SUPPORT_PQI = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [24 x i8] c"PQI Mode Not Supported\0A\00", align 1
@PQI_STATUS_FAILURE = common dso_local global i32 0, align 4
@SIS_SUPPORT_PQI_RESET_QUIESCE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [37 x i8] c"Failed to get adapter pref settings\0A\00", align 1
@.str.6 = private unnamed_addr constant [32 x i8] c"Failed to get PQI Capabilities\0A\00", align 1
@.str.7 = private unnamed_addr constant [37 x i8] c"Failed to set init struct base addr\0A\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"OUT\0A\00", align 1
@.str.9 = private unnamed_addr constant [12 x i8] c"OUT failed\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pqisrc_sis_init(%struct.TYPE_9__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %3, align 8
  %7 = load i32, i32* @PQI_STATUS_SUCCESS, align 4
  store i32 %7, i32* %4, align 4
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %8 = call i32 @DBG_FUNC(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %9 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %10 = call i32 @pqisrc_force_sis(%struct.TYPE_9__* %9)
  store i32 %10, i32* %4, align 4
  %11 = load i32, i32* %4, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %1
  %14 = call i32 @DBG_ERR(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0))
  br label %76

15:                                               ; preds = %1
  %16 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %17 = call i32 @pqisrc_check_fw_status(%struct.TYPE_9__* %16)
  store i32 %17, i32* %4, align 4
  %18 = load i32, i32* %4, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %15
  %21 = call i32 @DBG_ERR(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0))
  br label %76

22:                                               ; preds = %15
  %23 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %24 = call i32 @pqisrc_get_adapter_properties(%struct.TYPE_9__* %23, i32* %5, i32* %6)
  store i32 %24, i32* %4, align 4
  %25 = load i32, i32* %4, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %22
  %28 = call i32 @DBG_ERR(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0))
  br label %76

29:                                               ; preds = %22
  %30 = load i32, i32* %5, align 4
  %31 = load i32, i32* @SIS_SUPPORT_EXT_OPT, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %29
  %35 = load i32, i32* %6, align 4
  %36 = load i32, i32* @SIS_SUPPORT_PQI, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %42, label %39

39:                                               ; preds = %34, %29
  %40 = call i32 @DBG_ERR(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0))
  %41 = load i32, i32* @PQI_STATUS_FAILURE, align 4
  store i32 %41, i32* %4, align 4
  br label %76

42:                                               ; preds = %34
  %43 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %44 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %43, i32 0, i32 0
  store i32 0, i32* %44, align 4
  %45 = load i32, i32* %6, align 4
  %46 = load i32, i32* @SIS_SUPPORT_PQI_RESET_QUIESCE, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %42
  %50 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i32 0, i32 0
  store i32 1, i32* %51, align 4
  br label %52

52:                                               ; preds = %49, %42
  %53 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %54 = call i32 @pqisrc_get_preferred_settings(%struct.TYPE_9__* %53)
  store i32 %54, i32* %4, align 4
  %55 = load i32, i32* %4, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %52
  %58 = call i32 @DBG_ERR(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.5, i64 0, i64 0))
  br label %76

59:                                               ; preds = %52
  %60 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %61 = call i32 @pqisrc_get_sis_pqi_cap(%struct.TYPE_9__* %60)
  store i32 %61, i32* %4, align 4
  %62 = load i32, i32* %4, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %59
  %65 = call i32 @DBG_ERR(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.6, i64 0, i64 0))
  br label %76

66:                                               ; preds = %59
  %67 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %68 = call i32 @pqisrc_init_struct_base(%struct.TYPE_9__* %67)
  store i32 %68, i32* %4, align 4
  %69 = load i32, i32* %4, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %66
  %72 = call i32 @DBG_ERR(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.7, i64 0, i64 0))
  br label %76

73:                                               ; preds = %66
  %74 = call i32 @DBG_FUNC(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0))
  %75 = load i32, i32* %4, align 4
  store i32 %75, i32* %2, align 4
  br label %79

76:                                               ; preds = %71, %64, %57, %39, %27, %20, %13
  %77 = call i32 @DBG_FUNC(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i64 0, i64 0))
  %78 = load i32, i32* %4, align 4
  store i32 %78, i32* %2, align 4
  br label %79

79:                                               ; preds = %76, %73
  %80 = load i32, i32* %2, align 4
  ret i32 %80
}

declare dso_local i32 @DBG_FUNC(i8*) #1

declare dso_local i32 @pqisrc_force_sis(%struct.TYPE_9__*) #1

declare dso_local i32 @DBG_ERR(i8*) #1

declare dso_local i32 @pqisrc_check_fw_status(%struct.TYPE_9__*) #1

declare dso_local i32 @pqisrc_get_adapter_properties(%struct.TYPE_9__*, i32*, i32*) #1

declare dso_local i32 @pqisrc_get_preferred_settings(%struct.TYPE_9__*) #1

declare dso_local i32 @pqisrc_get_sis_pqi_cap(%struct.TYPE_9__*) #1

declare dso_local i32 @pqisrc_init_struct_base(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
