; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/vge/extr_if_vge.c_vge_stats_update.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/vge/extr_if_vge.c_vge_stats_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vge_softc = type { i32, %struct.ifnet*, %struct.vge_hw_stats }
%struct.ifnet = type { i32 }
%struct.vge_hw_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@VGE_MIB_CNT = common dso_local global i32 0, align 4
@VGE_MIBCSR = common dso_local global i32 0, align 4
@VGE_MIBCSR_FLUSH = common dso_local global i32 0, align 4
@VGE_TIMEOUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"MIB counter dump timed out!\0A\00", align 1
@VGE_MIBCSR_RINI = common dso_local global i32 0, align 4
@VGE_MIBDATA = common dso_local global i32 0, align 4
@VGE_MIB_DATA_MASK = common dso_local global i32 0, align 4
@VGE_MIB_RX_FRAMES = common dso_local global i64 0, align 8
@VGE_MIB_RX_GOOD_FRAMES = common dso_local global i64 0, align 8
@VGE_MIB_RX_FIFO_OVERRUNS = common dso_local global i64 0, align 8
@VGE_MIB_RX_RUNTS = common dso_local global i64 0, align 8
@VGE_MIB_RX_RUNTS_ERRS = common dso_local global i64 0, align 8
@VGE_MIB_RX_PKTS_64 = common dso_local global i64 0, align 8
@VGE_MIB_RX_PKTS_65_127 = common dso_local global i64 0, align 8
@VGE_MIB_RX_PKTS_128_255 = common dso_local global i64 0, align 8
@VGE_MIB_RX_PKTS_256_511 = common dso_local global i64 0, align 8
@VGE_MIB_RX_PKTS_512_1023 = common dso_local global i64 0, align 8
@VGE_MIB_RX_PKTS_1024_1518 = common dso_local global i64 0, align 8
@VGE_MIB_RX_PKTS_1519_MAX = common dso_local global i64 0, align 8
@VGE_MIB_RX_PKTS_1519_MAX_ERRS = common dso_local global i64 0, align 8
@VGE_MIB_RX_JUMBOS = common dso_local global i64 0, align 8
@VGE_MIB_RX_CRCERRS = common dso_local global i64 0, align 8
@VGE_MIB_RX_PAUSE = common dso_local global i64 0, align 8
@VGE_MIB_RX_ALIGNERRS = common dso_local global i64 0, align 8
@VGE_MIB_RX_NOBUFS = common dso_local global i64 0, align 8
@VGE_MIB_RX_SYMERRS = common dso_local global i64 0, align 8
@VGE_MIB_RX_LENERRS = common dso_local global i64 0, align 8
@VGE_MIB_TX_GOOD_FRAMES = common dso_local global i64 0, align 8
@VGE_MIB_TX_PKTS_64 = common dso_local global i64 0, align 8
@VGE_MIB_TX_PKTS_65_127 = common dso_local global i64 0, align 8
@VGE_MIB_TX_PKTS_128_255 = common dso_local global i64 0, align 8
@VGE_MIB_TX_PKTS_256_511 = common dso_local global i64 0, align 8
@VGE_MIB_TX_PKTS_512_1023 = common dso_local global i64 0, align 8
@VGE_MIB_TX_PKTS_1024_1518 = common dso_local global i64 0, align 8
@VGE_MIB_TX_JUMBOS = common dso_local global i64 0, align 8
@VGE_MIB_TX_COLLS = common dso_local global i64 0, align 8
@VGE_MIB_TX_PAUSE = common dso_local global i64 0, align 8
@VGE_MIB_TX_LATECOLLS = common dso_local global i64 0, align 8
@IFCOUNTER_OPACKETS = common dso_local global i32 0, align 4
@IFCOUNTER_COLLISIONS = common dso_local global i32 0, align 4
@IFCOUNTER_OERRORS = common dso_local global i32 0, align 4
@IFCOUNTER_IPACKETS = common dso_local global i32 0, align 4
@IFCOUNTER_IERRORS = common dso_local global i32 0, align 4
@VGE_MIB_TX_SQEERRS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vge_softc*)* @vge_stats_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vge_stats_update(%struct.vge_softc* %0) #0 {
  %2 = alloca %struct.vge_softc*, align 8
  %3 = alloca %struct.vge_hw_stats*, align 8
  %4 = alloca %struct.ifnet*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.vge_softc* %0, %struct.vge_softc** %2, align 8
  %10 = load i32, i32* @VGE_MIB_CNT, align 4
  %11 = zext i32 %10 to i64
  %12 = call i8* @llvm.stacksave()
  store i8* %12, i8** %5, align 8
  %13 = alloca i32, i64 %11, align 16
  store i64 %11, i64* %6, align 8
  %14 = load %struct.vge_softc*, %struct.vge_softc** %2, align 8
  %15 = call i32 @VGE_LOCK_ASSERT(%struct.vge_softc* %14)
  %16 = load %struct.vge_softc*, %struct.vge_softc** %2, align 8
  %17 = getelementptr inbounds %struct.vge_softc, %struct.vge_softc* %16, i32 0, i32 2
  store %struct.vge_hw_stats* %17, %struct.vge_hw_stats** %3, align 8
  %18 = load %struct.vge_softc*, %struct.vge_softc** %2, align 8
  %19 = getelementptr inbounds %struct.vge_softc, %struct.vge_softc* %18, i32 0, i32 1
  %20 = load %struct.ifnet*, %struct.ifnet** %19, align 8
  store %struct.ifnet* %20, %struct.ifnet** %4, align 8
  %21 = load %struct.vge_softc*, %struct.vge_softc** %2, align 8
  %22 = load i32, i32* @VGE_MIBCSR, align 4
  %23 = load %struct.vge_softc*, %struct.vge_softc** %2, align 8
  %24 = load i32, i32* @VGE_MIBCSR, align 4
  %25 = call i32 @CSR_READ_1(%struct.vge_softc* %23, i32 %24)
  %26 = load i32, i32* @VGE_MIBCSR_FLUSH, align 4
  %27 = or i32 %25, %26
  %28 = call i32 @CSR_WRITE_1(%struct.vge_softc* %21, i32 %22, i32 %27)
  %29 = load i32, i32* @VGE_TIMEOUT, align 4
  store i32 %29, i32* %8, align 4
  br label %30

30:                                               ; preds = %43, %1
  %31 = load i32, i32* %8, align 4
  %32 = icmp sgt i32 %31, 0
  br i1 %32, label %33, label %46

33:                                               ; preds = %30
  %34 = call i32 @DELAY(i32 1)
  %35 = load %struct.vge_softc*, %struct.vge_softc** %2, align 8
  %36 = load i32, i32* @VGE_MIBCSR, align 4
  %37 = call i32 @CSR_READ_1(%struct.vge_softc* %35, i32 %36)
  %38 = load i32, i32* @VGE_MIBCSR_FLUSH, align 4
  %39 = and i32 %37, %38
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %33
  br label %46

42:                                               ; preds = %33
  br label %43

43:                                               ; preds = %42
  %44 = load i32, i32* %8, align 4
  %45 = add nsw i32 %44, -1
  store i32 %45, i32* %8, align 4
  br label %30

46:                                               ; preds = %41, %30
  %47 = load i32, i32* %8, align 4
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %56

49:                                               ; preds = %46
  %50 = load %struct.vge_softc*, %struct.vge_softc** %2, align 8
  %51 = getelementptr inbounds %struct.vge_softc, %struct.vge_softc* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @device_printf(i32 %52, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %54 = load %struct.vge_softc*, %struct.vge_softc** %2, align 8
  %55 = call i32 @vge_stats_clear(%struct.vge_softc* %54)
  store i32 1, i32* %9, align 4
  br label %376

56:                                               ; preds = %46
  %57 = mul nuw i64 4, %11
  %58 = trunc i64 %57 to i32
  %59 = call i32 @bzero(i32* %13, i32 %58)
  br label %60

60:                                               ; preds = %81, %56
  %61 = load %struct.vge_softc*, %struct.vge_softc** %2, align 8
  %62 = load i32, i32* @VGE_MIBCSR, align 4
  %63 = load %struct.vge_softc*, %struct.vge_softc** %2, align 8
  %64 = load i32, i32* @VGE_MIBCSR, align 4
  %65 = call i32 @CSR_READ_1(%struct.vge_softc* %63, i32 %64)
  %66 = load i32, i32* @VGE_MIBCSR_RINI, align 4
  %67 = or i32 %65, %66
  %68 = call i32 @CSR_WRITE_1(%struct.vge_softc* %61, i32 %62, i32 %67)
  store i32 0, i32* %8, align 4
  br label %69

69:                                               ; preds = %89, %60
  %70 = load i32, i32* %8, align 4
  %71 = load i32, i32* @VGE_MIB_CNT, align 4
  %72 = icmp slt i32 %70, %71
  br i1 %72, label %73, label %92

73:                                               ; preds = %69
  %74 = load %struct.vge_softc*, %struct.vge_softc** %2, align 8
  %75 = load i32, i32* @VGE_MIBDATA, align 4
  %76 = call i32 @CSR_READ_4(%struct.vge_softc* %74, i32 %75)
  store i32 %76, i32* %7, align 4
  %77 = load i32, i32* %8, align 4
  %78 = load i32, i32* %7, align 4
  %79 = call i32 @VGE_MIB_DATA_IDX(i32 %78)
  %80 = icmp ne i32 %77, %79
  br i1 %80, label %81, label %82

81:                                               ; preds = %73
  br label %60

82:                                               ; preds = %73
  %83 = load i32, i32* %7, align 4
  %84 = load i32, i32* @VGE_MIB_DATA_MASK, align 4
  %85 = and i32 %83, %84
  %86 = load i32, i32* %8, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i32, i32* %13, i64 %87
  store i32 %85, i32* %88, align 4
  br label %89

89:                                               ; preds = %82
  %90 = load i32, i32* %8, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %8, align 4
  br label %69

92:                                               ; preds = %69
  %93 = load i64, i64* @VGE_MIB_RX_FRAMES, align 8
  %94 = getelementptr inbounds i32, i32* %13, i64 %93
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.vge_hw_stats*, %struct.vge_hw_stats** %3, align 8
  %97 = getelementptr inbounds %struct.vge_hw_stats, %struct.vge_hw_stats* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = add nsw i32 %98, %95
  store i32 %99, i32* %97, align 4
  %100 = load i64, i64* @VGE_MIB_RX_GOOD_FRAMES, align 8
  %101 = getelementptr inbounds i32, i32* %13, i64 %100
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.vge_hw_stats*, %struct.vge_hw_stats** %3, align 8
  %104 = getelementptr inbounds %struct.vge_hw_stats, %struct.vge_hw_stats* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = add nsw i32 %105, %102
  store i32 %106, i32* %104, align 4
  %107 = load i64, i64* @VGE_MIB_RX_FIFO_OVERRUNS, align 8
  %108 = getelementptr inbounds i32, i32* %13, i64 %107
  %109 = load i32, i32* %108, align 4
  %110 = load %struct.vge_hw_stats*, %struct.vge_hw_stats** %3, align 8
  %111 = getelementptr inbounds %struct.vge_hw_stats, %struct.vge_hw_stats* %110, i32 0, i32 2
  %112 = load i32, i32* %111, align 4
  %113 = add nsw i32 %112, %109
  store i32 %113, i32* %111, align 4
  %114 = load i64, i64* @VGE_MIB_RX_RUNTS, align 8
  %115 = getelementptr inbounds i32, i32* %13, i64 %114
  %116 = load i32, i32* %115, align 4
  %117 = load %struct.vge_hw_stats*, %struct.vge_hw_stats** %3, align 8
  %118 = getelementptr inbounds %struct.vge_hw_stats, %struct.vge_hw_stats* %117, i32 0, i32 3
  %119 = load i32, i32* %118, align 4
  %120 = add nsw i32 %119, %116
  store i32 %120, i32* %118, align 4
  %121 = load i64, i64* @VGE_MIB_RX_RUNTS_ERRS, align 8
  %122 = getelementptr inbounds i32, i32* %13, i64 %121
  %123 = load i32, i32* %122, align 4
  %124 = load %struct.vge_hw_stats*, %struct.vge_hw_stats** %3, align 8
  %125 = getelementptr inbounds %struct.vge_hw_stats, %struct.vge_hw_stats* %124, i32 0, i32 4
  %126 = load i32, i32* %125, align 4
  %127 = add nsw i32 %126, %123
  store i32 %127, i32* %125, align 4
  %128 = load i64, i64* @VGE_MIB_RX_PKTS_64, align 8
  %129 = getelementptr inbounds i32, i32* %13, i64 %128
  %130 = load i32, i32* %129, align 4
  %131 = load %struct.vge_hw_stats*, %struct.vge_hw_stats** %3, align 8
  %132 = getelementptr inbounds %struct.vge_hw_stats, %struct.vge_hw_stats* %131, i32 0, i32 5
  %133 = load i32, i32* %132, align 4
  %134 = add nsw i32 %133, %130
  store i32 %134, i32* %132, align 4
  %135 = load i64, i64* @VGE_MIB_RX_PKTS_65_127, align 8
  %136 = getelementptr inbounds i32, i32* %13, i64 %135
  %137 = load i32, i32* %136, align 4
  %138 = load %struct.vge_hw_stats*, %struct.vge_hw_stats** %3, align 8
  %139 = getelementptr inbounds %struct.vge_hw_stats, %struct.vge_hw_stats* %138, i32 0, i32 6
  %140 = load i32, i32* %139, align 4
  %141 = add nsw i32 %140, %137
  store i32 %141, i32* %139, align 4
  %142 = load i64, i64* @VGE_MIB_RX_PKTS_128_255, align 8
  %143 = getelementptr inbounds i32, i32* %13, i64 %142
  %144 = load i32, i32* %143, align 4
  %145 = load %struct.vge_hw_stats*, %struct.vge_hw_stats** %3, align 8
  %146 = getelementptr inbounds %struct.vge_hw_stats, %struct.vge_hw_stats* %145, i32 0, i32 7
  %147 = load i32, i32* %146, align 4
  %148 = add nsw i32 %147, %144
  store i32 %148, i32* %146, align 4
  %149 = load i64, i64* @VGE_MIB_RX_PKTS_256_511, align 8
  %150 = getelementptr inbounds i32, i32* %13, i64 %149
  %151 = load i32, i32* %150, align 4
  %152 = load %struct.vge_hw_stats*, %struct.vge_hw_stats** %3, align 8
  %153 = getelementptr inbounds %struct.vge_hw_stats, %struct.vge_hw_stats* %152, i32 0, i32 8
  %154 = load i32, i32* %153, align 4
  %155 = add nsw i32 %154, %151
  store i32 %155, i32* %153, align 4
  %156 = load i64, i64* @VGE_MIB_RX_PKTS_512_1023, align 8
  %157 = getelementptr inbounds i32, i32* %13, i64 %156
  %158 = load i32, i32* %157, align 4
  %159 = load %struct.vge_hw_stats*, %struct.vge_hw_stats** %3, align 8
  %160 = getelementptr inbounds %struct.vge_hw_stats, %struct.vge_hw_stats* %159, i32 0, i32 9
  %161 = load i32, i32* %160, align 4
  %162 = add nsw i32 %161, %158
  store i32 %162, i32* %160, align 4
  %163 = load i64, i64* @VGE_MIB_RX_PKTS_1024_1518, align 8
  %164 = getelementptr inbounds i32, i32* %13, i64 %163
  %165 = load i32, i32* %164, align 4
  %166 = load %struct.vge_hw_stats*, %struct.vge_hw_stats** %3, align 8
  %167 = getelementptr inbounds %struct.vge_hw_stats, %struct.vge_hw_stats* %166, i32 0, i32 10
  %168 = load i32, i32* %167, align 4
  %169 = add nsw i32 %168, %165
  store i32 %169, i32* %167, align 4
  %170 = load i64, i64* @VGE_MIB_RX_PKTS_1519_MAX, align 8
  %171 = getelementptr inbounds i32, i32* %13, i64 %170
  %172 = load i32, i32* %171, align 4
  %173 = load %struct.vge_hw_stats*, %struct.vge_hw_stats** %3, align 8
  %174 = getelementptr inbounds %struct.vge_hw_stats, %struct.vge_hw_stats* %173, i32 0, i32 11
  %175 = load i32, i32* %174, align 4
  %176 = add nsw i32 %175, %172
  store i32 %176, i32* %174, align 4
  %177 = load i64, i64* @VGE_MIB_RX_PKTS_1519_MAX_ERRS, align 8
  %178 = getelementptr inbounds i32, i32* %13, i64 %177
  %179 = load i32, i32* %178, align 4
  %180 = load %struct.vge_hw_stats*, %struct.vge_hw_stats** %3, align 8
  %181 = getelementptr inbounds %struct.vge_hw_stats, %struct.vge_hw_stats* %180, i32 0, i32 12
  %182 = load i32, i32* %181, align 4
  %183 = add nsw i32 %182, %179
  store i32 %183, i32* %181, align 4
  %184 = load i64, i64* @VGE_MIB_RX_JUMBOS, align 8
  %185 = getelementptr inbounds i32, i32* %13, i64 %184
  %186 = load i32, i32* %185, align 4
  %187 = load %struct.vge_hw_stats*, %struct.vge_hw_stats** %3, align 8
  %188 = getelementptr inbounds %struct.vge_hw_stats, %struct.vge_hw_stats* %187, i32 0, i32 13
  %189 = load i32, i32* %188, align 4
  %190 = add nsw i32 %189, %186
  store i32 %190, i32* %188, align 4
  %191 = load i64, i64* @VGE_MIB_RX_CRCERRS, align 8
  %192 = getelementptr inbounds i32, i32* %13, i64 %191
  %193 = load i32, i32* %192, align 4
  %194 = load %struct.vge_hw_stats*, %struct.vge_hw_stats** %3, align 8
  %195 = getelementptr inbounds %struct.vge_hw_stats, %struct.vge_hw_stats* %194, i32 0, i32 14
  %196 = load i32, i32* %195, align 4
  %197 = add nsw i32 %196, %193
  store i32 %197, i32* %195, align 4
  %198 = load i64, i64* @VGE_MIB_RX_PAUSE, align 8
  %199 = getelementptr inbounds i32, i32* %13, i64 %198
  %200 = load i32, i32* %199, align 4
  %201 = load %struct.vge_hw_stats*, %struct.vge_hw_stats** %3, align 8
  %202 = getelementptr inbounds %struct.vge_hw_stats, %struct.vge_hw_stats* %201, i32 0, i32 15
  %203 = load i32, i32* %202, align 4
  %204 = add nsw i32 %203, %200
  store i32 %204, i32* %202, align 4
  %205 = load i64, i64* @VGE_MIB_RX_ALIGNERRS, align 8
  %206 = getelementptr inbounds i32, i32* %13, i64 %205
  %207 = load i32, i32* %206, align 4
  %208 = load %struct.vge_hw_stats*, %struct.vge_hw_stats** %3, align 8
  %209 = getelementptr inbounds %struct.vge_hw_stats, %struct.vge_hw_stats* %208, i32 0, i32 16
  %210 = load i32, i32* %209, align 4
  %211 = add nsw i32 %210, %207
  store i32 %211, i32* %209, align 4
  %212 = load i64, i64* @VGE_MIB_RX_NOBUFS, align 8
  %213 = getelementptr inbounds i32, i32* %13, i64 %212
  %214 = load i32, i32* %213, align 4
  %215 = load %struct.vge_hw_stats*, %struct.vge_hw_stats** %3, align 8
  %216 = getelementptr inbounds %struct.vge_hw_stats, %struct.vge_hw_stats* %215, i32 0, i32 17
  %217 = load i32, i32* %216, align 4
  %218 = add nsw i32 %217, %214
  store i32 %218, i32* %216, align 4
  %219 = load i64, i64* @VGE_MIB_RX_SYMERRS, align 8
  %220 = getelementptr inbounds i32, i32* %13, i64 %219
  %221 = load i32, i32* %220, align 4
  %222 = load %struct.vge_hw_stats*, %struct.vge_hw_stats** %3, align 8
  %223 = getelementptr inbounds %struct.vge_hw_stats, %struct.vge_hw_stats* %222, i32 0, i32 18
  %224 = load i32, i32* %223, align 4
  %225 = add nsw i32 %224, %221
  store i32 %225, i32* %223, align 4
  %226 = load i64, i64* @VGE_MIB_RX_LENERRS, align 8
  %227 = getelementptr inbounds i32, i32* %13, i64 %226
  %228 = load i32, i32* %227, align 4
  %229 = load %struct.vge_hw_stats*, %struct.vge_hw_stats** %3, align 8
  %230 = getelementptr inbounds %struct.vge_hw_stats, %struct.vge_hw_stats* %229, i32 0, i32 19
  %231 = load i32, i32* %230, align 4
  %232 = add nsw i32 %231, %228
  store i32 %232, i32* %230, align 4
  %233 = load i64, i64* @VGE_MIB_TX_GOOD_FRAMES, align 8
  %234 = getelementptr inbounds i32, i32* %13, i64 %233
  %235 = load i32, i32* %234, align 4
  %236 = load %struct.vge_hw_stats*, %struct.vge_hw_stats** %3, align 8
  %237 = getelementptr inbounds %struct.vge_hw_stats, %struct.vge_hw_stats* %236, i32 0, i32 20
  %238 = load i32, i32* %237, align 4
  %239 = add nsw i32 %238, %235
  store i32 %239, i32* %237, align 4
  %240 = load i64, i64* @VGE_MIB_TX_PKTS_64, align 8
  %241 = getelementptr inbounds i32, i32* %13, i64 %240
  %242 = load i32, i32* %241, align 4
  %243 = load %struct.vge_hw_stats*, %struct.vge_hw_stats** %3, align 8
  %244 = getelementptr inbounds %struct.vge_hw_stats, %struct.vge_hw_stats* %243, i32 0, i32 21
  %245 = load i32, i32* %244, align 4
  %246 = add nsw i32 %245, %242
  store i32 %246, i32* %244, align 4
  %247 = load i64, i64* @VGE_MIB_TX_PKTS_65_127, align 8
  %248 = getelementptr inbounds i32, i32* %13, i64 %247
  %249 = load i32, i32* %248, align 4
  %250 = load %struct.vge_hw_stats*, %struct.vge_hw_stats** %3, align 8
  %251 = getelementptr inbounds %struct.vge_hw_stats, %struct.vge_hw_stats* %250, i32 0, i32 22
  %252 = load i32, i32* %251, align 4
  %253 = add nsw i32 %252, %249
  store i32 %253, i32* %251, align 4
  %254 = load i64, i64* @VGE_MIB_TX_PKTS_128_255, align 8
  %255 = getelementptr inbounds i32, i32* %13, i64 %254
  %256 = load i32, i32* %255, align 4
  %257 = load %struct.vge_hw_stats*, %struct.vge_hw_stats** %3, align 8
  %258 = getelementptr inbounds %struct.vge_hw_stats, %struct.vge_hw_stats* %257, i32 0, i32 23
  %259 = load i32, i32* %258, align 4
  %260 = add nsw i32 %259, %256
  store i32 %260, i32* %258, align 4
  %261 = load i64, i64* @VGE_MIB_TX_PKTS_256_511, align 8
  %262 = getelementptr inbounds i32, i32* %13, i64 %261
  %263 = load i32, i32* %262, align 4
  %264 = load %struct.vge_hw_stats*, %struct.vge_hw_stats** %3, align 8
  %265 = getelementptr inbounds %struct.vge_hw_stats, %struct.vge_hw_stats* %264, i32 0, i32 24
  %266 = load i32, i32* %265, align 4
  %267 = add nsw i32 %266, %263
  store i32 %267, i32* %265, align 4
  %268 = load i64, i64* @VGE_MIB_TX_PKTS_512_1023, align 8
  %269 = getelementptr inbounds i32, i32* %13, i64 %268
  %270 = load i32, i32* %269, align 4
  %271 = load %struct.vge_hw_stats*, %struct.vge_hw_stats** %3, align 8
  %272 = getelementptr inbounds %struct.vge_hw_stats, %struct.vge_hw_stats* %271, i32 0, i32 25
  %273 = load i32, i32* %272, align 4
  %274 = add nsw i32 %273, %270
  store i32 %274, i32* %272, align 4
  %275 = load i64, i64* @VGE_MIB_TX_PKTS_1024_1518, align 8
  %276 = getelementptr inbounds i32, i32* %13, i64 %275
  %277 = load i32, i32* %276, align 4
  %278 = load %struct.vge_hw_stats*, %struct.vge_hw_stats** %3, align 8
  %279 = getelementptr inbounds %struct.vge_hw_stats, %struct.vge_hw_stats* %278, i32 0, i32 26
  %280 = load i32, i32* %279, align 4
  %281 = add nsw i32 %280, %277
  store i32 %281, i32* %279, align 4
  %282 = load i64, i64* @VGE_MIB_TX_JUMBOS, align 8
  %283 = getelementptr inbounds i32, i32* %13, i64 %282
  %284 = load i32, i32* %283, align 4
  %285 = load %struct.vge_hw_stats*, %struct.vge_hw_stats** %3, align 8
  %286 = getelementptr inbounds %struct.vge_hw_stats, %struct.vge_hw_stats* %285, i32 0, i32 27
  %287 = load i32, i32* %286, align 4
  %288 = add nsw i32 %287, %284
  store i32 %288, i32* %286, align 4
  %289 = load i64, i64* @VGE_MIB_TX_COLLS, align 8
  %290 = getelementptr inbounds i32, i32* %13, i64 %289
  %291 = load i32, i32* %290, align 4
  %292 = load %struct.vge_hw_stats*, %struct.vge_hw_stats** %3, align 8
  %293 = getelementptr inbounds %struct.vge_hw_stats, %struct.vge_hw_stats* %292, i32 0, i32 28
  %294 = load i32, i32* %293, align 4
  %295 = add nsw i32 %294, %291
  store i32 %295, i32* %293, align 4
  %296 = load i64, i64* @VGE_MIB_TX_PAUSE, align 8
  %297 = getelementptr inbounds i32, i32* %13, i64 %296
  %298 = load i32, i32* %297, align 4
  %299 = load %struct.vge_hw_stats*, %struct.vge_hw_stats** %3, align 8
  %300 = getelementptr inbounds %struct.vge_hw_stats, %struct.vge_hw_stats* %299, i32 0, i32 29
  %301 = load i32, i32* %300, align 4
  %302 = add nsw i32 %301, %298
  store i32 %302, i32* %300, align 4
  %303 = load i64, i64* @VGE_MIB_TX_LATECOLLS, align 8
  %304 = getelementptr inbounds i32, i32* %13, i64 %303
  %305 = load i32, i32* %304, align 4
  %306 = load %struct.vge_hw_stats*, %struct.vge_hw_stats** %3, align 8
  %307 = getelementptr inbounds %struct.vge_hw_stats, %struct.vge_hw_stats* %306, i32 0, i32 31
  %308 = load i32, i32* %307, align 4
  %309 = add nsw i32 %308, %305
  store i32 %309, i32* %307, align 4
  %310 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %311 = load i32, i32* @IFCOUNTER_OPACKETS, align 4
  %312 = load i64, i64* @VGE_MIB_TX_GOOD_FRAMES, align 8
  %313 = getelementptr inbounds i32, i32* %13, i64 %312
  %314 = load i32, i32* %313, align 4
  %315 = call i32 @if_inc_counter(%struct.ifnet* %310, i32 %311, i32 %314)
  %316 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %317 = load i32, i32* @IFCOUNTER_COLLISIONS, align 4
  %318 = load i64, i64* @VGE_MIB_TX_COLLS, align 8
  %319 = getelementptr inbounds i32, i32* %13, i64 %318
  %320 = load i32, i32* %319, align 4
  %321 = load i64, i64* @VGE_MIB_TX_LATECOLLS, align 8
  %322 = getelementptr inbounds i32, i32* %13, i64 %321
  %323 = load i32, i32* %322, align 4
  %324 = add nsw i32 %320, %323
  %325 = call i32 @if_inc_counter(%struct.ifnet* %316, i32 %317, i32 %324)
  %326 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %327 = load i32, i32* @IFCOUNTER_OERRORS, align 4
  %328 = load i64, i64* @VGE_MIB_TX_COLLS, align 8
  %329 = getelementptr inbounds i32, i32* %13, i64 %328
  %330 = load i32, i32* %329, align 4
  %331 = load i64, i64* @VGE_MIB_TX_LATECOLLS, align 8
  %332 = getelementptr inbounds i32, i32* %13, i64 %331
  %333 = load i32, i32* %332, align 4
  %334 = add nsw i32 %330, %333
  %335 = call i32 @if_inc_counter(%struct.ifnet* %326, i32 %327, i32 %334)
  %336 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %337 = load i32, i32* @IFCOUNTER_IPACKETS, align 4
  %338 = load i64, i64* @VGE_MIB_RX_GOOD_FRAMES, align 8
  %339 = getelementptr inbounds i32, i32* %13, i64 %338
  %340 = load i32, i32* %339, align 4
  %341 = call i32 @if_inc_counter(%struct.ifnet* %336, i32 %337, i32 %340)
  %342 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %343 = load i32, i32* @IFCOUNTER_IERRORS, align 4
  %344 = load i64, i64* @VGE_MIB_RX_FIFO_OVERRUNS, align 8
  %345 = getelementptr inbounds i32, i32* %13, i64 %344
  %346 = load i32, i32* %345, align 4
  %347 = load i64, i64* @VGE_MIB_RX_RUNTS, align 8
  %348 = getelementptr inbounds i32, i32* %13, i64 %347
  %349 = load i32, i32* %348, align 4
  %350 = add nsw i32 %346, %349
  %351 = load i64, i64* @VGE_MIB_RX_RUNTS_ERRS, align 8
  %352 = getelementptr inbounds i32, i32* %13, i64 %351
  %353 = load i32, i32* %352, align 4
  %354 = add nsw i32 %350, %353
  %355 = load i64, i64* @VGE_MIB_RX_CRCERRS, align 8
  %356 = getelementptr inbounds i32, i32* %13, i64 %355
  %357 = load i32, i32* %356, align 4
  %358 = add nsw i32 %354, %357
  %359 = load i64, i64* @VGE_MIB_RX_ALIGNERRS, align 8
  %360 = getelementptr inbounds i32, i32* %13, i64 %359
  %361 = load i32, i32* %360, align 4
  %362 = add nsw i32 %358, %361
  %363 = load i64, i64* @VGE_MIB_RX_NOBUFS, align 8
  %364 = getelementptr inbounds i32, i32* %13, i64 %363
  %365 = load i32, i32* %364, align 4
  %366 = add nsw i32 %362, %365
  %367 = load i64, i64* @VGE_MIB_RX_SYMERRS, align 8
  %368 = getelementptr inbounds i32, i32* %13, i64 %367
  %369 = load i32, i32* %368, align 4
  %370 = add nsw i32 %366, %369
  %371 = load i64, i64* @VGE_MIB_RX_LENERRS, align 8
  %372 = getelementptr inbounds i32, i32* %13, i64 %371
  %373 = load i32, i32* %372, align 4
  %374 = add nsw i32 %370, %373
  %375 = call i32 @if_inc_counter(%struct.ifnet* %342, i32 %343, i32 %374)
  store i32 0, i32* %9, align 4
  br label %376

376:                                              ; preds = %92, %49
  %377 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %377)
  %378 = load i32, i32* %9, align 4
  switch i32 %378, label %380 [
    i32 0, label %379
    i32 1, label %379
  ]

379:                                              ; preds = %376, %376
  ret void

380:                                              ; preds = %376
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @VGE_LOCK_ASSERT(%struct.vge_softc*) #2

declare dso_local i32 @CSR_WRITE_1(%struct.vge_softc*, i32, i32) #2

declare dso_local i32 @CSR_READ_1(%struct.vge_softc*, i32) #2

declare dso_local i32 @DELAY(i32) #2

declare dso_local i32 @device_printf(i32, i8*) #2

declare dso_local i32 @vge_stats_clear(%struct.vge_softc*) #2

declare dso_local i32 @bzero(i32*, i32) #2

declare dso_local i32 @CSR_READ_4(%struct.vge_softc*, i32) #2

declare dso_local i32 @VGE_MIB_DATA_IDX(i32) #2

declare dso_local i32 @if_inc_counter(%struct.ifnet*, i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
