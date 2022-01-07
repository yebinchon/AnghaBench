; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/nscd/extr_mp_rs_query.c_on_mp_read_session_request_process.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/nscd/extr_mp_rs_query.c_on_mp_read_session_request_process.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.query_state = type { i32, i32, i32, %struct.TYPE_10__*, i32, i32, i64, i32, i32, i32 }
%struct.TYPE_10__ = type { i64, i64, %struct.TYPE_9__, %struct.TYPE_8__ }
%struct.TYPE_9__ = type { i64, i64 }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.cache_mp_read_session_request = type { i32 }
%struct.cache_mp_read_session_response = type { i32 }
%struct.agent = type { i64 }
%struct.multipart_agent = type { i32 (i8**, i64*, i8*)*, i8* (...)* }

@CET_MP_READ_SESSION_RESPONSE = common dso_local global i32 0, align 4
@s_configuration = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"read_session_request\00", align 1
@.str.1 = private unnamed_addr constant [54 x i8] c"can't find configuration entry '%s'. aborting request\00", align 1
@EACCES = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [37 x i8] c"configuration entry '%s' is disabled\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"%s%s\00", align 1
@s_cache = common dso_local global i32 0, align 4
@INVALID_CACHE = common dso_local global i64 0, align 8
@INVALID_CACHE_ENTRY = common dso_local global i64 0, align 8
@CELT_MULTIPART = common dso_local global i32 0, align 4
@INVALID_CACHE_MP_READ_SESSION = common dso_local global i64 0, align 8
@s_agent_table = common dso_local global i32 0, align 4
@MULTIPART_AGENT = common dso_local global i64 0, align 8
@NS_TERMINATE = common dso_local global i32 0, align 4
@on_mp_read_session_destroy = common dso_local global i32 0, align 4
@on_mp_read_session_response_write1 = common dso_local global i32 0, align 4
@EVFILT_WRITE = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.query_state*)* @on_mp_read_session_request_process to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @on_mp_read_session_request_process(%struct.query_state* %0) #0 {
  %2 = alloca %struct.query_state*, align 8
  %3 = alloca %struct.cache_mp_read_session_request*, align 8
  %4 = alloca %struct.cache_mp_read_session_response*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.agent*, align 8
  %12 = alloca %struct.multipart_agent*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  store %struct.query_state* %0, %struct.query_state** %2, align 8
  %15 = call i32 @TRACE_IN(i32 (%struct.query_state*)* @on_mp_read_session_request_process)
  %16 = load %struct.query_state*, %struct.query_state** %2, align 8
  %17 = getelementptr inbounds %struct.query_state, %struct.query_state* %16, i32 0, i32 9
  %18 = load i32, i32* @CET_MP_READ_SESSION_RESPONSE, align 4
  %19 = call i32 @init_comm_element(i32* %17, i32 %18)
  %20 = load %struct.query_state*, %struct.query_state** %2, align 8
  %21 = getelementptr inbounds %struct.query_state, %struct.query_state* %20, i32 0, i32 9
  %22 = call %struct.cache_mp_read_session_response* @get_cache_mp_read_session_response(i32* %21)
  store %struct.cache_mp_read_session_response* %22, %struct.cache_mp_read_session_response** %4, align 8
  %23 = load %struct.query_state*, %struct.query_state** %2, align 8
  %24 = getelementptr inbounds %struct.query_state, %struct.query_state* %23, i32 0, i32 8
  %25 = call %struct.cache_mp_read_session_request* @get_cache_mp_read_session_request(i32* %24)
  store %struct.cache_mp_read_session_request* %25, %struct.cache_mp_read_session_request** %3, align 8
  %26 = load i32, i32* @s_configuration, align 4
  %27 = load %struct.cache_mp_read_session_request*, %struct.cache_mp_read_session_request** %3, align 8
  %28 = getelementptr inbounds %struct.cache_mp_read_session_request, %struct.cache_mp_read_session_request* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call %struct.TYPE_10__* @configuration_find_entry(i32 %26, i32 %29)
  %31 = load %struct.query_state*, %struct.query_state** %2, align 8
  %32 = getelementptr inbounds %struct.query_state, %struct.query_state* %31, i32 0, i32 3
  store %struct.TYPE_10__* %30, %struct.TYPE_10__** %32, align 8
  %33 = load %struct.query_state*, %struct.query_state** %2, align 8
  %34 = getelementptr inbounds %struct.query_state, %struct.query_state* %33, i32 0, i32 3
  %35 = load %struct.TYPE_10__*, %struct.TYPE_10__** %34, align 8
  %36 = icmp eq %struct.TYPE_10__* %35, null
  br i1 %36, label %37, label %45

37:                                               ; preds = %1
  %38 = load i32, i32* @ENOENT, align 4
  %39 = load %struct.cache_mp_read_session_response*, %struct.cache_mp_read_session_response** %4, align 8
  %40 = getelementptr inbounds %struct.cache_mp_read_session_response, %struct.cache_mp_read_session_response* %39, i32 0, i32 0
  store i32 %38, i32* %40, align 4
  %41 = load %struct.cache_mp_read_session_request*, %struct.cache_mp_read_session_request** %3, align 8
  %42 = getelementptr inbounds %struct.cache_mp_read_session_request, %struct.cache_mp_read_session_request* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @LOG_ERR_2(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.1, i64 0, i64 0), i32 %43)
  br label %309

45:                                               ; preds = %1
  %46 = load %struct.query_state*, %struct.query_state** %2, align 8
  %47 = getelementptr inbounds %struct.query_state, %struct.query_state* %46, i32 0, i32 3
  %48 = load %struct.TYPE_10__*, %struct.TYPE_10__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = icmp eq i64 %50, 0
  br i1 %51, label %52, label %60

52:                                               ; preds = %45
  %53 = load i32, i32* @EACCES, align 4
  %54 = load %struct.cache_mp_read_session_response*, %struct.cache_mp_read_session_response** %4, align 8
  %55 = getelementptr inbounds %struct.cache_mp_read_session_response, %struct.cache_mp_read_session_response* %54, i32 0, i32 0
  store i32 %53, i32* %55, align 4
  %56 = load %struct.cache_mp_read_session_request*, %struct.cache_mp_read_session_request** %3, align 8
  %57 = getelementptr inbounds %struct.cache_mp_read_session_request, %struct.cache_mp_read_session_request* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @LOG_ERR_2(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i32 %58)
  br label %309

60:                                               ; preds = %45
  %61 = load %struct.query_state*, %struct.query_state** %2, align 8
  %62 = getelementptr inbounds %struct.query_state, %struct.query_state* %61, i32 0, i32 3
  %63 = load %struct.TYPE_10__*, %struct.TYPE_10__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %76

67:                                               ; preds = %60
  %68 = load %struct.query_state*, %struct.query_state** %2, align 8
  %69 = getelementptr inbounds %struct.query_state, %struct.query_state* %68, i32 0, i32 3
  %70 = load %struct.TYPE_10__*, %struct.TYPE_10__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %70, i32 0, i32 3
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = call i8* @strdup(i32 %74)
  store i8* %75, i8** %7, align 8
  br label %88

76:                                               ; preds = %60
  %77 = load %struct.query_state*, %struct.query_state** %2, align 8
  %78 = getelementptr inbounds %struct.query_state, %struct.query_state* %77, i32 0, i32 7
  %79 = load i32, i32* %78, align 8
  %80 = load %struct.query_state*, %struct.query_state** %2, align 8
  %81 = getelementptr inbounds %struct.query_state, %struct.query_state* %80, i32 0, i32 3
  %82 = load %struct.TYPE_10__*, %struct.TYPE_10__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %82, i32 0, i32 3
  %84 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = call i32 @asprintf(i8** %7, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i32 %79, i32 %86)
  br label %88

88:                                               ; preds = %76, %67
  %89 = load i8*, i8** %7, align 8
  %90 = icmp ne i8* %89, null
  %91 = zext i1 %90 to i32
  %92 = call i32 @assert(i32 %91)
  %93 = load i32, i32* @s_configuration, align 4
  %94 = call i32 @configuration_lock_rdlock(i32 %93)
  %95 = load i32, i32* @s_cache, align 4
  %96 = load i8*, i8** %7, align 8
  %97 = call i64 @find_cache_entry(i32 %95, i8* %96)
  store i64 %97, i64* %6, align 8
  %98 = load i32, i32* @s_configuration, align 4
  %99 = call i32 @configuration_unlock(i32 %98)
  %100 = load i64, i64* %6, align 8
  %101 = load i64, i64* @INVALID_CACHE, align 8
  %102 = icmp eq i64 %100, %101
  br i1 %102, label %103, label %114

103:                                              ; preds = %88
  %104 = load %struct.query_state*, %struct.query_state** %2, align 8
  %105 = getelementptr inbounds %struct.query_state, %struct.query_state* %104, i32 0, i32 3
  %106 = load %struct.TYPE_10__*, %struct.TYPE_10__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %106, i32 0, i32 1
  %108 = load i64, i64* %107, align 8
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %114

110:                                              ; preds = %103
  %111 = load %struct.query_state*, %struct.query_state** %2, align 8
  %112 = load i8*, i8** %7, align 8
  %113 = call i64 @register_new_mp_cache_entry(%struct.query_state* %111, i8* %112)
  store i64 %113, i64* %6, align 8
  br label %114

114:                                              ; preds = %110, %103, %88
  %115 = load i8*, i8** %7, align 8
  %116 = call i32 @free(i8* %115)
  %117 = load i64, i64* %6, align 8
  %118 = load i64, i64* @INVALID_CACHE_ENTRY, align 8
  %119 = icmp ne i64 %117, %118
  br i1 %119, label %120, label %305

120:                                              ; preds = %114
  %121 = load %struct.query_state*, %struct.query_state** %2, align 8
  %122 = getelementptr inbounds %struct.query_state, %struct.query_state* %121, i32 0, i32 3
  %123 = load %struct.TYPE_10__*, %struct.TYPE_10__** %122, align 8
  %124 = load i32, i32* @CELT_MULTIPART, align 4
  %125 = call i32 @configuration_lock_entry(%struct.TYPE_10__* %123, i32 %124)
  %126 = load i64, i64* %6, align 8
  %127 = call i64 @open_cache_mp_read_session(i64 %126)
  store i64 %127, i64* %5, align 8
  %128 = load %struct.query_state*, %struct.query_state** %2, align 8
  %129 = getelementptr inbounds %struct.query_state, %struct.query_state* %128, i32 0, i32 3
  %130 = load %struct.TYPE_10__*, %struct.TYPE_10__** %129, align 8
  %131 = load i32, i32* @CELT_MULTIPART, align 4
  %132 = call i32 @configuration_unlock_entry(%struct.TYPE_10__* %130, i32 %131)
  %133 = load i64, i64* %5, align 8
  %134 = load i64, i64* @INVALID_CACHE_MP_READ_SESSION, align 8
  %135 = icmp eq i64 %133, %134
  br i1 %135, label %136, label %256

136:                                              ; preds = %120
  %137 = load %struct.query_state*, %struct.query_state** %2, align 8
  %138 = getelementptr inbounds %struct.query_state, %struct.query_state* %137, i32 0, i32 3
  %139 = load %struct.TYPE_10__*, %struct.TYPE_10__** %138, align 8
  %140 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %139, i32 0, i32 1
  %141 = load i64, i64* %140, align 8
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %143, label %256

143:                                              ; preds = %136
  %144 = load i32, i32* @s_agent_table, align 4
  %145 = load %struct.cache_mp_read_session_request*, %struct.cache_mp_read_session_request** %3, align 8
  %146 = getelementptr inbounds %struct.cache_mp_read_session_request, %struct.cache_mp_read_session_request* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 4
  %148 = load i64, i64* @MULTIPART_AGENT, align 8
  %149 = call %struct.agent* @find_agent(i32 %144, i32 %147, i64 %148)
  store %struct.agent* %149, %struct.agent** %11, align 8
  %150 = load %struct.agent*, %struct.agent** %11, align 8
  %151 = icmp ne %struct.agent* %150, null
  br i1 %151, label %152, label %255

152:                                              ; preds = %143
  %153 = load %struct.agent*, %struct.agent** %11, align 8
  %154 = getelementptr inbounds %struct.agent, %struct.agent* %153, i32 0, i32 0
  %155 = load i64, i64* %154, align 8
  %156 = load i64, i64* @MULTIPART_AGENT, align 8
  %157 = icmp eq i64 %155, %156
  br i1 %157, label %158, label %255

158:                                              ; preds = %152
  %159 = load %struct.agent*, %struct.agent** %11, align 8
  %160 = bitcast %struct.agent* %159 to %struct.multipart_agent*
  store %struct.multipart_agent* %160, %struct.multipart_agent** %12, align 8
  %161 = load %struct.multipart_agent*, %struct.multipart_agent** %12, align 8
  %162 = getelementptr inbounds %struct.multipart_agent, %struct.multipart_agent* %161, i32 0, i32 1
  %163 = load i8* (...)*, i8* (...)** %162, align 8
  %164 = call i8* (...) %163()
  store i8* %164, i8** %13, align 8
  %165 = load %struct.query_state*, %struct.query_state** %2, align 8
  %166 = getelementptr inbounds %struct.query_state, %struct.query_state* %165, i32 0, i32 3
  %167 = load %struct.TYPE_10__*, %struct.TYPE_10__** %166, align 8
  %168 = load i32, i32* @CELT_MULTIPART, align 4
  %169 = call i32 @configuration_lock_entry(%struct.TYPE_10__* %167, i32 %168)
  %170 = load i64, i64* %6, align 8
  %171 = call i32* @open_cache_mp_write_session(i64 %170)
  store i32* %171, i32** %10, align 8
  %172 = load %struct.query_state*, %struct.query_state** %2, align 8
  %173 = getelementptr inbounds %struct.query_state, %struct.query_state* %172, i32 0, i32 3
  %174 = load %struct.TYPE_10__*, %struct.TYPE_10__** %173, align 8
  %175 = load i32, i32* @CELT_MULTIPART, align 4
  %176 = call i32 @configuration_unlock_entry(%struct.TYPE_10__* %174, i32 %175)
  %177 = load i32*, i32** %10, align 8
  %178 = icmp ne i32* %177, null
  br i1 %178, label %179, label %242

179:                                              ; preds = %158
  br label %180

180:                                              ; preds = %239, %179
  store i8* null, i8** %8, align 8
  %181 = load %struct.multipart_agent*, %struct.multipart_agent** %12, align 8
  %182 = getelementptr inbounds %struct.multipart_agent, %struct.multipart_agent* %181, i32 0, i32 0
  %183 = load i32 (i8**, i64*, i8*)*, i32 (i8**, i64*, i8*)** %182, align 8
  %184 = load i8*, i8** %13, align 8
  %185 = call i32 %183(i8** %8, i64* %9, i8* %184)
  store i32 %185, i32* %14, align 4
  %186 = load i32, i32* %14, align 4
  %187 = load i32, i32* @NS_TERMINATE, align 4
  %188 = and i32 %186, %187
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %190, label %215

190:                                              ; preds = %180
  %191 = load i8*, i8** %8, align 8
  %192 = icmp ne i8* %191, null
  br i1 %192, label %193, label %215

193:                                              ; preds = %190
  %194 = load %struct.query_state*, %struct.query_state** %2, align 8
  %195 = getelementptr inbounds %struct.query_state, %struct.query_state* %194, i32 0, i32 3
  %196 = load %struct.TYPE_10__*, %struct.TYPE_10__** %195, align 8
  %197 = load i32, i32* @CELT_MULTIPART, align 4
  %198 = call i32 @configuration_lock_entry(%struct.TYPE_10__* %196, i32 %197)
  %199 = load i32*, i32** %10, align 8
  %200 = load i8*, i8** %8, align 8
  %201 = load i64, i64* %9, align 8
  %202 = call i64 @cache_mp_write(i32* %199, i8* %200, i64 %201)
  %203 = icmp ne i64 %202, 0
  br i1 %203, label %204, label %207

204:                                              ; preds = %193
  %205 = load i32*, i32** %10, align 8
  %206 = call i32 @abandon_cache_mp_write_session(i32* %205)
  store i32* null, i32** %10, align 8
  br label %207

207:                                              ; preds = %204, %193
  %208 = load %struct.query_state*, %struct.query_state** %2, align 8
  %209 = getelementptr inbounds %struct.query_state, %struct.query_state* %208, i32 0, i32 3
  %210 = load %struct.TYPE_10__*, %struct.TYPE_10__** %209, align 8
  %211 = load i32, i32* @CELT_MULTIPART, align 4
  %212 = call i32 @configuration_unlock_entry(%struct.TYPE_10__* %210, i32 %211)
  %213 = load i8*, i8** %8, align 8
  %214 = call i32 @free(i8* %213)
  store i8* null, i8** %8, align 8
  br label %230

215:                                              ; preds = %190, %180
  %216 = load %struct.query_state*, %struct.query_state** %2, align 8
  %217 = getelementptr inbounds %struct.query_state, %struct.query_state* %216, i32 0, i32 3
  %218 = load %struct.TYPE_10__*, %struct.TYPE_10__** %217, align 8
  %219 = load i32, i32* @CELT_MULTIPART, align 4
  %220 = call i32 @configuration_lock_entry(%struct.TYPE_10__* %218, i32 %219)
  %221 = load i32*, i32** %10, align 8
  %222 = call i32 @close_cache_mp_write_session(i32* %221)
  %223 = load %struct.query_state*, %struct.query_state** %2, align 8
  %224 = getelementptr inbounds %struct.query_state, %struct.query_state* %223, i32 0, i32 3
  %225 = load %struct.TYPE_10__*, %struct.TYPE_10__** %224, align 8
  %226 = load i32, i32* @CELT_MULTIPART, align 4
  %227 = call i32 @configuration_unlock_entry(%struct.TYPE_10__* %225, i32 %226)
  %228 = load i8*, i8** %8, align 8
  %229 = call i32 @free(i8* %228)
  store i8* null, i8** %8, align 8
  br label %230

230:                                              ; preds = %215, %207
  br label %231

231:                                              ; preds = %230
  %232 = load i32, i32* %14, align 4
  %233 = load i32, i32* @NS_TERMINATE, align 4
  %234 = and i32 %232, %233
  %235 = icmp ne i32 %234, 0
  br i1 %235, label %236, label %239

236:                                              ; preds = %231
  %237 = load i32*, i32** %10, align 8
  %238 = icmp ne i32* %237, null
  br label %239

239:                                              ; preds = %236, %231
  %240 = phi i1 [ false, %231 ], [ %238, %236 ]
  br i1 %240, label %180, label %241

241:                                              ; preds = %239
  br label %242

242:                                              ; preds = %241, %158
  %243 = load %struct.query_state*, %struct.query_state** %2, align 8
  %244 = getelementptr inbounds %struct.query_state, %struct.query_state* %243, i32 0, i32 3
  %245 = load %struct.TYPE_10__*, %struct.TYPE_10__** %244, align 8
  %246 = load i32, i32* @CELT_MULTIPART, align 4
  %247 = call i32 @configuration_lock_entry(%struct.TYPE_10__* %245, i32 %246)
  %248 = load i64, i64* %6, align 8
  %249 = call i64 @open_cache_mp_read_session(i64 %248)
  store i64 %249, i64* %5, align 8
  %250 = load %struct.query_state*, %struct.query_state** %2, align 8
  %251 = getelementptr inbounds %struct.query_state, %struct.query_state* %250, i32 0, i32 3
  %252 = load %struct.TYPE_10__*, %struct.TYPE_10__** %251, align 8
  %253 = load i32, i32* @CELT_MULTIPART, align 4
  %254 = call i32 @configuration_unlock_entry(%struct.TYPE_10__* %252, i32 %253)
  br label %255

255:                                              ; preds = %242, %152, %143
  br label %256

256:                                              ; preds = %255, %136, %120
  %257 = load i64, i64* %5, align 8
  %258 = load i64, i64* @INVALID_CACHE_MP_READ_SESSION, align 8
  %259 = icmp eq i64 %257, %258
  br i1 %259, label %260, label %263

260:                                              ; preds = %256
  %261 = load %struct.cache_mp_read_session_response*, %struct.cache_mp_read_session_response** %4, align 8
  %262 = getelementptr inbounds %struct.cache_mp_read_session_response, %struct.cache_mp_read_session_response* %261, i32 0, i32 0
  store i32 -1, i32* %262, align 4
  br label %304

263:                                              ; preds = %256
  %264 = load i64, i64* %5, align 8
  %265 = load %struct.query_state*, %struct.query_state** %2, align 8
  %266 = getelementptr inbounds %struct.query_state, %struct.query_state* %265, i32 0, i32 6
  store i64 %264, i64* %266, align 8
  %267 = load i32, i32* @on_mp_read_session_destroy, align 4
  %268 = load %struct.query_state*, %struct.query_state** %2, align 8
  %269 = getelementptr inbounds %struct.query_state, %struct.query_state* %268, i32 0, i32 5
  store i32 %267, i32* %269, align 4
  %270 = load %struct.query_state*, %struct.query_state** %2, align 8
  %271 = getelementptr inbounds %struct.query_state, %struct.query_state* %270, i32 0, i32 3
  %272 = load %struct.TYPE_10__*, %struct.TYPE_10__** %271, align 8
  %273 = load i32, i32* @CELT_MULTIPART, align 4
  %274 = call i32 @configuration_lock_entry(%struct.TYPE_10__* %272, i32 %273)
  %275 = load %struct.query_state*, %struct.query_state** %2, align 8
  %276 = getelementptr inbounds %struct.query_state, %struct.query_state* %275, i32 0, i32 3
  %277 = load %struct.TYPE_10__*, %struct.TYPE_10__** %276, align 8
  %278 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %277, i32 0, i32 2
  %279 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %278, i32 0, i32 0
  %280 = load i64, i64* %279, align 8
  %281 = icmp ne i64 %280, 0
  br i1 %281, label %290, label %282

282:                                              ; preds = %263
  %283 = load %struct.query_state*, %struct.query_state** %2, align 8
  %284 = getelementptr inbounds %struct.query_state, %struct.query_state* %283, i32 0, i32 3
  %285 = load %struct.TYPE_10__*, %struct.TYPE_10__** %284, align 8
  %286 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %285, i32 0, i32 2
  %287 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %286, i32 0, i32 1
  %288 = load i64, i64* %287, align 8
  %289 = icmp ne i64 %288, 0
  br i1 %289, label %290, label %298

290:                                              ; preds = %282, %263
  %291 = load %struct.query_state*, %struct.query_state** %2, align 8
  %292 = getelementptr inbounds %struct.query_state, %struct.query_state* %291, i32 0, i32 4
  %293 = load %struct.query_state*, %struct.query_state** %2, align 8
  %294 = getelementptr inbounds %struct.query_state, %struct.query_state* %293, i32 0, i32 3
  %295 = load %struct.TYPE_10__*, %struct.TYPE_10__** %294, align 8
  %296 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %295, i32 0, i32 2
  %297 = call i32 @memcpy(i32* %292, %struct.TYPE_9__* %296, i32 4)
  br label %298

298:                                              ; preds = %290, %282
  %299 = load %struct.query_state*, %struct.query_state** %2, align 8
  %300 = getelementptr inbounds %struct.query_state, %struct.query_state* %299, i32 0, i32 3
  %301 = load %struct.TYPE_10__*, %struct.TYPE_10__** %300, align 8
  %302 = load i32, i32* @CELT_MULTIPART, align 4
  %303 = call i32 @configuration_unlock_entry(%struct.TYPE_10__* %301, i32 %302)
  br label %304

304:                                              ; preds = %298, %260
  br label %308

305:                                              ; preds = %114
  %306 = load %struct.cache_mp_read_session_response*, %struct.cache_mp_read_session_response** %4, align 8
  %307 = getelementptr inbounds %struct.cache_mp_read_session_response, %struct.cache_mp_read_session_response* %306, i32 0, i32 0
  store i32 -1, i32* %307, align 4
  br label %308

308:                                              ; preds = %305, %304
  br label %309

309:                                              ; preds = %308, %52, %37
  %310 = load i32, i32* @on_mp_read_session_response_write1, align 4
  %311 = load %struct.query_state*, %struct.query_state** %2, align 8
  %312 = getelementptr inbounds %struct.query_state, %struct.query_state* %311, i32 0, i32 2
  store i32 %310, i32* %312, align 8
  %313 = load %struct.query_state*, %struct.query_state** %2, align 8
  %314 = getelementptr inbounds %struct.query_state, %struct.query_state* %313, i32 0, i32 0
  store i32 4, i32* %314, align 8
  %315 = load i32, i32* @EVFILT_WRITE, align 4
  %316 = load %struct.query_state*, %struct.query_state** %2, align 8
  %317 = getelementptr inbounds %struct.query_state, %struct.query_state* %316, i32 0, i32 1
  store i32 %315, i32* %317, align 4
  %318 = call i32 @TRACE_OUT(i32 (%struct.query_state*)* @on_mp_read_session_request_process)
  ret i32 0
}

declare dso_local i32 @TRACE_IN(i32 (%struct.query_state*)*) #1

declare dso_local i32 @init_comm_element(i32*, i32) #1

declare dso_local %struct.cache_mp_read_session_response* @get_cache_mp_read_session_response(i32*) #1

declare dso_local %struct.cache_mp_read_session_request* @get_cache_mp_read_session_request(i32*) #1

declare dso_local %struct.TYPE_10__* @configuration_find_entry(i32, i32) #1

declare dso_local i32 @LOG_ERR_2(i8*, i8*, i32) #1

declare dso_local i8* @strdup(i32) #1

declare dso_local i32 @asprintf(i8**, i8*, i32, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @configuration_lock_rdlock(i32) #1

declare dso_local i64 @find_cache_entry(i32, i8*) #1

declare dso_local i32 @configuration_unlock(i32) #1

declare dso_local i64 @register_new_mp_cache_entry(%struct.query_state*, i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @configuration_lock_entry(%struct.TYPE_10__*, i32) #1

declare dso_local i64 @open_cache_mp_read_session(i64) #1

declare dso_local i32 @configuration_unlock_entry(%struct.TYPE_10__*, i32) #1

declare dso_local %struct.agent* @find_agent(i32, i32, i64) #1

declare dso_local i32* @open_cache_mp_write_session(i64) #1

declare dso_local i64 @cache_mp_write(i32*, i8*, i64) #1

declare dso_local i32 @abandon_cache_mp_write_session(i32*) #1

declare dso_local i32 @close_cache_mp_write_session(i32*) #1

declare dso_local i32 @memcpy(i32*, %struct.TYPE_9__*, i32) #1

declare dso_local i32 @TRACE_OUT(i32 (%struct.query_state*)*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
