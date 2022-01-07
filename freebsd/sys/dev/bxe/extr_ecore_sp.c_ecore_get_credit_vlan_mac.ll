; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_ecore_sp.c_ecore_get_credit_vlan_mac.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_ecore_sp.c_ecore_get_credit_vlan_mac.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecore_vlan_mac_obj = type { %struct.ecore_credit_pool_obj*, %struct.ecore_credit_pool_obj* }
%struct.ecore_credit_pool_obj = type { i32 (%struct.ecore_credit_pool_obj*, i32)*, i32 (%struct.ecore_credit_pool_obj*, i32)* }

@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ecore_vlan_mac_obj*)* @ecore_get_credit_vlan_mac to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ecore_get_credit_vlan_mac(%struct.ecore_vlan_mac_obj* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ecore_vlan_mac_obj*, align 8
  %4 = alloca %struct.ecore_credit_pool_obj*, align 8
  %5 = alloca %struct.ecore_credit_pool_obj*, align 8
  store %struct.ecore_vlan_mac_obj* %0, %struct.ecore_vlan_mac_obj** %3, align 8
  %6 = load %struct.ecore_vlan_mac_obj*, %struct.ecore_vlan_mac_obj** %3, align 8
  %7 = getelementptr inbounds %struct.ecore_vlan_mac_obj, %struct.ecore_vlan_mac_obj* %6, i32 0, i32 1
  %8 = load %struct.ecore_credit_pool_obj*, %struct.ecore_credit_pool_obj** %7, align 8
  store %struct.ecore_credit_pool_obj* %8, %struct.ecore_credit_pool_obj** %4, align 8
  %9 = load %struct.ecore_vlan_mac_obj*, %struct.ecore_vlan_mac_obj** %3, align 8
  %10 = getelementptr inbounds %struct.ecore_vlan_mac_obj, %struct.ecore_vlan_mac_obj* %9, i32 0, i32 0
  %11 = load %struct.ecore_credit_pool_obj*, %struct.ecore_credit_pool_obj** %10, align 8
  store %struct.ecore_credit_pool_obj* %11, %struct.ecore_credit_pool_obj** %5, align 8
  %12 = load %struct.ecore_credit_pool_obj*, %struct.ecore_credit_pool_obj** %4, align 8
  %13 = getelementptr inbounds %struct.ecore_credit_pool_obj, %struct.ecore_credit_pool_obj* %12, i32 0, i32 1
  %14 = load i32 (%struct.ecore_credit_pool_obj*, i32)*, i32 (%struct.ecore_credit_pool_obj*, i32)** %13, align 8
  %15 = load %struct.ecore_credit_pool_obj*, %struct.ecore_credit_pool_obj** %4, align 8
  %16 = call i32 %14(%struct.ecore_credit_pool_obj* %15, i32 1)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %20, label %18

18:                                               ; preds = %1
  %19 = load i32, i32* @FALSE, align 4
  store i32 %19, i32* %2, align 4
  br label %36

20:                                               ; preds = %1
  %21 = load %struct.ecore_credit_pool_obj*, %struct.ecore_credit_pool_obj** %5, align 8
  %22 = getelementptr inbounds %struct.ecore_credit_pool_obj, %struct.ecore_credit_pool_obj* %21, i32 0, i32 1
  %23 = load i32 (%struct.ecore_credit_pool_obj*, i32)*, i32 (%struct.ecore_credit_pool_obj*, i32)** %22, align 8
  %24 = load %struct.ecore_credit_pool_obj*, %struct.ecore_credit_pool_obj** %5, align 8
  %25 = call i32 %23(%struct.ecore_credit_pool_obj* %24, i32 1)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %34, label %27

27:                                               ; preds = %20
  %28 = load %struct.ecore_credit_pool_obj*, %struct.ecore_credit_pool_obj** %4, align 8
  %29 = getelementptr inbounds %struct.ecore_credit_pool_obj, %struct.ecore_credit_pool_obj* %28, i32 0, i32 0
  %30 = load i32 (%struct.ecore_credit_pool_obj*, i32)*, i32 (%struct.ecore_credit_pool_obj*, i32)** %29, align 8
  %31 = load %struct.ecore_credit_pool_obj*, %struct.ecore_credit_pool_obj** %4, align 8
  %32 = call i32 %30(%struct.ecore_credit_pool_obj* %31, i32 1)
  %33 = load i32, i32* @FALSE, align 4
  store i32 %33, i32* %2, align 4
  br label %36

34:                                               ; preds = %20
  %35 = load i32, i32* @TRUE, align 4
  store i32 %35, i32* %2, align 4
  br label %36

36:                                               ; preds = %34, %27, %18
  %37 = load i32, i32* %2, align 4
  ret i32 %37
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
