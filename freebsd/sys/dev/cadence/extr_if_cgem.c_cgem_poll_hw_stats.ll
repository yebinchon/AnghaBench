; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cadence/extr_if_cgem.c_cgem_poll_hw_stats.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cadence/extr_if_cgem.c_cgem_poll_hw_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cgem_softc = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@CGEM_OCTETS_TX_BOT = common dso_local global i32 0, align 4
@CGEM_OCTETS_TX_TOP = common dso_local global i32 0, align 4
@CGEM_FRAMES_TX = common dso_local global i32 0, align 4
@CGEM_BCAST_FRAMES_TX = common dso_local global i32 0, align 4
@CGEM_MULTI_FRAMES_TX = common dso_local global i32 0, align 4
@CGEM_PAUSE_FRAMES_TX = common dso_local global i32 0, align 4
@CGEM_FRAMES_64B_TX = common dso_local global i32 0, align 4
@CGEM_FRAMES_65_127B_TX = common dso_local global i32 0, align 4
@CGEM_FRAMES_128_255B_TX = common dso_local global i32 0, align 4
@CGEM_FRAMES_256_511B_TX = common dso_local global i32 0, align 4
@CGEM_FRAMES_512_1023B_TX = common dso_local global i32 0, align 4
@CGEM_FRAMES_1024_1518B_TX = common dso_local global i32 0, align 4
@CGEM_TX_UNDERRUNS = common dso_local global i32 0, align 4
@CGEM_SINGLE_COLL_FRAMES = common dso_local global i32 0, align 4
@IFCOUNTER_COLLISIONS = common dso_local global i32 0, align 4
@CGEM_MULTI_COLL_FRAMES = common dso_local global i32 0, align 4
@CGEM_EXCESSIVE_COLL_FRAMES = common dso_local global i32 0, align 4
@CGEM_LATE_COLL = common dso_local global i32 0, align 4
@CGEM_DEFERRED_TX_FRAMES = common dso_local global i32 0, align 4
@CGEM_CARRIER_SENSE_ERRS = common dso_local global i32 0, align 4
@CGEM_OCTETS_RX_BOT = common dso_local global i32 0, align 4
@CGEM_OCTETS_RX_TOP = common dso_local global i32 0, align 4
@CGEM_FRAMES_RX = common dso_local global i32 0, align 4
@CGEM_BCAST_FRAMES_RX = common dso_local global i32 0, align 4
@CGEM_MULTI_FRAMES_RX = common dso_local global i32 0, align 4
@CGEM_PAUSE_FRAMES_RX = common dso_local global i32 0, align 4
@CGEM_FRAMES_64B_RX = common dso_local global i32 0, align 4
@CGEM_FRAMES_65_127B_RX = common dso_local global i32 0, align 4
@CGEM_FRAMES_128_255B_RX = common dso_local global i32 0, align 4
@CGEM_FRAMES_256_511B_RX = common dso_local global i32 0, align 4
@CGEM_FRAMES_512_1023B_RX = common dso_local global i32 0, align 4
@CGEM_FRAMES_1024_1518B_RX = common dso_local global i32 0, align 4
@CGEM_UNDERSZ_RX = common dso_local global i32 0, align 4
@CGEM_OVERSZ_RX = common dso_local global i32 0, align 4
@CGEM_JABBERS_RX = common dso_local global i32 0, align 4
@CGEM_FCS_ERRS = common dso_local global i32 0, align 4
@CGEM_LENGTH_FIELD_ERRS = common dso_local global i32 0, align 4
@CGEM_RX_SYMBOL_ERRS = common dso_local global i32 0, align 4
@CGEM_ALIGN_ERRS = common dso_local global i32 0, align 4
@CGEM_RX_RESOURCE_ERRS = common dso_local global i32 0, align 4
@CGEM_RX_OVERRUN_ERRS = common dso_local global i32 0, align 4
@CGEM_IP_HDR_CKSUM_ERRS = common dso_local global i32 0, align 4
@CGEM_TCP_CKSUM_ERRS = common dso_local global i32 0, align 4
@CGEM_UDP_CKSUM_ERRS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cgem_softc*)* @cgem_poll_hw_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cgem_poll_hw_stats(%struct.cgem_softc* %0) #0 {
  %2 = alloca %struct.cgem_softc*, align 8
  %3 = alloca i64, align 8
  store %struct.cgem_softc* %0, %struct.cgem_softc** %2, align 8
  %4 = load %struct.cgem_softc*, %struct.cgem_softc** %2, align 8
  %5 = call i32 @CGEM_ASSERT_LOCKED(%struct.cgem_softc* %4)
  %6 = load %struct.cgem_softc*, %struct.cgem_softc** %2, align 8
  %7 = load i32, i32* @CGEM_OCTETS_TX_BOT, align 4
  %8 = call i64 @RD4(%struct.cgem_softc* %6, i32 %7)
  %9 = load %struct.cgem_softc*, %struct.cgem_softc** %2, align 8
  %10 = getelementptr inbounds %struct.cgem_softc, %struct.cgem_softc* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = sext i32 %12 to i64
  %14 = add nsw i64 %13, %8
  %15 = trunc i64 %14 to i32
  store i32 %15, i32* %11, align 4
  %16 = load %struct.cgem_softc*, %struct.cgem_softc** %2, align 8
  %17 = load i32, i32* @CGEM_OCTETS_TX_TOP, align 4
  %18 = call i64 @RD4(%struct.cgem_softc* %16, i32 %17)
  %19 = trunc i64 %18 to i32
  %20 = shl i32 %19, 32
  %21 = load %struct.cgem_softc*, %struct.cgem_softc** %2, align 8
  %22 = getelementptr inbounds %struct.cgem_softc, %struct.cgem_softc* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = add nsw i32 %24, %20
  store i32 %25, i32* %23, align 4
  %26 = load %struct.cgem_softc*, %struct.cgem_softc** %2, align 8
  %27 = load i32, i32* @CGEM_FRAMES_TX, align 4
  %28 = call i64 @RD4(%struct.cgem_softc* %26, i32 %27)
  %29 = load %struct.cgem_softc*, %struct.cgem_softc** %2, align 8
  %30 = getelementptr inbounds %struct.cgem_softc, %struct.cgem_softc* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 40
  %32 = load i32, i32* %31, align 4
  %33 = sext i32 %32 to i64
  %34 = add nsw i64 %33, %28
  %35 = trunc i64 %34 to i32
  store i32 %35, i32* %31, align 4
  %36 = load %struct.cgem_softc*, %struct.cgem_softc** %2, align 8
  %37 = load i32, i32* @CGEM_BCAST_FRAMES_TX, align 4
  %38 = call i64 @RD4(%struct.cgem_softc* %36, i32 %37)
  %39 = load %struct.cgem_softc*, %struct.cgem_softc** %2, align 8
  %40 = getelementptr inbounds %struct.cgem_softc, %struct.cgem_softc* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 39
  %42 = load i32, i32* %41, align 4
  %43 = sext i32 %42 to i64
  %44 = add nsw i64 %43, %38
  %45 = trunc i64 %44 to i32
  store i32 %45, i32* %41, align 4
  %46 = load %struct.cgem_softc*, %struct.cgem_softc** %2, align 8
  %47 = load i32, i32* @CGEM_MULTI_FRAMES_TX, align 4
  %48 = call i64 @RD4(%struct.cgem_softc* %46, i32 %47)
  %49 = load %struct.cgem_softc*, %struct.cgem_softc** %2, align 8
  %50 = getelementptr inbounds %struct.cgem_softc, %struct.cgem_softc* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 38
  %52 = load i32, i32* %51, align 4
  %53 = sext i32 %52 to i64
  %54 = add nsw i64 %53, %48
  %55 = trunc i64 %54 to i32
  store i32 %55, i32* %51, align 4
  %56 = load %struct.cgem_softc*, %struct.cgem_softc** %2, align 8
  %57 = load i32, i32* @CGEM_PAUSE_FRAMES_TX, align 4
  %58 = call i64 @RD4(%struct.cgem_softc* %56, i32 %57)
  %59 = load %struct.cgem_softc*, %struct.cgem_softc** %2, align 8
  %60 = getelementptr inbounds %struct.cgem_softc, %struct.cgem_softc* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 37
  %62 = load i32, i32* %61, align 4
  %63 = sext i32 %62 to i64
  %64 = add nsw i64 %63, %58
  %65 = trunc i64 %64 to i32
  store i32 %65, i32* %61, align 4
  %66 = load %struct.cgem_softc*, %struct.cgem_softc** %2, align 8
  %67 = load i32, i32* @CGEM_FRAMES_64B_TX, align 4
  %68 = call i64 @RD4(%struct.cgem_softc* %66, i32 %67)
  %69 = load %struct.cgem_softc*, %struct.cgem_softc** %2, align 8
  %70 = getelementptr inbounds %struct.cgem_softc, %struct.cgem_softc* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 36
  %72 = load i32, i32* %71, align 4
  %73 = sext i32 %72 to i64
  %74 = add nsw i64 %73, %68
  %75 = trunc i64 %74 to i32
  store i32 %75, i32* %71, align 4
  %76 = load %struct.cgem_softc*, %struct.cgem_softc** %2, align 8
  %77 = load i32, i32* @CGEM_FRAMES_65_127B_TX, align 4
  %78 = call i64 @RD4(%struct.cgem_softc* %76, i32 %77)
  %79 = load %struct.cgem_softc*, %struct.cgem_softc** %2, align 8
  %80 = getelementptr inbounds %struct.cgem_softc, %struct.cgem_softc* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 35
  %82 = load i32, i32* %81, align 4
  %83 = sext i32 %82 to i64
  %84 = add nsw i64 %83, %78
  %85 = trunc i64 %84 to i32
  store i32 %85, i32* %81, align 4
  %86 = load %struct.cgem_softc*, %struct.cgem_softc** %2, align 8
  %87 = load i32, i32* @CGEM_FRAMES_128_255B_TX, align 4
  %88 = call i64 @RD4(%struct.cgem_softc* %86, i32 %87)
  %89 = load %struct.cgem_softc*, %struct.cgem_softc** %2, align 8
  %90 = getelementptr inbounds %struct.cgem_softc, %struct.cgem_softc* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i32 0, i32 34
  %92 = load i32, i32* %91, align 4
  %93 = sext i32 %92 to i64
  %94 = add nsw i64 %93, %88
  %95 = trunc i64 %94 to i32
  store i32 %95, i32* %91, align 4
  %96 = load %struct.cgem_softc*, %struct.cgem_softc** %2, align 8
  %97 = load i32, i32* @CGEM_FRAMES_256_511B_TX, align 4
  %98 = call i64 @RD4(%struct.cgem_softc* %96, i32 %97)
  %99 = load %struct.cgem_softc*, %struct.cgem_softc** %2, align 8
  %100 = getelementptr inbounds %struct.cgem_softc, %struct.cgem_softc* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %100, i32 0, i32 33
  %102 = load i32, i32* %101, align 4
  %103 = sext i32 %102 to i64
  %104 = add nsw i64 %103, %98
  %105 = trunc i64 %104 to i32
  store i32 %105, i32* %101, align 4
  %106 = load %struct.cgem_softc*, %struct.cgem_softc** %2, align 8
  %107 = load i32, i32* @CGEM_FRAMES_512_1023B_TX, align 4
  %108 = call i64 @RD4(%struct.cgem_softc* %106, i32 %107)
  %109 = load %struct.cgem_softc*, %struct.cgem_softc** %2, align 8
  %110 = getelementptr inbounds %struct.cgem_softc, %struct.cgem_softc* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %110, i32 0, i32 32
  %112 = load i32, i32* %111, align 4
  %113 = sext i32 %112 to i64
  %114 = add nsw i64 %113, %108
  %115 = trunc i64 %114 to i32
  store i32 %115, i32* %111, align 4
  %116 = load %struct.cgem_softc*, %struct.cgem_softc** %2, align 8
  %117 = load i32, i32* @CGEM_FRAMES_1024_1518B_TX, align 4
  %118 = call i64 @RD4(%struct.cgem_softc* %116, i32 %117)
  %119 = load %struct.cgem_softc*, %struct.cgem_softc** %2, align 8
  %120 = getelementptr inbounds %struct.cgem_softc, %struct.cgem_softc* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %120, i32 0, i32 31
  %122 = load i32, i32* %121, align 4
  %123 = sext i32 %122 to i64
  %124 = add nsw i64 %123, %118
  %125 = trunc i64 %124 to i32
  store i32 %125, i32* %121, align 4
  %126 = load %struct.cgem_softc*, %struct.cgem_softc** %2, align 8
  %127 = load i32, i32* @CGEM_TX_UNDERRUNS, align 4
  %128 = call i64 @RD4(%struct.cgem_softc* %126, i32 %127)
  %129 = load %struct.cgem_softc*, %struct.cgem_softc** %2, align 8
  %130 = getelementptr inbounds %struct.cgem_softc, %struct.cgem_softc* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %130, i32 0, i32 30
  %132 = load i32, i32* %131, align 4
  %133 = sext i32 %132 to i64
  %134 = add nsw i64 %133, %128
  %135 = trunc i64 %134 to i32
  store i32 %135, i32* %131, align 4
  %136 = load %struct.cgem_softc*, %struct.cgem_softc** %2, align 8
  %137 = load i32, i32* @CGEM_SINGLE_COLL_FRAMES, align 4
  %138 = call i64 @RD4(%struct.cgem_softc* %136, i32 %137)
  store i64 %138, i64* %3, align 8
  %139 = load i64, i64* %3, align 8
  %140 = load %struct.cgem_softc*, %struct.cgem_softc** %2, align 8
  %141 = getelementptr inbounds %struct.cgem_softc, %struct.cgem_softc* %140, i32 0, i32 0
  %142 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %141, i32 0, i32 29
  %143 = load i32, i32* %142, align 4
  %144 = sext i32 %143 to i64
  %145 = add nsw i64 %144, %139
  %146 = trunc i64 %145 to i32
  store i32 %146, i32* %142, align 4
  %147 = load %struct.cgem_softc*, %struct.cgem_softc** %2, align 8
  %148 = getelementptr inbounds %struct.cgem_softc, %struct.cgem_softc* %147, i32 0, i32 1
  %149 = load i32, i32* %148, align 4
  %150 = load i32, i32* @IFCOUNTER_COLLISIONS, align 4
  %151 = load i64, i64* %3, align 8
  %152 = call i32 @if_inc_counter(i32 %149, i32 %150, i64 %151)
  %153 = load %struct.cgem_softc*, %struct.cgem_softc** %2, align 8
  %154 = load i32, i32* @CGEM_MULTI_COLL_FRAMES, align 4
  %155 = call i64 @RD4(%struct.cgem_softc* %153, i32 %154)
  store i64 %155, i64* %3, align 8
  %156 = load i64, i64* %3, align 8
  %157 = load %struct.cgem_softc*, %struct.cgem_softc** %2, align 8
  %158 = getelementptr inbounds %struct.cgem_softc, %struct.cgem_softc* %157, i32 0, i32 0
  %159 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %158, i32 0, i32 28
  %160 = load i32, i32* %159, align 4
  %161 = sext i32 %160 to i64
  %162 = add nsw i64 %161, %156
  %163 = trunc i64 %162 to i32
  store i32 %163, i32* %159, align 4
  %164 = load %struct.cgem_softc*, %struct.cgem_softc** %2, align 8
  %165 = getelementptr inbounds %struct.cgem_softc, %struct.cgem_softc* %164, i32 0, i32 1
  %166 = load i32, i32* %165, align 4
  %167 = load i32, i32* @IFCOUNTER_COLLISIONS, align 4
  %168 = load i64, i64* %3, align 8
  %169 = call i32 @if_inc_counter(i32 %166, i32 %167, i64 %168)
  %170 = load %struct.cgem_softc*, %struct.cgem_softc** %2, align 8
  %171 = load i32, i32* @CGEM_EXCESSIVE_COLL_FRAMES, align 4
  %172 = call i64 @RD4(%struct.cgem_softc* %170, i32 %171)
  store i64 %172, i64* %3, align 8
  %173 = load i64, i64* %3, align 8
  %174 = load %struct.cgem_softc*, %struct.cgem_softc** %2, align 8
  %175 = getelementptr inbounds %struct.cgem_softc, %struct.cgem_softc* %174, i32 0, i32 0
  %176 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %175, i32 0, i32 27
  %177 = load i32, i32* %176, align 4
  %178 = sext i32 %177 to i64
  %179 = add nsw i64 %178, %173
  %180 = trunc i64 %179 to i32
  store i32 %180, i32* %176, align 4
  %181 = load %struct.cgem_softc*, %struct.cgem_softc** %2, align 8
  %182 = getelementptr inbounds %struct.cgem_softc, %struct.cgem_softc* %181, i32 0, i32 1
  %183 = load i32, i32* %182, align 4
  %184 = load i32, i32* @IFCOUNTER_COLLISIONS, align 4
  %185 = load i64, i64* %3, align 8
  %186 = call i32 @if_inc_counter(i32 %183, i32 %184, i64 %185)
  %187 = load %struct.cgem_softc*, %struct.cgem_softc** %2, align 8
  %188 = load i32, i32* @CGEM_LATE_COLL, align 4
  %189 = call i64 @RD4(%struct.cgem_softc* %187, i32 %188)
  store i64 %189, i64* %3, align 8
  %190 = load i64, i64* %3, align 8
  %191 = load %struct.cgem_softc*, %struct.cgem_softc** %2, align 8
  %192 = getelementptr inbounds %struct.cgem_softc, %struct.cgem_softc* %191, i32 0, i32 0
  %193 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %192, i32 0, i32 26
  %194 = load i32, i32* %193, align 4
  %195 = sext i32 %194 to i64
  %196 = add nsw i64 %195, %190
  %197 = trunc i64 %196 to i32
  store i32 %197, i32* %193, align 4
  %198 = load %struct.cgem_softc*, %struct.cgem_softc** %2, align 8
  %199 = getelementptr inbounds %struct.cgem_softc, %struct.cgem_softc* %198, i32 0, i32 1
  %200 = load i32, i32* %199, align 4
  %201 = load i32, i32* @IFCOUNTER_COLLISIONS, align 4
  %202 = load i64, i64* %3, align 8
  %203 = call i32 @if_inc_counter(i32 %200, i32 %201, i64 %202)
  %204 = load %struct.cgem_softc*, %struct.cgem_softc** %2, align 8
  %205 = load i32, i32* @CGEM_DEFERRED_TX_FRAMES, align 4
  %206 = call i64 @RD4(%struct.cgem_softc* %204, i32 %205)
  %207 = load %struct.cgem_softc*, %struct.cgem_softc** %2, align 8
  %208 = getelementptr inbounds %struct.cgem_softc, %struct.cgem_softc* %207, i32 0, i32 0
  %209 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %208, i32 0, i32 25
  %210 = load i32, i32* %209, align 4
  %211 = sext i32 %210 to i64
  %212 = add nsw i64 %211, %206
  %213 = trunc i64 %212 to i32
  store i32 %213, i32* %209, align 4
  %214 = load %struct.cgem_softc*, %struct.cgem_softc** %2, align 8
  %215 = load i32, i32* @CGEM_CARRIER_SENSE_ERRS, align 4
  %216 = call i64 @RD4(%struct.cgem_softc* %214, i32 %215)
  %217 = load %struct.cgem_softc*, %struct.cgem_softc** %2, align 8
  %218 = getelementptr inbounds %struct.cgem_softc, %struct.cgem_softc* %217, i32 0, i32 0
  %219 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %218, i32 0, i32 24
  %220 = load i32, i32* %219, align 4
  %221 = sext i32 %220 to i64
  %222 = add nsw i64 %221, %216
  %223 = trunc i64 %222 to i32
  store i32 %223, i32* %219, align 4
  %224 = load %struct.cgem_softc*, %struct.cgem_softc** %2, align 8
  %225 = load i32, i32* @CGEM_OCTETS_RX_BOT, align 4
  %226 = call i64 @RD4(%struct.cgem_softc* %224, i32 %225)
  %227 = load %struct.cgem_softc*, %struct.cgem_softc** %2, align 8
  %228 = getelementptr inbounds %struct.cgem_softc, %struct.cgem_softc* %227, i32 0, i32 0
  %229 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %228, i32 0, i32 1
  %230 = load i32, i32* %229, align 4
  %231 = sext i32 %230 to i64
  %232 = add nsw i64 %231, %226
  %233 = trunc i64 %232 to i32
  store i32 %233, i32* %229, align 4
  %234 = load %struct.cgem_softc*, %struct.cgem_softc** %2, align 8
  %235 = load i32, i32* @CGEM_OCTETS_RX_TOP, align 4
  %236 = call i64 @RD4(%struct.cgem_softc* %234, i32 %235)
  %237 = trunc i64 %236 to i32
  %238 = shl i32 %237, 32
  %239 = load %struct.cgem_softc*, %struct.cgem_softc** %2, align 8
  %240 = getelementptr inbounds %struct.cgem_softc, %struct.cgem_softc* %239, i32 0, i32 0
  %241 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %240, i32 0, i32 1
  %242 = load i32, i32* %241, align 4
  %243 = add nsw i32 %242, %238
  store i32 %243, i32* %241, align 4
  %244 = load %struct.cgem_softc*, %struct.cgem_softc** %2, align 8
  %245 = load i32, i32* @CGEM_FRAMES_RX, align 4
  %246 = call i64 @RD4(%struct.cgem_softc* %244, i32 %245)
  %247 = load %struct.cgem_softc*, %struct.cgem_softc** %2, align 8
  %248 = getelementptr inbounds %struct.cgem_softc, %struct.cgem_softc* %247, i32 0, i32 0
  %249 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %248, i32 0, i32 23
  %250 = load i32, i32* %249, align 4
  %251 = sext i32 %250 to i64
  %252 = add nsw i64 %251, %246
  %253 = trunc i64 %252 to i32
  store i32 %253, i32* %249, align 4
  %254 = load %struct.cgem_softc*, %struct.cgem_softc** %2, align 8
  %255 = load i32, i32* @CGEM_BCAST_FRAMES_RX, align 4
  %256 = call i64 @RD4(%struct.cgem_softc* %254, i32 %255)
  %257 = load %struct.cgem_softc*, %struct.cgem_softc** %2, align 8
  %258 = getelementptr inbounds %struct.cgem_softc, %struct.cgem_softc* %257, i32 0, i32 0
  %259 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %258, i32 0, i32 22
  %260 = load i32, i32* %259, align 4
  %261 = sext i32 %260 to i64
  %262 = add nsw i64 %261, %256
  %263 = trunc i64 %262 to i32
  store i32 %263, i32* %259, align 4
  %264 = load %struct.cgem_softc*, %struct.cgem_softc** %2, align 8
  %265 = load i32, i32* @CGEM_MULTI_FRAMES_RX, align 4
  %266 = call i64 @RD4(%struct.cgem_softc* %264, i32 %265)
  %267 = load %struct.cgem_softc*, %struct.cgem_softc** %2, align 8
  %268 = getelementptr inbounds %struct.cgem_softc, %struct.cgem_softc* %267, i32 0, i32 0
  %269 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %268, i32 0, i32 21
  %270 = load i32, i32* %269, align 4
  %271 = sext i32 %270 to i64
  %272 = add nsw i64 %271, %266
  %273 = trunc i64 %272 to i32
  store i32 %273, i32* %269, align 4
  %274 = load %struct.cgem_softc*, %struct.cgem_softc** %2, align 8
  %275 = load i32, i32* @CGEM_PAUSE_FRAMES_RX, align 4
  %276 = call i64 @RD4(%struct.cgem_softc* %274, i32 %275)
  %277 = load %struct.cgem_softc*, %struct.cgem_softc** %2, align 8
  %278 = getelementptr inbounds %struct.cgem_softc, %struct.cgem_softc* %277, i32 0, i32 0
  %279 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %278, i32 0, i32 20
  %280 = load i32, i32* %279, align 4
  %281 = sext i32 %280 to i64
  %282 = add nsw i64 %281, %276
  %283 = trunc i64 %282 to i32
  store i32 %283, i32* %279, align 4
  %284 = load %struct.cgem_softc*, %struct.cgem_softc** %2, align 8
  %285 = load i32, i32* @CGEM_FRAMES_64B_RX, align 4
  %286 = call i64 @RD4(%struct.cgem_softc* %284, i32 %285)
  %287 = load %struct.cgem_softc*, %struct.cgem_softc** %2, align 8
  %288 = getelementptr inbounds %struct.cgem_softc, %struct.cgem_softc* %287, i32 0, i32 0
  %289 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %288, i32 0, i32 19
  %290 = load i32, i32* %289, align 4
  %291 = sext i32 %290 to i64
  %292 = add nsw i64 %291, %286
  %293 = trunc i64 %292 to i32
  store i32 %293, i32* %289, align 4
  %294 = load %struct.cgem_softc*, %struct.cgem_softc** %2, align 8
  %295 = load i32, i32* @CGEM_FRAMES_65_127B_RX, align 4
  %296 = call i64 @RD4(%struct.cgem_softc* %294, i32 %295)
  %297 = load %struct.cgem_softc*, %struct.cgem_softc** %2, align 8
  %298 = getelementptr inbounds %struct.cgem_softc, %struct.cgem_softc* %297, i32 0, i32 0
  %299 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %298, i32 0, i32 18
  %300 = load i32, i32* %299, align 4
  %301 = sext i32 %300 to i64
  %302 = add nsw i64 %301, %296
  %303 = trunc i64 %302 to i32
  store i32 %303, i32* %299, align 4
  %304 = load %struct.cgem_softc*, %struct.cgem_softc** %2, align 8
  %305 = load i32, i32* @CGEM_FRAMES_128_255B_RX, align 4
  %306 = call i64 @RD4(%struct.cgem_softc* %304, i32 %305)
  %307 = load %struct.cgem_softc*, %struct.cgem_softc** %2, align 8
  %308 = getelementptr inbounds %struct.cgem_softc, %struct.cgem_softc* %307, i32 0, i32 0
  %309 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %308, i32 0, i32 17
  %310 = load i32, i32* %309, align 4
  %311 = sext i32 %310 to i64
  %312 = add nsw i64 %311, %306
  %313 = trunc i64 %312 to i32
  store i32 %313, i32* %309, align 4
  %314 = load %struct.cgem_softc*, %struct.cgem_softc** %2, align 8
  %315 = load i32, i32* @CGEM_FRAMES_256_511B_RX, align 4
  %316 = call i64 @RD4(%struct.cgem_softc* %314, i32 %315)
  %317 = load %struct.cgem_softc*, %struct.cgem_softc** %2, align 8
  %318 = getelementptr inbounds %struct.cgem_softc, %struct.cgem_softc* %317, i32 0, i32 0
  %319 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %318, i32 0, i32 16
  %320 = load i32, i32* %319, align 4
  %321 = sext i32 %320 to i64
  %322 = add nsw i64 %321, %316
  %323 = trunc i64 %322 to i32
  store i32 %323, i32* %319, align 4
  %324 = load %struct.cgem_softc*, %struct.cgem_softc** %2, align 8
  %325 = load i32, i32* @CGEM_FRAMES_512_1023B_RX, align 4
  %326 = call i64 @RD4(%struct.cgem_softc* %324, i32 %325)
  %327 = load %struct.cgem_softc*, %struct.cgem_softc** %2, align 8
  %328 = getelementptr inbounds %struct.cgem_softc, %struct.cgem_softc* %327, i32 0, i32 0
  %329 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %328, i32 0, i32 15
  %330 = load i32, i32* %329, align 4
  %331 = sext i32 %330 to i64
  %332 = add nsw i64 %331, %326
  %333 = trunc i64 %332 to i32
  store i32 %333, i32* %329, align 4
  %334 = load %struct.cgem_softc*, %struct.cgem_softc** %2, align 8
  %335 = load i32, i32* @CGEM_FRAMES_1024_1518B_RX, align 4
  %336 = call i64 @RD4(%struct.cgem_softc* %334, i32 %335)
  %337 = load %struct.cgem_softc*, %struct.cgem_softc** %2, align 8
  %338 = getelementptr inbounds %struct.cgem_softc, %struct.cgem_softc* %337, i32 0, i32 0
  %339 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %338, i32 0, i32 14
  %340 = load i32, i32* %339, align 4
  %341 = sext i32 %340 to i64
  %342 = add nsw i64 %341, %336
  %343 = trunc i64 %342 to i32
  store i32 %343, i32* %339, align 4
  %344 = load %struct.cgem_softc*, %struct.cgem_softc** %2, align 8
  %345 = load i32, i32* @CGEM_UNDERSZ_RX, align 4
  %346 = call i64 @RD4(%struct.cgem_softc* %344, i32 %345)
  %347 = load %struct.cgem_softc*, %struct.cgem_softc** %2, align 8
  %348 = getelementptr inbounds %struct.cgem_softc, %struct.cgem_softc* %347, i32 0, i32 0
  %349 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %348, i32 0, i32 13
  %350 = load i32, i32* %349, align 4
  %351 = sext i32 %350 to i64
  %352 = add nsw i64 %351, %346
  %353 = trunc i64 %352 to i32
  store i32 %353, i32* %349, align 4
  %354 = load %struct.cgem_softc*, %struct.cgem_softc** %2, align 8
  %355 = load i32, i32* @CGEM_OVERSZ_RX, align 4
  %356 = call i64 @RD4(%struct.cgem_softc* %354, i32 %355)
  %357 = load %struct.cgem_softc*, %struct.cgem_softc** %2, align 8
  %358 = getelementptr inbounds %struct.cgem_softc, %struct.cgem_softc* %357, i32 0, i32 0
  %359 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %358, i32 0, i32 12
  %360 = load i32, i32* %359, align 4
  %361 = sext i32 %360 to i64
  %362 = add nsw i64 %361, %356
  %363 = trunc i64 %362 to i32
  store i32 %363, i32* %359, align 4
  %364 = load %struct.cgem_softc*, %struct.cgem_softc** %2, align 8
  %365 = load i32, i32* @CGEM_JABBERS_RX, align 4
  %366 = call i64 @RD4(%struct.cgem_softc* %364, i32 %365)
  %367 = load %struct.cgem_softc*, %struct.cgem_softc** %2, align 8
  %368 = getelementptr inbounds %struct.cgem_softc, %struct.cgem_softc* %367, i32 0, i32 0
  %369 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %368, i32 0, i32 11
  %370 = load i32, i32* %369, align 4
  %371 = sext i32 %370 to i64
  %372 = add nsw i64 %371, %366
  %373 = trunc i64 %372 to i32
  store i32 %373, i32* %369, align 4
  %374 = load %struct.cgem_softc*, %struct.cgem_softc** %2, align 8
  %375 = load i32, i32* @CGEM_FCS_ERRS, align 4
  %376 = call i64 @RD4(%struct.cgem_softc* %374, i32 %375)
  %377 = load %struct.cgem_softc*, %struct.cgem_softc** %2, align 8
  %378 = getelementptr inbounds %struct.cgem_softc, %struct.cgem_softc* %377, i32 0, i32 0
  %379 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %378, i32 0, i32 10
  %380 = load i32, i32* %379, align 4
  %381 = sext i32 %380 to i64
  %382 = add nsw i64 %381, %376
  %383 = trunc i64 %382 to i32
  store i32 %383, i32* %379, align 4
  %384 = load %struct.cgem_softc*, %struct.cgem_softc** %2, align 8
  %385 = load i32, i32* @CGEM_LENGTH_FIELD_ERRS, align 4
  %386 = call i64 @RD4(%struct.cgem_softc* %384, i32 %385)
  %387 = load %struct.cgem_softc*, %struct.cgem_softc** %2, align 8
  %388 = getelementptr inbounds %struct.cgem_softc, %struct.cgem_softc* %387, i32 0, i32 0
  %389 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %388, i32 0, i32 9
  %390 = load i32, i32* %389, align 4
  %391 = sext i32 %390 to i64
  %392 = add nsw i64 %391, %386
  %393 = trunc i64 %392 to i32
  store i32 %393, i32* %389, align 4
  %394 = load %struct.cgem_softc*, %struct.cgem_softc** %2, align 8
  %395 = load i32, i32* @CGEM_RX_SYMBOL_ERRS, align 4
  %396 = call i64 @RD4(%struct.cgem_softc* %394, i32 %395)
  %397 = load %struct.cgem_softc*, %struct.cgem_softc** %2, align 8
  %398 = getelementptr inbounds %struct.cgem_softc, %struct.cgem_softc* %397, i32 0, i32 0
  %399 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %398, i32 0, i32 8
  %400 = load i32, i32* %399, align 4
  %401 = sext i32 %400 to i64
  %402 = add nsw i64 %401, %396
  %403 = trunc i64 %402 to i32
  store i32 %403, i32* %399, align 4
  %404 = load %struct.cgem_softc*, %struct.cgem_softc** %2, align 8
  %405 = load i32, i32* @CGEM_ALIGN_ERRS, align 4
  %406 = call i64 @RD4(%struct.cgem_softc* %404, i32 %405)
  %407 = load %struct.cgem_softc*, %struct.cgem_softc** %2, align 8
  %408 = getelementptr inbounds %struct.cgem_softc, %struct.cgem_softc* %407, i32 0, i32 0
  %409 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %408, i32 0, i32 7
  %410 = load i32, i32* %409, align 4
  %411 = sext i32 %410 to i64
  %412 = add nsw i64 %411, %406
  %413 = trunc i64 %412 to i32
  store i32 %413, i32* %409, align 4
  %414 = load %struct.cgem_softc*, %struct.cgem_softc** %2, align 8
  %415 = load i32, i32* @CGEM_RX_RESOURCE_ERRS, align 4
  %416 = call i64 @RD4(%struct.cgem_softc* %414, i32 %415)
  %417 = load %struct.cgem_softc*, %struct.cgem_softc** %2, align 8
  %418 = getelementptr inbounds %struct.cgem_softc, %struct.cgem_softc* %417, i32 0, i32 0
  %419 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %418, i32 0, i32 6
  %420 = load i32, i32* %419, align 4
  %421 = sext i32 %420 to i64
  %422 = add nsw i64 %421, %416
  %423 = trunc i64 %422 to i32
  store i32 %423, i32* %419, align 4
  %424 = load %struct.cgem_softc*, %struct.cgem_softc** %2, align 8
  %425 = load i32, i32* @CGEM_RX_OVERRUN_ERRS, align 4
  %426 = call i64 @RD4(%struct.cgem_softc* %424, i32 %425)
  %427 = load %struct.cgem_softc*, %struct.cgem_softc** %2, align 8
  %428 = getelementptr inbounds %struct.cgem_softc, %struct.cgem_softc* %427, i32 0, i32 0
  %429 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %428, i32 0, i32 5
  %430 = load i32, i32* %429, align 4
  %431 = sext i32 %430 to i64
  %432 = add nsw i64 %431, %426
  %433 = trunc i64 %432 to i32
  store i32 %433, i32* %429, align 4
  %434 = load %struct.cgem_softc*, %struct.cgem_softc** %2, align 8
  %435 = load i32, i32* @CGEM_IP_HDR_CKSUM_ERRS, align 4
  %436 = call i64 @RD4(%struct.cgem_softc* %434, i32 %435)
  %437 = load %struct.cgem_softc*, %struct.cgem_softc** %2, align 8
  %438 = getelementptr inbounds %struct.cgem_softc, %struct.cgem_softc* %437, i32 0, i32 0
  %439 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %438, i32 0, i32 4
  %440 = load i32, i32* %439, align 4
  %441 = sext i32 %440 to i64
  %442 = add nsw i64 %441, %436
  %443 = trunc i64 %442 to i32
  store i32 %443, i32* %439, align 4
  %444 = load %struct.cgem_softc*, %struct.cgem_softc** %2, align 8
  %445 = load i32, i32* @CGEM_TCP_CKSUM_ERRS, align 4
  %446 = call i64 @RD4(%struct.cgem_softc* %444, i32 %445)
  %447 = load %struct.cgem_softc*, %struct.cgem_softc** %2, align 8
  %448 = getelementptr inbounds %struct.cgem_softc, %struct.cgem_softc* %447, i32 0, i32 0
  %449 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %448, i32 0, i32 3
  %450 = load i32, i32* %449, align 4
  %451 = sext i32 %450 to i64
  %452 = add nsw i64 %451, %446
  %453 = trunc i64 %452 to i32
  store i32 %453, i32* %449, align 4
  %454 = load %struct.cgem_softc*, %struct.cgem_softc** %2, align 8
  %455 = load i32, i32* @CGEM_UDP_CKSUM_ERRS, align 4
  %456 = call i64 @RD4(%struct.cgem_softc* %454, i32 %455)
  %457 = load %struct.cgem_softc*, %struct.cgem_softc** %2, align 8
  %458 = getelementptr inbounds %struct.cgem_softc, %struct.cgem_softc* %457, i32 0, i32 0
  %459 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %458, i32 0, i32 2
  %460 = load i32, i32* %459, align 4
  %461 = sext i32 %460 to i64
  %462 = add nsw i64 %461, %456
  %463 = trunc i64 %462 to i32
  store i32 %463, i32* %459, align 4
  ret void
}

declare dso_local i32 @CGEM_ASSERT_LOCKED(%struct.cgem_softc*) #1

declare dso_local i64 @RD4(%struct.cgem_softc*, i32) #1

declare dso_local i32 @if_inc_counter(i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
