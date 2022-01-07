; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net/extr_if_lagg.c_lagg_clone_create.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net/extr_if_lagg.c_lagg_clone_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.if_clone = type { i32 }
%struct.lagg_softc = type { i32, i8*, i8*, i32, i32, i32, i32, %struct.ifnet* }
%struct.ifnet = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.lagg_softc* }

@lagg_clone_create.eaddr = internal constant [6 x i32] zeroinitializer, align 16
@M_LAGG = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@IFT_ETHER = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4
@V_def_use_flowid = common dso_local global i64 0, align 8
@LAGG_OPT_USE_FLOWID = common dso_local global i32 0, align 4
@V_def_use_numa = common dso_local global i64 0, align 8
@LAGG_OPT_USE_NUMA = common dso_local global i32 0, align 4
@V_def_flowid_shift = common dso_local global i32 0, align 4
@MBUF_HASHFLAG_L2 = common dso_local global i32 0, align 4
@MBUF_HASHFLAG_L3 = common dso_local global i32 0, align 4
@MBUF_HASHFLAG_L4 = common dso_local global i32 0, align 4
@LAGG_PROTO_DEFAULT = common dso_local global i32 0, align 4
@lagg_media_change = common dso_local global i32 0, align 4
@lagg_media_status = common dso_local global i32 0, align 4
@IFM_ETHER = common dso_local global i32 0, align 4
@IFM_AUTO = common dso_local global i32 0, align 4
@laggname = common dso_local global i32 0, align 4
@lagg_transmit = common dso_local global i32 0, align 4
@lagg_qflush = common dso_local global i32 0, align 4
@lagg_init = common dso_local global i32 0, align 4
@lagg_ioctl = common dso_local global i32 0, align 4
@lagg_get_counter = common dso_local global i32 0, align 4
@IFF_SIMPLEX = common dso_local global i32 0, align 4
@IFF_BROADCAST = common dso_local global i32 0, align 4
@IFF_MULTICAST = common dso_local global i32 0, align 4
@IFCAP_HWSTATS = common dso_local global i32 0, align 4
@vlan_config = common dso_local global i32 0, align 4
@lagg_register_vlan = common dso_local global i32 0, align 4
@EVENTHANDLER_PRI_FIRST = common dso_local global i32 0, align 4
@vlan_unconfig = common dso_local global i32 0, align 4
@lagg_unregister_vlan = common dso_local global i32 0, align 4
@V_lagg_list = common dso_local global i32 0, align 4
@sc_entries = common dso_local global i32 0, align 4
@lagg_ratelimit_query = common dso_local global i32 0, align 4
@lagg_snd_tag_alloc = common dso_local global i32 0, align 4
@lagg_snd_tag_free = common dso_local global i32 0, align 4
@lagg_snd_tag_modify = common dso_local global i32 0, align 4
@lagg_snd_tag_query = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.if_clone*, i32, i32)* @lagg_clone_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lagg_clone_create(%struct.if_clone* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.if_clone*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.lagg_softc*, align 8
  %9 = alloca %struct.ifnet*, align 8
  store %struct.if_clone* %0, %struct.if_clone** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load i32, i32* @M_LAGG, align 4
  %11 = load i32, i32* @M_WAITOK, align 4
  %12 = load i32, i32* @M_ZERO, align 4
  %13 = or i32 %11, %12
  %14 = call %struct.lagg_softc* @malloc(i32 48, i32 %10, i32 %13)
  store %struct.lagg_softc* %14, %struct.lagg_softc** %8, align 8
  %15 = load i32, i32* @IFT_ETHER, align 4
  %16 = call %struct.ifnet* @if_alloc(i32 %15)
  %17 = load %struct.lagg_softc*, %struct.lagg_softc** %8, align 8
  %18 = getelementptr inbounds %struct.lagg_softc, %struct.lagg_softc* %17, i32 0, i32 7
  store %struct.ifnet* %16, %struct.ifnet** %18, align 8
  store %struct.ifnet* %16, %struct.ifnet** %9, align 8
  %19 = load %struct.ifnet*, %struct.ifnet** %9, align 8
  %20 = icmp eq %struct.ifnet* %19, null
  br i1 %20, label %21, label %26

21:                                               ; preds = %3
  %22 = load %struct.lagg_softc*, %struct.lagg_softc** %8, align 8
  %23 = load i32, i32* @M_LAGG, align 4
  %24 = call i32 @free(%struct.lagg_softc* %22, i32 %23)
  %25 = load i32, i32* @ENOSPC, align 4
  store i32 %25, i32* %4, align 4
  br label %139

26:                                               ; preds = %3
  %27 = load %struct.lagg_softc*, %struct.lagg_softc** %8, align 8
  %28 = call i32 @LAGG_SX_INIT(%struct.lagg_softc* %27)
  %29 = load %struct.lagg_softc*, %struct.lagg_softc** %8, align 8
  %30 = call i32 @LAGG_XLOCK(%struct.lagg_softc* %29)
  %31 = load i64, i64* @V_def_use_flowid, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %39

33:                                               ; preds = %26
  %34 = load i32, i32* @LAGG_OPT_USE_FLOWID, align 4
  %35 = load %struct.lagg_softc*, %struct.lagg_softc** %8, align 8
  %36 = getelementptr inbounds %struct.lagg_softc, %struct.lagg_softc* %35, i32 0, i32 6
  %37 = load i32, i32* %36, align 4
  %38 = or i32 %37, %34
  store i32 %38, i32* %36, align 4
  br label %39

39:                                               ; preds = %33, %26
  %40 = load i64, i64* @V_def_use_numa, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %48

42:                                               ; preds = %39
  %43 = load i32, i32* @LAGG_OPT_USE_NUMA, align 4
  %44 = load %struct.lagg_softc*, %struct.lagg_softc** %8, align 8
  %45 = getelementptr inbounds %struct.lagg_softc, %struct.lagg_softc* %44, i32 0, i32 6
  %46 = load i32, i32* %45, align 4
  %47 = or i32 %46, %43
  store i32 %47, i32* %45, align 4
  br label %48

48:                                               ; preds = %42, %39
  %49 = load i32, i32* @V_def_flowid_shift, align 4
  %50 = load %struct.lagg_softc*, %struct.lagg_softc** %8, align 8
  %51 = getelementptr inbounds %struct.lagg_softc, %struct.lagg_softc* %50, i32 0, i32 5
  store i32 %49, i32* %51, align 8
  %52 = load i32, i32* @MBUF_HASHFLAG_L2, align 4
  %53 = load i32, i32* @MBUF_HASHFLAG_L3, align 4
  %54 = or i32 %52, %53
  %55 = load i32, i32* @MBUF_HASHFLAG_L4, align 4
  %56 = or i32 %54, %55
  %57 = load %struct.lagg_softc*, %struct.lagg_softc** %8, align 8
  %58 = getelementptr inbounds %struct.lagg_softc, %struct.lagg_softc* %57, i32 0, i32 0
  store i32 %56, i32* %58, align 8
  %59 = load %struct.lagg_softc*, %struct.lagg_softc** %8, align 8
  %60 = load i32, i32* @LAGG_PROTO_DEFAULT, align 4
  %61 = call i32 @lagg_proto_attach(%struct.lagg_softc* %59, i32 %60)
  %62 = load %struct.lagg_softc*, %struct.lagg_softc** %8, align 8
  %63 = getelementptr inbounds %struct.lagg_softc, %struct.lagg_softc* %62, i32 0, i32 4
  %64 = call i32 @CK_SLIST_INIT(i32* %63)
  %65 = load %struct.lagg_softc*, %struct.lagg_softc** %8, align 8
  %66 = getelementptr inbounds %struct.lagg_softc, %struct.lagg_softc* %65, i32 0, i32 3
  %67 = load i32, i32* @lagg_media_change, align 4
  %68 = load i32, i32* @lagg_media_status, align 4
  %69 = call i32 @ifmedia_init(i32* %66, i32 0, i32 %67, i32 %68)
  %70 = load %struct.lagg_softc*, %struct.lagg_softc** %8, align 8
  %71 = getelementptr inbounds %struct.lagg_softc, %struct.lagg_softc* %70, i32 0, i32 3
  %72 = load i32, i32* @IFM_ETHER, align 4
  %73 = load i32, i32* @IFM_AUTO, align 4
  %74 = or i32 %72, %73
  %75 = call i32 @ifmedia_add(i32* %71, i32 %74, i32 0, i32* null)
  %76 = load %struct.lagg_softc*, %struct.lagg_softc** %8, align 8
  %77 = getelementptr inbounds %struct.lagg_softc, %struct.lagg_softc* %76, i32 0, i32 3
  %78 = load i32, i32* @IFM_ETHER, align 4
  %79 = load i32, i32* @IFM_AUTO, align 4
  %80 = or i32 %78, %79
  %81 = call i32 @ifmedia_set(i32* %77, i32 %80)
  %82 = load %struct.ifnet*, %struct.ifnet** %9, align 8
  %83 = load i32, i32* @laggname, align 4
  %84 = load i32, i32* %6, align 4
  %85 = call i32 @if_initname(%struct.ifnet* %82, i32 %83, i32 %84)
  %86 = load %struct.lagg_softc*, %struct.lagg_softc** %8, align 8
  %87 = load %struct.ifnet*, %struct.ifnet** %9, align 8
  %88 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %87, i32 0, i32 13
  store %struct.lagg_softc* %86, %struct.lagg_softc** %88, align 8
  %89 = load i32, i32* @lagg_transmit, align 4
  %90 = load %struct.ifnet*, %struct.ifnet** %9, align 8
  %91 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %90, i32 0, i32 12
  store i32 %89, i32* %91, align 8
  %92 = load i32, i32* @lagg_qflush, align 4
  %93 = load %struct.ifnet*, %struct.ifnet** %9, align 8
  %94 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %93, i32 0, i32 11
  store i32 %92, i32* %94, align 4
  %95 = load i32, i32* @lagg_init, align 4
  %96 = load %struct.ifnet*, %struct.ifnet** %9, align 8
  %97 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %96, i32 0, i32 10
  store i32 %95, i32* %97, align 8
  %98 = load i32, i32* @lagg_ioctl, align 4
  %99 = load %struct.ifnet*, %struct.ifnet** %9, align 8
  %100 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %99, i32 0, i32 9
  store i32 %98, i32* %100, align 4
  %101 = load i32, i32* @lagg_get_counter, align 4
  %102 = load %struct.ifnet*, %struct.ifnet** %9, align 8
  %103 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %102, i32 0, i32 8
  store i32 %101, i32* %103, align 8
  %104 = load i32, i32* @IFF_SIMPLEX, align 4
  %105 = load i32, i32* @IFF_BROADCAST, align 4
  %106 = or i32 %104, %105
  %107 = load i32, i32* @IFF_MULTICAST, align 4
  %108 = or i32 %106, %107
  %109 = load %struct.ifnet*, %struct.ifnet** %9, align 8
  %110 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %109, i32 0, i32 0
  store i32 %108, i32* %110, align 8
  %111 = load i32, i32* @IFCAP_HWSTATS, align 4
  %112 = load %struct.ifnet*, %struct.ifnet** %9, align 8
  %113 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %112, i32 0, i32 1
  store i32 %111, i32* %113, align 4
  %114 = load %struct.ifnet*, %struct.ifnet** %9, align 8
  %115 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %114, i32 0, i32 2
  store i32 %111, i32* %115, align 8
  %116 = load %struct.ifnet*, %struct.ifnet** %9, align 8
  %117 = call i32 @ether_ifattach(%struct.ifnet* %116, i32* getelementptr inbounds ([6 x i32], [6 x i32]* @lagg_clone_create.eaddr, i64 0, i64 0))
  %118 = load i32, i32* @vlan_config, align 4
  %119 = load i32, i32* @lagg_register_vlan, align 4
  %120 = load %struct.lagg_softc*, %struct.lagg_softc** %8, align 8
  %121 = load i32, i32* @EVENTHANDLER_PRI_FIRST, align 4
  %122 = call i8* @EVENTHANDLER_REGISTER(i32 %118, i32 %119, %struct.lagg_softc* %120, i32 %121)
  %123 = load %struct.lagg_softc*, %struct.lagg_softc** %8, align 8
  %124 = getelementptr inbounds %struct.lagg_softc, %struct.lagg_softc* %123, i32 0, i32 2
  store i8* %122, i8** %124, align 8
  %125 = load i32, i32* @vlan_unconfig, align 4
  %126 = load i32, i32* @lagg_unregister_vlan, align 4
  %127 = load %struct.lagg_softc*, %struct.lagg_softc** %8, align 8
  %128 = load i32, i32* @EVENTHANDLER_PRI_FIRST, align 4
  %129 = call i8* @EVENTHANDLER_REGISTER(i32 %125, i32 %126, %struct.lagg_softc* %127, i32 %128)
  %130 = load %struct.lagg_softc*, %struct.lagg_softc** %8, align 8
  %131 = getelementptr inbounds %struct.lagg_softc, %struct.lagg_softc* %130, i32 0, i32 1
  store i8* %129, i8** %131, align 8
  %132 = call i32 (...) @LAGG_LIST_LOCK()
  %133 = load %struct.lagg_softc*, %struct.lagg_softc** %8, align 8
  %134 = load i32, i32* @sc_entries, align 4
  %135 = call i32 @SLIST_INSERT_HEAD(i32* @V_lagg_list, %struct.lagg_softc* %133, i32 %134)
  %136 = call i32 (...) @LAGG_LIST_UNLOCK()
  %137 = load %struct.lagg_softc*, %struct.lagg_softc** %8, align 8
  %138 = call i32 @LAGG_XUNLOCK(%struct.lagg_softc* %137)
  store i32 0, i32* %4, align 4
  br label %139

139:                                              ; preds = %48, %21
  %140 = load i32, i32* %4, align 4
  ret i32 %140
}

declare dso_local %struct.lagg_softc* @malloc(i32, i32, i32) #1

declare dso_local %struct.ifnet* @if_alloc(i32) #1

declare dso_local i32 @free(%struct.lagg_softc*, i32) #1

declare dso_local i32 @LAGG_SX_INIT(%struct.lagg_softc*) #1

declare dso_local i32 @LAGG_XLOCK(%struct.lagg_softc*) #1

declare dso_local i32 @lagg_proto_attach(%struct.lagg_softc*, i32) #1

declare dso_local i32 @CK_SLIST_INIT(i32*) #1

declare dso_local i32 @ifmedia_init(i32*, i32, i32, i32) #1

declare dso_local i32 @ifmedia_add(i32*, i32, i32, i32*) #1

declare dso_local i32 @ifmedia_set(i32*, i32) #1

declare dso_local i32 @if_initname(%struct.ifnet*, i32, i32) #1

declare dso_local i32 @ether_ifattach(%struct.ifnet*, i32*) #1

declare dso_local i8* @EVENTHANDLER_REGISTER(i32, i32, %struct.lagg_softc*, i32) #1

declare dso_local i32 @LAGG_LIST_LOCK(...) #1

declare dso_local i32 @SLIST_INSERT_HEAD(i32*, %struct.lagg_softc*, i32) #1

declare dso_local i32 @LAGG_LIST_UNLOCK(...) #1

declare dso_local i32 @LAGG_XUNLOCK(%struct.lagg_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
