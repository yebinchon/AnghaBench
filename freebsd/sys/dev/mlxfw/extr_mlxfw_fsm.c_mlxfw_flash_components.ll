; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlxfw/extr_mlxfw_fsm.c_mlxfw_flash_components.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlxfw/extr_mlxfw_fsm.c_mlxfw_flash_components.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxfw_dev = type { i32, i32 }
%struct.mlxfw_mfa2_file = type { i32 }
%struct.mlxfw_mfa2_component = type { i32 }

@.str = private unnamed_addr constant [41 x i8] c"Could not find device PSID in MFA2 file\0A\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"Flashing component type %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlxfw_dev*, i32, %struct.mlxfw_mfa2_file*)* @mlxfw_flash_components to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlxfw_flash_components(%struct.mlxfw_dev* %0, i32 %1, %struct.mlxfw_mfa2_file* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mlxfw_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.mlxfw_mfa2_file*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.mlxfw_mfa2_component*, align 8
  store %struct.mlxfw_dev* %0, %struct.mlxfw_dev** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.mlxfw_mfa2_file* %2, %struct.mlxfw_mfa2_file** %7, align 8
  %12 = load %struct.mlxfw_mfa2_file*, %struct.mlxfw_mfa2_file** %7, align 8
  %13 = load %struct.mlxfw_dev*, %struct.mlxfw_dev** %5, align 8
  %14 = getelementptr inbounds %struct.mlxfw_dev, %struct.mlxfw_dev* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.mlxfw_dev*, %struct.mlxfw_dev** %5, align 8
  %17 = getelementptr inbounds %struct.mlxfw_dev, %struct.mlxfw_dev* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @mlxfw_mfa2_file_component_count(%struct.mlxfw_mfa2_file* %12, i32 %15, i32 %18, i32* %8)
  store i32 %19, i32* %9, align 4
  %20 = load i32, i32* %9, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %3
  %23 = call i32 @pr_err(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  %24 = load i32, i32* %9, align 4
  store i32 %24, i32* %4, align 4
  br label %66

25:                                               ; preds = %3
  store i32 0, i32* %10, align 4
  br label %26

26:                                               ; preds = %62, %25
  %27 = load i32, i32* %10, align 4
  %28 = load i32, i32* %8, align 4
  %29 = icmp slt i32 %27, %28
  br i1 %29, label %30, label %65

30:                                               ; preds = %26
  %31 = load %struct.mlxfw_mfa2_file*, %struct.mlxfw_mfa2_file** %7, align 8
  %32 = load %struct.mlxfw_dev*, %struct.mlxfw_dev** %5, align 8
  %33 = getelementptr inbounds %struct.mlxfw_dev, %struct.mlxfw_dev* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.mlxfw_dev*, %struct.mlxfw_dev** %5, align 8
  %36 = getelementptr inbounds %struct.mlxfw_dev, %struct.mlxfw_dev* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* %10, align 4
  %39 = call %struct.mlxfw_mfa2_component* @mlxfw_mfa2_file_component_get(%struct.mlxfw_mfa2_file* %31, i32 %34, i32 %37, i32 %38)
  store %struct.mlxfw_mfa2_component* %39, %struct.mlxfw_mfa2_component** %11, align 8
  %40 = load %struct.mlxfw_mfa2_component*, %struct.mlxfw_mfa2_component** %11, align 8
  %41 = call i64 @IS_ERR(%struct.mlxfw_mfa2_component* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %30
  %44 = load %struct.mlxfw_mfa2_component*, %struct.mlxfw_mfa2_component** %11, align 8
  %45 = call i32 @PTR_ERR(%struct.mlxfw_mfa2_component* %44)
  store i32 %45, i32* %4, align 4
  br label %66

46:                                               ; preds = %30
  %47 = load %struct.mlxfw_mfa2_component*, %struct.mlxfw_mfa2_component** %11, align 8
  %48 = getelementptr inbounds %struct.mlxfw_mfa2_component, %struct.mlxfw_mfa2_component* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @pr_info(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %49)
  %51 = load %struct.mlxfw_dev*, %struct.mlxfw_dev** %5, align 8
  %52 = load i32, i32* %6, align 4
  %53 = load %struct.mlxfw_mfa2_component*, %struct.mlxfw_mfa2_component** %11, align 8
  %54 = call i32 @mlxfw_flash_component(%struct.mlxfw_dev* %51, i32 %52, %struct.mlxfw_mfa2_component* %53)
  store i32 %54, i32* %9, align 4
  %55 = load %struct.mlxfw_mfa2_component*, %struct.mlxfw_mfa2_component** %11, align 8
  %56 = call i32 @mlxfw_mfa2_file_component_put(%struct.mlxfw_mfa2_component* %55)
  %57 = load i32, i32* %9, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %46
  %60 = load i32, i32* %9, align 4
  store i32 %60, i32* %4, align 4
  br label %66

61:                                               ; preds = %46
  br label %62

62:                                               ; preds = %61
  %63 = load i32, i32* %10, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %10, align 4
  br label %26

65:                                               ; preds = %26
  store i32 0, i32* %4, align 4
  br label %66

66:                                               ; preds = %65, %59, %43, %22
  %67 = load i32, i32* %4, align 4
  ret i32 %67
}

declare dso_local i32 @mlxfw_mfa2_file_component_count(%struct.mlxfw_mfa2_file*, i32, i32, i32*) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local %struct.mlxfw_mfa2_component* @mlxfw_mfa2_file_component_get(%struct.mlxfw_mfa2_file*, i32, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.mlxfw_mfa2_component*) #1

declare dso_local i32 @PTR_ERR(%struct.mlxfw_mfa2_component*) #1

declare dso_local i32 @pr_info(i8*, i32) #1

declare dso_local i32 @mlxfw_flash_component(%struct.mlxfw_dev*, i32, %struct.mlxfw_mfa2_component*) #1

declare dso_local i32 @mlxfw_mfa2_file_component_put(%struct.mlxfw_mfa2_component*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
