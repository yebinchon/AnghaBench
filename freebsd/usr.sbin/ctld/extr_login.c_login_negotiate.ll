; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ctld/extr_login.c_login_negotiate.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ctld/extr_login.c_login_negotiate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.connection = type { i64, i32, i32, i32, i32, i32, i64, i64, %struct.TYPE_6__*, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_4__ = type { i32* }
%struct.pdu = type { i64 }
%struct.iscsi_bhs_login_response = type { i32 }
%struct.keys = type { i32*, i32** }

@CONN_SESSION_TYPE_NORMAL = common dso_local global i64 0, align 8
@MAX_DATA_SEGMENT_LENGTH = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [67 x i8] c"beginning operational parameter negotiation; waiting for Login PDU\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"initiator redirected; exiting\00", align 1
@BHSLR_STAGE_OPERATIONAL_NEGOTIATION = common dso_local global i32 0, align 4
@BHSLR_STAGE_FULL_FEATURE_PHASE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [12 x i8] c"TargetAlias\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"TargetPortalGroupTag\00", align 1
@KEYS_MAX = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [49 x i8] c"initiator sent FirstBurstLength > MaxBurstLength\00", align 1
@.str.5 = private unnamed_addr constant [76 x i8] c"operational parameter negotiation done; transitioning to Full Feature Phase\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.connection*, %struct.pdu*)* @login_negotiate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @login_negotiate(%struct.connection* %0, %struct.pdu* %1) #0 {
  %3 = alloca %struct.connection*, align 8
  %4 = alloca %struct.pdu*, align 8
  %5 = alloca %struct.pdu*, align 8
  %6 = alloca %struct.iscsi_bhs_login_response*, align 8
  %7 = alloca %struct.keys*, align 8
  %8 = alloca %struct.keys*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.connection* %0, %struct.connection** %3, align 8
  store %struct.pdu* %1, %struct.pdu** %4, align 8
  %12 = load %struct.connection*, %struct.connection** %3, align 8
  %13 = getelementptr inbounds %struct.connection, %struct.connection* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @CONN_SESSION_TYPE_NORMAL, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %119

17:                                               ; preds = %2
  %18 = load %struct.connection*, %struct.connection** %3, align 8
  %19 = getelementptr inbounds %struct.connection, %struct.connection* %18, i32 0, i32 9
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %21 = icmp ne %struct.TYPE_4__* %20, null
  %22 = zext i1 %21 to i32
  %23 = call i32 @assert(i32 %22)
  %24 = load %struct.connection*, %struct.connection** %3, align 8
  %25 = getelementptr inbounds %struct.connection, %struct.connection* %24, i32 0, i32 1
  store i32 16777215, i32* %25, align 8
  %26 = load %struct.connection*, %struct.connection** %3, align 8
  %27 = getelementptr inbounds %struct.connection, %struct.connection* %26, i32 0, i32 2
  store i32 16777215, i32* %27, align 4
  %28 = load %struct.connection*, %struct.connection** %3, align 8
  %29 = getelementptr inbounds %struct.connection, %struct.connection* %28, i32 0, i32 3
  store i32 16777215, i32* %29, align 8
  %30 = load %struct.connection*, %struct.connection** %3, align 8
  %31 = getelementptr inbounds %struct.connection, %struct.connection* %30, i32 0, i32 4
  store i32 16777215, i32* %31, align 4
  %32 = load %struct.connection*, %struct.connection** %3, align 8
  %33 = getelementptr inbounds %struct.connection, %struct.connection* %32, i32 0, i32 8
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.connection*, %struct.connection** %3, align 8
  %40 = getelementptr inbounds %struct.connection, %struct.connection* %39, i32 0, i32 1
  %41 = load %struct.connection*, %struct.connection** %3, align 8
  %42 = getelementptr inbounds %struct.connection, %struct.connection* %41, i32 0, i32 2
  %43 = load %struct.connection*, %struct.connection** %3, align 8
  %44 = getelementptr inbounds %struct.connection, %struct.connection* %43, i32 0, i32 3
  %45 = load %struct.connection*, %struct.connection** %3, align 8
  %46 = getelementptr inbounds %struct.connection, %struct.connection* %45, i32 0, i32 4
  %47 = call i32 @kernel_limits(i32 %38, i32* %40, i32* %42, i32* %44, i32* %46)
  %48 = load %struct.connection*, %struct.connection** %3, align 8
  %49 = getelementptr inbounds %struct.connection, %struct.connection* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = icmp sge i32 %50, 512
  %52 = zext i1 %51 to i32
  %53 = call i32 @assert(i32 %52)
  %54 = load %struct.connection*, %struct.connection** %3, align 8
  %55 = getelementptr inbounds %struct.connection, %struct.connection* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = icmp slt i32 %56, 16777216
  %58 = zext i1 %57 to i32
  %59 = call i32 @assert(i32 %58)
  %60 = load %struct.connection*, %struct.connection** %3, align 8
  %61 = getelementptr inbounds %struct.connection, %struct.connection* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 4
  %63 = icmp sge i32 %62, 512
  %64 = zext i1 %63 to i32
  %65 = call i32 @assert(i32 %64)
  %66 = load %struct.connection*, %struct.connection** %3, align 8
  %67 = getelementptr inbounds %struct.connection, %struct.connection* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 4
  %69 = icmp slt i32 %68, 16777216
  %70 = zext i1 %69 to i32
  %71 = call i32 @assert(i32 %70)
  %72 = load %struct.connection*, %struct.connection** %3, align 8
  %73 = getelementptr inbounds %struct.connection, %struct.connection* %72, i32 0, i32 3
  %74 = load i32, i32* %73, align 8
  %75 = icmp sge i32 %74, 512
  %76 = zext i1 %75 to i32
  %77 = call i32 @assert(i32 %76)
  %78 = load %struct.connection*, %struct.connection** %3, align 8
  %79 = getelementptr inbounds %struct.connection, %struct.connection* %78, i32 0, i32 3
  %80 = load i32, i32* %79, align 8
  %81 = icmp slt i32 %80, 16777216
  %82 = zext i1 %81 to i32
  %83 = call i32 @assert(i32 %82)
  %84 = load %struct.connection*, %struct.connection** %3, align 8
  %85 = getelementptr inbounds %struct.connection, %struct.connection* %84, i32 0, i32 4
  %86 = load i32, i32* %85, align 4
  %87 = icmp sge i32 %86, 512
  %88 = zext i1 %87 to i32
  %89 = call i32 @assert(i32 %88)
  %90 = load %struct.connection*, %struct.connection** %3, align 8
  %91 = getelementptr inbounds %struct.connection, %struct.connection* %90, i32 0, i32 4
  %92 = load i32, i32* %91, align 4
  %93 = icmp slt i32 %92, 16777216
  %94 = zext i1 %93 to i32
  %95 = call i32 @assert(i32 %94)
  %96 = load %struct.connection*, %struct.connection** %3, align 8
  %97 = getelementptr inbounds %struct.connection, %struct.connection* %96, i32 0, i32 4
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.connection*, %struct.connection** %3, align 8
  %100 = getelementptr inbounds %struct.connection, %struct.connection* %99, i32 0, i32 3
  %101 = load i32, i32* %100, align 8
  %102 = icmp sle i32 %98, %101
  %103 = zext i1 %102 to i32
  %104 = call i32 @assert(i32 %103)
  %105 = load %struct.connection*, %struct.connection** %3, align 8
  %106 = getelementptr inbounds %struct.connection, %struct.connection* %105, i32 0, i32 2
  %107 = load i32, i32* %106, align 4
  %108 = load %struct.connection*, %struct.connection** %3, align 8
  %109 = getelementptr inbounds %struct.connection, %struct.connection* %108, i32 0, i32 5
  %110 = load i32, i32* %109, align 8
  %111 = icmp slt i32 %107, %110
  br i1 %111, label %112, label %118

112:                                              ; preds = %17
  %113 = load %struct.connection*, %struct.connection** %3, align 8
  %114 = getelementptr inbounds %struct.connection, %struct.connection* %113, i32 0, i32 2
  %115 = load i32, i32* %114, align 4
  %116 = load %struct.connection*, %struct.connection** %3, align 8
  %117 = getelementptr inbounds %struct.connection, %struct.connection* %116, i32 0, i32 5
  store i32 %115, i32* %117, align 8
  br label %118

118:                                              ; preds = %112, %17
  br label %128

119:                                              ; preds = %2
  %120 = load i8*, i8** @MAX_DATA_SEGMENT_LENGTH, align 8
  %121 = ptrtoint i8* %120 to i32
  %122 = load %struct.connection*, %struct.connection** %3, align 8
  %123 = getelementptr inbounds %struct.connection, %struct.connection* %122, i32 0, i32 1
  store i32 %121, i32* %123, align 8
  %124 = load i8*, i8** @MAX_DATA_SEGMENT_LENGTH, align 8
  %125 = ptrtoint i8* %124 to i32
  %126 = load %struct.connection*, %struct.connection** %3, align 8
  %127 = getelementptr inbounds %struct.connection, %struct.connection* %126, i32 0, i32 2
  store i32 %125, i32* %127, align 4
  br label %128

128:                                              ; preds = %119, %118
  %129 = load %struct.pdu*, %struct.pdu** %4, align 8
  %130 = icmp eq %struct.pdu* %129, null
  br i1 %130, label %131, label %135

131:                                              ; preds = %128
  %132 = call i32 @log_debugx(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str, i64 0, i64 0))
  %133 = load %struct.connection*, %struct.connection** %3, align 8
  %134 = call %struct.pdu* @login_receive(%struct.connection* %133, i32 0)
  store %struct.pdu* %134, %struct.pdu** %4, align 8
  store i32 0, i32* %11, align 4
  br label %136

135:                                              ; preds = %128
  store i32 1, i32* %11, align 4
  br label %136

136:                                              ; preds = %135, %131
  %137 = load %struct.connection*, %struct.connection** %3, align 8
  %138 = load %struct.pdu*, %struct.pdu** %4, align 8
  %139 = call i32 @login_target_redirect(%struct.connection* %137, %struct.pdu* %138)
  store i32 %139, i32* %10, align 4
  %140 = load i32, i32* %10, align 4
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %145

142:                                              ; preds = %136
  %143 = call i32 @log_debugx(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  %144 = call i32 @exit(i32 0) #3
  unreachable

145:                                              ; preds = %136
  %146 = call %struct.keys* (...) @keys_new()
  store %struct.keys* %146, %struct.keys** %7, align 8
  %147 = load %struct.keys*, %struct.keys** %7, align 8
  %148 = load %struct.pdu*, %struct.pdu** %4, align 8
  %149 = call i32 @keys_load(%struct.keys* %147, %struct.pdu* %148)
  %150 = load %struct.pdu*, %struct.pdu** %4, align 8
  %151 = call %struct.pdu* @login_new_response(%struct.pdu* %150)
  store %struct.pdu* %151, %struct.pdu** %5, align 8
  %152 = load %struct.pdu*, %struct.pdu** %5, align 8
  %153 = getelementptr inbounds %struct.pdu, %struct.pdu* %152, i32 0, i32 0
  %154 = load i64, i64* %153, align 8
  %155 = inttoptr i64 %154 to %struct.iscsi_bhs_login_response*
  store %struct.iscsi_bhs_login_response* %155, %struct.iscsi_bhs_login_response** %6, align 8
  %156 = call i32 @htons(i32 47837)
  %157 = load %struct.iscsi_bhs_login_response*, %struct.iscsi_bhs_login_response** %6, align 8
  %158 = getelementptr inbounds %struct.iscsi_bhs_login_response, %struct.iscsi_bhs_login_response* %157, i32 0, i32 0
  store i32 %156, i32* %158, align 4
  %159 = load %struct.pdu*, %struct.pdu** %5, align 8
  %160 = load i32, i32* @BHSLR_STAGE_OPERATIONAL_NEGOTIATION, align 4
  %161 = call i32 @login_set_csg(%struct.pdu* %159, i32 %160)
  %162 = load %struct.pdu*, %struct.pdu** %5, align 8
  %163 = load i32, i32* @BHSLR_STAGE_FULL_FEATURE_PHASE, align 4
  %164 = call i32 @login_set_nsg(%struct.pdu* %162, i32 %163)
  %165 = call %struct.keys* (...) @keys_new()
  store %struct.keys* %165, %struct.keys** %8, align 8
  %166 = load i32, i32* %11, align 4
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %199

168:                                              ; preds = %145
  %169 = load %struct.connection*, %struct.connection** %3, align 8
  %170 = getelementptr inbounds %struct.connection, %struct.connection* %169, i32 0, i32 0
  %171 = load i64, i64* %170, align 8
  %172 = load i64, i64* @CONN_SESSION_TYPE_NORMAL, align 8
  %173 = icmp eq i64 %171, %172
  br i1 %173, label %174, label %199

174:                                              ; preds = %168
  %175 = load %struct.connection*, %struct.connection** %3, align 8
  %176 = getelementptr inbounds %struct.connection, %struct.connection* %175, i32 0, i32 9
  %177 = load %struct.TYPE_4__*, %struct.TYPE_4__** %176, align 8
  %178 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %177, i32 0, i32 0
  %179 = load i32*, i32** %178, align 8
  %180 = icmp ne i32* %179, null
  br i1 %180, label %181, label %189

181:                                              ; preds = %174
  %182 = load %struct.keys*, %struct.keys** %8, align 8
  %183 = load %struct.connection*, %struct.connection** %3, align 8
  %184 = getelementptr inbounds %struct.connection, %struct.connection* %183, i32 0, i32 9
  %185 = load %struct.TYPE_4__*, %struct.TYPE_4__** %184, align 8
  %186 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %185, i32 0, i32 0
  %187 = load i32*, i32** %186, align 8
  %188 = call i32 @keys_add(%struct.keys* %182, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i32* %187)
  br label %189

189:                                              ; preds = %181, %174
  %190 = load %struct.keys*, %struct.keys** %8, align 8
  %191 = load %struct.connection*, %struct.connection** %3, align 8
  %192 = getelementptr inbounds %struct.connection, %struct.connection* %191, i32 0, i32 8
  %193 = load %struct.TYPE_6__*, %struct.TYPE_6__** %192, align 8
  %194 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %193, i32 0, i32 0
  %195 = load %struct.TYPE_5__*, %struct.TYPE_5__** %194, align 8
  %196 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %195, i32 0, i32 0
  %197 = load i32, i32* %196, align 4
  %198 = call i32 @keys_add_int(%struct.keys* %190, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i32 %197)
  br label %199

199:                                              ; preds = %189, %168, %145
  store i32 0, i32* %9, align 4
  br label %200

200:                                              ; preds = %233, %199
  %201 = load i32, i32* %9, align 4
  %202 = load i32, i32* @KEYS_MAX, align 4
  %203 = icmp slt i32 %201, %202
  br i1 %203, label %204, label %236

204:                                              ; preds = %200
  %205 = load %struct.keys*, %struct.keys** %7, align 8
  %206 = getelementptr inbounds %struct.keys, %struct.keys* %205, i32 0, i32 1
  %207 = load i32**, i32*** %206, align 8
  %208 = load i32, i32* %9, align 4
  %209 = sext i32 %208 to i64
  %210 = getelementptr inbounds i32*, i32** %207, i64 %209
  %211 = load i32*, i32** %210, align 8
  %212 = icmp eq i32* %211, null
  br i1 %212, label %213, label %214

213:                                              ; preds = %204
  br label %236

214:                                              ; preds = %204
  %215 = load %struct.pdu*, %struct.pdu** %4, align 8
  %216 = load %struct.keys*, %struct.keys** %7, align 8
  %217 = getelementptr inbounds %struct.keys, %struct.keys* %216, i32 0, i32 1
  %218 = load i32**, i32*** %217, align 8
  %219 = load i32, i32* %9, align 4
  %220 = sext i32 %219 to i64
  %221 = getelementptr inbounds i32*, i32** %218, i64 %220
  %222 = load i32*, i32** %221, align 8
  %223 = load %struct.keys*, %struct.keys** %7, align 8
  %224 = getelementptr inbounds %struct.keys, %struct.keys* %223, i32 0, i32 0
  %225 = load i32*, i32** %224, align 8
  %226 = load i32, i32* %9, align 4
  %227 = sext i32 %226 to i64
  %228 = getelementptr inbounds i32, i32* %225, i64 %227
  %229 = load i32, i32* %228, align 4
  %230 = load i32, i32* %11, align 4
  %231 = load %struct.keys*, %struct.keys** %8, align 8
  %232 = call i32 @login_negotiate_key(%struct.pdu* %215, i32* %222, i32 %229, i32 %230, %struct.keys* %231)
  br label %233

233:                                              ; preds = %214
  %234 = load i32, i32* %9, align 4
  %235 = add nsw i32 %234, 1
  store i32 %235, i32* %9, align 4
  br label %200

236:                                              ; preds = %213, %200
  %237 = load %struct.connection*, %struct.connection** %3, align 8
  %238 = getelementptr inbounds %struct.connection, %struct.connection* %237, i32 0, i32 0
  %239 = load i64, i64* %238, align 8
  %240 = load i64, i64* @CONN_SESSION_TYPE_NORMAL, align 8
  %241 = icmp eq i64 %239, %240
  br i1 %241, label %242, label %252

242:                                              ; preds = %236
  %243 = load %struct.connection*, %struct.connection** %3, align 8
  %244 = getelementptr inbounds %struct.connection, %struct.connection* %243, i32 0, i32 6
  %245 = load i64, i64* %244, align 8
  %246 = load %struct.connection*, %struct.connection** %3, align 8
  %247 = getelementptr inbounds %struct.connection, %struct.connection* %246, i32 0, i32 7
  %248 = load i64, i64* %247, align 8
  %249 = icmp sgt i64 %245, %248
  br i1 %249, label %250, label %252

250:                                              ; preds = %242
  %251 = call i32 @log_errx(i32 1, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.4, i64 0, i64 0))
  br label %252

252:                                              ; preds = %250, %242, %236
  %253 = call i32 @log_debugx(i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.5, i64 0, i64 0))
  %254 = load %struct.keys*, %struct.keys** %8, align 8
  %255 = load %struct.pdu*, %struct.pdu** %5, align 8
  %256 = call i32 @keys_save(%struct.keys* %254, %struct.pdu* %255)
  %257 = load %struct.pdu*, %struct.pdu** %5, align 8
  %258 = call i32 @pdu_send(%struct.pdu* %257)
  %259 = load %struct.pdu*, %struct.pdu** %5, align 8
  %260 = call i32 @pdu_delete(%struct.pdu* %259)
  %261 = load %struct.keys*, %struct.keys** %8, align 8
  %262 = call i32 @keys_delete(%struct.keys* %261)
  %263 = load %struct.pdu*, %struct.pdu** %4, align 8
  %264 = call i32 @pdu_delete(%struct.pdu* %263)
  %265 = load %struct.keys*, %struct.keys** %7, align 8
  %266 = call i32 @keys_delete(%struct.keys* %265)
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @kernel_limits(i32, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @log_debugx(i8*) #1

declare dso_local %struct.pdu* @login_receive(%struct.connection*, i32) #1

declare dso_local i32 @login_target_redirect(%struct.connection*, %struct.pdu*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local %struct.keys* @keys_new(...) #1

declare dso_local i32 @keys_load(%struct.keys*, %struct.pdu*) #1

declare dso_local %struct.pdu* @login_new_response(%struct.pdu*) #1

declare dso_local i32 @htons(i32) #1

declare dso_local i32 @login_set_csg(%struct.pdu*, i32) #1

declare dso_local i32 @login_set_nsg(%struct.pdu*, i32) #1

declare dso_local i32 @keys_add(%struct.keys*, i8*, i32*) #1

declare dso_local i32 @keys_add_int(%struct.keys*, i8*, i32) #1

declare dso_local i32 @login_negotiate_key(%struct.pdu*, i32*, i32, i32, %struct.keys*) #1

declare dso_local i32 @log_errx(i32, i8*) #1

declare dso_local i32 @keys_save(%struct.keys*, %struct.pdu*) #1

declare dso_local i32 @pdu_send(%struct.pdu*) #1

declare dso_local i32 @pdu_delete(%struct.pdu*) #1

declare dso_local i32 @keys_delete(%struct.keys*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
