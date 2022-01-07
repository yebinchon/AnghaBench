; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_ixl_pf_main.c_ixl_reset.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_ixl_pf_main.c_ixl_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixl_pf = type { i32, i32, i32, %struct.i40e_hw }
%struct.i40e_hw = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.TYPE_3__ = type { i32, i32 }

@.str = private unnamed_addr constant [24 x i8] c"init: PF reset failure\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [48 x i8] c"init: Admin queue init failure; status code %d\0A\00", align 1
@IXL_PF_STATE_PF_CRIT_ERR = common dso_local global i32 0, align 4
@IXL_PF_STATE_PF_RESET_REQ = common dso_local global i32 0, align 4
@I40E_PFINT_ICR0_ENA = common dso_local global i32 0, align 4
@IXL_ICR0_CRIT_ERR_MASK = common dso_local global i32 0, align 4
@I40E_HMC_MODEL_DIRECT_ONLY = common dso_local global i32 0, align 4
@IXL_DEFAULT_PHY_INT_MASK = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@set_fc_err_mask = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ixl_reset(%struct.ixl_pf* %0) #0 {
  %2 = alloca %struct.ixl_pf*, align 8
  %3 = alloca %struct.i40e_hw*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.ixl_pf* %0, %struct.ixl_pf** %2, align 8
  %7 = load %struct.ixl_pf*, %struct.ixl_pf** %2, align 8
  %8 = getelementptr inbounds %struct.ixl_pf, %struct.ixl_pf* %7, i32 0, i32 3
  store %struct.i40e_hw* %8, %struct.i40e_hw** %3, align 8
  %9 = load %struct.ixl_pf*, %struct.ixl_pf** %2, align 8
  %10 = getelementptr inbounds %struct.ixl_pf, %struct.ixl_pf* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 4
  store i32 %11, i32* %4, align 4
  store i32 0, i32* %6, align 4
  %12 = load %struct.i40e_hw*, %struct.i40e_hw** %3, align 8
  %13 = call i32 @i40e_clear_hw(%struct.i40e_hw* %12)
  %14 = load %struct.i40e_hw*, %struct.i40e_hw** %3, align 8
  %15 = call i32 @i40e_pf_reset(%struct.i40e_hw* %14)
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %6, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %1
  %19 = load i32, i32* %4, align 4
  %20 = call i32 (i32, i8*, ...) @device_printf(i32 %19, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %21 = load i32, i32* @EIO, align 4
  store i32 %21, i32* %6, align 4
  br label %55

22:                                               ; preds = %1
  %23 = load %struct.i40e_hw*, %struct.i40e_hw** %3, align 8
  %24 = call i32 @i40e_init_adminq(%struct.i40e_hw* %23)
  store i32 %24, i32* %6, align 4
  %25 = load i32, i32* %6, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %22
  %28 = load i32, i32* %4, align 4
  %29 = load i32, i32* %6, align 4
  %30 = call i32 (i32, i8*, ...) @device_printf(i32 %28, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0), i32 %29)
  %31 = load i32, i32* @EIO, align 4
  store i32 %31, i32* %6, align 4
  br label %55

32:                                               ; preds = %22
  %33 = load %struct.i40e_hw*, %struct.i40e_hw** %3, align 8
  %34 = call i32 @i40e_clear_pxe_mode(%struct.i40e_hw* %33)
  %35 = load %struct.ixl_pf*, %struct.ixl_pf** %2, align 8
  %36 = call i32 @ixl_rebuild_hw_structs_after_reset(%struct.ixl_pf* %35)
  %37 = load %struct.ixl_pf*, %struct.ixl_pf** %2, align 8
  %38 = getelementptr inbounds %struct.ixl_pf, %struct.ixl_pf* %37, i32 0, i32 1
  %39 = load i32, i32* @IXL_PF_STATE_PF_CRIT_ERR, align 4
  %40 = call i32 @atomic_clear_32(i32* %38, i32 %39)
  %41 = load %struct.ixl_pf*, %struct.ixl_pf** %2, align 8
  %42 = getelementptr inbounds %struct.ixl_pf, %struct.ixl_pf* %41, i32 0, i32 1
  %43 = load i32, i32* @IXL_PF_STATE_PF_RESET_REQ, align 4
  %44 = call i32 @atomic_clear_32(i32* %42, i32 %43)
  %45 = load %struct.i40e_hw*, %struct.i40e_hw** %3, align 8
  %46 = load i32, i32* @I40E_PFINT_ICR0_ENA, align 4
  %47 = call i32 @rd32(%struct.i40e_hw* %45, i32 %46)
  store i32 %47, i32* %5, align 4
  %48 = load i32, i32* @IXL_ICR0_CRIT_ERR_MASK, align 4
  %49 = load i32, i32* %5, align 4
  %50 = or i32 %49, %48
  store i32 %50, i32* %5, align 4
  %51 = load %struct.i40e_hw*, %struct.i40e_hw** %3, align 8
  %52 = load i32, i32* @I40E_PFINT_ICR0_ENA, align 4
  %53 = load i32, i32* %5, align 4
  %54 = call i32 @wr32(%struct.i40e_hw* %51, i32 %52, i32 %53)
  br label %55

55:                                               ; preds = %32, %27, %18
  %56 = load i32, i32* %6, align 4
  ret i32 %56
}

declare dso_local i32 @i40e_clear_hw(%struct.i40e_hw*) #1

declare dso_local i32 @i40e_pf_reset(%struct.i40e_hw*) #1

declare dso_local i32 @device_printf(i32, i8*, ...) #1

declare dso_local i32 @i40e_init_adminq(%struct.i40e_hw*) #1

declare dso_local i32 @i40e_clear_pxe_mode(%struct.i40e_hw*) #1

declare dso_local i32 @ixl_rebuild_hw_structs_after_reset(%struct.ixl_pf*) #1

declare dso_local i32 @atomic_clear_32(i32*, i32) #1

declare dso_local i32 @rd32(%struct.i40e_hw*, i32) #1

declare dso_local i32 @wr32(%struct.i40e_hw*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
