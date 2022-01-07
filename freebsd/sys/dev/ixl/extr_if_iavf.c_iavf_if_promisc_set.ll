; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_if_iavf.c_iavf_if_promisc_set.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_if_iavf.c_iavf_if_promisc_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iavf_sc = type { i32 }
%struct.ifnet = type { i32 }

@IFF_ALLMULTI = common dso_local global i32 0, align 4
@MAX_MULTICAST_ADDR = common dso_local global i64 0, align 8
@FLAG_VF_MULTICAST_PROMISC = common dso_local global i32 0, align 4
@IFF_PROMISC = common dso_local global i32 0, align 4
@FLAG_VF_UNICAST_PROMISC = common dso_local global i32 0, align 4
@IAVF_FLAG_AQ_CONFIGURE_PROMISC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @iavf_if_promisc_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iavf_if_promisc_set(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.iavf_sc*, align 8
  %6 = alloca %struct.ifnet*, align 8
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* %3, align 4
  %8 = call %struct.iavf_sc* @iflib_get_softc(i32 %7)
  store %struct.iavf_sc* %8, %struct.iavf_sc** %5, align 8
  %9 = load i32, i32* %3, align 4
  %10 = call %struct.ifnet* @iflib_get_ifp(i32 %9)
  store %struct.ifnet* %10, %struct.ifnet** %6, align 8
  %11 = load %struct.iavf_sc*, %struct.iavf_sc** %5, align 8
  %12 = getelementptr inbounds %struct.iavf_sc, %struct.iavf_sc* %11, i32 0, i32 0
  store i32 0, i32* %12, align 4
  %13 = load i32, i32* %4, align 4
  %14 = load i32, i32* @IFF_ALLMULTI, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %22, label %17

17:                                               ; preds = %2
  %18 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %19 = call i64 @if_llmaddr_count(%struct.ifnet* %18)
  %20 = load i64, i64* @MAX_MULTICAST_ADDR, align 8
  %21 = icmp sge i64 %19, %20
  br i1 %21, label %22, label %28

22:                                               ; preds = %17, %2
  %23 = load i32, i32* @FLAG_VF_MULTICAST_PROMISC, align 4
  %24 = load %struct.iavf_sc*, %struct.iavf_sc** %5, align 8
  %25 = getelementptr inbounds %struct.iavf_sc, %struct.iavf_sc* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = or i32 %26, %23
  store i32 %27, i32* %25, align 4
  br label %28

28:                                               ; preds = %22, %17
  %29 = load i32, i32* %4, align 4
  %30 = load i32, i32* @IFF_PROMISC, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %39

33:                                               ; preds = %28
  %34 = load i32, i32* @FLAG_VF_UNICAST_PROMISC, align 4
  %35 = load %struct.iavf_sc*, %struct.iavf_sc** %5, align 8
  %36 = getelementptr inbounds %struct.iavf_sc, %struct.iavf_sc* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = or i32 %37, %34
  store i32 %38, i32* %36, align 4
  br label %39

39:                                               ; preds = %33, %28
  %40 = load %struct.iavf_sc*, %struct.iavf_sc** %5, align 8
  %41 = load i32, i32* @IAVF_FLAG_AQ_CONFIGURE_PROMISC, align 4
  %42 = call i32 @iavf_send_vc_msg(%struct.iavf_sc* %40, i32 %41)
  ret i32 0
}

declare dso_local %struct.iavf_sc* @iflib_get_softc(i32) #1

declare dso_local %struct.ifnet* @iflib_get_ifp(i32) #1

declare dso_local i64 @if_llmaddr_count(%struct.ifnet*) #1

declare dso_local i32 @iavf_send_vc_msg(%struct.iavf_sc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
