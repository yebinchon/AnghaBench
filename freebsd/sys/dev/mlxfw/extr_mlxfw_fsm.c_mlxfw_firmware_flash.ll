; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlxfw/extr_mlxfw_fsm.c_mlxfw_firmware_flash.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlxfw/extr_mlxfw_fsm.c_mlxfw_firmware_flash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxfw_dev = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.mlxfw_dev*, i32*)*, i32 (%struct.mlxfw_dev*, i32)*, i32 (%struct.mlxfw_dev*, i32)* }
%struct.firmware = type { i32 }
%struct.mlxfw_mfa2_file = type { i32 }

@.str = private unnamed_addr constant [27 x i8] c"Firmware file is not MFA2\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"Initialize firmware flash process\0A\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"Could not lock the firmware FSM\0A\00", align 1
@MLXFW_FSM_STATE_LOCKED = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [16 x i8] c"Activate image\0A\00", align 1
@.str.4 = private unnamed_addr constant [41 x i8] c"Could not activate the downloaded image\0A\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"Handle release\0A\00", align 1
@.str.6 = private unnamed_addr constant [22 x i8] c"Firmware flash done.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlxfw_firmware_flash(%struct.mlxfw_dev* %0, %struct.firmware* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mlxfw_dev*, align 8
  %5 = alloca %struct.firmware*, align 8
  %6 = alloca %struct.mlxfw_mfa2_file*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.mlxfw_dev* %0, %struct.mlxfw_dev** %4, align 8
  store %struct.firmware* %1, %struct.firmware** %5, align 8
  %9 = load %struct.firmware*, %struct.firmware** %5, align 8
  %10 = call i32 @mlxfw_mfa2_check(%struct.firmware* %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %16, label %12

12:                                               ; preds = %2
  %13 = call i32 @pr_err(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %14 = load i32, i32* @EINVAL, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %3, align 4
  br label %105

16:                                               ; preds = %2
  %17 = load %struct.firmware*, %struct.firmware** %5, align 8
  %18 = call %struct.mlxfw_mfa2_file* @mlxfw_mfa2_file_init(%struct.firmware* %17)
  store %struct.mlxfw_mfa2_file* %18, %struct.mlxfw_mfa2_file** %6, align 8
  %19 = load %struct.mlxfw_mfa2_file*, %struct.mlxfw_mfa2_file** %6, align 8
  %20 = call i64 @IS_ERR(%struct.mlxfw_mfa2_file* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %16
  %23 = load %struct.mlxfw_mfa2_file*, %struct.mlxfw_mfa2_file** %6, align 8
  %24 = call i32 @PTR_ERR(%struct.mlxfw_mfa2_file* %23)
  store i32 %24, i32* %3, align 4
  br label %105

25:                                               ; preds = %16
  %26 = call i32 @pr_info(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  %27 = load %struct.mlxfw_dev*, %struct.mlxfw_dev** %4, align 8
  %28 = getelementptr inbounds %struct.mlxfw_dev, %struct.mlxfw_dev* %27, i32 0, i32 0
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32 (%struct.mlxfw_dev*, i32*)*, i32 (%struct.mlxfw_dev*, i32*)** %30, align 8
  %32 = load %struct.mlxfw_dev*, %struct.mlxfw_dev** %4, align 8
  %33 = call i32 %31(%struct.mlxfw_dev* %32, i32* %7)
  store i32 %33, i32* %8, align 4
  %34 = load i32, i32* %8, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %25
  %37 = call i32 @pr_err(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0))
  br label %101

38:                                               ; preds = %25
  %39 = load %struct.mlxfw_dev*, %struct.mlxfw_dev** %4, align 8
  %40 = load i32, i32* %7, align 4
  %41 = load i32, i32* @MLXFW_FSM_STATE_LOCKED, align 4
  %42 = call i32 @mlxfw_fsm_state_wait(%struct.mlxfw_dev* %39, i32 %40, i32 %41)
  store i32 %42, i32* %8, align 4
  %43 = load i32, i32* %8, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %38
  br label %92

46:                                               ; preds = %38
  %47 = load %struct.mlxfw_dev*, %struct.mlxfw_dev** %4, align 8
  %48 = load i32, i32* %7, align 4
  %49 = load %struct.mlxfw_mfa2_file*, %struct.mlxfw_mfa2_file** %6, align 8
  %50 = call i32 @mlxfw_flash_components(%struct.mlxfw_dev* %47, i32 %48, %struct.mlxfw_mfa2_file* %49)
  store i32 %50, i32* %8, align 4
  %51 = load i32, i32* %8, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %46
  br label %91

54:                                               ; preds = %46
  %55 = call i32 @pr_debug(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0))
  %56 = load %struct.mlxfw_dev*, %struct.mlxfw_dev** %4, align 8
  %57 = getelementptr inbounds %struct.mlxfw_dev, %struct.mlxfw_dev* %56, i32 0, i32 0
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 1
  %60 = load i32 (%struct.mlxfw_dev*, i32)*, i32 (%struct.mlxfw_dev*, i32)** %59, align 8
  %61 = load %struct.mlxfw_dev*, %struct.mlxfw_dev** %4, align 8
  %62 = load i32, i32* %7, align 4
  %63 = call i32 %60(%struct.mlxfw_dev* %61, i32 %62)
  store i32 %63, i32* %8, align 4
  %64 = load i32, i32* %8, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %54
  %67 = call i32 @pr_err(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.4, i64 0, i64 0))
  br label %90

68:                                               ; preds = %54
  %69 = load %struct.mlxfw_dev*, %struct.mlxfw_dev** %4, align 8
  %70 = load i32, i32* %7, align 4
  %71 = load i32, i32* @MLXFW_FSM_STATE_LOCKED, align 4
  %72 = call i32 @mlxfw_fsm_state_wait(%struct.mlxfw_dev* %69, i32 %70, i32 %71)
  store i32 %72, i32* %8, align 4
  %73 = load i32, i32* %8, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %68
  br label %89

76:                                               ; preds = %68
  %77 = call i32 @pr_debug(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0))
  %78 = load %struct.mlxfw_dev*, %struct.mlxfw_dev** %4, align 8
  %79 = getelementptr inbounds %struct.mlxfw_dev, %struct.mlxfw_dev* %78, i32 0, i32 0
  %80 = load %struct.TYPE_2__*, %struct.TYPE_2__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 2
  %82 = load i32 (%struct.mlxfw_dev*, i32)*, i32 (%struct.mlxfw_dev*, i32)** %81, align 8
  %83 = load %struct.mlxfw_dev*, %struct.mlxfw_dev** %4, align 8
  %84 = load i32, i32* %7, align 4
  %85 = call i32 %82(%struct.mlxfw_dev* %83, i32 %84)
  %86 = call i32 @pr_info(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i64 0, i64 0))
  %87 = load %struct.mlxfw_mfa2_file*, %struct.mlxfw_mfa2_file** %6, align 8
  %88 = call i32 @mlxfw_mfa2_file_fini(%struct.mlxfw_mfa2_file* %87)
  store i32 0, i32* %3, align 4
  br label %105

89:                                               ; preds = %75
  br label %90

90:                                               ; preds = %89, %66
  br label %91

91:                                               ; preds = %90, %53
  br label %92

92:                                               ; preds = %91, %45
  %93 = load %struct.mlxfw_dev*, %struct.mlxfw_dev** %4, align 8
  %94 = getelementptr inbounds %struct.mlxfw_dev, %struct.mlxfw_dev* %93, i32 0, i32 0
  %95 = load %struct.TYPE_2__*, %struct.TYPE_2__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %95, i32 0, i32 2
  %97 = load i32 (%struct.mlxfw_dev*, i32)*, i32 (%struct.mlxfw_dev*, i32)** %96, align 8
  %98 = load %struct.mlxfw_dev*, %struct.mlxfw_dev** %4, align 8
  %99 = load i32, i32* %7, align 4
  %100 = call i32 %97(%struct.mlxfw_dev* %98, i32 %99)
  br label %101

101:                                              ; preds = %92, %36
  %102 = load %struct.mlxfw_mfa2_file*, %struct.mlxfw_mfa2_file** %6, align 8
  %103 = call i32 @mlxfw_mfa2_file_fini(%struct.mlxfw_mfa2_file* %102)
  %104 = load i32, i32* %8, align 4
  store i32 %104, i32* %3, align 4
  br label %105

105:                                              ; preds = %101, %76, %22, %12
  %106 = load i32, i32* %3, align 4
  ret i32 %106
}

declare dso_local i32 @mlxfw_mfa2_check(%struct.firmware*) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local %struct.mlxfw_mfa2_file* @mlxfw_mfa2_file_init(%struct.firmware*) #1

declare dso_local i64 @IS_ERR(%struct.mlxfw_mfa2_file*) #1

declare dso_local i32 @PTR_ERR(%struct.mlxfw_mfa2_file*) #1

declare dso_local i32 @pr_info(i8*) #1

declare dso_local i32 @mlxfw_fsm_state_wait(%struct.mlxfw_dev*, i32, i32) #1

declare dso_local i32 @mlxfw_flash_components(%struct.mlxfw_dev*, i32, %struct.mlxfw_mfa2_file*) #1

declare dso_local i32 @pr_debug(i8*) #1

declare dso_local i32 @mlxfw_mfa2_file_fini(%struct.mlxfw_mfa2_file*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
