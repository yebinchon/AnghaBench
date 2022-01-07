; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cas/extr_if_cas.c_cas_init_regs.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cas/extr_if_cas.c_cas_init_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cas_softc = type { i32, i32 }

@MA_OWNED = common dso_local global i32 0, align 4
@CAS_INITED = common dso_local global i32 0, align 4
@CAS_MAC_IPG0 = common dso_local global i32 0, align 4
@CAS_MAC_IPG1 = common dso_local global i32 0, align 4
@CAS_MAC_IPG2 = common dso_local global i32 0, align 4
@CAS_MAC_MIN_FRAME = common dso_local global i32 0, align 4
@ETHER_MIN_LEN = common dso_local global i32 0, align 4
@CAS_MAC_MAX_BF = common dso_local global i32 0, align 4
@ETHER_MAX_LEN_JUMBO = common dso_local global i32 0, align 4
@ETHER_VLAN_ENCAP_LEN = common dso_local global i32 0, align 4
@CAS_MAC_MAX_BF_FRM_SHFT = common dso_local global i32 0, align 4
@CAS_MAC_MAX_BF_BST_SHFT = common dso_local global i32 0, align 4
@CAS_MAC_PREAMBLE_LEN = common dso_local global i32 0, align 4
@CAS_MAC_JAM_SIZE = common dso_local global i32 0, align 4
@CAS_MAC_ATTEMPT_LIMIT = common dso_local global i32 0, align 4
@CAS_MAC_CTRL_TYPE = common dso_local global i32 0, align 4
@CAS_MAC_RANDOM_SEED = common dso_local global i32 0, align 4
@CAS_MAC_ADDR3 = common dso_local global i32 0, align 4
@CAS_MAC_ADDR41 = common dso_local global i32 0, align 4
@CAS_MAC_ADDR4 = common dso_local global i32 0, align 4
@CAS_MAC_ADDR42 = common dso_local global i32 0, align 4
@CAS_MAC_ADDR43 = common dso_local global i32 0, align 4
@CAS_MAC_ADDR44 = common dso_local global i32 0, align 4
@CAS_MAC_AFILTER0 = common dso_local global i32 0, align 4
@CAS_MAC_AFILTER1 = common dso_local global i32 0, align 4
@CAS_MAC_AFILTER2 = common dso_local global i32 0, align 4
@CAS_MAC_AFILTER_MASK1_2 = common dso_local global i32 0, align 4
@CAS_MAC_AFILTER_MASK0 = common dso_local global i32 0, align 4
@CAS_MAC_HASH0 = common dso_local global i32 0, align 4
@CAS_MAC_HASH15 = common dso_local global i32 0, align 4
@CAS_MAC_HASH1 = common dso_local global i32 0, align 4
@CAS_MAC_NORM_COLL_CNT = common dso_local global i32 0, align 4
@CAS_MAC_FIRST_COLL_CNT = common dso_local global i32 0, align 4
@CAS_MAC_EXCESS_COLL_CNT = common dso_local global i32 0, align 4
@CAS_MAC_LATE_COLL_CNT = common dso_local global i32 0, align 4
@CAS_MAC_DEFER_TMR_CNT = common dso_local global i32 0, align 4
@CAS_MAC_PEAK_ATTEMPTS = common dso_local global i32 0, align 4
@CAS_MAC_RX_FRAME_COUNT = common dso_local global i32 0, align 4
@CAS_MAC_RX_LEN_ERR_CNT = common dso_local global i32 0, align 4
@CAS_MAC_RX_ALIGN_ERR = common dso_local global i32 0, align 4
@CAS_MAC_RX_CRC_ERR_CNT = common dso_local global i32 0, align 4
@CAS_MAC_RX_CODE_VIOL = common dso_local global i32 0, align 4
@CAS_MAC_SPC = common dso_local global i32 0, align 4
@CAS_MAC_SPC_TIME_SHFT = common dso_local global i32 0, align 4
@CAS_MAC_ADDR0 = common dso_local global i32 0, align 4
@CAS_MAC_ADDR1 = common dso_local global i32 0, align 4
@CAS_MAC_ADDR2 = common dso_local global i32 0, align 4
@CAS_MAC_XIF_CONF = common dso_local global i32 0, align 4
@CAS_MAC_XIF_CONF_TX_OE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cas_softc*)* @cas_init_regs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cas_init_regs(%struct.cas_softc* %0) #0 {
  %2 = alloca %struct.cas_softc*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  store %struct.cas_softc* %0, %struct.cas_softc** %2, align 8
  %5 = load %struct.cas_softc*, %struct.cas_softc** %2, align 8
  %6 = getelementptr inbounds %struct.cas_softc, %struct.cas_softc* %5, i32 0, i32 1
  %7 = load i32, i32* %6, align 4
  %8 = call i32* @IF_LLADDR(i32 %7)
  store i32* %8, i32** %4, align 8
  %9 = load %struct.cas_softc*, %struct.cas_softc** %2, align 8
  %10 = load i32, i32* @MA_OWNED, align 4
  %11 = call i32 @CAS_LOCK_ASSERT(%struct.cas_softc* %9, i32 %10)
  %12 = load %struct.cas_softc*, %struct.cas_softc** %2, align 8
  %13 = getelementptr inbounds %struct.cas_softc, %struct.cas_softc* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @CAS_INITED, align 4
  %16 = and i32 %14, %15
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %128

18:                                               ; preds = %1
  %19 = load %struct.cas_softc*, %struct.cas_softc** %2, align 8
  %20 = load i32, i32* @CAS_MAC_IPG0, align 4
  %21 = call i32 @CAS_WRITE_4(%struct.cas_softc* %19, i32 %20, i32 0)
  %22 = load %struct.cas_softc*, %struct.cas_softc** %2, align 8
  %23 = load i32, i32* @CAS_MAC_IPG1, align 4
  %24 = call i32 @CAS_WRITE_4(%struct.cas_softc* %22, i32 %23, i32 8)
  %25 = load %struct.cas_softc*, %struct.cas_softc** %2, align 8
  %26 = load i32, i32* @CAS_MAC_IPG2, align 4
  %27 = call i32 @CAS_WRITE_4(%struct.cas_softc* %25, i32 %26, i32 4)
  %28 = load %struct.cas_softc*, %struct.cas_softc** %2, align 8
  %29 = load i32, i32* @CAS_MAC_MIN_FRAME, align 4
  %30 = load i32, i32* @ETHER_MIN_LEN, align 4
  %31 = call i32 @CAS_WRITE_4(%struct.cas_softc* %28, i32 %29, i32 %30)
  %32 = load %struct.cas_softc*, %struct.cas_softc** %2, align 8
  %33 = load i32, i32* @CAS_MAC_MAX_BF, align 4
  %34 = load i32, i32* @ETHER_MAX_LEN_JUMBO, align 4
  %35 = load i32, i32* @ETHER_VLAN_ENCAP_LEN, align 4
  %36 = add nsw i32 %34, %35
  %37 = load i32, i32* @CAS_MAC_MAX_BF_FRM_SHFT, align 4
  %38 = shl i32 %36, %37
  %39 = load i32, i32* @CAS_MAC_MAX_BF_BST_SHFT, align 4
  %40 = shl i32 8192, %39
  %41 = or i32 %38, %40
  %42 = call i32 @CAS_WRITE_4(%struct.cas_softc* %32, i32 %33, i32 %41)
  %43 = load %struct.cas_softc*, %struct.cas_softc** %2, align 8
  %44 = load i32, i32* @CAS_MAC_PREAMBLE_LEN, align 4
  %45 = call i32 @CAS_WRITE_4(%struct.cas_softc* %43, i32 %44, i32 7)
  %46 = load %struct.cas_softc*, %struct.cas_softc** %2, align 8
  %47 = load i32, i32* @CAS_MAC_JAM_SIZE, align 4
  %48 = call i32 @CAS_WRITE_4(%struct.cas_softc* %46, i32 %47, i32 4)
  %49 = load %struct.cas_softc*, %struct.cas_softc** %2, align 8
  %50 = load i32, i32* @CAS_MAC_ATTEMPT_LIMIT, align 4
  %51 = call i32 @CAS_WRITE_4(%struct.cas_softc* %49, i32 %50, i32 16)
  %52 = load %struct.cas_softc*, %struct.cas_softc** %2, align 8
  %53 = load i32, i32* @CAS_MAC_CTRL_TYPE, align 4
  %54 = call i32 @CAS_WRITE_4(%struct.cas_softc* %52, i32 %53, i32 34824)
  %55 = load %struct.cas_softc*, %struct.cas_softc** %2, align 8
  %56 = load i32, i32* @CAS_MAC_RANDOM_SEED, align 4
  %57 = load i32*, i32** %4, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 5
  %59 = load i32, i32* %58, align 4
  %60 = shl i32 %59, 8
  %61 = load i32*, i32** %4, align 8
  %62 = getelementptr inbounds i32, i32* %61, i64 4
  %63 = load i32, i32* %62, align 4
  %64 = or i32 %60, %63
  %65 = and i32 %64, 1023
  %66 = call i32 @CAS_WRITE_4(%struct.cas_softc* %55, i32 %56, i32 %65)
  %67 = load i32, i32* @CAS_MAC_ADDR3, align 4
  store i32 %67, i32* %3, align 4
  br label %68

68:                                               ; preds = %76, %18
  %69 = load i32, i32* %3, align 4
  %70 = load i32, i32* @CAS_MAC_ADDR41, align 4
  %71 = icmp sle i32 %69, %70
  br i1 %71, label %72, label %82

72:                                               ; preds = %68
  %73 = load %struct.cas_softc*, %struct.cas_softc** %2, align 8
  %74 = load i32, i32* %3, align 4
  %75 = call i32 @CAS_WRITE_4(%struct.cas_softc* %73, i32 %74, i32 0)
  br label %76

76:                                               ; preds = %72
  %77 = load i32, i32* @CAS_MAC_ADDR4, align 4
  %78 = load i32, i32* @CAS_MAC_ADDR3, align 4
  %79 = sub nsw i32 %77, %78
  %80 = load i32, i32* %3, align 4
  %81 = add nsw i32 %80, %79
  store i32 %81, i32* %3, align 4
  br label %68

82:                                               ; preds = %68
  %83 = load %struct.cas_softc*, %struct.cas_softc** %2, align 8
  %84 = load i32, i32* @CAS_MAC_ADDR42, align 4
  %85 = call i32 @CAS_WRITE_4(%struct.cas_softc* %83, i32 %84, i32 1)
  %86 = load %struct.cas_softc*, %struct.cas_softc** %2, align 8
  %87 = load i32, i32* @CAS_MAC_ADDR43, align 4
  %88 = call i32 @CAS_WRITE_4(%struct.cas_softc* %86, i32 %87, i32 49664)
  %89 = load %struct.cas_softc*, %struct.cas_softc** %2, align 8
  %90 = load i32, i32* @CAS_MAC_ADDR44, align 4
  %91 = call i32 @CAS_WRITE_4(%struct.cas_softc* %89, i32 %90, i32 384)
  %92 = load %struct.cas_softc*, %struct.cas_softc** %2, align 8
  %93 = load i32, i32* @CAS_MAC_AFILTER0, align 4
  %94 = call i32 @CAS_WRITE_4(%struct.cas_softc* %92, i32 %93, i32 0)
  %95 = load %struct.cas_softc*, %struct.cas_softc** %2, align 8
  %96 = load i32, i32* @CAS_MAC_AFILTER1, align 4
  %97 = call i32 @CAS_WRITE_4(%struct.cas_softc* %95, i32 %96, i32 0)
  %98 = load %struct.cas_softc*, %struct.cas_softc** %2, align 8
  %99 = load i32, i32* @CAS_MAC_AFILTER2, align 4
  %100 = call i32 @CAS_WRITE_4(%struct.cas_softc* %98, i32 %99, i32 0)
  %101 = load %struct.cas_softc*, %struct.cas_softc** %2, align 8
  %102 = load i32, i32* @CAS_MAC_AFILTER_MASK1_2, align 4
  %103 = call i32 @CAS_WRITE_4(%struct.cas_softc* %101, i32 %102, i32 0)
  %104 = load %struct.cas_softc*, %struct.cas_softc** %2, align 8
  %105 = load i32, i32* @CAS_MAC_AFILTER_MASK0, align 4
  %106 = call i32 @CAS_WRITE_4(%struct.cas_softc* %104, i32 %105, i32 0)
  %107 = load i32, i32* @CAS_MAC_HASH0, align 4
  store i32 %107, i32* %3, align 4
  br label %108

108:                                              ; preds = %116, %82
  %109 = load i32, i32* %3, align 4
  %110 = load i32, i32* @CAS_MAC_HASH15, align 4
  %111 = icmp sle i32 %109, %110
  br i1 %111, label %112, label %122

112:                                              ; preds = %108
  %113 = load %struct.cas_softc*, %struct.cas_softc** %2, align 8
  %114 = load i32, i32* %3, align 4
  %115 = call i32 @CAS_WRITE_4(%struct.cas_softc* %113, i32 %114, i32 0)
  br label %116

116:                                              ; preds = %112
  %117 = load i32, i32* @CAS_MAC_HASH1, align 4
  %118 = load i32, i32* @CAS_MAC_HASH0, align 4
  %119 = sub nsw i32 %117, %118
  %120 = load i32, i32* %3, align 4
  %121 = add nsw i32 %120, %119
  store i32 %121, i32* %3, align 4
  br label %108

122:                                              ; preds = %108
  %123 = load i32, i32* @CAS_INITED, align 4
  %124 = load %struct.cas_softc*, %struct.cas_softc** %2, align 8
  %125 = getelementptr inbounds %struct.cas_softc, %struct.cas_softc* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = or i32 %126, %123
  store i32 %127, i32* %125, align 4
  br label %128

128:                                              ; preds = %122, %1
  %129 = load %struct.cas_softc*, %struct.cas_softc** %2, align 8
  %130 = load i32, i32* @CAS_MAC_NORM_COLL_CNT, align 4
  %131 = call i32 @CAS_WRITE_4(%struct.cas_softc* %129, i32 %130, i32 0)
  %132 = load %struct.cas_softc*, %struct.cas_softc** %2, align 8
  %133 = load i32, i32* @CAS_MAC_FIRST_COLL_CNT, align 4
  %134 = call i32 @CAS_WRITE_4(%struct.cas_softc* %132, i32 %133, i32 0)
  %135 = load %struct.cas_softc*, %struct.cas_softc** %2, align 8
  %136 = load i32, i32* @CAS_MAC_EXCESS_COLL_CNT, align 4
  %137 = call i32 @CAS_WRITE_4(%struct.cas_softc* %135, i32 %136, i32 0)
  %138 = load %struct.cas_softc*, %struct.cas_softc** %2, align 8
  %139 = load i32, i32* @CAS_MAC_LATE_COLL_CNT, align 4
  %140 = call i32 @CAS_WRITE_4(%struct.cas_softc* %138, i32 %139, i32 0)
  %141 = load %struct.cas_softc*, %struct.cas_softc** %2, align 8
  %142 = load i32, i32* @CAS_MAC_DEFER_TMR_CNT, align 4
  %143 = call i32 @CAS_WRITE_4(%struct.cas_softc* %141, i32 %142, i32 0)
  %144 = load %struct.cas_softc*, %struct.cas_softc** %2, align 8
  %145 = load i32, i32* @CAS_MAC_PEAK_ATTEMPTS, align 4
  %146 = call i32 @CAS_WRITE_4(%struct.cas_softc* %144, i32 %145, i32 0)
  %147 = load %struct.cas_softc*, %struct.cas_softc** %2, align 8
  %148 = load i32, i32* @CAS_MAC_RX_FRAME_COUNT, align 4
  %149 = call i32 @CAS_WRITE_4(%struct.cas_softc* %147, i32 %148, i32 0)
  %150 = load %struct.cas_softc*, %struct.cas_softc** %2, align 8
  %151 = load i32, i32* @CAS_MAC_RX_LEN_ERR_CNT, align 4
  %152 = call i32 @CAS_WRITE_4(%struct.cas_softc* %150, i32 %151, i32 0)
  %153 = load %struct.cas_softc*, %struct.cas_softc** %2, align 8
  %154 = load i32, i32* @CAS_MAC_RX_ALIGN_ERR, align 4
  %155 = call i32 @CAS_WRITE_4(%struct.cas_softc* %153, i32 %154, i32 0)
  %156 = load %struct.cas_softc*, %struct.cas_softc** %2, align 8
  %157 = load i32, i32* @CAS_MAC_RX_CRC_ERR_CNT, align 4
  %158 = call i32 @CAS_WRITE_4(%struct.cas_softc* %156, i32 %157, i32 0)
  %159 = load %struct.cas_softc*, %struct.cas_softc** %2, align 8
  %160 = load i32, i32* @CAS_MAC_RX_CODE_VIOL, align 4
  %161 = call i32 @CAS_WRITE_4(%struct.cas_softc* %159, i32 %160, i32 0)
  %162 = load %struct.cas_softc*, %struct.cas_softc** %2, align 8
  %163 = load i32, i32* @CAS_MAC_SPC, align 4
  %164 = load i32, i32* @CAS_MAC_SPC_TIME_SHFT, align 4
  %165 = shl i32 7152, %164
  %166 = call i32 @CAS_WRITE_4(%struct.cas_softc* %162, i32 %163, i32 %165)
  %167 = load %struct.cas_softc*, %struct.cas_softc** %2, align 8
  %168 = load i32, i32* @CAS_MAC_ADDR0, align 4
  %169 = load i32*, i32** %4, align 8
  %170 = getelementptr inbounds i32, i32* %169, i64 4
  %171 = load i32, i32* %170, align 4
  %172 = shl i32 %171, 8
  %173 = load i32*, i32** %4, align 8
  %174 = getelementptr inbounds i32, i32* %173, i64 5
  %175 = load i32, i32* %174, align 4
  %176 = or i32 %172, %175
  %177 = call i32 @CAS_WRITE_4(%struct.cas_softc* %167, i32 %168, i32 %176)
  %178 = load %struct.cas_softc*, %struct.cas_softc** %2, align 8
  %179 = load i32, i32* @CAS_MAC_ADDR1, align 4
  %180 = load i32*, i32** %4, align 8
  %181 = getelementptr inbounds i32, i32* %180, i64 2
  %182 = load i32, i32* %181, align 4
  %183 = shl i32 %182, 8
  %184 = load i32*, i32** %4, align 8
  %185 = getelementptr inbounds i32, i32* %184, i64 3
  %186 = load i32, i32* %185, align 4
  %187 = or i32 %183, %186
  %188 = call i32 @CAS_WRITE_4(%struct.cas_softc* %178, i32 %179, i32 %187)
  %189 = load %struct.cas_softc*, %struct.cas_softc** %2, align 8
  %190 = load i32, i32* @CAS_MAC_ADDR2, align 4
  %191 = load i32*, i32** %4, align 8
  %192 = getelementptr inbounds i32, i32* %191, i64 0
  %193 = load i32, i32* %192, align 4
  %194 = shl i32 %193, 8
  %195 = load i32*, i32** %4, align 8
  %196 = getelementptr inbounds i32, i32* %195, i64 1
  %197 = load i32, i32* %196, align 4
  %198 = or i32 %194, %197
  %199 = call i32 @CAS_WRITE_4(%struct.cas_softc* %189, i32 %190, i32 %198)
  %200 = load %struct.cas_softc*, %struct.cas_softc** %2, align 8
  %201 = load i32, i32* @CAS_MAC_XIF_CONF, align 4
  %202 = load i32, i32* @CAS_MAC_XIF_CONF_TX_OE, align 4
  %203 = call i32 @CAS_WRITE_4(%struct.cas_softc* %200, i32 %201, i32 %202)
  ret void
}

declare dso_local i32* @IF_LLADDR(i32) #1

declare dso_local i32 @CAS_LOCK_ASSERT(%struct.cas_softc*, i32) #1

declare dso_local i32 @CAS_WRITE_4(%struct.cas_softc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
