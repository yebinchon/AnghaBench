; ModuleID = '/home/carl/AnghaBench/freebsd/sys/nlm/extr_nlm_prot_impl.c_nlm_do_test.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/nlm/extr_nlm_prot_impl.c_nlm_do_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i64, %struct.TYPE_7__, i32 }
%struct.TYPE_7__ = type { i32, i32, i32, i32, i32 }
%struct.vfs_state = type { %struct.TYPE_10__, i32, i32 }
%struct.TYPE_10__ = type { %struct.TYPE_9__, i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i32, i32, i32 }
%struct.svc_req = type { i32 }
%struct.nlm_host = type { i32, i32 }
%struct.flock = type { i32, i64, i32, i32, i32, i32 }

@nlm4_denied_nolocks = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"nlm_do_test(): caller_name = %s (sysid = %d)\0A\00", align 1
@M_RPC = common dso_local global i32 0, align 4
@time_uptime = common dso_local global i64 0, align 8
@nlm_grace_threshold = common dso_local global i64 0, align 8
@nlm4_denied_grace_period = common dso_local global i32 0, align 4
@VWRITE = common dso_local global i32 0, align 4
@VREAD = common dso_local global i32 0, align 4
@SEEK_SET = common dso_local global i32 0, align 4
@F_WRLCK = common dso_local global i64 0, align 8
@F_RDLCK = common dso_local global i64 0, align 8
@F_GETLK = common dso_local global i32 0, align 4
@F_REMOTE = common dso_local global i32 0, align 4
@nlm4_failed = common dso_local global i32 0, align 4
@F_UNLCK = common dso_local global i64 0, align 8
@nlm4_granted = common dso_local global i32 0, align 4
@nlm4_denied = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nlm_do_test(%struct.TYPE_11__* %0, %struct.vfs_state* %1, %struct.svc_req* %2, i32** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca %struct.vfs_state*, align 8
  %8 = alloca %struct.svc_req*, align 8
  %9 = alloca i32**, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.vfs_state, align 4
  %12 = alloca %struct.nlm_host*, align 8
  %13 = alloca %struct.nlm_host*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.flock, align 8
  %17 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %6, align 8
  store %struct.vfs_state* %1, %struct.vfs_state** %7, align 8
  store %struct.svc_req* %2, %struct.svc_req** %8, align 8
  store i32** %3, i32*** %9, align 8
  %18 = load %struct.vfs_state*, %struct.vfs_state** %7, align 8
  %19 = call i32 @memset(%struct.vfs_state* %18, i32 0, i32 28)
  %20 = call i32 @memset(%struct.vfs_state* %11, i32 0, i32 28)
  %21 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 4
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.svc_req*, %struct.svc_req** %8, align 8
  %26 = call i32 @svc_getrpccaller(%struct.svc_req* %25)
  %27 = load %struct.svc_req*, %struct.svc_req** %8, align 8
  %28 = getelementptr inbounds %struct.svc_req, %struct.svc_req* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call %struct.nlm_host* @nlm_find_host_by_name(i32 %24, i32 %26, i32 %29)
  store %struct.nlm_host* %30, %struct.nlm_host** %12, align 8
  %31 = load %struct.nlm_host*, %struct.nlm_host** %12, align 8
  %32 = icmp ne %struct.nlm_host* %31, null
  br i1 %32, label %39, label %33

33:                                               ; preds = %4
  %34 = load i32, i32* @nlm4_denied_nolocks, align 4
  %35 = load %struct.vfs_state*, %struct.vfs_state** %7, align 8
  %36 = getelementptr inbounds %struct.vfs_state, %struct.vfs_state* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %36, i32 0, i32 1
  store i32 %34, i32* %37, align 4
  %38 = load i32, i32* @ENOMEM, align 4
  store i32 %38, i32* %5, align 4
  br label %204

39:                                               ; preds = %4
  %40 = load %struct.nlm_host*, %struct.nlm_host** %12, align 8
  %41 = getelementptr inbounds %struct.nlm_host, %struct.nlm_host* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.nlm_host*, %struct.nlm_host** %12, align 8
  %44 = getelementptr inbounds %struct.nlm_host, %struct.nlm_host* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @NLM_DEBUG(i32 3, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %42, i32 %45)
  %47 = load %struct.nlm_host*, %struct.nlm_host** %12, align 8
  %48 = call i32 @nlm_check_expired_locks(%struct.nlm_host* %47)
  %49 = load %struct.nlm_host*, %struct.nlm_host** %12, align 8
  %50 = getelementptr inbounds %struct.nlm_host, %struct.nlm_host* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  store i32 %51, i32* %15, align 4
  %52 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %53 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 3
  %55 = call i32 @nlm_convert_to_fhandle_t(i32* %10, i32* %54)
  %56 = load %struct.vfs_state*, %struct.vfs_state** %7, align 8
  %57 = getelementptr inbounds %struct.vfs_state, %struct.vfs_state* %56, i32 0, i32 2
  %58 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %59 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %58, i32 0, i32 2
  %60 = load i32, i32* @M_RPC, align 4
  %61 = call i32 @nlm_copy_netobj(i32* %57, i32* %59, i32 %60)
  %62 = load i64, i64* @time_uptime, align 8
  %63 = load i64, i64* @nlm_grace_threshold, align 8
  %64 = icmp slt i64 %62, %63
  br i1 %64, label %65, label %70

65:                                               ; preds = %39
  %66 = load i32, i32* @nlm4_denied_grace_period, align 4
  %67 = load %struct.vfs_state*, %struct.vfs_state** %7, align 8
  %68 = getelementptr inbounds %struct.vfs_state, %struct.vfs_state* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %68, i32 0, i32 1
  store i32 %66, i32* %69, align 4
  br label %192

70:                                               ; preds = %39
  %71 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %72 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %77

75:                                               ; preds = %70
  %76 = load i32, i32* @VWRITE, align 4
  br label %79

77:                                               ; preds = %70
  %78 = load i32, i32* @VREAD, align 4
  br label %79

79:                                               ; preds = %77, %75
  %80 = phi i32 [ %76, %75 ], [ %78, %77 ]
  store i32 %80, i32* %17, align 4
  %81 = load %struct.nlm_host*, %struct.nlm_host** %12, align 8
  %82 = load %struct.svc_req*, %struct.svc_req** %8, align 8
  %83 = load i32, i32* %17, align 4
  %84 = call i32 @nlm_get_vfs_state(%struct.nlm_host* %81, %struct.svc_req* %82, i32* %10, %struct.vfs_state* %11, i32 %83)
  store i32 %84, i32* %14, align 4
  %85 = load i32, i32* %14, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %93

87:                                               ; preds = %79
  %88 = load i32, i32* %14, align 4
  %89 = call i32 @nlm_convert_error(i32 %88)
  %90 = load %struct.vfs_state*, %struct.vfs_state** %7, align 8
  %91 = getelementptr inbounds %struct.vfs_state, %struct.vfs_state* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %91, i32 0, i32 1
  store i32 %89, i32* %92, align 4
  br label %192

93:                                               ; preds = %79
  %94 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %95 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %94, i32 0, i32 1
  %96 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %95, i32 0, i32 2
  %97 = load i32, i32* %96, align 8
  %98 = getelementptr inbounds %struct.flock, %struct.flock* %16, i32 0, i32 3
  store i32 %97, i32* %98, align 4
  %99 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %100 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %99, i32 0, i32 1
  %101 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = getelementptr inbounds %struct.flock, %struct.flock* %16, i32 0, i32 2
  store i32 %102, i32* %103, align 8
  %104 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %105 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %104, i32 0, i32 1
  %106 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = getelementptr inbounds %struct.flock, %struct.flock* %16, i32 0, i32 4
  store i32 %107, i32* %108, align 8
  %109 = load i32, i32* %15, align 4
  %110 = getelementptr inbounds %struct.flock, %struct.flock* %16, i32 0, i32 0
  store i32 %109, i32* %110, align 8
  %111 = load i32, i32* @SEEK_SET, align 4
  %112 = getelementptr inbounds %struct.flock, %struct.flock* %16, i32 0, i32 5
  store i32 %111, i32* %112, align 4
  %113 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %114 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %120

117:                                              ; preds = %93
  %118 = load i64, i64* @F_WRLCK, align 8
  %119 = getelementptr inbounds %struct.flock, %struct.flock* %16, i32 0, i32 1
  store i64 %118, i64* %119, align 8
  br label %123

120:                                              ; preds = %93
  %121 = load i64, i64* @F_RDLCK, align 8
  %122 = getelementptr inbounds %struct.flock, %struct.flock* %16, i32 0, i32 1
  store i64 %121, i64* %122, align 8
  br label %123

123:                                              ; preds = %120, %117
  %124 = getelementptr inbounds %struct.vfs_state, %struct.vfs_state* %11, i32 0, i32 1
  %125 = load i32, i32* %124, align 4
  %126 = load i32, i32* @F_GETLK, align 4
  %127 = load i32, i32* @F_REMOTE, align 4
  %128 = call i32 @VOP_ADVLOCK(i32 %125, i32* null, i32 %126, %struct.flock* %16, i32 %127)
  store i32 %128, i32* %14, align 4
  %129 = load i32, i32* %14, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %136

131:                                              ; preds = %123
  %132 = load i32, i32* @nlm4_failed, align 4
  %133 = load %struct.vfs_state*, %struct.vfs_state** %7, align 8
  %134 = getelementptr inbounds %struct.vfs_state, %struct.vfs_state* %133, i32 0, i32 0
  %135 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %134, i32 0, i32 1
  store i32 %132, i32* %135, align 4
  br label %192

136:                                              ; preds = %123
  %137 = getelementptr inbounds %struct.flock, %struct.flock* %16, i32 0, i32 1
  %138 = load i64, i64* %137, align 8
  %139 = load i64, i64* @F_UNLCK, align 8
  %140 = icmp eq i64 %138, %139
  br i1 %140, label %141, label %146

141:                                              ; preds = %136
  %142 = load i32, i32* @nlm4_granted, align 4
  %143 = load %struct.vfs_state*, %struct.vfs_state** %7, align 8
  %144 = getelementptr inbounds %struct.vfs_state, %struct.vfs_state* %143, i32 0, i32 0
  %145 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %144, i32 0, i32 1
  store i32 %142, i32* %145, align 4
  br label %191

146:                                              ; preds = %136
  %147 = load i32, i32* @nlm4_denied, align 4
  %148 = load %struct.vfs_state*, %struct.vfs_state** %7, align 8
  %149 = getelementptr inbounds %struct.vfs_state, %struct.vfs_state* %148, i32 0, i32 0
  %150 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %149, i32 0, i32 1
  store i32 %147, i32* %150, align 4
  %151 = getelementptr inbounds %struct.flock, %struct.flock* %16, i32 0, i32 1
  %152 = load i64, i64* %151, align 8
  %153 = load i64, i64* @F_WRLCK, align 8
  %154 = icmp eq i64 %152, %153
  %155 = zext i1 %154 to i32
  %156 = load %struct.vfs_state*, %struct.vfs_state** %7, align 8
  %157 = getelementptr inbounds %struct.vfs_state, %struct.vfs_state* %156, i32 0, i32 0
  %158 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %157, i32 0, i32 0
  %159 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %158, i32 0, i32 0
  %160 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %159, i32 0, i32 0
  store i32 %155, i32* %160, align 4
  %161 = getelementptr inbounds %struct.flock, %struct.flock* %16, i32 0, i32 4
  %162 = load i32, i32* %161, align 8
  %163 = load %struct.vfs_state*, %struct.vfs_state** %7, align 8
  %164 = getelementptr inbounds %struct.vfs_state, %struct.vfs_state* %163, i32 0, i32 0
  %165 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %164, i32 0, i32 0
  %166 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %165, i32 0, i32 0
  %167 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %166, i32 0, i32 3
  store i32 %162, i32* %167, align 4
  %168 = getelementptr inbounds %struct.flock, %struct.flock* %16, i32 0, i32 0
  %169 = load i32, i32* %168, align 8
  %170 = call %struct.nlm_host* @nlm_find_host_by_sysid(i32 %169)
  store %struct.nlm_host* %170, %struct.nlm_host** %13, align 8
  %171 = load %struct.nlm_host*, %struct.nlm_host** %13, align 8
  %172 = icmp ne %struct.nlm_host* %171, null
  br i1 %172, label %173, label %176

173:                                              ; preds = %146
  %174 = load %struct.nlm_host*, %struct.nlm_host** %13, align 8
  %175 = call i32 @nlm_host_release(%struct.nlm_host* %174)
  br label %176

176:                                              ; preds = %173, %146
  %177 = getelementptr inbounds %struct.flock, %struct.flock* %16, i32 0, i32 3
  %178 = load i32, i32* %177, align 4
  %179 = load %struct.vfs_state*, %struct.vfs_state** %7, align 8
  %180 = getelementptr inbounds %struct.vfs_state, %struct.vfs_state* %179, i32 0, i32 0
  %181 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %180, i32 0, i32 0
  %182 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %181, i32 0, i32 0
  %183 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %182, i32 0, i32 2
  store i32 %178, i32* %183, align 4
  %184 = getelementptr inbounds %struct.flock, %struct.flock* %16, i32 0, i32 2
  %185 = load i32, i32* %184, align 8
  %186 = load %struct.vfs_state*, %struct.vfs_state** %7, align 8
  %187 = getelementptr inbounds %struct.vfs_state, %struct.vfs_state* %186, i32 0, i32 0
  %188 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %187, i32 0, i32 0
  %189 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %188, i32 0, i32 0
  %190 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %189, i32 0, i32 1
  store i32 %185, i32* %190, align 4
  br label %191

191:                                              ; preds = %176, %141
  br label %192

192:                                              ; preds = %191, %131, %87, %65
  %193 = call i32 @nlm_release_vfs_state(%struct.vfs_state* %11)
  %194 = load i32**, i32*** %9, align 8
  %195 = icmp ne i32** %194, null
  br i1 %195, label %196, label %201

196:                                              ; preds = %192
  %197 = load %struct.nlm_host*, %struct.nlm_host** %12, align 8
  %198 = load i32, i32* @TRUE, align 4
  %199 = call i32* @nlm_host_get_rpc(%struct.nlm_host* %197, i32 %198)
  %200 = load i32**, i32*** %9, align 8
  store i32* %199, i32** %200, align 8
  br label %201

201:                                              ; preds = %196, %192
  %202 = load %struct.nlm_host*, %struct.nlm_host** %12, align 8
  %203 = call i32 @nlm_host_release(%struct.nlm_host* %202)
  store i32 0, i32* %5, align 4
  br label %204

204:                                              ; preds = %201, %33
  %205 = load i32, i32* %5, align 4
  ret i32 %205
}

declare dso_local i32 @memset(%struct.vfs_state*, i32, i32) #1

declare dso_local %struct.nlm_host* @nlm_find_host_by_name(i32, i32, i32) #1

declare dso_local i32 @svc_getrpccaller(%struct.svc_req*) #1

declare dso_local i32 @NLM_DEBUG(i32, i8*, i32, i32) #1

declare dso_local i32 @nlm_check_expired_locks(%struct.nlm_host*) #1

declare dso_local i32 @nlm_convert_to_fhandle_t(i32*, i32*) #1

declare dso_local i32 @nlm_copy_netobj(i32*, i32*, i32) #1

declare dso_local i32 @nlm_get_vfs_state(%struct.nlm_host*, %struct.svc_req*, i32*, %struct.vfs_state*, i32) #1

declare dso_local i32 @nlm_convert_error(i32) #1

declare dso_local i32 @VOP_ADVLOCK(i32, i32*, i32, %struct.flock*, i32) #1

declare dso_local %struct.nlm_host* @nlm_find_host_by_sysid(i32) #1

declare dso_local i32 @nlm_host_release(%struct.nlm_host*) #1

declare dso_local i32 @nlm_release_vfs_state(%struct.vfs_state*) #1

declare dso_local i32* @nlm_host_get_rpc(%struct.nlm_host*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
