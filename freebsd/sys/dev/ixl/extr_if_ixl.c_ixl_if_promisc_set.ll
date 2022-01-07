; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_if_ixl.c_ixl_if_promisc_set.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_if_ixl.c_ixl_if_promisc_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixl_pf = type { %struct.ixl_vsi }
%struct.ixl_vsi = type { i32, %struct.i40e_hw* }
%struct.i40e_hw = type { i32 }
%struct.ifnet = type { i32 }

@FALSE = common dso_local global i32 0, align 4
@IFF_PROMISC = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@IFF_ALLMULTI = common dso_local global i32 0, align 4
@MAX_MULTICAST_ADDR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @ixl_if_promisc_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ixl_if_promisc_set(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.ixl_pf*, align 8
  %7 = alloca %struct.ixl_vsi*, align 8
  %8 = alloca %struct.ifnet*, align 8
  %9 = alloca %struct.i40e_hw*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %13 = load i32, i32* %4, align 4
  %14 = call %struct.ixl_pf* @iflib_get_softc(i32 %13)
  store %struct.ixl_pf* %14, %struct.ixl_pf** %6, align 8
  %15 = load %struct.ixl_pf*, %struct.ixl_pf** %6, align 8
  %16 = getelementptr inbounds %struct.ixl_pf, %struct.ixl_pf* %15, i32 0, i32 0
  store %struct.ixl_vsi* %16, %struct.ixl_vsi** %7, align 8
  %17 = load i32, i32* %4, align 4
  %18 = call %struct.ifnet* @iflib_get_ifp(i32 %17)
  store %struct.ifnet* %18, %struct.ifnet** %8, align 8
  %19 = load %struct.ixl_vsi*, %struct.ixl_vsi** %7, align 8
  %20 = getelementptr inbounds %struct.ixl_vsi, %struct.ixl_vsi* %19, i32 0, i32 1
  %21 = load %struct.i40e_hw*, %struct.i40e_hw** %20, align 8
  store %struct.i40e_hw* %21, %struct.i40e_hw** %9, align 8
  %22 = load i32, i32* @FALSE, align 4
  store i32 %22, i32* %11, align 4
  %23 = load i32, i32* @FALSE, align 4
  store i32 %23, i32* %12, align 4
  %24 = load i32, i32* %5, align 4
  %25 = load i32, i32* @IFF_PROMISC, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %2
  %29 = load i32, i32* @TRUE, align 4
  store i32 %29, i32* %12, align 4
  store i32 %29, i32* %11, align 4
  br label %43

30:                                               ; preds = %2
  %31 = load i32, i32* %5, align 4
  %32 = load i32, i32* @IFF_ALLMULTI, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %40, label %35

35:                                               ; preds = %30
  %36 = load %struct.ifnet*, %struct.ifnet** %8, align 8
  %37 = call i64 @if_llmaddr_count(%struct.ifnet* %36)
  %38 = load i64, i64* @MAX_MULTICAST_ADDR, align 8
  %39 = icmp sge i64 %37, %38
  br i1 %39, label %40, label %42

40:                                               ; preds = %35, %30
  %41 = load i32, i32* @TRUE, align 4
  store i32 %41, i32* %12, align 4
  br label %42

42:                                               ; preds = %40, %35
  br label %43

43:                                               ; preds = %42, %28
  %44 = load %struct.i40e_hw*, %struct.i40e_hw** %9, align 8
  %45 = load %struct.ixl_vsi*, %struct.ixl_vsi** %7, align 8
  %46 = getelementptr inbounds %struct.ixl_vsi, %struct.ixl_vsi* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* %11, align 4
  %49 = call i32 @i40e_aq_set_vsi_unicast_promiscuous(%struct.i40e_hw* %44, i32 %47, i32 %48, i32* null, i32 1)
  store i32 %49, i32* %10, align 4
  %50 = load i32, i32* %10, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %43
  %53 = load i32, i32* %10, align 4
  store i32 %53, i32* %3, align 4
  br label %62

54:                                               ; preds = %43
  %55 = load %struct.i40e_hw*, %struct.i40e_hw** %9, align 8
  %56 = load %struct.ixl_vsi*, %struct.ixl_vsi** %7, align 8
  %57 = getelementptr inbounds %struct.ixl_vsi, %struct.ixl_vsi* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* %12, align 4
  %60 = call i32 @i40e_aq_set_vsi_multicast_promiscuous(%struct.i40e_hw* %55, i32 %58, i32 %59, i32* null)
  store i32 %60, i32* %10, align 4
  %61 = load i32, i32* %10, align 4
  store i32 %61, i32* %3, align 4
  br label %62

62:                                               ; preds = %54, %52
  %63 = load i32, i32* %3, align 4
  ret i32 %63
}

declare dso_local %struct.ixl_pf* @iflib_get_softc(i32) #1

declare dso_local %struct.ifnet* @iflib_get_ifp(i32) #1

declare dso_local i64 @if_llmaddr_count(%struct.ifnet*) #1

declare dso_local i32 @i40e_aq_set_vsi_unicast_promiscuous(%struct.i40e_hw*, i32, i32, i32*, i32) #1

declare dso_local i32 @i40e_aq_set_vsi_multicast_promiscuous(%struct.i40e_hw*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
