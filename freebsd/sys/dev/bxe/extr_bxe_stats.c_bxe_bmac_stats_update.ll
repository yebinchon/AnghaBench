; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe_stats.c_bxe_bmac_stats_update.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe_stats.c_bxe_bmac_stats_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }
%struct.bxe_softc = type { %struct.bxe_fw_port_stats_old, %struct.bxe_eth_stats }
%struct.bxe_fw_port_stats_old = type { i32, i32, i32, i32 }
%struct.bxe_eth_stats = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.host_port_stats = type { i32, i32, i32, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i32, i32, i32 }
%struct.anon = type { i32, i32 }
%struct.bmac1_stats = type { i32 }
%struct.bmac2_stats = type { i32, i32, i32, i32 }

@port_stats = common dso_local global i32 0, align 4
@mac_stats = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@rx_stat_grerb = common dso_local global i32 0, align 4
@rx_stat_ifhcinbadoctets = common dso_local global i32 0, align 4
@rx_stat_grfcs = common dso_local global i32 0, align 4
@rx_stat_dot3statsfcserrors = common dso_local global i32 0, align 4
@rx_stat_grund = common dso_local global i32 0, align 4
@rx_stat_etherstatsundersizepkts = common dso_local global i32 0, align 4
@rx_stat_grovr = common dso_local global i32 0, align 4
@rx_stat_dot3statsframestoolong = common dso_local global i32 0, align 4
@rx_stat_grfrg = common dso_local global i32 0, align 4
@rx_stat_etherstatsfragments = common dso_local global i32 0, align 4
@rx_stat_grjbr = common dso_local global i32 0, align 4
@rx_stat_etherstatsjabbers = common dso_local global i32 0, align 4
@rx_stat_grxcf = common dso_local global i32 0, align 4
@rx_stat_maccontrolframesreceived = common dso_local global i32 0, align 4
@rx_stat_grxpf = common dso_local global i32 0, align 4
@rx_stat_xoffstateentered = common dso_local global i32 0, align 4
@rx_stat_mac_xpf = common dso_local global i32 0, align 4
@tx_stat_gtxpf = common dso_local global i32 0, align 4
@tx_stat_outxoffsent = common dso_local global i32 0, align 4
@tx_stat_flowcontroldone = common dso_local global i32 0, align 4
@tx_stat_gt64 = common dso_local global i32 0, align 4
@tx_stat_etherstatspkts64octets = common dso_local global i32 0, align 4
@tx_stat_gt127 = common dso_local global i32 0, align 4
@tx_stat_etherstatspkts65octetsto127octets = common dso_local global i32 0, align 4
@tx_stat_gt255 = common dso_local global i32 0, align 4
@tx_stat_etherstatspkts128octetsto255octets = common dso_local global i32 0, align 4
@tx_stat_gt511 = common dso_local global i32 0, align 4
@tx_stat_etherstatspkts256octetsto511octets = common dso_local global i32 0, align 4
@tx_stat_gt1023 = common dso_local global i32 0, align 4
@tx_stat_etherstatspkts512octetsto1023octets = common dso_local global i32 0, align 4
@tx_stat_gt1518 = common dso_local global i32 0, align 4
@tx_stat_etherstatspkts1024octetsto1522octets = common dso_local global i32 0, align 4
@tx_stat_gt2047 = common dso_local global i32 0, align 4
@tx_stat_mac_2047 = common dso_local global i32 0, align 4
@tx_stat_gt4095 = common dso_local global i32 0, align 4
@tx_stat_mac_4095 = common dso_local global i32 0, align 4
@tx_stat_gt9216 = common dso_local global i32 0, align 4
@tx_stat_mac_9216 = common dso_local global i32 0, align 4
@tx_stat_gt16383 = common dso_local global i32 0, align 4
@tx_stat_mac_16383 = common dso_local global i32 0, align 4
@tx_stat_gterr = common dso_local global i32 0, align 4
@tx_stat_dot3statsinternalmactransmiterrors = common dso_local global i32 0, align 4
@tx_stat_gtufl = common dso_local global i32 0, align 4
@tx_stat_mac_ufl = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bxe_softc*)* @bxe_bmac_stats_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bxe_bmac_stats_update(%struct.bxe_softc* %0) #0 {
  %2 = alloca %struct.bxe_softc*, align 8
  %3 = alloca %struct.host_port_stats*, align 8
  %4 = alloca %struct.bxe_eth_stats*, align 8
  %5 = alloca %struct.anon, align 4
  %6 = alloca %struct.bmac1_stats*, align 8
  %7 = alloca %struct.bmac2_stats*, align 8
  %8 = alloca %struct.bxe_fw_port_stats_old*, align 8
  store %struct.bxe_softc* %0, %struct.bxe_softc** %2, align 8
  %9 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %10 = load i32, i32* @port_stats, align 4
  %11 = call i8* @BXE_SP(%struct.bxe_softc* %9, i32 %10)
  %12 = bitcast i8* %11 to %struct.host_port_stats*
  store %struct.host_port_stats* %12, %struct.host_port_stats** %3, align 8
  %13 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %14 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %13, i32 0, i32 1
  store %struct.bxe_eth_stats* %14, %struct.bxe_eth_stats** %4, align 8
  %15 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %16 = call i64 @CHIP_IS_E1x(%struct.bxe_softc* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %92

18:                                               ; preds = %1
  %19 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %20 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @mac_stats, i32 0, i32 1), align 4
  %21 = call i8* @BXE_SP(%struct.bxe_softc* %19, i32 %20)
  %22 = bitcast i8* %21 to %struct.bmac1_stats*
  store %struct.bmac1_stats* %22, %struct.bmac1_stats** %6, align 8
  %23 = load i32, i32* @rx_stat_grerb, align 4
  %24 = load i32, i32* @rx_stat_ifhcinbadoctets, align 4
  %25 = call i32 @UPDATE_STAT64(i32 %23, i32 %24)
  %26 = load i32, i32* @rx_stat_grfcs, align 4
  %27 = load i32, i32* @rx_stat_dot3statsfcserrors, align 4
  %28 = call i32 @UPDATE_STAT64(i32 %26, i32 %27)
  %29 = load i32, i32* @rx_stat_grund, align 4
  %30 = load i32, i32* @rx_stat_etherstatsundersizepkts, align 4
  %31 = call i32 @UPDATE_STAT64(i32 %29, i32 %30)
  %32 = load i32, i32* @rx_stat_grovr, align 4
  %33 = load i32, i32* @rx_stat_dot3statsframestoolong, align 4
  %34 = call i32 @UPDATE_STAT64(i32 %32, i32 %33)
  %35 = load i32, i32* @rx_stat_grfrg, align 4
  %36 = load i32, i32* @rx_stat_etherstatsfragments, align 4
  %37 = call i32 @UPDATE_STAT64(i32 %35, i32 %36)
  %38 = load i32, i32* @rx_stat_grjbr, align 4
  %39 = load i32, i32* @rx_stat_etherstatsjabbers, align 4
  %40 = call i32 @UPDATE_STAT64(i32 %38, i32 %39)
  %41 = load i32, i32* @rx_stat_grxcf, align 4
  %42 = load i32, i32* @rx_stat_maccontrolframesreceived, align 4
  %43 = call i32 @UPDATE_STAT64(i32 %41, i32 %42)
  %44 = load i32, i32* @rx_stat_grxpf, align 4
  %45 = load i32, i32* @rx_stat_xoffstateentered, align 4
  %46 = call i32 @UPDATE_STAT64(i32 %44, i32 %45)
  %47 = load i32, i32* @rx_stat_grxpf, align 4
  %48 = load i32, i32* @rx_stat_mac_xpf, align 4
  %49 = call i32 @UPDATE_STAT64(i32 %47, i32 %48)
  %50 = load i32, i32* @tx_stat_gtxpf, align 4
  %51 = load i32, i32* @tx_stat_outxoffsent, align 4
  %52 = call i32 @UPDATE_STAT64(i32 %50, i32 %51)
  %53 = load i32, i32* @tx_stat_gtxpf, align 4
  %54 = load i32, i32* @tx_stat_flowcontroldone, align 4
  %55 = call i32 @UPDATE_STAT64(i32 %53, i32 %54)
  %56 = load i32, i32* @tx_stat_gt64, align 4
  %57 = load i32, i32* @tx_stat_etherstatspkts64octets, align 4
  %58 = call i32 @UPDATE_STAT64(i32 %56, i32 %57)
  %59 = load i32, i32* @tx_stat_gt127, align 4
  %60 = load i32, i32* @tx_stat_etherstatspkts65octetsto127octets, align 4
  %61 = call i32 @UPDATE_STAT64(i32 %59, i32 %60)
  %62 = load i32, i32* @tx_stat_gt255, align 4
  %63 = load i32, i32* @tx_stat_etherstatspkts128octetsto255octets, align 4
  %64 = call i32 @UPDATE_STAT64(i32 %62, i32 %63)
  %65 = load i32, i32* @tx_stat_gt511, align 4
  %66 = load i32, i32* @tx_stat_etherstatspkts256octetsto511octets, align 4
  %67 = call i32 @UPDATE_STAT64(i32 %65, i32 %66)
  %68 = load i32, i32* @tx_stat_gt1023, align 4
  %69 = load i32, i32* @tx_stat_etherstatspkts512octetsto1023octets, align 4
  %70 = call i32 @UPDATE_STAT64(i32 %68, i32 %69)
  %71 = load i32, i32* @tx_stat_gt1518, align 4
  %72 = load i32, i32* @tx_stat_etherstatspkts1024octetsto1522octets, align 4
  %73 = call i32 @UPDATE_STAT64(i32 %71, i32 %72)
  %74 = load i32, i32* @tx_stat_gt2047, align 4
  %75 = load i32, i32* @tx_stat_mac_2047, align 4
  %76 = call i32 @UPDATE_STAT64(i32 %74, i32 %75)
  %77 = load i32, i32* @tx_stat_gt4095, align 4
  %78 = load i32, i32* @tx_stat_mac_4095, align 4
  %79 = call i32 @UPDATE_STAT64(i32 %77, i32 %78)
  %80 = load i32, i32* @tx_stat_gt9216, align 4
  %81 = load i32, i32* @tx_stat_mac_9216, align 4
  %82 = call i32 @UPDATE_STAT64(i32 %80, i32 %81)
  %83 = load i32, i32* @tx_stat_gt16383, align 4
  %84 = load i32, i32* @tx_stat_mac_16383, align 4
  %85 = call i32 @UPDATE_STAT64(i32 %83, i32 %84)
  %86 = load i32, i32* @tx_stat_gterr, align 4
  %87 = load i32, i32* @tx_stat_dot3statsinternalmactransmiterrors, align 4
  %88 = call i32 @UPDATE_STAT64(i32 %86, i32 %87)
  %89 = load i32, i32* @tx_stat_gtufl, align 4
  %90 = load i32, i32* @tx_stat_mac_ufl, align 4
  %91 = call i32 @UPDATE_STAT64(i32 %89, i32 %90)
  br label %214

92:                                               ; preds = %1
  %93 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %94 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @mac_stats, i32 0, i32 0), align 4
  %95 = call i8* @BXE_SP(%struct.bxe_softc* %93, i32 %94)
  %96 = bitcast i8* %95 to %struct.bmac2_stats*
  store %struct.bmac2_stats* %96, %struct.bmac2_stats** %7, align 8
  %97 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %98 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %97, i32 0, i32 0
  store %struct.bxe_fw_port_stats_old* %98, %struct.bxe_fw_port_stats_old** %8, align 8
  %99 = load i32, i32* @rx_stat_grerb, align 4
  %100 = load i32, i32* @rx_stat_ifhcinbadoctets, align 4
  %101 = call i32 @UPDATE_STAT64(i32 %99, i32 %100)
  %102 = load i32, i32* @rx_stat_grfcs, align 4
  %103 = load i32, i32* @rx_stat_dot3statsfcserrors, align 4
  %104 = call i32 @UPDATE_STAT64(i32 %102, i32 %103)
  %105 = load i32, i32* @rx_stat_grund, align 4
  %106 = load i32, i32* @rx_stat_etherstatsundersizepkts, align 4
  %107 = call i32 @UPDATE_STAT64(i32 %105, i32 %106)
  %108 = load i32, i32* @rx_stat_grovr, align 4
  %109 = load i32, i32* @rx_stat_dot3statsframestoolong, align 4
  %110 = call i32 @UPDATE_STAT64(i32 %108, i32 %109)
  %111 = load i32, i32* @rx_stat_grfrg, align 4
  %112 = load i32, i32* @rx_stat_etherstatsfragments, align 4
  %113 = call i32 @UPDATE_STAT64(i32 %111, i32 %112)
  %114 = load i32, i32* @rx_stat_grjbr, align 4
  %115 = load i32, i32* @rx_stat_etherstatsjabbers, align 4
  %116 = call i32 @UPDATE_STAT64(i32 %114, i32 %115)
  %117 = load i32, i32* @rx_stat_grxcf, align 4
  %118 = load i32, i32* @rx_stat_maccontrolframesreceived, align 4
  %119 = call i32 @UPDATE_STAT64(i32 %117, i32 %118)
  %120 = load i32, i32* @rx_stat_grxpf, align 4
  %121 = load i32, i32* @rx_stat_xoffstateentered, align 4
  %122 = call i32 @UPDATE_STAT64(i32 %120, i32 %121)
  %123 = load i32, i32* @rx_stat_grxpf, align 4
  %124 = load i32, i32* @rx_stat_mac_xpf, align 4
  %125 = call i32 @UPDATE_STAT64(i32 %123, i32 %124)
  %126 = load i32, i32* @tx_stat_gtxpf, align 4
  %127 = load i32, i32* @tx_stat_outxoffsent, align 4
  %128 = call i32 @UPDATE_STAT64(i32 %126, i32 %127)
  %129 = load i32, i32* @tx_stat_gtxpf, align 4
  %130 = load i32, i32* @tx_stat_flowcontroldone, align 4
  %131 = call i32 @UPDATE_STAT64(i32 %129, i32 %130)
  %132 = load i32, i32* @tx_stat_gt64, align 4
  %133 = load i32, i32* @tx_stat_etherstatspkts64octets, align 4
  %134 = call i32 @UPDATE_STAT64(i32 %132, i32 %133)
  %135 = load i32, i32* @tx_stat_gt127, align 4
  %136 = load i32, i32* @tx_stat_etherstatspkts65octetsto127octets, align 4
  %137 = call i32 @UPDATE_STAT64(i32 %135, i32 %136)
  %138 = load i32, i32* @tx_stat_gt255, align 4
  %139 = load i32, i32* @tx_stat_etherstatspkts128octetsto255octets, align 4
  %140 = call i32 @UPDATE_STAT64(i32 %138, i32 %139)
  %141 = load i32, i32* @tx_stat_gt511, align 4
  %142 = load i32, i32* @tx_stat_etherstatspkts256octetsto511octets, align 4
  %143 = call i32 @UPDATE_STAT64(i32 %141, i32 %142)
  %144 = load i32, i32* @tx_stat_gt1023, align 4
  %145 = load i32, i32* @tx_stat_etherstatspkts512octetsto1023octets, align 4
  %146 = call i32 @UPDATE_STAT64(i32 %144, i32 %145)
  %147 = load i32, i32* @tx_stat_gt1518, align 4
  %148 = load i32, i32* @tx_stat_etherstatspkts1024octetsto1522octets, align 4
  %149 = call i32 @UPDATE_STAT64(i32 %147, i32 %148)
  %150 = load i32, i32* @tx_stat_gt2047, align 4
  %151 = load i32, i32* @tx_stat_mac_2047, align 4
  %152 = call i32 @UPDATE_STAT64(i32 %150, i32 %151)
  %153 = load i32, i32* @tx_stat_gt4095, align 4
  %154 = load i32, i32* @tx_stat_mac_4095, align 4
  %155 = call i32 @UPDATE_STAT64(i32 %153, i32 %154)
  %156 = load i32, i32* @tx_stat_gt9216, align 4
  %157 = load i32, i32* @tx_stat_mac_9216, align 4
  %158 = call i32 @UPDATE_STAT64(i32 %156, i32 %157)
  %159 = load i32, i32* @tx_stat_gt16383, align 4
  %160 = load i32, i32* @tx_stat_mac_16383, align 4
  %161 = call i32 @UPDATE_STAT64(i32 %159, i32 %160)
  %162 = load i32, i32* @tx_stat_gterr, align 4
  %163 = load i32, i32* @tx_stat_dot3statsinternalmactransmiterrors, align 4
  %164 = call i32 @UPDATE_STAT64(i32 %162, i32 %163)
  %165 = load i32, i32* @tx_stat_gtufl, align 4
  %166 = load i32, i32* @tx_stat_mac_ufl, align 4
  %167 = call i32 @UPDATE_STAT64(i32 %165, i32 %166)
  %168 = load %struct.bmac2_stats*, %struct.bmac2_stats** %7, align 8
  %169 = getelementptr inbounds %struct.bmac2_stats, %struct.bmac2_stats* %168, i32 0, i32 3
  %170 = load i32, i32* %169, align 4
  %171 = load %struct.host_port_stats*, %struct.host_port_stats** %3, align 8
  %172 = getelementptr inbounds %struct.host_port_stats, %struct.host_port_stats* %171, i32 0, i32 1
  store i32 %170, i32* %172, align 4
  %173 = load %struct.bmac2_stats*, %struct.bmac2_stats** %7, align 8
  %174 = getelementptr inbounds %struct.bmac2_stats, %struct.bmac2_stats* %173, i32 0, i32 2
  %175 = load i32, i32* %174, align 4
  %176 = load %struct.host_port_stats*, %struct.host_port_stats** %3, align 8
  %177 = getelementptr inbounds %struct.host_port_stats, %struct.host_port_stats* %176, i32 0, i32 0
  store i32 %175, i32* %177, align 8
  %178 = load %struct.host_port_stats*, %struct.host_port_stats** %3, align 8
  %179 = getelementptr inbounds %struct.host_port_stats, %struct.host_port_stats* %178, i32 0, i32 1
  %180 = load i32, i32* %179, align 4
  %181 = load %struct.bxe_fw_port_stats_old*, %struct.bxe_fw_port_stats_old** %8, align 8
  %182 = getelementptr inbounds %struct.bxe_fw_port_stats_old, %struct.bxe_fw_port_stats_old* %181, i32 0, i32 3
  %183 = load i32, i32* %182, align 4
  %184 = load %struct.host_port_stats*, %struct.host_port_stats** %3, align 8
  %185 = getelementptr inbounds %struct.host_port_stats, %struct.host_port_stats* %184, i32 0, i32 0
  %186 = load i32, i32* %185, align 8
  %187 = load %struct.bxe_fw_port_stats_old*, %struct.bxe_fw_port_stats_old** %8, align 8
  %188 = getelementptr inbounds %struct.bxe_fw_port_stats_old, %struct.bxe_fw_port_stats_old* %187, i32 0, i32 2
  %189 = load i32, i32* %188, align 4
  %190 = call i32 @ADD_64(i32 %180, i32 %183, i32 %186, i32 %189)
  %191 = load %struct.bmac2_stats*, %struct.bmac2_stats** %7, align 8
  %192 = getelementptr inbounds %struct.bmac2_stats, %struct.bmac2_stats* %191, i32 0, i32 1
  %193 = load i32, i32* %192, align 4
  %194 = load %struct.host_port_stats*, %struct.host_port_stats** %3, align 8
  %195 = getelementptr inbounds %struct.host_port_stats, %struct.host_port_stats* %194, i32 0, i32 3
  store i32 %193, i32* %195, align 4
  %196 = load %struct.bmac2_stats*, %struct.bmac2_stats** %7, align 8
  %197 = getelementptr inbounds %struct.bmac2_stats, %struct.bmac2_stats* %196, i32 0, i32 0
  %198 = load i32, i32* %197, align 4
  %199 = load %struct.host_port_stats*, %struct.host_port_stats** %3, align 8
  %200 = getelementptr inbounds %struct.host_port_stats, %struct.host_port_stats* %199, i32 0, i32 2
  store i32 %198, i32* %200, align 8
  %201 = load %struct.host_port_stats*, %struct.host_port_stats** %3, align 8
  %202 = getelementptr inbounds %struct.host_port_stats, %struct.host_port_stats* %201, i32 0, i32 3
  %203 = load i32, i32* %202, align 4
  %204 = load %struct.bxe_fw_port_stats_old*, %struct.bxe_fw_port_stats_old** %8, align 8
  %205 = getelementptr inbounds %struct.bxe_fw_port_stats_old, %struct.bxe_fw_port_stats_old* %204, i32 0, i32 1
  %206 = load i32, i32* %205, align 4
  %207 = load %struct.host_port_stats*, %struct.host_port_stats** %3, align 8
  %208 = getelementptr inbounds %struct.host_port_stats, %struct.host_port_stats* %207, i32 0, i32 2
  %209 = load i32, i32* %208, align 8
  %210 = load %struct.bxe_fw_port_stats_old*, %struct.bxe_fw_port_stats_old** %8, align 8
  %211 = getelementptr inbounds %struct.bxe_fw_port_stats_old, %struct.bxe_fw_port_stats_old* %210, i32 0, i32 0
  %212 = load i32, i32* %211, align 4
  %213 = call i32 @ADD_64(i32 %203, i32 %206, i32 %209, i32 %212)
  br label %214

214:                                              ; preds = %92, %18
  %215 = load %struct.host_port_stats*, %struct.host_port_stats** %3, align 8
  %216 = getelementptr inbounds %struct.host_port_stats, %struct.host_port_stats* %215, i32 0, i32 4
  %217 = load %struct.TYPE_3__*, %struct.TYPE_3__** %216, align 8
  %218 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %217, i64 1
  %219 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %218, i32 0, i32 3
  %220 = load i32, i32* %219, align 4
  %221 = load %struct.bxe_eth_stats*, %struct.bxe_eth_stats** %4, align 8
  %222 = getelementptr inbounds %struct.bxe_eth_stats, %struct.bxe_eth_stats* %221, i32 0, i32 7
  store i32 %220, i32* %222, align 4
  %223 = load %struct.host_port_stats*, %struct.host_port_stats** %3, align 8
  %224 = getelementptr inbounds %struct.host_port_stats, %struct.host_port_stats* %223, i32 0, i32 4
  %225 = load %struct.TYPE_3__*, %struct.TYPE_3__** %224, align 8
  %226 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %225, i64 1
  %227 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %226, i32 0, i32 2
  %228 = load i32, i32* %227, align 4
  %229 = load %struct.bxe_eth_stats*, %struct.bxe_eth_stats** %4, align 8
  %230 = getelementptr inbounds %struct.bxe_eth_stats, %struct.bxe_eth_stats* %229, i32 0, i32 6
  store i32 %228, i32* %230, align 4
  %231 = load %struct.host_port_stats*, %struct.host_port_stats** %3, align 8
  %232 = getelementptr inbounds %struct.host_port_stats, %struct.host_port_stats* %231, i32 0, i32 4
  %233 = load %struct.TYPE_3__*, %struct.TYPE_3__** %232, align 8
  %234 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %233, i64 1
  %235 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %234, i32 0, i32 1
  %236 = load i32, i32* %235, align 4
  %237 = load %struct.bxe_eth_stats*, %struct.bxe_eth_stats** %4, align 8
  %238 = getelementptr inbounds %struct.bxe_eth_stats, %struct.bxe_eth_stats* %237, i32 0, i32 5
  store i32 %236, i32* %238, align 4
  %239 = load %struct.host_port_stats*, %struct.host_port_stats** %3, align 8
  %240 = getelementptr inbounds %struct.host_port_stats, %struct.host_port_stats* %239, i32 0, i32 4
  %241 = load %struct.TYPE_3__*, %struct.TYPE_3__** %240, align 8
  %242 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %241, i64 1
  %243 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %242, i32 0, i32 0
  %244 = load i32, i32* %243, align 4
  %245 = load %struct.bxe_eth_stats*, %struct.bxe_eth_stats** %4, align 8
  %246 = getelementptr inbounds %struct.bxe_eth_stats, %struct.bxe_eth_stats* %245, i32 0, i32 4
  store i32 %244, i32* %246, align 4
  %247 = load %struct.host_port_stats*, %struct.host_port_stats** %3, align 8
  %248 = getelementptr inbounds %struct.host_port_stats, %struct.host_port_stats* %247, i32 0, i32 3
  %249 = load i32, i32* %248, align 4
  %250 = load %struct.bxe_eth_stats*, %struct.bxe_eth_stats** %4, align 8
  %251 = getelementptr inbounds %struct.bxe_eth_stats, %struct.bxe_eth_stats* %250, i32 0, i32 3
  store i32 %249, i32* %251, align 4
  %252 = load %struct.host_port_stats*, %struct.host_port_stats** %3, align 8
  %253 = getelementptr inbounds %struct.host_port_stats, %struct.host_port_stats* %252, i32 0, i32 2
  %254 = load i32, i32* %253, align 8
  %255 = load %struct.bxe_eth_stats*, %struct.bxe_eth_stats** %4, align 8
  %256 = getelementptr inbounds %struct.bxe_eth_stats, %struct.bxe_eth_stats* %255, i32 0, i32 2
  store i32 %254, i32* %256, align 4
  %257 = load %struct.host_port_stats*, %struct.host_port_stats** %3, align 8
  %258 = getelementptr inbounds %struct.host_port_stats, %struct.host_port_stats* %257, i32 0, i32 1
  %259 = load i32, i32* %258, align 4
  %260 = load %struct.bxe_eth_stats*, %struct.bxe_eth_stats** %4, align 8
  %261 = getelementptr inbounds %struct.bxe_eth_stats, %struct.bxe_eth_stats* %260, i32 0, i32 1
  store i32 %259, i32* %261, align 4
  %262 = load %struct.host_port_stats*, %struct.host_port_stats** %3, align 8
  %263 = getelementptr inbounds %struct.host_port_stats, %struct.host_port_stats* %262, i32 0, i32 0
  %264 = load i32, i32* %263, align 8
  %265 = load %struct.bxe_eth_stats*, %struct.bxe_eth_stats** %4, align 8
  %266 = getelementptr inbounds %struct.bxe_eth_stats, %struct.bxe_eth_stats* %265, i32 0, i32 0
  store i32 %264, i32* %266, align 4
  ret void
}

declare dso_local i8* @BXE_SP(%struct.bxe_softc*, i32) #1

declare dso_local i64 @CHIP_IS_E1x(%struct.bxe_softc*) #1

declare dso_local i32 @UPDATE_STAT64(i32, i32) #1

declare dso_local i32 @ADD_64(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
