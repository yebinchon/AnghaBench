; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_if_iavf.c_iavf_if_vlan_register.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_if_iavf.c_iavf_if_vlan_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iavf_sc = type { i32, %struct.ixl_vsi }
%struct.ixl_vsi = type { i32 }
%struct.iavf_vlan_filter = type { i32, i32 }

@M_IAVF = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@next = common dso_local global i32 0, align 4
@IXL_FILTER_ADD = common dso_local global i32 0, align 4
@IAVF_FLAG_AQ_ADD_VLAN_FILTER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32)* @iavf_if_vlan_register to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iavf_if_vlan_register(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.iavf_sc*, align 8
  %6 = alloca %struct.ixl_vsi*, align 8
  %7 = alloca %struct.iavf_vlan_filter*, align 8
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %8 = load i32, i32* %3, align 4
  %9 = call %struct.iavf_sc* @iflib_get_softc(i32 %8)
  store %struct.iavf_sc* %9, %struct.iavf_sc** %5, align 8
  %10 = load %struct.iavf_sc*, %struct.iavf_sc** %5, align 8
  %11 = getelementptr inbounds %struct.iavf_sc, %struct.iavf_sc* %10, i32 0, i32 1
  store %struct.ixl_vsi* %11, %struct.ixl_vsi** %6, align 8
  %12 = load i32, i32* %4, align 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %2
  %15 = load i32, i32* %4, align 4
  %16 = icmp sgt i32 %15, 4095
  br i1 %16, label %17, label %18

17:                                               ; preds = %14, %2
  br label %43

18:                                               ; preds = %14
  %19 = load %struct.ixl_vsi*, %struct.ixl_vsi** %6, align 8
  %20 = getelementptr inbounds %struct.ixl_vsi, %struct.ixl_vsi* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* %20, align 4
  %23 = load i32, i32* @M_IAVF, align 4
  %24 = load i32, i32* @M_WAITOK, align 4
  %25 = load i32, i32* @M_ZERO, align 4
  %26 = or i32 %24, %25
  %27 = call %struct.iavf_vlan_filter* @malloc(i32 8, i32 %23, i32 %26)
  store %struct.iavf_vlan_filter* %27, %struct.iavf_vlan_filter** %7, align 8
  %28 = load %struct.iavf_sc*, %struct.iavf_sc** %5, align 8
  %29 = getelementptr inbounds %struct.iavf_sc, %struct.iavf_sc* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.iavf_vlan_filter*, %struct.iavf_vlan_filter** %7, align 8
  %32 = load i32, i32* @next, align 4
  %33 = call i32 @SLIST_INSERT_HEAD(i32 %30, %struct.iavf_vlan_filter* %31, i32 %32)
  %34 = load i32, i32* %4, align 4
  %35 = load %struct.iavf_vlan_filter*, %struct.iavf_vlan_filter** %7, align 8
  %36 = getelementptr inbounds %struct.iavf_vlan_filter, %struct.iavf_vlan_filter* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 4
  %37 = load i32, i32* @IXL_FILTER_ADD, align 4
  %38 = load %struct.iavf_vlan_filter*, %struct.iavf_vlan_filter** %7, align 8
  %39 = getelementptr inbounds %struct.iavf_vlan_filter, %struct.iavf_vlan_filter* %38, i32 0, i32 1
  store i32 %37, i32* %39, align 4
  %40 = load %struct.iavf_sc*, %struct.iavf_sc** %5, align 8
  %41 = load i32, i32* @IAVF_FLAG_AQ_ADD_VLAN_FILTER, align 4
  %42 = call i32 @iavf_send_vc_msg(%struct.iavf_sc* %40, i32 %41)
  br label %43

43:                                               ; preds = %18, %17
  ret void
}

declare dso_local %struct.iavf_sc* @iflib_get_softc(i32) #1

declare dso_local %struct.iavf_vlan_filter* @malloc(i32, i32, i32) #1

declare dso_local i32 @SLIST_INSERT_HEAD(i32, %struct.iavf_vlan_filter*, i32) #1

declare dso_local i32 @iavf_send_vc_msg(%struct.iavf_sc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
