; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_i40e_dcb.c_i40e_aq_get_dcb_config.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_i40e_dcb.c_i40e_aq_get_dcb_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40e_hw = type { i32 }
%struct.i40e_dcbx_config = type { i32 }
%struct.i40e_virt_mem = type { i64 }

@I40E_SUCCESS = common dso_local global i32 0, align 4
@I40E_LLDPDU_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @i40e_aq_get_dcb_config(%struct.i40e_hw* %0, i32 %1, i32 %2, %struct.i40e_dcbx_config* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.i40e_hw*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.i40e_dcbx_config*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.i40e_virt_mem, align 8
  %12 = alloca i32*, align 8
  store %struct.i40e_hw* %0, %struct.i40e_hw** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store %struct.i40e_dcbx_config* %3, %struct.i40e_dcbx_config** %9, align 8
  %13 = load i32, i32* @I40E_SUCCESS, align 4
  store i32 %13, i32* %10, align 4
  %14 = load %struct.i40e_hw*, %struct.i40e_hw** %6, align 8
  %15 = load i32, i32* @I40E_LLDPDU_SIZE, align 4
  %16 = call i32 @i40e_allocate_virt_mem(%struct.i40e_hw* %14, %struct.i40e_virt_mem* %11, i32 %15)
  store i32 %16, i32* %10, align 4
  %17 = load i32, i32* %10, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %4
  %20 = load i32, i32* %10, align 4
  store i32 %20, i32* %5, align 4
  br label %43

21:                                               ; preds = %4
  %22 = getelementptr inbounds %struct.i40e_virt_mem, %struct.i40e_virt_mem* %11, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = inttoptr i64 %23 to i32*
  store i32* %24, i32** %12, align 8
  %25 = load %struct.i40e_hw*, %struct.i40e_hw** %6, align 8
  %26 = load i32, i32* %8, align 4
  %27 = load i32, i32* %7, align 4
  %28 = load i32*, i32** %12, align 8
  %29 = bitcast i32* %28 to i8*
  %30 = load i32, i32* @I40E_LLDPDU_SIZE, align 4
  %31 = call i32 @i40e_aq_get_lldp_mib(%struct.i40e_hw* %25, i32 %26, i32 %27, i8* %29, i32 %30, i32* null, i32* null, i32* null)
  store i32 %31, i32* %10, align 4
  %32 = load i32, i32* %10, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %21
  br label %39

35:                                               ; preds = %21
  %36 = load i32*, i32** %12, align 8
  %37 = load %struct.i40e_dcbx_config*, %struct.i40e_dcbx_config** %9, align 8
  %38 = call i32 @i40e_lldp_to_dcb_config(i32* %36, %struct.i40e_dcbx_config* %37)
  store i32 %38, i32* %10, align 4
  br label %39

39:                                               ; preds = %35, %34
  %40 = load %struct.i40e_hw*, %struct.i40e_hw** %6, align 8
  %41 = call i32 @i40e_free_virt_mem(%struct.i40e_hw* %40, %struct.i40e_virt_mem* %11)
  %42 = load i32, i32* %10, align 4
  store i32 %42, i32* %5, align 4
  br label %43

43:                                               ; preds = %39, %19
  %44 = load i32, i32* %5, align 4
  ret i32 %44
}

declare dso_local i32 @i40e_allocate_virt_mem(%struct.i40e_hw*, %struct.i40e_virt_mem*, i32) #1

declare dso_local i32 @i40e_aq_get_lldp_mib(%struct.i40e_hw*, i32, i32, i8*, i32, i32*, i32*, i32*) #1

declare dso_local i32 @i40e_lldp_to_dcb_config(i32*, %struct.i40e_dcbx_config*) #1

declare dso_local i32 @i40e_free_virt_mem(%struct.i40e_hw*, %struct.i40e_virt_mem*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
