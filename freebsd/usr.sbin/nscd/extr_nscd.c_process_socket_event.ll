; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/nscd/extr_nscd.c_process_socket_event.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/nscd/extr_nscd.c_process_socket_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kevent = type { i32, i32, i64, i64 }
%struct.runtime_env = type { i32 }
%struct.configuration = type { i32 }
%struct.timeval = type { i32, i64 }
%struct.timespec = type { i32 }
%struct.query_state = type { i32, i64, i64, i32, i32 (%struct.query_state*)*, i64, i32, i32*, i32*, i32, i32, %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i64 }

@EV_EOF = common dso_local global i32 0, align 4
@EVFILT_TIMER = common dso_local global i32 0, align 4
@EV_DELETE = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [21 x i8] c"process_socket_event\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"kevent error, errno is %d\00", align 1
@EVFILT_WRITE = common dso_local global i32 0, align 4
@MAX_SOCKET_IO_SIZE = common dso_local global i32 0, align 4
@EV_ADD = common dso_local global i32 0, align 4
@EV_ONESHOT = common dso_local global i32 0, align 4
@NOTE_LOWAT = common dso_local global i32 0, align 4
@query_io_buffer_read = common dso_local global i32 0, align 4
@query_io_buffer_write = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kevent*, %struct.runtime_env*, %struct.configuration*)* @process_socket_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @process_socket_event(%struct.kevent* %0, %struct.runtime_env* %1, %struct.configuration* %2) #0 {
  %4 = alloca %struct.kevent*, align 8
  %5 = alloca %struct.runtime_env*, align 8
  %6 = alloca %struct.configuration*, align 8
  %7 = alloca [2 x %struct.kevent], align 16
  %8 = alloca %struct.timeval, align 8
  %9 = alloca %struct.timespec, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca %struct.query_state*, align 8
  store %struct.kevent* %0, %struct.kevent** %4, align 8
  store %struct.runtime_env* %1, %struct.runtime_env** %5, align 8
  store %struct.configuration* %2, %struct.configuration** %6, align 8
  %15 = call i32 @TRACE_IN(void (%struct.kevent*, %struct.runtime_env*, %struct.configuration*)* @process_socket_event)
  %16 = load %struct.kevent*, %struct.kevent** %4, align 8
  %17 = getelementptr inbounds %struct.kevent, %struct.kevent* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @EV_EOF, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  %22 = zext i1 %21 to i64
  %23 = select i1 %21, i32 1, i32 0
  store i32 %23, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %24 = call i32 @memset(%struct.timespec* %9, i32 0, i32 4)
  %25 = getelementptr inbounds [2 x %struct.kevent], [2 x %struct.kevent]* %7, i64 0, i64 0
  %26 = load %struct.kevent*, %struct.kevent** %4, align 8
  %27 = getelementptr inbounds %struct.kevent, %struct.kevent* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @EVFILT_TIMER, align 4
  %30 = load i32, i32* @EV_DELETE, align 4
  %31 = call i32 @EV_SET(%struct.kevent* %25, i32 %28, i32 %29, i32 %30, i32 0, i32 0, %struct.query_state* null)
  %32 = load %struct.runtime_env*, %struct.runtime_env** %5, align 8
  %33 = getelementptr inbounds %struct.runtime_env, %struct.runtime_env* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = getelementptr inbounds [2 x %struct.kevent], [2 x %struct.kevent]* %7, i64 0, i64 0
  %36 = call i32 @kevent(i32 %34, %struct.kevent* %35, i32 1, i32* null, i32 0, %struct.timespec* %9)
  store i32 %36, i32* %10, align 4
  %37 = load i32, i32* %10, align 4
  %38 = icmp eq i32 %37, -1
  br i1 %38, label %39, label %49

39:                                               ; preds = %3
  %40 = load i64, i64* @errno, align 8
  %41 = load i64, i64* @ENOENT, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %45

43:                                               ; preds = %39
  %44 = call i32 @TRACE_OUT(void (%struct.kevent*, %struct.runtime_env*, %struct.configuration*)* @process_socket_event)
  br label %423

45:                                               ; preds = %39
  %46 = load i64, i64* @errno, align 8
  %47 = call i32 @LOG_ERR_2(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i64 %46)
  %48 = call i32 @TRACE_OUT(void (%struct.kevent*, %struct.runtime_env*, %struct.configuration*)* @process_socket_event)
  br label %423

49:                                               ; preds = %3
  %50 = load %struct.kevent*, %struct.kevent** %4, align 8
  %51 = getelementptr inbounds %struct.kevent, %struct.kevent* %50, i32 0, i32 3
  %52 = load i64, i64* %51, align 8
  %53 = inttoptr i64 %52 to %struct.query_state*
  store %struct.query_state* %53, %struct.query_state** %14, align 8
  %54 = load %struct.query_state*, %struct.query_state** %14, align 8
  %55 = getelementptr inbounds %struct.query_state, %struct.query_state* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %66

58:                                               ; preds = %49
  %59 = load %struct.query_state*, %struct.query_state** %14, align 8
  %60 = getelementptr inbounds %struct.query_state, %struct.query_state* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = load %struct.kevent*, %struct.kevent** %4, align 8
  %63 = getelementptr inbounds %struct.kevent, %struct.kevent* %62, i32 0, i32 2
  %64 = load i64, i64* %63, align 8
  %65 = icmp ule i64 %61, %64
  br i1 %65, label %79, label %66

66:                                               ; preds = %58, %49
  %67 = load %struct.query_state*, %struct.query_state** %14, align 8
  %68 = getelementptr inbounds %struct.query_state, %struct.query_state* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %202

71:                                               ; preds = %66
  %72 = load %struct.query_state*, %struct.query_state** %14, align 8
  %73 = getelementptr inbounds %struct.query_state, %struct.query_state* %72, i32 0, i32 2
  %74 = load i64, i64* %73, align 8
  %75 = load %struct.kevent*, %struct.kevent** %4, align 8
  %76 = getelementptr inbounds %struct.kevent, %struct.kevent* %75, i32 0, i32 2
  %77 = load i64, i64* %76, align 8
  %78 = icmp ule i64 %74, %77
  br i1 %78, label %79, label %202

79:                                               ; preds = %71, %58
  %80 = load %struct.query_state*, %struct.query_state** %14, align 8
  %81 = getelementptr inbounds %struct.query_state, %struct.query_state* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %133

84:                                               ; preds = %79
  %85 = load %struct.query_state*, %struct.query_state** %14, align 8
  %86 = getelementptr inbounds %struct.query_state, %struct.query_state* %85, i32 0, i32 3
  %87 = load i32, i32* %86, align 8
  switch i32 %87, label %131 [
    i32 128, label %88
  ]

88:                                               ; preds = %84
  %89 = load %struct.query_state*, %struct.query_state** %14, align 8
  %90 = load %struct.query_state*, %struct.query_state** %14, align 8
  %91 = getelementptr inbounds %struct.query_state, %struct.query_state* %90, i32 0, i32 7
  %92 = load i32*, i32** %91, align 8
  %93 = load %struct.query_state*, %struct.query_state** %14, align 8
  %94 = getelementptr inbounds %struct.query_state, %struct.query_state* %93, i32 0, i32 2
  %95 = load i64, i64* %94, align 8
  %96 = call i64 @query_socket_read(%struct.query_state* %89, i32* %92, i64 %95)
  store i64 %96, i64* %13, align 8
  %97 = load i64, i64* %13, align 8
  %98 = icmp slt i64 %97, 0
  br i1 %98, label %99, label %104

99:                                               ; preds = %88
  %100 = load %struct.query_state*, %struct.query_state** %14, align 8
  %101 = getelementptr inbounds %struct.query_state, %struct.query_state* %100, i32 0, i32 0
  store i32 0, i32* %101, align 8
  %102 = load %struct.query_state*, %struct.query_state** %14, align 8
  %103 = getelementptr inbounds %struct.query_state, %struct.query_state* %102, i32 0, i32 4
  store i32 (%struct.query_state*)* null, i32 (%struct.query_state*)** %103, align 8
  br label %130

104:                                              ; preds = %88
  %105 = load i64, i64* %13, align 8
  %106 = load %struct.query_state*, %struct.query_state** %14, align 8
  %107 = getelementptr inbounds %struct.query_state, %struct.query_state* %106, i32 0, i32 7
  %108 = load i32*, i32** %107, align 8
  %109 = getelementptr inbounds i32, i32* %108, i64 %105
  store i32* %109, i32** %107, align 8
  %110 = load %struct.query_state*, %struct.query_state** %14, align 8
  %111 = getelementptr inbounds %struct.query_state, %struct.query_state* %110, i32 0, i32 7
  %112 = load i32*, i32** %111, align 8
  %113 = load %struct.query_state*, %struct.query_state** %14, align 8
  %114 = getelementptr inbounds %struct.query_state, %struct.query_state* %113, i32 0, i32 8
  %115 = load i32*, i32** %114, align 8
  %116 = load %struct.query_state*, %struct.query_state** %14, align 8
  %117 = getelementptr inbounds %struct.query_state, %struct.query_state* %116, i32 0, i32 5
  %118 = load i64, i64* %117, align 8
  %119 = getelementptr inbounds i32, i32* %115, i64 %118
  %120 = icmp eq i32* %112, %119
  br i1 %120, label %121, label %129

121:                                              ; preds = %104
  %122 = load %struct.query_state*, %struct.query_state** %14, align 8
  %123 = getelementptr inbounds %struct.query_state, %struct.query_state* %122, i32 0, i32 8
  %124 = load i32*, i32** %123, align 8
  %125 = load %struct.query_state*, %struct.query_state** %14, align 8
  %126 = getelementptr inbounds %struct.query_state, %struct.query_state* %125, i32 0, i32 7
  store i32* %124, i32** %126, align 8
  %127 = load %struct.query_state*, %struct.query_state** %14, align 8
  %128 = getelementptr inbounds %struct.query_state, %struct.query_state* %127, i32 0, i32 0
  store i32 0, i32* %128, align 8
  br label %129

129:                                              ; preds = %121, %104
  br label %130

130:                                              ; preds = %129, %99
  br label %132

131:                                              ; preds = %84
  br label %132

132:                                              ; preds = %131, %130
  br label %133

133:                                              ; preds = %132, %79
  %134 = load %struct.query_state*, %struct.query_state** %14, align 8
  %135 = getelementptr inbounds %struct.query_state, %struct.query_state* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 8
  %137 = icmp eq i32 %136, 0
  br i1 %137, label %138, label %167

138:                                              ; preds = %133
  br label %139

139:                                              ; preds = %158, %138
  %140 = load %struct.query_state*, %struct.query_state** %14, align 8
  %141 = getelementptr inbounds %struct.query_state, %struct.query_state* %140, i32 0, i32 4
  %142 = load i32 (%struct.query_state*)*, i32 (%struct.query_state*)** %141, align 8
  %143 = load %struct.query_state*, %struct.query_state** %14, align 8
  %144 = call i32 %142(%struct.query_state* %143)
  store i32 %144, i32* %12, align 4
  br label %145

145:                                              ; preds = %139
  %146 = load %struct.query_state*, %struct.query_state** %14, align 8
  %147 = getelementptr inbounds %struct.query_state, %struct.query_state* %146, i32 0, i32 1
  %148 = load i64, i64* %147, align 8
  %149 = icmp eq i64 %148, 0
  br i1 %149, label %150, label %158

150:                                              ; preds = %145
  %151 = load %struct.query_state*, %struct.query_state** %14, align 8
  %152 = getelementptr inbounds %struct.query_state, %struct.query_state* %151, i32 0, i32 4
  %153 = load i32 (%struct.query_state*)*, i32 (%struct.query_state*)** %152, align 8
  %154 = icmp ne i32 (%struct.query_state*)* %153, null
  br i1 %154, label %155, label %158

155:                                              ; preds = %150
  %156 = load i32, i32* %12, align 4
  %157 = icmp eq i32 %156, 0
  br label %158

158:                                              ; preds = %155, %150, %145
  %159 = phi i1 [ false, %150 ], [ false, %145 ], [ %157, %155 ]
  br i1 %159, label %139, label %160

160:                                              ; preds = %158
  %161 = load i32, i32* %12, align 4
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %166

163:                                              ; preds = %160
  %164 = load %struct.query_state*, %struct.query_state** %14, align 8
  %165 = getelementptr inbounds %struct.query_state, %struct.query_state* %164, i32 0, i32 4
  store i32 (%struct.query_state*)* null, i32 (%struct.query_state*)** %165, align 8
  br label %166

166:                                              ; preds = %163, %160
  br label %167

167:                                              ; preds = %166, %133
  %168 = load %struct.query_state*, %struct.query_state** %14, align 8
  %169 = getelementptr inbounds %struct.query_state, %struct.query_state* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 8
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %201

172:                                              ; preds = %167
  %173 = load %struct.query_state*, %struct.query_state** %14, align 8
  %174 = getelementptr inbounds %struct.query_state, %struct.query_state* %173, i32 0, i32 3
  %175 = load i32, i32* %174, align 8
  %176 = load i32, i32* @EVFILT_WRITE, align 4
  %177 = icmp eq i32 %175, %176
  br i1 %177, label %178, label %201

178:                                              ; preds = %172
  %179 = load %struct.query_state*, %struct.query_state** %14, align 8
  %180 = load %struct.query_state*, %struct.query_state** %14, align 8
  %181 = getelementptr inbounds %struct.query_state, %struct.query_state* %180, i32 0, i32 7
  %182 = load i32*, i32** %181, align 8
  %183 = load %struct.query_state*, %struct.query_state** %14, align 8
  %184 = getelementptr inbounds %struct.query_state, %struct.query_state* %183, i32 0, i32 2
  %185 = load i64, i64* %184, align 8
  %186 = call i64 @query_socket_write(%struct.query_state* %179, i32* %182, i64 %185)
  store i64 %186, i64* %13, align 8
  %187 = load i64, i64* %13, align 8
  %188 = icmp slt i64 %187, 0
  br i1 %188, label %189, label %194

189:                                              ; preds = %178
  %190 = load %struct.query_state*, %struct.query_state** %14, align 8
  %191 = getelementptr inbounds %struct.query_state, %struct.query_state* %190, i32 0, i32 0
  store i32 0, i32* %191, align 8
  %192 = load %struct.query_state*, %struct.query_state** %14, align 8
  %193 = getelementptr inbounds %struct.query_state, %struct.query_state* %192, i32 0, i32 4
  store i32 (%struct.query_state*)* null, i32 (%struct.query_state*)** %193, align 8
  br label %200

194:                                              ; preds = %178
  %195 = load i64, i64* %13, align 8
  %196 = load %struct.query_state*, %struct.query_state** %14, align 8
  %197 = getelementptr inbounds %struct.query_state, %struct.query_state* %196, i32 0, i32 7
  %198 = load i32*, i32** %197, align 8
  %199 = getelementptr inbounds i32, i32* %198, i64 %195
  store i32* %199, i32** %197, align 8
  br label %200

200:                                              ; preds = %194, %189
  br label %201

201:                                              ; preds = %200, %172, %167
  br label %207

202:                                              ; preds = %71, %66
  %203 = load %struct.query_state*, %struct.query_state** %14, align 8
  %204 = getelementptr inbounds %struct.query_state, %struct.query_state* %203, i32 0, i32 4
  store i32 (%struct.query_state*)* null, i32 (%struct.query_state*)** %204, align 8
  %205 = load %struct.query_state*, %struct.query_state** %14, align 8
  %206 = getelementptr inbounds %struct.query_state, %struct.query_state* %205, i32 0, i32 0
  store i32 0, i32* %206, align 8
  br label %207

207:                                              ; preds = %202, %201
  %208 = load %struct.query_state*, %struct.query_state** %14, align 8
  %209 = getelementptr inbounds %struct.query_state, %struct.query_state* %208, i32 0, i32 4
  %210 = load i32 (%struct.query_state*)*, i32 (%struct.query_state*)** %209, align 8
  %211 = icmp eq i32 (%struct.query_state*)* %210, null
  br i1 %211, label %212, label %217

212:                                              ; preds = %207
  %213 = load %struct.query_state*, %struct.query_state** %14, align 8
  %214 = getelementptr inbounds %struct.query_state, %struct.query_state* %213, i32 0, i32 0
  %215 = load i32, i32* %214, align 8
  %216 = icmp eq i32 %215, 0
  br i1 %216, label %223, label %217

217:                                              ; preds = %212, %207
  %218 = load i32, i32* %11, align 4
  %219 = icmp ne i32 %218, 0
  br i1 %219, label %223, label %220

220:                                              ; preds = %217
  %221 = load i32, i32* %12, align 4
  %222 = icmp ne i32 %221, 0
  br i1 %222, label %223, label %231

223:                                              ; preds = %220, %217, %212
  %224 = load %struct.query_state*, %struct.query_state** %14, align 8
  %225 = call i32 @destroy_query_state(%struct.query_state* %224)
  %226 = load %struct.kevent*, %struct.kevent** %4, align 8
  %227 = getelementptr inbounds %struct.kevent, %struct.kevent* %226, i32 0, i32 1
  %228 = load i32, i32* %227, align 4
  %229 = call i32 @close(i32 %228)
  %230 = call i32 @TRACE_OUT(void (%struct.kevent*, %struct.runtime_env*, %struct.configuration*)* @process_socket_event)
  br label %423

231:                                              ; preds = %220
  %232 = call i32 @get_time_func(%struct.timeval* %8)
  %233 = getelementptr inbounds %struct.timeval, %struct.timeval* %8, i32 0, i32 1
  store i64 0, i64* %233, align 8
  %234 = load %struct.query_state*, %struct.query_state** %14, align 8
  %235 = getelementptr inbounds %struct.query_state, %struct.query_state* %234, i32 0, i32 12
  %236 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %235, i32 0, i32 0
  %237 = load i64, i64* %236, align 8
  %238 = getelementptr inbounds %struct.timeval, %struct.timeval* %8, i32 0, i32 0
  %239 = load i32, i32* %238, align 8
  %240 = sext i32 %239 to i64
  %241 = sub nsw i64 %240, %237
  %242 = trunc i64 %241 to i32
  store i32 %242, i32* %238, align 8
  %243 = getelementptr inbounds %struct.timeval, %struct.timeval* %8, i32 0, i32 0
  %244 = load i32, i32* %243, align 8
  %245 = load %struct.query_state*, %struct.query_state** %14, align 8
  %246 = getelementptr inbounds %struct.query_state, %struct.query_state* %245, i32 0, i32 11
  %247 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %246, i32 0, i32 0
  %248 = load i32, i32* %247, align 8
  %249 = icmp sgt i32 %244, %248
  br i1 %249, label %250, label %252

250:                                              ; preds = %231
  %251 = getelementptr inbounds %struct.timeval, %struct.timeval* %8, i32 0, i32 0
  store i32 0, i32* %251, align 8
  br label %261

252:                                              ; preds = %231
  %253 = load %struct.query_state*, %struct.query_state** %14, align 8
  %254 = getelementptr inbounds %struct.query_state, %struct.query_state* %253, i32 0, i32 11
  %255 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %254, i32 0, i32 0
  %256 = load i32, i32* %255, align 8
  %257 = getelementptr inbounds %struct.timeval, %struct.timeval* %8, i32 0, i32 0
  %258 = load i32, i32* %257, align 8
  %259 = sub nsw i32 %256, %258
  %260 = getelementptr inbounds %struct.timeval, %struct.timeval* %8, i32 0, i32 0
  store i32 %259, i32* %260, align 8
  br label %261

261:                                              ; preds = %252, %250
  %262 = load %struct.query_state*, %struct.query_state** %14, align 8
  %263 = getelementptr inbounds %struct.query_state, %struct.query_state* %262, i32 0, i32 0
  %264 = load i32, i32* %263, align 8
  %265 = icmp ne i32 %264, 0
  br i1 %265, label %266, label %281

266:                                              ; preds = %261
  %267 = load %struct.query_state*, %struct.query_state** %14, align 8
  %268 = getelementptr inbounds %struct.query_state, %struct.query_state* %267, i32 0, i32 7
  %269 = load i32*, i32** %268, align 8
  %270 = load %struct.query_state*, %struct.query_state** %14, align 8
  %271 = getelementptr inbounds %struct.query_state, %struct.query_state* %270, i32 0, i32 8
  %272 = load i32*, i32** %271, align 8
  %273 = load %struct.query_state*, %struct.query_state** %14, align 8
  %274 = getelementptr inbounds %struct.query_state, %struct.query_state* %273, i32 0, i32 5
  %275 = load i64, i64* %274, align 8
  %276 = getelementptr inbounds i32, i32* %272, i64 %275
  %277 = icmp eq i32* %269, %276
  br i1 %277, label %278, label %281

278:                                              ; preds = %266
  %279 = load %struct.query_state*, %struct.query_state** %14, align 8
  %280 = getelementptr inbounds %struct.query_state, %struct.query_state* %279, i32 0, i32 0
  store i32 0, i32* %280, align 8
  br label %281

281:                                              ; preds = %278, %266, %261
  %282 = load %struct.query_state*, %struct.query_state** %14, align 8
  %283 = getelementptr inbounds %struct.query_state, %struct.query_state* %282, i32 0, i32 0
  %284 = load i32, i32* %283, align 8
  %285 = icmp eq i32 %284, 0
  br i1 %285, label %286, label %331

286:                                              ; preds = %281
  %287 = load %struct.query_state*, %struct.query_state** %14, align 8
  %288 = getelementptr inbounds %struct.query_state, %struct.query_state* %287, i32 0, i32 1
  %289 = load i64, i64* %288, align 8
  %290 = load i32, i32* @MAX_SOCKET_IO_SIZE, align 4
  %291 = sext i32 %290 to i64
  %292 = icmp ugt i64 %289, %291
  br i1 %292, label %293, label %312

293:                                              ; preds = %286
  %294 = load i32, i32* @MAX_SOCKET_IO_SIZE, align 4
  %295 = sext i32 %294 to i64
  %296 = load %struct.query_state*, %struct.query_state** %14, align 8
  %297 = getelementptr inbounds %struct.query_state, %struct.query_state* %296, i32 0, i32 2
  store i64 %295, i64* %297, align 8
  %298 = getelementptr inbounds [2 x %struct.kevent], [2 x %struct.kevent]* %7, i64 0, i64 1
  %299 = load %struct.kevent*, %struct.kevent** %4, align 8
  %300 = getelementptr inbounds %struct.kevent, %struct.kevent* %299, i32 0, i32 1
  %301 = load i32, i32* %300, align 4
  %302 = load %struct.query_state*, %struct.query_state** %14, align 8
  %303 = getelementptr inbounds %struct.query_state, %struct.query_state* %302, i32 0, i32 6
  %304 = load i32, i32* %303, align 8
  %305 = load i32, i32* @EV_ADD, align 4
  %306 = load i32, i32* @EV_ONESHOT, align 4
  %307 = or i32 %305, %306
  %308 = load i32, i32* @NOTE_LOWAT, align 4
  %309 = load i32, i32* @MAX_SOCKET_IO_SIZE, align 4
  %310 = load %struct.query_state*, %struct.query_state** %14, align 8
  %311 = call i32 @EV_SET(%struct.kevent* %298, i32 %301, i32 %304, i32 %307, i32 %308, i32 %309, %struct.query_state* %310)
  br label %330

312:                                              ; preds = %286
  %313 = getelementptr inbounds [2 x %struct.kevent], [2 x %struct.kevent]* %7, i64 0, i64 1
  %314 = load %struct.kevent*, %struct.kevent** %4, align 8
  %315 = getelementptr inbounds %struct.kevent, %struct.kevent* %314, i32 0, i32 1
  %316 = load i32, i32* %315, align 4
  %317 = load %struct.query_state*, %struct.query_state** %14, align 8
  %318 = getelementptr inbounds %struct.query_state, %struct.query_state* %317, i32 0, i32 6
  %319 = load i32, i32* %318, align 8
  %320 = load i32, i32* @EV_ADD, align 4
  %321 = load i32, i32* @EV_ONESHOT, align 4
  %322 = or i32 %320, %321
  %323 = load i32, i32* @NOTE_LOWAT, align 4
  %324 = load %struct.query_state*, %struct.query_state** %14, align 8
  %325 = getelementptr inbounds %struct.query_state, %struct.query_state* %324, i32 0, i32 1
  %326 = load i64, i64* %325, align 8
  %327 = trunc i64 %326 to i32
  %328 = load %struct.query_state*, %struct.query_state** %14, align 8
  %329 = call i32 @EV_SET(%struct.kevent* %313, i32 %316, i32 %319, i32 %322, i32 %323, i32 %327, %struct.query_state* %328)
  br label %330

330:                                              ; preds = %312, %293
  br label %403

331:                                              ; preds = %281
  %332 = load %struct.query_state*, %struct.query_state** %14, align 8
  %333 = getelementptr inbounds %struct.query_state, %struct.query_state* %332, i32 0, i32 8
  %334 = load i32*, i32** %333, align 8
  %335 = load %struct.query_state*, %struct.query_state** %14, align 8
  %336 = getelementptr inbounds %struct.query_state, %struct.query_state* %335, i32 0, i32 5
  %337 = load i64, i64* %336, align 8
  %338 = getelementptr inbounds i32, i32* %334, i64 %337
  %339 = load %struct.query_state*, %struct.query_state** %14, align 8
  %340 = getelementptr inbounds %struct.query_state, %struct.query_state* %339, i32 0, i32 7
  %341 = load i32*, i32** %340, align 8
  %342 = ptrtoint i32* %338 to i64
  %343 = ptrtoint i32* %341 to i64
  %344 = sub i64 %342, %343
  %345 = sdiv exact i64 %344, 4
  %346 = load i32, i32* @MAX_SOCKET_IO_SIZE, align 4
  %347 = sext i32 %346 to i64
  %348 = icmp slt i64 %345, %347
  br i1 %348, label %349, label %383

349:                                              ; preds = %331
  %350 = load %struct.query_state*, %struct.query_state** %14, align 8
  %351 = getelementptr inbounds %struct.query_state, %struct.query_state* %350, i32 0, i32 8
  %352 = load i32*, i32** %351, align 8
  %353 = load %struct.query_state*, %struct.query_state** %14, align 8
  %354 = getelementptr inbounds %struct.query_state, %struct.query_state* %353, i32 0, i32 5
  %355 = load i64, i64* %354, align 8
  %356 = getelementptr inbounds i32, i32* %352, i64 %355
  %357 = load %struct.query_state*, %struct.query_state** %14, align 8
  %358 = getelementptr inbounds %struct.query_state, %struct.query_state* %357, i32 0, i32 7
  %359 = load i32*, i32** %358, align 8
  %360 = ptrtoint i32* %356 to i64
  %361 = ptrtoint i32* %359 to i64
  %362 = sub i64 %360, %361
  %363 = sdiv exact i64 %362, 4
  %364 = load %struct.query_state*, %struct.query_state** %14, align 8
  %365 = getelementptr inbounds %struct.query_state, %struct.query_state* %364, i32 0, i32 2
  store i64 %363, i64* %365, align 8
  %366 = getelementptr inbounds [2 x %struct.kevent], [2 x %struct.kevent]* %7, i64 0, i64 1
  %367 = load %struct.kevent*, %struct.kevent** %4, align 8
  %368 = getelementptr inbounds %struct.kevent, %struct.kevent* %367, i32 0, i32 1
  %369 = load i32, i32* %368, align 4
  %370 = load %struct.query_state*, %struct.query_state** %14, align 8
  %371 = getelementptr inbounds %struct.query_state, %struct.query_state* %370, i32 0, i32 3
  %372 = load i32, i32* %371, align 8
  %373 = load i32, i32* @EV_ADD, align 4
  %374 = load i32, i32* @EV_ONESHOT, align 4
  %375 = or i32 %373, %374
  %376 = load i32, i32* @NOTE_LOWAT, align 4
  %377 = load %struct.query_state*, %struct.query_state** %14, align 8
  %378 = getelementptr inbounds %struct.query_state, %struct.query_state* %377, i32 0, i32 2
  %379 = load i64, i64* %378, align 8
  %380 = trunc i64 %379 to i32
  %381 = load %struct.query_state*, %struct.query_state** %14, align 8
  %382 = call i32 @EV_SET(%struct.kevent* %366, i32 %369, i32 %372, i32 %375, i32 %376, i32 %380, %struct.query_state* %381)
  br label %402

383:                                              ; preds = %331
  %384 = load i32, i32* @MAX_SOCKET_IO_SIZE, align 4
  %385 = sext i32 %384 to i64
  %386 = load %struct.query_state*, %struct.query_state** %14, align 8
  %387 = getelementptr inbounds %struct.query_state, %struct.query_state* %386, i32 0, i32 2
  store i64 %385, i64* %387, align 8
  %388 = getelementptr inbounds [2 x %struct.kevent], [2 x %struct.kevent]* %7, i64 0, i64 1
  %389 = load %struct.kevent*, %struct.kevent** %4, align 8
  %390 = getelementptr inbounds %struct.kevent, %struct.kevent* %389, i32 0, i32 1
  %391 = load i32, i32* %390, align 4
  %392 = load %struct.query_state*, %struct.query_state** %14, align 8
  %393 = getelementptr inbounds %struct.query_state, %struct.query_state* %392, i32 0, i32 3
  %394 = load i32, i32* %393, align 8
  %395 = load i32, i32* @EV_ADD, align 4
  %396 = load i32, i32* @EV_ONESHOT, align 4
  %397 = or i32 %395, %396
  %398 = load i32, i32* @NOTE_LOWAT, align 4
  %399 = load i32, i32* @MAX_SOCKET_IO_SIZE, align 4
  %400 = load %struct.query_state*, %struct.query_state** %14, align 8
  %401 = call i32 @EV_SET(%struct.kevent* %388, i32 %391, i32 %394, i32 %397, i32 %398, i32 %399, %struct.query_state* %400)
  br label %402

402:                                              ; preds = %383, %349
  br label %403

403:                                              ; preds = %402, %330
  %404 = getelementptr inbounds [2 x %struct.kevent], [2 x %struct.kevent]* %7, i64 0, i64 0
  %405 = load %struct.kevent*, %struct.kevent** %4, align 8
  %406 = getelementptr inbounds %struct.kevent, %struct.kevent* %405, i32 0, i32 1
  %407 = load i32, i32* %406, align 4
  %408 = load i32, i32* @EVFILT_TIMER, align 4
  %409 = load i32, i32* @EV_ADD, align 4
  %410 = load i32, i32* @EV_ONESHOT, align 4
  %411 = or i32 %409, %410
  %412 = getelementptr inbounds %struct.timeval, %struct.timeval* %8, i32 0, i32 0
  %413 = load i32, i32* %412, align 8
  %414 = mul nsw i32 %413, 1000
  %415 = load %struct.query_state*, %struct.query_state** %14, align 8
  %416 = call i32 @EV_SET(%struct.kevent* %404, i32 %407, i32 %408, i32 %411, i32 0, i32 %414, %struct.query_state* %415)
  %417 = load %struct.runtime_env*, %struct.runtime_env** %5, align 8
  %418 = getelementptr inbounds %struct.runtime_env, %struct.runtime_env* %417, i32 0, i32 0
  %419 = load i32, i32* %418, align 4
  %420 = getelementptr inbounds [2 x %struct.kevent], [2 x %struct.kevent]* %7, i64 0, i64 0
  %421 = call i32 @kevent(i32 %419, %struct.kevent* %420, i32 2, i32* null, i32 0, %struct.timespec* %9)
  %422 = call i32 @TRACE_OUT(void (%struct.kevent*, %struct.runtime_env*, %struct.configuration*)* @process_socket_event)
  br label %423

423:                                              ; preds = %403, %223, %45, %43
  ret void
}

declare dso_local i32 @TRACE_IN(void (%struct.kevent*, %struct.runtime_env*, %struct.configuration*)*) #1

declare dso_local i32 @memset(%struct.timespec*, i32, i32) #1

declare dso_local i32 @EV_SET(%struct.kevent*, i32, i32, i32, i32, i32, %struct.query_state*) #1

declare dso_local i32 @kevent(i32, %struct.kevent*, i32, i32*, i32, %struct.timespec*) #1

declare dso_local i32 @TRACE_OUT(void (%struct.kevent*, %struct.runtime_env*, %struct.configuration*)*) #1

declare dso_local i32 @LOG_ERR_2(i8*, i8*, i64) #1

declare dso_local i64 @query_socket_read(%struct.query_state*, i32*, i64) #1

declare dso_local i64 @query_socket_write(%struct.query_state*, i32*, i64) #1

declare dso_local i32 @destroy_query_state(%struct.query_state*) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @get_time_func(%struct.timeval*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
