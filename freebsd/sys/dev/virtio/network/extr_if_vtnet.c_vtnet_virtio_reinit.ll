; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/virtio/network/extr_if_vtnet.c_vtnet_virtio_reinit.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/virtio/network/extr_if_vtnet.c_vtnet_virtio_reinit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vtnet_softc = type { i32, %struct.ifnet*, i32 }
%struct.ifnet = type { i32, i32 }

@VIRTIO_NET_F_GUEST_CSUM = common dso_local global i32 0, align 4
@IFCAP_LRO = common dso_local global i32 0, align 4
@VTNET_LRO_FEATURES = common dso_local global i32 0, align 4
@IFCAP_VLAN_HWFILTER = common dso_local global i32 0, align 4
@VIRTIO_NET_F_CTRL_VLAN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"virtio reinit error %d\0A\00", align 1
@IFCAP_RXCSUM = common dso_local global i32 0, align 4
@IFCAP_RXCSUM_IPV6 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vtnet_softc*)* @vtnet_virtio_reinit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vtnet_virtio_reinit(%struct.vtnet_softc* %0) #0 {
  %2 = alloca %struct.vtnet_softc*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.ifnet*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.vtnet_softc* %0, %struct.vtnet_softc** %2, align 8
  %8 = load %struct.vtnet_softc*, %struct.vtnet_softc** %2, align 8
  %9 = getelementptr inbounds %struct.vtnet_softc, %struct.vtnet_softc* %8, i32 0, i32 2
  %10 = load i32, i32* %9, align 8
  store i32 %10, i32* %3, align 4
  %11 = load %struct.vtnet_softc*, %struct.vtnet_softc** %2, align 8
  %12 = getelementptr inbounds %struct.vtnet_softc, %struct.vtnet_softc* %11, i32 0, i32 1
  %13 = load %struct.ifnet*, %struct.ifnet** %12, align 8
  store %struct.ifnet* %13, %struct.ifnet** %4, align 8
  %14 = load %struct.vtnet_softc*, %struct.vtnet_softc** %2, align 8
  %15 = getelementptr inbounds %struct.vtnet_softc, %struct.vtnet_softc* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  store i32 %16, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %17 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %18 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* %6, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %37

23:                                               ; preds = %1
  %24 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %25 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* %6, align 4
  %28 = and i32 %26, %27
  %29 = load i32, i32* %6, align 4
  %30 = icmp ne i32 %28, %29
  br i1 %30, label %31, label %36

31:                                               ; preds = %23
  %32 = load i32, i32* @VIRTIO_NET_F_GUEST_CSUM, align 4
  %33 = xor i32 %32, -1
  %34 = load i32, i32* %5, align 4
  %35 = and i32 %34, %33
  store i32 %35, i32* %5, align 4
  br label %36

36:                                               ; preds = %31, %23
  br label %37

37:                                               ; preds = %36, %1
  %38 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %39 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @IFCAP_LRO, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %57

44:                                               ; preds = %37
  %45 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %46 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @IFCAP_LRO, align 4
  %49 = and i32 %47, %48
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %56

51:                                               ; preds = %44
  %52 = load i32, i32* @VTNET_LRO_FEATURES, align 4
  %53 = xor i32 %52, -1
  %54 = load i32, i32* %5, align 4
  %55 = and i32 %54, %53
  store i32 %55, i32* %5, align 4
  br label %56

56:                                               ; preds = %51, %44
  br label %57

57:                                               ; preds = %56, %37
  %58 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %59 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @IFCAP_VLAN_HWFILTER, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %77

64:                                               ; preds = %57
  %65 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %66 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* @IFCAP_VLAN_HWFILTER, align 4
  %69 = and i32 %67, %68
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %71, label %76

71:                                               ; preds = %64
  %72 = load i32, i32* @VIRTIO_NET_F_CTRL_VLAN, align 4
  %73 = xor i32 %72, -1
  %74 = load i32, i32* %5, align 4
  %75 = and i32 %74, %73
  store i32 %75, i32* %5, align 4
  br label %76

76:                                               ; preds = %71, %64
  br label %77

77:                                               ; preds = %76, %57
  %78 = load i32, i32* %3, align 4
  %79 = load i32, i32* %5, align 4
  %80 = call i32 @virtio_reinit(i32 %78, i32 %79)
  store i32 %80, i32* %7, align 4
  %81 = load i32, i32* %7, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %87

83:                                               ; preds = %77
  %84 = load i32, i32* %3, align 4
  %85 = load i32, i32* %7, align 4
  %86 = call i32 @device_printf(i32 %84, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %85)
  br label %87

87:                                               ; preds = %83, %77
  %88 = load i32, i32* %7, align 4
  ret i32 %88
}

declare dso_local i32 @virtio_reinit(i32, i32) #1

declare dso_local i32 @device_printf(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
