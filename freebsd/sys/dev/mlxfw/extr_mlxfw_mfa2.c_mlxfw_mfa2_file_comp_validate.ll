; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlxfw/extr_mlxfw_mfa2.c_mlxfw_mfa2_file_comp_validate.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlxfw/extr_mlxfw_mfa2.c_mlxfw_mfa2_file_comp_validate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxfw_mfa2_file = type { i32 }
%struct.mlxfw_mfa2_tlv = type { i32 }
%struct.mlxfw_mfa2_tlv_component_descriptor = type { i32, i32, i32, i32 }
%struct.mlxfw_mfa2_tlv_multi = type { i32 }

@.str = private unnamed_addr constant [14 x i8] c"Component %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"Component %d is not a valid TLV error\0A\00", align 1
@.str.2 = private unnamed_addr constant [41 x i8] c"Component descriptor %d multi TLV error\0A\00", align 1
@.str.3 = private unnamed_addr constant [47 x i8] c"Component %d does not have a valid descriptor\0A\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"  -- Component type %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [30 x i8] c"  -- Offset %#jx and size %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlxfw_mfa2_file*, %struct.mlxfw_mfa2_tlv*, i32)* @mlxfw_mfa2_file_comp_validate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlxfw_mfa2_file_comp_validate(%struct.mlxfw_mfa2_file* %0, %struct.mlxfw_mfa2_tlv* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mlxfw_mfa2_file*, align 8
  %6 = alloca %struct.mlxfw_mfa2_tlv*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.mlxfw_mfa2_tlv_component_descriptor*, align 8
  %9 = alloca %struct.mlxfw_mfa2_tlv_multi*, align 8
  %10 = alloca %struct.mlxfw_mfa2_tlv*, align 8
  store %struct.mlxfw_mfa2_file* %0, %struct.mlxfw_mfa2_file** %5, align 8
  store %struct.mlxfw_mfa2_tlv* %1, %struct.mlxfw_mfa2_tlv** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load i32, i32* %7, align 4
  %12 = call i32 (i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %11)
  %13 = load %struct.mlxfw_mfa2_file*, %struct.mlxfw_mfa2_file** %5, align 8
  %14 = load %struct.mlxfw_mfa2_tlv*, %struct.mlxfw_mfa2_tlv** %6, align 8
  %15 = call %struct.mlxfw_mfa2_tlv_multi* @mlxfw_mfa2_tlv_multi_get(%struct.mlxfw_mfa2_file* %13, %struct.mlxfw_mfa2_tlv* %14)
  store %struct.mlxfw_mfa2_tlv_multi* %15, %struct.mlxfw_mfa2_tlv_multi** %9, align 8
  %16 = load %struct.mlxfw_mfa2_tlv_multi*, %struct.mlxfw_mfa2_tlv_multi** %9, align 8
  %17 = icmp ne %struct.mlxfw_mfa2_tlv_multi* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %3
  %19 = load i32, i32* %7, align 4
  %20 = call i32 @pr_err(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %19)
  store i32 0, i32* %4, align 4
  br label %66

21:                                               ; preds = %3
  %22 = load %struct.mlxfw_mfa2_file*, %struct.mlxfw_mfa2_file** %5, align 8
  %23 = load %struct.mlxfw_mfa2_tlv_multi*, %struct.mlxfw_mfa2_tlv_multi** %9, align 8
  %24 = call i32 @mlxfw_mfa2_tlv_multi_validate(%struct.mlxfw_mfa2_file* %22, %struct.mlxfw_mfa2_tlv_multi* %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %21
  store i32 0, i32* %4, align 4
  br label %66

27:                                               ; preds = %21
  %28 = load %struct.mlxfw_mfa2_file*, %struct.mlxfw_mfa2_file** %5, align 8
  %29 = load %struct.mlxfw_mfa2_tlv_multi*, %struct.mlxfw_mfa2_tlv_multi** %9, align 8
  %30 = call %struct.mlxfw_mfa2_tlv* @mlxfw_mfa2_tlv_multi_child(%struct.mlxfw_mfa2_file* %28, %struct.mlxfw_mfa2_tlv_multi* %29)
  store %struct.mlxfw_mfa2_tlv* %30, %struct.mlxfw_mfa2_tlv** %10, align 8
  %31 = load %struct.mlxfw_mfa2_tlv*, %struct.mlxfw_mfa2_tlv** %10, align 8
  %32 = icmp ne %struct.mlxfw_mfa2_tlv* %31, null
  br i1 %32, label %36, label %33

33:                                               ; preds = %27
  %34 = load i32, i32* %7, align 4
  %35 = call i32 @pr_err(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0), i32 %34)
  store i32 0, i32* %4, align 4
  br label %66

36:                                               ; preds = %27
  %37 = load %struct.mlxfw_mfa2_file*, %struct.mlxfw_mfa2_file** %5, align 8
  %38 = load %struct.mlxfw_mfa2_tlv*, %struct.mlxfw_mfa2_tlv** %10, align 8
  %39 = call %struct.mlxfw_mfa2_tlv_component_descriptor* @mlxfw_mfa2_tlv_component_descriptor_get(%struct.mlxfw_mfa2_file* %37, %struct.mlxfw_mfa2_tlv* %38)
  store %struct.mlxfw_mfa2_tlv_component_descriptor* %39, %struct.mlxfw_mfa2_tlv_component_descriptor** %8, align 8
  %40 = load %struct.mlxfw_mfa2_tlv_component_descriptor*, %struct.mlxfw_mfa2_tlv_component_descriptor** %8, align 8
  %41 = icmp ne %struct.mlxfw_mfa2_tlv_component_descriptor* %40, null
  br i1 %41, label %45, label %42

42:                                               ; preds = %36
  %43 = load i32, i32* %7, align 4
  %44 = call i32 @pr_err(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.3, i64 0, i64 0), i32 %43)
  store i32 0, i32* %4, align 4
  br label %66

45:                                               ; preds = %36
  %46 = load %struct.mlxfw_mfa2_tlv_component_descriptor*, %struct.mlxfw_mfa2_tlv_component_descriptor** %8, align 8
  %47 = getelementptr inbounds %struct.mlxfw_mfa2_tlv_component_descriptor, %struct.mlxfw_mfa2_tlv_component_descriptor* %46, i32 0, i32 3
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @be16_to_cpu(i32 %48)
  %50 = call i32 (i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i32 %49)
  %51 = load %struct.mlxfw_mfa2_tlv_component_descriptor*, %struct.mlxfw_mfa2_tlv_component_descriptor** %8, align 8
  %52 = getelementptr inbounds %struct.mlxfw_mfa2_tlv_component_descriptor, %struct.mlxfw_mfa2_tlv_component_descriptor* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @be32_to_cpu(i32 %53)
  %55 = shl i32 %54, 32
  %56 = load %struct.mlxfw_mfa2_tlv_component_descriptor*, %struct.mlxfw_mfa2_tlv_component_descriptor** %8, align 8
  %57 = getelementptr inbounds %struct.mlxfw_mfa2_tlv_component_descriptor, %struct.mlxfw_mfa2_tlv_component_descriptor* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @be32_to_cpu(i32 %58)
  %60 = or i32 %55, %59
  %61 = load %struct.mlxfw_mfa2_tlv_component_descriptor*, %struct.mlxfw_mfa2_tlv_component_descriptor** %8, align 8
  %62 = getelementptr inbounds %struct.mlxfw_mfa2_tlv_component_descriptor, %struct.mlxfw_mfa2_tlv_component_descriptor* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @be32_to_cpu(i32 %63)
  %65 = call i32 (i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i64 0, i64 0), i32 %60, i32 %64)
  store i32 1, i32* %4, align 4
  br label %66

66:                                               ; preds = %45, %42, %33, %26, %18
  %67 = load i32, i32* %4, align 4
  ret i32 %67
}

declare dso_local i32 @pr_debug(i8*, i32, ...) #1

declare dso_local %struct.mlxfw_mfa2_tlv_multi* @mlxfw_mfa2_tlv_multi_get(%struct.mlxfw_mfa2_file*, %struct.mlxfw_mfa2_tlv*) #1

declare dso_local i32 @pr_err(i8*, i32) #1

declare dso_local i32 @mlxfw_mfa2_tlv_multi_validate(%struct.mlxfw_mfa2_file*, %struct.mlxfw_mfa2_tlv_multi*) #1

declare dso_local %struct.mlxfw_mfa2_tlv* @mlxfw_mfa2_tlv_multi_child(%struct.mlxfw_mfa2_file*, %struct.mlxfw_mfa2_tlv_multi*) #1

declare dso_local %struct.mlxfw_mfa2_tlv_component_descriptor* @mlxfw_mfa2_tlv_component_descriptor_get(%struct.mlxfw_mfa2_file*, %struct.mlxfw_mfa2_tlv*) #1

declare dso_local i32 @be16_to_cpu(i32) #1

declare dso_local i32 @be32_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
