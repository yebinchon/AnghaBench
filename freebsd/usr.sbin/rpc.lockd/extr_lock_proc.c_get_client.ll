; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/rpc.lockd/extr_lock_proc.c_get_client.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/rpc.lockd/extr_lock_proc.c_get_client.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr = type { i64, i32 }
%struct.timeval = type { i64, i32 }
%struct.netconfig = type { i32 }

@NI_MAXHOST = common dso_local global i32 0, align 4
@CLIENT_CACHE_SIZE = common dso_local global i32 0, align 4
@clnt_cache_ptr = common dso_local global i32** null, align 8
@clnt_cache_time = common dso_local global i64* null, align 8
@CLIENT_CACHE_LIFETIME = common dso_local global i64 0, align 8
@debug_level = common dso_local global i32 0, align 4
@LOG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Expired CLIENT* in cache\00", align 1
@clnt_cache_addr = common dso_local global i32* null, align 8
@clnt_cache_vers = common dso_local global i64* null, align 8
@.str.1 = private unnamed_addr constant [23 x i8] c"Found CLIENT* in cache\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"CLIENT* not found in cache, creating\00", align 1
@clnt_cache_next_to_use = common dso_local global i64 0, align 8
@NI_NUMERICHOST = common dso_local global i32 0, align 4
@LOG_ERR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [41 x i8] c"unable to get name string for caller: %s\00", align 1
@AF_INET6 = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [5 x i8] c"udp6\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"udp\00", align 1
@.str.6 = private unnamed_addr constant [63 x i8] c"could not get netconfig info for '%s': no /etc/netconfig file?\00", align 1
@NLM_PROG = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.8 = private unnamed_addr constant [15 x i8] c"clntudp_create\00", align 1
@.str.9 = private unnamed_addr constant [30 x i8] c"Unable to return result to %s\00", align 1
@CLGET_FD = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [18 x i8] c"seteuid(0) failed\00", align 1
@.str.11 = private unnamed_addr constant [19 x i8] c"seteuid(%d) failed\00", align 1
@CLSET_TIMEOUT = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [23 x i8] c"Created CLIENT* for %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @get_client(%struct.sockaddr* %0, i64 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.sockaddr*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.timeval, align 8
  %8 = alloca %struct.timeval, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca %struct.netconfig*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.sockaddr* %0, %struct.sockaddr** %4, align 8
  store i64 %1, i64* %5, align 8
  %18 = load i32, i32* @NI_MAXHOST, align 4
  %19 = zext i32 %18 to i64
  %20 = call i8* @llvm.stacksave()
  store i8* %20, i8** %13, align 8
  %21 = alloca i8, i64 %19, align 16
  store i64 %19, i64* %14, align 8
  %22 = call i32 @gettimeofday(%struct.timeval* %8, i32* null)
  store i32 0, i32* %10, align 4
  br label %23

23:                                               ; preds = %92, %2
  %24 = load i32, i32* %10, align 4
  %25 = load i32, i32* @CLIENT_CACHE_SIZE, align 4
  %26 = icmp slt i32 %24, %25
  br i1 %26, label %27, label %95

27:                                               ; preds = %23
  %28 = load i32**, i32*** @clnt_cache_ptr, align 8
  %29 = load i32, i32* %10, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32*, i32** %28, i64 %30
  %32 = load i32*, i32** %31, align 8
  store i32* %32, i32** %6, align 8
  %33 = load i32*, i32** %6, align 8
  %34 = icmp ne i32* %33, null
  br i1 %34, label %35, label %63

35:                                               ; preds = %27
  %36 = load i64*, i64** @clnt_cache_time, align 8
  %37 = load i32, i32* %10, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i64, i64* %36, i64 %38
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @CLIENT_CACHE_LIFETIME, align 8
  %42 = add nsw i64 %40, %41
  %43 = getelementptr inbounds %struct.timeval, %struct.timeval* %8, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = icmp slt i64 %42, %44
  br i1 %45, label %46, label %63

46:                                               ; preds = %35
  %47 = load i32, i32* @debug_level, align 4
  %48 = icmp sgt i32 %47, 3
  br i1 %48, label %49, label %52

49:                                               ; preds = %46
  %50 = load i32, i32* @LOG_DEBUG, align 4
  %51 = call i32 (i32, i8*, ...) @syslog(i32 %50, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  br label %52

52:                                               ; preds = %49, %46
  %53 = load i64*, i64** @clnt_cache_time, align 8
  %54 = load i32, i32* %10, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i64, i64* %53, i64 %55
  store i64 0, i64* %56, align 8
  %57 = load i32*, i32** %6, align 8
  %58 = call i32 @clnt_destroy(i32* %57)
  %59 = load i32**, i32*** @clnt_cache_ptr, align 8
  %60 = load i32, i32* %10, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32*, i32** %59, i64 %61
  store i32* null, i32** %62, align 8
  store i32* null, i32** %6, align 8
  br label %63

63:                                               ; preds = %52, %35, %27
  %64 = load i32*, i32** %6, align 8
  %65 = icmp ne i32* %64, null
  br i1 %65, label %66, label %91

66:                                               ; preds = %63
  %67 = load i32*, i32** @clnt_cache_addr, align 8
  %68 = load i32, i32* %10, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i32, i32* %67, i64 %69
  %71 = bitcast i32* %70 to %struct.sockaddr*
  %72 = load %struct.sockaddr*, %struct.sockaddr** %4, align 8
  %73 = call i32 @addrcmp(%struct.sockaddr* %71, %struct.sockaddr* %72)
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %91, label %75

75:                                               ; preds = %66
  %76 = load i64*, i64** @clnt_cache_vers, align 8
  %77 = load i32, i32* %10, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i64, i64* %76, i64 %78
  %80 = load i64, i64* %79, align 8
  %81 = load i64, i64* %5, align 8
  %82 = icmp eq i64 %80, %81
  br i1 %82, label %83, label %91

83:                                               ; preds = %75
  %84 = load i32, i32* @debug_level, align 4
  %85 = icmp sgt i32 %84, 3
  br i1 %85, label %86, label %89

86:                                               ; preds = %83
  %87 = load i32, i32* @LOG_DEBUG, align 4
  %88 = call i32 (i32, i8*, ...) @syslog(i32 %87, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  br label %89

89:                                               ; preds = %86, %83
  %90 = load i32*, i32** %6, align 8
  store i32* %90, i32** %3, align 8
  store i32 1, i32* %17, align 4
  br label %225

91:                                               ; preds = %75, %66, %63
  br label %92

92:                                               ; preds = %91
  %93 = load i32, i32* %10, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %10, align 4
  br label %23

95:                                               ; preds = %23
  %96 = load i32, i32* @debug_level, align 4
  %97 = icmp sgt i32 %96, 3
  br i1 %97, label %98, label %101

98:                                               ; preds = %95
  %99 = load i32, i32* @LOG_DEBUG, align 4
  %100 = call i32 (i32, i8*, ...) @syslog(i32 %99, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0))
  br label %101

101:                                              ; preds = %98, %95
  %102 = load i32**, i32*** @clnt_cache_ptr, align 8
  %103 = load i64, i64* @clnt_cache_next_to_use, align 8
  %104 = getelementptr inbounds i32*, i32** %102, i64 %103
  %105 = load i32*, i32** %104, align 8
  %106 = icmp ne i32* %105, null
  br i1 %106, label %107, label %116

107:                                              ; preds = %101
  %108 = load i32**, i32*** @clnt_cache_ptr, align 8
  %109 = load i64, i64* @clnt_cache_next_to_use, align 8
  %110 = getelementptr inbounds i32*, i32** %108, i64 %109
  %111 = load i32*, i32** %110, align 8
  %112 = call i32 @clnt_destroy(i32* %111)
  %113 = load i32**, i32*** @clnt_cache_ptr, align 8
  %114 = load i64, i64* @clnt_cache_next_to_use, align 8
  %115 = getelementptr inbounds i32*, i32** %113, i64 %114
  store i32* null, i32** %115, align 8
  br label %116

116:                                              ; preds = %107, %101
  %117 = load %struct.sockaddr*, %struct.sockaddr** %4, align 8
  %118 = load %struct.sockaddr*, %struct.sockaddr** %4, align 8
  %119 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 8
  %121 = trunc i64 %19 to i32
  %122 = load i32, i32* @NI_NUMERICHOST, align 4
  %123 = call i32 @getnameinfo(%struct.sockaddr* %117, i32 %120, i8* %21, i32 %121, i32* null, i32 0, i32 %122)
  store i32 %123, i32* %9, align 4
  %124 = load i32, i32* %9, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %131

126:                                              ; preds = %116
  %127 = load i32, i32* @LOG_ERR, align 4
  %128 = load i32, i32* %9, align 4
  %129 = call i8* @gai_strerror(i32 %128)
  %130 = call i32 (i32, i8*, ...) @syslog(i32 %127, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0), i8* %129)
  store i32* null, i32** %3, align 8
  store i32 1, i32* %17, align 4
  br label %225

131:                                              ; preds = %116
  %132 = load %struct.sockaddr*, %struct.sockaddr** %4, align 8
  %133 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %132, i32 0, i32 0
  %134 = load i64, i64* %133, align 8
  %135 = load i64, i64* @AF_INET6, align 8
  %136 = icmp eq i64 %134, %135
  br i1 %136, label %137, label %138

137:                                              ; preds = %131
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8** %11, align 8
  br label %139

138:                                              ; preds = %131
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i8** %11, align 8
  br label %139

139:                                              ; preds = %138, %137
  %140 = load i8*, i8** %11, align 8
  %141 = call %struct.netconfig* @getnetconfigent(i8* %140)
  store %struct.netconfig* %141, %struct.netconfig** %12, align 8
  %142 = load %struct.netconfig*, %struct.netconfig** %12, align 8
  %143 = icmp eq %struct.netconfig* %142, null
  br i1 %143, label %144, label %148

144:                                              ; preds = %139
  %145 = load i32, i32* @LOG_ERR, align 4
  %146 = load i8*, i8** %11, align 8
  %147 = call i32 (i32, i8*, ...) @syslog(i32 %145, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.6, i64 0, i64 0), i8* %146)
  store i32* null, i32** %3, align 8
  store i32 1, i32* %17, align 4
  br label %225

148:                                              ; preds = %139
  %149 = load i32, i32* @NLM_PROG, align 4
  %150 = load i64, i64* %5, align 8
  %151 = load %struct.netconfig*, %struct.netconfig** %12, align 8
  %152 = call i32* @clnt_tp_create(i8* %21, i32 %149, i64 %150, %struct.netconfig* %151)
  store i32* %152, i32** %6, align 8
  %153 = load %struct.netconfig*, %struct.netconfig** %12, align 8
  %154 = call i32 @freenetconfigent(%struct.netconfig* %153)
  %155 = load i32*, i32** %6, align 8
  %156 = icmp ne i32* %155, null
  br i1 %156, label %163, label %157

157:                                              ; preds = %148
  %158 = load i32, i32* @LOG_ERR, align 4
  %159 = call i8* @clnt_spcreateerror(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i64 0, i64 0))
  %160 = call i32 (i32, i8*, ...) @syslog(i32 %158, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0), i8* %159)
  %161 = load i32, i32* @LOG_ERR, align 4
  %162 = call i32 (i32, i8*, ...) @syslog(i32 %161, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.9, i64 0, i64 0), i8* %21)
  store i32* null, i32** %3, align 8
  store i32 1, i32* %17, align 4
  br label %225

163:                                              ; preds = %148
  %164 = load i32*, i32** %6, align 8
  %165 = load i32, i32* @CLGET_FD, align 4
  %166 = call i32 (i32*, i32, ...) @clnt_control(i32* %164, i32 %165, i32* %16)
  %167 = call i8* (...) @geteuid()
  store i8* %167, i8** %15, align 8
  %168 = call i64 @seteuid(i8* null)
  %169 = icmp ne i64 %168, 0
  br i1 %169, label %170, label %173

170:                                              ; preds = %163
  %171 = load i32, i32* @LOG_ERR, align 4
  %172 = call i32 (i32, i8*, ...) @syslog(i32 %171, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.10, i64 0, i64 0))
  store i32* null, i32** %3, align 8
  store i32 1, i32* %17, align 4
  br label %225

173:                                              ; preds = %163
  %174 = load i32, i32* %16, align 4
  %175 = call i32 @bindresvport(i32 %174, i32* null)
  %176 = load i8*, i8** %15, align 8
  %177 = call i64 @seteuid(i8* %176)
  %178 = icmp ne i64 %177, 0
  br i1 %178, label %179, label %183

179:                                              ; preds = %173
  %180 = load i32, i32* @LOG_ERR, align 4
  %181 = load i8*, i8** %15, align 8
  %182 = call i32 (i32, i8*, ...) @syslog(i32 %180, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.11, i64 0, i64 0), i8* %181)
  store i32* null, i32** %3, align 8
  store i32 1, i32* %17, align 4
  br label %225

183:                                              ; preds = %173
  %184 = load i32*, i32** %6, align 8
  %185 = load i32**, i32*** @clnt_cache_ptr, align 8
  %186 = load i64, i64* @clnt_cache_next_to_use, align 8
  %187 = getelementptr inbounds i32*, i32** %185, i64 %186
  store i32* %184, i32** %187, align 8
  %188 = load i32*, i32** @clnt_cache_addr, align 8
  %189 = load i64, i64* @clnt_cache_next_to_use, align 8
  %190 = getelementptr inbounds i32, i32* %188, i64 %189
  %191 = load %struct.sockaddr*, %struct.sockaddr** %4, align 8
  %192 = load %struct.sockaddr*, %struct.sockaddr** %4, align 8
  %193 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %192, i32 0, i32 1
  %194 = load i32, i32* %193, align 8
  %195 = call i32 @memcpy(i32* %190, %struct.sockaddr* %191, i32 %194)
  %196 = load i64, i64* %5, align 8
  %197 = load i64*, i64** @clnt_cache_vers, align 8
  %198 = load i64, i64* @clnt_cache_next_to_use, align 8
  %199 = getelementptr inbounds i64, i64* %197, i64 %198
  store i64 %196, i64* %199, align 8
  %200 = getelementptr inbounds %struct.timeval, %struct.timeval* %8, i32 0, i32 0
  %201 = load i64, i64* %200, align 8
  %202 = load i64*, i64** @clnt_cache_time, align 8
  %203 = load i64, i64* @clnt_cache_next_to_use, align 8
  %204 = getelementptr inbounds i64, i64* %202, i64 %203
  store i64 %201, i64* %204, align 8
  %205 = load i64, i64* @clnt_cache_next_to_use, align 8
  %206 = add i64 %205, 1
  store i64 %206, i64* @clnt_cache_next_to_use, align 8
  %207 = load i32, i32* @CLIENT_CACHE_SIZE, align 4
  %208 = sext i32 %207 to i64
  %209 = icmp uge i64 %206, %208
  br i1 %209, label %210, label %211

210:                                              ; preds = %183
  store i64 0, i64* @clnt_cache_next_to_use, align 8
  br label %211

211:                                              ; preds = %210, %183
  %212 = getelementptr inbounds %struct.timeval, %struct.timeval* %7, i32 0, i32 0
  store i64 -1, i64* %212, align 8
  %213 = getelementptr inbounds %struct.timeval, %struct.timeval* %7, i32 0, i32 1
  store i32 -1, i32* %213, align 8
  %214 = load i32*, i32** %6, align 8
  %215 = load i32, i32* @CLSET_TIMEOUT, align 4
  %216 = bitcast %struct.timeval* %7 to i8*
  %217 = call i32 (i32*, i32, ...) @clnt_control(i32* %214, i32 %215, i8* %216)
  %218 = load i32, i32* @debug_level, align 4
  %219 = icmp sgt i32 %218, 3
  br i1 %219, label %220, label %223

220:                                              ; preds = %211
  %221 = load i32, i32* @LOG_DEBUG, align 4
  %222 = call i32 (i32, i8*, ...) @syslog(i32 %221, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.12, i64 0, i64 0), i8* %21)
  br label %223

223:                                              ; preds = %220, %211
  %224 = load i32*, i32** %6, align 8
  store i32* %224, i32** %3, align 8
  store i32 1, i32* %17, align 4
  br label %225

225:                                              ; preds = %223, %179, %170, %157, %144, %126, %89
  %226 = load i8*, i8** %13, align 8
  call void @llvm.stackrestore(i8* %226)
  %227 = load i32*, i32** %3, align 8
  ret i32* %227
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @gettimeofday(%struct.timeval*, i32*) #2

declare dso_local i32 @syslog(i32, i8*, ...) #2

declare dso_local i32 @clnt_destroy(i32*) #2

declare dso_local i32 @addrcmp(%struct.sockaddr*, %struct.sockaddr*) #2

declare dso_local i32 @getnameinfo(%struct.sockaddr*, i32, i8*, i32, i32*, i32, i32) #2

declare dso_local i8* @gai_strerror(i32) #2

declare dso_local %struct.netconfig* @getnetconfigent(i8*) #2

declare dso_local i32* @clnt_tp_create(i8*, i32, i64, %struct.netconfig*) #2

declare dso_local i32 @freenetconfigent(%struct.netconfig*) #2

declare dso_local i8* @clnt_spcreateerror(i8*) #2

declare dso_local i32 @clnt_control(i32*, i32, ...) #2

declare dso_local i8* @geteuid(...) #2

declare dso_local i64 @seteuid(i8*) #2

declare dso_local i32 @bindresvport(i32, i32*) #2

declare dso_local i32 @memcpy(i32*, %struct.sockaddr*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
