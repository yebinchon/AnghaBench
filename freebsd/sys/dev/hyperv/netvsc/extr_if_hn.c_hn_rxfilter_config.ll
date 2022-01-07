; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/hyperv/netvsc/extr_if_hn.c_hn_rxfilter_config.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/hyperv/netvsc/extr_if_hn.c_hn_rxfilter_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hn_softc = type { i32, %struct.ifnet* }
%struct.ifnet = type { i32, i32 }

@IFF_PROMISC = common dso_local global i32 0, align 4
@HN_FLAG_RXVF = common dso_local global i32 0, align 4
@NDIS_PACKET_TYPE_PROMISCUOUS = common dso_local global i32 0, align 4
@NDIS_PACKET_TYPE_DIRECTED = common dso_local global i32 0, align 4
@IFF_BROADCAST = common dso_local global i32 0, align 4
@NDIS_PACKET_TYPE_BROADCAST = common dso_local global i32 0, align 4
@IFF_ALLMULTI = common dso_local global i32 0, align 4
@NDIS_PACKET_TYPE_ALL_MULTICAST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hn_softc*)* @hn_rxfilter_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hn_rxfilter_config(%struct.hn_softc* %0) #0 {
  %2 = alloca %struct.hn_softc*, align 8
  %3 = alloca %struct.ifnet*, align 8
  %4 = alloca i32, align 4
  store %struct.hn_softc* %0, %struct.hn_softc** %2, align 8
  %5 = load %struct.hn_softc*, %struct.hn_softc** %2, align 8
  %6 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %5, i32 0, i32 1
  %7 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  store %struct.ifnet* %7, %struct.ifnet** %3, align 8
  %8 = load %struct.hn_softc*, %struct.hn_softc** %2, align 8
  %9 = call i32 @HN_LOCK_ASSERT(%struct.hn_softc* %8)
  %10 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %11 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @IFF_PROMISC, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %23, label %16

16:                                               ; preds = %1
  %17 = load %struct.hn_softc*, %struct.hn_softc** %2, align 8
  %18 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @HN_FLAG_RXVF, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %16, %1
  %24 = load i32, i32* @NDIS_PACKET_TYPE_PROMISCUOUS, align 4
  store i32 %24, i32* %4, align 4
  br label %54

25:                                               ; preds = %16
  %26 = load i32, i32* @NDIS_PACKET_TYPE_DIRECTED, align 4
  store i32 %26, i32* %4, align 4
  %27 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %28 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @IFF_BROADCAST, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %25
  %34 = load i32, i32* @NDIS_PACKET_TYPE_BROADCAST, align 4
  %35 = load i32, i32* %4, align 4
  %36 = or i32 %35, %34
  store i32 %36, i32* %4, align 4
  br label %37

37:                                               ; preds = %33, %25
  %38 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %39 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @IFF_ALLMULTI, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %49, label %44

44:                                               ; preds = %37
  %45 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %46 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %45, i32 0, i32 1
  %47 = call i32 @CK_STAILQ_EMPTY(i32* %46)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %53, label %49

49:                                               ; preds = %44, %37
  %50 = load i32, i32* @NDIS_PACKET_TYPE_ALL_MULTICAST, align 4
  %51 = load i32, i32* %4, align 4
  %52 = or i32 %51, %50
  store i32 %52, i32* %4, align 4
  br label %53

53:                                               ; preds = %49, %44
  br label %54

54:                                               ; preds = %53, %23
  %55 = load %struct.hn_softc*, %struct.hn_softc** %2, align 8
  %56 = load i32, i32* %4, align 4
  %57 = call i32 @hn_set_rxfilter(%struct.hn_softc* %55, i32 %56)
  ret i32 %57
}

declare dso_local i32 @HN_LOCK_ASSERT(%struct.hn_softc*) #1

declare dso_local i32 @CK_STAILQ_EMPTY(i32*) #1

declare dso_local i32 @hn_set_rxfilter(%struct.hn_softc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
