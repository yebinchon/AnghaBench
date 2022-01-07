; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sfxge/extr_sfxge_tx.c_tso_start_new_packet.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sfxge/extr_sfxge_tx.c_tso_start_new_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sfxge_txq = type { i64, i32, i32, i32, i32*, i32, i32, %struct.sfxge_tx_mapping*, %struct.TYPE_3__* }
%struct.sfxge_tx_mapping = type { i64, %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32, i64, i32 }
%struct.sfxge_tso_state = type { i32, i32, i32, i32, i32, i32, i32, i32, i8*, i32, i8*, i32, i32, i32 }
%struct.tcphdr = type { i32, i32 }
%struct.ip = type { i8* }
%struct.ip6_hdr = type { i8* }

@SFXGE_FATSOV2 = common dso_local global i32 0, align 4
@EFX_TX_FATSOV2_OPT_NDESCS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"stmp flags are not 0\00", align 1
@EFX_TX_FATSOV2_DMA_SEGS_PER_PKT_MAX = common dso_local global i8* null, align 8
@TH_FIN = common dso_local global i32 0, align 4
@TH_PUSH = common dso_local global i32 0, align 4
@UINT_MAX = common dso_local global i8* null, align 8
@TSOH_STD_SIZE = common dso_local global i32 0, align 4
@TSOH_PER_PAGE = common dso_local global i32 0, align 4
@M_SFXGE = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@tso_map_long_header = common dso_local global i32 0, align 4
@BUS_DMA_NOWAIT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@TX_BUF_UNMAP = common dso_local global i64 0, align 8
@ETHERTYPE_IP = common dso_local global i32 0, align 4
@BUS_DMASYNC_PREWRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sfxge_txq*, %struct.sfxge_tso_state*, i32*)* @tso_start_new_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tso_start_new_packet(%struct.sfxge_txq* %0, %struct.sfxge_tso_state* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sfxge_txq*, align 8
  %6 = alloca %struct.sfxge_tso_state*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.tcphdr*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.sfxge_tx_mapping*, align 8
  %20 = alloca %struct.ip*, align 8
  %21 = alloca %struct.ip6_hdr*, align 8
  store %struct.sfxge_txq* %0, %struct.sfxge_txq** %5, align 8
  store %struct.sfxge_tso_state* %1, %struct.sfxge_tso_state** %6, align 8
  store i32* %2, i32** %7, align 8
  %22 = load i32*, i32** %7, align 8
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %8, align 4
  %24 = load %struct.sfxge_tso_state*, %struct.sfxge_tso_state** %6, align 8
  %25 = getelementptr inbounds %struct.sfxge_tso_state, %struct.sfxge_tso_state* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %184

28:                                               ; preds = %3
  %29 = load %struct.sfxge_tso_state*, %struct.sfxge_tso_state** %6, align 8
  %30 = getelementptr inbounds %struct.sfxge_tso_state, %struct.sfxge_tso_state* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @SFXGE_FATSOV2, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %90

35:                                               ; preds = %28
  %36 = load %struct.sfxge_txq*, %struct.sfxge_txq** %5, align 8
  %37 = getelementptr inbounds %struct.sfxge_txq, %struct.sfxge_txq* %36, i32 0, i32 4
  %38 = load i32*, i32** %37, align 8
  %39 = load %struct.sfxge_txq*, %struct.sfxge_txq** %5, align 8
  %40 = getelementptr inbounds %struct.sfxge_txq, %struct.sfxge_txq* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = getelementptr inbounds i32, i32* %38, i64 %41
  store i32* %42, i32** %14, align 8
  %43 = load %struct.sfxge_txq*, %struct.sfxge_txq** %5, align 8
  %44 = getelementptr inbounds %struct.sfxge_txq, %struct.sfxge_txq* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.sfxge_tso_state*, %struct.sfxge_tso_state** %6, align 8
  %47 = getelementptr inbounds %struct.sfxge_tso_state, %struct.sfxge_tso_state* %46, i32 0, i32 13
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.sfxge_tso_state*, %struct.sfxge_tso_state** %6, align 8
  %50 = getelementptr inbounds %struct.sfxge_tso_state, %struct.sfxge_tso_state* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.sfxge_tso_state*, %struct.sfxge_tso_state** %6, align 8
  %53 = getelementptr inbounds %struct.sfxge_tso_state, %struct.sfxge_tso_state* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 8
  %55 = load i32*, i32** %14, align 8
  %56 = load i32, i32* @EFX_TX_FATSOV2_OPT_NDESCS, align 4
  %57 = call i32 @efx_tx_qdesc_tso2_create(i32 %45, i32 %48, i32 0, i32 %51, i32 %54, i32* %55, i32 %56)
  %58 = load i32, i32* @EFX_TX_FATSOV2_OPT_NDESCS, align 4
  %59 = load i32*, i32** %14, align 8
  %60 = zext i32 %58 to i64
  %61 = getelementptr inbounds i32, i32* %59, i64 %60
  store i32* %61, i32** %14, align 8
  %62 = load i32, i32* @EFX_TX_FATSOV2_OPT_NDESCS, align 4
  %63 = zext i32 %62 to i64
  %64 = load %struct.sfxge_txq*, %struct.sfxge_txq** %5, align 8
  %65 = getelementptr inbounds %struct.sfxge_txq, %struct.sfxge_txq* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = add i64 %66, %63
  store i64 %67, i64* %65, align 8
  %68 = load %struct.sfxge_txq*, %struct.sfxge_txq** %5, align 8
  %69 = getelementptr inbounds %struct.sfxge_txq, %struct.sfxge_txq* %68, i32 0, i32 7
  %70 = load %struct.sfxge_tx_mapping*, %struct.sfxge_tx_mapping** %69, align 8
  %71 = load i32, i32* %8, align 4
  %72 = zext i32 %71 to i64
  %73 = getelementptr inbounds %struct.sfxge_tx_mapping, %struct.sfxge_tx_mapping* %70, i64 %72
  %74 = getelementptr inbounds %struct.sfxge_tx_mapping, %struct.sfxge_tx_mapping* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = icmp eq i64 %75, 0
  %77 = zext i1 %76 to i32
  %78 = call i32 @KASSERT(i32 %77, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %79 = load i32, i32* %8, align 4
  %80 = load i32, i32* @EFX_TX_FATSOV2_OPT_NDESCS, align 4
  %81 = add i32 %79, %80
  %82 = load %struct.sfxge_txq*, %struct.sfxge_txq** %5, align 8
  %83 = getelementptr inbounds %struct.sfxge_txq, %struct.sfxge_txq* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 8
  %85 = and i32 %81, %84
  store i32 %85, i32* %8, align 4
  %86 = load i8*, i8** @EFX_TX_FATSOV2_DMA_SEGS_PER_PKT_MAX, align 8
  %87 = getelementptr i8, i8* %86, i64 -1
  %88 = load %struct.sfxge_tso_state*, %struct.sfxge_tso_state** %6, align 8
  %89 = getelementptr inbounds %struct.sfxge_tso_state, %struct.sfxge_tso_state* %88, i32 0, i32 10
  store i8* %87, i8** %89, align 8
  br label %158

90:                                               ; preds = %28
  %91 = load %struct.sfxge_tso_state*, %struct.sfxge_tso_state** %6, align 8
  %92 = getelementptr inbounds %struct.sfxge_tso_state, %struct.sfxge_tso_state* %91, i32 0, i32 3
  %93 = load i32, i32* %92, align 4
  store i32 %93, i32* %16, align 4
  %94 = load %struct.sfxge_tso_state*, %struct.sfxge_tso_state** %6, align 8
  %95 = getelementptr inbounds %struct.sfxge_tso_state, %struct.sfxge_tso_state* %94, i32 0, i32 4
  %96 = load i32, i32* %95, align 8
  %97 = load %struct.sfxge_tso_state*, %struct.sfxge_tso_state** %6, align 8
  %98 = getelementptr inbounds %struct.sfxge_tso_state, %struct.sfxge_tso_state* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 8
  %100 = icmp ugt i32 %96, %99
  br i1 %100, label %101, label %108

101:                                              ; preds = %90
  %102 = load i32, i32* @TH_FIN, align 4
  %103 = load i32, i32* @TH_PUSH, align 4
  %104 = or i32 %102, %103
  %105 = xor i32 %104, -1
  %106 = load i32, i32* %16, align 4
  %107 = and i32 %106, %105
  store i32 %107, i32* %16, align 4
  br label %108

108:                                              ; preds = %101, %90
  %109 = load %struct.sfxge_txq*, %struct.sfxge_txq** %5, align 8
  %110 = getelementptr inbounds %struct.sfxge_txq, %struct.sfxge_txq* %109, i32 0, i32 4
  %111 = load i32*, i32** %110, align 8
  %112 = load %struct.sfxge_txq*, %struct.sfxge_txq** %5, align 8
  %113 = getelementptr inbounds %struct.sfxge_txq, %struct.sfxge_txq* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = add i64 %114, 1
  store i64 %115, i64* %113, align 8
  %116 = getelementptr inbounds i32, i32* %111, i64 %114
  store i32* %116, i32** %14, align 8
  %117 = load %struct.sfxge_txq*, %struct.sfxge_txq** %5, align 8
  %118 = getelementptr inbounds %struct.sfxge_txq, %struct.sfxge_txq* %117, i32 0, i32 3
  %119 = load i32, i32* %118, align 8
  %120 = load %struct.sfxge_tso_state*, %struct.sfxge_tso_state** %6, align 8
  %121 = getelementptr inbounds %struct.sfxge_tso_state, %struct.sfxge_tso_state* %120, i32 0, i32 13
  %122 = load i32, i32* %121, align 8
  %123 = load %struct.sfxge_tso_state*, %struct.sfxge_tso_state** %6, align 8
  %124 = getelementptr inbounds %struct.sfxge_tso_state, %struct.sfxge_tso_state* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 4
  %126 = load i32, i32* %16, align 4
  %127 = load i32*, i32** %14, align 8
  %128 = getelementptr inbounds i32, i32* %127, i32 1
  store i32* %128, i32** %14, align 8
  %129 = ptrtoint i32* %127 to i32
  %130 = call i32 @efx_tx_qdesc_tso_create(i32 %119, i32 %122, i32 %125, i32 %126, i32 %129)
  %131 = load %struct.sfxge_txq*, %struct.sfxge_txq** %5, align 8
  %132 = getelementptr inbounds %struct.sfxge_txq, %struct.sfxge_txq* %131, i32 0, i32 7
  %133 = load %struct.sfxge_tx_mapping*, %struct.sfxge_tx_mapping** %132, align 8
  %134 = load i32, i32* %8, align 4
  %135 = zext i32 %134 to i64
  %136 = getelementptr inbounds %struct.sfxge_tx_mapping, %struct.sfxge_tx_mapping* %133, i64 %135
  %137 = getelementptr inbounds %struct.sfxge_tx_mapping, %struct.sfxge_tx_mapping* %136, i32 0, i32 0
  %138 = load i64, i64* %137, align 8
  %139 = icmp eq i64 %138, 0
  %140 = zext i1 %139 to i32
  %141 = call i32 @KASSERT(i32 %140, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %142 = load i32, i32* %8, align 4
  %143 = add i32 %142, 1
  %144 = load %struct.sfxge_txq*, %struct.sfxge_txq** %5, align 8
  %145 = getelementptr inbounds %struct.sfxge_txq, %struct.sfxge_txq* %144, i32 0, i32 1
  %146 = load i32, i32* %145, align 8
  %147 = and i32 %143, %146
  store i32 %147, i32* %8, align 4
  %148 = load %struct.sfxge_tso_state*, %struct.sfxge_tso_state** %6, align 8
  %149 = getelementptr inbounds %struct.sfxge_tso_state, %struct.sfxge_tso_state* %148, i32 0, i32 2
  %150 = load i32, i32* %149, align 8
  %151 = load %struct.sfxge_tso_state*, %struct.sfxge_tso_state** %6, align 8
  %152 = getelementptr inbounds %struct.sfxge_tso_state, %struct.sfxge_tso_state* %151, i32 0, i32 1
  %153 = load i32, i32* %152, align 4
  %154 = add i32 %153, %150
  store i32 %154, i32* %152, align 4
  %155 = load i8*, i8** @UINT_MAX, align 8
  %156 = load %struct.sfxge_tso_state*, %struct.sfxge_tso_state** %6, align 8
  %157 = getelementptr inbounds %struct.sfxge_tso_state, %struct.sfxge_tso_state* %156, i32 0, i32 10
  store i8* %155, i8** %157, align 8
  br label %158

158:                                              ; preds = %108, %35
  %159 = load %struct.sfxge_tso_state*, %struct.sfxge_tso_state** %6, align 8
  %160 = getelementptr inbounds %struct.sfxge_tso_state, %struct.sfxge_tso_state* %159, i32 0, i32 12
  %161 = load i32, i32* %160, align 4
  %162 = load i32*, i32** %14, align 8
  store i32 %161, i32* %162, align 4
  %163 = load %struct.sfxge_txq*, %struct.sfxge_txq** %5, align 8
  %164 = getelementptr inbounds %struct.sfxge_txq, %struct.sfxge_txq* %163, i32 0, i32 0
  %165 = load i64, i64* %164, align 8
  %166 = add i64 %165, 1
  store i64 %166, i64* %164, align 8
  %167 = load %struct.sfxge_txq*, %struct.sfxge_txq** %5, align 8
  %168 = getelementptr inbounds %struct.sfxge_txq, %struct.sfxge_txq* %167, i32 0, i32 7
  %169 = load %struct.sfxge_tx_mapping*, %struct.sfxge_tx_mapping** %168, align 8
  %170 = load i32, i32* %8, align 4
  %171 = zext i32 %170 to i64
  %172 = getelementptr inbounds %struct.sfxge_tx_mapping, %struct.sfxge_tx_mapping* %169, i64 %171
  %173 = getelementptr inbounds %struct.sfxge_tx_mapping, %struct.sfxge_tx_mapping* %172, i32 0, i32 0
  %174 = load i64, i64* %173, align 8
  %175 = icmp eq i64 %174, 0
  %176 = zext i1 %175 to i32
  %177 = call i32 @KASSERT(i32 %176, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %178 = load i32, i32* %8, align 4
  %179 = add i32 %178, 1
  %180 = load %struct.sfxge_txq*, %struct.sfxge_txq** %5, align 8
  %181 = getelementptr inbounds %struct.sfxge_txq, %struct.sfxge_txq* %180, i32 0, i32 1
  %182 = load i32, i32* %181, align 8
  %183 = and i32 %179, %182
  store i32 %183, i32* %8, align 4
  br label %453

184:                                              ; preds = %3
  %185 = load %struct.sfxge_tso_state*, %struct.sfxge_tso_state** %6, align 8
  %186 = getelementptr inbounds %struct.sfxge_tso_state, %struct.sfxge_tso_state* %185, i32 0, i32 5
  %187 = load i32, i32* %186, align 4
  %188 = load i32, i32* @TSOH_STD_SIZE, align 4
  %189 = icmp ule i32 %187, %188
  %190 = zext i1 %189 to i32
  %191 = call i64 @__predict_true(i32 %190)
  %192 = icmp ne i64 %191, 0
  br i1 %192, label %193, label %246

193:                                              ; preds = %184
  %194 = load i32, i32* %8, align 4
  %195 = udiv i32 %194, 2
  %196 = load i32, i32* @TSOH_PER_PAGE, align 4
  %197 = udiv i32 %195, %196
  store i32 %197, i32* %17, align 4
  %198 = load i32, i32* %8, align 4
  %199 = udiv i32 %198, 2
  %200 = load i32, i32* @TSOH_PER_PAGE, align 4
  %201 = urem i32 %199, %200
  store i32 %201, i32* %18, align 4
  %202 = load %struct.sfxge_txq*, %struct.sfxge_txq** %5, align 8
  %203 = getelementptr inbounds %struct.sfxge_txq, %struct.sfxge_txq* %202, i32 0, i32 8
  %204 = load %struct.TYPE_3__*, %struct.TYPE_3__** %203, align 8
  %205 = load i32, i32* %17, align 4
  %206 = zext i32 %205 to i64
  %207 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %204, i64 %206
  %208 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %207, i32 0, i32 0
  %209 = load i32, i32* %208, align 8
  %210 = load i32, i32* %18, align 4
  %211 = load i32, i32* @TSOH_STD_SIZE, align 4
  %212 = mul i32 %210, %211
  %213 = add i32 %209, %212
  store i32 %213, i32* %11, align 4
  %214 = load %struct.sfxge_txq*, %struct.sfxge_txq** %5, align 8
  %215 = getelementptr inbounds %struct.sfxge_txq, %struct.sfxge_txq* %214, i32 0, i32 8
  %216 = load %struct.TYPE_3__*, %struct.TYPE_3__** %215, align 8
  %217 = load i32, i32* %17, align 4
  %218 = zext i32 %217 to i64
  %219 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %216, i64 %218
  %220 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %219, i32 0, i32 1
  %221 = load i64, i64* %220, align 8
  %222 = load i32, i32* %18, align 4
  %223 = load i32, i32* @TSOH_STD_SIZE, align 4
  %224 = mul i32 %222, %223
  %225 = zext i32 %224 to i64
  %226 = add nsw i64 %221, %225
  store i64 %226, i64* %12, align 8
  %227 = load %struct.sfxge_txq*, %struct.sfxge_txq** %5, align 8
  %228 = getelementptr inbounds %struct.sfxge_txq, %struct.sfxge_txq* %227, i32 0, i32 8
  %229 = load %struct.TYPE_3__*, %struct.TYPE_3__** %228, align 8
  %230 = load i32, i32* %17, align 4
  %231 = zext i32 %230 to i64
  %232 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %229, i64 %231
  %233 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %232, i32 0, i32 2
  %234 = load i32, i32* %233, align 8
  store i32 %234, i32* %13, align 4
  %235 = load %struct.sfxge_txq*, %struct.sfxge_txq** %5, align 8
  %236 = getelementptr inbounds %struct.sfxge_txq, %struct.sfxge_txq* %235, i32 0, i32 7
  %237 = load %struct.sfxge_tx_mapping*, %struct.sfxge_tx_mapping** %236, align 8
  %238 = load i32, i32* %8, align 4
  %239 = zext i32 %238 to i64
  %240 = getelementptr inbounds %struct.sfxge_tx_mapping, %struct.sfxge_tx_mapping* %237, i64 %239
  %241 = getelementptr inbounds %struct.sfxge_tx_mapping, %struct.sfxge_tx_mapping* %240, i32 0, i32 0
  %242 = load i64, i64* %241, align 8
  %243 = icmp eq i64 %242, 0
  %244 = zext i1 %243 to i32
  %245 = call i32 @KASSERT(i32 %244, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  br label %318

246:                                              ; preds = %184
  %247 = load %struct.sfxge_txq*, %struct.sfxge_txq** %5, align 8
  %248 = getelementptr inbounds %struct.sfxge_txq, %struct.sfxge_txq* %247, i32 0, i32 7
  %249 = load %struct.sfxge_tx_mapping*, %struct.sfxge_tx_mapping** %248, align 8
  %250 = load i32, i32* %8, align 4
  %251 = zext i32 %250 to i64
  %252 = getelementptr inbounds %struct.sfxge_tx_mapping, %struct.sfxge_tx_mapping* %249, i64 %251
  store %struct.sfxge_tx_mapping* %252, %struct.sfxge_tx_mapping** %19, align 8
  %253 = load %struct.sfxge_tso_state*, %struct.sfxge_tso_state** %6, align 8
  %254 = getelementptr inbounds %struct.sfxge_tso_state, %struct.sfxge_tso_state* %253, i32 0, i32 5
  %255 = load i32, i32* %254, align 4
  %256 = load i32, i32* @M_SFXGE, align 4
  %257 = load i32, i32* @M_NOWAIT, align 4
  %258 = call i32 @malloc(i32 %255, i32 %256, i32 %257)
  store i32 %258, i32* %11, align 4
  %259 = load i32, i32* %11, align 4
  %260 = icmp ne i32 %259, 0
  %261 = xor i1 %260, true
  %262 = zext i1 %261 to i32
  %263 = call i64 @__predict_false(i32 %262)
  %264 = icmp ne i64 %263, 0
  br i1 %264, label %265, label %267

265:                                              ; preds = %246
  %266 = load i32, i32* @ENOMEM, align 4
  store i32 %266, i32* %4, align 4
  br label %465

267:                                              ; preds = %246
  %268 = load %struct.sfxge_txq*, %struct.sfxge_txq** %5, align 8
  %269 = getelementptr inbounds %struct.sfxge_txq, %struct.sfxge_txq* %268, i32 0, i32 5
  %270 = load i32, i32* %269, align 8
  %271 = load %struct.sfxge_tx_mapping*, %struct.sfxge_tx_mapping** %19, align 8
  %272 = getelementptr inbounds %struct.sfxge_tx_mapping, %struct.sfxge_tx_mapping* %271, i32 0, i32 2
  %273 = load i32, i32* %272, align 4
  %274 = load i32, i32* %11, align 4
  %275 = load %struct.sfxge_tso_state*, %struct.sfxge_tso_state** %6, align 8
  %276 = getelementptr inbounds %struct.sfxge_tso_state, %struct.sfxge_tso_state* %275, i32 0, i32 5
  %277 = load i32, i32* %276, align 4
  %278 = load i32, i32* @tso_map_long_header, align 4
  %279 = load i32, i32* @BUS_DMA_NOWAIT, align 4
  %280 = call i32 @bus_dmamap_load(i32 %270, i32 %273, i32 %274, i32 %277, i32 %278, i64* %12, i32 %279)
  store i32 %280, i32* %15, align 4
  %281 = load i64, i64* %12, align 8
  %282 = icmp eq i64 %281, 0
  %283 = zext i1 %282 to i32
  %284 = call i64 @__predict_false(i32 %283)
  %285 = icmp ne i64 %284, 0
  br i1 %285, label %286, label %303

286:                                              ; preds = %267
  %287 = load i32, i32* %15, align 4
  %288 = icmp eq i32 %287, 0
  br i1 %288, label %289, label %298

289:                                              ; preds = %286
  %290 = load %struct.sfxge_txq*, %struct.sfxge_txq** %5, align 8
  %291 = getelementptr inbounds %struct.sfxge_txq, %struct.sfxge_txq* %290, i32 0, i32 5
  %292 = load i32, i32* %291, align 8
  %293 = load %struct.sfxge_tx_mapping*, %struct.sfxge_tx_mapping** %19, align 8
  %294 = getelementptr inbounds %struct.sfxge_tx_mapping, %struct.sfxge_tx_mapping* %293, i32 0, i32 2
  %295 = load i32, i32* %294, align 4
  %296 = call i32 @bus_dmamap_unload(i32 %292, i32 %295)
  %297 = load i32, i32* @EINVAL, align 4
  store i32 %297, i32* %15, align 4
  br label %298

298:                                              ; preds = %289, %286
  %299 = load i32, i32* %11, align 4
  %300 = load i32, i32* @M_SFXGE, align 4
  %301 = call i32 @free(i32 %299, i32 %300)
  %302 = load i32, i32* %15, align 4
  store i32 %302, i32* %4, align 4
  br label %465

303:                                              ; preds = %267
  %304 = load %struct.sfxge_tx_mapping*, %struct.sfxge_tx_mapping** %19, align 8
  %305 = getelementptr inbounds %struct.sfxge_tx_mapping, %struct.sfxge_tx_mapping* %304, i32 0, i32 2
  %306 = load i32, i32* %305, align 4
  store i32 %306, i32* %13, align 4
  %307 = load %struct.sfxge_txq*, %struct.sfxge_txq** %5, align 8
  %308 = getelementptr inbounds %struct.sfxge_txq, %struct.sfxge_txq* %307, i32 0, i32 6
  %309 = load i32, i32* %308, align 4
  %310 = add nsw i32 %309, 1
  store i32 %310, i32* %308, align 4
  %311 = load i32, i32* %11, align 4
  %312 = load %struct.sfxge_tx_mapping*, %struct.sfxge_tx_mapping** %19, align 8
  %313 = getelementptr inbounds %struct.sfxge_tx_mapping, %struct.sfxge_tx_mapping* %312, i32 0, i32 1
  %314 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %313, i32 0, i32 0
  store i32 %311, i32* %314, align 8
  %315 = load i64, i64* @TX_BUF_UNMAP, align 8
  %316 = load %struct.sfxge_tx_mapping*, %struct.sfxge_tx_mapping** %19, align 8
  %317 = getelementptr inbounds %struct.sfxge_tx_mapping, %struct.sfxge_tx_mapping* %316, i32 0, i32 0
  store i64 %315, i64* %317, align 8
  br label %318

318:                                              ; preds = %303, %193
  %319 = load i32, i32* %11, align 4
  %320 = load %struct.sfxge_tso_state*, %struct.sfxge_tso_state** %6, align 8
  %321 = getelementptr inbounds %struct.sfxge_tso_state, %struct.sfxge_tso_state* %320, i32 0, i32 6
  %322 = load i32, i32* %321, align 8
  %323 = add i32 %319, %322
  %324 = zext i32 %323 to i64
  %325 = inttoptr i64 %324 to %struct.tcphdr*
  store %struct.tcphdr* %325, %struct.tcphdr** %9, align 8
  %326 = load %struct.sfxge_tso_state*, %struct.sfxge_tso_state** %6, align 8
  %327 = getelementptr inbounds %struct.sfxge_tso_state, %struct.sfxge_tso_state* %326, i32 0, i32 11
  %328 = load i32, i32* %327, align 8
  %329 = load %struct.sfxge_tso_state*, %struct.sfxge_tso_state** %6, align 8
  %330 = getelementptr inbounds %struct.sfxge_tso_state, %struct.sfxge_tso_state* %329, i32 0, i32 5
  %331 = load i32, i32* %330, align 4
  %332 = load i32, i32* %11, align 4
  %333 = call i32 @m_copydata(i32 %328, i32 0, i32 %331, i32 %332)
  %334 = load %struct.sfxge_tso_state*, %struct.sfxge_tso_state** %6, align 8
  %335 = getelementptr inbounds %struct.sfxge_tso_state, %struct.sfxge_tso_state* %334, i32 0, i32 1
  %336 = load i32, i32* %335, align 4
  %337 = call i32 @htonl(i32 %336)
  %338 = load %struct.tcphdr*, %struct.tcphdr** %9, align 8
  %339 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %338, i32 0, i32 1
  store i32 %337, i32* %339, align 4
  %340 = load %struct.sfxge_tso_state*, %struct.sfxge_tso_state** %6, align 8
  %341 = getelementptr inbounds %struct.sfxge_tso_state, %struct.sfxge_tso_state* %340, i32 0, i32 2
  %342 = load i32, i32* %341, align 8
  %343 = load %struct.sfxge_tso_state*, %struct.sfxge_tso_state** %6, align 8
  %344 = getelementptr inbounds %struct.sfxge_tso_state, %struct.sfxge_tso_state* %343, i32 0, i32 1
  %345 = load i32, i32* %344, align 4
  %346 = add i32 %345, %342
  store i32 %346, i32* %344, align 4
  %347 = load %struct.sfxge_tso_state*, %struct.sfxge_tso_state** %6, align 8
  %348 = getelementptr inbounds %struct.sfxge_tso_state, %struct.sfxge_tso_state* %347, i32 0, i32 4
  %349 = load i32, i32* %348, align 8
  %350 = load %struct.sfxge_tso_state*, %struct.sfxge_tso_state** %6, align 8
  %351 = getelementptr inbounds %struct.sfxge_tso_state, %struct.sfxge_tso_state* %350, i32 0, i32 2
  %352 = load i32, i32* %351, align 8
  %353 = icmp ugt i32 %349, %352
  br i1 %353, label %354, label %374

354:                                              ; preds = %318
  %355 = load %struct.sfxge_tso_state*, %struct.sfxge_tso_state** %6, align 8
  %356 = getelementptr inbounds %struct.sfxge_tso_state, %struct.sfxge_tso_state* %355, i32 0, i32 5
  %357 = load i32, i32* %356, align 4
  %358 = load %struct.sfxge_tso_state*, %struct.sfxge_tso_state** %6, align 8
  %359 = getelementptr inbounds %struct.sfxge_tso_state, %struct.sfxge_tso_state* %358, i32 0, i32 7
  %360 = load i32, i32* %359, align 4
  %361 = sub i32 %357, %360
  %362 = load %struct.sfxge_tso_state*, %struct.sfxge_tso_state** %6, align 8
  %363 = getelementptr inbounds %struct.sfxge_tso_state, %struct.sfxge_tso_state* %362, i32 0, i32 2
  %364 = load i32, i32* %363, align 8
  %365 = add i32 %361, %364
  store i32 %365, i32* %10, align 4
  %366 = load i32, i32* @TH_FIN, align 4
  %367 = load i32, i32* @TH_PUSH, align 4
  %368 = or i32 %366, %367
  %369 = xor i32 %368, -1
  %370 = load %struct.tcphdr*, %struct.tcphdr** %9, align 8
  %371 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %370, i32 0, i32 0
  %372 = load i32, i32* %371, align 4
  %373 = and i32 %372, %369
  store i32 %373, i32* %371, align 4
  br label %386

374:                                              ; preds = %318
  %375 = load %struct.sfxge_tso_state*, %struct.sfxge_tso_state** %6, align 8
  %376 = getelementptr inbounds %struct.sfxge_tso_state, %struct.sfxge_tso_state* %375, i32 0, i32 5
  %377 = load i32, i32* %376, align 4
  %378 = load %struct.sfxge_tso_state*, %struct.sfxge_tso_state** %6, align 8
  %379 = getelementptr inbounds %struct.sfxge_tso_state, %struct.sfxge_tso_state* %378, i32 0, i32 7
  %380 = load i32, i32* %379, align 4
  %381 = sub i32 %377, %380
  %382 = load %struct.sfxge_tso_state*, %struct.sfxge_tso_state** %6, align 8
  %383 = getelementptr inbounds %struct.sfxge_tso_state, %struct.sfxge_tso_state* %382, i32 0, i32 4
  %384 = load i32, i32* %383, align 8
  %385 = add i32 %381, %384
  store i32 %385, i32* %10, align 4
  br label %386

386:                                              ; preds = %374, %354
  %387 = load %struct.sfxge_tso_state*, %struct.sfxge_tso_state** %6, align 8
  %388 = getelementptr inbounds %struct.sfxge_tso_state, %struct.sfxge_tso_state* %387, i32 0, i32 8
  %389 = load i8*, i8** %388, align 8
  %390 = load i32, i32* @ETHERTYPE_IP, align 4
  %391 = call i8* @htons(i32 %390)
  %392 = icmp eq i8* %389, %391
  br i1 %392, label %393, label %405

393:                                              ; preds = %386
  %394 = load i32, i32* %11, align 4
  %395 = load %struct.sfxge_tso_state*, %struct.sfxge_tso_state** %6, align 8
  %396 = getelementptr inbounds %struct.sfxge_tso_state, %struct.sfxge_tso_state* %395, i32 0, i32 7
  %397 = load i32, i32* %396, align 4
  %398 = add i32 %394, %397
  %399 = zext i32 %398 to i64
  %400 = inttoptr i64 %399 to %struct.ip*
  store %struct.ip* %400, %struct.ip** %20, align 8
  %401 = load i32, i32* %10, align 4
  %402 = call i8* @htons(i32 %401)
  %403 = load %struct.ip*, %struct.ip** %20, align 8
  %404 = getelementptr inbounds %struct.ip, %struct.ip* %403, i32 0, i32 0
  store i8* %402, i8** %404, align 8
  br label %420

405:                                              ; preds = %386
  %406 = load i32, i32* %11, align 4
  %407 = load %struct.sfxge_tso_state*, %struct.sfxge_tso_state** %6, align 8
  %408 = getelementptr inbounds %struct.sfxge_tso_state, %struct.sfxge_tso_state* %407, i32 0, i32 7
  %409 = load i32, i32* %408, align 4
  %410 = add i32 %406, %409
  %411 = zext i32 %410 to i64
  %412 = inttoptr i64 %411 to %struct.ip6_hdr*
  store %struct.ip6_hdr* %412, %struct.ip6_hdr** %21, align 8
  %413 = load i32, i32* %10, align 4
  %414 = zext i32 %413 to i64
  %415 = sub i64 %414, 8
  %416 = trunc i64 %415 to i32
  %417 = call i8* @htons(i32 %416)
  %418 = load %struct.ip6_hdr*, %struct.ip6_hdr** %21, align 8
  %419 = getelementptr inbounds %struct.ip6_hdr, %struct.ip6_hdr* %418, i32 0, i32 0
  store i8* %417, i8** %419, align 8
  br label %420

420:                                              ; preds = %405, %393
  %421 = load %struct.sfxge_txq*, %struct.sfxge_txq** %5, align 8
  %422 = getelementptr inbounds %struct.sfxge_txq, %struct.sfxge_txq* %421, i32 0, i32 5
  %423 = load i32, i32* %422, align 8
  %424 = load i32, i32* %13, align 4
  %425 = load i32, i32* @BUS_DMASYNC_PREWRITE, align 4
  %426 = call i32 @bus_dmamap_sync(i32 %423, i32 %424, i32 %425)
  %427 = load %struct.sfxge_txq*, %struct.sfxge_txq** %5, align 8
  %428 = getelementptr inbounds %struct.sfxge_txq, %struct.sfxge_txq* %427, i32 0, i32 4
  %429 = load i32*, i32** %428, align 8
  %430 = load %struct.sfxge_txq*, %struct.sfxge_txq** %5, align 8
  %431 = getelementptr inbounds %struct.sfxge_txq, %struct.sfxge_txq* %430, i32 0, i32 0
  %432 = load i64, i64* %431, align 8
  %433 = add i64 %432, 1
  store i64 %433, i64* %431, align 8
  %434 = getelementptr inbounds i32, i32* %429, i64 %432
  store i32* %434, i32** %14, align 8
  %435 = load %struct.sfxge_txq*, %struct.sfxge_txq** %5, align 8
  %436 = getelementptr inbounds %struct.sfxge_txq, %struct.sfxge_txq* %435, i32 0, i32 3
  %437 = load i32, i32* %436, align 8
  %438 = load i64, i64* %12, align 8
  %439 = load %struct.sfxge_tso_state*, %struct.sfxge_tso_state** %6, align 8
  %440 = getelementptr inbounds %struct.sfxge_tso_state, %struct.sfxge_tso_state* %439, i32 0, i32 5
  %441 = load i32, i32* %440, align 4
  %442 = load i32*, i32** %14, align 8
  %443 = call i32 @efx_tx_qdesc_dma_create(i32 %437, i64 %438, i32 %441, i32 0, i32* %442)
  %444 = load i32, i32* %8, align 4
  %445 = add i32 %444, 1
  %446 = load %struct.sfxge_txq*, %struct.sfxge_txq** %5, align 8
  %447 = getelementptr inbounds %struct.sfxge_txq, %struct.sfxge_txq* %446, i32 0, i32 1
  %448 = load i32, i32* %447, align 8
  %449 = and i32 %445, %448
  store i32 %449, i32* %8, align 4
  %450 = load i8*, i8** @UINT_MAX, align 8
  %451 = load %struct.sfxge_tso_state*, %struct.sfxge_tso_state** %6, align 8
  %452 = getelementptr inbounds %struct.sfxge_tso_state, %struct.sfxge_tso_state* %451, i32 0, i32 10
  store i8* %450, i8** %452, align 8
  br label %453

453:                                              ; preds = %420, %158
  %454 = load %struct.sfxge_tso_state*, %struct.sfxge_tso_state** %6, align 8
  %455 = getelementptr inbounds %struct.sfxge_tso_state, %struct.sfxge_tso_state* %454, i32 0, i32 2
  %456 = load i32, i32* %455, align 8
  %457 = load %struct.sfxge_tso_state*, %struct.sfxge_tso_state** %6, align 8
  %458 = getelementptr inbounds %struct.sfxge_tso_state, %struct.sfxge_tso_state* %457, i32 0, i32 9
  store i32 %456, i32* %458, align 8
  %459 = load %struct.sfxge_txq*, %struct.sfxge_txq** %5, align 8
  %460 = getelementptr inbounds %struct.sfxge_txq, %struct.sfxge_txq* %459, i32 0, i32 2
  %461 = load i32, i32* %460, align 4
  %462 = add nsw i32 %461, 1
  store i32 %462, i32* %460, align 4
  %463 = load i32, i32* %8, align 4
  %464 = load i32*, i32** %7, align 8
  store i32 %463, i32* %464, align 4
  store i32 0, i32* %4, align 4
  br label %465

465:                                              ; preds = %453, %298, %265
  %466 = load i32, i32* %4, align 4
  ret i32 %466
}

declare dso_local i32 @efx_tx_qdesc_tso2_create(i32, i32, i32, i32, i32, i32*, i32) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @efx_tx_qdesc_tso_create(i32, i32, i32, i32, i32) #1

declare dso_local i64 @__predict_true(i32) #1

declare dso_local i32 @malloc(i32, i32, i32) #1

declare dso_local i64 @__predict_false(i32) #1

declare dso_local i32 @bus_dmamap_load(i32, i32, i32, i32, i32, i64*, i32) #1

declare dso_local i32 @bus_dmamap_unload(i32, i32) #1

declare dso_local i32 @free(i32, i32) #1

declare dso_local i32 @m_copydata(i32, i32, i32, i32) #1

declare dso_local i32 @htonl(i32) #1

declare dso_local i8* @htons(i32) #1

declare dso_local i32 @bus_dmamap_sync(i32, i32, i32) #1

declare dso_local i32 @efx_tx_qdesc_dma_create(i32, i64, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
