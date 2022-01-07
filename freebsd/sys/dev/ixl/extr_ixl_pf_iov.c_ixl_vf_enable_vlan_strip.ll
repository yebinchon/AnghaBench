; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_ixl_pf_iov.c_ixl_vf_enable_vlan_strip.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_ixl_pf_iov.c_ixl_vf_enable_vlan_strip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixl_pf = type { i32 }
%struct.ixl_vf = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.i40e_vsi_context = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32, i32 }

@I40E_AQ_VSI_PROP_VLAN_VALID = common dso_local global i32 0, align 4
@I40E_AQ_VSI_PVLAN_MODE_ALL = common dso_local global i32 0, align 4
@I40E_AQ_VSI_PVLAN_EMOD_STR_BOTH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ixl_pf*, %struct.ixl_vf*)* @ixl_vf_enable_vlan_strip to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ixl_vf_enable_vlan_strip(%struct.ixl_pf* %0, %struct.ixl_vf* %1) #0 {
  %3 = alloca %struct.ixl_pf*, align 8
  %4 = alloca %struct.ixl_vf*, align 8
  %5 = alloca %struct.i40e_vsi_context, align 4
  store %struct.ixl_pf* %0, %struct.ixl_pf** %3, align 8
  store %struct.ixl_vf* %1, %struct.ixl_vf** %4, align 8
  %6 = load %struct.ixl_vf*, %struct.ixl_vf** %4, align 8
  %7 = getelementptr inbounds %struct.ixl_vf, %struct.ixl_vf* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = getelementptr inbounds %struct.i40e_vsi_context, %struct.i40e_vsi_context* %5, i32 0, i32 1
  store i32 %9, i32* %10, align 4
  %11 = getelementptr inbounds %struct.i40e_vsi_context, %struct.i40e_vsi_context* %5, i32 0, i32 0
  %12 = call i32 @bzero(%struct.TYPE_4__* %11, i32 8)
  %13 = load i32, i32* @I40E_AQ_VSI_PROP_VLAN_VALID, align 4
  %14 = call i32 @htole16(i32 %13)
  %15 = getelementptr inbounds %struct.i40e_vsi_context, %struct.i40e_vsi_context* %5, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 1
  store i32 %14, i32* %16, align 4
  %17 = load i32, i32* @I40E_AQ_VSI_PVLAN_MODE_ALL, align 4
  %18 = load i32, i32* @I40E_AQ_VSI_PVLAN_EMOD_STR_BOTH, align 4
  %19 = or i32 %17, %18
  %20 = getelementptr inbounds %struct.i40e_vsi_context, %struct.i40e_vsi_context* %5, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  store i32 %19, i32* %21, align 4
  %22 = load %struct.ixl_pf*, %struct.ixl_pf** %3, align 8
  %23 = getelementptr inbounds %struct.ixl_pf, %struct.ixl_pf* %22, i32 0, i32 0
  %24 = call i32 @i40e_aq_update_vsi_params(i32* %23, %struct.i40e_vsi_context* %5, i32* null)
  ret i32 %24
}

declare dso_local i32 @bzero(%struct.TYPE_4__*, i32) #1

declare dso_local i32 @htole16(i32) #1

declare dso_local i32 @i40e_aq_update_vsi_params(i32*, %struct.i40e_vsi_context*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
