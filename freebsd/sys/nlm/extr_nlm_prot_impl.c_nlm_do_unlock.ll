; ModuleID = '/home/carl/AnghaBench/freebsd/sys/nlm/extr_nlm_prot_impl.c_nlm_do_unlock.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/nlm/extr_nlm_prot_impl.c_nlm_do_unlock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { i32, i32, i32, i32, i32 }
%struct.vfs_state = type { %struct.TYPE_6__, i32, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.svc_req = type { i32 }
%struct.nlm_host = type { i32, i32 }
%struct.flock = type { i32, i32, i32, i32, i32, i32 }

@nlm4_denied_nolocks = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"nlm_do_unlock(): caller_name = %s (sysid = %d)\0A\00", align 1
@M_RPC = common dso_local global i32 0, align 4
@time_uptime = common dso_local global i64 0, align 8
@nlm_grace_threshold = common dso_local global i64 0, align 8
@nlm4_denied_grace_period = common dso_local global i32 0, align 4
@SEEK_SET = common dso_local global i32 0, align 4
@F_UNLCK = common dso_local global i32 0, align 4
@F_REMOTE = common dso_local global i32 0, align 4
@nlm4_granted = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nlm_do_unlock(%struct.TYPE_7__* %0, %struct.vfs_state* %1, %struct.svc_req* %2, i32** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca %struct.vfs_state*, align 8
  %8 = alloca %struct.svc_req*, align 8
  %9 = alloca i32**, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.vfs_state, align 4
  %12 = alloca %struct.nlm_host*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.flock, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %6, align 8
  store %struct.vfs_state* %1, %struct.vfs_state** %7, align 8
  store %struct.svc_req* %2, %struct.svc_req** %8, align 8
  store i32** %3, i32*** %9, align 8
  %16 = load %struct.vfs_state*, %struct.vfs_state** %7, align 8
  %17 = call i32 @memset(%struct.vfs_state* %16, i32 0, i32 12)
  %18 = call i32 @memset(%struct.vfs_state* %11, i32 0, i32 12)
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 4
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.svc_req*, %struct.svc_req** %8, align 8
  %24 = call i32 @svc_getrpccaller(%struct.svc_req* %23)
  %25 = load %struct.svc_req*, %struct.svc_req** %8, align 8
  %26 = getelementptr inbounds %struct.svc_req, %struct.svc_req* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call %struct.nlm_host* @nlm_find_host_by_name(i32 %22, i32 %24, i32 %27)
  store %struct.nlm_host* %28, %struct.nlm_host** %12, align 8
  %29 = load %struct.nlm_host*, %struct.nlm_host** %12, align 8
  %30 = icmp ne %struct.nlm_host* %29, null
  br i1 %30, label %37, label %31

31:                                               ; preds = %4
  %32 = load i32, i32* @nlm4_denied_nolocks, align 4
  %33 = load %struct.vfs_state*, %struct.vfs_state** %7, align 8
  %34 = getelementptr inbounds %struct.vfs_state, %struct.vfs_state* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  store i32 %32, i32* %35, align 4
  %36 = load i32, i32* @ENOMEM, align 4
  store i32 %36, i32* %5, align 4
  br label %123

37:                                               ; preds = %4
  %38 = load %struct.nlm_host*, %struct.nlm_host** %12, align 8
  %39 = getelementptr inbounds %struct.nlm_host, %struct.nlm_host* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.nlm_host*, %struct.nlm_host** %12, align 8
  %42 = getelementptr inbounds %struct.nlm_host, %struct.nlm_host* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @NLM_DEBUG(i32 3, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i32 %40, i32 %43)
  %45 = load %struct.nlm_host*, %struct.nlm_host** %12, align 8
  %46 = call i32 @nlm_check_expired_locks(%struct.nlm_host* %45)
  %47 = load %struct.nlm_host*, %struct.nlm_host** %12, align 8
  %48 = getelementptr inbounds %struct.nlm_host, %struct.nlm_host* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  store i32 %49, i32* %14, align 4
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 3
  %53 = call i32 @nlm_convert_to_fhandle_t(i32* %10, i32* %52)
  %54 = load %struct.vfs_state*, %struct.vfs_state** %7, align 8
  %55 = getelementptr inbounds %struct.vfs_state, %struct.vfs_state* %54, i32 0, i32 2
  %56 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 1
  %58 = load i32, i32* @M_RPC, align 4
  %59 = call i32 @nlm_copy_netobj(i32* %55, i32* %57, i32 %58)
  %60 = load i64, i64* @time_uptime, align 8
  %61 = load i64, i64* @nlm_grace_threshold, align 8
  %62 = icmp slt i64 %60, %61
  br i1 %62, label %63, label %68

63:                                               ; preds = %37
  %64 = load i32, i32* @nlm4_denied_grace_period, align 4
  %65 = load %struct.vfs_state*, %struct.vfs_state** %7, align 8
  %66 = getelementptr inbounds %struct.vfs_state, %struct.vfs_state* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 0
  store i32 %64, i32* %67, align 4
  br label %111

68:                                               ; preds = %37
  %69 = load %struct.nlm_host*, %struct.nlm_host** %12, align 8
  %70 = load %struct.svc_req*, %struct.svc_req** %8, align 8
  %71 = call i32 @nlm_get_vfs_state(%struct.nlm_host* %69, %struct.svc_req* %70, i32* %10, %struct.vfs_state* %11, i32 0)
  store i32 %71, i32* %13, align 4
  %72 = load i32, i32* %13, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %80

74:                                               ; preds = %68
  %75 = load i32, i32* %13, align 4
  %76 = call i32 @nlm_convert_error(i32 %75)
  %77 = load %struct.vfs_state*, %struct.vfs_state** %7, align 8
  %78 = getelementptr inbounds %struct.vfs_state, %struct.vfs_state* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 0
  store i32 %76, i32* %79, align 4
  br label %111

80:                                               ; preds = %68
  %81 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %82 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 4
  %85 = getelementptr inbounds %struct.flock, %struct.flock* %15, i32 0, i32 5
  store i32 %84, i32* %85, align 4
  %86 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %87 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = getelementptr inbounds %struct.flock, %struct.flock* %15, i32 0, i32 4
  store i32 %89, i32* %90, align 4
  %91 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %92 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = getelementptr inbounds %struct.flock, %struct.flock* %15, i32 0, i32 3
  store i32 %94, i32* %95, align 4
  %96 = load i32, i32* %14, align 4
  %97 = getelementptr inbounds %struct.flock, %struct.flock* %15, i32 0, i32 0
  store i32 %96, i32* %97, align 4
  %98 = load i32, i32* @SEEK_SET, align 4
  %99 = getelementptr inbounds %struct.flock, %struct.flock* %15, i32 0, i32 2
  store i32 %98, i32* %99, align 4
  %100 = load i32, i32* @F_UNLCK, align 4
  %101 = getelementptr inbounds %struct.flock, %struct.flock* %15, i32 0, i32 1
  store i32 %100, i32* %101, align 4
  %102 = getelementptr inbounds %struct.vfs_state, %struct.vfs_state* %11, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = load i32, i32* @F_UNLCK, align 4
  %105 = load i32, i32* @F_REMOTE, align 4
  %106 = call i32 @VOP_ADVLOCK(i32 %103, i32* null, i32 %104, %struct.flock* %15, i32 %105)
  store i32 %106, i32* %13, align 4
  %107 = load i32, i32* @nlm4_granted, align 4
  %108 = load %struct.vfs_state*, %struct.vfs_state** %7, align 8
  %109 = getelementptr inbounds %struct.vfs_state, %struct.vfs_state* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %109, i32 0, i32 0
  store i32 %107, i32* %110, align 4
  br label %111

111:                                              ; preds = %80, %74, %63
  %112 = call i32 @nlm_release_vfs_state(%struct.vfs_state* %11)
  %113 = load i32**, i32*** %9, align 8
  %114 = icmp ne i32** %113, null
  br i1 %114, label %115, label %120

115:                                              ; preds = %111
  %116 = load %struct.nlm_host*, %struct.nlm_host** %12, align 8
  %117 = load i32, i32* @TRUE, align 4
  %118 = call i32* @nlm_host_get_rpc(%struct.nlm_host* %116, i32 %117)
  %119 = load i32**, i32*** %9, align 8
  store i32* %118, i32** %119, align 8
  br label %120

120:                                              ; preds = %115, %111
  %121 = load %struct.nlm_host*, %struct.nlm_host** %12, align 8
  %122 = call i32 @nlm_host_release(%struct.nlm_host* %121)
  store i32 0, i32* %5, align 4
  br label %123

123:                                              ; preds = %120, %31
  %124 = load i32, i32* %5, align 4
  ret i32 %124
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

declare dso_local i32 @nlm_release_vfs_state(%struct.vfs_state*) #1

declare dso_local i32* @nlm_host_get_rpc(%struct.nlm_host*, i32) #1

declare dso_local i32 @nlm_host_release(%struct.nlm_host*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
