; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/xen/netfront/extr_netfront.c_create_netdev.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/xen/netfront/extr_netfront.c_create_netdev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netfront_info = type { i32, %struct.ifnet*, i32, i32, i32 }
%struct.ifnet = type { i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, %struct.netfront_info* }

@.str = private unnamed_addr constant [5 x i8] c"xnsc\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"netfront softc lock\00", align 1
@MTX_DEF = common dso_local global i32 0, align 4
@xn_ifmedia_upd = common dso_local global i32 0, align 4
@xn_ifmedia_sts = common dso_local global i32 0, align 4
@IFM_ETHER = common dso_local global i32 0, align 4
@IFM_MANUAL = common dso_local global i32 0, align 4
@IFT_ETHER = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [3 x i8] c"xn\00", align 1
@IFF_BROADCAST = common dso_local global i32 0, align 4
@IFF_SIMPLEX = common dso_local global i32 0, align 4
@IFF_MULTICAST = common dso_local global i32 0, align 4
@xn_ioctl = common dso_local global i32 0, align 4
@xn_txq_mq_start = common dso_local global i32 0, align 4
@xn_qflush = common dso_local global i32 0, align 4
@xn_ifinit = common dso_local global i32 0, align 4
@XN_CSUM_FEATURES = common dso_local global i32 0, align 4
@IFCAP_HWCSUM = common dso_local global i32 0, align 4
@IFCAP_TSO4 = common dso_local global i32 0, align 4
@IFCAP_LRO = common dso_local global i32 0, align 4
@ETHER_HDR_LEN = common dso_local global i64 0, align 8
@ETHER_VLAN_ENCAP_LEN = common dso_local global i64 0, align 8
@MAX_TX_REQ_FRAGS = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [40 x i8] c"Error path with no error code specified\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @create_netdev(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.netfront_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ifnet*, align 8
  store i32 %0, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  %8 = call %struct.netfront_info* @device_get_softc(i32 %7)
  store %struct.netfront_info* %8, %struct.netfront_info** %4, align 8
  %9 = load i32, i32* %3, align 4
  %10 = load %struct.netfront_info*, %struct.netfront_info** %4, align 8
  %11 = getelementptr inbounds %struct.netfront_info, %struct.netfront_info* %10, i32 0, i32 4
  store i32 %9, i32* %11, align 8
  %12 = load %struct.netfront_info*, %struct.netfront_info** %4, align 8
  %13 = getelementptr inbounds %struct.netfront_info, %struct.netfront_info* %12, i32 0, i32 3
  %14 = load i32, i32* @MTX_DEF, align 4
  %15 = call i32 @mtx_init(i32* %13, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 %14)
  %16 = load %struct.netfront_info*, %struct.netfront_info** %4, align 8
  %17 = getelementptr inbounds %struct.netfront_info, %struct.netfront_info* %16, i32 0, i32 2
  %18 = load i32, i32* @xn_ifmedia_upd, align 4
  %19 = load i32, i32* @xn_ifmedia_sts, align 4
  %20 = call i32 @ifmedia_init(i32* %17, i32 0, i32 %18, i32 %19)
  %21 = load %struct.netfront_info*, %struct.netfront_info** %4, align 8
  %22 = getelementptr inbounds %struct.netfront_info, %struct.netfront_info* %21, i32 0, i32 2
  %23 = load i32, i32* @IFM_ETHER, align 4
  %24 = load i32, i32* @IFM_MANUAL, align 4
  %25 = or i32 %23, %24
  %26 = call i32 @ifmedia_add(i32* %22, i32 %25, i32 0, i32* null)
  %27 = load %struct.netfront_info*, %struct.netfront_info** %4, align 8
  %28 = getelementptr inbounds %struct.netfront_info, %struct.netfront_info* %27, i32 0, i32 2
  %29 = load i32, i32* @IFM_ETHER, align 4
  %30 = load i32, i32* @IFM_MANUAL, align 4
  %31 = or i32 %29, %30
  %32 = call i32 @ifmedia_set(i32* %28, i32 %31)
  %33 = load i32, i32* %3, align 4
  %34 = load %struct.netfront_info*, %struct.netfront_info** %4, align 8
  %35 = getelementptr inbounds %struct.netfront_info, %struct.netfront_info* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @xen_net_read_mac(i32 %33, i32 %36)
  store i32 %37, i32* %5, align 4
  %38 = load i32, i32* %5, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %1
  br label %103

41:                                               ; preds = %1
  %42 = load i32, i32* @IFT_ETHER, align 4
  %43 = call %struct.ifnet* @if_alloc(i32 %42)
  %44 = load %struct.netfront_info*, %struct.netfront_info** %4, align 8
  %45 = getelementptr inbounds %struct.netfront_info, %struct.netfront_info* %44, i32 0, i32 1
  store %struct.ifnet* %43, %struct.ifnet** %45, align 8
  store %struct.ifnet* %43, %struct.ifnet** %6, align 8
  %46 = load %struct.netfront_info*, %struct.netfront_info** %4, align 8
  %47 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %48 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %47, i32 0, i32 11
  store %struct.netfront_info* %46, %struct.netfront_info** %48, align 8
  %49 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %50 = load i32, i32* %3, align 4
  %51 = call i32 @device_get_unit(i32 %50)
  %52 = call i32 @if_initname(%struct.ifnet* %49, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 %51)
  %53 = load i32, i32* @IFF_BROADCAST, align 4
  %54 = load i32, i32* @IFF_SIMPLEX, align 4
  %55 = or i32 %53, %54
  %56 = load i32, i32* @IFF_MULTICAST, align 4
  %57 = or i32 %55, %56
  %58 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %59 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %58, i32 0, i32 0
  store i32 %57, i32* %59, align 8
  %60 = load i32, i32* @xn_ioctl, align 4
  %61 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %62 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %61, i32 0, i32 10
  store i32 %60, i32* %62, align 8
  %63 = load i32, i32* @xn_txq_mq_start, align 4
  %64 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %65 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %64, i32 0, i32 9
  store i32 %63, i32* %65, align 4
  %66 = load i32, i32* @xn_qflush, align 4
  %67 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %68 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %67, i32 0, i32 8
  store i32 %66, i32* %68, align 8
  %69 = load i32, i32* @xn_ifinit, align 4
  %70 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %71 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %70, i32 0, i32 7
  store i32 %69, i32* %71, align 4
  %72 = load i32, i32* @XN_CSUM_FEATURES, align 4
  %73 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %74 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %73, i32 0, i32 6
  store i32 %72, i32* %74, align 8
  %75 = load i32, i32* @IFCAP_HWCSUM, align 4
  %76 = load i32, i32* @IFCAP_TSO4, align 4
  %77 = or i32 %75, %76
  %78 = load i32, i32* @IFCAP_LRO, align 4
  %79 = or i32 %77, %78
  %80 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %81 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %80, i32 0, i32 2
  store i32 %79, i32* %81, align 8
  %82 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %83 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %82, i32 0, i32 1
  store i32 %79, i32* %83, align 4
  %84 = load i64, i64* @ETHER_HDR_LEN, align 8
  %85 = load i64, i64* @ETHER_VLAN_ENCAP_LEN, align 8
  %86 = add nsw i64 %84, %85
  %87 = sub nsw i64 65536, %86
  %88 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %89 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %88, i32 0, i32 5
  store i64 %87, i64* %89, align 8
  %90 = load i32, i32* @MAX_TX_REQ_FRAGS, align 4
  %91 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %92 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %91, i32 0, i32 4
  store i32 %90, i32* %92, align 8
  %93 = load i32, i32* @PAGE_SIZE, align 4
  %94 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %95 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %94, i32 0, i32 3
  store i32 %93, i32* %95, align 4
  %96 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %97 = load %struct.netfront_info*, %struct.netfront_info** %4, align 8
  %98 = getelementptr inbounds %struct.netfront_info, %struct.netfront_info* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = call i32 @ether_ifattach(%struct.ifnet* %96, i32 %99)
  %101 = load %struct.netfront_info*, %struct.netfront_info** %4, align 8
  %102 = call i32 @netfront_carrier_off(%struct.netfront_info* %101)
  store i32 0, i32* %2, align 4
  br label %109

103:                                              ; preds = %40
  %104 = load i32, i32* %5, align 4
  %105 = icmp ne i32 %104, 0
  %106 = zext i1 %105 to i32
  %107 = call i32 @KASSERT(i32 %106, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0))
  %108 = load i32, i32* %5, align 4
  store i32 %108, i32* %2, align 4
  br label %109

109:                                              ; preds = %103, %41
  %110 = load i32, i32* %2, align 4
  ret i32 %110
}

declare dso_local %struct.netfront_info* @device_get_softc(i32) #1

declare dso_local i32 @mtx_init(i32*, i8*, i8*, i32) #1

declare dso_local i32 @ifmedia_init(i32*, i32, i32, i32) #1

declare dso_local i32 @ifmedia_add(i32*, i32, i32, i32*) #1

declare dso_local i32 @ifmedia_set(i32*, i32) #1

declare dso_local i32 @xen_net_read_mac(i32, i32) #1

declare dso_local %struct.ifnet* @if_alloc(i32) #1

declare dso_local i32 @if_initname(%struct.ifnet*, i8*, i32) #1

declare dso_local i32 @device_get_unit(i32) #1

declare dso_local i32 @ether_ifattach(%struct.ifnet*, i32) #1

declare dso_local i32 @netfront_carrier_off(%struct.netfront_info*) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
