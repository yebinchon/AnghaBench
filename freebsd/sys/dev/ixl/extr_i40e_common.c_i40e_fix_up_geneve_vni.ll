; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_i40e_common.c_i40e_fix_up_geneve_vni.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_i40e_common.c_i40e_fix_up_geneve_vni.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40e_aqc_add_remove_cloud_filters_element_data = type { i32, i32 }

@I40E_AQC_ADD_CLOUD_TNL_TYPE_MASK = common dso_local global i32 0, align 4
@I40E_AQC_ADD_CLOUD_TNL_TYPE_SHIFT = common dso_local global i32 0, align 4
@I40E_AQC_ADD_CLOUD_TNL_TYPE_GENEVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.i40e_aqc_add_remove_cloud_filters_element_data*, i32)* @i40e_fix_up_geneve_vni to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @i40e_fix_up_geneve_vni(%struct.i40e_aqc_add_remove_cloud_filters_element_data* %0, i32 %1) #0 {
  %3 = alloca %struct.i40e_aqc_add_remove_cloud_filters_element_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.i40e_aqc_add_remove_cloud_filters_element_data*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.i40e_aqc_add_remove_cloud_filters_element_data* %0, %struct.i40e_aqc_add_remove_cloud_filters_element_data** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.i40e_aqc_add_remove_cloud_filters_element_data*, %struct.i40e_aqc_add_remove_cloud_filters_element_data** %3, align 8
  store %struct.i40e_aqc_add_remove_cloud_filters_element_data* %9, %struct.i40e_aqc_add_remove_cloud_filters_element_data** %5, align 8
  store i32 0, i32* %6, align 4
  br label %10

10:                                               ; preds = %46, %2
  %11 = load i32, i32* %6, align 4
  %12 = load i32, i32* %4, align 4
  %13 = icmp slt i32 %11, %12
  br i1 %13, label %14, label %49

14:                                               ; preds = %10
  %15 = load %struct.i40e_aqc_add_remove_cloud_filters_element_data*, %struct.i40e_aqc_add_remove_cloud_filters_element_data** %5, align 8
  %16 = load i32, i32* %6, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.i40e_aqc_add_remove_cloud_filters_element_data, %struct.i40e_aqc_add_remove_cloud_filters_element_data* %15, i64 %17
  %19 = getelementptr inbounds %struct.i40e_aqc_add_remove_cloud_filters_element_data, %struct.i40e_aqc_add_remove_cloud_filters_element_data* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @LE16_TO_CPU(i32 %20)
  %22 = load i32, i32* @I40E_AQC_ADD_CLOUD_TNL_TYPE_MASK, align 4
  %23 = and i32 %21, %22
  %24 = load i32, i32* @I40E_AQC_ADD_CLOUD_TNL_TYPE_SHIFT, align 4
  %25 = ashr i32 %23, %24
  store i32 %25, i32* %7, align 4
  %26 = load i32, i32* %7, align 4
  %27 = load i32, i32* @I40E_AQC_ADD_CLOUD_TNL_TYPE_GENEVE, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %29, label %45

29:                                               ; preds = %14
  %30 = load %struct.i40e_aqc_add_remove_cloud_filters_element_data*, %struct.i40e_aqc_add_remove_cloud_filters_element_data** %5, align 8
  %31 = load i32, i32* %6, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.i40e_aqc_add_remove_cloud_filters_element_data, %struct.i40e_aqc_add_remove_cloud_filters_element_data* %30, i64 %32
  %34 = getelementptr inbounds %struct.i40e_aqc_add_remove_cloud_filters_element_data, %struct.i40e_aqc_add_remove_cloud_filters_element_data* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @LE32_TO_CPU(i32 %35)
  store i32 %36, i32* %8, align 4
  %37 = load i32, i32* %8, align 4
  %38 = shl i32 %37, 8
  %39 = call i32 @CPU_TO_LE32(i32 %38)
  %40 = load %struct.i40e_aqc_add_remove_cloud_filters_element_data*, %struct.i40e_aqc_add_remove_cloud_filters_element_data** %5, align 8
  %41 = load i32, i32* %6, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.i40e_aqc_add_remove_cloud_filters_element_data, %struct.i40e_aqc_add_remove_cloud_filters_element_data* %40, i64 %42
  %44 = getelementptr inbounds %struct.i40e_aqc_add_remove_cloud_filters_element_data, %struct.i40e_aqc_add_remove_cloud_filters_element_data* %43, i32 0, i32 0
  store i32 %39, i32* %44, align 4
  br label %45

45:                                               ; preds = %29, %14
  br label %46

46:                                               ; preds = %45
  %47 = load i32, i32* %6, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %6, align 4
  br label %10

49:                                               ; preds = %10
  ret void
}

declare dso_local i32 @LE16_TO_CPU(i32) #1

declare dso_local i32 @LE32_TO_CPU(i32) #1

declare dso_local i32 @CPU_TO_LE32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
