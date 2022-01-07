; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_i40e_dcb.c_i40e_get_ieee_dcb_config.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_i40e_dcb.c_i40e_get_ieee_dcb_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40e_hw = type { %struct.TYPE_3__, %struct.TYPE_4__, %struct.TYPE_4__ }
%struct.TYPE_3__ = type { i64 }
%struct.TYPE_4__ = type { i32 }

@I40E_SUCCESS = common dso_local global i32 0, align 4
@I40E_DCBX_MODE_IEEE = common dso_local global i32 0, align 4
@I40E_AQ_LLDP_MIB_LOCAL = common dso_local global i32 0, align 4
@I40E_AQ_LLDP_MIB_REMOTE = common dso_local global i32 0, align 4
@I40E_AQ_LLDP_BRIDGE_TYPE_NEAREST_BRIDGE = common dso_local global i32 0, align 4
@I40E_AQ_RC_ENOENT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i40e_hw*)* @i40e_get_ieee_dcb_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i40e_get_ieee_dcb_config(%struct.i40e_hw* %0) #0 {
  %2 = alloca %struct.i40e_hw*, align 8
  %3 = alloca i32, align 4
  store %struct.i40e_hw* %0, %struct.i40e_hw** %2, align 8
  %4 = load i32, i32* @I40E_SUCCESS, align 4
  store i32 %4, i32* %3, align 4
  %5 = load i32, i32* @I40E_DCBX_MODE_IEEE, align 4
  %6 = load %struct.i40e_hw*, %struct.i40e_hw** %2, align 8
  %7 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %6, i32 0, i32 2
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  store i32 %5, i32* %8, align 4
  %9 = load %struct.i40e_hw*, %struct.i40e_hw** %2, align 8
  %10 = load i32, i32* @I40E_AQ_LLDP_MIB_LOCAL, align 4
  %11 = load %struct.i40e_hw*, %struct.i40e_hw** %2, align 8
  %12 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %11, i32 0, i32 2
  %13 = call i32 @i40e_aq_get_dcb_config(%struct.i40e_hw* %9, i32 %10, i32 0, %struct.TYPE_4__* %12)
  store i32 %13, i32* %3, align 4
  %14 = load i32, i32* %3, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %1
  br label %33

17:                                               ; preds = %1
  %18 = load %struct.i40e_hw*, %struct.i40e_hw** %2, align 8
  %19 = load i32, i32* @I40E_AQ_LLDP_MIB_REMOTE, align 4
  %20 = load i32, i32* @I40E_AQ_LLDP_BRIDGE_TYPE_NEAREST_BRIDGE, align 4
  %21 = load %struct.i40e_hw*, %struct.i40e_hw** %2, align 8
  %22 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %21, i32 0, i32 1
  %23 = call i32 @i40e_aq_get_dcb_config(%struct.i40e_hw* %18, i32 %19, i32 %20, %struct.TYPE_4__* %22)
  store i32 %23, i32* %3, align 4
  %24 = load %struct.i40e_hw*, %struct.i40e_hw** %2, align 8
  %25 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @I40E_AQ_RC_ENOENT, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %32

30:                                               ; preds = %17
  %31 = load i32, i32* @I40E_SUCCESS, align 4
  store i32 %31, i32* %3, align 4
  br label %32

32:                                               ; preds = %30, %17
  br label %33

33:                                               ; preds = %32, %16
  %34 = load i32, i32* %3, align 4
  ret i32 %34
}

declare dso_local i32 @i40e_aq_get_dcb_config(%struct.i40e_hw*, i32, i32, %struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
