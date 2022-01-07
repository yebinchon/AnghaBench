; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/extr_t4_main.c_cxgbe_vi_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/extr_t4_main.c_cxgbe_vi_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vi_info = type { i32, i64, i64, i64, i64, i32, i32, i32, %struct.TYPE_2__*, %struct.ifnet*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.ifnet = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.vi_info* }
%struct.sbuf = type { i32 }

@IFT_ETHER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"Cannot allocate ifnet\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@IFF_BROADCAST = common dso_local global i32 0, align 4
@IFF_SIMPLEX = common dso_local global i32 0, align 4
@IFF_MULTICAST = common dso_local global i32 0, align 4
@cxgbe_init = common dso_local global i32 0, align 4
@cxgbe_ioctl = common dso_local global i32 0, align 4
@cxgbe_transmit = common dso_local global i32 0, align 4
@cxgbe_qflush = common dso_local global i32 0, align 4
@cxgbe_get_counter = common dso_local global i32 0, align 4
@T4_CAP = common dso_local global i32 0, align 4
@T4_CAP_ENABLE = common dso_local global i32 0, align 4
@CSUM_TCP = common dso_local global i32 0, align 4
@CSUM_UDP = common dso_local global i32 0, align 4
@CSUM_IP = common dso_local global i32 0, align 4
@CSUM_TSO = common dso_local global i32 0, align 4
@CSUM_UDP_IPV6 = common dso_local global i32 0, align 4
@CSUM_TCP_IPV6 = common dso_local global i32 0, align 4
@IP_MAXPACKET = common dso_local global i32 0, align 4
@TX_SGL_SEGS_TSO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"%d txq, %d rxq (NIC)\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@IFCAP_NETMAP = common dso_local global i32 0, align 4
@TX_SGL_SEGS_EO_TSO = common dso_local global i32 0, align 4
@cxgbe_ratelimit_query = common dso_local global i32 0, align 4
@cxgbe_snd_tag_alloc = common dso_local global i32 0, align 4
@cxgbe_snd_tag_free = common dso_local global i32 0, align 4
@cxgbe_snd_tag_modify = common dso_local global i32 0, align 4
@cxgbe_snd_tag_query = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.vi_info*)* @cxgbe_vi_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cxgbe_vi_attach(i32 %0, %struct.vi_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.vi_info*, align 8
  %6 = alloca %struct.ifnet*, align 8
  %7 = alloca %struct.sbuf*, align 8
  store i32 %0, i32* %4, align 4
  store %struct.vi_info* %1, %struct.vi_info** %5, align 8
  %8 = load %struct.vi_info*, %struct.vi_info** %5, align 8
  %9 = getelementptr inbounds %struct.vi_info, %struct.vi_info* %8, i32 0, i32 0
  store i32 -1, i32* %9, align 8
  %10 = load %struct.vi_info*, %struct.vi_info** %5, align 8
  %11 = getelementptr inbounds %struct.vi_info, %struct.vi_info* %10, i32 0, i32 10
  %12 = call i32 @callout_init(i32* %11, i32 1)
  %13 = load i32, i32* @IFT_ETHER, align 4
  %14 = load i32, i32* %4, align 4
  %15 = call %struct.ifnet* @if_alloc_dev(i32 %13, i32 %14)
  store %struct.ifnet* %15, %struct.ifnet** %6, align 8
  %16 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %17 = icmp eq %struct.ifnet* %16, null
  br i1 %17, label %18, label %22

18:                                               ; preds = %2
  %19 = load i32, i32* %4, align 4
  %20 = call i32 (i32, i8*, ...) @device_printf(i32 %19, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %21 = load i32, i32* @ENOMEM, align 4
  store i32 %21, i32* %3, align 4
  br label %109

22:                                               ; preds = %2
  %23 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %24 = load %struct.vi_info*, %struct.vi_info** %5, align 8
  %25 = getelementptr inbounds %struct.vi_info, %struct.vi_info* %24, i32 0, i32 9
  store %struct.ifnet* %23, %struct.ifnet** %25, align 8
  %26 = load %struct.vi_info*, %struct.vi_info** %5, align 8
  %27 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %28 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %27, i32 0, i32 17
  store %struct.vi_info* %26, %struct.vi_info** %28, align 8
  %29 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %30 = load i32, i32* %4, align 4
  %31 = call i32 @device_get_name(i32 %30)
  %32 = load i32, i32* %4, align 4
  %33 = call i32 @device_get_unit(i32 %32)
  %34 = call i32 @if_initname(%struct.ifnet* %29, i32 %31, i32 %33)
  %35 = load i32, i32* @IFF_BROADCAST, align 4
  %36 = load i32, i32* @IFF_SIMPLEX, align 4
  %37 = or i32 %35, %36
  %38 = load i32, i32* @IFF_MULTICAST, align 4
  %39 = or i32 %37, %38
  %40 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %41 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 8
  %42 = load i32, i32* @cxgbe_init, align 4
  %43 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %44 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %43, i32 0, i32 16
  store i32 %42, i32* %44, align 8
  %45 = load i32, i32* @cxgbe_ioctl, align 4
  %46 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %47 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %46, i32 0, i32 15
  store i32 %45, i32* %47, align 4
  %48 = load i32, i32* @cxgbe_transmit, align 4
  %49 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %50 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %49, i32 0, i32 14
  store i32 %48, i32* %50, align 8
  %51 = load i32, i32* @cxgbe_qflush, align 4
  %52 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %53 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %52, i32 0, i32 13
  store i32 %51, i32* %53, align 4
  %54 = load i32, i32* @cxgbe_get_counter, align 4
  %55 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %56 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %55, i32 0, i32 12
  store i32 %54, i32* %56, align 8
  %57 = load i32, i32* @T4_CAP, align 4
  %58 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %59 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %58, i32 0, i32 1
  store i32 %57, i32* %59, align 4
  %60 = load i32, i32* @T4_CAP_ENABLE, align 4
  %61 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %62 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %61, i32 0, i32 2
  store i32 %60, i32* %62, align 8
  %63 = load i32, i32* @CSUM_TCP, align 4
  %64 = load i32, i32* @CSUM_UDP, align 4
  %65 = or i32 %63, %64
  %66 = load i32, i32* @CSUM_IP, align 4
  %67 = or i32 %65, %66
  %68 = load i32, i32* @CSUM_TSO, align 4
  %69 = or i32 %67, %68
  %70 = load i32, i32* @CSUM_UDP_IPV6, align 4
  %71 = or i32 %69, %70
  %72 = load i32, i32* @CSUM_TCP_IPV6, align 4
  %73 = or i32 %71, %72
  %74 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %75 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %74, i32 0, i32 3
  store i32 %73, i32* %75, align 4
  %76 = load i32, i32* @IP_MAXPACKET, align 4
  %77 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %78 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %77, i32 0, i32 6
  store i32 %76, i32* %78, align 8
  %79 = load i32, i32* @TX_SGL_SEGS_TSO, align 4
  %80 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %81 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %80, i32 0, i32 5
  store i32 %79, i32* %81, align 4
  %82 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %83 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %82, i32 0, i32 4
  store i32 65536, i32* %83, align 8
  %84 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %85 = load %struct.vi_info*, %struct.vi_info** %5, align 8
  %86 = getelementptr inbounds %struct.vi_info, %struct.vi_info* %85, i32 0, i32 7
  %87 = load i32, i32* %86, align 8
  %88 = call i32 @ether_ifattach(%struct.ifnet* %84, i32 %87)
  %89 = call %struct.sbuf* (...) @sbuf_new_auto()
  store %struct.sbuf* %89, %struct.sbuf** %7, align 8
  %90 = load %struct.sbuf*, %struct.sbuf** %7, align 8
  %91 = load %struct.vi_info*, %struct.vi_info** %5, align 8
  %92 = getelementptr inbounds %struct.vi_info, %struct.vi_info* %91, i32 0, i32 6
  %93 = load i32, i32* %92, align 4
  %94 = sext i32 %93 to i64
  %95 = load %struct.vi_info*, %struct.vi_info** %5, align 8
  %96 = getelementptr inbounds %struct.vi_info, %struct.vi_info* %95, i32 0, i32 4
  %97 = load i64, i64* %96, align 8
  %98 = call i32 (%struct.sbuf*, i8*, i64, ...) @sbuf_printf(%struct.sbuf* %90, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i64 %94, i64 %97)
  %99 = load %struct.sbuf*, %struct.sbuf** %7, align 8
  %100 = call i32 @sbuf_finish(%struct.sbuf* %99)
  %101 = load i32, i32* %4, align 4
  %102 = load %struct.sbuf*, %struct.sbuf** %7, align 8
  %103 = call i32 @sbuf_data(%struct.sbuf* %102)
  %104 = call i32 (i32, i8*, ...) @device_printf(i32 %101, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 %103)
  %105 = load %struct.sbuf*, %struct.sbuf** %7, align 8
  %106 = call i32 @sbuf_delete(%struct.sbuf* %105)
  %107 = load %struct.vi_info*, %struct.vi_info** %5, align 8
  %108 = call i32 @vi_sysctls(%struct.vi_info* %107)
  store i32 0, i32* %3, align 4
  br label %109

109:                                              ; preds = %22, %18
  %110 = load i32, i32* %3, align 4
  ret i32 %110
}

declare dso_local i32 @callout_init(i32*, i32) #1

declare dso_local %struct.ifnet* @if_alloc_dev(i32, i32) #1

declare dso_local i32 @device_printf(i32, i8*, ...) #1

declare dso_local i32 @if_initname(%struct.ifnet*, i32, i32) #1

declare dso_local i32 @device_get_name(i32) #1

declare dso_local i32 @device_get_unit(i32) #1

declare dso_local i32 @ether_ifattach(%struct.ifnet*, i32) #1

declare dso_local %struct.sbuf* @sbuf_new_auto(...) #1

declare dso_local i32 @sbuf_printf(%struct.sbuf*, i8*, i64, ...) #1

declare dso_local i32 @sbuf_finish(%struct.sbuf*) #1

declare dso_local i32 @sbuf_data(%struct.sbuf*) #1

declare dso_local i32 @sbuf_delete(%struct.sbuf*) #1

declare dso_local i32 @vi_sysctls(%struct.vi_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
