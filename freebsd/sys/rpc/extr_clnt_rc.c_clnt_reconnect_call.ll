; ModuleID = '/home/carl/AnghaBench/freebsd/sys/rpc/extr_clnt_rc.c_clnt_reconnect_call.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/rpc/extr_clnt_rc.c_clnt_reconnect_call.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64 }
%struct.rpc_callextra = type { i32, i32 (i32, i32, i32)* }
%struct.mbuf = type { i32 }
%struct.timeval = type { i64, i64 }
%struct.rc_data = type { i32, i32, %struct.TYPE_10__*, %struct.TYPE_9__, i32, i64, i64 }
%struct.TYPE_9__ = type { i32, i64 }

@RPC_CANTSEND = common dso_local global i32 0, align 4
@RPC_SYSTEMERROR = common dso_local global i32 0, align 4
@fake_wchan = common dso_local global i32 0, align 4
@PCATCH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"rpccon\00", align 1
@hz = common dso_local global i32 0, align 4
@EINTR = common dso_local global i32 0, align 4
@ERESTART = common dso_local global i32 0, align 4
@RPC_INTR = common dso_local global i32 0, align 4
@RPC_SUCCESS = common dso_local global i32 0, align 4
@RPC_FAILED = common dso_local global i32 0, align 4
@RPC_TIMEDOUT = common dso_local global i32 0, align 4
@RPC_CANTRECV = common dso_local global i32 0, align 4
@FEEDBACK_RECONNECT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"RPC_SUCCESS without reply\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_10__*, %struct.rpc_callextra*, i32, %struct.mbuf*, %struct.mbuf**, %struct.timeval*)* @clnt_reconnect_call to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @clnt_reconnect_call(%struct.TYPE_10__* %0, %struct.rpc_callextra* %1, i32 %2, %struct.mbuf* %3, %struct.mbuf** %4, %struct.timeval* byval(%struct.timeval) align 8 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_10__*, align 8
  %9 = alloca %struct.rpc_callextra*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.mbuf*, align 8
  %12 = alloca %struct.mbuf**, align 8
  %13 = alloca %struct.rc_data*, align 8
  %14 = alloca %struct.TYPE_10__*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %8, align 8
  store %struct.rpc_callextra* %1, %struct.rpc_callextra** %9, align 8
  store i32 %2, i32* %10, align 4
  store %struct.mbuf* %3, %struct.mbuf** %11, align 8
  store %struct.mbuf** %4, %struct.mbuf*** %12, align 8
  %18 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %19 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = inttoptr i64 %20 to %struct.rc_data*
  store %struct.rc_data* %21, %struct.rc_data** %13, align 8
  store i32 0, i32* %16, align 4
  br label %22

22:                                               ; preds = %233, %6
  %23 = load %struct.rc_data*, %struct.rc_data** %13, align 8
  %24 = getelementptr inbounds %struct.rc_data, %struct.rc_data* %23, i32 0, i32 1
  %25 = call i32 @mtx_lock(i32* %24)
  %26 = load %struct.rc_data*, %struct.rc_data** %13, align 8
  %27 = getelementptr inbounds %struct.rc_data, %struct.rc_data* %26, i32 0, i32 6
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %22
  %31 = load %struct.rc_data*, %struct.rc_data** %13, align 8
  %32 = getelementptr inbounds %struct.rc_data, %struct.rc_data* %31, i32 0, i32 1
  %33 = call i32 @mtx_unlock(i32* %32)
  %34 = load i32, i32* @RPC_CANTSEND, align 4
  store i32 %34, i32* %7, align 4
  br label %250

35:                                               ; preds = %22
  %36 = load %struct.rc_data*, %struct.rc_data** %13, align 8
  %37 = getelementptr inbounds %struct.rc_data, %struct.rc_data* %36, i32 0, i32 2
  %38 = load %struct.TYPE_10__*, %struct.TYPE_10__** %37, align 8
  %39 = icmp ne %struct.TYPE_10__* %38, null
  br i1 %39, label %91, label %40

40:                                               ; preds = %35
  %41 = load %struct.rc_data*, %struct.rc_data** %13, align 8
  %42 = getelementptr inbounds %struct.rc_data, %struct.rc_data* %41, i32 0, i32 1
  %43 = call i32 @mtx_unlock(i32* %42)
  %44 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %45 = call i32 @clnt_reconnect_connect(%struct.TYPE_10__* %44)
  store i32 %45, i32* %15, align 4
  %46 = load i32, i32* %15, align 4
  %47 = load i32, i32* @RPC_SYSTEMERROR, align 4
  %48 = icmp eq i32 %46, %47
  br i1 %48, label %49, label %81

49:                                               ; preds = %40
  %50 = load %struct.rc_data*, %struct.rc_data** %13, align 8
  %51 = getelementptr inbounds %struct.rc_data, %struct.rc_data* %50, i32 0, i32 5
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %49
  %55 = load i32, i32* @PCATCH, align 4
  br label %57

56:                                               ; preds = %49
  br label %57

57:                                               ; preds = %56, %54
  %58 = phi i32 [ %55, %54 ], [ 0, %56 ]
  %59 = load i32, i32* @hz, align 4
  %60 = call i32 @tsleep(i32* @fake_wchan, i32 %58, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %59)
  store i32 %60, i32* %17, align 4
  %61 = load i32, i32* %17, align 4
  %62 = load i32, i32* @EINTR, align 4
  %63 = icmp eq i32 %61, %62
  br i1 %63, label %68, label %64

64:                                               ; preds = %57
  %65 = load i32, i32* %17, align 4
  %66 = load i32, i32* @ERESTART, align 4
  %67 = icmp eq i32 %65, %66
  br i1 %67, label %68, label %70

68:                                               ; preds = %64, %57
  %69 = load i32, i32* @RPC_INTR, align 4
  store i32 %69, i32* %7, align 4
  br label %250

70:                                               ; preds = %64
  %71 = load i32, i32* %16, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %16, align 4
  %73 = load i32, i32* %16, align 4
  %74 = load %struct.rc_data*, %struct.rc_data** %13, align 8
  %75 = getelementptr inbounds %struct.rc_data, %struct.rc_data* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = icmp sge i32 %73, %76
  br i1 %77, label %78, label %80

78:                                               ; preds = %70
  %79 = load i32, i32* %15, align 4
  store i32 %79, i32* %7, align 4
  br label %250

80:                                               ; preds = %70
  br label %233

81:                                               ; preds = %40
  %82 = load i32, i32* %15, align 4
  %83 = load i32, i32* @RPC_SUCCESS, align 4
  %84 = icmp ne i32 %82, %83
  br i1 %84, label %85, label %87

85:                                               ; preds = %81
  %86 = load i32, i32* %15, align 4
  store i32 %86, i32* %7, align 4
  br label %250

87:                                               ; preds = %81
  %88 = load %struct.rc_data*, %struct.rc_data** %13, align 8
  %89 = getelementptr inbounds %struct.rc_data, %struct.rc_data* %88, i32 0, i32 1
  %90 = call i32 @mtx_lock(i32* %89)
  br label %91

91:                                               ; preds = %87, %35
  %92 = load %struct.rc_data*, %struct.rc_data** %13, align 8
  %93 = getelementptr inbounds %struct.rc_data, %struct.rc_data* %92, i32 0, i32 2
  %94 = load %struct.TYPE_10__*, %struct.TYPE_10__** %93, align 8
  %95 = icmp ne %struct.TYPE_10__* %94, null
  br i1 %95, label %101, label %96

96:                                               ; preds = %91
  %97 = load %struct.rc_data*, %struct.rc_data** %13, align 8
  %98 = getelementptr inbounds %struct.rc_data, %struct.rc_data* %97, i32 0, i32 1
  %99 = call i32 @mtx_unlock(i32* %98)
  %100 = load i32, i32* @RPC_FAILED, align 4
  store i32 %100, i32* %15, align 4
  br label %233

101:                                              ; preds = %91
  %102 = load %struct.rc_data*, %struct.rc_data** %13, align 8
  %103 = getelementptr inbounds %struct.rc_data, %struct.rc_data* %102, i32 0, i32 2
  %104 = load %struct.TYPE_10__*, %struct.TYPE_10__** %103, align 8
  %105 = call i32 @CLNT_ACQUIRE(%struct.TYPE_10__* %104)
  %106 = load %struct.rc_data*, %struct.rc_data** %13, align 8
  %107 = getelementptr inbounds %struct.rc_data, %struct.rc_data* %106, i32 0, i32 2
  %108 = load %struct.TYPE_10__*, %struct.TYPE_10__** %107, align 8
  store %struct.TYPE_10__* %108, %struct.TYPE_10__** %14, align 8
  %109 = load %struct.rc_data*, %struct.rc_data** %13, align 8
  %110 = getelementptr inbounds %struct.rc_data, %struct.rc_data* %109, i32 0, i32 1
  %111 = call i32 @mtx_unlock(i32* %110)
  %112 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %113 = load %struct.rpc_callextra*, %struct.rpc_callextra** %9, align 8
  %114 = load i32, i32* %10, align 4
  %115 = load %struct.mbuf*, %struct.mbuf** %11, align 8
  %116 = load %struct.mbuf**, %struct.mbuf*** %12, align 8
  %117 = call i32 @CLNT_CALL_MBUF(%struct.TYPE_10__* %112, %struct.rpc_callextra* %113, i32 %114, %struct.mbuf* %115, %struct.mbuf** %116, %struct.timeval* byval(%struct.timeval) align 8 %5)
  store i32 %117, i32* %15, align 4
  %118 = load i32, i32* %15, align 4
  %119 = load i32, i32* @RPC_SUCCESS, align 4
  %120 = icmp ne i32 %118, %119
  br i1 %120, label %121, label %130

121:                                              ; preds = %101
  %122 = load %struct.rpc_callextra*, %struct.rpc_callextra** %9, align 8
  %123 = icmp ne %struct.rpc_callextra* %122, null
  br i1 %123, label %129, label %124

124:                                              ; preds = %121
  %125 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %126 = load %struct.rc_data*, %struct.rc_data** %13, align 8
  %127 = getelementptr inbounds %struct.rc_data, %struct.rc_data* %126, i32 0, i32 4
  %128 = call i32 @CLNT_GETERR(%struct.TYPE_10__* %125, i32* %127)
  br label %129

129:                                              ; preds = %124, %121
  br label %130

130:                                              ; preds = %129, %101
  %131 = load i32, i32* %15, align 4
  %132 = load i32, i32* @RPC_TIMEDOUT, align 4
  %133 = icmp eq i32 %131, %132
  br i1 %133, label %134, label %164

134:                                              ; preds = %130
  %135 = load %struct.rc_data*, %struct.rc_data** %13, align 8
  %136 = getelementptr inbounds %struct.rc_data, %struct.rc_data* %135, i32 0, i32 3
  %137 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  %139 = icmp eq i32 %138, 0
  br i1 %139, label %140, label %146

140:                                              ; preds = %134
  %141 = load %struct.rc_data*, %struct.rc_data** %13, align 8
  %142 = getelementptr inbounds %struct.rc_data, %struct.rc_data* %141, i32 0, i32 3
  %143 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %142, i32 0, i32 1
  %144 = load i64, i64* %143, align 8
  %145 = icmp eq i64 %144, 0
  br i1 %145, label %160, label %146

146:                                              ; preds = %140, %134
  %147 = load %struct.rc_data*, %struct.rc_data** %13, align 8
  %148 = getelementptr inbounds %struct.rc_data, %struct.rc_data* %147, i32 0, i32 3
  %149 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 8
  %151 = icmp eq i32 %150, -1
  br i1 %151, label %152, label %163

152:                                              ; preds = %146
  %153 = getelementptr inbounds %struct.timeval, %struct.timeval* %5, i32 0, i32 0
  %154 = load i64, i64* %153, align 8
  %155 = icmp eq i64 %154, 0
  br i1 %155, label %156, label %163

156:                                              ; preds = %152
  %157 = getelementptr inbounds %struct.timeval, %struct.timeval* %5, i32 0, i32 1
  %158 = load i64, i64* %157, align 8
  %159 = icmp eq i64 %158, 0
  br i1 %159, label %160, label %163

160:                                              ; preds = %156, %140
  %161 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %162 = call i32 @CLNT_RELEASE(%struct.TYPE_10__* %161)
  br label %237

163:                                              ; preds = %156, %152, %146
  br label %164

164:                                              ; preds = %163, %130
  %165 = load i32, i32* %15, align 4
  %166 = load i32, i32* @RPC_TIMEDOUT, align 4
  %167 = icmp eq i32 %165, %166
  br i1 %167, label %176, label %168

168:                                              ; preds = %164
  %169 = load i32, i32* %15, align 4
  %170 = load i32, i32* @RPC_CANTSEND, align 4
  %171 = icmp eq i32 %169, %170
  br i1 %171, label %176, label %172

172:                                              ; preds = %168
  %173 = load i32, i32* %15, align 4
  %174 = load i32, i32* @RPC_CANTRECV, align 4
  %175 = icmp eq i32 %173, %174
  br i1 %175, label %176, label %229

176:                                              ; preds = %172, %168, %164
  %177 = load i32, i32* %16, align 4
  %178 = add nsw i32 %177, 1
  store i32 %178, i32* %16, align 4
  %179 = load i32, i32* %16, align 4
  %180 = load %struct.rc_data*, %struct.rc_data** %13, align 8
  %181 = getelementptr inbounds %struct.rc_data, %struct.rc_data* %180, i32 0, i32 0
  %182 = load i32, i32* %181, align 8
  %183 = icmp sge i32 %179, %182
  br i1 %183, label %184, label %187

184:                                              ; preds = %176
  %185 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %186 = call i32 @CLNT_RELEASE(%struct.TYPE_10__* %185)
  br label %237

187:                                              ; preds = %176
  %188 = load %struct.rpc_callextra*, %struct.rpc_callextra** %9, align 8
  %189 = icmp ne %struct.rpc_callextra* %188, null
  br i1 %189, label %190, label %205

190:                                              ; preds = %187
  %191 = load %struct.rpc_callextra*, %struct.rpc_callextra** %9, align 8
  %192 = getelementptr inbounds %struct.rpc_callextra, %struct.rpc_callextra* %191, i32 0, i32 1
  %193 = load i32 (i32, i32, i32)*, i32 (i32, i32, i32)** %192, align 8
  %194 = icmp ne i32 (i32, i32, i32)* %193, null
  br i1 %194, label %195, label %205

195:                                              ; preds = %190
  %196 = load %struct.rpc_callextra*, %struct.rpc_callextra** %9, align 8
  %197 = getelementptr inbounds %struct.rpc_callextra, %struct.rpc_callextra* %196, i32 0, i32 1
  %198 = load i32 (i32, i32, i32)*, i32 (i32, i32, i32)** %197, align 8
  %199 = load i32, i32* @FEEDBACK_RECONNECT, align 4
  %200 = load i32, i32* %10, align 4
  %201 = load %struct.rpc_callextra*, %struct.rpc_callextra** %9, align 8
  %202 = getelementptr inbounds %struct.rpc_callextra, %struct.rpc_callextra* %201, i32 0, i32 0
  %203 = load i32, i32* %202, align 8
  %204 = call i32 %198(i32 %199, i32 %200, i32 %203)
  br label %205

205:                                              ; preds = %195, %190, %187
  %206 = load %struct.rc_data*, %struct.rc_data** %13, align 8
  %207 = getelementptr inbounds %struct.rc_data, %struct.rc_data* %206, i32 0, i32 1
  %208 = call i32 @mtx_lock(i32* %207)
  %209 = load %struct.rc_data*, %struct.rc_data** %13, align 8
  %210 = getelementptr inbounds %struct.rc_data, %struct.rc_data* %209, i32 0, i32 2
  %211 = load %struct.TYPE_10__*, %struct.TYPE_10__** %210, align 8
  %212 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %213 = icmp eq %struct.TYPE_10__* %211, %212
  br i1 %213, label %214, label %222

214:                                              ; preds = %205
  %215 = load %struct.rc_data*, %struct.rc_data** %13, align 8
  %216 = getelementptr inbounds %struct.rc_data, %struct.rc_data* %215, i32 0, i32 2
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %216, align 8
  %217 = load %struct.rc_data*, %struct.rc_data** %13, align 8
  %218 = getelementptr inbounds %struct.rc_data, %struct.rc_data* %217, i32 0, i32 1
  %219 = call i32 @mtx_unlock(i32* %218)
  %220 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %221 = call i32 @CLNT_RELEASE(%struct.TYPE_10__* %220)
  br label %226

222:                                              ; preds = %205
  %223 = load %struct.rc_data*, %struct.rc_data** %13, align 8
  %224 = getelementptr inbounds %struct.rc_data, %struct.rc_data* %223, i32 0, i32 1
  %225 = call i32 @mtx_unlock(i32* %224)
  br label %226

226:                                              ; preds = %222, %214
  %227 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %228 = call i32 @CLNT_RELEASE(%struct.TYPE_10__* %227)
  br label %232

229:                                              ; preds = %172
  %230 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %231 = call i32 @CLNT_RELEASE(%struct.TYPE_10__* %230)
  br label %237

232:                                              ; preds = %226
  br label %233

233:                                              ; preds = %232, %96, %80
  %234 = load i32, i32* %15, align 4
  %235 = load i32, i32* @RPC_SUCCESS, align 4
  %236 = icmp ne i32 %234, %235
  br i1 %236, label %22, label %237

237:                                              ; preds = %233, %229, %184, %160
  %238 = load i32, i32* %15, align 4
  %239 = load i32, i32* @RPC_SUCCESS, align 4
  %240 = icmp ne i32 %238, %239
  br i1 %240, label %245, label %241

241:                                              ; preds = %237
  %242 = load %struct.mbuf**, %struct.mbuf*** %12, align 8
  %243 = load %struct.mbuf*, %struct.mbuf** %242, align 8
  %244 = icmp ne %struct.mbuf* %243, null
  br label %245

245:                                              ; preds = %241, %237
  %246 = phi i1 [ true, %237 ], [ %244, %241 ]
  %247 = zext i1 %246 to i32
  %248 = call i32 @KASSERT(i32 %247, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %249 = load i32, i32* %15, align 4
  store i32 %249, i32* %7, align 4
  br label %250

250:                                              ; preds = %245, %85, %78, %68, %30
  %251 = load i32, i32* %7, align 4
  ret i32 %251
}

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @clnt_reconnect_connect(%struct.TYPE_10__*) #1

declare dso_local i32 @tsleep(i32*, i32, i8*, i32) #1

declare dso_local i32 @CLNT_ACQUIRE(%struct.TYPE_10__*) #1

declare dso_local i32 @CLNT_CALL_MBUF(%struct.TYPE_10__*, %struct.rpc_callextra*, i32, %struct.mbuf*, %struct.mbuf**, %struct.timeval* byval(%struct.timeval) align 8) #1

declare dso_local i32 @CLNT_GETERR(%struct.TYPE_10__*, i32*) #1

declare dso_local i32 @CLNT_RELEASE(%struct.TYPE_10__*) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
