; ModuleID = '/home/carl/AnghaBench/freebsd/sys/nlm/extr_nlm_advlock.c_nlm_clearlock.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/nlm/extr_nlm_advlock.c_nlm_clearlock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nlm_host = type { i32 }
%struct.rpc_callextra = type { i32 }
%struct.timeval = type { i32 }
%struct.vnode = type { i32 }
%struct.flock = type { i32 }
%struct.nlm4_unlockargs = type { %struct.TYPE_6__, %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_4__ = type { i32, i8* }
%struct.nlm4_res = type { %struct.TYPE_6__, %struct.TYPE_5__, %struct.TYPE_4__ }

@FALSE = common dso_local global i32 0, align 4
@ENOLCK = common dso_local global i32 0, align 4
@nlm_xid = common dso_local global i32 0, align 4
@RPC_SUCCESS = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@xdr_nlm4_res = common dso_local global i64 0, align 8
@nlm4_denied_grace_period = common dso_local global i64 0, align 8
@PCATCH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"nlmgrace\00", align 1
@hz = common dso_local global i32 0, align 4
@EWOULDBLOCK = common dso_local global i32 0, align 4
@F_REMOTE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nlm_host*, %struct.rpc_callextra*, i32, %struct.timeval*, i32, %struct.vnode*, i32, %struct.flock*, i32, i32, i64, i8*, i32)* @nlm_clearlock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nlm_clearlock(%struct.nlm_host* %0, %struct.rpc_callextra* %1, i32 %2, %struct.timeval* %3, i32 %4, %struct.vnode* %5, i32 %6, %struct.flock* %7, i32 %8, i32 %9, i64 %10, i8* %11, i32 %12) #0 {
  %14 = alloca i32, align 4
  %15 = alloca %struct.nlm_host*, align 8
  %16 = alloca %struct.rpc_callextra*, align 8
  %17 = alloca i32, align 4
  %18 = alloca %struct.timeval*, align 8
  %19 = alloca i32, align 4
  %20 = alloca %struct.vnode*, align 8
  %21 = alloca i32, align 4
  %22 = alloca %struct.flock*, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i64, align 8
  %26 = alloca i8*, align 8
  %27 = alloca i32, align 4
  %28 = alloca %struct.nlm4_unlockargs, align 8
  %29 = alloca [32 x i8], align 16
  %30 = alloca %struct.nlm4_res, align 8
  %31 = alloca i32, align 4
  %32 = alloca i32*, align 8
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  store %struct.nlm_host* %0, %struct.nlm_host** %15, align 8
  store %struct.rpc_callextra* %1, %struct.rpc_callextra** %16, align 8
  store i32 %2, i32* %17, align 4
  store %struct.timeval* %3, %struct.timeval** %18, align 8
  store i32 %4, i32* %19, align 4
  store %struct.vnode* %5, %struct.vnode** %20, align 8
  store i32 %6, i32* %21, align 4
  store %struct.flock* %7, %struct.flock** %22, align 8
  store i32 %8, i32* %23, align 4
  store i32 %9, i32* %24, align 4
  store i64 %10, i64* %25, align 8
  store i8* %11, i8** %26, align 8
  store i32 %12, i32* %27, align 4
  %35 = call i32 @memset(%struct.nlm4_unlockargs* %28, i32 0, i32 32)
  %36 = bitcast %struct.nlm4_res* %30 to %struct.nlm4_unlockargs*
  %37 = call i32 @memset(%struct.nlm4_unlockargs* %36, i32 0, i32 32)
  %38 = load %struct.flock*, %struct.flock** %22, align 8
  %39 = load i32, i32* %23, align 4
  %40 = load i32, i32* %24, align 4
  %41 = load i32, i32* %17, align 4
  %42 = load i64, i64* %25, align 8
  %43 = load i8*, i8** %26, align 8
  %44 = load i32, i32* %27, align 4
  %45 = getelementptr inbounds %struct.nlm4_unlockargs, %struct.nlm4_unlockargs* %28, i32 0, i32 0
  %46 = getelementptr inbounds [32 x i8], [32 x i8]* %29, i64 0, i64 0
  %47 = call i32 @nlm_init_lock(%struct.flock* %38, i32 %39, i32 %40, i32 %41, i64 %42, i8* %43, i32 %44, %struct.TYPE_6__* %45, i8* %46)
  store i32 %47, i32* %34, align 4
  %48 = load i32, i32* %34, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %13
  %51 = load i32, i32* %34, align 4
  store i32 %51, i32* %14, align 4
  br label %130

52:                                               ; preds = %13
  br label %53

53:                                               ; preds = %112, %84, %52
  %54 = load %struct.nlm_host*, %struct.nlm_host** %15, align 8
  %55 = load i32, i32* @FALSE, align 4
  %56 = call i32* @nlm_host_get_rpc(%struct.nlm_host* %54, i32 %55)
  store i32* %56, i32** %32, align 8
  %57 = load i32*, i32** %32, align 8
  %58 = icmp ne i32* %57, null
  br i1 %58, label %61, label %59

59:                                               ; preds = %53
  %60 = load i32, i32* @ENOLCK, align 4
  store i32 %60, i32* %14, align 4
  br label %130

61:                                               ; preds = %53
  %62 = call i32 @atomic_fetchadd_int(i32* @nlm_xid, i32 1)
  store i32 %62, i32* %31, align 4
  %63 = getelementptr inbounds %struct.nlm4_unlockargs, %struct.nlm4_unlockargs* %28, i32 0, i32 2
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 0
  store i32 4, i32* %64, align 8
  %65 = bitcast i32* %31 to i8*
  %66 = getelementptr inbounds %struct.nlm4_unlockargs, %struct.nlm4_unlockargs* %28, i32 0, i32 2
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 1
  store i8* %65, i8** %67, align 8
  %68 = load i32, i32* %17, align 4
  %69 = bitcast %struct.nlm4_res* %30 to %struct.nlm4_unlockargs*
  %70 = load i32*, i32** %32, align 8
  %71 = load %struct.rpc_callextra*, %struct.rpc_callextra** %16, align 8
  %72 = load %struct.timeval*, %struct.timeval** %18, align 8
  %73 = getelementptr inbounds %struct.timeval, %struct.timeval* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @nlm_unlock_rpc(i32 %68, %struct.nlm4_unlockargs* %28, %struct.nlm4_unlockargs* %69, i32* %70, %struct.rpc_callextra* %71, i32 %74)
  store i32 %75, i32* %33, align 4
  %76 = load i32*, i32** %32, align 8
  %77 = call i32 @CLNT_RELEASE(i32* %76)
  %78 = load i32, i32* %33, align 4
  %79 = load i32, i32* @RPC_SUCCESS, align 4
  %80 = icmp ne i32 %78, %79
  br i1 %80, label %81, label %89

81:                                               ; preds = %61
  %82 = load i32, i32* %19, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %87

84:                                               ; preds = %81
  %85 = load i32, i32* %19, align 4
  %86 = add nsw i32 %85, -1
  store i32 %86, i32* %19, align 4
  br label %53

87:                                               ; preds = %81
  %88 = load i32, i32* @EINVAL, align 4
  store i32 %88, i32* %14, align 4
  br label %130

89:                                               ; preds = %61
  %90 = load i64, i64* @xdr_nlm4_res, align 8
  %91 = trunc i64 %90 to i32
  %92 = bitcast %struct.nlm4_res* %30 to %struct.nlm4_unlockargs*
  %93 = call i32 @xdr_free(i32 %91, %struct.nlm4_unlockargs* %92)
  %94 = getelementptr inbounds %struct.nlm4_res, %struct.nlm4_res* %30, i32 0, i32 1
  %95 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = load i64, i64* @nlm4_denied_grace_period, align 8
  %98 = icmp eq i64 %96, %97
  br i1 %98, label %99, label %113

99:                                               ; preds = %89
  %100 = load i32, i32* @PCATCH, align 4
  %101 = load i32, i32* @hz, align 4
  %102 = mul nsw i32 5, %101
  %103 = call i32 @tsleep(%struct.nlm4_unlockargs* %28, i32 %100, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %102)
  store i32 %103, i32* %34, align 4
  %104 = load i32, i32* %34, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %112

106:                                              ; preds = %99
  %107 = load i32, i32* %34, align 4
  %108 = load i32, i32* @EWOULDBLOCK, align 4
  %109 = icmp ne i32 %107, %108
  br i1 %109, label %110, label %112

110:                                              ; preds = %106
  %111 = load i32, i32* %34, align 4
  store i32 %111, i32* %14, align 4
  br label %130

112:                                              ; preds = %106, %99
  br label %53

113:                                              ; preds = %89
  %114 = load i32, i32* %23, align 4
  %115 = load i32, i32* @F_REMOTE, align 4
  %116 = and i32 %114, %115
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %129, label %118

118:                                              ; preds = %113
  %119 = load %struct.vnode*, %struct.vnode** %20, align 8
  %120 = load i32, i32* %21, align 4
  %121 = load %struct.flock*, %struct.flock** %22, align 8
  %122 = getelementptr inbounds %struct.nlm4_unlockargs, %struct.nlm4_unlockargs* %28, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = load %struct.nlm_host*, %struct.nlm_host** %15, align 8
  %126 = call i32 @nlm_host_get_sysid(%struct.nlm_host* %125)
  %127 = load i32, i32* %27, align 4
  %128 = call i32 @nlm_record_lock(%struct.vnode* %119, i32 %120, %struct.flock* %121, i32 %124, i32 %126, i32 %127)
  br label %129

129:                                              ; preds = %118, %113
  store i32 0, i32* %14, align 4
  br label %130

130:                                              ; preds = %129, %110, %87, %59, %50
  %131 = load i32, i32* %14, align 4
  ret i32 %131
}

declare dso_local i32 @memset(%struct.nlm4_unlockargs*, i32, i32) #1

declare dso_local i32 @nlm_init_lock(%struct.flock*, i32, i32, i32, i64, i8*, i32, %struct.TYPE_6__*, i8*) #1

declare dso_local i32* @nlm_host_get_rpc(%struct.nlm_host*, i32) #1

declare dso_local i32 @atomic_fetchadd_int(i32*, i32) #1

declare dso_local i32 @nlm_unlock_rpc(i32, %struct.nlm4_unlockargs*, %struct.nlm4_unlockargs*, i32*, %struct.rpc_callextra*, i32) #1

declare dso_local i32 @CLNT_RELEASE(i32*) #1

declare dso_local i32 @xdr_free(i32, %struct.nlm4_unlockargs*) #1

declare dso_local i32 @tsleep(%struct.nlm4_unlockargs*, i32, i8*, i32) #1

declare dso_local i32 @nlm_record_lock(%struct.vnode*, i32, %struct.flock*, i32, i32, i32) #1

declare dso_local i32 @nlm_host_get_sysid(%struct.nlm_host*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
