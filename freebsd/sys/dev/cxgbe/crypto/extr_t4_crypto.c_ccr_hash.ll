; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/crypto/extr_t4_crypto.c_ccr_hash.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/crypto/extr_t4_crypto.c_ccr_hash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ccr_softc = type { i32, i32, i32, i32, %struct.TYPE_9__*, i32 }
%struct.TYPE_9__ = type { i32 }
%struct.ccr_session = type { i64, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64, i32, i32, i32, %struct.auth_hash* }
%struct.auth_hash = type { i64, i64 }
%struct.cryptop = type { i32, i32, %struct.cryptodesc* }
%struct.cryptodesc = type { i64, i32 }
%struct.chcr_wr = type { %struct.TYPE_7__, %struct.TYPE_6__ }
%struct.TYPE_7__ = type { i8*, i32 }
%struct.TYPE_6__ = type { i8*, i8*, i8*, i8*, i8* }
%struct.wrqe = type { i32 }

@MAX_REQUEST_SIZE = common dso_local global i64 0, align 8
@EFBIG = common dso_local global i32 0, align 4
@HMAC = common dso_local global i64 0, align 8
@SCMD_HMAC_CTRL_NO_TRUNC = common dso_local global i64 0, align 8
@SCMD_HMAC_CTRL_NOP = common dso_local global i64 0, align 8
@SGE_MAX_WR_LEN = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i32 0, align 4
@CPL_TX_SEC_PDU = common dso_local global i32 0, align 4
@SCMD_PROTO_VERSION_GENERIC = common dso_local global i32 0, align 4
@SCMD_CIPH_MODE_NOP = common dso_local global i32 0, align 4
@CHCR_KEYCTX_NO_KEY = common dso_local global i32 0, align 4
@DUMMY_BYTES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ccr_softc*, %struct.ccr_session*, %struct.cryptop*)* @ccr_hash to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ccr_hash(%struct.ccr_softc* %0, %struct.ccr_session* %1, %struct.cryptop* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ccr_softc*, align 8
  %6 = alloca %struct.ccr_session*, align 8
  %7 = alloca %struct.cryptop*, align 8
  %8 = alloca %struct.chcr_wr*, align 8
  %9 = alloca %struct.wrqe*, align 8
  %10 = alloca %struct.auth_hash*, align 8
  %11 = alloca %struct.cryptodesc*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  store %struct.ccr_softc* %0, %struct.ccr_softc** %5, align 8
  store %struct.ccr_session* %1, %struct.ccr_session** %6, align 8
  store %struct.cryptop* %2, %struct.cryptop** %7, align 8
  %25 = load %struct.cryptop*, %struct.cryptop** %7, align 8
  %26 = getelementptr inbounds %struct.cryptop, %struct.cryptop* %25, i32 0, i32 2
  %27 = load %struct.cryptodesc*, %struct.cryptodesc** %26, align 8
  store %struct.cryptodesc* %27, %struct.cryptodesc** %11, align 8
  %28 = load %struct.cryptodesc*, %struct.cryptodesc** %11, align 8
  %29 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @MAX_REQUEST_SIZE, align 8
  %32 = icmp sgt i64 %30, %31
  br i1 %32, label %33, label %35

33:                                               ; preds = %3
  %34 = load i32, i32* @EFBIG, align 4
  store i32 %34, i32* %4, align 4
  br label %344

35:                                               ; preds = %3
  %36 = load %struct.ccr_session*, %struct.ccr_session** %6, align 8
  %37 = getelementptr inbounds %struct.ccr_session, %struct.ccr_session* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 4
  %39 = load %struct.auth_hash*, %struct.auth_hash** %38, align 8
  store %struct.auth_hash* %39, %struct.auth_hash** %10, align 8
  %40 = load %struct.ccr_session*, %struct.ccr_session** %6, align 8
  %41 = getelementptr inbounds %struct.ccr_session, %struct.ccr_session* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @HMAC, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %47

45:                                               ; preds = %35
  store i32 1, i32* %24, align 4
  %46 = load i64, i64* @SCMD_HMAC_CTRL_NO_TRUNC, align 8
  store i64 %46, i64* %18, align 8
  br label %49

47:                                               ; preds = %35
  store i32 0, i32* %24, align 4
  %48 = load i64, i64* @SCMD_HMAC_CTRL_NOP, align 8
  store i64 %48, i64* %18, align 8
  br label %49

49:                                               ; preds = %47, %45
  %50 = load %struct.ccr_session*, %struct.ccr_session** %6, align 8
  %51 = getelementptr inbounds %struct.ccr_session, %struct.ccr_session* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = call i64 @roundup2(i64 %53, i32 16)
  store i64 %54, i64* %20, align 8
  %55 = load i64, i64* %20, align 8
  store i64 %55, i64* %15, align 8
  %56 = load i32, i32* %24, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %62

58:                                               ; preds = %49
  %59 = load i64, i64* %20, align 8
  %60 = load i64, i64* %15, align 8
  %61 = add nsw i64 %60, %59
  store i64 %61, i64* %15, align 8
  br label %62

62:                                               ; preds = %58, %49
  %63 = load %struct.auth_hash*, %struct.auth_hash** %10, align 8
  %64 = getelementptr inbounds %struct.auth_hash, %struct.auth_hash* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  store i64 %65, i64* %13, align 8
  %66 = load i64, i64* %15, align 8
  %67 = call i64 @HASH_TRANSHDR_SIZE(i64 %66)
  store i64 %67, i64* %16, align 8
  %68 = load %struct.cryptodesc*, %struct.cryptodesc** %11, align 8
  %69 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = icmp eq i64 %70, 0
  br i1 %71, label %72, label %76

72:                                               ; preds = %62
  %73 = load %struct.auth_hash*, %struct.auth_hash** %10, align 8
  %74 = getelementptr inbounds %struct.auth_hash, %struct.auth_hash* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  store i64 %75, i64* %19, align 8
  store i32 0, i32* %22, align 4
  store i32 0, i32* %23, align 4
  br label %118

76:                                               ; preds = %62
  %77 = load i64, i64* %16, align 8
  %78 = load %struct.cryptodesc*, %struct.cryptodesc** %11, align 8
  %79 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = call i64 @ccr_use_imm_data(i64 %77, i64 %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %87

83:                                               ; preds = %76
  %84 = load %struct.cryptodesc*, %struct.cryptodesc** %11, align 8
  %85 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  store i64 %86, i64* %19, align 8
  store i32 0, i32* %22, align 4
  store i32 0, i32* %23, align 4
  br label %117

87:                                               ; preds = %76
  store i64 0, i64* %19, align 8
  %88 = load %struct.ccr_softc*, %struct.ccr_softc** %5, align 8
  %89 = getelementptr inbounds %struct.ccr_softc, %struct.ccr_softc* %88, i32 0, i32 4
  %90 = load %struct.TYPE_9__*, %struct.TYPE_9__** %89, align 8
  %91 = call i32 @sglist_reset(%struct.TYPE_9__* %90)
  %92 = load %struct.ccr_softc*, %struct.ccr_softc** %5, align 8
  %93 = getelementptr inbounds %struct.ccr_softc, %struct.ccr_softc* %92, i32 0, i32 4
  %94 = load %struct.TYPE_9__*, %struct.TYPE_9__** %93, align 8
  %95 = load %struct.ccr_softc*, %struct.ccr_softc** %5, align 8
  %96 = getelementptr inbounds %struct.ccr_softc, %struct.ccr_softc* %95, i32 0, i32 5
  %97 = load i32, i32* %96, align 8
  %98 = load %struct.cryptodesc*, %struct.cryptodesc** %11, align 8
  %99 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 8
  %101 = load %struct.cryptodesc*, %struct.cryptodesc** %11, align 8
  %102 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = call i32 @sglist_append_sglist(%struct.TYPE_9__* %94, i32 %97, i32 %100, i64 %103)
  store i32 %104, i32* %21, align 4
  %105 = load i32, i32* %21, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %109

107:                                              ; preds = %87
  %108 = load i32, i32* %21, align 4
  store i32 %108, i32* %4, align 4
  br label %344

109:                                              ; preds = %87
  %110 = load %struct.ccr_softc*, %struct.ccr_softc** %5, align 8
  %111 = getelementptr inbounds %struct.ccr_softc, %struct.ccr_softc* %110, i32 0, i32 4
  %112 = load %struct.TYPE_9__*, %struct.TYPE_9__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  store i32 %114, i32* %22, align 4
  %115 = load i32, i32* %22, align 4
  %116 = call i32 @ccr_ulptx_sgl_len(i32 %115)
  store i32 %116, i32* %23, align 4
  br label %117

117:                                              ; preds = %109, %83
  br label %118

118:                                              ; preds = %117, %72
  %119 = load i64, i64* %16, align 8
  %120 = call i64 @roundup2(i64 %119, i32 16)
  %121 = load i64, i64* %19, align 8
  %122 = call i64 @roundup2(i64 %121, i32 16)
  %123 = add nsw i64 %120, %122
  %124 = load i32, i32* %23, align 4
  %125 = sext i32 %124 to i64
  %126 = add nsw i64 %123, %125
  store i64 %126, i64* %17, align 8
  %127 = load i64, i64* %17, align 8
  %128 = load i64, i64* @SGE_MAX_WR_LEN, align 8
  %129 = icmp sgt i64 %127, %128
  br i1 %129, label %130, label %132

130:                                              ; preds = %118
  %131 = load i32, i32* @EFBIG, align 4
  store i32 %131, i32* %4, align 4
  br label %344

132:                                              ; preds = %118
  %133 = load i64, i64* %17, align 8
  %134 = load %struct.ccr_softc*, %struct.ccr_softc** %5, align 8
  %135 = getelementptr inbounds %struct.ccr_softc, %struct.ccr_softc* %134, i32 0, i32 3
  %136 = load i32, i32* %135, align 4
  %137 = call %struct.wrqe* @alloc_wrqe(i64 %133, i32 %136)
  store %struct.wrqe* %137, %struct.wrqe** %9, align 8
  %138 = load %struct.wrqe*, %struct.wrqe** %9, align 8
  %139 = icmp eq %struct.wrqe* %138, null
  br i1 %139, label %140, label %146

140:                                              ; preds = %132
  %141 = load %struct.ccr_softc*, %struct.ccr_softc** %5, align 8
  %142 = getelementptr inbounds %struct.ccr_softc, %struct.ccr_softc* %141, i32 0, i32 2
  %143 = load i32, i32* %142, align 8
  %144 = add nsw i32 %143, 1
  store i32 %144, i32* %142, align 8
  %145 = load i32, i32* @ENOMEM, align 4
  store i32 %145, i32* %4, align 4
  br label %344

146:                                              ; preds = %132
  %147 = load %struct.wrqe*, %struct.wrqe** %9, align 8
  %148 = call %struct.chcr_wr* @wrtod(%struct.wrqe* %147)
  store %struct.chcr_wr* %148, %struct.chcr_wr** %8, align 8
  %149 = load %struct.chcr_wr*, %struct.chcr_wr** %8, align 8
  %150 = load i64, i64* %17, align 8
  %151 = call i32 @memset(%struct.chcr_wr* %149, i32 0, i64 %150)
  %152 = load %struct.ccr_softc*, %struct.ccr_softc** %5, align 8
  %153 = load %struct.chcr_wr*, %struct.chcr_wr** %8, align 8
  %154 = load i64, i64* %15, align 8
  %155 = load i64, i64* %17, align 8
  %156 = load i64, i64* %19, align 8
  %157 = load i32, i32* %23, align 4
  %158 = load i64, i64* %13, align 8
  %159 = load %struct.cryptop*, %struct.cryptop** %7, align 8
  %160 = call i32 @ccr_populate_wreq(%struct.ccr_softc* %152, %struct.chcr_wr* %153, i64 %154, i64 %155, i64 %156, i32 %157, i64 %158, %struct.cryptop* %159)
  %161 = load i32, i32* @CPL_TX_SEC_PDU, align 4
  %162 = call i32 @V_CPL_TX_SEC_PDU_OPCODE(i32 %161)
  %163 = load %struct.ccr_softc*, %struct.ccr_softc** %5, align 8
  %164 = getelementptr inbounds %struct.ccr_softc, %struct.ccr_softc* %163, i32 0, i32 1
  %165 = load i32, i32* %164, align 4
  %166 = call i32 @V_CPL_TX_SEC_PDU_RXCHID(i32 %165)
  %167 = or i32 %162, %166
  %168 = call i32 @V_CPL_TX_SEC_PDU_ACKFOLLOWS(i32 0)
  %169 = or i32 %167, %168
  %170 = call i32 @V_CPL_TX_SEC_PDU_ULPTXLPBK(i32 1)
  %171 = or i32 %169, %170
  %172 = call i32 @V_CPL_TX_SEC_PDU_CPLLEN(i32 2)
  %173 = or i32 %171, %172
  %174 = call i32 @V_CPL_TX_SEC_PDU_PLACEHOLDER(i32 0)
  %175 = or i32 %173, %174
  %176 = call i32 @V_CPL_TX_SEC_PDU_IVINSRTOFST(i32 0)
  %177 = or i32 %175, %176
  %178 = call i8* @htobe32(i32 %177)
  %179 = load %struct.chcr_wr*, %struct.chcr_wr** %8, align 8
  %180 = getelementptr inbounds %struct.chcr_wr, %struct.chcr_wr* %179, i32 0, i32 1
  %181 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %180, i32 0, i32 4
  store i8* %178, i8** %181, align 8
  %182 = load %struct.cryptodesc*, %struct.cryptodesc** %11, align 8
  %183 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %182, i32 0, i32 0
  %184 = load i64, i64* %183, align 8
  %185 = icmp eq i64 %184, 0
  br i1 %185, label %186, label %190

186:                                              ; preds = %146
  %187 = load %struct.auth_hash*, %struct.auth_hash** %10, align 8
  %188 = getelementptr inbounds %struct.auth_hash, %struct.auth_hash* %187, i32 0, i32 1
  %189 = load i64, i64* %188, align 8
  br label %194

190:                                              ; preds = %146
  %191 = load %struct.cryptodesc*, %struct.cryptodesc** %11, align 8
  %192 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %191, i32 0, i32 0
  %193 = load i64, i64* %192, align 8
  br label %194

194:                                              ; preds = %190, %186
  %195 = phi i64 [ %189, %186 ], [ %193, %190 ]
  %196 = trunc i64 %195 to i32
  %197 = call i8* @htobe32(i32 %196)
  %198 = load %struct.chcr_wr*, %struct.chcr_wr** %8, align 8
  %199 = getelementptr inbounds %struct.chcr_wr, %struct.chcr_wr* %198, i32 0, i32 1
  %200 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %199, i32 0, i32 3
  store i8* %197, i8** %200, align 8
  %201 = call i32 @V_CPL_TX_SEC_PDU_AUTHSTART(i32 1)
  %202 = call i32 @V_CPL_TX_SEC_PDU_AUTHSTOP(i32 0)
  %203 = or i32 %201, %202
  %204 = call i8* @htobe32(i32 %203)
  %205 = load %struct.chcr_wr*, %struct.chcr_wr** %8, align 8
  %206 = getelementptr inbounds %struct.chcr_wr, %struct.chcr_wr* %205, i32 0, i32 1
  %207 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %206, i32 0, i32 2
  store i8* %204, i8** %207, align 8
  %208 = call i32 @V_SCMD_SEQ_NO_CTRL(i32 0)
  %209 = load i32, i32* @SCMD_PROTO_VERSION_GENERIC, align 4
  %210 = call i32 @V_SCMD_PROTO_VERSION(i32 %209)
  %211 = or i32 %208, %210
  %212 = load i32, i32* @SCMD_CIPH_MODE_NOP, align 4
  %213 = call i32 @V_SCMD_CIPH_MODE(i32 %212)
  %214 = or i32 %211, %213
  %215 = load %struct.ccr_session*, %struct.ccr_session** %6, align 8
  %216 = getelementptr inbounds %struct.ccr_session, %struct.ccr_session* %215, i32 0, i32 1
  %217 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %216, i32 0, i32 3
  %218 = load i32, i32* %217, align 8
  %219 = call i32 @V_SCMD_AUTH_MODE(i32 %218)
  %220 = or i32 %214, %219
  %221 = load i64, i64* %18, align 8
  %222 = call i32 @V_SCMD_HMAC_CTRL(i64 %221)
  %223 = or i32 %220, %222
  %224 = call i8* @htobe32(i32 %223)
  %225 = load %struct.chcr_wr*, %struct.chcr_wr** %8, align 8
  %226 = getelementptr inbounds %struct.chcr_wr, %struct.chcr_wr* %225, i32 0, i32 1
  %227 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %226, i32 0, i32 1
  store i8* %224, i8** %227, align 8
  %228 = call i32 @V_SCMD_LAST_FRAG(i32 0)
  %229 = load %struct.cryptodesc*, %struct.cryptodesc** %11, align 8
  %230 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %229, i32 0, i32 0
  %231 = load i64, i64* %230, align 8
  %232 = icmp eq i64 %231, 0
  %233 = zext i1 %232 to i64
  %234 = select i1 %232, i32 1, i32 0
  %235 = call i32 @V_SCMD_MORE_FRAGS(i32 %234)
  %236 = or i32 %228, %235
  %237 = call i32 @V_SCMD_MAC_ONLY(i32 1)
  %238 = or i32 %236, %237
  %239 = call i8* @htobe32(i32 %238)
  %240 = load %struct.chcr_wr*, %struct.chcr_wr** %8, align 8
  %241 = getelementptr inbounds %struct.chcr_wr, %struct.chcr_wr* %240, i32 0, i32 1
  %242 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %241, i32 0, i32 0
  store i8* %239, i8** %242, align 8
  %243 = load %struct.chcr_wr*, %struct.chcr_wr** %8, align 8
  %244 = getelementptr inbounds %struct.chcr_wr, %struct.chcr_wr* %243, i32 0, i32 0
  %245 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %244, i32 0, i32 1
  %246 = load i32, i32* %245, align 8
  %247 = load %struct.ccr_session*, %struct.ccr_session** %6, align 8
  %248 = getelementptr inbounds %struct.ccr_session, %struct.ccr_session* %247, i32 0, i32 1
  %249 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %248, i32 0, i32 2
  %250 = load i32, i32* %249, align 4
  %251 = load i64, i64* %15, align 8
  %252 = call i32 @memcpy(i32 %246, i32 %250, i64 %251)
  %253 = load i64, i64* %15, align 8
  %254 = add i64 4, %253
  %255 = udiv i64 %254, 16
  store i64 %255, i64* %14, align 8
  %256 = load i64, i64* %14, align 8
  %257 = call i32 @V_KEY_CONTEXT_CTX_LEN(i64 %256)
  %258 = load i32, i32* %24, align 4
  %259 = call i32 @V_KEY_CONTEXT_OPAD_PRESENT(i32 %258)
  %260 = or i32 %257, %259
  %261 = call i32 @V_KEY_CONTEXT_SALT_PRESENT(i32 1)
  %262 = or i32 %260, %261
  %263 = load i32, i32* @CHCR_KEYCTX_NO_KEY, align 4
  %264 = call i32 @V_KEY_CONTEXT_CK_SIZE(i32 %263)
  %265 = or i32 %262, %264
  %266 = load %struct.ccr_session*, %struct.ccr_session** %6, align 8
  %267 = getelementptr inbounds %struct.ccr_session, %struct.ccr_session* %266, i32 0, i32 1
  %268 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %267, i32 0, i32 1
  %269 = load i32, i32* %268, align 8
  %270 = call i32 @V_KEY_CONTEXT_MK_SIZE(i32 %269)
  %271 = or i32 %265, %270
  %272 = call i32 @V_KEY_CONTEXT_VALID(i32 1)
  %273 = or i32 %271, %272
  %274 = call i8* @htobe32(i32 %273)
  %275 = load %struct.chcr_wr*, %struct.chcr_wr** %8, align 8
  %276 = getelementptr inbounds %struct.chcr_wr, %struct.chcr_wr* %275, i32 0, i32 0
  %277 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %276, i32 0, i32 0
  store i8* %274, i8** %277, align 8
  %278 = load %struct.chcr_wr*, %struct.chcr_wr** %8, align 8
  %279 = getelementptr inbounds %struct.chcr_wr, %struct.chcr_wr* %278, i64 1
  %280 = bitcast %struct.chcr_wr* %279 to i8*
  %281 = load i64, i64* %15, align 8
  %282 = getelementptr inbounds i8, i8* %280, i64 %281
  %283 = load i32, i32* @DUMMY_BYTES, align 4
  %284 = sext i32 %283 to i64
  %285 = getelementptr inbounds i8, i8* %282, i64 %284
  store i8* %285, i8** %12, align 8
  %286 = load %struct.cryptodesc*, %struct.cryptodesc** %11, align 8
  %287 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %286, i32 0, i32 0
  %288 = load i64, i64* %287, align 8
  %289 = icmp eq i64 %288, 0
  br i1 %289, label %290, label %313

290:                                              ; preds = %194
  %291 = load i8*, i8** %12, align 8
  %292 = getelementptr inbounds i8, i8* %291, i64 0
  store i8 -128, i8* %292, align 1
  %293 = load %struct.ccr_session*, %struct.ccr_session** %6, align 8
  %294 = getelementptr inbounds %struct.ccr_session, %struct.ccr_session* %293, i32 0, i32 0
  %295 = load i64, i64* %294, align 8
  %296 = load i64, i64* @HMAC, align 8
  %297 = icmp eq i64 %295, %296
  br i1 %297, label %298, label %312

298:                                              ; preds = %290
  %299 = load %struct.auth_hash*, %struct.auth_hash** %10, align 8
  %300 = getelementptr inbounds %struct.auth_hash, %struct.auth_hash* %299, i32 0, i32 1
  %301 = load i64, i64* %300, align 8
  %302 = shl i64 %301, 3
  %303 = trunc i64 %302 to i32
  %304 = call i32 @htobe64(i32 %303)
  %305 = load i8*, i8** %12, align 8
  %306 = load %struct.auth_hash*, %struct.auth_hash** %10, align 8
  %307 = getelementptr inbounds %struct.auth_hash, %struct.auth_hash* %306, i32 0, i32 1
  %308 = load i64, i64* %307, align 8
  %309 = getelementptr inbounds i8, i8* %305, i64 %308
  %310 = getelementptr inbounds i8, i8* %309, i64 -4
  %311 = bitcast i8* %310 to i32*
  store i32 %304, i32* %311, align 4
  br label %312

312:                                              ; preds = %298, %290
  br label %338

313:                                              ; preds = %194
  %314 = load i64, i64* %19, align 8
  %315 = icmp ne i64 %314, 0
  br i1 %315, label %316, label %332

316:                                              ; preds = %313
  %317 = load %struct.cryptop*, %struct.cryptop** %7, align 8
  %318 = getelementptr inbounds %struct.cryptop, %struct.cryptop* %317, i32 0, i32 1
  %319 = load i32, i32* %318, align 4
  %320 = load %struct.cryptop*, %struct.cryptop** %7, align 8
  %321 = getelementptr inbounds %struct.cryptop, %struct.cryptop* %320, i32 0, i32 0
  %322 = load i32, i32* %321, align 8
  %323 = load %struct.cryptodesc*, %struct.cryptodesc** %11, align 8
  %324 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %323, i32 0, i32 1
  %325 = load i32, i32* %324, align 8
  %326 = load %struct.cryptodesc*, %struct.cryptodesc** %11, align 8
  %327 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %326, i32 0, i32 0
  %328 = load i64, i64* %327, align 8
  %329 = trunc i64 %328 to i32
  %330 = load i8*, i8** %12, align 8
  %331 = call i32 @crypto_copydata(i32 %319, i32 %322, i32 %325, i32 %329, i8* %330)
  br label %337

332:                                              ; preds = %313
  %333 = load %struct.ccr_softc*, %struct.ccr_softc** %5, align 8
  %334 = load i8*, i8** %12, align 8
  %335 = load i32, i32* %22, align 4
  %336 = call i32 @ccr_write_ulptx_sgl(%struct.ccr_softc* %333, i8* %334, i32 %335)
  br label %337

337:                                              ; preds = %332, %316
  br label %338

338:                                              ; preds = %337, %312
  %339 = load %struct.ccr_softc*, %struct.ccr_softc** %5, align 8
  %340 = getelementptr inbounds %struct.ccr_softc, %struct.ccr_softc* %339, i32 0, i32 0
  %341 = load i32, i32* %340, align 8
  %342 = load %struct.wrqe*, %struct.wrqe** %9, align 8
  %343 = call i32 @t4_wrq_tx(i32 %341, %struct.wrqe* %342)
  store i32 0, i32* %4, align 4
  br label %344

344:                                              ; preds = %338, %140, %130, %107, %33
  %345 = load i32, i32* %4, align 4
  ret i32 %345
}

declare dso_local i64 @roundup2(i64, i32) #1

declare dso_local i64 @HASH_TRANSHDR_SIZE(i64) #1

declare dso_local i64 @ccr_use_imm_data(i64, i64) #1

declare dso_local i32 @sglist_reset(%struct.TYPE_9__*) #1

declare dso_local i32 @sglist_append_sglist(%struct.TYPE_9__*, i32, i32, i64) #1

declare dso_local i32 @ccr_ulptx_sgl_len(i32) #1

declare dso_local %struct.wrqe* @alloc_wrqe(i64, i32) #1

declare dso_local %struct.chcr_wr* @wrtod(%struct.wrqe*) #1

declare dso_local i32 @memset(%struct.chcr_wr*, i32, i64) #1

declare dso_local i32 @ccr_populate_wreq(%struct.ccr_softc*, %struct.chcr_wr*, i64, i64, i64, i32, i64, %struct.cryptop*) #1

declare dso_local i8* @htobe32(i32) #1

declare dso_local i32 @V_CPL_TX_SEC_PDU_OPCODE(i32) #1

declare dso_local i32 @V_CPL_TX_SEC_PDU_RXCHID(i32) #1

declare dso_local i32 @V_CPL_TX_SEC_PDU_ACKFOLLOWS(i32) #1

declare dso_local i32 @V_CPL_TX_SEC_PDU_ULPTXLPBK(i32) #1

declare dso_local i32 @V_CPL_TX_SEC_PDU_CPLLEN(i32) #1

declare dso_local i32 @V_CPL_TX_SEC_PDU_PLACEHOLDER(i32) #1

declare dso_local i32 @V_CPL_TX_SEC_PDU_IVINSRTOFST(i32) #1

declare dso_local i32 @V_CPL_TX_SEC_PDU_AUTHSTART(i32) #1

declare dso_local i32 @V_CPL_TX_SEC_PDU_AUTHSTOP(i32) #1

declare dso_local i32 @V_SCMD_SEQ_NO_CTRL(i32) #1

declare dso_local i32 @V_SCMD_PROTO_VERSION(i32) #1

declare dso_local i32 @V_SCMD_CIPH_MODE(i32) #1

declare dso_local i32 @V_SCMD_AUTH_MODE(i32) #1

declare dso_local i32 @V_SCMD_HMAC_CTRL(i64) #1

declare dso_local i32 @V_SCMD_LAST_FRAG(i32) #1

declare dso_local i32 @V_SCMD_MORE_FRAGS(i32) #1

declare dso_local i32 @V_SCMD_MAC_ONLY(i32) #1

declare dso_local i32 @memcpy(i32, i32, i64) #1

declare dso_local i32 @V_KEY_CONTEXT_CTX_LEN(i64) #1

declare dso_local i32 @V_KEY_CONTEXT_OPAD_PRESENT(i32) #1

declare dso_local i32 @V_KEY_CONTEXT_SALT_PRESENT(i32) #1

declare dso_local i32 @V_KEY_CONTEXT_CK_SIZE(i32) #1

declare dso_local i32 @V_KEY_CONTEXT_MK_SIZE(i32) #1

declare dso_local i32 @V_KEY_CONTEXT_VALID(i32) #1

declare dso_local i32 @htobe64(i32) #1

declare dso_local i32 @crypto_copydata(i32, i32, i32, i32, i8*) #1

declare dso_local i32 @ccr_write_ulptx_sgl(%struct.ccr_softc*, i8*, i32) #1

declare dso_local i32 @t4_wrq_tx(i32, %struct.wrqe*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
