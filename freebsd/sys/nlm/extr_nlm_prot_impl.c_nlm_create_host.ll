; ModuleID = '/home/carl/AnghaBench/freebsd/sys/nlm/extr_nlm_prot_impl.c_nlm_create_host.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/nlm/extr_nlm_prot_impl.c_nlm_create_host.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nlm_host = type { i32, i32, i32, i32, i64, i64, i32, i32, i32, i32, i32, i64, i32 }
%struct.sysctl_oid = type { i32 }

@nlm_global_lock = common dso_local global i32 0, align 4
@MA_OWNED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"NLM: new host %s (sysid %d)\0A\00", align 1
@nlm_next_sysid = common dso_local global i32 0, align 4
@M_NLM = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"nh_lock\00", align 1
@MTX_DEF = common dso_local global i32 0, align 4
@MAXNAMELEN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@NLM_UNMONITORED = common dso_local global i64 0, align 8
@nlm_hosts = common dso_local global i32 0, align 4
@nh_link = common dso_local global i32 0, align 4
@_vfs_nlm_sysid = common dso_local global i32 0, align 4
@OID_AUTO = common dso_local global i32 0, align 4
@CTLFLAG_RD = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"hostname\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"monitored\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"lock_count\00", align 1
@CTLTYPE_INT = common dso_local global i32 0, align 4
@nlm_host_lock_count_sysctl = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [2 x i8] c"I\00", align 1
@.str.9 = private unnamed_addr constant [18 x i8] c"client_lock_count\00", align 1
@nlm_host_client_lock_count_sysctl = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.nlm_host* (i8*)* @nlm_create_host to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.nlm_host* @nlm_create_host(i8* %0) #0 {
  %2 = alloca %struct.nlm_host*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.nlm_host*, align 8
  %5 = alloca %struct.sysctl_oid*, align 8
  store i8* %0, i8** %3, align 8
  %6 = load i32, i32* @MA_OWNED, align 4
  %7 = call i32 @mtx_assert(i32* @nlm_global_lock, i32 %6)
  %8 = load i8*, i8** %3, align 8
  %9 = load i32, i32* @nlm_next_sysid, align 4
  %10 = call i32 @NLM_DEBUG(i32 1, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i8* %8, i32 %9)
  %11 = load i32, i32* @M_NLM, align 4
  %12 = load i32, i32* @M_NOWAIT, align 4
  %13 = load i32, i32* @M_ZERO, align 4
  %14 = or i32 %12, %13
  %15 = call %struct.nlm_host* @malloc(i32 72, i32 %11, i32 %14)
  store %struct.nlm_host* %15, %struct.nlm_host** %4, align 8
  %16 = load %struct.nlm_host*, %struct.nlm_host** %4, align 8
  %17 = icmp ne %struct.nlm_host* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %1
  store %struct.nlm_host* null, %struct.nlm_host** %2, align 8
  br label %130

19:                                               ; preds = %1
  %20 = load %struct.nlm_host*, %struct.nlm_host** %4, align 8
  %21 = getelementptr inbounds %struct.nlm_host, %struct.nlm_host* %20, i32 0, i32 12
  %22 = load i32, i32* @MTX_DEF, align 4
  %23 = call i32 @mtx_init(i32* %21, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32* null, i32 %22)
  %24 = load %struct.nlm_host*, %struct.nlm_host** %4, align 8
  %25 = getelementptr inbounds %struct.nlm_host, %struct.nlm_host* %24, i32 0, i32 0
  store i32 1, i32* %25, align 8
  %26 = load %struct.nlm_host*, %struct.nlm_host** %4, align 8
  %27 = getelementptr inbounds %struct.nlm_host, %struct.nlm_host* %26, i32 0, i32 6
  %28 = load i32, i32* %27, align 8
  %29 = load i8*, i8** %3, align 8
  %30 = load i32, i32* @MAXNAMELEN, align 4
  %31 = call i32 @strlcpy(i32 %28, i8* %29, i32 %30)
  %32 = load i32, i32* @nlm_next_sysid, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* @nlm_next_sysid, align 4
  %34 = load %struct.nlm_host*, %struct.nlm_host** %4, align 8
  %35 = getelementptr inbounds %struct.nlm_host, %struct.nlm_host* %34, i32 0, i32 1
  store i32 %32, i32* %35, align 4
  %36 = load %struct.nlm_host*, %struct.nlm_host** %4, align 8
  %37 = getelementptr inbounds %struct.nlm_host, %struct.nlm_host* %36, i32 0, i32 7
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.nlm_host*, %struct.nlm_host** %4, align 8
  %40 = getelementptr inbounds %struct.nlm_host, %struct.nlm_host* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @snprintf(i32 %38, i32 4, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 %41)
  %43 = load %struct.nlm_host*, %struct.nlm_host** %4, align 8
  %44 = getelementptr inbounds %struct.nlm_host, %struct.nlm_host* %43, i32 0, i32 5
  store i64 0, i64* %44, align 8
  %45 = load %struct.nlm_host*, %struct.nlm_host** %4, align 8
  %46 = getelementptr inbounds %struct.nlm_host, %struct.nlm_host* %45, i32 0, i32 11
  store i64 0, i64* %46, align 8
  %47 = load i64, i64* @NLM_UNMONITORED, align 8
  %48 = load %struct.nlm_host*, %struct.nlm_host** %4, align 8
  %49 = getelementptr inbounds %struct.nlm_host, %struct.nlm_host* %48, i32 0, i32 4
  store i64 %47, i64* %49, align 8
  %50 = load %struct.nlm_host*, %struct.nlm_host** %4, align 8
  %51 = getelementptr inbounds %struct.nlm_host, %struct.nlm_host* %50, i32 0, i32 2
  store i32 1, i32* %51, align 8
  %52 = load %struct.nlm_host*, %struct.nlm_host** %4, align 8
  %53 = getelementptr inbounds %struct.nlm_host, %struct.nlm_host* %52, i32 0, i32 10
  %54 = call i32 @TAILQ_INIT(i32* %53)
  %55 = load %struct.nlm_host*, %struct.nlm_host** %4, align 8
  %56 = getelementptr inbounds %struct.nlm_host, %struct.nlm_host* %55, i32 0, i32 9
  %57 = call i32 @TAILQ_INIT(i32* %56)
  %58 = load %struct.nlm_host*, %struct.nlm_host** %4, align 8
  %59 = getelementptr inbounds %struct.nlm_host, %struct.nlm_host* %58, i32 0, i32 8
  %60 = call i32 @TAILQ_INIT(i32* %59)
  %61 = load %struct.nlm_host*, %struct.nlm_host** %4, align 8
  %62 = load i32, i32* @nh_link, align 4
  %63 = call i32 @TAILQ_INSERT_TAIL(i32* @nlm_hosts, %struct.nlm_host* %61, i32 %62)
  %64 = call i32 @mtx_unlock(i32* @nlm_global_lock)
  %65 = load %struct.nlm_host*, %struct.nlm_host** %4, align 8
  %66 = getelementptr inbounds %struct.nlm_host, %struct.nlm_host* %65, i32 0, i32 3
  %67 = call i32 @sysctl_ctx_init(i32* %66)
  %68 = load %struct.nlm_host*, %struct.nlm_host** %4, align 8
  %69 = getelementptr inbounds %struct.nlm_host, %struct.nlm_host* %68, i32 0, i32 3
  %70 = load i32, i32* @_vfs_nlm_sysid, align 4
  %71 = call i32 @SYSCTL_STATIC_CHILDREN(i32 %70)
  %72 = load i32, i32* @OID_AUTO, align 4
  %73 = load %struct.nlm_host*, %struct.nlm_host** %4, align 8
  %74 = getelementptr inbounds %struct.nlm_host, %struct.nlm_host* %73, i32 0, i32 7
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* @CTLFLAG_RD, align 4
  %77 = call %struct.sysctl_oid* @SYSCTL_ADD_NODE(i32* %69, i32 %71, i32 %72, i32 %75, i32 %76, i32* null, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0))
  store %struct.sysctl_oid* %77, %struct.sysctl_oid** %5, align 8
  %78 = load %struct.nlm_host*, %struct.nlm_host** %4, align 8
  %79 = getelementptr inbounds %struct.nlm_host, %struct.nlm_host* %78, i32 0, i32 3
  %80 = load %struct.sysctl_oid*, %struct.sysctl_oid** %5, align 8
  %81 = call i32 @SYSCTL_CHILDREN(%struct.sysctl_oid* %80)
  %82 = load i32, i32* @OID_AUTO, align 4
  %83 = load i32, i32* @CTLFLAG_RD, align 4
  %84 = load %struct.nlm_host*, %struct.nlm_host** %4, align 8
  %85 = getelementptr inbounds %struct.nlm_host, %struct.nlm_host* %84, i32 0, i32 6
  %86 = load i32, i32* %85, align 8
  %87 = call i32 @SYSCTL_ADD_STRING(i32* %79, i32 %81, i32 %82, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i32 %83, i32 %86, i32 0, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0))
  %88 = load %struct.nlm_host*, %struct.nlm_host** %4, align 8
  %89 = getelementptr inbounds %struct.nlm_host, %struct.nlm_host* %88, i32 0, i32 3
  %90 = load %struct.sysctl_oid*, %struct.sysctl_oid** %5, align 8
  %91 = call i32 @SYSCTL_CHILDREN(%struct.sysctl_oid* %90)
  %92 = load i32, i32* @OID_AUTO, align 4
  %93 = load i32, i32* @CTLFLAG_RD, align 4
  %94 = load %struct.nlm_host*, %struct.nlm_host** %4, align 8
  %95 = getelementptr inbounds %struct.nlm_host, %struct.nlm_host* %94, i32 0, i32 5
  %96 = call i32 @SYSCTL_ADD_UINT(i32* %89, i32 %91, i32 %92, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i32 %93, i64* %95, i32 0, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0))
  %97 = load %struct.nlm_host*, %struct.nlm_host** %4, align 8
  %98 = getelementptr inbounds %struct.nlm_host, %struct.nlm_host* %97, i32 0, i32 3
  %99 = load %struct.sysctl_oid*, %struct.sysctl_oid** %5, align 8
  %100 = call i32 @SYSCTL_CHILDREN(%struct.sysctl_oid* %99)
  %101 = load i32, i32* @OID_AUTO, align 4
  %102 = load i32, i32* @CTLFLAG_RD, align 4
  %103 = load %struct.nlm_host*, %struct.nlm_host** %4, align 8
  %104 = getelementptr inbounds %struct.nlm_host, %struct.nlm_host* %103, i32 0, i32 4
  %105 = call i32 @SYSCTL_ADD_UINT(i32* %98, i32 %100, i32 %101, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0), i32 %102, i64* %104, i32 0, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0))
  %106 = load %struct.nlm_host*, %struct.nlm_host** %4, align 8
  %107 = getelementptr inbounds %struct.nlm_host, %struct.nlm_host* %106, i32 0, i32 3
  %108 = load %struct.sysctl_oid*, %struct.sysctl_oid** %5, align 8
  %109 = call i32 @SYSCTL_CHILDREN(%struct.sysctl_oid* %108)
  %110 = load i32, i32* @OID_AUTO, align 4
  %111 = load i32, i32* @CTLTYPE_INT, align 4
  %112 = load i32, i32* @CTLFLAG_RD, align 4
  %113 = or i32 %111, %112
  %114 = load %struct.nlm_host*, %struct.nlm_host** %4, align 8
  %115 = load i32, i32* @nlm_host_lock_count_sysctl, align 4
  %116 = call i32 @SYSCTL_ADD_PROC(i32* %107, i32 %109, i32 %110, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i64 0, i64 0), i32 %113, %struct.nlm_host* %114, i32 0, i32 %115, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0))
  %117 = load %struct.nlm_host*, %struct.nlm_host** %4, align 8
  %118 = getelementptr inbounds %struct.nlm_host, %struct.nlm_host* %117, i32 0, i32 3
  %119 = load %struct.sysctl_oid*, %struct.sysctl_oid** %5, align 8
  %120 = call i32 @SYSCTL_CHILDREN(%struct.sysctl_oid* %119)
  %121 = load i32, i32* @OID_AUTO, align 4
  %122 = load i32, i32* @CTLTYPE_INT, align 4
  %123 = load i32, i32* @CTLFLAG_RD, align 4
  %124 = or i32 %122, %123
  %125 = load %struct.nlm_host*, %struct.nlm_host** %4, align 8
  %126 = load i32, i32* @nlm_host_client_lock_count_sysctl, align 4
  %127 = call i32 @SYSCTL_ADD_PROC(i32* %118, i32 %120, i32 %121, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.9, i64 0, i64 0), i32 %124, %struct.nlm_host* %125, i32 0, i32 %126, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0))
  %128 = call i32 @mtx_lock(i32* @nlm_global_lock)
  %129 = load %struct.nlm_host*, %struct.nlm_host** %4, align 8
  store %struct.nlm_host* %129, %struct.nlm_host** %2, align 8
  br label %130

130:                                              ; preds = %19, %18
  %131 = load %struct.nlm_host*, %struct.nlm_host** %2, align 8
  ret %struct.nlm_host* %131
}

declare dso_local i32 @mtx_assert(i32*, i32) #1

declare dso_local i32 @NLM_DEBUG(i32, i8*, i8*, i32) #1

declare dso_local %struct.nlm_host* @malloc(i32, i32, i32) #1

declare dso_local i32 @mtx_init(i32*, i8*, i32*, i32) #1

declare dso_local i32 @strlcpy(i32, i8*, i32) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i32) #1

declare dso_local i32 @TAILQ_INIT(i32*) #1

declare dso_local i32 @TAILQ_INSERT_TAIL(i32*, %struct.nlm_host*, i32) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @sysctl_ctx_init(i32*) #1

declare dso_local %struct.sysctl_oid* @SYSCTL_ADD_NODE(i32*, i32, i32, i32, i32, i32*, i8*) #1

declare dso_local i32 @SYSCTL_STATIC_CHILDREN(i32) #1

declare dso_local i32 @SYSCTL_ADD_STRING(i32*, i32, i32, i8*, i32, i32, i32, i8*) #1

declare dso_local i32 @SYSCTL_CHILDREN(%struct.sysctl_oid*) #1

declare dso_local i32 @SYSCTL_ADD_UINT(i32*, i32, i32, i8*, i32, i64*, i32, i8*) #1

declare dso_local i32 @SYSCTL_ADD_PROC(i32*, i32, i32, i8*, i32, %struct.nlm_host*, i32, i32, i8*, i8*) #1

declare dso_local i32 @mtx_lock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
