; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_i40e_lan_hmc.c_i40e_shutdown_lan_hmc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_i40e_lan_hmc.c_i40e_shutdown_lan_hmc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40e_hw = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32*, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32*, i64, i32 }
%struct.i40e_hmc_lan_delete_obj_info = type { i32, i64, i32, %struct.TYPE_4__* }

@I40E_HMC_LAN_FULL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @i40e_shutdown_lan_hmc(%struct.i40e_hw* %0) #0 {
  %2 = alloca %struct.i40e_hw*, align 8
  %3 = alloca %struct.i40e_hmc_lan_delete_obj_info, align 8
  %4 = alloca i32, align 4
  store %struct.i40e_hw* %0, %struct.i40e_hw** %2, align 8
  %5 = load %struct.i40e_hw*, %struct.i40e_hw** %2, align 8
  %6 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.i40e_hmc_lan_delete_obj_info, %struct.i40e_hmc_lan_delete_obj_info* %3, i32 0, i32 3
  store %struct.TYPE_4__* %6, %struct.TYPE_4__** %7, align 8
  %8 = load i32, i32* @I40E_HMC_LAN_FULL, align 4
  %9 = getelementptr inbounds %struct.i40e_hmc_lan_delete_obj_info, %struct.i40e_hmc_lan_delete_obj_info* %3, i32 0, i32 2
  store i32 %8, i32* %9, align 8
  %10 = getelementptr inbounds %struct.i40e_hmc_lan_delete_obj_info, %struct.i40e_hmc_lan_delete_obj_info* %3, i32 0, i32 1
  store i64 0, i64* %10, align 8
  %11 = getelementptr inbounds %struct.i40e_hmc_lan_delete_obj_info, %struct.i40e_hmc_lan_delete_obj_info* %3, i32 0, i32 0
  store i32 1, i32* %11, align 8
  %12 = load %struct.i40e_hw*, %struct.i40e_hw** %2, align 8
  %13 = call i32 @i40e_delete_lan_hmc_object(%struct.i40e_hw* %12, %struct.i40e_hmc_lan_delete_obj_info* %3)
  store i32 %13, i32* %4, align 4
  %14 = load %struct.i40e_hw*, %struct.i40e_hw** %2, align 8
  %15 = load %struct.i40e_hw*, %struct.i40e_hw** %2, align 8
  %16 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 2
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 2
  %19 = call i32 @i40e_free_virt_mem(%struct.i40e_hw* %14, i32* %18)
  %20 = load %struct.i40e_hw*, %struct.i40e_hw** %2, align 8
  %21 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 2
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 1
  store i64 0, i64* %23, align 8
  %24 = load %struct.i40e_hw*, %struct.i40e_hw** %2, align 8
  %25 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 2
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  store i32* null, i32** %27, align 8
  %28 = load %struct.i40e_hw*, %struct.i40e_hw** %2, align 8
  %29 = load %struct.i40e_hw*, %struct.i40e_hw** %2, align 8
  %30 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 1
  %32 = call i32 @i40e_free_virt_mem(%struct.i40e_hw* %28, i32* %31)
  %33 = load %struct.i40e_hw*, %struct.i40e_hw** %2, align 8
  %34 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  store i32* null, i32** %35, align 8
  %36 = load i32, i32* %4, align 4
  ret i32 %36
}

declare dso_local i32 @i40e_delete_lan_hmc_object(%struct.i40e_hw*, %struct.i40e_hmc_lan_delete_obj_info*) #1

declare dso_local i32 @i40e_free_virt_mem(%struct.i40e_hw*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
