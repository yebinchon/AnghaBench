; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/vnic/extr_nicvf_main.c_nicvf_setup_ifnet.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/vnic/extr_nicvf_main.c_nicvf_setup_ifnet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nicvf = type { i64, i32, %struct.ifnet* }
%struct.ifnet = type { i32 }

@IFT_ETHER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"Could not allocate ifnet structure\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@IFF_BROADCAST = common dso_local global i32 0, align 4
@IFF_SIMPLEX = common dso_local global i32 0, align 4
@IFF_MULTICAST = common dso_local global i32 0, align 4
@nicvf_if_transmit = common dso_local global i32 0, align 4
@nicvf_if_qflush = common dso_local global i32 0, align 4
@nicvf_if_ioctl = common dso_local global i32 0, align 4
@nicvf_if_init = common dso_local global i32 0, align 4
@nicvf_if_getcounter = common dso_local global i32 0, align 4
@ETHERMTU = common dso_local global i32 0, align 4
@IFCAP_VLAN_MTU = common dso_local global i32 0, align 4
@IFCAP_JUMBO_MTU = common dso_local global i32 0, align 4
@IFCAP_LRO = common dso_local global i32 0, align 4
@IFCAP_TSO4 = common dso_local global i32 0, align 4
@NICVF_TSO_MAXSIZE = common dso_local global i32 0, align 4
@NICVF_TSO_NSEGS = common dso_local global i32 0, align 4
@MCLBYTES = common dso_local global i32 0, align 4
@IFCAP_HWCSUM = common dso_local global i32 0, align 4
@IFCAP_HWSTATS = common dso_local global i32 0, align 4
@CSUM_IP = common dso_local global i32 0, align 4
@CSUM_TCP = common dso_local global i32 0, align 4
@CSUM_UDP = common dso_local global i32 0, align 4
@CSUM_SCTP = common dso_local global i32 0, align 4
@CSUM_TSO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nicvf*)* @nicvf_setup_ifnet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nicvf_setup_ifnet(%struct.nicvf* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nicvf*, align 8
  %4 = alloca %struct.ifnet*, align 8
  store %struct.nicvf* %0, %struct.nicvf** %3, align 8
  %5 = load i32, i32* @IFT_ETHER, align 4
  %6 = call %struct.ifnet* @if_alloc(i32 %5)
  store %struct.ifnet* %6, %struct.ifnet** %4, align 8
  %7 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %8 = icmp eq %struct.ifnet* %7, null
  br i1 %8, label %9, label %15

9:                                                ; preds = %1
  %10 = load %struct.nicvf*, %struct.nicvf** %3, align 8
  %11 = getelementptr inbounds %struct.nicvf, %struct.nicvf* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 8
  %13 = call i32 @device_printf(i32 %12, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %14 = load i32, i32* @ENOMEM, align 4
  store i32 %14, i32* %2, align 4
  br label %115

15:                                               ; preds = %1
  %16 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %17 = load %struct.nicvf*, %struct.nicvf** %3, align 8
  %18 = getelementptr inbounds %struct.nicvf, %struct.nicvf* %17, i32 0, i32 2
  store %struct.ifnet* %16, %struct.ifnet** %18, align 8
  %19 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %20 = load %struct.nicvf*, %struct.nicvf** %3, align 8
  %21 = call i32 @if_setsoftc(%struct.ifnet* %19, %struct.nicvf* %20)
  %22 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %23 = load %struct.nicvf*, %struct.nicvf** %3, align 8
  %24 = getelementptr inbounds %struct.nicvf, %struct.nicvf* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @device_get_name(i32 %25)
  %27 = load %struct.nicvf*, %struct.nicvf** %3, align 8
  %28 = getelementptr inbounds %struct.nicvf, %struct.nicvf* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @device_get_unit(i32 %29)
  %31 = call i32 @if_initname(%struct.ifnet* %22, i32 %26, i32 %30)
  %32 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %33 = load i32, i32* @IFF_BROADCAST, align 4
  %34 = load i32, i32* @IFF_SIMPLEX, align 4
  %35 = or i32 %33, %34
  %36 = load i32, i32* @IFF_MULTICAST, align 4
  %37 = or i32 %35, %36
  %38 = call i32 @if_setflags(%struct.ifnet* %32, i32 %37)
  %39 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %40 = load i32, i32* @nicvf_if_transmit, align 4
  %41 = call i32 @if_settransmitfn(%struct.ifnet* %39, i32 %40)
  %42 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %43 = load i32, i32* @nicvf_if_qflush, align 4
  %44 = call i32 @if_setqflushfn(%struct.ifnet* %42, i32 %43)
  %45 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %46 = load i32, i32* @nicvf_if_ioctl, align 4
  %47 = call i32 @if_setioctlfn(%struct.ifnet* %45, i32 %46)
  %48 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %49 = load i32, i32* @nicvf_if_init, align 4
  %50 = call i32 @if_setinitfn(%struct.ifnet* %48, i32 %49)
  %51 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %52 = load i32, i32* @nicvf_if_getcounter, align 4
  %53 = call i32 @if_setgetcounterfn(%struct.ifnet* %51, i32 %52)
  %54 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %55 = load i32, i32* @ETHERMTU, align 4
  %56 = call i32 @if_setmtu(%struct.ifnet* %54, i32 %55)
  %57 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %58 = call i32 @if_setcapabilities(%struct.ifnet* %57, i32 0)
  %59 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %60 = load i32, i32* @IFCAP_VLAN_MTU, align 4
  %61 = load i32, i32* @IFCAP_JUMBO_MTU, align 4
  %62 = or i32 %60, %61
  %63 = call i32 @if_setcapabilitiesbit(%struct.ifnet* %59, i32 %62, i32 0)
  %64 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %65 = load i32, i32* @IFCAP_LRO, align 4
  %66 = call i32 @if_setcapabilitiesbit(%struct.ifnet* %64, i32 %65, i32 0)
  %67 = load %struct.nicvf*, %struct.nicvf** %3, align 8
  %68 = getelementptr inbounds %struct.nicvf, %struct.nicvf* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %84

71:                                               ; preds = %15
  %72 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %73 = load i32, i32* @IFCAP_TSO4, align 4
  %74 = call i32 @if_setcapabilitiesbit(%struct.ifnet* %72, i32 %73, i32 0)
  %75 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %76 = load i32, i32* @NICVF_TSO_MAXSIZE, align 4
  %77 = call i32 @if_sethwtsomax(%struct.ifnet* %75, i32 %76)
  %78 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %79 = load i32, i32* @NICVF_TSO_NSEGS, align 4
  %80 = call i32 @if_sethwtsomaxsegcount(%struct.ifnet* %78, i32 %79)
  %81 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %82 = load i32, i32* @MCLBYTES, align 4
  %83 = call i32 @if_sethwtsomaxsegsize(%struct.ifnet* %81, i32 %82)
  br label %84

84:                                               ; preds = %71, %15
  %85 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %86 = load i32, i32* @IFCAP_HWCSUM, align 4
  %87 = call i32 @if_setcapabilitiesbit(%struct.ifnet* %85, i32 %86, i32 0)
  %88 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %89 = load i32, i32* @IFCAP_HWSTATS, align 4
  %90 = call i32 @if_setcapabilitiesbit(%struct.ifnet* %88, i32 %89, i32 0)
  %91 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %92 = call i32 @if_clearhwassist(%struct.ifnet* %91)
  %93 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %94 = load i32, i32* @CSUM_IP, align 4
  %95 = load i32, i32* @CSUM_TCP, align 4
  %96 = or i32 %94, %95
  %97 = load i32, i32* @CSUM_UDP, align 4
  %98 = or i32 %96, %97
  %99 = load i32, i32* @CSUM_SCTP, align 4
  %100 = or i32 %98, %99
  %101 = call i32 @if_sethwassistbits(%struct.ifnet* %93, i32 %100, i32 0)
  %102 = load %struct.nicvf*, %struct.nicvf** %3, align 8
  %103 = getelementptr inbounds %struct.nicvf, %struct.nicvf* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %110

106:                                              ; preds = %84
  %107 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %108 = load i32, i32* @CSUM_TSO, align 4
  %109 = call i32 @if_sethwassistbits(%struct.ifnet* %107, i32 %108, i32 0)
  br label %110

110:                                              ; preds = %106, %84
  %111 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %112 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %113 = call i32 @if_getcapabilities(%struct.ifnet* %112)
  %114 = call i32 @if_setcapenable(%struct.ifnet* %111, i32 %113)
  store i32 0, i32* %2, align 4
  br label %115

115:                                              ; preds = %110, %9
  %116 = load i32, i32* %2, align 4
  ret i32 %116
}

declare dso_local %struct.ifnet* @if_alloc(i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @if_setsoftc(%struct.ifnet*, %struct.nicvf*) #1

declare dso_local i32 @if_initname(%struct.ifnet*, i32, i32) #1

declare dso_local i32 @device_get_name(i32) #1

declare dso_local i32 @device_get_unit(i32) #1

declare dso_local i32 @if_setflags(%struct.ifnet*, i32) #1

declare dso_local i32 @if_settransmitfn(%struct.ifnet*, i32) #1

declare dso_local i32 @if_setqflushfn(%struct.ifnet*, i32) #1

declare dso_local i32 @if_setioctlfn(%struct.ifnet*, i32) #1

declare dso_local i32 @if_setinitfn(%struct.ifnet*, i32) #1

declare dso_local i32 @if_setgetcounterfn(%struct.ifnet*, i32) #1

declare dso_local i32 @if_setmtu(%struct.ifnet*, i32) #1

declare dso_local i32 @if_setcapabilities(%struct.ifnet*, i32) #1

declare dso_local i32 @if_setcapabilitiesbit(%struct.ifnet*, i32, i32) #1

declare dso_local i32 @if_sethwtsomax(%struct.ifnet*, i32) #1

declare dso_local i32 @if_sethwtsomaxsegcount(%struct.ifnet*, i32) #1

declare dso_local i32 @if_sethwtsomaxsegsize(%struct.ifnet*, i32) #1

declare dso_local i32 @if_clearhwassist(%struct.ifnet*) #1

declare dso_local i32 @if_sethwassistbits(%struct.ifnet*, i32, i32) #1

declare dso_local i32 @if_setcapenable(%struct.ifnet*, i32) #1

declare dso_local i32 @if_getcapabilities(%struct.ifnet*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
