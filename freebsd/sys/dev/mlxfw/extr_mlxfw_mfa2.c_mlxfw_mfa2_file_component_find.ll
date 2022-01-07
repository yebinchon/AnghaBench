; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlxfw/extr_mlxfw_mfa2.c_mlxfw_mfa2_file_component_find.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlxfw/extr_mlxfw_mfa2.c_mlxfw_mfa2_file_component_find.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxfw_mfa2_tlv_component_descriptor = type { i32 }
%struct.mlxfw_mfa2_file = type { i32 }
%struct.mlxfw_mfa2_tlv_component_ptr = type { i32 }
%struct.mlxfw_mfa2_tlv_multi = type { i32 }
%struct.mlxfw_mfa2_tlv = type { i32 }

@MLXFW_MFA2_TLV_COMPONENT_PTR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.mlxfw_mfa2_tlv_component_descriptor* (%struct.mlxfw_mfa2_file*, i8*, i32, i32)* @mlxfw_mfa2_file_component_find to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mlxfw_mfa2_tlv_component_descriptor* @mlxfw_mfa2_file_component_find(%struct.mlxfw_mfa2_file* %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.mlxfw_mfa2_tlv_component_descriptor*, align 8
  %6 = alloca %struct.mlxfw_mfa2_file*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.mlxfw_mfa2_tlv_component_ptr*, align 8
  %11 = alloca %struct.mlxfw_mfa2_tlv_multi*, align 8
  %12 = alloca %struct.mlxfw_mfa2_tlv*, align 8
  %13 = alloca i32, align 4
  store %struct.mlxfw_mfa2_file* %0, %struct.mlxfw_mfa2_file** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %14 = load %struct.mlxfw_mfa2_file*, %struct.mlxfw_mfa2_file** %6, align 8
  %15 = load i8*, i8** %7, align 8
  %16 = load i32, i32* %8, align 4
  %17 = call %struct.mlxfw_mfa2_tlv_multi* @mlxfw_mfa2_tlv_dev_get(%struct.mlxfw_mfa2_file* %14, i8* %15, i32 %16)
  store %struct.mlxfw_mfa2_tlv_multi* %17, %struct.mlxfw_mfa2_tlv_multi** %11, align 8
  %18 = load %struct.mlxfw_mfa2_tlv_multi*, %struct.mlxfw_mfa2_tlv_multi** %11, align 8
  %19 = icmp ne %struct.mlxfw_mfa2_tlv_multi* %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %4
  store %struct.mlxfw_mfa2_tlv_component_descriptor* null, %struct.mlxfw_mfa2_tlv_component_descriptor** %5, align 8
  br label %45

21:                                               ; preds = %4
  %22 = load %struct.mlxfw_mfa2_file*, %struct.mlxfw_mfa2_file** %6, align 8
  %23 = load %struct.mlxfw_mfa2_tlv_multi*, %struct.mlxfw_mfa2_tlv_multi** %11, align 8
  %24 = load i32, i32* @MLXFW_MFA2_TLV_COMPONENT_PTR, align 4
  %25 = load i32, i32* %9, align 4
  %26 = call %struct.mlxfw_mfa2_tlv* @mlxfw_mfa2_tlv_multi_child_find(%struct.mlxfw_mfa2_file* %22, %struct.mlxfw_mfa2_tlv_multi* %23, i32 %24, i32 %25)
  store %struct.mlxfw_mfa2_tlv* %26, %struct.mlxfw_mfa2_tlv** %12, align 8
  %27 = load %struct.mlxfw_mfa2_tlv*, %struct.mlxfw_mfa2_tlv** %12, align 8
  %28 = icmp ne %struct.mlxfw_mfa2_tlv* %27, null
  br i1 %28, label %30, label %29

29:                                               ; preds = %21
  store %struct.mlxfw_mfa2_tlv_component_descriptor* null, %struct.mlxfw_mfa2_tlv_component_descriptor** %5, align 8
  br label %45

30:                                               ; preds = %21
  %31 = load %struct.mlxfw_mfa2_file*, %struct.mlxfw_mfa2_file** %6, align 8
  %32 = load %struct.mlxfw_mfa2_tlv*, %struct.mlxfw_mfa2_tlv** %12, align 8
  %33 = call %struct.mlxfw_mfa2_tlv_component_ptr* @mlxfw_mfa2_tlv_component_ptr_get(%struct.mlxfw_mfa2_file* %31, %struct.mlxfw_mfa2_tlv* %32)
  store %struct.mlxfw_mfa2_tlv_component_ptr* %33, %struct.mlxfw_mfa2_tlv_component_ptr** %10, align 8
  %34 = load %struct.mlxfw_mfa2_tlv_component_ptr*, %struct.mlxfw_mfa2_tlv_component_ptr** %10, align 8
  %35 = icmp ne %struct.mlxfw_mfa2_tlv_component_ptr* %34, null
  br i1 %35, label %37, label %36

36:                                               ; preds = %30
  store %struct.mlxfw_mfa2_tlv_component_descriptor* null, %struct.mlxfw_mfa2_tlv_component_descriptor** %5, align 8
  br label %45

37:                                               ; preds = %30
  %38 = load %struct.mlxfw_mfa2_tlv_component_ptr*, %struct.mlxfw_mfa2_tlv_component_ptr** %10, align 8
  %39 = getelementptr inbounds %struct.mlxfw_mfa2_tlv_component_ptr, %struct.mlxfw_mfa2_tlv_component_ptr* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @be16_to_cpu(i32 %40)
  store i32 %41, i32* %13, align 4
  %42 = load %struct.mlxfw_mfa2_file*, %struct.mlxfw_mfa2_file** %6, align 8
  %43 = load i32, i32* %13, align 4
  %44 = call %struct.mlxfw_mfa2_tlv_component_descriptor* @mlxfw_mfa2_file_component_tlv_get(%struct.mlxfw_mfa2_file* %42, i32 %43)
  store %struct.mlxfw_mfa2_tlv_component_descriptor* %44, %struct.mlxfw_mfa2_tlv_component_descriptor** %5, align 8
  br label %45

45:                                               ; preds = %37, %36, %29, %20
  %46 = load %struct.mlxfw_mfa2_tlv_component_descriptor*, %struct.mlxfw_mfa2_tlv_component_descriptor** %5, align 8
  ret %struct.mlxfw_mfa2_tlv_component_descriptor* %46
}

declare dso_local %struct.mlxfw_mfa2_tlv_multi* @mlxfw_mfa2_tlv_dev_get(%struct.mlxfw_mfa2_file*, i8*, i32) #1

declare dso_local %struct.mlxfw_mfa2_tlv* @mlxfw_mfa2_tlv_multi_child_find(%struct.mlxfw_mfa2_file*, %struct.mlxfw_mfa2_tlv_multi*, i32, i32) #1

declare dso_local %struct.mlxfw_mfa2_tlv_component_ptr* @mlxfw_mfa2_tlv_component_ptr_get(%struct.mlxfw_mfa2_file*, %struct.mlxfw_mfa2_tlv*) #1

declare dso_local i32 @be16_to_cpu(i32) #1

declare dso_local %struct.mlxfw_mfa2_tlv_component_descriptor* @mlxfw_mfa2_file_component_tlv_get(%struct.mlxfw_mfa2_file*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
