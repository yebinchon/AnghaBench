; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_i40e_dcb.c_i40e_set_dcb_config.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_i40e_dcb.c_i40e_set_dcb_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40e_hw = type { %struct.i40e_dcbx_config }
%struct.i40e_dcbx_config = type { i64 }
%struct.i40e_virt_mem = type { i64 }

@I40E_SUCCESS = common dso_local global i32 0, align 4
@I40E_LLDPDU_SIZE = common dso_local global i32 0, align 4
@SET_LOCAL_MIB_AC_TYPE_LOCAL_MIB = common dso_local global i32 0, align 4
@I40E_DCBX_APPS_NON_WILLING = common dso_local global i64 0, align 8
@SET_LOCAL_MIB_AC_TYPE_NON_WILLING_APPS = common dso_local global i32 0, align 4
@SET_LOCAL_MIB_AC_TYPE_NON_WILLING_APPS_SHIFT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @i40e_set_dcb_config(%struct.i40e_hw* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.i40e_hw*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.i40e_dcbx_config*, align 8
  %6 = alloca %struct.i40e_virt_mem, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  store %struct.i40e_hw* %0, %struct.i40e_hw** %3, align 8
  %10 = load i32, i32* @I40E_SUCCESS, align 4
  store i32 %10, i32* %4, align 4
  %11 = load %struct.i40e_hw*, %struct.i40e_hw** %3, align 8
  %12 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %11, i32 0, i32 0
  store %struct.i40e_dcbx_config* %12, %struct.i40e_dcbx_config** %5, align 8
  %13 = load %struct.i40e_hw*, %struct.i40e_hw** %3, align 8
  %14 = load i32, i32* @I40E_LLDPDU_SIZE, align 4
  %15 = call i32 @i40e_allocate_virt_mem(%struct.i40e_hw* %13, %struct.i40e_virt_mem* %6, i32 %14)
  store i32 %15, i32* %4, align 4
  %16 = load i32, i32* %4, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %1
  %19 = load i32, i32* %4, align 4
  store i32 %19, i32* %2, align 4
  br label %49

20:                                               ; preds = %1
  %21 = load i32, i32* @SET_LOCAL_MIB_AC_TYPE_LOCAL_MIB, align 4
  store i32 %21, i32* %7, align 4
  %22 = load %struct.i40e_dcbx_config*, %struct.i40e_dcbx_config** %5, align 8
  %23 = getelementptr inbounds %struct.i40e_dcbx_config, %struct.i40e_dcbx_config* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @I40E_DCBX_APPS_NON_WILLING, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %33

27:                                               ; preds = %20
  %28 = load i32, i32* @SET_LOCAL_MIB_AC_TYPE_NON_WILLING_APPS, align 4
  %29 = load i32, i32* @SET_LOCAL_MIB_AC_TYPE_NON_WILLING_APPS_SHIFT, align 4
  %30 = shl i32 %28, %29
  %31 = load i32, i32* %7, align 4
  %32 = or i32 %31, %30
  store i32 %32, i32* %7, align 4
  br label %33

33:                                               ; preds = %27, %20
  %34 = getelementptr inbounds %struct.i40e_virt_mem, %struct.i40e_virt_mem* %6, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = inttoptr i64 %35 to i32*
  store i32* %36, i32** %8, align 8
  %37 = load i32*, i32** %8, align 8
  %38 = load %struct.i40e_dcbx_config*, %struct.i40e_dcbx_config** %5, align 8
  %39 = call i32 @i40e_dcb_config_to_lldp(i32* %37, i32* %9, %struct.i40e_dcbx_config* %38)
  store i32 %39, i32* %4, align 4
  %40 = load %struct.i40e_hw*, %struct.i40e_hw** %3, align 8
  %41 = load i32, i32* %7, align 4
  %42 = load i32*, i32** %8, align 8
  %43 = bitcast i32* %42 to i8*
  %44 = load i32, i32* %9, align 4
  %45 = call i32 @i40e_aq_set_lldp_mib(%struct.i40e_hw* %40, i32 %41, i8* %43, i32 %44, i32* null)
  store i32 %45, i32* %4, align 4
  %46 = load %struct.i40e_hw*, %struct.i40e_hw** %3, align 8
  %47 = call i32 @i40e_free_virt_mem(%struct.i40e_hw* %46, %struct.i40e_virt_mem* %6)
  %48 = load i32, i32* %4, align 4
  store i32 %48, i32* %2, align 4
  br label %49

49:                                               ; preds = %33, %18
  %50 = load i32, i32* %2, align 4
  ret i32 %50
}

declare dso_local i32 @i40e_allocate_virt_mem(%struct.i40e_hw*, %struct.i40e_virt_mem*, i32) #1

declare dso_local i32 @i40e_dcb_config_to_lldp(i32*, i32*, %struct.i40e_dcbx_config*) #1

declare dso_local i32 @i40e_aq_set_lldp_mib(%struct.i40e_hw*, i32, i8*, i32, i32*) #1

declare dso_local i32 @i40e_free_virt_mem(%struct.i40e_hw*, %struct.i40e_virt_mem*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
