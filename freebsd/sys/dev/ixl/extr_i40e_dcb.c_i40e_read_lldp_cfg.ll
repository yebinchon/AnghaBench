; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_i40e_dcb.c_i40e_read_lldp_cfg.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_i40e_dcb.c_i40e_read_lldp_cfg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40e_hw = type { i32 }
%struct.i40e_lldp_variables = type { i32 }

@I40E_SUCCESS = common dso_local global i32 0, align 4
@I40E_ERR_PARAM = common dso_local global i32 0, align 4
@I40E_RESOURCE_READ = common dso_local global i32 0, align 4
@I40E_SR_NVM_CONTROL_WORD = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@I40E_SR_NVM_MAP_STRUCTURE_TYPE = common dso_local global i32 0, align 4
@I40E_SR_EMP_MODULE_PTR = common dso_local global i32 0, align 4
@I40E_SR_LLDP_CFG_PTR = common dso_local global i32 0, align 4
@I40E_EMP_MODULE_PTR = common dso_local global i32 0, align 4
@I40E_NVM_LLDP_CFG_PTR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @i40e_read_lldp_cfg(%struct.i40e_hw* %0, %struct.i40e_lldp_variables* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i40e_hw*, align 8
  %5 = alloca %struct.i40e_lldp_variables*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.i40e_hw* %0, %struct.i40e_hw** %4, align 8
  store %struct.i40e_lldp_variables* %1, %struct.i40e_lldp_variables** %5, align 8
  %8 = load i32, i32* @I40E_SUCCESS, align 4
  store i32 %8, i32* %6, align 4
  %9 = load %struct.i40e_lldp_variables*, %struct.i40e_lldp_variables** %5, align 8
  %10 = icmp ne %struct.i40e_lldp_variables* %9, null
  br i1 %10, label %13, label %11

11:                                               ; preds = %2
  %12 = load i32, i32* @I40E_ERR_PARAM, align 4
  store i32 %12, i32* %3, align 4
  br label %53

13:                                               ; preds = %2
  %14 = load %struct.i40e_hw*, %struct.i40e_hw** %4, align 8
  %15 = load i32, i32* @I40E_RESOURCE_READ, align 4
  %16 = call i32 @i40e_acquire_nvm(%struct.i40e_hw* %14, i32 %15)
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* %6, align 4
  %18 = load i32, i32* @I40E_SUCCESS, align 4
  %19 = icmp ne i32 %17, %18
  br i1 %19, label %20, label %22

20:                                               ; preds = %13
  %21 = load i32, i32* %6, align 4
  store i32 %21, i32* %3, align 4
  br label %53

22:                                               ; preds = %13
  %23 = load %struct.i40e_hw*, %struct.i40e_hw** %4, align 8
  %24 = load i32, i32* @I40E_SR_NVM_CONTROL_WORD, align 4
  %25 = load i32, i32* @TRUE, align 4
  %26 = call i32 @i40e_aq_read_nvm(%struct.i40e_hw* %23, i32 %24, i32 0, i32 4, i32* %7, i32 %25, i32* null)
  store i32 %26, i32* %6, align 4
  %27 = load %struct.i40e_hw*, %struct.i40e_hw** %4, align 8
  %28 = call i32 @i40e_release_nvm(%struct.i40e_hw* %27)
  %29 = load i32, i32* %6, align 4
  %30 = load i32, i32* @I40E_SUCCESS, align 4
  %31 = icmp ne i32 %29, %30
  br i1 %31, label %32, label %34

32:                                               ; preds = %22
  %33 = load i32, i32* %6, align 4
  store i32 %33, i32* %3, align 4
  br label %53

34:                                               ; preds = %22
  %35 = load i32, i32* %7, align 4
  %36 = load i32, i32* @I40E_SR_NVM_MAP_STRUCTURE_TYPE, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %45

39:                                               ; preds = %34
  %40 = load %struct.i40e_hw*, %struct.i40e_hw** %4, align 8
  %41 = load %struct.i40e_lldp_variables*, %struct.i40e_lldp_variables** %5, align 8
  %42 = load i32, i32* @I40E_SR_EMP_MODULE_PTR, align 4
  %43 = load i32, i32* @I40E_SR_LLDP_CFG_PTR, align 4
  %44 = call i32 @_i40e_read_lldp_cfg(%struct.i40e_hw* %40, %struct.i40e_lldp_variables* %41, i32 %42, i32 %43)
  store i32 %44, i32* %6, align 4
  br label %51

45:                                               ; preds = %34
  %46 = load %struct.i40e_hw*, %struct.i40e_hw** %4, align 8
  %47 = load %struct.i40e_lldp_variables*, %struct.i40e_lldp_variables** %5, align 8
  %48 = load i32, i32* @I40E_EMP_MODULE_PTR, align 4
  %49 = load i32, i32* @I40E_NVM_LLDP_CFG_PTR, align 4
  %50 = call i32 @_i40e_read_lldp_cfg(%struct.i40e_hw* %46, %struct.i40e_lldp_variables* %47, i32 %48, i32 %49)
  store i32 %50, i32* %6, align 4
  br label %51

51:                                               ; preds = %45, %39
  %52 = load i32, i32* %6, align 4
  store i32 %52, i32* %3, align 4
  br label %53

53:                                               ; preds = %51, %32, %20, %11
  %54 = load i32, i32* %3, align 4
  ret i32 %54
}

declare dso_local i32 @i40e_acquire_nvm(%struct.i40e_hw*, i32) #1

declare dso_local i32 @i40e_aq_read_nvm(%struct.i40e_hw*, i32, i32, i32, i32*, i32, i32*) #1

declare dso_local i32 @i40e_release_nvm(%struct.i40e_hw*) #1

declare dso_local i32 @_i40e_read_lldp_cfg(%struct.i40e_hw*, %struct.i40e_lldp_variables*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
