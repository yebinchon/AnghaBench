; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/hifn/extr_hifn7751.c_hifn_process.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/hifn/extr_hifn7751.c_hifn_process.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }
%struct.cryptop = type { i32, i32, i64, %struct.cryptodesc*, i32, i32* }
%struct.cryptodesc = type { i32, i32, i32, i32, i32, i32, %struct.cryptodesc* }
%struct.hifn_softc = type { i32, i32 }
%struct.hifn_command = type { i32, i32, i32, %struct.hifn_softc*, %struct.hifn_session*, %struct.cryptop*, i64, i32, %struct.cryptodesc*, i32, i64, %struct.cryptodesc*, %struct.uio*, %struct.uio*, %struct.mbuf*, %struct.mbuf* }
%struct.hifn_session = type { i32 }
%struct.uio = type { i32 }
%struct.mbuf = type { i32 }

@hifnstats = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@EINVAL = common dso_local global i32 0, align 4
@M_DEVBUF = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@CRYPTO_F_IMBUF = common dso_local global i32 0, align 4
@CRYPTO_F_IOV = common dso_local global i32 0, align 4
@CRD_F_ENCRYPT = common dso_local global i32 0, align 4
@HIFN_BASE_CMD_DECODE = common dso_local global i32 0, align 4
@HIFN_BASE_CMD_CRYPT = common dso_local global i32 0, align 4
@HIFN_CRYPT_CMD_ALG_RC4 = common dso_local global i32 0, align 4
@HIFN_CRYPT_CMD_ALG_DES = common dso_local global i32 0, align 4
@HIFN_CRYPT_CMD_MODE_CBC = common dso_local global i32 0, align 4
@HIFN_CRYPT_CMD_NEW_IV = common dso_local global i32 0, align 4
@HIFN_CRYPT_CMD_ALG_3DES = common dso_local global i32 0, align 4
@HIFN_CRYPT_CMD_ALG_AES = common dso_local global i32 0, align 4
@HIFN_AES_IV_LENGTH = common dso_local global i32 0, align 4
@HIFN_IV_LENGTH = common dso_local global i32 0, align 4
@CRD_F_IV_EXPLICIT = common dso_local global i32 0, align 4
@CRD_F_IV_PRESENT = common dso_local global i32 0, align 4
@CRD_F_KEY_EXPLICIT = common dso_local global i32 0, align 4
@HIFN_CRYPT_CMD_NEW_KEY = common dso_local global i32 0, align 4
@HIFN_CRYPT_CMD_ALG_MASK = common dso_local global i32 0, align 4
@HIFN_CRYPT_CMD_KSZ_128 = common dso_local global i32 0, align 4
@HIFN_CRYPT_CMD_KSZ_192 = common dso_local global i32 0, align 4
@HIFN_CRYPT_CMD_KSZ_256 = common dso_local global i32 0, align 4
@HIFN_BASE_CMD_MAC = common dso_local global i32 0, align 4
@HIFN_MAC_CMD_ALG_MD5 = common dso_local global i32 0, align 4
@HIFN_MAC_CMD_RESULT = common dso_local global i32 0, align 4
@HIFN_MAC_CMD_MODE_HASH = common dso_local global i32 0, align 4
@HIFN_MAC_CMD_POS_IPSEC = common dso_local global i32 0, align 4
@HIFN_MAC_CMD_MODE_HMAC = common dso_local global i32 0, align 4
@HIFN_MAC_CMD_TRUNC = common dso_local global i32 0, align 4
@HIFN_MAC_CMD_ALG_SHA1 = common dso_local global i32 0, align 4
@HIFN_MAC_CMD_NEW_KEY = common dso_local global i32 0, align 4
@HIFN_MAC_KEY_LENGTH = common dso_local global i64 0, align 8
@ERESTART = common dso_local global i32 0, align 4
@CRYPTO_SYMQ = common dso_local global i32 0, align 4
@hifn_debug = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.cryptop*, i32)* @hifn_process to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hifn_process(i32 %0, %struct.cryptop* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.cryptop*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.hifn_softc*, align 8
  %9 = alloca %struct.hifn_command*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.cryptodesc*, align 8
  %13 = alloca %struct.cryptodesc*, align 8
  %14 = alloca %struct.cryptodesc*, align 8
  %15 = alloca %struct.cryptodesc*, align 8
  %16 = alloca %struct.hifn_session*, align 8
  store i32 %0, i32* %5, align 4
  store %struct.cryptop* %1, %struct.cryptop** %6, align 8
  store i32 %2, i32* %7, align 4
  %17 = load i32, i32* %5, align 4
  %18 = call %struct.hifn_softc* @device_get_softc(i32 %17)
  store %struct.hifn_softc* %18, %struct.hifn_softc** %8, align 8
  store %struct.hifn_command* null, %struct.hifn_command** %9, align 8
  %19 = load %struct.cryptop*, %struct.cryptop** %6, align 8
  %20 = icmp eq %struct.cryptop* %19, null
  br i1 %20, label %26, label %21

21:                                               ; preds = %3
  %22 = load %struct.cryptop*, %struct.cryptop** %6, align 8
  %23 = getelementptr inbounds %struct.cryptop, %struct.cryptop* %22, i32 0, i32 5
  %24 = load i32*, i32** %23, align 8
  %25 = icmp eq i32* %24, null
  br i1 %25, label %26, label %30

26:                                               ; preds = %21, %3
  %27 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @hifnstats, i32 0, i32 1), align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @hifnstats, i32 0, i32 1), align 4
  %29 = load i32, i32* @EINVAL, align 4
  store i32 %29, i32* %4, align 4
  br label %660

30:                                               ; preds = %21
  %31 = load %struct.cryptop*, %struct.cryptop** %6, align 8
  %32 = getelementptr inbounds %struct.cryptop, %struct.cryptop* %31, i32 0, i32 4
  %33 = load i32, i32* %32, align 8
  %34 = call %struct.hifn_session* @crypto_get_driver_session(i32 %33)
  store %struct.hifn_session* %34, %struct.hifn_session** %16, align 8
  %35 = load i32, i32* @M_DEVBUF, align 4
  %36 = load i32, i32* @M_NOWAIT, align 4
  %37 = load i32, i32* @M_ZERO, align 4
  %38 = or i32 %36, %37
  %39 = call %struct.hifn_command* @malloc(i32 120, i32 %35, i32 %38)
  store %struct.hifn_command* %39, %struct.hifn_command** %9, align 8
  %40 = load %struct.hifn_command*, %struct.hifn_command** %9, align 8
  %41 = icmp eq %struct.hifn_command* %40, null
  br i1 %41, label %42, label %46

42:                                               ; preds = %30
  %43 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @hifnstats, i32 0, i32 0), align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @hifnstats, i32 0, i32 0), align 4
  %45 = load i32, i32* @ENOMEM, align 4
  store i32 %45, i32* %10, align 4
  br label %636

46:                                               ; preds = %30
  %47 = load %struct.cryptop*, %struct.cryptop** %6, align 8
  %48 = getelementptr inbounds %struct.cryptop, %struct.cryptop* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* @CRYPTO_F_IMBUF, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %66

53:                                               ; preds = %46
  %54 = load %struct.cryptop*, %struct.cryptop** %6, align 8
  %55 = getelementptr inbounds %struct.cryptop, %struct.cryptop* %54, i32 0, i32 2
  %56 = load i64, i64* %55, align 8
  %57 = inttoptr i64 %56 to %struct.mbuf*
  %58 = load %struct.hifn_command*, %struct.hifn_command** %9, align 8
  %59 = getelementptr inbounds %struct.hifn_command, %struct.hifn_command* %58, i32 0, i32 15
  store %struct.mbuf* %57, %struct.mbuf** %59, align 8
  %60 = load %struct.cryptop*, %struct.cryptop** %6, align 8
  %61 = getelementptr inbounds %struct.cryptop, %struct.cryptop* %60, i32 0, i32 2
  %62 = load i64, i64* %61, align 8
  %63 = inttoptr i64 %62 to %struct.mbuf*
  %64 = load %struct.hifn_command*, %struct.hifn_command** %9, align 8
  %65 = getelementptr inbounds %struct.hifn_command, %struct.hifn_command* %64, i32 0, i32 14
  store %struct.mbuf* %63, %struct.mbuf** %65, align 8
  br label %89

66:                                               ; preds = %46
  %67 = load %struct.cryptop*, %struct.cryptop** %6, align 8
  %68 = getelementptr inbounds %struct.cryptop, %struct.cryptop* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = load i32, i32* @CRYPTO_F_IOV, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %86

73:                                               ; preds = %66
  %74 = load %struct.cryptop*, %struct.cryptop** %6, align 8
  %75 = getelementptr inbounds %struct.cryptop, %struct.cryptop* %74, i32 0, i32 2
  %76 = load i64, i64* %75, align 8
  %77 = inttoptr i64 %76 to %struct.uio*
  %78 = load %struct.hifn_command*, %struct.hifn_command** %9, align 8
  %79 = getelementptr inbounds %struct.hifn_command, %struct.hifn_command* %78, i32 0, i32 13
  store %struct.uio* %77, %struct.uio** %79, align 8
  %80 = load %struct.cryptop*, %struct.cryptop** %6, align 8
  %81 = getelementptr inbounds %struct.cryptop, %struct.cryptop* %80, i32 0, i32 2
  %82 = load i64, i64* %81, align 8
  %83 = inttoptr i64 %82 to %struct.uio*
  %84 = load %struct.hifn_command*, %struct.hifn_command** %9, align 8
  %85 = getelementptr inbounds %struct.hifn_command, %struct.hifn_command* %84, i32 0, i32 12
  store %struct.uio* %83, %struct.uio** %85, align 8
  br label %88

86:                                               ; preds = %66
  %87 = load i32, i32* @EINVAL, align 4
  store i32 %87, i32* %10, align 4
  br label %636

88:                                               ; preds = %73
  br label %89

89:                                               ; preds = %88, %53
  %90 = load %struct.cryptop*, %struct.cryptop** %6, align 8
  %91 = getelementptr inbounds %struct.cryptop, %struct.cryptop* %90, i32 0, i32 3
  %92 = load %struct.cryptodesc*, %struct.cryptodesc** %91, align 8
  store %struct.cryptodesc* %92, %struct.cryptodesc** %12, align 8
  %93 = load %struct.cryptodesc*, %struct.cryptodesc** %12, align 8
  %94 = icmp eq %struct.cryptodesc* %93, null
  br i1 %94, label %95, label %97

95:                                               ; preds = %89
  %96 = load i32, i32* @EINVAL, align 4
  store i32 %96, i32* %10, align 4
  br label %636

97:                                               ; preds = %89
  %98 = load %struct.cryptodesc*, %struct.cryptodesc** %12, align 8
  %99 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %98, i32 0, i32 6
  %100 = load %struct.cryptodesc*, %struct.cryptodesc** %99, align 8
  store %struct.cryptodesc* %100, %struct.cryptodesc** %13, align 8
  %101 = load %struct.cryptodesc*, %struct.cryptodesc** %13, align 8
  %102 = icmp eq %struct.cryptodesc* %101, null
  br i1 %102, label %103, label %164

103:                                              ; preds = %97
  %104 = load %struct.cryptodesc*, %struct.cryptodesc** %12, align 8
  %105 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = icmp eq i32 %106, 130
  br i1 %107, label %123, label %108

108:                                              ; preds = %103
  %109 = load %struct.cryptodesc*, %struct.cryptodesc** %12, align 8
  %110 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = icmp eq i32 %111, 128
  br i1 %112, label %123, label %113

113:                                              ; preds = %108
  %114 = load %struct.cryptodesc*, %struct.cryptodesc** %12, align 8
  %115 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = icmp eq i32 %116, 129
  br i1 %117, label %123, label %118

118:                                              ; preds = %113
  %119 = load %struct.cryptodesc*, %struct.cryptodesc** %12, align 8
  %120 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = icmp eq i32 %121, 131
  br i1 %122, label %123, label %125

123:                                              ; preds = %118, %113, %108, %103
  %124 = load %struct.cryptodesc*, %struct.cryptodesc** %12, align 8
  store %struct.cryptodesc* %124, %struct.cryptodesc** %14, align 8
  store %struct.cryptodesc* null, %struct.cryptodesc** %15, align 8
  br label %163

125:                                              ; preds = %118
  %126 = load %struct.cryptodesc*, %struct.cryptodesc** %12, align 8
  %127 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = icmp eq i32 %128, 132
  br i1 %129, label %145, label %130

130:                                              ; preds = %125
  %131 = load %struct.cryptodesc*, %struct.cryptodesc** %12, align 8
  %132 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = icmp eq i32 %133, 135
  br i1 %134, label %145, label %135

135:                                              ; preds = %130
  %136 = load %struct.cryptodesc*, %struct.cryptodesc** %12, align 8
  %137 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  %139 = icmp eq i32 %138, 134
  br i1 %139, label %145, label %140

140:                                              ; preds = %135
  %141 = load %struct.cryptodesc*, %struct.cryptodesc** %12, align 8
  %142 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 8
  %144 = icmp eq i32 %143, 133
  br i1 %144, label %145, label %160

145:                                              ; preds = %140, %135, %130, %125
  %146 = load %struct.cryptodesc*, %struct.cryptodesc** %12, align 8
  %147 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %146, i32 0, i32 1
  %148 = load i32, i32* %147, align 4
  %149 = load i32, i32* @CRD_F_ENCRYPT, align 4
  %150 = and i32 %148, %149
  %151 = icmp eq i32 %150, 0
  br i1 %151, label %152, label %158

152:                                              ; preds = %145
  %153 = load i32, i32* @HIFN_BASE_CMD_DECODE, align 4
  %154 = load %struct.hifn_command*, %struct.hifn_command** %9, align 8
  %155 = getelementptr inbounds %struct.hifn_command, %struct.hifn_command* %154, i32 0, i32 7
  %156 = load i32, i32* %155, align 8
  %157 = or i32 %156, %153
  store i32 %157, i32* %155, align 8
  br label %158

158:                                              ; preds = %152, %145
  store %struct.cryptodesc* null, %struct.cryptodesc** %14, align 8
  %159 = load %struct.cryptodesc*, %struct.cryptodesc** %12, align 8
  store %struct.cryptodesc* %159, %struct.cryptodesc** %15, align 8
  br label %162

160:                                              ; preds = %140
  %161 = load i32, i32* @EINVAL, align 4
  store i32 %161, i32* %10, align 4
  br label %636

162:                                              ; preds = %158
  br label %163

163:                                              ; preds = %162, %123
  br label %271

164:                                              ; preds = %97
  %165 = load %struct.cryptodesc*, %struct.cryptodesc** %12, align 8
  %166 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 8
  %168 = icmp eq i32 %167, 130
  br i1 %168, label %184, label %169

169:                                              ; preds = %164
  %170 = load %struct.cryptodesc*, %struct.cryptodesc** %12, align 8
  %171 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 8
  %173 = icmp eq i32 %172, 128
  br i1 %173, label %184, label %174

174:                                              ; preds = %169
  %175 = load %struct.cryptodesc*, %struct.cryptodesc** %12, align 8
  %176 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 8
  %178 = icmp eq i32 %177, 131
  br i1 %178, label %184, label %179

179:                                              ; preds = %174
  %180 = load %struct.cryptodesc*, %struct.cryptodesc** %12, align 8
  %181 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %180, i32 0, i32 0
  %182 = load i32, i32* %181, align 8
  %183 = icmp eq i32 %182, 129
  br i1 %183, label %184, label %217

184:                                              ; preds = %179, %174, %169, %164
  %185 = load %struct.cryptodesc*, %struct.cryptodesc** %13, align 8
  %186 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %185, i32 0, i32 0
  %187 = load i32, i32* %186, align 8
  %188 = icmp eq i32 %187, 132
  br i1 %188, label %204, label %189

189:                                              ; preds = %184
  %190 = load %struct.cryptodesc*, %struct.cryptodesc** %13, align 8
  %191 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %190, i32 0, i32 0
  %192 = load i32, i32* %191, align 8
  %193 = icmp eq i32 %192, 135
  br i1 %193, label %204, label %194

194:                                              ; preds = %189
  %195 = load %struct.cryptodesc*, %struct.cryptodesc** %13, align 8
  %196 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %195, i32 0, i32 0
  %197 = load i32, i32* %196, align 8
  %198 = icmp eq i32 %197, 134
  br i1 %198, label %204, label %199

199:                                              ; preds = %194
  %200 = load %struct.cryptodesc*, %struct.cryptodesc** %13, align 8
  %201 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %200, i32 0, i32 0
  %202 = load i32, i32* %201, align 8
  %203 = icmp eq i32 %202, 133
  br i1 %203, label %204, label %217

204:                                              ; preds = %199, %194, %189, %184
  %205 = load %struct.cryptodesc*, %struct.cryptodesc** %13, align 8
  %206 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %205, i32 0, i32 1
  %207 = load i32, i32* %206, align 4
  %208 = load i32, i32* @CRD_F_ENCRYPT, align 4
  %209 = and i32 %207, %208
  %210 = icmp eq i32 %209, 0
  br i1 %210, label %211, label %217

211:                                              ; preds = %204
  %212 = load i32, i32* @HIFN_BASE_CMD_DECODE, align 4
  %213 = load %struct.hifn_command*, %struct.hifn_command** %9, align 8
  %214 = getelementptr inbounds %struct.hifn_command, %struct.hifn_command* %213, i32 0, i32 7
  store i32 %212, i32* %214, align 8
  %215 = load %struct.cryptodesc*, %struct.cryptodesc** %12, align 8
  store %struct.cryptodesc* %215, %struct.cryptodesc** %14, align 8
  %216 = load %struct.cryptodesc*, %struct.cryptodesc** %13, align 8
  store %struct.cryptodesc* %216, %struct.cryptodesc** %15, align 8
  br label %270

217:                                              ; preds = %204, %199, %179
  %218 = load %struct.cryptodesc*, %struct.cryptodesc** %12, align 8
  %219 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %218, i32 0, i32 0
  %220 = load i32, i32* %219, align 8
  %221 = icmp eq i32 %220, 132
  br i1 %221, label %237, label %222

222:                                              ; preds = %217
  %223 = load %struct.cryptodesc*, %struct.cryptodesc** %12, align 8
  %224 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %223, i32 0, i32 0
  %225 = load i32, i32* %224, align 8
  %226 = icmp eq i32 %225, 133
  br i1 %226, label %237, label %227

227:                                              ; preds = %222
  %228 = load %struct.cryptodesc*, %struct.cryptodesc** %12, align 8
  %229 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %228, i32 0, i32 0
  %230 = load i32, i32* %229, align 8
  %231 = icmp eq i32 %230, 135
  br i1 %231, label %237, label %232

232:                                              ; preds = %227
  %233 = load %struct.cryptodesc*, %struct.cryptodesc** %12, align 8
  %234 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %233, i32 0, i32 0
  %235 = load i32, i32* %234, align 8
  %236 = icmp eq i32 %235, 134
  br i1 %236, label %237, label %267

237:                                              ; preds = %232, %227, %222, %217
  %238 = load %struct.cryptodesc*, %struct.cryptodesc** %13, align 8
  %239 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %238, i32 0, i32 0
  %240 = load i32, i32* %239, align 8
  %241 = icmp eq i32 %240, 130
  br i1 %241, label %257, label %242

242:                                              ; preds = %237
  %243 = load %struct.cryptodesc*, %struct.cryptodesc** %13, align 8
  %244 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %243, i32 0, i32 0
  %245 = load i32, i32* %244, align 8
  %246 = icmp eq i32 %245, 128
  br i1 %246, label %257, label %247

247:                                              ; preds = %242
  %248 = load %struct.cryptodesc*, %struct.cryptodesc** %13, align 8
  %249 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %248, i32 0, i32 0
  %250 = load i32, i32* %249, align 8
  %251 = icmp eq i32 %250, 131
  br i1 %251, label %257, label %252

252:                                              ; preds = %247
  %253 = load %struct.cryptodesc*, %struct.cryptodesc** %13, align 8
  %254 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %253, i32 0, i32 0
  %255 = load i32, i32* %254, align 8
  %256 = icmp eq i32 %255, 129
  br i1 %256, label %257, label %267

257:                                              ; preds = %252, %247, %242, %237
  %258 = load %struct.cryptodesc*, %struct.cryptodesc** %12, align 8
  %259 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %258, i32 0, i32 1
  %260 = load i32, i32* %259, align 4
  %261 = load i32, i32* @CRD_F_ENCRYPT, align 4
  %262 = and i32 %260, %261
  %263 = icmp ne i32 %262, 0
  br i1 %263, label %264, label %267

264:                                              ; preds = %257
  %265 = load %struct.cryptodesc*, %struct.cryptodesc** %12, align 8
  store %struct.cryptodesc* %265, %struct.cryptodesc** %15, align 8
  %266 = load %struct.cryptodesc*, %struct.cryptodesc** %13, align 8
  store %struct.cryptodesc* %266, %struct.cryptodesc** %14, align 8
  br label %269

267:                                              ; preds = %257, %252, %232
  %268 = load i32, i32* @EINVAL, align 4
  store i32 %268, i32* %10, align 4
  br label %636

269:                                              ; preds = %264
  br label %270

270:                                              ; preds = %269, %211
  br label %271

271:                                              ; preds = %270, %163
  %272 = load %struct.cryptodesc*, %struct.cryptodesc** %15, align 8
  %273 = icmp ne %struct.cryptodesc* %272, null
  br i1 %273, label %274, label %490

274:                                              ; preds = %271
  %275 = load %struct.cryptodesc*, %struct.cryptodesc** %15, align 8
  %276 = load %struct.hifn_command*, %struct.hifn_command** %9, align 8
  %277 = getelementptr inbounds %struct.hifn_command, %struct.hifn_command* %276, i32 0, i32 11
  store %struct.cryptodesc* %275, %struct.cryptodesc** %277, align 8
  %278 = load i32, i32* @HIFN_BASE_CMD_CRYPT, align 4
  %279 = load %struct.hifn_command*, %struct.hifn_command** %9, align 8
  %280 = getelementptr inbounds %struct.hifn_command, %struct.hifn_command* %279, i32 0, i32 7
  %281 = load i32, i32* %280, align 8
  %282 = or i32 %281, %278
  store i32 %282, i32* %280, align 8
  %283 = load %struct.cryptodesc*, %struct.cryptodesc** %15, align 8
  %284 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %283, i32 0, i32 0
  %285 = load i32, i32* %284, align 8
  switch i32 %285, label %322 [
    i32 133, label %286
    i32 132, label %292
    i32 135, label %302
    i32 134, label %312
  ]

286:                                              ; preds = %274
  %287 = load i32, i32* @HIFN_CRYPT_CMD_ALG_RC4, align 4
  %288 = load %struct.hifn_command*, %struct.hifn_command** %9, align 8
  %289 = getelementptr inbounds %struct.hifn_command, %struct.hifn_command* %288, i32 0, i32 0
  %290 = load i32, i32* %289, align 8
  %291 = or i32 %290, %287
  store i32 %291, i32* %289, align 8
  br label %324

292:                                              ; preds = %274
  %293 = load i32, i32* @HIFN_CRYPT_CMD_ALG_DES, align 4
  %294 = load i32, i32* @HIFN_CRYPT_CMD_MODE_CBC, align 4
  %295 = or i32 %293, %294
  %296 = load i32, i32* @HIFN_CRYPT_CMD_NEW_IV, align 4
  %297 = or i32 %295, %296
  %298 = load %struct.hifn_command*, %struct.hifn_command** %9, align 8
  %299 = getelementptr inbounds %struct.hifn_command, %struct.hifn_command* %298, i32 0, i32 0
  %300 = load i32, i32* %299, align 8
  %301 = or i32 %300, %297
  store i32 %301, i32* %299, align 8
  br label %324

302:                                              ; preds = %274
  %303 = load i32, i32* @HIFN_CRYPT_CMD_ALG_3DES, align 4
  %304 = load i32, i32* @HIFN_CRYPT_CMD_MODE_CBC, align 4
  %305 = or i32 %303, %304
  %306 = load i32, i32* @HIFN_CRYPT_CMD_NEW_IV, align 4
  %307 = or i32 %305, %306
  %308 = load %struct.hifn_command*, %struct.hifn_command** %9, align 8
  %309 = getelementptr inbounds %struct.hifn_command, %struct.hifn_command* %308, i32 0, i32 0
  %310 = load i32, i32* %309, align 8
  %311 = or i32 %310, %307
  store i32 %311, i32* %309, align 8
  br label %324

312:                                              ; preds = %274
  %313 = load i32, i32* @HIFN_CRYPT_CMD_ALG_AES, align 4
  %314 = load i32, i32* @HIFN_CRYPT_CMD_MODE_CBC, align 4
  %315 = or i32 %313, %314
  %316 = load i32, i32* @HIFN_CRYPT_CMD_NEW_IV, align 4
  %317 = or i32 %315, %316
  %318 = load %struct.hifn_command*, %struct.hifn_command** %9, align 8
  %319 = getelementptr inbounds %struct.hifn_command, %struct.hifn_command* %318, i32 0, i32 0
  %320 = load i32, i32* %319, align 8
  %321 = or i32 %320, %317
  store i32 %321, i32* %319, align 8
  br label %324

322:                                              ; preds = %274
  %323 = load i32, i32* @EINVAL, align 4
  store i32 %323, i32* %10, align 4
  br label %636

324:                                              ; preds = %312, %302, %292, %286
  %325 = load %struct.cryptodesc*, %struct.cryptodesc** %15, align 8
  %326 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %325, i32 0, i32 0
  %327 = load i32, i32* %326, align 8
  %328 = icmp ne i32 %327, 133
  br i1 %328, label %329, label %427

329:                                              ; preds = %324
  %330 = load %struct.cryptodesc*, %struct.cryptodesc** %15, align 8
  %331 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %330, i32 0, i32 0
  %332 = load i32, i32* %331, align 8
  %333 = icmp eq i32 %332, 134
  br i1 %333, label %334, label %336

334:                                              ; preds = %329
  %335 = load i32, i32* @HIFN_AES_IV_LENGTH, align 4
  br label %338

336:                                              ; preds = %329
  %337 = load i32, i32* @HIFN_IV_LENGTH, align 4
  br label %338

338:                                              ; preds = %336, %334
  %339 = phi i32 [ %335, %334 ], [ %337, %336 ]
  store i32 %339, i32* %11, align 4
  %340 = load %struct.cryptodesc*, %struct.cryptodesc** %15, align 8
  %341 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %340, i32 0, i32 1
  %342 = load i32, i32* %341, align 4
  %343 = load i32, i32* @CRD_F_ENCRYPT, align 4
  %344 = and i32 %342, %343
  %345 = icmp ne i32 %344, 0
  br i1 %345, label %346, label %394

346:                                              ; preds = %338
  %347 = load %struct.cryptodesc*, %struct.cryptodesc** %15, align 8
  %348 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %347, i32 0, i32 1
  %349 = load i32, i32* %348, align 4
  %350 = load i32, i32* @CRD_F_IV_EXPLICIT, align 4
  %351 = and i32 %349, %350
  %352 = icmp ne i32 %351, 0
  br i1 %352, label %353, label %362

353:                                              ; preds = %346
  %354 = load %struct.cryptodesc*, %struct.cryptodesc** %15, align 8
  %355 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %354, i32 0, i32 5
  %356 = load i32, i32* %355, align 4
  %357 = load %struct.hifn_command*, %struct.hifn_command** %9, align 8
  %358 = getelementptr inbounds %struct.hifn_command, %struct.hifn_command* %357, i32 0, i32 10
  %359 = load i64, i64* %358, align 8
  %360 = load i32, i32* %11, align 4
  %361 = call i32 @bcopy(i32 %356, i64 %359, i32 %360)
  br label %371

362:                                              ; preds = %346
  %363 = load %struct.hifn_session*, %struct.hifn_session** %16, align 8
  %364 = getelementptr inbounds %struct.hifn_session, %struct.hifn_session* %363, i32 0, i32 0
  %365 = load i32, i32* %364, align 4
  %366 = load %struct.hifn_command*, %struct.hifn_command** %9, align 8
  %367 = getelementptr inbounds %struct.hifn_command, %struct.hifn_command* %366, i32 0, i32 10
  %368 = load i64, i64* %367, align 8
  %369 = load i32, i32* %11, align 4
  %370 = call i32 @bcopy(i32 %365, i64 %368, i32 %369)
  br label %371

371:                                              ; preds = %362, %353
  %372 = load %struct.cryptodesc*, %struct.cryptodesc** %15, align 8
  %373 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %372, i32 0, i32 1
  %374 = load i32, i32* %373, align 4
  %375 = load i32, i32* @CRD_F_IV_PRESENT, align 4
  %376 = and i32 %374, %375
  %377 = icmp eq i32 %376, 0
  br i1 %377, label %378, label %393

378:                                              ; preds = %371
  %379 = load %struct.cryptop*, %struct.cryptop** %6, align 8
  %380 = getelementptr inbounds %struct.cryptop, %struct.cryptop* %379, i32 0, i32 0
  %381 = load i32, i32* %380, align 8
  %382 = load %struct.cryptop*, %struct.cryptop** %6, align 8
  %383 = getelementptr inbounds %struct.cryptop, %struct.cryptop* %382, i32 0, i32 2
  %384 = load i64, i64* %383, align 8
  %385 = load %struct.cryptodesc*, %struct.cryptodesc** %15, align 8
  %386 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %385, i32 0, i32 4
  %387 = load i32, i32* %386, align 8
  %388 = load i32, i32* %11, align 4
  %389 = load %struct.hifn_command*, %struct.hifn_command** %9, align 8
  %390 = getelementptr inbounds %struct.hifn_command, %struct.hifn_command* %389, i32 0, i32 10
  %391 = load i64, i64* %390, align 8
  %392 = call i32 @crypto_copyback(i32 %381, i64 %384, i32 %387, i32 %388, i64 %391)
  br label %393

393:                                              ; preds = %378, %371
  br label %426

394:                                              ; preds = %338
  %395 = load %struct.cryptodesc*, %struct.cryptodesc** %15, align 8
  %396 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %395, i32 0, i32 1
  %397 = load i32, i32* %396, align 4
  %398 = load i32, i32* @CRD_F_IV_EXPLICIT, align 4
  %399 = and i32 %397, %398
  %400 = icmp ne i32 %399, 0
  br i1 %400, label %401, label %410

401:                                              ; preds = %394
  %402 = load %struct.cryptodesc*, %struct.cryptodesc** %15, align 8
  %403 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %402, i32 0, i32 5
  %404 = load i32, i32* %403, align 4
  %405 = load %struct.hifn_command*, %struct.hifn_command** %9, align 8
  %406 = getelementptr inbounds %struct.hifn_command, %struct.hifn_command* %405, i32 0, i32 10
  %407 = load i64, i64* %406, align 8
  %408 = load i32, i32* %11, align 4
  %409 = call i32 @bcopy(i32 %404, i64 %407, i32 %408)
  br label %425

410:                                              ; preds = %394
  %411 = load %struct.cryptop*, %struct.cryptop** %6, align 8
  %412 = getelementptr inbounds %struct.cryptop, %struct.cryptop* %411, i32 0, i32 0
  %413 = load i32, i32* %412, align 8
  %414 = load %struct.cryptop*, %struct.cryptop** %6, align 8
  %415 = getelementptr inbounds %struct.cryptop, %struct.cryptop* %414, i32 0, i32 2
  %416 = load i64, i64* %415, align 8
  %417 = load %struct.cryptodesc*, %struct.cryptodesc** %15, align 8
  %418 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %417, i32 0, i32 4
  %419 = load i32, i32* %418, align 8
  %420 = load i32, i32* %11, align 4
  %421 = load %struct.hifn_command*, %struct.hifn_command** %9, align 8
  %422 = getelementptr inbounds %struct.hifn_command, %struct.hifn_command* %421, i32 0, i32 10
  %423 = load i64, i64* %422, align 8
  %424 = call i32 @crypto_copydata(i32 %413, i64 %416, i32 %419, i32 %420, i64 %423)
  br label %425

425:                                              ; preds = %410, %401
  br label %426

426:                                              ; preds = %425, %393
  br label %427

427:                                              ; preds = %426, %324
  %428 = load %struct.cryptodesc*, %struct.cryptodesc** %15, align 8
  %429 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %428, i32 0, i32 1
  %430 = load i32, i32* %429, align 4
  %431 = load i32, i32* @CRD_F_KEY_EXPLICIT, align 4
  %432 = and i32 %430, %431
  %433 = icmp ne i32 %432, 0
  br i1 %433, label %434, label %440

434:                                              ; preds = %427
  %435 = load i32, i32* @HIFN_CRYPT_CMD_NEW_KEY, align 4
  %436 = load %struct.hifn_command*, %struct.hifn_command** %9, align 8
  %437 = getelementptr inbounds %struct.hifn_command, %struct.hifn_command* %436, i32 0, i32 0
  %438 = load i32, i32* %437, align 8
  %439 = or i32 %438, %435
  store i32 %439, i32* %437, align 8
  br label %440

440:                                              ; preds = %434, %427
  %441 = load %struct.cryptodesc*, %struct.cryptodesc** %15, align 8
  %442 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %441, i32 0, i32 3
  %443 = load i32, i32* %442, align 4
  %444 = load %struct.hifn_command*, %struct.hifn_command** %9, align 8
  %445 = getelementptr inbounds %struct.hifn_command, %struct.hifn_command* %444, i32 0, i32 9
  store i32 %443, i32* %445, align 8
  %446 = load %struct.cryptodesc*, %struct.cryptodesc** %15, align 8
  %447 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %446, i32 0, i32 2
  %448 = load i32, i32* %447, align 8
  %449 = ashr i32 %448, 3
  %450 = load %struct.hifn_command*, %struct.hifn_command** %9, align 8
  %451 = getelementptr inbounds %struct.hifn_command, %struct.hifn_command* %450, i32 0, i32 1
  store i32 %449, i32* %451, align 4
  %452 = load i32, i32* @HIFN_CRYPT_CMD_NEW_KEY, align 4
  %453 = load %struct.hifn_command*, %struct.hifn_command** %9, align 8
  %454 = getelementptr inbounds %struct.hifn_command, %struct.hifn_command* %453, i32 0, i32 0
  %455 = load i32, i32* %454, align 8
  %456 = or i32 %455, %452
  store i32 %456, i32* %454, align 8
  %457 = load %struct.hifn_command*, %struct.hifn_command** %9, align 8
  %458 = getelementptr inbounds %struct.hifn_command, %struct.hifn_command* %457, i32 0, i32 0
  %459 = load i32, i32* %458, align 8
  %460 = load i32, i32* @HIFN_CRYPT_CMD_ALG_MASK, align 4
  %461 = and i32 %459, %460
  %462 = load i32, i32* @HIFN_CRYPT_CMD_ALG_AES, align 4
  %463 = icmp eq i32 %461, %462
  br i1 %463, label %464, label %489

464:                                              ; preds = %440
  %465 = load %struct.hifn_command*, %struct.hifn_command** %9, align 8
  %466 = getelementptr inbounds %struct.hifn_command, %struct.hifn_command* %465, i32 0, i32 1
  %467 = load i32, i32* %466, align 4
  switch i32 %467, label %486 [
    i32 16, label %468
    i32 24, label %474
    i32 32, label %480
  ]

468:                                              ; preds = %464
  %469 = load i32, i32* @HIFN_CRYPT_CMD_KSZ_128, align 4
  %470 = load %struct.hifn_command*, %struct.hifn_command** %9, align 8
  %471 = getelementptr inbounds %struct.hifn_command, %struct.hifn_command* %470, i32 0, i32 0
  %472 = load i32, i32* %471, align 8
  %473 = or i32 %472, %469
  store i32 %473, i32* %471, align 8
  br label %488

474:                                              ; preds = %464
  %475 = load i32, i32* @HIFN_CRYPT_CMD_KSZ_192, align 4
  %476 = load %struct.hifn_command*, %struct.hifn_command** %9, align 8
  %477 = getelementptr inbounds %struct.hifn_command, %struct.hifn_command* %476, i32 0, i32 0
  %478 = load i32, i32* %477, align 8
  %479 = or i32 %478, %475
  store i32 %479, i32* %477, align 8
  br label %488

480:                                              ; preds = %464
  %481 = load i32, i32* @HIFN_CRYPT_CMD_KSZ_256, align 4
  %482 = load %struct.hifn_command*, %struct.hifn_command** %9, align 8
  %483 = getelementptr inbounds %struct.hifn_command, %struct.hifn_command* %482, i32 0, i32 0
  %484 = load i32, i32* %483, align 8
  %485 = or i32 %484, %481
  store i32 %485, i32* %483, align 8
  br label %488

486:                                              ; preds = %464
  %487 = load i32, i32* @EINVAL, align 4
  store i32 %487, i32* %10, align 4
  br label %636

488:                                              ; preds = %480, %474, %468
  br label %489

489:                                              ; preds = %488, %440
  br label %490

490:                                              ; preds = %489, %271
  %491 = load %struct.cryptodesc*, %struct.cryptodesc** %14, align 8
  %492 = icmp ne %struct.cryptodesc* %491, null
  br i1 %492, label %493, label %602

493:                                              ; preds = %490
  %494 = load %struct.cryptodesc*, %struct.cryptodesc** %14, align 8
  %495 = load %struct.hifn_command*, %struct.hifn_command** %9, align 8
  %496 = getelementptr inbounds %struct.hifn_command, %struct.hifn_command* %495, i32 0, i32 8
  store %struct.cryptodesc* %494, %struct.cryptodesc** %496, align 8
  %497 = load i32, i32* @HIFN_BASE_CMD_MAC, align 4
  %498 = load %struct.hifn_command*, %struct.hifn_command** %9, align 8
  %499 = getelementptr inbounds %struct.hifn_command, %struct.hifn_command* %498, i32 0, i32 7
  %500 = load i32, i32* %499, align 8
  %501 = or i32 %500, %497
  store i32 %501, i32* %499, align 8
  %502 = load %struct.cryptodesc*, %struct.cryptodesc** %14, align 8
  %503 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %502, i32 0, i32 0
  %504 = load i32, i32* %503, align 8
  switch i32 %504, label %557 [
    i32 131, label %505
    i32 130, label %517
    i32 129, label %531
    i32 128, label %543
  ]

505:                                              ; preds = %493
  %506 = load i32, i32* @HIFN_MAC_CMD_ALG_MD5, align 4
  %507 = load i32, i32* @HIFN_MAC_CMD_RESULT, align 4
  %508 = or i32 %506, %507
  %509 = load i32, i32* @HIFN_MAC_CMD_MODE_HASH, align 4
  %510 = or i32 %508, %509
  %511 = load i32, i32* @HIFN_MAC_CMD_POS_IPSEC, align 4
  %512 = or i32 %510, %511
  %513 = load %struct.hifn_command*, %struct.hifn_command** %9, align 8
  %514 = getelementptr inbounds %struct.hifn_command, %struct.hifn_command* %513, i32 0, i32 2
  %515 = load i32, i32* %514, align 8
  %516 = or i32 %515, %512
  store i32 %516, i32* %514, align 8
  br label %557

517:                                              ; preds = %493
  %518 = load i32, i32* @HIFN_MAC_CMD_ALG_MD5, align 4
  %519 = load i32, i32* @HIFN_MAC_CMD_RESULT, align 4
  %520 = or i32 %518, %519
  %521 = load i32, i32* @HIFN_MAC_CMD_MODE_HMAC, align 4
  %522 = or i32 %520, %521
  %523 = load i32, i32* @HIFN_MAC_CMD_POS_IPSEC, align 4
  %524 = or i32 %522, %523
  %525 = load i32, i32* @HIFN_MAC_CMD_TRUNC, align 4
  %526 = or i32 %524, %525
  %527 = load %struct.hifn_command*, %struct.hifn_command** %9, align 8
  %528 = getelementptr inbounds %struct.hifn_command, %struct.hifn_command* %527, i32 0, i32 2
  %529 = load i32, i32* %528, align 8
  %530 = or i32 %529, %526
  store i32 %530, i32* %528, align 8
  br label %557

531:                                              ; preds = %493
  %532 = load i32, i32* @HIFN_MAC_CMD_ALG_SHA1, align 4
  %533 = load i32, i32* @HIFN_MAC_CMD_RESULT, align 4
  %534 = or i32 %532, %533
  %535 = load i32, i32* @HIFN_MAC_CMD_MODE_HASH, align 4
  %536 = or i32 %534, %535
  %537 = load i32, i32* @HIFN_MAC_CMD_POS_IPSEC, align 4
  %538 = or i32 %536, %537
  %539 = load %struct.hifn_command*, %struct.hifn_command** %9, align 8
  %540 = getelementptr inbounds %struct.hifn_command, %struct.hifn_command* %539, i32 0, i32 2
  %541 = load i32, i32* %540, align 8
  %542 = or i32 %541, %538
  store i32 %542, i32* %540, align 8
  br label %557

543:                                              ; preds = %493
  %544 = load i32, i32* @HIFN_MAC_CMD_ALG_SHA1, align 4
  %545 = load i32, i32* @HIFN_MAC_CMD_RESULT, align 4
  %546 = or i32 %544, %545
  %547 = load i32, i32* @HIFN_MAC_CMD_MODE_HMAC, align 4
  %548 = or i32 %546, %547
  %549 = load i32, i32* @HIFN_MAC_CMD_POS_IPSEC, align 4
  %550 = or i32 %548, %549
  %551 = load i32, i32* @HIFN_MAC_CMD_TRUNC, align 4
  %552 = or i32 %550, %551
  %553 = load %struct.hifn_command*, %struct.hifn_command** %9, align 8
  %554 = getelementptr inbounds %struct.hifn_command, %struct.hifn_command* %553, i32 0, i32 2
  %555 = load i32, i32* %554, align 8
  %556 = or i32 %555, %552
  store i32 %556, i32* %554, align 8
  br label %557

557:                                              ; preds = %493, %543, %531, %517, %505
  %558 = load %struct.cryptodesc*, %struct.cryptodesc** %14, align 8
  %559 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %558, i32 0, i32 0
  %560 = load i32, i32* %559, align 8
  %561 = icmp eq i32 %560, 128
  br i1 %561, label %567, label %562

562:                                              ; preds = %557
  %563 = load %struct.cryptodesc*, %struct.cryptodesc** %14, align 8
  %564 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %563, i32 0, i32 0
  %565 = load i32, i32* %564, align 8
  %566 = icmp eq i32 %565, 130
  br i1 %566, label %567, label %601

567:                                              ; preds = %562, %557
  %568 = load i32, i32* @HIFN_MAC_CMD_NEW_KEY, align 4
  %569 = load %struct.hifn_command*, %struct.hifn_command** %9, align 8
  %570 = getelementptr inbounds %struct.hifn_command, %struct.hifn_command* %569, i32 0, i32 2
  %571 = load i32, i32* %570, align 8
  %572 = or i32 %571, %568
  store i32 %572, i32* %570, align 8
  %573 = load %struct.cryptodesc*, %struct.cryptodesc** %14, align 8
  %574 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %573, i32 0, i32 3
  %575 = load i32, i32* %574, align 4
  %576 = load %struct.hifn_command*, %struct.hifn_command** %9, align 8
  %577 = getelementptr inbounds %struct.hifn_command, %struct.hifn_command* %576, i32 0, i32 6
  %578 = load i64, i64* %577, align 8
  %579 = load %struct.cryptodesc*, %struct.cryptodesc** %14, align 8
  %580 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %579, i32 0, i32 2
  %581 = load i32, i32* %580, align 8
  %582 = ashr i32 %581, 3
  %583 = call i32 @bcopy(i32 %575, i64 %578, i32 %582)
  %584 = load %struct.hifn_command*, %struct.hifn_command** %9, align 8
  %585 = getelementptr inbounds %struct.hifn_command, %struct.hifn_command* %584, i32 0, i32 6
  %586 = load i64, i64* %585, align 8
  %587 = load %struct.cryptodesc*, %struct.cryptodesc** %14, align 8
  %588 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %587, i32 0, i32 2
  %589 = load i32, i32* %588, align 8
  %590 = ashr i32 %589, 3
  %591 = sext i32 %590 to i64
  %592 = add nsw i64 %586, %591
  %593 = load i64, i64* @HIFN_MAC_KEY_LENGTH, align 8
  %594 = load %struct.cryptodesc*, %struct.cryptodesc** %14, align 8
  %595 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %594, i32 0, i32 2
  %596 = load i32, i32* %595, align 8
  %597 = ashr i32 %596, 3
  %598 = sext i32 %597 to i64
  %599 = sub nsw i64 %593, %598
  %600 = call i32 @bzero(i64 %592, i64 %599)
  br label %601

601:                                              ; preds = %567, %562
  br label %602

602:                                              ; preds = %601, %490
  %603 = load %struct.cryptop*, %struct.cryptop** %6, align 8
  %604 = load %struct.hifn_command*, %struct.hifn_command** %9, align 8
  %605 = getelementptr inbounds %struct.hifn_command, %struct.hifn_command* %604, i32 0, i32 5
  store %struct.cryptop* %603, %struct.cryptop** %605, align 8
  %606 = load %struct.hifn_session*, %struct.hifn_session** %16, align 8
  %607 = load %struct.hifn_command*, %struct.hifn_command** %9, align 8
  %608 = getelementptr inbounds %struct.hifn_command, %struct.hifn_command* %607, i32 0, i32 4
  store %struct.hifn_session* %606, %struct.hifn_session** %608, align 8
  %609 = load %struct.hifn_softc*, %struct.hifn_softc** %8, align 8
  %610 = load %struct.hifn_command*, %struct.hifn_command** %9, align 8
  %611 = getelementptr inbounds %struct.hifn_command, %struct.hifn_command* %610, i32 0, i32 3
  store %struct.hifn_softc* %609, %struct.hifn_softc** %611, align 8
  %612 = load %struct.hifn_softc*, %struct.hifn_softc** %8, align 8
  %613 = load %struct.hifn_command*, %struct.hifn_command** %9, align 8
  %614 = load %struct.cryptop*, %struct.cryptop** %6, align 8
  %615 = load i32, i32* %7, align 4
  %616 = call i32 @hifn_crypto(%struct.hifn_softc* %612, %struct.hifn_command* %613, %struct.cryptop* %614, i32 %615)
  store i32 %616, i32* %10, align 4
  %617 = load i32, i32* %10, align 4
  %618 = icmp ne i32 %617, 0
  br i1 %618, label %620, label %619

619:                                              ; preds = %602
  store i32 0, i32* %4, align 4
  br label %660

620:                                              ; preds = %602
  %621 = load i32, i32* %10, align 4
  %622 = load i32, i32* @ERESTART, align 4
  %623 = icmp eq i32 %621, %622
  br i1 %623, label %624, label %634

624:                                              ; preds = %620
  %625 = load %struct.hifn_command*, %struct.hifn_command** %9, align 8
  %626 = load i32, i32* @M_DEVBUF, align 4
  %627 = call i32 @free(%struct.hifn_command* %625, i32 %626)
  %628 = load i32, i32* @CRYPTO_SYMQ, align 4
  %629 = load %struct.hifn_softc*, %struct.hifn_softc** %8, align 8
  %630 = getelementptr inbounds %struct.hifn_softc, %struct.hifn_softc* %629, i32 0, i32 0
  %631 = load i32, i32* %630, align 4
  %632 = or i32 %631, %628
  store i32 %632, i32* %630, align 4
  %633 = load i32, i32* %10, align 4
  store i32 %633, i32* %4, align 4
  br label %660

634:                                              ; preds = %620
  br label %635

635:                                              ; preds = %634
  br label %636

636:                                              ; preds = %635, %486, %322, %267, %160, %95, %86, %42
  %637 = load %struct.hifn_command*, %struct.hifn_command** %9, align 8
  %638 = icmp ne %struct.hifn_command* %637, null
  br i1 %638, label %639, label %643

639:                                              ; preds = %636
  %640 = load %struct.hifn_command*, %struct.hifn_command** %9, align 8
  %641 = load i32, i32* @M_DEVBUF, align 4
  %642 = call i32 @free(%struct.hifn_command* %640, i32 %641)
  br label %643

643:                                              ; preds = %639, %636
  %644 = load i32, i32* %10, align 4
  %645 = load i32, i32* @EINVAL, align 4
  %646 = icmp eq i32 %644, %645
  br i1 %646, label %647, label %650

647:                                              ; preds = %643
  %648 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @hifnstats, i32 0, i32 1), align 4
  %649 = add nsw i32 %648, 1
  store i32 %649, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @hifnstats, i32 0, i32 1), align 4
  br label %653

650:                                              ; preds = %643
  %651 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @hifnstats, i32 0, i32 0), align 4
  %652 = add nsw i32 %651, 1
  store i32 %652, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @hifnstats, i32 0, i32 0), align 4
  br label %653

653:                                              ; preds = %650, %647
  %654 = load i32, i32* %10, align 4
  %655 = load %struct.cryptop*, %struct.cryptop** %6, align 8
  %656 = getelementptr inbounds %struct.cryptop, %struct.cryptop* %655, i32 0, i32 1
  store i32 %654, i32* %656, align 4
  %657 = load %struct.cryptop*, %struct.cryptop** %6, align 8
  %658 = call i32 @crypto_done(%struct.cryptop* %657)
  %659 = load i32, i32* %10, align 4
  store i32 %659, i32* %4, align 4
  br label %660

660:                                              ; preds = %653, %624, %619, %26
  %661 = load i32, i32* %4, align 4
  ret i32 %661
}

declare dso_local %struct.hifn_softc* @device_get_softc(i32) #1

declare dso_local %struct.hifn_session* @crypto_get_driver_session(i32) #1

declare dso_local %struct.hifn_command* @malloc(i32, i32, i32) #1

declare dso_local i32 @bcopy(i32, i64, i32) #1

declare dso_local i32 @crypto_copyback(i32, i64, i32, i32, i64) #1

declare dso_local i32 @crypto_copydata(i32, i64, i32, i32, i64) #1

declare dso_local i32 @bzero(i64, i64) #1

declare dso_local i32 @hifn_crypto(%struct.hifn_softc*, %struct.hifn_command*, %struct.cryptop*, i32) #1

declare dso_local i32 @free(%struct.hifn_command*, i32) #1

declare dso_local i32 @crypto_done(%struct.cryptop*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
