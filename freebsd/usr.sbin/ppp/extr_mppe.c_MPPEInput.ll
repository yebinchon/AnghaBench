; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_mppe.c_MPPEInput.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_mppe.c_MPPEInput.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ccp = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.mbuf = type { i32 }
%struct.mppe_state = type { i32, i32, i32, i32, i32, i64 }

@LogDEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"MPPE: Input: Proto %02x (%d bytes)\0A\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"MPPE: Input: Packet:\00", align 1
@MPPE_FLUSHED = common dso_local global i32 0, align 4
@MPPE_HEADER_BITMASK = common dso_local global i32 0, align 4
@MPPE_ENCRYPTED = common dso_local global i32 0, align 4
@LogERROR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [44 x i8] c"MPPE: Input: Invalid packet (flags = 0x%x)\0A\00", align 1
@LogCCP = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [62 x i8] c"MPPEInput: Packet without MPPE_FLUSHED set in stateless mode\0A\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"MPPEInput: Key changed [%u]\0A\00", align 1
@MPPE_HEADER_FLAGSHIFT = common dso_local global i32 0, align 4
@MPPE_HEADER_STATEFUL_KEYCHANGES = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [44 x i8] c"MPPEInput: Key changed during catchup [%u]\0A\00", align 1
@.str.6 = private unnamed_addr constant [31 x i8] c"MPPE: Not flushed - discarded\0A\00", align 1
@CODE_RESETREQ = common dso_local global i32 0, align 4
@MB_CCPOUT = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [33 x i8] c"MPPE: Input: Got seq %u, not %u\0A\00", align 1
@MPPE_HEADER_FLAGMASK = common dso_local global i32 0, align 4
@MPPE_HEADER_FLAG = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [40 x i8] c"MPPEInput: Dictionary initialised [%u]\0A\00", align 1
@.str.9 = private unnamed_addr constant [45 x i8] c"MPPEInput: Decrypted: Proto %02x (%d bytes)\0A\00", align 1
@.str.10 = private unnamed_addr constant [30 x i8] c"MPPEInput: Decrypted: Packet:\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.mbuf* (i8*, %struct.ccp*, i32*, %struct.mbuf*)* @MPPEInput to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mbuf* @MPPEInput(i8* %0, %struct.ccp* %1, i32* %2, %struct.mbuf* %3) #0 {
  %5 = alloca %struct.mbuf*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.ccp*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.mbuf*, align 8
  %10 = alloca %struct.mppe_state*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store %struct.ccp* %1, %struct.ccp** %7, align 8
  store i32* %2, i32** %8, align 8
  store %struct.mbuf* %3, %struct.mbuf** %9, align 8
  %18 = load i8*, i8** %6, align 8
  %19 = bitcast i8* %18 to %struct.mppe_state*
  store %struct.mppe_state* %19, %struct.mppe_state** %10, align 8
  %20 = load %struct.mbuf*, %struct.mbuf** %9, align 8
  %21 = call i32 @m_length(%struct.mbuf* %20)
  store i32 %21, i32* %15, align 4
  store i32 0, i32* %13, align 4
  %22 = load i32, i32* %15, align 4
  %23 = load %struct.ccp*, %struct.ccp** %7, align 8
  %24 = getelementptr inbounds %struct.ccp, %struct.ccp* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = add nsw i32 %25, %22
  store i32 %26, i32* %24, align 4
  %27 = load i32, i32* @LogDEBUG, align 4
  %28 = load i32*, i32** %8, align 8
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* %15, align 4
  %31 = call i32 (i32, i8*, ...) @log_Printf(i32 %27, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %29, i32 %30)
  %32 = load i32, i32* @LogDEBUG, align 4
  %33 = load %struct.mbuf*, %struct.mbuf** %9, align 8
  %34 = call i32 @log_DumpBp(i32 %32, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), %struct.mbuf* %33)
  %35 = load %struct.mbuf*, %struct.mbuf** %9, align 8
  %36 = call %struct.mbuf* @mbuf_Read(%struct.mbuf* %35, i32* %11, i32 2)
  store %struct.mbuf* %36, %struct.mbuf** %9, align 8
  %37 = load i32, i32* %11, align 4
  %38 = call i32 @ntohs(i32 %37)
  store i32 %38, i32* %11, align 4
  %39 = load i32, i32* %11, align 4
  %40 = load i32, i32* @MPPE_FLUSHED, align 4
  %41 = and i32 %39, %40
  store i32 %41, i32* %14, align 4
  %42 = load i32, i32* %14, align 4
  %43 = xor i32 %42, -1
  %44 = load i32, i32* %11, align 4
  %45 = and i32 %44, %43
  store i32 %45, i32* %11, align 4
  %46 = load i32, i32* %11, align 4
  %47 = load i32, i32* @MPPE_HEADER_BITMASK, align 4
  %48 = and i32 %46, %47
  %49 = load i32, i32* @MPPE_ENCRYPTED, align 4
  %50 = icmp ne i32 %48, %49
  br i1 %50, label %51, label %61

51:                                               ; preds = %4
  %52 = load i32, i32* @LogERROR, align 4
  %53 = load i32, i32* %11, align 4
  %54 = load i32, i32* @MPPE_HEADER_BITMASK, align 4
  %55 = and i32 %53, %54
  %56 = load i32, i32* %14, align 4
  %57 = or i32 %55, %56
  %58 = call i32 (i32, i8*, ...) @log_Printf(i32 %52, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0), i32 %57)
  %59 = load %struct.mbuf*, %struct.mbuf** %9, align 8
  %60 = call i32 @m_freem(%struct.mbuf* %59)
  store %struct.mbuf* null, %struct.mbuf** %5, align 8
  br label %274

61:                                               ; preds = %4
  %62 = load i32, i32* @MPPE_HEADER_BITMASK, align 4
  %63 = xor i32 %62, -1
  %64 = load i32, i32* %11, align 4
  %65 = and i32 %64, %63
  store i32 %65, i32* %11, align 4
  %66 = load i32, i32* %14, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %77, label %68

68:                                               ; preds = %61
  %69 = load %struct.mppe_state*, %struct.mppe_state** %10, align 8
  %70 = getelementptr inbounds %struct.mppe_state, %struct.mppe_state* %69, i32 0, i32 5
  %71 = load i64, i64* %70, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %77

73:                                               ; preds = %68
  %74 = load i32, i32* @LogCCP, align 4
  %75 = call i32 (i32, i8*, ...) @log_Printf(i32 %74, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.3, i64 0, i64 0))
  %76 = load i32, i32* @MPPE_FLUSHED, align 4
  store i32 %76, i32* %14, align 4
  br label %77

77:                                               ; preds = %73, %68, %61
  %78 = load %struct.mppe_state*, %struct.mppe_state** %10, align 8
  %79 = getelementptr inbounds %struct.mppe_state, %struct.mppe_state* %78, i32 0, i32 5
  %80 = load i64, i64* %79, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %106

82:                                               ; preds = %77
  br label %83

83:                                               ; preds = %89, %82
  %84 = load i32, i32* %11, align 4
  %85 = load %struct.mppe_state*, %struct.mppe_state** %10, align 8
  %86 = getelementptr inbounds %struct.mppe_state, %struct.mppe_state* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = icmp ne i32 %84, %87
  br i1 %88, label %89, label %105

89:                                               ; preds = %83
  %90 = load i32, i32* @LogDEBUG, align 4
  %91 = load i32, i32* %11, align 4
  %92 = call i32 (i32, i8*, ...) @log_Printf(i32 %90, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0), i32 %91)
  %93 = load %struct.mppe_state*, %struct.mppe_state** %10, align 8
  %94 = call i32 @MPPEKeyChange(%struct.mppe_state* %93)
  %95 = load %struct.mppe_state*, %struct.mppe_state** %10, align 8
  %96 = getelementptr inbounds %struct.mppe_state, %struct.mppe_state* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %96, align 8
  %99 = load i32, i32* @MPPE_HEADER_BITMASK, align 4
  %100 = xor i32 %99, -1
  %101 = load %struct.mppe_state*, %struct.mppe_state** %10, align 8
  %102 = getelementptr inbounds %struct.mppe_state, %struct.mppe_state* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = and i32 %103, %100
  store i32 %104, i32* %102, align 8
  br label %83

105:                                              ; preds = %83
  store i32 1, i32* %13, align 4
  br label %219

106:                                              ; preds = %77
  %107 = load i32, i32* %14, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %144

109:                                              ; preds = %106
  %110 = load i32, i32* %11, align 4
  %111 = load i32, i32* @MPPE_HEADER_FLAGSHIFT, align 4
  %112 = ashr i32 %110, %111
  %113 = load %struct.mppe_state*, %struct.mppe_state** %10, align 8
  %114 = getelementptr inbounds %struct.mppe_state, %struct.mppe_state* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = load i32, i32* @MPPE_HEADER_FLAGSHIFT, align 4
  %117 = ashr i32 %115, %116
  %118 = sub nsw i32 %112, %117
  store i32 %118, i32* %17, align 4
  %119 = load i32, i32* %17, align 4
  %120 = icmp slt i32 %119, 0
  br i1 %120, label %121, label %127

121:                                              ; preds = %109
  %122 = load i64, i64* @MPPE_HEADER_STATEFUL_KEYCHANGES, align 8
  %123 = load i32, i32* %17, align 4
  %124 = sext i32 %123 to i64
  %125 = add nsw i64 %124, %122
  %126 = trunc i64 %125 to i32
  store i32 %126, i32* %17, align 4
  br label %127

127:                                              ; preds = %121, %109
  br label %128

128:                                              ; preds = %132, %127
  %129 = load i32, i32* %17, align 4
  %130 = add nsw i32 %129, -1
  store i32 %130, i32* %17, align 4
  %131 = icmp ne i32 %129, 0
  br i1 %131, label %132, label %138

132:                                              ; preds = %128
  %133 = load i32, i32* @LogDEBUG, align 4
  %134 = load i32, i32* %11, align 4
  %135 = call i32 (i32, i8*, ...) @log_Printf(i32 %133, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.5, i64 0, i64 0), i32 %134)
  %136 = load %struct.mppe_state*, %struct.mppe_state** %10, align 8
  %137 = call i32 @MPPEKeyChange(%struct.mppe_state* %136)
  br label %128

138:                                              ; preds = %128
  %139 = load %struct.mppe_state*, %struct.mppe_state** %10, align 8
  %140 = getelementptr inbounds %struct.mppe_state, %struct.mppe_state* %139, i32 0, i32 1
  store i32 0, i32* %140, align 4
  %141 = load i32, i32* %11, align 4
  %142 = load %struct.mppe_state*, %struct.mppe_state** %10, align 8
  %143 = getelementptr inbounds %struct.mppe_state, %struct.mppe_state* %142, i32 0, i32 0
  store i32 %141, i32* %143, align 8
  store i32 1, i32* %13, align 4
  br label %144

144:                                              ; preds = %138, %106
  %145 = load %struct.mppe_state*, %struct.mppe_state** %10, align 8
  %146 = getelementptr inbounds %struct.mppe_state, %struct.mppe_state* %145, i32 0, i32 1
  %147 = load i32, i32* %146, align 4
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %164

149:                                              ; preds = %144
  %150 = load i32, i32* @LogDEBUG, align 4
  %151 = call i32 (i32, i8*, ...) @log_Printf(i32 %150, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.6, i64 0, i64 0))
  %152 = load %struct.ccp*, %struct.ccp** %7, align 8
  %153 = getelementptr inbounds %struct.ccp, %struct.ccp* %152, i32 0, i32 2
  %154 = load i32, i32* @CODE_RESETREQ, align 4
  %155 = load %struct.ccp*, %struct.ccp** %7, align 8
  %156 = getelementptr inbounds %struct.ccp, %struct.ccp* %155, i32 0, i32 2
  %157 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 4
  %159 = add nsw i32 %158, 1
  store i32 %159, i32* %157, align 4
  %160 = load i32, i32* @MB_CCPOUT, align 4
  %161 = call i32 @fsm_Output(%struct.TYPE_2__* %153, i32 %154, i32 %158, i32* null, i32 0, i32 %160)
  %162 = load %struct.mbuf*, %struct.mbuf** %9, align 8
  %163 = call i32 @m_freem(%struct.mbuf* %162)
  store %struct.mbuf* null, %struct.mbuf** %5, align 8
  br label %274

164:                                              ; preds = %144
  %165 = load i32, i32* %11, align 4
  %166 = load %struct.mppe_state*, %struct.mppe_state** %10, align 8
  %167 = getelementptr inbounds %struct.mppe_state, %struct.mppe_state* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 8
  %169 = icmp ne i32 %165, %168
  br i1 %169, label %170, label %191

170:                                              ; preds = %164
  %171 = load i32, i32* @LogCCP, align 4
  %172 = load i32, i32* %11, align 4
  %173 = load %struct.mppe_state*, %struct.mppe_state** %10, align 8
  %174 = getelementptr inbounds %struct.mppe_state, %struct.mppe_state* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 8
  %176 = call i32 (i32, i8*, ...) @log_Printf(i32 %171, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.7, i64 0, i64 0), i32 %172, i32 %175)
  %177 = load %struct.ccp*, %struct.ccp** %7, align 8
  %178 = getelementptr inbounds %struct.ccp, %struct.ccp* %177, i32 0, i32 2
  %179 = load i32, i32* @CODE_RESETREQ, align 4
  %180 = load %struct.ccp*, %struct.ccp** %7, align 8
  %181 = getelementptr inbounds %struct.ccp, %struct.ccp* %180, i32 0, i32 2
  %182 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %181, i32 0, i32 0
  %183 = load i32, i32* %182, align 4
  %184 = add nsw i32 %183, 1
  store i32 %184, i32* %182, align 4
  %185 = load i32, i32* @MB_CCPOUT, align 4
  %186 = call i32 @fsm_Output(%struct.TYPE_2__* %178, i32 %179, i32 %183, i32* null, i32 0, i32 %185)
  %187 = load %struct.mppe_state*, %struct.mppe_state** %10, align 8
  %188 = getelementptr inbounds %struct.mppe_state, %struct.mppe_state* %187, i32 0, i32 1
  store i32 1, i32* %188, align 4
  %189 = load %struct.mbuf*, %struct.mbuf** %9, align 8
  %190 = call i32 @m_freem(%struct.mbuf* %189)
  store %struct.mbuf* null, %struct.mbuf** %5, align 8
  br label %274

191:                                              ; preds = %164
  %192 = load i32, i32* %11, align 4
  %193 = load i32, i32* @MPPE_HEADER_FLAGMASK, align 4
  %194 = and i32 %192, %193
  %195 = load i32, i32* @MPPE_HEADER_FLAG, align 4
  %196 = icmp eq i32 %194, %195
  br i1 %196, label %197, label %203

197:                                              ; preds = %191
  %198 = load i32, i32* @LogDEBUG, align 4
  %199 = load i32, i32* %11, align 4
  %200 = call i32 (i32, i8*, ...) @log_Printf(i32 %198, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0), i32 %199)
  %201 = load %struct.mppe_state*, %struct.mppe_state** %10, align 8
  %202 = call i32 @MPPEKeyChange(%struct.mppe_state* %201)
  store i32 1, i32* %13, align 4
  br label %208

203:                                              ; preds = %191
  %204 = load i32, i32* %14, align 4
  %205 = icmp ne i32 %204, 0
  br i1 %205, label %206, label %207

206:                                              ; preds = %203
  store i32 1, i32* %13, align 4
  br label %207

207:                                              ; preds = %206, %203
  br label %208

208:                                              ; preds = %207, %197
  %209 = load %struct.mppe_state*, %struct.mppe_state** %10, align 8
  %210 = getelementptr inbounds %struct.mppe_state, %struct.mppe_state* %209, i32 0, i32 0
  %211 = load i32, i32* %210, align 8
  %212 = add nsw i32 %211, 1
  store i32 %212, i32* %210, align 8
  %213 = load i32, i32* @MPPE_HEADER_BITMASK, align 4
  %214 = xor i32 %213, -1
  %215 = load %struct.mppe_state*, %struct.mppe_state** %10, align 8
  %216 = getelementptr inbounds %struct.mppe_state, %struct.mppe_state* %215, i32 0, i32 0
  %217 = load i32, i32* %216, align 8
  %218 = and i32 %217, %214
  store i32 %218, i32* %216, align 8
  br label %219

219:                                              ; preds = %208, %105
  %220 = load i32, i32* %13, align 4
  %221 = icmp ne i32 %220, 0
  br i1 %221, label %222, label %235

222:                                              ; preds = %219
  %223 = load i32, i32* @LogDEBUG, align 4
  %224 = load i32, i32* %11, align 4
  %225 = call i32 (i32, i8*, ...) @log_Printf(i32 %223, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.8, i64 0, i64 0), i32 %224)
  %226 = load %struct.mppe_state*, %struct.mppe_state** %10, align 8
  %227 = getelementptr inbounds %struct.mppe_state, %struct.mppe_state* %226, i32 0, i32 2
  %228 = load %struct.mppe_state*, %struct.mppe_state** %10, align 8
  %229 = getelementptr inbounds %struct.mppe_state, %struct.mppe_state* %228, i32 0, i32 4
  %230 = load i32, i32* %229, align 8
  %231 = load %struct.mppe_state*, %struct.mppe_state** %10, align 8
  %232 = getelementptr inbounds %struct.mppe_state, %struct.mppe_state* %231, i32 0, i32 3
  %233 = load i32, i32* %232, align 4
  %234 = call i32 @RC4_set_key(i32* %227, i32 %230, i32 %233)
  br label %235

235:                                              ; preds = %222, %219
  %236 = load %struct.mbuf*, %struct.mbuf** %9, align 8
  %237 = load i32*, i32** %8, align 8
  %238 = call %struct.mbuf* @mbuf_Read(%struct.mbuf* %236, i32* %237, i32 2)
  store %struct.mbuf* %238, %struct.mbuf** %9, align 8
  %239 = load %struct.mppe_state*, %struct.mppe_state** %10, align 8
  %240 = getelementptr inbounds %struct.mppe_state, %struct.mppe_state* %239, i32 0, i32 2
  %241 = load i32*, i32** %8, align 8
  %242 = bitcast i32* %241 to i8*
  %243 = load i32*, i32** %8, align 8
  %244 = bitcast i32* %243 to i8*
  %245 = call i32 @RC4(i32* %240, i32 2, i8* %242, i8* %244)
  %246 = load i32*, i32** %8, align 8
  %247 = load i32, i32* %246, align 4
  %248 = call i32 @ntohs(i32 %247)
  %249 = load i32*, i32** %8, align 8
  store i32 %248, i32* %249, align 4
  %250 = load %struct.mbuf*, %struct.mbuf** %9, align 8
  %251 = call i8* @MBUF_CTOP(%struct.mbuf* %250)
  store i8* %251, i8** %12, align 8
  %252 = load %struct.mbuf*, %struct.mbuf** %9, align 8
  %253 = call i32 @m_length(%struct.mbuf* %252)
  store i32 %253, i32* %16, align 4
  %254 = load %struct.mppe_state*, %struct.mppe_state** %10, align 8
  %255 = getelementptr inbounds %struct.mppe_state, %struct.mppe_state* %254, i32 0, i32 2
  %256 = load i32, i32* %16, align 4
  %257 = load i8*, i8** %12, align 8
  %258 = load i8*, i8** %12, align 8
  %259 = call i32 @RC4(i32* %255, i32 %256, i8* %257, i8* %258)
  %260 = load i32, i32* @LogDEBUG, align 4
  %261 = load i32*, i32** %8, align 8
  %262 = load i32, i32* %261, align 4
  %263 = load i32, i32* %16, align 4
  %264 = call i32 (i32, i8*, ...) @log_Printf(i32 %260, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.9, i64 0, i64 0), i32 %262, i32 %263)
  %265 = load i32, i32* @LogDEBUG, align 4
  %266 = load %struct.mbuf*, %struct.mbuf** %9, align 8
  %267 = call i32 @log_DumpBp(i32 %265, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.10, i64 0, i64 0), %struct.mbuf* %266)
  %268 = load i32, i32* %16, align 4
  %269 = load %struct.ccp*, %struct.ccp** %7, align 8
  %270 = getelementptr inbounds %struct.ccp, %struct.ccp* %269, i32 0, i32 1
  %271 = load i32, i32* %270, align 4
  %272 = add nsw i32 %271, %268
  store i32 %272, i32* %270, align 4
  %273 = load %struct.mbuf*, %struct.mbuf** %9, align 8
  store %struct.mbuf* %273, %struct.mbuf** %5, align 8
  br label %274

274:                                              ; preds = %235, %170, %149, %51
  %275 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  ret %struct.mbuf* %275
}

declare dso_local i32 @m_length(%struct.mbuf*) #1

declare dso_local i32 @log_Printf(i32, i8*, ...) #1

declare dso_local i32 @log_DumpBp(i32, i8*, %struct.mbuf*) #1

declare dso_local %struct.mbuf* @mbuf_Read(%struct.mbuf*, i32*, i32) #1

declare dso_local i32 @ntohs(i32) #1

declare dso_local i32 @m_freem(%struct.mbuf*) #1

declare dso_local i32 @MPPEKeyChange(%struct.mppe_state*) #1

declare dso_local i32 @fsm_Output(%struct.TYPE_2__*, i32, i32, i32*, i32, i32) #1

declare dso_local i32 @RC4_set_key(i32*, i32, i32) #1

declare dso_local i32 @RC4(i32*, i32, i8*, i8*) #1

declare dso_local i8* @MBUF_CTOP(%struct.mbuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
