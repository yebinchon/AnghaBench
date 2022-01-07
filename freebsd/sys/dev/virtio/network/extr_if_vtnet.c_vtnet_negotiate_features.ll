; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/virtio/network/extr_if_vtnet.c_vtnet_negotiate_features.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/virtio/network/extr_if_vtnet.c_vtnet_negotiate_features.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vtnet_softc = type { i32, i8*, i32 }

@.str = private unnamed_addr constant [13 x i8] c"csum_disable\00", align 1
@vtnet_csum_disable = common dso_local global i32 0, align 4
@VIRTIO_NET_F_CSUM = common dso_local global i32 0, align 4
@VIRTIO_NET_F_GUEST_CSUM = common dso_local global i32 0, align 4
@VTNET_TSO_FEATURES = common dso_local global i32 0, align 4
@VTNET_LRO_FEATURES = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [12 x i8] c"tso_disable\00", align 1
@vtnet_tso_disable = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [12 x i8] c"lro_disable\00", align 1
@vtnet_lro_disable = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [11 x i8] c"mq_disable\00", align 1
@vtnet_mq_disable = common dso_local global i32 0, align 4
@VIRTIO_NET_F_MQ = common dso_local global i32 0, align 4
@VTNET_FEATURES = common dso_local global i32 0, align 4
@VIRTIO_NET_F_MRG_RXBUF = common dso_local global i32 0, align 4
@VIRTIO_RING_F_INDIRECT_DESC = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [84 x i8] c"LRO disabled due to both mergeable buffers and indirect descriptors not negotiated\0A\00", align 1
@VTNET_FLAG_LRO_NOMRG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vtnet_softc*)* @vtnet_negotiate_features to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vtnet_negotiate_features(%struct.vtnet_softc* %0) #0 {
  %2 = alloca %struct.vtnet_softc*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.vtnet_softc* %0, %struct.vtnet_softc** %2, align 8
  %6 = load %struct.vtnet_softc*, %struct.vtnet_softc** %2, align 8
  %7 = getelementptr inbounds %struct.vtnet_softc, %struct.vtnet_softc* %6, i32 0, i32 2
  %8 = load i32, i32* %7, align 8
  store i32 %8, i32* %3, align 4
  store i32 0, i32* %4, align 4
  %9 = load %struct.vtnet_softc*, %struct.vtnet_softc** %2, align 8
  %10 = load i32, i32* @vtnet_csum_disable, align 4
  %11 = call i64 @vtnet_tunable_int(%struct.vtnet_softc* %9, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %24

13:                                               ; preds = %1
  %14 = load i32, i32* @VIRTIO_NET_F_CSUM, align 4
  %15 = load i32, i32* @VIRTIO_NET_F_GUEST_CSUM, align 4
  %16 = or i32 %14, %15
  %17 = load i32, i32* %4, align 4
  %18 = or i32 %17, %16
  store i32 %18, i32* %4, align 4
  %19 = load i32, i32* @VTNET_TSO_FEATURES, align 4
  %20 = load i32, i32* @VTNET_LRO_FEATURES, align 4
  %21 = or i32 %19, %20
  %22 = load i32, i32* %4, align 4
  %23 = or i32 %22, %21
  store i32 %23, i32* %4, align 4
  br label %24

24:                                               ; preds = %13, %1
  %25 = load %struct.vtnet_softc*, %struct.vtnet_softc** %2, align 8
  %26 = load i32, i32* @vtnet_tso_disable, align 4
  %27 = call i64 @vtnet_tunable_int(%struct.vtnet_softc* %25, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %24
  %30 = load i32, i32* @VTNET_TSO_FEATURES, align 4
  %31 = load i32, i32* %4, align 4
  %32 = or i32 %31, %30
  store i32 %32, i32* %4, align 4
  br label %33

33:                                               ; preds = %29, %24
  %34 = load %struct.vtnet_softc*, %struct.vtnet_softc** %2, align 8
  %35 = load i32, i32* @vtnet_lro_disable, align 4
  %36 = call i64 @vtnet_tunable_int(%struct.vtnet_softc* %34, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %33
  %39 = load i32, i32* @VTNET_LRO_FEATURES, align 4
  %40 = load i32, i32* %4, align 4
  %41 = or i32 %40, %39
  store i32 %41, i32* %4, align 4
  br label %42

42:                                               ; preds = %38, %33
  %43 = load %struct.vtnet_softc*, %struct.vtnet_softc** %2, align 8
  %44 = load i32, i32* @vtnet_mq_disable, align 4
  %45 = call i64 @vtnet_tunable_int(%struct.vtnet_softc* %43, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %42
  %48 = load i32, i32* @VIRTIO_NET_F_MQ, align 4
  %49 = load i32, i32* %4, align 4
  %50 = or i32 %49, %48
  store i32 %50, i32* %4, align 4
  br label %51

51:                                               ; preds = %47, %42
  %52 = load i32, i32* @VTNET_FEATURES, align 4
  %53 = load i32, i32* %4, align 4
  %54 = xor i32 %53, -1
  %55 = and i32 %52, %54
  store i32 %55, i32* %5, align 4
  %56 = load i32, i32* %3, align 4
  %57 = load i32, i32* %5, align 4
  %58 = call i8* @virtio_negotiate_features(i32 %56, i32 %57)
  %59 = load %struct.vtnet_softc*, %struct.vtnet_softc** %2, align 8
  %60 = getelementptr inbounds %struct.vtnet_softc, %struct.vtnet_softc* %59, i32 0, i32 1
  store i8* %58, i8** %60, align 8
  %61 = load i32, i32* %3, align 4
  %62 = load i32, i32* @VTNET_LRO_FEATURES, align 4
  %63 = call i64 @virtio_with_feature(i32 %61, i32 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %94

65:                                               ; preds = %51
  %66 = load i32, i32* %3, align 4
  %67 = load i32, i32* @VIRTIO_NET_F_MRG_RXBUF, align 4
  %68 = call i64 @virtio_with_feature(i32 %66, i32 %67)
  %69 = icmp eq i64 %68, 0
  br i1 %69, label %70, label %94

70:                                               ; preds = %65
  %71 = load i32, i32* %3, align 4
  %72 = load i32, i32* @VIRTIO_RING_F_INDIRECT_DESC, align 4
  %73 = call i64 @virtio_with_feature(i32 %71, i32 %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %87, label %75

75:                                               ; preds = %70
  %76 = load i32, i32* %3, align 4
  %77 = call i32 @device_printf(i32 %76, i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str.4, i64 0, i64 0))
  %78 = load i32, i32* @VTNET_LRO_FEATURES, align 4
  %79 = xor i32 %78, -1
  %80 = load i32, i32* %5, align 4
  %81 = and i32 %80, %79
  store i32 %81, i32* %5, align 4
  %82 = load i32, i32* %3, align 4
  %83 = load i32, i32* %5, align 4
  %84 = call i8* @virtio_negotiate_features(i32 %82, i32 %83)
  %85 = load %struct.vtnet_softc*, %struct.vtnet_softc** %2, align 8
  %86 = getelementptr inbounds %struct.vtnet_softc, %struct.vtnet_softc* %85, i32 0, i32 1
  store i8* %84, i8** %86, align 8
  br label %93

87:                                               ; preds = %70
  %88 = load i32, i32* @VTNET_FLAG_LRO_NOMRG, align 4
  %89 = load %struct.vtnet_softc*, %struct.vtnet_softc** %2, align 8
  %90 = getelementptr inbounds %struct.vtnet_softc, %struct.vtnet_softc* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = or i32 %91, %88
  store i32 %92, i32* %90, align 8
  br label %93

93:                                               ; preds = %87, %75
  br label %94

94:                                               ; preds = %93, %65, %51
  ret void
}

declare dso_local i64 @vtnet_tunable_int(%struct.vtnet_softc*, i8*, i32) #1

declare dso_local i8* @virtio_negotiate_features(i32, i32) #1

declare dso_local i64 @virtio_with_feature(i32, i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
