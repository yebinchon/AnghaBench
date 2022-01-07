; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/gem/extr_if_gem.c_gem_init_regs.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/gem/extr_if_gem.c_gem_init_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gem_softc = type { i32, i32 }

@MA_OWNED = common dso_local global i32 0, align 4
@GEM_INITED = common dso_local global i32 0, align 4
@GEM_MAC_IPG0 = common dso_local global i32 0, align 4
@GEM_MAC_IPG1 = common dso_local global i32 0, align 4
@GEM_MAC_IPG2 = common dso_local global i32 0, align 4
@GEM_MAC_MAC_MIN_FRAME = common dso_local global i32 0, align 4
@ETHER_MIN_LEN = common dso_local global i32 0, align 4
@GEM_MAC_MAC_MAX_FRAME = common dso_local global i32 0, align 4
@ETHER_MAX_LEN = common dso_local global i32 0, align 4
@ETHER_VLAN_ENCAP_LEN = common dso_local global i32 0, align 4
@GEM_MAC_PREAMBLE_LEN = common dso_local global i32 0, align 4
@GEM_MAC_JAM_SIZE = common dso_local global i32 0, align 4
@GEM_MAC_ATTEMPT_LIMIT = common dso_local global i32 0, align 4
@GEM_MAC_CONTROL_TYPE = common dso_local global i32 0, align 4
@GEM_MAC_RANDOM_SEED = common dso_local global i32 0, align 4
@GEM_MAC_ADDR3 = common dso_local global i32 0, align 4
@GEM_MAC_ADDR4 = common dso_local global i32 0, align 4
@GEM_MAC_ADDR5 = common dso_local global i32 0, align 4
@GEM_MAC_ADDR6 = common dso_local global i32 0, align 4
@GEM_MAC_ADDR7 = common dso_local global i32 0, align 4
@GEM_MAC_ADDR8 = common dso_local global i32 0, align 4
@GEM_MAC_ADDR_FILTER0 = common dso_local global i32 0, align 4
@GEM_MAC_ADDR_FILTER1 = common dso_local global i32 0, align 4
@GEM_MAC_ADDR_FILTER2 = common dso_local global i32 0, align 4
@GEM_MAC_ADR_FLT_MASK1_2 = common dso_local global i32 0, align 4
@GEM_MAC_ADR_FLT_MASK0 = common dso_local global i32 0, align 4
@GEM_MAC_NORM_COLL_CNT = common dso_local global i32 0, align 4
@GEM_MAC_FIRST_COLL_CNT = common dso_local global i32 0, align 4
@GEM_MAC_EXCESS_COLL_CNT = common dso_local global i32 0, align 4
@GEM_MAC_LATE_COLL_CNT = common dso_local global i32 0, align 4
@GEM_MAC_DEFER_TMR_CNT = common dso_local global i32 0, align 4
@GEM_MAC_PEAK_ATTEMPTS = common dso_local global i32 0, align 4
@GEM_MAC_RX_FRAME_COUNT = common dso_local global i32 0, align 4
@GEM_MAC_RX_LEN_ERR_CNT = common dso_local global i32 0, align 4
@GEM_MAC_RX_ALIGN_ERR = common dso_local global i32 0, align 4
@GEM_MAC_RX_CRC_ERR_CNT = common dso_local global i32 0, align 4
@GEM_MAC_RX_CODE_VIOL = common dso_local global i32 0, align 4
@GEM_MAC_SEND_PAUSE_CMD = common dso_local global i32 0, align 4
@GEM_MAC_ADDR0 = common dso_local global i32 0, align 4
@GEM_MAC_ADDR1 = common dso_local global i32 0, align 4
@GEM_MAC_ADDR2 = common dso_local global i32 0, align 4
@GEM_MAC_XIF_CONFIG = common dso_local global i32 0, align 4
@GEM_MAC_XIF_TX_MII_ENA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gem_softc*)* @gem_init_regs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gem_init_regs(%struct.gem_softc* %0) #0 {
  %2 = alloca %struct.gem_softc*, align 8
  %3 = alloca i32*, align 8
  store %struct.gem_softc* %0, %struct.gem_softc** %2, align 8
  %4 = load %struct.gem_softc*, %struct.gem_softc** %2, align 8
  %5 = getelementptr inbounds %struct.gem_softc, %struct.gem_softc* %4, i32 0, i32 1
  %6 = load i32, i32* %5, align 4
  %7 = call i32* @IF_LLADDR(i32 %6)
  store i32* %7, i32** %3, align 8
  %8 = load %struct.gem_softc*, %struct.gem_softc** %2, align 8
  %9 = load i32, i32* @MA_OWNED, align 4
  %10 = call i32 @GEM_LOCK_ASSERT(%struct.gem_softc* %8, i32 %9)
  %11 = load %struct.gem_softc*, %struct.gem_softc** %2, align 8
  %12 = getelementptr inbounds %struct.gem_softc, %struct.gem_softc* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @GEM_INITED, align 4
  %15 = and i32 %13, %14
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %100

17:                                               ; preds = %1
  %18 = load %struct.gem_softc*, %struct.gem_softc** %2, align 8
  %19 = load i32, i32* @GEM_MAC_IPG0, align 4
  %20 = call i32 @GEM_BANK1_WRITE_4(%struct.gem_softc* %18, i32 %19, i32 0)
  %21 = load %struct.gem_softc*, %struct.gem_softc** %2, align 8
  %22 = load i32, i32* @GEM_MAC_IPG1, align 4
  %23 = call i32 @GEM_BANK1_WRITE_4(%struct.gem_softc* %21, i32 %22, i32 8)
  %24 = load %struct.gem_softc*, %struct.gem_softc** %2, align 8
  %25 = load i32, i32* @GEM_MAC_IPG2, align 4
  %26 = call i32 @GEM_BANK1_WRITE_4(%struct.gem_softc* %24, i32 %25, i32 4)
  %27 = load %struct.gem_softc*, %struct.gem_softc** %2, align 8
  %28 = load i32, i32* @GEM_MAC_MAC_MIN_FRAME, align 4
  %29 = load i32, i32* @ETHER_MIN_LEN, align 4
  %30 = call i32 @GEM_BANK1_WRITE_4(%struct.gem_softc* %27, i32 %28, i32 %29)
  %31 = load %struct.gem_softc*, %struct.gem_softc** %2, align 8
  %32 = load i32, i32* @GEM_MAC_MAC_MAX_FRAME, align 4
  %33 = load i32, i32* @ETHER_MAX_LEN, align 4
  %34 = load i32, i32* @ETHER_VLAN_ENCAP_LEN, align 4
  %35 = add nsw i32 %33, %34
  %36 = or i32 %35, 536870912
  %37 = call i32 @GEM_BANK1_WRITE_4(%struct.gem_softc* %31, i32 %32, i32 %36)
  %38 = load %struct.gem_softc*, %struct.gem_softc** %2, align 8
  %39 = load i32, i32* @GEM_MAC_PREAMBLE_LEN, align 4
  %40 = call i32 @GEM_BANK1_WRITE_4(%struct.gem_softc* %38, i32 %39, i32 7)
  %41 = load %struct.gem_softc*, %struct.gem_softc** %2, align 8
  %42 = load i32, i32* @GEM_MAC_JAM_SIZE, align 4
  %43 = call i32 @GEM_BANK1_WRITE_4(%struct.gem_softc* %41, i32 %42, i32 4)
  %44 = load %struct.gem_softc*, %struct.gem_softc** %2, align 8
  %45 = load i32, i32* @GEM_MAC_ATTEMPT_LIMIT, align 4
  %46 = call i32 @GEM_BANK1_WRITE_4(%struct.gem_softc* %44, i32 %45, i32 16)
  %47 = load %struct.gem_softc*, %struct.gem_softc** %2, align 8
  %48 = load i32, i32* @GEM_MAC_CONTROL_TYPE, align 4
  %49 = call i32 @GEM_BANK1_WRITE_4(%struct.gem_softc* %47, i32 %48, i32 34824)
  %50 = load %struct.gem_softc*, %struct.gem_softc** %2, align 8
  %51 = load i32, i32* @GEM_MAC_RANDOM_SEED, align 4
  %52 = load i32*, i32** %3, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 5
  %54 = load i32, i32* %53, align 4
  %55 = shl i32 %54, 8
  %56 = load i32*, i32** %3, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 4
  %58 = load i32, i32* %57, align 4
  %59 = or i32 %55, %58
  %60 = and i32 %59, 1023
  %61 = call i32 @GEM_BANK1_WRITE_4(%struct.gem_softc* %50, i32 %51, i32 %60)
  %62 = load %struct.gem_softc*, %struct.gem_softc** %2, align 8
  %63 = load i32, i32* @GEM_MAC_ADDR3, align 4
  %64 = call i32 @GEM_BANK1_WRITE_4(%struct.gem_softc* %62, i32 %63, i32 0)
  %65 = load %struct.gem_softc*, %struct.gem_softc** %2, align 8
  %66 = load i32, i32* @GEM_MAC_ADDR4, align 4
  %67 = call i32 @GEM_BANK1_WRITE_4(%struct.gem_softc* %65, i32 %66, i32 0)
  %68 = load %struct.gem_softc*, %struct.gem_softc** %2, align 8
  %69 = load i32, i32* @GEM_MAC_ADDR5, align 4
  %70 = call i32 @GEM_BANK1_WRITE_4(%struct.gem_softc* %68, i32 %69, i32 0)
  %71 = load %struct.gem_softc*, %struct.gem_softc** %2, align 8
  %72 = load i32, i32* @GEM_MAC_ADDR6, align 4
  %73 = call i32 @GEM_BANK1_WRITE_4(%struct.gem_softc* %71, i32 %72, i32 1)
  %74 = load %struct.gem_softc*, %struct.gem_softc** %2, align 8
  %75 = load i32, i32* @GEM_MAC_ADDR7, align 4
  %76 = call i32 @GEM_BANK1_WRITE_4(%struct.gem_softc* %74, i32 %75, i32 49664)
  %77 = load %struct.gem_softc*, %struct.gem_softc** %2, align 8
  %78 = load i32, i32* @GEM_MAC_ADDR8, align 4
  %79 = call i32 @GEM_BANK1_WRITE_4(%struct.gem_softc* %77, i32 %78, i32 384)
  %80 = load %struct.gem_softc*, %struct.gem_softc** %2, align 8
  %81 = load i32, i32* @GEM_MAC_ADDR_FILTER0, align 4
  %82 = call i32 @GEM_BANK1_WRITE_4(%struct.gem_softc* %80, i32 %81, i32 0)
  %83 = load %struct.gem_softc*, %struct.gem_softc** %2, align 8
  %84 = load i32, i32* @GEM_MAC_ADDR_FILTER1, align 4
  %85 = call i32 @GEM_BANK1_WRITE_4(%struct.gem_softc* %83, i32 %84, i32 0)
  %86 = load %struct.gem_softc*, %struct.gem_softc** %2, align 8
  %87 = load i32, i32* @GEM_MAC_ADDR_FILTER2, align 4
  %88 = call i32 @GEM_BANK1_WRITE_4(%struct.gem_softc* %86, i32 %87, i32 0)
  %89 = load %struct.gem_softc*, %struct.gem_softc** %2, align 8
  %90 = load i32, i32* @GEM_MAC_ADR_FLT_MASK1_2, align 4
  %91 = call i32 @GEM_BANK1_WRITE_4(%struct.gem_softc* %89, i32 %90, i32 0)
  %92 = load %struct.gem_softc*, %struct.gem_softc** %2, align 8
  %93 = load i32, i32* @GEM_MAC_ADR_FLT_MASK0, align 4
  %94 = call i32 @GEM_BANK1_WRITE_4(%struct.gem_softc* %92, i32 %93, i32 0)
  %95 = load i32, i32* @GEM_INITED, align 4
  %96 = load %struct.gem_softc*, %struct.gem_softc** %2, align 8
  %97 = getelementptr inbounds %struct.gem_softc, %struct.gem_softc* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = or i32 %98, %95
  store i32 %99, i32* %97, align 4
  br label %100

100:                                              ; preds = %17, %1
  %101 = load %struct.gem_softc*, %struct.gem_softc** %2, align 8
  %102 = load i32, i32* @GEM_MAC_NORM_COLL_CNT, align 4
  %103 = call i32 @GEM_BANK1_WRITE_4(%struct.gem_softc* %101, i32 %102, i32 0)
  %104 = load %struct.gem_softc*, %struct.gem_softc** %2, align 8
  %105 = load i32, i32* @GEM_MAC_FIRST_COLL_CNT, align 4
  %106 = call i32 @GEM_BANK1_WRITE_4(%struct.gem_softc* %104, i32 %105, i32 0)
  %107 = load %struct.gem_softc*, %struct.gem_softc** %2, align 8
  %108 = load i32, i32* @GEM_MAC_EXCESS_COLL_CNT, align 4
  %109 = call i32 @GEM_BANK1_WRITE_4(%struct.gem_softc* %107, i32 %108, i32 0)
  %110 = load %struct.gem_softc*, %struct.gem_softc** %2, align 8
  %111 = load i32, i32* @GEM_MAC_LATE_COLL_CNT, align 4
  %112 = call i32 @GEM_BANK1_WRITE_4(%struct.gem_softc* %110, i32 %111, i32 0)
  %113 = load %struct.gem_softc*, %struct.gem_softc** %2, align 8
  %114 = load i32, i32* @GEM_MAC_DEFER_TMR_CNT, align 4
  %115 = call i32 @GEM_BANK1_WRITE_4(%struct.gem_softc* %113, i32 %114, i32 0)
  %116 = load %struct.gem_softc*, %struct.gem_softc** %2, align 8
  %117 = load i32, i32* @GEM_MAC_PEAK_ATTEMPTS, align 4
  %118 = call i32 @GEM_BANK1_WRITE_4(%struct.gem_softc* %116, i32 %117, i32 0)
  %119 = load %struct.gem_softc*, %struct.gem_softc** %2, align 8
  %120 = load i32, i32* @GEM_MAC_RX_FRAME_COUNT, align 4
  %121 = call i32 @GEM_BANK1_WRITE_4(%struct.gem_softc* %119, i32 %120, i32 0)
  %122 = load %struct.gem_softc*, %struct.gem_softc** %2, align 8
  %123 = load i32, i32* @GEM_MAC_RX_LEN_ERR_CNT, align 4
  %124 = call i32 @GEM_BANK1_WRITE_4(%struct.gem_softc* %122, i32 %123, i32 0)
  %125 = load %struct.gem_softc*, %struct.gem_softc** %2, align 8
  %126 = load i32, i32* @GEM_MAC_RX_ALIGN_ERR, align 4
  %127 = call i32 @GEM_BANK1_WRITE_4(%struct.gem_softc* %125, i32 %126, i32 0)
  %128 = load %struct.gem_softc*, %struct.gem_softc** %2, align 8
  %129 = load i32, i32* @GEM_MAC_RX_CRC_ERR_CNT, align 4
  %130 = call i32 @GEM_BANK1_WRITE_4(%struct.gem_softc* %128, i32 %129, i32 0)
  %131 = load %struct.gem_softc*, %struct.gem_softc** %2, align 8
  %132 = load i32, i32* @GEM_MAC_RX_CODE_VIOL, align 4
  %133 = call i32 @GEM_BANK1_WRITE_4(%struct.gem_softc* %131, i32 %132, i32 0)
  %134 = load %struct.gem_softc*, %struct.gem_softc** %2, align 8
  %135 = load i32, i32* @GEM_MAC_SEND_PAUSE_CMD, align 4
  %136 = call i32 @GEM_BANK1_WRITE_4(%struct.gem_softc* %134, i32 %135, i32 7152)
  %137 = load %struct.gem_softc*, %struct.gem_softc** %2, align 8
  %138 = load i32, i32* @GEM_MAC_ADDR0, align 4
  %139 = load i32*, i32** %3, align 8
  %140 = getelementptr inbounds i32, i32* %139, i64 4
  %141 = load i32, i32* %140, align 4
  %142 = shl i32 %141, 8
  %143 = load i32*, i32** %3, align 8
  %144 = getelementptr inbounds i32, i32* %143, i64 5
  %145 = load i32, i32* %144, align 4
  %146 = or i32 %142, %145
  %147 = call i32 @GEM_BANK1_WRITE_4(%struct.gem_softc* %137, i32 %138, i32 %146)
  %148 = load %struct.gem_softc*, %struct.gem_softc** %2, align 8
  %149 = load i32, i32* @GEM_MAC_ADDR1, align 4
  %150 = load i32*, i32** %3, align 8
  %151 = getelementptr inbounds i32, i32* %150, i64 2
  %152 = load i32, i32* %151, align 4
  %153 = shl i32 %152, 8
  %154 = load i32*, i32** %3, align 8
  %155 = getelementptr inbounds i32, i32* %154, i64 3
  %156 = load i32, i32* %155, align 4
  %157 = or i32 %153, %156
  %158 = call i32 @GEM_BANK1_WRITE_4(%struct.gem_softc* %148, i32 %149, i32 %157)
  %159 = load %struct.gem_softc*, %struct.gem_softc** %2, align 8
  %160 = load i32, i32* @GEM_MAC_ADDR2, align 4
  %161 = load i32*, i32** %3, align 8
  %162 = getelementptr inbounds i32, i32* %161, i64 0
  %163 = load i32, i32* %162, align 4
  %164 = shl i32 %163, 8
  %165 = load i32*, i32** %3, align 8
  %166 = getelementptr inbounds i32, i32* %165, i64 1
  %167 = load i32, i32* %166, align 4
  %168 = or i32 %164, %167
  %169 = call i32 @GEM_BANK1_WRITE_4(%struct.gem_softc* %159, i32 %160, i32 %168)
  %170 = load %struct.gem_softc*, %struct.gem_softc** %2, align 8
  %171 = load i32, i32* @GEM_MAC_XIF_CONFIG, align 4
  %172 = load i32, i32* @GEM_MAC_XIF_TX_MII_ENA, align 4
  %173 = call i32 @GEM_BANK1_WRITE_4(%struct.gem_softc* %170, i32 %171, i32 %172)
  ret void
}

declare dso_local i32* @IF_LLADDR(i32) #1

declare dso_local i32 @GEM_LOCK_ASSERT(%struct.gem_softc*, i32) #1

declare dso_local i32 @GEM_BANK1_WRITE_4(%struct.gem_softc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
