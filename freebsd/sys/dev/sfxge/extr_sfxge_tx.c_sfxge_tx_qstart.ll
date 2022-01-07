; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sfxge/extr_sfxge_tx.c_sfxge_tx_qstart.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sfxge/extr_sfxge_tx.c_sfxge_tx_qstart.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sfxge_softc = type { i32, i32, i32, i64, %struct.sfxge_evq**, %struct.sfxge_txq** }
%struct.sfxge_evq = type { i64, i32 }
%struct.sfxge_txq = type { i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32 }

@SFXGE_TXQ_INITIALIZED = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [41 x i8] c"txq->init_state != SFXGE_TXQ_INITIALIZED\00", align 1
@SFXGE_EVQ_STARTED = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [37 x i8] c"evq->init_state != SFXGE_EVQ_STARTED\00", align 1
@EFX_TXQ_CKSUM_IPV4 = common dso_local global i32 0, align 4
@EFX_TXQ_CKSUM_TCPUDP = common dso_local global i32 0, align 4
@SFXGE_FATSOV2 = common dso_local global i32 0, align 4
@EFX_TXQ_FATSOV2 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [20 x i8] c"Impossible TX queue\00", align 1
@ENOSPC = common dso_local global i32 0, align 4
@SFXGE_TXQ_STARTED = common dso_local global i64 0, align 8
@SFXGE_FLUSH_REQUIRED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sfxge_softc*, i32)* @sfxge_tx_qstart to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sfxge_tx_qstart(%struct.sfxge_softc* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sfxge_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.sfxge_txq*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.sfxge_evq*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.sfxge_softc* %0, %struct.sfxge_softc** %4, align 8
  store i32 %1, i32* %5, align 4
  %14 = load %struct.sfxge_softc*, %struct.sfxge_softc** %4, align 8
  %15 = call i32 @SFXGE_ADAPTER_LOCK_ASSERT_OWNED(%struct.sfxge_softc* %14)
  %16 = load %struct.sfxge_softc*, %struct.sfxge_softc** %4, align 8
  %17 = getelementptr inbounds %struct.sfxge_softc, %struct.sfxge_softc* %16, i32 0, i32 5
  %18 = load %struct.sfxge_txq**, %struct.sfxge_txq*** %17, align 8
  %19 = load i32, i32* %5, align 4
  %20 = zext i32 %19 to i64
  %21 = getelementptr inbounds %struct.sfxge_txq*, %struct.sfxge_txq** %18, i64 %20
  %22 = load %struct.sfxge_txq*, %struct.sfxge_txq** %21, align 8
  store %struct.sfxge_txq* %22, %struct.sfxge_txq** %6, align 8
  %23 = load %struct.sfxge_txq*, %struct.sfxge_txq** %6, align 8
  %24 = getelementptr inbounds %struct.sfxge_txq, %struct.sfxge_txq* %23, i32 0, i32 14
  store i32* %24, i32** %7, align 8
  %25 = load %struct.sfxge_softc*, %struct.sfxge_softc** %4, align 8
  %26 = getelementptr inbounds %struct.sfxge_softc, %struct.sfxge_softc* %25, i32 0, i32 4
  %27 = load %struct.sfxge_evq**, %struct.sfxge_evq*** %26, align 8
  %28 = load %struct.sfxge_txq*, %struct.sfxge_txq** %6, align 8
  %29 = getelementptr inbounds %struct.sfxge_txq, %struct.sfxge_txq* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = getelementptr inbounds %struct.sfxge_evq*, %struct.sfxge_evq** %27, i64 %30
  %32 = load %struct.sfxge_evq*, %struct.sfxge_evq** %31, align 8
  store %struct.sfxge_evq* %32, %struct.sfxge_evq** %11, align 8
  %33 = load %struct.sfxge_txq*, %struct.sfxge_txq** %6, align 8
  %34 = getelementptr inbounds %struct.sfxge_txq, %struct.sfxge_txq* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @SFXGE_TXQ_INITIALIZED, align 8
  %37 = icmp eq i64 %35, %36
  %38 = zext i1 %37 to i32
  %39 = call i32 @KASSERT(i32 %38, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  %40 = load %struct.sfxge_evq*, %struct.sfxge_evq** %11, align 8
  %41 = getelementptr inbounds %struct.sfxge_evq, %struct.sfxge_evq* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @SFXGE_EVQ_STARTED, align 8
  %44 = icmp eq i64 %42, %43
  %45 = zext i1 %44 to i32
  %46 = call i32 @KASSERT(i32 %45, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  %47 = load %struct.sfxge_softc*, %struct.sfxge_softc** %4, align 8
  %48 = getelementptr inbounds %struct.sfxge_softc, %struct.sfxge_softc* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.sfxge_txq*, %struct.sfxge_txq** %6, align 8
  %51 = getelementptr inbounds %struct.sfxge_txq, %struct.sfxge_txq* %50, i32 0, i32 9
  %52 = load i32, i32* %51, align 4
  %53 = load i32*, i32** %7, align 8
  %54 = load %struct.sfxge_softc*, %struct.sfxge_softc** %4, align 8
  %55 = getelementptr inbounds %struct.sfxge_softc, %struct.sfxge_softc* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @EFX_TXQ_NBUFS(i32 %56)
  %58 = call i32 @efx_sram_buf_tbl_set(i32 %49, i32 %52, i32* %53, i32 %57)
  store i32 %58, i32* %13, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %2
  %61 = load i32, i32* %13, align 4
  store i32 %61, i32* %3, align 4
  br label %218

62:                                               ; preds = %2
  store i32 0, i32* %9, align 4
  %63 = load %struct.sfxge_txq*, %struct.sfxge_txq** %6, align 8
  %64 = getelementptr inbounds %struct.sfxge_txq, %struct.sfxge_txq* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 8
  switch i32 %65, label %85 [
    i32 128, label %66
    i32 130, label %67
    i32 129, label %69
  ]

66:                                               ; preds = %62
  store i32 0, i32* %8, align 4
  br label %87

67:                                               ; preds = %62
  %68 = load i32, i32* @EFX_TXQ_CKSUM_IPV4, align 4
  store i32 %68, i32* %8, align 4
  br label %87

69:                                               ; preds = %62
  %70 = load i32, i32* @EFX_TXQ_CKSUM_IPV4, align 4
  %71 = load i32, i32* @EFX_TXQ_CKSUM_TCPUDP, align 4
  %72 = or i32 %70, %71
  store i32 %72, i32* %8, align 4
  %73 = load %struct.sfxge_softc*, %struct.sfxge_softc** %4, align 8
  %74 = getelementptr inbounds %struct.sfxge_softc, %struct.sfxge_softc* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  store i32 %75, i32* %9, align 4
  %76 = load i32, i32* %9, align 4
  %77 = load i32, i32* @SFXGE_FATSOV2, align 4
  %78 = and i32 %76, %77
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %84

80:                                               ; preds = %69
  %81 = load i32, i32* @EFX_TXQ_FATSOV2, align 4
  %82 = load i32, i32* %8, align 4
  %83 = or i32 %82, %81
  store i32 %83, i32* %8, align 4
  br label %84

84:                                               ; preds = %80, %69
  br label %87

85:                                               ; preds = %62
  %86 = call i32 @KASSERT(i32 0, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %8, align 4
  br label %87

87:                                               ; preds = %85, %84, %67, %66
  %88 = load %struct.sfxge_softc*, %struct.sfxge_softc** %4, align 8
  %89 = getelementptr inbounds %struct.sfxge_softc, %struct.sfxge_softc* %88, i32 0, i32 3
  %90 = load i64, i64* %89, align 8
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %93

92:                                               ; preds = %87
  br label %97

93:                                               ; preds = %87
  %94 = load %struct.sfxge_txq*, %struct.sfxge_txq** %6, align 8
  %95 = getelementptr inbounds %struct.sfxge_txq, %struct.sfxge_txq* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 8
  br label %97

97:                                               ; preds = %93, %92
  %98 = phi i32 [ 0, %92 ], [ %96, %93 ]
  store i32 %98, i32* %10, align 4
  %99 = load %struct.sfxge_softc*, %struct.sfxge_softc** %4, align 8
  %100 = getelementptr inbounds %struct.sfxge_softc, %struct.sfxge_softc* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 8
  %102 = load i32, i32* %5, align 4
  %103 = load i32, i32* %10, align 4
  %104 = load i32*, i32** %7, align 8
  %105 = load %struct.sfxge_softc*, %struct.sfxge_softc** %4, align 8
  %106 = getelementptr inbounds %struct.sfxge_softc, %struct.sfxge_softc* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = load %struct.sfxge_txq*, %struct.sfxge_txq** %6, align 8
  %109 = getelementptr inbounds %struct.sfxge_txq, %struct.sfxge_txq* %108, i32 0, i32 9
  %110 = load i32, i32* %109, align 4
  %111 = load i32, i32* %8, align 4
  %112 = load %struct.sfxge_evq*, %struct.sfxge_evq** %11, align 8
  %113 = getelementptr inbounds %struct.sfxge_evq, %struct.sfxge_evq* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 8
  %115 = load %struct.sfxge_txq*, %struct.sfxge_txq** %6, align 8
  %116 = getelementptr inbounds %struct.sfxge_txq, %struct.sfxge_txq* %115, i32 0, i32 13
  %117 = call i32 @efx_tx_qcreate(i32 %101, i32 %102, i32 %103, i32* %104, i32 %107, i32 %110, i32 %111, i32 %114, i32* %116, i32* %12)
  store i32 %117, i32* %13, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %161

119:                                              ; preds = %97
  %120 = load i32, i32* %13, align 4
  %121 = load i32, i32* @ENOSPC, align 4
  %122 = icmp ne i32 %120, %121
  br i1 %122, label %129, label %123

123:                                              ; preds = %119
  %124 = load i32, i32* %8, align 4
  %125 = xor i32 %124, -1
  %126 = load i32, i32* @EFX_TXQ_FATSOV2, align 4
  %127 = and i32 %125, %126
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %130

129:                                              ; preds = %123, %119
  br label %205

130:                                              ; preds = %123
  %131 = load i32, i32* @EFX_TXQ_FATSOV2, align 4
  %132 = xor i32 %131, -1
  %133 = load i32, i32* %8, align 4
  %134 = and i32 %133, %132
  store i32 %134, i32* %8, align 4
  %135 = load i32, i32* @SFXGE_FATSOV2, align 4
  %136 = xor i32 %135, -1
  %137 = load i32, i32* %9, align 4
  %138 = and i32 %137, %136
  store i32 %138, i32* %9, align 4
  %139 = load %struct.sfxge_softc*, %struct.sfxge_softc** %4, align 8
  %140 = getelementptr inbounds %struct.sfxge_softc, %struct.sfxge_softc* %139, i32 0, i32 2
  %141 = load i32, i32* %140, align 8
  %142 = load i32, i32* %5, align 4
  %143 = load i32, i32* %10, align 4
  %144 = load i32*, i32** %7, align 8
  %145 = load %struct.sfxge_softc*, %struct.sfxge_softc** %4, align 8
  %146 = getelementptr inbounds %struct.sfxge_softc, %struct.sfxge_softc* %145, i32 0, i32 1
  %147 = load i32, i32* %146, align 4
  %148 = load %struct.sfxge_txq*, %struct.sfxge_txq** %6, align 8
  %149 = getelementptr inbounds %struct.sfxge_txq, %struct.sfxge_txq* %148, i32 0, i32 9
  %150 = load i32, i32* %149, align 4
  %151 = load i32, i32* %8, align 4
  %152 = load %struct.sfxge_evq*, %struct.sfxge_evq** %11, align 8
  %153 = getelementptr inbounds %struct.sfxge_evq, %struct.sfxge_evq* %152, i32 0, i32 1
  %154 = load i32, i32* %153, align 8
  %155 = load %struct.sfxge_txq*, %struct.sfxge_txq** %6, align 8
  %156 = getelementptr inbounds %struct.sfxge_txq, %struct.sfxge_txq* %155, i32 0, i32 13
  %157 = call i32 @efx_tx_qcreate(i32 %141, i32 %142, i32 %143, i32* %144, i32 %147, i32 %150, i32 %151, i32 %154, i32* %156, i32* %12)
  store i32 %157, i32* %13, align 4
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %160

159:                                              ; preds = %130
  br label %205

160:                                              ; preds = %130
  br label %161

161:                                              ; preds = %160, %97
  %162 = load i32, i32* %12, align 4
  %163 = load %struct.sfxge_txq*, %struct.sfxge_txq** %6, align 8
  %164 = getelementptr inbounds %struct.sfxge_txq, %struct.sfxge_txq* %163, i32 0, i32 6
  store i32 %162, i32* %164, align 8
  %165 = load %struct.sfxge_txq*, %struct.sfxge_txq** %6, align 8
  %166 = getelementptr inbounds %struct.sfxge_txq, %struct.sfxge_txq* %165, i32 0, i32 5
  store i32 %162, i32* %166, align 4
  %167 = load %struct.sfxge_txq*, %struct.sfxge_txq** %6, align 8
  %168 = getelementptr inbounds %struct.sfxge_txq, %struct.sfxge_txq* %167, i32 0, i32 4
  store i32 %162, i32* %168, align 8
  %169 = load %struct.sfxge_txq*, %struct.sfxge_txq** %6, align 8
  %170 = getelementptr inbounds %struct.sfxge_txq, %struct.sfxge_txq* %169, i32 0, i32 3
  store i32 %162, i32* %170, align 4
  %171 = load %struct.sfxge_txq*, %struct.sfxge_txq** %6, align 8
  %172 = call i32 @SFXGE_TXQ_LOCK(%struct.sfxge_txq* %171)
  %173 = load %struct.sfxge_txq*, %struct.sfxge_txq** %6, align 8
  %174 = getelementptr inbounds %struct.sfxge_txq, %struct.sfxge_txq* %173, i32 0, i32 13
  %175 = load i32, i32* %174, align 8
  %176 = call i32 @efx_tx_qenable(i32 %175)
  %177 = load i64, i64* @SFXGE_TXQ_STARTED, align 8
  %178 = load %struct.sfxge_txq*, %struct.sfxge_txq** %6, align 8
  %179 = getelementptr inbounds %struct.sfxge_txq, %struct.sfxge_txq* %178, i32 0, i32 1
  store i64 %177, i64* %179, align 8
  %180 = load i32, i32* @SFXGE_FLUSH_REQUIRED, align 4
  %181 = load %struct.sfxge_txq*, %struct.sfxge_txq** %6, align 8
  %182 = getelementptr inbounds %struct.sfxge_txq, %struct.sfxge_txq* %181, i32 0, i32 12
  store i32 %180, i32* %182, align 4
  %183 = load i32, i32* %9, align 4
  %184 = load %struct.sfxge_txq*, %struct.sfxge_txq** %6, align 8
  %185 = getelementptr inbounds %struct.sfxge_txq, %struct.sfxge_txq* %184, i32 0, i32 7
  store i32 %183, i32* %185, align 4
  %186 = load %struct.sfxge_softc*, %struct.sfxge_softc** %4, align 8
  %187 = load %struct.sfxge_txq*, %struct.sfxge_txq** %6, align 8
  %188 = getelementptr inbounds %struct.sfxge_txq, %struct.sfxge_txq* %187, i32 0, i32 2
  %189 = load i32, i32* %188, align 8
  %190 = load i32, i32* %9, align 4
  %191 = call i32 @sfxge_tx_max_pkt_desc(%struct.sfxge_softc* %186, i32 %189, i32 %190)
  %192 = load %struct.sfxge_txq*, %struct.sfxge_txq** %6, align 8
  %193 = getelementptr inbounds %struct.sfxge_txq, %struct.sfxge_txq* %192, i32 0, i32 11
  store i32 %191, i32* %193, align 8
  %194 = load %struct.sfxge_txq*, %struct.sfxge_txq** %6, align 8
  %195 = getelementptr inbounds %struct.sfxge_txq, %struct.sfxge_txq* %194, i32 0, i32 10
  store i64 0, i64* %195, align 8
  %196 = load i32, i32* %8, align 4
  %197 = load i32, i32* @EFX_TXQ_CKSUM_IPV4, align 4
  %198 = load i32, i32* @EFX_TXQ_CKSUM_TCPUDP, align 4
  %199 = or i32 %197, %198
  %200 = and i32 %196, %199
  %201 = load %struct.sfxge_txq*, %struct.sfxge_txq** %6, align 8
  %202 = getelementptr inbounds %struct.sfxge_txq, %struct.sfxge_txq* %201, i32 0, i32 8
  store i32 %200, i32* %202, align 8
  %203 = load %struct.sfxge_txq*, %struct.sfxge_txq** %6, align 8
  %204 = call i32 @SFXGE_TXQ_UNLOCK(%struct.sfxge_txq* %203)
  store i32 0, i32* %3, align 4
  br label %218

205:                                              ; preds = %159, %129
  %206 = load %struct.sfxge_softc*, %struct.sfxge_softc** %4, align 8
  %207 = getelementptr inbounds %struct.sfxge_softc, %struct.sfxge_softc* %206, i32 0, i32 2
  %208 = load i32, i32* %207, align 8
  %209 = load %struct.sfxge_txq*, %struct.sfxge_txq** %6, align 8
  %210 = getelementptr inbounds %struct.sfxge_txq, %struct.sfxge_txq* %209, i32 0, i32 9
  %211 = load i32, i32* %210, align 4
  %212 = load %struct.sfxge_softc*, %struct.sfxge_softc** %4, align 8
  %213 = getelementptr inbounds %struct.sfxge_softc, %struct.sfxge_softc* %212, i32 0, i32 1
  %214 = load i32, i32* %213, align 4
  %215 = call i32 @EFX_TXQ_NBUFS(i32 %214)
  %216 = call i32 @efx_sram_buf_tbl_clear(i32 %208, i32 %211, i32 %215)
  %217 = load i32, i32* %13, align 4
  store i32 %217, i32* %3, align 4
  br label %218

218:                                              ; preds = %205, %161, %60
  %219 = load i32, i32* %3, align 4
  ret i32 %219
}

declare dso_local i32 @SFXGE_ADAPTER_LOCK_ASSERT_OWNED(%struct.sfxge_softc*) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @efx_sram_buf_tbl_set(i32, i32, i32*, i32) #1

declare dso_local i32 @EFX_TXQ_NBUFS(i32) #1

declare dso_local i32 @efx_tx_qcreate(i32, i32, i32, i32*, i32, i32, i32, i32, i32*, i32*) #1

declare dso_local i32 @SFXGE_TXQ_LOCK(%struct.sfxge_txq*) #1

declare dso_local i32 @efx_tx_qenable(i32) #1

declare dso_local i32 @sfxge_tx_max_pkt_desc(%struct.sfxge_softc*, i32, i32) #1

declare dso_local i32 @SFXGE_TXQ_UNLOCK(%struct.sfxge_txq*) #1

declare dso_local i32 @efx_sram_buf_tbl_clear(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
