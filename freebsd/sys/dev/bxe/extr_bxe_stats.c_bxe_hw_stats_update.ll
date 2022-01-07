; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe_stats.c_bxe_hw_stats_update.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe_stats.c_bxe_hw_stats_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.bxe_softc = type { %struct.TYPE_5__, %struct.bxe_eth_stats, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32 }
%struct.bxe_eth_stats = type { i64, i32, i32, i32, %struct.nig_stats, i32, i32 }
%struct.nig_stats = type { i64, i64 }
%struct.TYPE_4__ = type { %struct.nig_stats }
%struct.host_port_stats = type { i32, i32, i32, %struct.nig_stats* }
%struct.anon = type { i64, i64 }

@nig_stats = common dso_local global i32 0, align 4
@port_stats = common dso_local global i32 0, align 4
@DBG_STATS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"stats updated by DMAE but no MAC active\0A\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"stats update failed, unknown MAC type\0A\00", align 1
@egress_mac_pkt0 = common dso_local global i32 0, align 4
@etherstatspkts1024octetsto1522octets = common dso_local global i32 0, align 4
@egress_mac_pkt1 = common dso_local global i32 0, align 4
@etherstatspktsover1522octets = common dso_local global i32 0, align 4
@MISC_REG_CPMU_LP_SM_ENT_CNT_P1 = common dso_local global i64 0, align 8
@MISC_REG_CPMU_LP_SM_ENT_CNT_P0 = common dso_local global i64 0, align 8
@port_mb = common dso_local global %struct.TYPE_6__* null, align 8
@.str.2 = private unnamed_addr constant [28 x i8] c"invalid NIG timer max (%u)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bxe_softc*)* @bxe_hw_stats_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bxe_hw_stats_update(%struct.bxe_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bxe_softc*, align 8
  %4 = alloca %struct.nig_stats*, align 8
  %5 = alloca %struct.nig_stats*, align 8
  %6 = alloca %struct.host_port_stats*, align 8
  %7 = alloca %struct.bxe_eth_stats*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.anon, align 8
  store %struct.bxe_softc* %0, %struct.bxe_softc** %3, align 8
  %11 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %12 = load i32, i32* @nig_stats, align 4
  %13 = call i8* @BXE_SP(%struct.bxe_softc* %11, i32 %12)
  %14 = bitcast i8* %13 to %struct.nig_stats*
  store %struct.nig_stats* %14, %struct.nig_stats** %4, align 8
  %15 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %16 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %15, i32 0, i32 2
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  store %struct.nig_stats* %17, %struct.nig_stats** %5, align 8
  %18 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %19 = load i32, i32* @port_stats, align 4
  %20 = call i8* @BXE_SP(%struct.bxe_softc* %18, i32 %19)
  %21 = bitcast i8* %20 to %struct.host_port_stats*
  store %struct.host_port_stats* %21, %struct.host_port_stats** %6, align 8
  %22 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %23 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %22, i32 0, i32 1
  store %struct.bxe_eth_stats* %23, %struct.bxe_eth_stats** %7, align 8
  %24 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %25 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  switch i32 %27, label %41 [
    i32 132, label %28
    i32 131, label %31
    i32 129, label %34
    i32 128, label %34
    i32 130, label %37
  ]

28:                                               ; preds = %1
  %29 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %30 = call i32 @bxe_bmac_stats_update(%struct.bxe_softc* %29)
  br label %44

31:                                               ; preds = %1
  %32 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %33 = call i32 @bxe_emac_stats_update(%struct.bxe_softc* %32)
  br label %44

34:                                               ; preds = %1, %1
  %35 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %36 = call i32 @bxe_mstat_stats_update(%struct.bxe_softc* %35)
  br label %44

37:                                               ; preds = %1
  %38 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %39 = load i32, i32* @DBG_STATS, align 4
  %40 = call i32 @BLOGD(%struct.bxe_softc* %38, i32 %39, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %159

41:                                               ; preds = %1
  %42 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %43 = call i32 (%struct.bxe_softc*, i8*, ...) @BLOGE(%struct.bxe_softc* %42, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  br label %44

44:                                               ; preds = %41, %34, %31, %28
  %45 = load %struct.host_port_stats*, %struct.host_port_stats** %6, align 8
  %46 = getelementptr inbounds %struct.host_port_stats, %struct.host_port_stats* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.host_port_stats*, %struct.host_port_stats** %6, align 8
  %49 = getelementptr inbounds %struct.host_port_stats, %struct.host_port_stats* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.nig_stats*, %struct.nig_stats** %4, align 8
  %52 = getelementptr inbounds %struct.nig_stats, %struct.nig_stats* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = load %struct.nig_stats*, %struct.nig_stats** %5, align 8
  %55 = getelementptr inbounds %struct.nig_stats, %struct.nig_stats* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = sub nsw i64 %53, %56
  %58 = call i32 @ADD_EXTEND_64(i32 %47, i32 %50, i64 %57)
  %59 = load %struct.bxe_eth_stats*, %struct.bxe_eth_stats** %7, align 8
  %60 = getelementptr inbounds %struct.bxe_eth_stats, %struct.bxe_eth_stats* %59, i32 0, i32 6
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.bxe_eth_stats*, %struct.bxe_eth_stats** %7, align 8
  %63 = getelementptr inbounds %struct.bxe_eth_stats, %struct.bxe_eth_stats* %62, i32 0, i32 5
  %64 = load i32, i32* %63, align 8
  %65 = load %struct.nig_stats*, %struct.nig_stats** %4, align 8
  %66 = getelementptr inbounds %struct.nig_stats, %struct.nig_stats* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load %struct.nig_stats*, %struct.nig_stats** %5, align 8
  %69 = getelementptr inbounds %struct.nig_stats, %struct.nig_stats* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = sub nsw i64 %67, %70
  %72 = call i32 @ADD_EXTEND_64(i32 %61, i32 %64, i64 %71)
  %73 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %74 = call i64 @CHIP_IS_E3(%struct.bxe_softc* %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %83, label %76

76:                                               ; preds = %44
  %77 = load i32, i32* @egress_mac_pkt0, align 4
  %78 = load i32, i32* @etherstatspkts1024octetsto1522octets, align 4
  %79 = call i32 @UPDATE_STAT64_NIG(i32 %77, i32 %78)
  %80 = load i32, i32* @egress_mac_pkt1, align 4
  %81 = load i32, i32* @etherstatspktsover1522octets, align 4
  %82 = call i32 @UPDATE_STAT64_NIG(i32 %80, i32 %81)
  br label %83

83:                                               ; preds = %76, %44
  %84 = load %struct.nig_stats*, %struct.nig_stats** %5, align 8
  %85 = load %struct.nig_stats*, %struct.nig_stats** %4, align 8
  %86 = call i32 @memcpy(%struct.nig_stats* %84, %struct.nig_stats* %85, i32 16)
  %87 = load %struct.bxe_eth_stats*, %struct.bxe_eth_stats** %7, align 8
  %88 = getelementptr inbounds %struct.bxe_eth_stats, %struct.bxe_eth_stats* %87, i32 0, i32 4
  %89 = load %struct.host_port_stats*, %struct.host_port_stats** %6, align 8
  %90 = getelementptr inbounds %struct.host_port_stats, %struct.host_port_stats* %89, i32 0, i32 3
  %91 = load %struct.nig_stats*, %struct.nig_stats** %90, align 8
  %92 = getelementptr inbounds %struct.nig_stats, %struct.nig_stats* %91, i64 1
  %93 = call i32 @memcpy(%struct.nig_stats* %88, %struct.nig_stats* %92, i32 4)
  %94 = load %struct.host_port_stats*, %struct.host_port_stats** %6, align 8
  %95 = getelementptr inbounds %struct.host_port_stats, %struct.host_port_stats* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 8
  %97 = load %struct.bxe_eth_stats*, %struct.bxe_eth_stats** %7, align 8
  %98 = getelementptr inbounds %struct.bxe_eth_stats, %struct.bxe_eth_stats* %97, i32 0, i32 3
  store i32 %96, i32* %98, align 8
  %99 = load %struct.host_port_stats*, %struct.host_port_stats** %6, align 8
  %100 = getelementptr inbounds %struct.host_port_stats, %struct.host_port_stats* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.bxe_eth_stats*, %struct.bxe_eth_stats** %7, align 8
  %103 = getelementptr inbounds %struct.bxe_eth_stats, %struct.bxe_eth_stats* %102, i32 0, i32 2
  store i32 %101, i32* %103, align 4
  %104 = load %struct.host_port_stats*, %struct.host_port_stats** %6, align 8
  %105 = getelementptr inbounds %struct.host_port_stats, %struct.host_port_stats* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %105, align 8
  %108 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %109 = call i64 @CHIP_IS_E3(%struct.bxe_softc* %108)
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %130

111:                                              ; preds = %83
  %112 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %113 = call i64 @SC_PORT(%struct.bxe_softc* %112)
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %117

115:                                              ; preds = %111
  %116 = load i64, i64* @MISC_REG_CPMU_LP_SM_ENT_CNT_P1, align 8
  br label %119

117:                                              ; preds = %111
  %118 = load i64, i64* @MISC_REG_CPMU_LP_SM_ENT_CNT_P0, align 8
  br label %119

119:                                              ; preds = %117, %115
  %120 = phi i64 [ %116, %115 ], [ %118, %117 ]
  store i64 %120, i64* %8, align 8
  %121 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %122 = load i64, i64* %8, align 8
  %123 = call i64 @REG_RD(%struct.bxe_softc* %121, i64 %122)
  %124 = load %struct.bxe_eth_stats*, %struct.bxe_eth_stats** %7, align 8
  %125 = getelementptr inbounds %struct.bxe_eth_stats, %struct.bxe_eth_stats* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 8
  %127 = sext i32 %126 to i64
  %128 = add nsw i64 %127, %123
  %129 = trunc i64 %128 to i32
  store i32 %129, i32* %125, align 8
  br label %130

130:                                              ; preds = %119, %83
  %131 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %132 = call i32 @BXE_NOMCP(%struct.bxe_softc* %131)
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %158, label %134

134:                                              ; preds = %130
  %135 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %136 = load %struct.TYPE_6__*, %struct.TYPE_6__** @port_mb, align 8
  %137 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %138 = call i64 @SC_PORT(%struct.bxe_softc* %137)
  %139 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %136, i64 %138
  %140 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 4
  %142 = call i64 @SHMEM_RD(%struct.bxe_softc* %135, i32 %141)
  store i64 %142, i64* %9, align 8
  %143 = load i64, i64* %9, align 8
  %144 = load %struct.bxe_eth_stats*, %struct.bxe_eth_stats** %7, align 8
  %145 = getelementptr inbounds %struct.bxe_eth_stats, %struct.bxe_eth_stats* %144, i32 0, i32 0
  %146 = load i64, i64* %145, align 8
  %147 = icmp ne i64 %143, %146
  br i1 %147, label %148, label %157

148:                                              ; preds = %134
  %149 = load i64, i64* %9, align 8
  %150 = load %struct.bxe_eth_stats*, %struct.bxe_eth_stats** %7, align 8
  %151 = getelementptr inbounds %struct.bxe_eth_stats, %struct.bxe_eth_stats* %150, i32 0, i32 0
  store i64 %149, i64* %151, align 8
  %152 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %153 = load %struct.bxe_eth_stats*, %struct.bxe_eth_stats** %7, align 8
  %154 = getelementptr inbounds %struct.bxe_eth_stats, %struct.bxe_eth_stats* %153, i32 0, i32 0
  %155 = load i64, i64* %154, align 8
  %156 = call i32 (%struct.bxe_softc*, i8*, ...) @BLOGE(%struct.bxe_softc* %152, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i64 %155)
  br label %157

157:                                              ; preds = %148, %134
  br label %158

158:                                              ; preds = %157, %130
  store i32 0, i32* %2, align 4
  br label %159

159:                                              ; preds = %158, %37
  %160 = load i32, i32* %2, align 4
  ret i32 %160
}

declare dso_local i8* @BXE_SP(%struct.bxe_softc*, i32) #1

declare dso_local i32 @bxe_bmac_stats_update(%struct.bxe_softc*) #1

declare dso_local i32 @bxe_emac_stats_update(%struct.bxe_softc*) #1

declare dso_local i32 @bxe_mstat_stats_update(%struct.bxe_softc*) #1

declare dso_local i32 @BLOGD(%struct.bxe_softc*, i32, i8*) #1

declare dso_local i32 @BLOGE(%struct.bxe_softc*, i8*, ...) #1

declare dso_local i32 @ADD_EXTEND_64(i32, i32, i64) #1

declare dso_local i64 @CHIP_IS_E3(%struct.bxe_softc*) #1

declare dso_local i32 @UPDATE_STAT64_NIG(i32, i32) #1

declare dso_local i32 @memcpy(%struct.nig_stats*, %struct.nig_stats*, i32) #1

declare dso_local i64 @SC_PORT(%struct.bxe_softc*) #1

declare dso_local i64 @REG_RD(%struct.bxe_softc*, i64) #1

declare dso_local i32 @BXE_NOMCP(%struct.bxe_softc*) #1

declare dso_local i64 @SHMEM_RD(%struct.bxe_softc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
