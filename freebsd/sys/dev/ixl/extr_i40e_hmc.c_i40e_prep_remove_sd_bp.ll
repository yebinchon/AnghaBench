; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_i40e_hmc.c_i40e_prep_remove_sd_bp.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_i40e_hmc.c_i40e_prep_remove_sd_bp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40e_hmc_info = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.i40e_hmc_sd_entry* }
%struct.i40e_hmc_sd_entry = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64 }

@I40E_SUCCESS = common dso_local global i32 0, align 4
@I40E_ERR_NOT_READY = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @i40e_prep_remove_sd_bp(%struct.i40e_hmc_info* %0, i64 %1) #0 {
  %3 = alloca %struct.i40e_hmc_info*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.i40e_hmc_sd_entry*, align 8
  store %struct.i40e_hmc_info* %0, %struct.i40e_hmc_info** %3, align 8
  store i64 %1, i64* %4, align 8
  %7 = load i32, i32* @I40E_SUCCESS, align 4
  store i32 %7, i32* %5, align 4
  %8 = load %struct.i40e_hmc_info*, %struct.i40e_hmc_info** %3, align 8
  %9 = getelementptr inbounds %struct.i40e_hmc_info, %struct.i40e_hmc_info* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  %11 = load %struct.i40e_hmc_sd_entry*, %struct.i40e_hmc_sd_entry** %10, align 8
  %12 = load i64, i64* %4, align 8
  %13 = getelementptr inbounds %struct.i40e_hmc_sd_entry, %struct.i40e_hmc_sd_entry* %11, i64 %12
  store %struct.i40e_hmc_sd_entry* %13, %struct.i40e_hmc_sd_entry** %6, align 8
  %14 = load %struct.i40e_hmc_sd_entry*, %struct.i40e_hmc_sd_entry** %6, align 8
  %15 = getelementptr inbounds %struct.i40e_hmc_sd_entry, %struct.i40e_hmc_sd_entry* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = call i32 @I40E_DEC_BP_REFCNT(%struct.TYPE_6__* %16)
  %18 = load %struct.i40e_hmc_sd_entry*, %struct.i40e_hmc_sd_entry** %6, align 8
  %19 = getelementptr inbounds %struct.i40e_hmc_sd_entry, %struct.i40e_hmc_sd_entry* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %2
  %25 = load i32, i32* @I40E_ERR_NOT_READY, align 4
  store i32 %25, i32* %5, align 4
  br label %33

26:                                               ; preds = %2
  %27 = load %struct.i40e_hmc_info*, %struct.i40e_hmc_info** %3, align 8
  %28 = getelementptr inbounds %struct.i40e_hmc_info, %struct.i40e_hmc_info* %27, i32 0, i32 0
  %29 = call i32 @I40E_DEC_SD_REFCNT(%struct.TYPE_5__* %28)
  %30 = load i32, i32* @FALSE, align 4
  %31 = load %struct.i40e_hmc_sd_entry*, %struct.i40e_hmc_sd_entry** %6, align 8
  %32 = getelementptr inbounds %struct.i40e_hmc_sd_entry, %struct.i40e_hmc_sd_entry* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 8
  br label %33

33:                                               ; preds = %26, %24
  %34 = load i32, i32* %5, align 4
  ret i32 %34
}

declare dso_local i32 @I40E_DEC_BP_REFCNT(%struct.TYPE_6__*) #1

declare dso_local i32 @I40E_DEC_SD_REFCNT(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
