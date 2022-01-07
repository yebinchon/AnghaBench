; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bfe/extr_if_bfe.c_bfe_stats_update.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bfe/extr_if_bfe.c_bfe_stats_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfe_softc = type { %struct.bfe_hw_stats, %struct.ifnet* }
%struct.bfe_hw_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ifnet = type { i32 }

@BFE_MIB_CNT = common dso_local global i32 0, align 4
@BFE_MIB_CTRL = common dso_local global i32 0, align 4
@BFE_MIB_CLR_ON_READ = common dso_local global i32 0, align 4
@BFE_TX_GOOD_O = common dso_local global i64 0, align 8
@BFE_TX_PAUSE = common dso_local global i64 0, align 8
@BFE_RX_GOOD_O = common dso_local global i64 0, align 8
@BFE_RX_NPAUSE = common dso_local global i64 0, align 8
@MIB_TX_GOOD_O = common dso_local global i64 0, align 8
@MIB_TX_GOOD_P = common dso_local global i64 0, align 8
@MIB_TX_O = common dso_local global i64 0, align 8
@MIB_TX_P = common dso_local global i64 0, align 8
@MIB_TX_BCAST = common dso_local global i64 0, align 8
@MIB_TX_MCAST = common dso_local global i64 0, align 8
@MIB_TX_64 = common dso_local global i64 0, align 8
@MIB_TX_65_127 = common dso_local global i64 0, align 8
@MIB_TX_128_255 = common dso_local global i64 0, align 8
@MIB_TX_256_511 = common dso_local global i64 0, align 8
@MIB_TX_512_1023 = common dso_local global i64 0, align 8
@MIB_TX_1024_MAX = common dso_local global i64 0, align 8
@MIB_TX_JABBER = common dso_local global i64 0, align 8
@MIB_TX_OSIZE = common dso_local global i64 0, align 8
@MIB_TX_FRAG = common dso_local global i64 0, align 8
@MIB_TX_URUNS = common dso_local global i64 0, align 8
@MIB_TX_TCOLS = common dso_local global i64 0, align 8
@MIB_TX_SCOLS = common dso_local global i64 0, align 8
@MIB_TX_MCOLS = common dso_local global i64 0, align 8
@MIB_TX_ECOLS = common dso_local global i64 0, align 8
@MIB_TX_LCOLS = common dso_local global i64 0, align 8
@MIB_TX_DEFERED = common dso_local global i64 0, align 8
@MIB_TX_CLOST = common dso_local global i64 0, align 8
@MIB_TX_PAUSE = common dso_local global i64 0, align 8
@MIB_RX_GOOD_O = common dso_local global i64 0, align 8
@MIB_RX_GOOD_P = common dso_local global i64 0, align 8
@MIB_RX_O = common dso_local global i64 0, align 8
@MIB_RX_P = common dso_local global i64 0, align 8
@MIB_RX_BCAST = common dso_local global i64 0, align 8
@MIB_RX_MCAST = common dso_local global i64 0, align 8
@MIB_RX_64 = common dso_local global i64 0, align 8
@MIB_RX_65_127 = common dso_local global i64 0, align 8
@MIB_RX_128_255 = common dso_local global i64 0, align 8
@MIB_RX_256_511 = common dso_local global i64 0, align 8
@MIB_RX_512_1023 = common dso_local global i64 0, align 8
@MIB_RX_1024_MAX = common dso_local global i64 0, align 8
@MIB_RX_JABBER = common dso_local global i64 0, align 8
@MIB_RX_OSIZE = common dso_local global i64 0, align 8
@MIB_RX_FRAG = common dso_local global i64 0, align 8
@MIB_RX_MISS = common dso_local global i64 0, align 8
@MIB_RX_CRCA = common dso_local global i64 0, align 8
@MIB_RX_USIZE = common dso_local global i64 0, align 8
@MIB_RX_CRC = common dso_local global i64 0, align 8
@MIB_RX_ALIGN = common dso_local global i64 0, align 8
@MIB_RX_SYM = common dso_local global i64 0, align 8
@MIB_RX_PAUSE = common dso_local global i64 0, align 8
@MIB_RX_NPAUSE = common dso_local global i64 0, align 8
@IFCOUNTER_OPACKETS = common dso_local global i32 0, align 4
@IFCOUNTER_COLLISIONS = common dso_local global i32 0, align 4
@IFCOUNTER_OERRORS = common dso_local global i32 0, align 4
@IFCOUNTER_IPACKETS = common dso_local global i32 0, align 4
@IFCOUNTER_IERRORS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bfe_softc*)* @bfe_stats_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bfe_stats_update(%struct.bfe_softc* %0) #0 {
  %2 = alloca %struct.bfe_softc*, align 8
  %3 = alloca %struct.bfe_hw_stats*, align 8
  %4 = alloca %struct.ifnet*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64*, align 8
  store %struct.bfe_softc* %0, %struct.bfe_softc** %2, align 8
  %9 = load i32, i32* @BFE_MIB_CNT, align 4
  %10 = zext i32 %9 to i64
  %11 = call i8* @llvm.stacksave()
  store i8* %11, i8** %5, align 8
  %12 = alloca i64, i64 %10, align 16
  store i64 %10, i64* %6, align 8
  %13 = load %struct.bfe_softc*, %struct.bfe_softc** %2, align 8
  %14 = call i32 @BFE_LOCK_ASSERT(%struct.bfe_softc* %13)
  store i64* %12, i64** %8, align 8
  %15 = load %struct.bfe_softc*, %struct.bfe_softc** %2, align 8
  %16 = load i32, i32* @BFE_MIB_CTRL, align 4
  %17 = load i32, i32* @BFE_MIB_CLR_ON_READ, align 4
  %18 = call i32 @CSR_WRITE_4(%struct.bfe_softc* %15, i32 %16, i32 %17)
  %19 = load i64, i64* @BFE_TX_GOOD_O, align 8
  store i64 %19, i64* %7, align 8
  br label %20

20:                                               ; preds = %31, %1
  %21 = load i64, i64* %7, align 8
  %22 = load i64, i64* @BFE_TX_PAUSE, align 8
  %23 = icmp sle i64 %21, %22
  br i1 %23, label %24, label %34

24:                                               ; preds = %20
  %25 = load %struct.bfe_softc*, %struct.bfe_softc** %2, align 8
  %26 = load i64, i64* %7, align 8
  %27 = call i8* @CSR_READ_4(%struct.bfe_softc* %25, i64 %26)
  %28 = ptrtoint i8* %27 to i64
  %29 = load i64*, i64** %8, align 8
  %30 = getelementptr inbounds i64, i64* %29, i32 1
  store i64* %30, i64** %8, align 8
  store i64 %28, i64* %29, align 8
  br label %31

31:                                               ; preds = %24
  %32 = load i64, i64* %7, align 8
  %33 = add nsw i64 %32, 4
  store i64 %33, i64* %7, align 8
  br label %20

34:                                               ; preds = %20
  %35 = load i64, i64* @BFE_RX_GOOD_O, align 8
  store i64 %35, i64* %7, align 8
  br label %36

36:                                               ; preds = %47, %34
  %37 = load i64, i64* %7, align 8
  %38 = load i64, i64* @BFE_RX_NPAUSE, align 8
  %39 = icmp sle i64 %37, %38
  br i1 %39, label %40, label %50

40:                                               ; preds = %36
  %41 = load %struct.bfe_softc*, %struct.bfe_softc** %2, align 8
  %42 = load i64, i64* %7, align 8
  %43 = call i8* @CSR_READ_4(%struct.bfe_softc* %41, i64 %42)
  %44 = ptrtoint i8* %43 to i64
  %45 = load i64*, i64** %8, align 8
  %46 = getelementptr inbounds i64, i64* %45, i32 1
  store i64* %46, i64** %8, align 8
  store i64 %44, i64* %45, align 8
  br label %47

47:                                               ; preds = %40
  %48 = load i64, i64* %7, align 8
  %49 = add nsw i64 %48, 4
  store i64 %49, i64* %7, align 8
  br label %36

50:                                               ; preds = %36
  %51 = load %struct.bfe_softc*, %struct.bfe_softc** %2, align 8
  %52 = getelementptr inbounds %struct.bfe_softc, %struct.bfe_softc* %51, i32 0, i32 1
  %53 = load %struct.ifnet*, %struct.ifnet** %52, align 8
  store %struct.ifnet* %53, %struct.ifnet** %4, align 8
  %54 = load %struct.bfe_softc*, %struct.bfe_softc** %2, align 8
  %55 = getelementptr inbounds %struct.bfe_softc, %struct.bfe_softc* %54, i32 0, i32 0
  store %struct.bfe_hw_stats* %55, %struct.bfe_hw_stats** %3, align 8
  %56 = load i64, i64* @MIB_TX_GOOD_O, align 8
  %57 = getelementptr inbounds i64, i64* %12, i64 %56
  %58 = load i64, i64* %57, align 8
  %59 = load %struct.bfe_hw_stats*, %struct.bfe_hw_stats** %3, align 8
  %60 = getelementptr inbounds %struct.bfe_hw_stats, %struct.bfe_hw_stats* %59, i32 0, i32 46
  %61 = load i32, i32* %60, align 4
  %62 = sext i32 %61 to i64
  %63 = add nsw i64 %62, %58
  %64 = trunc i64 %63 to i32
  store i32 %64, i32* %60, align 4
  %65 = load i64, i64* @MIB_TX_GOOD_P, align 8
  %66 = getelementptr inbounds i64, i64* %12, i64 %65
  %67 = load i64, i64* %66, align 8
  %68 = load %struct.bfe_hw_stats*, %struct.bfe_hw_stats** %3, align 8
  %69 = getelementptr inbounds %struct.bfe_hw_stats, %struct.bfe_hw_stats* %68, i32 0, i32 45
  %70 = load i32, i32* %69, align 4
  %71 = sext i32 %70 to i64
  %72 = add nsw i64 %71, %67
  %73 = trunc i64 %72 to i32
  store i32 %73, i32* %69, align 4
  %74 = load i64, i64* @MIB_TX_O, align 8
  %75 = getelementptr inbounds i64, i64* %12, i64 %74
  %76 = load i64, i64* %75, align 8
  %77 = load %struct.bfe_hw_stats*, %struct.bfe_hw_stats** %3, align 8
  %78 = getelementptr inbounds %struct.bfe_hw_stats, %struct.bfe_hw_stats* %77, i32 0, i32 44
  %79 = load i32, i32* %78, align 4
  %80 = sext i32 %79 to i64
  %81 = add nsw i64 %80, %76
  %82 = trunc i64 %81 to i32
  store i32 %82, i32* %78, align 4
  %83 = load i64, i64* @MIB_TX_P, align 8
  %84 = getelementptr inbounds i64, i64* %12, i64 %83
  %85 = load i64, i64* %84, align 8
  %86 = load %struct.bfe_hw_stats*, %struct.bfe_hw_stats** %3, align 8
  %87 = getelementptr inbounds %struct.bfe_hw_stats, %struct.bfe_hw_stats* %86, i32 0, i32 43
  %88 = load i32, i32* %87, align 4
  %89 = sext i32 %88 to i64
  %90 = add nsw i64 %89, %85
  %91 = trunc i64 %90 to i32
  store i32 %91, i32* %87, align 4
  %92 = load i64, i64* @MIB_TX_BCAST, align 8
  %93 = getelementptr inbounds i64, i64* %12, i64 %92
  %94 = load i64, i64* %93, align 8
  %95 = load %struct.bfe_hw_stats*, %struct.bfe_hw_stats** %3, align 8
  %96 = getelementptr inbounds %struct.bfe_hw_stats, %struct.bfe_hw_stats* %95, i32 0, i32 42
  %97 = load i32, i32* %96, align 4
  %98 = sext i32 %97 to i64
  %99 = add nsw i64 %98, %94
  %100 = trunc i64 %99 to i32
  store i32 %100, i32* %96, align 4
  %101 = load i64, i64* @MIB_TX_MCAST, align 8
  %102 = getelementptr inbounds i64, i64* %12, i64 %101
  %103 = load i64, i64* %102, align 8
  %104 = load %struct.bfe_hw_stats*, %struct.bfe_hw_stats** %3, align 8
  %105 = getelementptr inbounds %struct.bfe_hw_stats, %struct.bfe_hw_stats* %104, i32 0, i32 41
  %106 = load i32, i32* %105, align 4
  %107 = sext i32 %106 to i64
  %108 = add nsw i64 %107, %103
  %109 = trunc i64 %108 to i32
  store i32 %109, i32* %105, align 4
  %110 = load i64, i64* @MIB_TX_64, align 8
  %111 = getelementptr inbounds i64, i64* %12, i64 %110
  %112 = load i64, i64* %111, align 8
  %113 = load %struct.bfe_hw_stats*, %struct.bfe_hw_stats** %3, align 8
  %114 = getelementptr inbounds %struct.bfe_hw_stats, %struct.bfe_hw_stats* %113, i32 0, i32 40
  %115 = load i32, i32* %114, align 4
  %116 = sext i32 %115 to i64
  %117 = add nsw i64 %116, %112
  %118 = trunc i64 %117 to i32
  store i32 %118, i32* %114, align 4
  %119 = load i64, i64* @MIB_TX_65_127, align 8
  %120 = getelementptr inbounds i64, i64* %12, i64 %119
  %121 = load i64, i64* %120, align 8
  %122 = load %struct.bfe_hw_stats*, %struct.bfe_hw_stats** %3, align 8
  %123 = getelementptr inbounds %struct.bfe_hw_stats, %struct.bfe_hw_stats* %122, i32 0, i32 39
  %124 = load i32, i32* %123, align 4
  %125 = sext i32 %124 to i64
  %126 = add nsw i64 %125, %121
  %127 = trunc i64 %126 to i32
  store i32 %127, i32* %123, align 4
  %128 = load i64, i64* @MIB_TX_128_255, align 8
  %129 = getelementptr inbounds i64, i64* %12, i64 %128
  %130 = load i64, i64* %129, align 8
  %131 = load %struct.bfe_hw_stats*, %struct.bfe_hw_stats** %3, align 8
  %132 = getelementptr inbounds %struct.bfe_hw_stats, %struct.bfe_hw_stats* %131, i32 0, i32 38
  %133 = load i32, i32* %132, align 4
  %134 = sext i32 %133 to i64
  %135 = add nsw i64 %134, %130
  %136 = trunc i64 %135 to i32
  store i32 %136, i32* %132, align 4
  %137 = load i64, i64* @MIB_TX_256_511, align 8
  %138 = getelementptr inbounds i64, i64* %12, i64 %137
  %139 = load i64, i64* %138, align 8
  %140 = load %struct.bfe_hw_stats*, %struct.bfe_hw_stats** %3, align 8
  %141 = getelementptr inbounds %struct.bfe_hw_stats, %struct.bfe_hw_stats* %140, i32 0, i32 37
  %142 = load i32, i32* %141, align 4
  %143 = sext i32 %142 to i64
  %144 = add nsw i64 %143, %139
  %145 = trunc i64 %144 to i32
  store i32 %145, i32* %141, align 4
  %146 = load i64, i64* @MIB_TX_512_1023, align 8
  %147 = getelementptr inbounds i64, i64* %12, i64 %146
  %148 = load i64, i64* %147, align 8
  %149 = load %struct.bfe_hw_stats*, %struct.bfe_hw_stats** %3, align 8
  %150 = getelementptr inbounds %struct.bfe_hw_stats, %struct.bfe_hw_stats* %149, i32 0, i32 36
  %151 = load i32, i32* %150, align 4
  %152 = sext i32 %151 to i64
  %153 = add nsw i64 %152, %148
  %154 = trunc i64 %153 to i32
  store i32 %154, i32* %150, align 4
  %155 = load i64, i64* @MIB_TX_1024_MAX, align 8
  %156 = getelementptr inbounds i64, i64* %12, i64 %155
  %157 = load i64, i64* %156, align 8
  %158 = load %struct.bfe_hw_stats*, %struct.bfe_hw_stats** %3, align 8
  %159 = getelementptr inbounds %struct.bfe_hw_stats, %struct.bfe_hw_stats* %158, i32 0, i32 35
  %160 = load i32, i32* %159, align 4
  %161 = sext i32 %160 to i64
  %162 = add nsw i64 %161, %157
  %163 = trunc i64 %162 to i32
  store i32 %163, i32* %159, align 4
  %164 = load i64, i64* @MIB_TX_JABBER, align 8
  %165 = getelementptr inbounds i64, i64* %12, i64 %164
  %166 = load i64, i64* %165, align 8
  %167 = load %struct.bfe_hw_stats*, %struct.bfe_hw_stats** %3, align 8
  %168 = getelementptr inbounds %struct.bfe_hw_stats, %struct.bfe_hw_stats* %167, i32 0, i32 34
  %169 = load i32, i32* %168, align 4
  %170 = sext i32 %169 to i64
  %171 = add nsw i64 %170, %166
  %172 = trunc i64 %171 to i32
  store i32 %172, i32* %168, align 4
  %173 = load i64, i64* @MIB_TX_OSIZE, align 8
  %174 = getelementptr inbounds i64, i64* %12, i64 %173
  %175 = load i64, i64* %174, align 8
  %176 = load %struct.bfe_hw_stats*, %struct.bfe_hw_stats** %3, align 8
  %177 = getelementptr inbounds %struct.bfe_hw_stats, %struct.bfe_hw_stats* %176, i32 0, i32 33
  %178 = load i32, i32* %177, align 4
  %179 = sext i32 %178 to i64
  %180 = add nsw i64 %179, %175
  %181 = trunc i64 %180 to i32
  store i32 %181, i32* %177, align 4
  %182 = load i64, i64* @MIB_TX_FRAG, align 8
  %183 = getelementptr inbounds i64, i64* %12, i64 %182
  %184 = load i64, i64* %183, align 8
  %185 = load %struct.bfe_hw_stats*, %struct.bfe_hw_stats** %3, align 8
  %186 = getelementptr inbounds %struct.bfe_hw_stats, %struct.bfe_hw_stats* %185, i32 0, i32 32
  %187 = load i32, i32* %186, align 4
  %188 = sext i32 %187 to i64
  %189 = add nsw i64 %188, %184
  %190 = trunc i64 %189 to i32
  store i32 %190, i32* %186, align 4
  %191 = load i64, i64* @MIB_TX_URUNS, align 8
  %192 = getelementptr inbounds i64, i64* %12, i64 %191
  %193 = load i64, i64* %192, align 8
  %194 = load %struct.bfe_hw_stats*, %struct.bfe_hw_stats** %3, align 8
  %195 = getelementptr inbounds %struct.bfe_hw_stats, %struct.bfe_hw_stats* %194, i32 0, i32 31
  %196 = load i32, i32* %195, align 4
  %197 = sext i32 %196 to i64
  %198 = add nsw i64 %197, %193
  %199 = trunc i64 %198 to i32
  store i32 %199, i32* %195, align 4
  %200 = load i64, i64* @MIB_TX_TCOLS, align 8
  %201 = getelementptr inbounds i64, i64* %12, i64 %200
  %202 = load i64, i64* %201, align 8
  %203 = load %struct.bfe_hw_stats*, %struct.bfe_hw_stats** %3, align 8
  %204 = getelementptr inbounds %struct.bfe_hw_stats, %struct.bfe_hw_stats* %203, i32 0, i32 30
  %205 = load i32, i32* %204, align 4
  %206 = sext i32 %205 to i64
  %207 = add nsw i64 %206, %202
  %208 = trunc i64 %207 to i32
  store i32 %208, i32* %204, align 4
  %209 = load i64, i64* @MIB_TX_SCOLS, align 8
  %210 = getelementptr inbounds i64, i64* %12, i64 %209
  %211 = load i64, i64* %210, align 8
  %212 = load %struct.bfe_hw_stats*, %struct.bfe_hw_stats** %3, align 8
  %213 = getelementptr inbounds %struct.bfe_hw_stats, %struct.bfe_hw_stats* %212, i32 0, i32 29
  %214 = load i32, i32* %213, align 4
  %215 = sext i32 %214 to i64
  %216 = add nsw i64 %215, %211
  %217 = trunc i64 %216 to i32
  store i32 %217, i32* %213, align 4
  %218 = load i64, i64* @MIB_TX_MCOLS, align 8
  %219 = getelementptr inbounds i64, i64* %12, i64 %218
  %220 = load i64, i64* %219, align 8
  %221 = load %struct.bfe_hw_stats*, %struct.bfe_hw_stats** %3, align 8
  %222 = getelementptr inbounds %struct.bfe_hw_stats, %struct.bfe_hw_stats* %221, i32 0, i32 28
  %223 = load i32, i32* %222, align 4
  %224 = sext i32 %223 to i64
  %225 = add nsw i64 %224, %220
  %226 = trunc i64 %225 to i32
  store i32 %226, i32* %222, align 4
  %227 = load i64, i64* @MIB_TX_ECOLS, align 8
  %228 = getelementptr inbounds i64, i64* %12, i64 %227
  %229 = load i64, i64* %228, align 8
  %230 = load %struct.bfe_hw_stats*, %struct.bfe_hw_stats** %3, align 8
  %231 = getelementptr inbounds %struct.bfe_hw_stats, %struct.bfe_hw_stats* %230, i32 0, i32 27
  %232 = load i32, i32* %231, align 4
  %233 = sext i32 %232 to i64
  %234 = add nsw i64 %233, %229
  %235 = trunc i64 %234 to i32
  store i32 %235, i32* %231, align 4
  %236 = load i64, i64* @MIB_TX_LCOLS, align 8
  %237 = getelementptr inbounds i64, i64* %12, i64 %236
  %238 = load i64, i64* %237, align 8
  %239 = load %struct.bfe_hw_stats*, %struct.bfe_hw_stats** %3, align 8
  %240 = getelementptr inbounds %struct.bfe_hw_stats, %struct.bfe_hw_stats* %239, i32 0, i32 26
  %241 = load i32, i32* %240, align 4
  %242 = sext i32 %241 to i64
  %243 = add nsw i64 %242, %238
  %244 = trunc i64 %243 to i32
  store i32 %244, i32* %240, align 4
  %245 = load i64, i64* @MIB_TX_DEFERED, align 8
  %246 = getelementptr inbounds i64, i64* %12, i64 %245
  %247 = load i64, i64* %246, align 8
  %248 = load %struct.bfe_hw_stats*, %struct.bfe_hw_stats** %3, align 8
  %249 = getelementptr inbounds %struct.bfe_hw_stats, %struct.bfe_hw_stats* %248, i32 0, i32 25
  %250 = load i32, i32* %249, align 4
  %251 = sext i32 %250 to i64
  %252 = add nsw i64 %251, %247
  %253 = trunc i64 %252 to i32
  store i32 %253, i32* %249, align 4
  %254 = load i64, i64* @MIB_TX_CLOST, align 8
  %255 = getelementptr inbounds i64, i64* %12, i64 %254
  %256 = load i64, i64* %255, align 8
  %257 = load %struct.bfe_hw_stats*, %struct.bfe_hw_stats** %3, align 8
  %258 = getelementptr inbounds %struct.bfe_hw_stats, %struct.bfe_hw_stats* %257, i32 0, i32 24
  %259 = load i32, i32* %258, align 4
  %260 = sext i32 %259 to i64
  %261 = add nsw i64 %260, %256
  %262 = trunc i64 %261 to i32
  store i32 %262, i32* %258, align 4
  %263 = load i64, i64* @MIB_TX_PAUSE, align 8
  %264 = getelementptr inbounds i64, i64* %12, i64 %263
  %265 = load i64, i64* %264, align 8
  %266 = load %struct.bfe_hw_stats*, %struct.bfe_hw_stats** %3, align 8
  %267 = getelementptr inbounds %struct.bfe_hw_stats, %struct.bfe_hw_stats* %266, i32 0, i32 23
  %268 = load i32, i32* %267, align 4
  %269 = sext i32 %268 to i64
  %270 = add nsw i64 %269, %265
  %271 = trunc i64 %270 to i32
  store i32 %271, i32* %267, align 4
  %272 = load i64, i64* @MIB_RX_GOOD_O, align 8
  %273 = getelementptr inbounds i64, i64* %12, i64 %272
  %274 = load i64, i64* %273, align 8
  %275 = load %struct.bfe_hw_stats*, %struct.bfe_hw_stats** %3, align 8
  %276 = getelementptr inbounds %struct.bfe_hw_stats, %struct.bfe_hw_stats* %275, i32 0, i32 22
  %277 = load i32, i32* %276, align 4
  %278 = sext i32 %277 to i64
  %279 = add nsw i64 %278, %274
  %280 = trunc i64 %279 to i32
  store i32 %280, i32* %276, align 4
  %281 = load i64, i64* @MIB_RX_GOOD_P, align 8
  %282 = getelementptr inbounds i64, i64* %12, i64 %281
  %283 = load i64, i64* %282, align 8
  %284 = load %struct.bfe_hw_stats*, %struct.bfe_hw_stats** %3, align 8
  %285 = getelementptr inbounds %struct.bfe_hw_stats, %struct.bfe_hw_stats* %284, i32 0, i32 21
  %286 = load i32, i32* %285, align 4
  %287 = sext i32 %286 to i64
  %288 = add nsw i64 %287, %283
  %289 = trunc i64 %288 to i32
  store i32 %289, i32* %285, align 4
  %290 = load i64, i64* @MIB_RX_O, align 8
  %291 = getelementptr inbounds i64, i64* %12, i64 %290
  %292 = load i64, i64* %291, align 8
  %293 = load %struct.bfe_hw_stats*, %struct.bfe_hw_stats** %3, align 8
  %294 = getelementptr inbounds %struct.bfe_hw_stats, %struct.bfe_hw_stats* %293, i32 0, i32 20
  %295 = load i32, i32* %294, align 4
  %296 = sext i32 %295 to i64
  %297 = add nsw i64 %296, %292
  %298 = trunc i64 %297 to i32
  store i32 %298, i32* %294, align 4
  %299 = load i64, i64* @MIB_RX_P, align 8
  %300 = getelementptr inbounds i64, i64* %12, i64 %299
  %301 = load i64, i64* %300, align 8
  %302 = load %struct.bfe_hw_stats*, %struct.bfe_hw_stats** %3, align 8
  %303 = getelementptr inbounds %struct.bfe_hw_stats, %struct.bfe_hw_stats* %302, i32 0, i32 19
  %304 = load i32, i32* %303, align 4
  %305 = sext i32 %304 to i64
  %306 = add nsw i64 %305, %301
  %307 = trunc i64 %306 to i32
  store i32 %307, i32* %303, align 4
  %308 = load i64, i64* @MIB_RX_BCAST, align 8
  %309 = getelementptr inbounds i64, i64* %12, i64 %308
  %310 = load i64, i64* %309, align 8
  %311 = load %struct.bfe_hw_stats*, %struct.bfe_hw_stats** %3, align 8
  %312 = getelementptr inbounds %struct.bfe_hw_stats, %struct.bfe_hw_stats* %311, i32 0, i32 18
  %313 = load i32, i32* %312, align 4
  %314 = sext i32 %313 to i64
  %315 = add nsw i64 %314, %310
  %316 = trunc i64 %315 to i32
  store i32 %316, i32* %312, align 4
  %317 = load i64, i64* @MIB_RX_MCAST, align 8
  %318 = getelementptr inbounds i64, i64* %12, i64 %317
  %319 = load i64, i64* %318, align 8
  %320 = load %struct.bfe_hw_stats*, %struct.bfe_hw_stats** %3, align 8
  %321 = getelementptr inbounds %struct.bfe_hw_stats, %struct.bfe_hw_stats* %320, i32 0, i32 17
  %322 = load i32, i32* %321, align 4
  %323 = sext i32 %322 to i64
  %324 = add nsw i64 %323, %319
  %325 = trunc i64 %324 to i32
  store i32 %325, i32* %321, align 4
  %326 = load i64, i64* @MIB_RX_64, align 8
  %327 = getelementptr inbounds i64, i64* %12, i64 %326
  %328 = load i64, i64* %327, align 8
  %329 = load %struct.bfe_hw_stats*, %struct.bfe_hw_stats** %3, align 8
  %330 = getelementptr inbounds %struct.bfe_hw_stats, %struct.bfe_hw_stats* %329, i32 0, i32 16
  %331 = load i32, i32* %330, align 4
  %332 = sext i32 %331 to i64
  %333 = add nsw i64 %332, %328
  %334 = trunc i64 %333 to i32
  store i32 %334, i32* %330, align 4
  %335 = load i64, i64* @MIB_RX_65_127, align 8
  %336 = getelementptr inbounds i64, i64* %12, i64 %335
  %337 = load i64, i64* %336, align 8
  %338 = load %struct.bfe_hw_stats*, %struct.bfe_hw_stats** %3, align 8
  %339 = getelementptr inbounds %struct.bfe_hw_stats, %struct.bfe_hw_stats* %338, i32 0, i32 15
  %340 = load i32, i32* %339, align 4
  %341 = sext i32 %340 to i64
  %342 = add nsw i64 %341, %337
  %343 = trunc i64 %342 to i32
  store i32 %343, i32* %339, align 4
  %344 = load i64, i64* @MIB_RX_128_255, align 8
  %345 = getelementptr inbounds i64, i64* %12, i64 %344
  %346 = load i64, i64* %345, align 8
  %347 = load %struct.bfe_hw_stats*, %struct.bfe_hw_stats** %3, align 8
  %348 = getelementptr inbounds %struct.bfe_hw_stats, %struct.bfe_hw_stats* %347, i32 0, i32 14
  %349 = load i32, i32* %348, align 4
  %350 = sext i32 %349 to i64
  %351 = add nsw i64 %350, %346
  %352 = trunc i64 %351 to i32
  store i32 %352, i32* %348, align 4
  %353 = load i64, i64* @MIB_RX_256_511, align 8
  %354 = getelementptr inbounds i64, i64* %12, i64 %353
  %355 = load i64, i64* %354, align 8
  %356 = load %struct.bfe_hw_stats*, %struct.bfe_hw_stats** %3, align 8
  %357 = getelementptr inbounds %struct.bfe_hw_stats, %struct.bfe_hw_stats* %356, i32 0, i32 13
  %358 = load i32, i32* %357, align 4
  %359 = sext i32 %358 to i64
  %360 = add nsw i64 %359, %355
  %361 = trunc i64 %360 to i32
  store i32 %361, i32* %357, align 4
  %362 = load i64, i64* @MIB_RX_512_1023, align 8
  %363 = getelementptr inbounds i64, i64* %12, i64 %362
  %364 = load i64, i64* %363, align 8
  %365 = load %struct.bfe_hw_stats*, %struct.bfe_hw_stats** %3, align 8
  %366 = getelementptr inbounds %struct.bfe_hw_stats, %struct.bfe_hw_stats* %365, i32 0, i32 12
  %367 = load i32, i32* %366, align 4
  %368 = sext i32 %367 to i64
  %369 = add nsw i64 %368, %364
  %370 = trunc i64 %369 to i32
  store i32 %370, i32* %366, align 4
  %371 = load i64, i64* @MIB_RX_1024_MAX, align 8
  %372 = getelementptr inbounds i64, i64* %12, i64 %371
  %373 = load i64, i64* %372, align 8
  %374 = load %struct.bfe_hw_stats*, %struct.bfe_hw_stats** %3, align 8
  %375 = getelementptr inbounds %struct.bfe_hw_stats, %struct.bfe_hw_stats* %374, i32 0, i32 11
  %376 = load i32, i32* %375, align 4
  %377 = sext i32 %376 to i64
  %378 = add nsw i64 %377, %373
  %379 = trunc i64 %378 to i32
  store i32 %379, i32* %375, align 4
  %380 = load i64, i64* @MIB_RX_JABBER, align 8
  %381 = getelementptr inbounds i64, i64* %12, i64 %380
  %382 = load i64, i64* %381, align 8
  %383 = load %struct.bfe_hw_stats*, %struct.bfe_hw_stats** %3, align 8
  %384 = getelementptr inbounds %struct.bfe_hw_stats, %struct.bfe_hw_stats* %383, i32 0, i32 10
  %385 = load i32, i32* %384, align 4
  %386 = sext i32 %385 to i64
  %387 = add nsw i64 %386, %382
  %388 = trunc i64 %387 to i32
  store i32 %388, i32* %384, align 4
  %389 = load i64, i64* @MIB_RX_OSIZE, align 8
  %390 = getelementptr inbounds i64, i64* %12, i64 %389
  %391 = load i64, i64* %390, align 8
  %392 = load %struct.bfe_hw_stats*, %struct.bfe_hw_stats** %3, align 8
  %393 = getelementptr inbounds %struct.bfe_hw_stats, %struct.bfe_hw_stats* %392, i32 0, i32 9
  %394 = load i32, i32* %393, align 4
  %395 = sext i32 %394 to i64
  %396 = add nsw i64 %395, %391
  %397 = trunc i64 %396 to i32
  store i32 %397, i32* %393, align 4
  %398 = load i64, i64* @MIB_RX_FRAG, align 8
  %399 = getelementptr inbounds i64, i64* %12, i64 %398
  %400 = load i64, i64* %399, align 8
  %401 = load %struct.bfe_hw_stats*, %struct.bfe_hw_stats** %3, align 8
  %402 = getelementptr inbounds %struct.bfe_hw_stats, %struct.bfe_hw_stats* %401, i32 0, i32 8
  %403 = load i32, i32* %402, align 4
  %404 = sext i32 %403 to i64
  %405 = add nsw i64 %404, %400
  %406 = trunc i64 %405 to i32
  store i32 %406, i32* %402, align 4
  %407 = load i64, i64* @MIB_RX_MISS, align 8
  %408 = getelementptr inbounds i64, i64* %12, i64 %407
  %409 = load i64, i64* %408, align 8
  %410 = load %struct.bfe_hw_stats*, %struct.bfe_hw_stats** %3, align 8
  %411 = getelementptr inbounds %struct.bfe_hw_stats, %struct.bfe_hw_stats* %410, i32 0, i32 7
  %412 = load i32, i32* %411, align 4
  %413 = sext i32 %412 to i64
  %414 = add nsw i64 %413, %409
  %415 = trunc i64 %414 to i32
  store i32 %415, i32* %411, align 4
  %416 = load i64, i64* @MIB_RX_CRCA, align 8
  %417 = getelementptr inbounds i64, i64* %12, i64 %416
  %418 = load i64, i64* %417, align 8
  %419 = load %struct.bfe_hw_stats*, %struct.bfe_hw_stats** %3, align 8
  %420 = getelementptr inbounds %struct.bfe_hw_stats, %struct.bfe_hw_stats* %419, i32 0, i32 6
  %421 = load i32, i32* %420, align 4
  %422 = sext i32 %421 to i64
  %423 = add nsw i64 %422, %418
  %424 = trunc i64 %423 to i32
  store i32 %424, i32* %420, align 4
  %425 = load i64, i64* @MIB_RX_USIZE, align 8
  %426 = getelementptr inbounds i64, i64* %12, i64 %425
  %427 = load i64, i64* %426, align 8
  %428 = load %struct.bfe_hw_stats*, %struct.bfe_hw_stats** %3, align 8
  %429 = getelementptr inbounds %struct.bfe_hw_stats, %struct.bfe_hw_stats* %428, i32 0, i32 5
  %430 = load i32, i32* %429, align 4
  %431 = sext i32 %430 to i64
  %432 = add nsw i64 %431, %427
  %433 = trunc i64 %432 to i32
  store i32 %433, i32* %429, align 4
  %434 = load i64, i64* @MIB_RX_CRC, align 8
  %435 = getelementptr inbounds i64, i64* %12, i64 %434
  %436 = load i64, i64* %435, align 8
  %437 = load %struct.bfe_hw_stats*, %struct.bfe_hw_stats** %3, align 8
  %438 = getelementptr inbounds %struct.bfe_hw_stats, %struct.bfe_hw_stats* %437, i32 0, i32 4
  %439 = load i32, i32* %438, align 4
  %440 = sext i32 %439 to i64
  %441 = add nsw i64 %440, %436
  %442 = trunc i64 %441 to i32
  store i32 %442, i32* %438, align 4
  %443 = load i64, i64* @MIB_RX_ALIGN, align 8
  %444 = getelementptr inbounds i64, i64* %12, i64 %443
  %445 = load i64, i64* %444, align 8
  %446 = load %struct.bfe_hw_stats*, %struct.bfe_hw_stats** %3, align 8
  %447 = getelementptr inbounds %struct.bfe_hw_stats, %struct.bfe_hw_stats* %446, i32 0, i32 3
  %448 = load i32, i32* %447, align 4
  %449 = sext i32 %448 to i64
  %450 = add nsw i64 %449, %445
  %451 = trunc i64 %450 to i32
  store i32 %451, i32* %447, align 4
  %452 = load i64, i64* @MIB_RX_SYM, align 8
  %453 = getelementptr inbounds i64, i64* %12, i64 %452
  %454 = load i64, i64* %453, align 8
  %455 = load %struct.bfe_hw_stats*, %struct.bfe_hw_stats** %3, align 8
  %456 = getelementptr inbounds %struct.bfe_hw_stats, %struct.bfe_hw_stats* %455, i32 0, i32 2
  %457 = load i32, i32* %456, align 4
  %458 = sext i32 %457 to i64
  %459 = add nsw i64 %458, %454
  %460 = trunc i64 %459 to i32
  store i32 %460, i32* %456, align 4
  %461 = load i64, i64* @MIB_RX_PAUSE, align 8
  %462 = getelementptr inbounds i64, i64* %12, i64 %461
  %463 = load i64, i64* %462, align 8
  %464 = load %struct.bfe_hw_stats*, %struct.bfe_hw_stats** %3, align 8
  %465 = getelementptr inbounds %struct.bfe_hw_stats, %struct.bfe_hw_stats* %464, i32 0, i32 1
  %466 = load i32, i32* %465, align 4
  %467 = sext i32 %466 to i64
  %468 = add nsw i64 %467, %463
  %469 = trunc i64 %468 to i32
  store i32 %469, i32* %465, align 4
  %470 = load i64, i64* @MIB_RX_NPAUSE, align 8
  %471 = getelementptr inbounds i64, i64* %12, i64 %470
  %472 = load i64, i64* %471, align 8
  %473 = load %struct.bfe_hw_stats*, %struct.bfe_hw_stats** %3, align 8
  %474 = getelementptr inbounds %struct.bfe_hw_stats, %struct.bfe_hw_stats* %473, i32 0, i32 0
  %475 = load i32, i32* %474, align 4
  %476 = sext i32 %475 to i64
  %477 = add nsw i64 %476, %472
  %478 = trunc i64 %477 to i32
  store i32 %478, i32* %474, align 4
  %479 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %480 = load i32, i32* @IFCOUNTER_OPACKETS, align 4
  %481 = load i64, i64* @MIB_TX_GOOD_P, align 8
  %482 = getelementptr inbounds i64, i64* %12, i64 %481
  %483 = load i64, i64* %482, align 8
  %484 = call i32 @if_inc_counter(%struct.ifnet* %479, i32 %480, i64 %483)
  %485 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %486 = load i32, i32* @IFCOUNTER_COLLISIONS, align 4
  %487 = load i64, i64* @MIB_TX_TCOLS, align 8
  %488 = getelementptr inbounds i64, i64* %12, i64 %487
  %489 = load i64, i64* %488, align 8
  %490 = call i32 @if_inc_counter(%struct.ifnet* %485, i32 %486, i64 %489)
  %491 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %492 = load i32, i32* @IFCOUNTER_OERRORS, align 4
  %493 = load i64, i64* @MIB_TX_URUNS, align 8
  %494 = getelementptr inbounds i64, i64* %12, i64 %493
  %495 = load i64, i64* %494, align 8
  %496 = load i64, i64* @MIB_TX_ECOLS, align 8
  %497 = getelementptr inbounds i64, i64* %12, i64 %496
  %498 = load i64, i64* %497, align 8
  %499 = add nsw i64 %495, %498
  %500 = load i64, i64* @MIB_TX_DEFERED, align 8
  %501 = getelementptr inbounds i64, i64* %12, i64 %500
  %502 = load i64, i64* %501, align 8
  %503 = add nsw i64 %499, %502
  %504 = load i64, i64* @MIB_TX_CLOST, align 8
  %505 = getelementptr inbounds i64, i64* %12, i64 %504
  %506 = load i64, i64* %505, align 8
  %507 = add nsw i64 %503, %506
  %508 = call i32 @if_inc_counter(%struct.ifnet* %491, i32 %492, i64 %507)
  %509 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %510 = load i32, i32* @IFCOUNTER_IPACKETS, align 4
  %511 = load i64, i64* @MIB_RX_GOOD_P, align 8
  %512 = getelementptr inbounds i64, i64* %12, i64 %511
  %513 = load i64, i64* %512, align 8
  %514 = call i32 @if_inc_counter(%struct.ifnet* %509, i32 %510, i64 %513)
  %515 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %516 = load i32, i32* @IFCOUNTER_IERRORS, align 4
  %517 = load i64, i64* @MIB_RX_JABBER, align 8
  %518 = getelementptr inbounds i64, i64* %12, i64 %517
  %519 = load i64, i64* %518, align 8
  %520 = load i64, i64* @MIB_RX_MISS, align 8
  %521 = getelementptr inbounds i64, i64* %12, i64 %520
  %522 = load i64, i64* %521, align 8
  %523 = add nsw i64 %519, %522
  %524 = load i64, i64* @MIB_RX_CRCA, align 8
  %525 = getelementptr inbounds i64, i64* %12, i64 %524
  %526 = load i64, i64* %525, align 8
  %527 = add nsw i64 %523, %526
  %528 = load i64, i64* @MIB_RX_USIZE, align 8
  %529 = getelementptr inbounds i64, i64* %12, i64 %528
  %530 = load i64, i64* %529, align 8
  %531 = add nsw i64 %527, %530
  %532 = load i64, i64* @MIB_RX_CRC, align 8
  %533 = getelementptr inbounds i64, i64* %12, i64 %532
  %534 = load i64, i64* %533, align 8
  %535 = add nsw i64 %531, %534
  %536 = load i64, i64* @MIB_RX_ALIGN, align 8
  %537 = getelementptr inbounds i64, i64* %12, i64 %536
  %538 = load i64, i64* %537, align 8
  %539 = add nsw i64 %535, %538
  %540 = load i64, i64* @MIB_RX_SYM, align 8
  %541 = getelementptr inbounds i64, i64* %12, i64 %540
  %542 = load i64, i64* %541, align 8
  %543 = add nsw i64 %539, %542
  %544 = call i32 @if_inc_counter(%struct.ifnet* %515, i32 %516, i64 %543)
  %545 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %545)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @BFE_LOCK_ASSERT(%struct.bfe_softc*) #2

declare dso_local i32 @CSR_WRITE_4(%struct.bfe_softc*, i32, i32) #2

declare dso_local i8* @CSR_READ_4(%struct.bfe_softc*, i64) #2

declare dso_local i32 @if_inc_counter(%struct.ifnet*, i32, i64) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
