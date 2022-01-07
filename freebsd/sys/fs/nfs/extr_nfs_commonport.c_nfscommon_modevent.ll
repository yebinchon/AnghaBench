; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/nfs/extr_nfs_commonport.c_nfscommon_modevent.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/nfs/extr_nfs_commonport.c_nfscommon_modevent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@nfscommon_modevent.loaded = internal global i32 0, align 4
@nfs_nameid_mutex = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"nfs_nameid_mutex\00", align 1
@MTX_DEF = common dso_local global i32 0, align 4
@nfs_sockl_mutex = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"nfs_sockl_mutex\00", align 1
@nfs_slock_mutex = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [16 x i8] c"nfs_slock_mutex\00", align 1
@nfs_req_mutex = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [14 x i8] c"nfs_req_mutex\00", align 1
@nfsrv_nfsuserdsock = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@.str.4 = private unnamed_addr constant [9 x i8] c"nfsuserd\00", align 1
@nfsrv_dslock_mtx = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [7 x i8] c"nfs4ds\00", align 1
@nfsrv_devidhead = common dso_local global i32 0, align 4
@newnfsd_callout = common dso_local global i32 0, align 4
@nfssvc_nfscommon = common dso_local global i32* null, align 8
@nfsd_call_nfscommon = common dso_local global i32* null, align 8
@newnfs_numnfsd = common dso_local global i32 0, align 4
@nfsrv_nfsuserd = common dso_local global i32 0, align 4
@nfs_numnfscbd = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@newnfsd_mtx = common dso_local global i32 0, align 4
@nfs_state_mutex = common dso_local global i32 0, align 4
@nfs_clstate_mutex = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i8*)* @nfscommon_modevent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfscommon_modevent(i32 %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  store i32 0, i32* %7, align 4
  %8 = load i32, i32* %5, align 4
  switch i32 %8, label %54 [
    i32 129, label %9
    i32 128, label %31
  ]

9:                                                ; preds = %3
  %10 = load i32, i32* @nfscommon_modevent.loaded, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %9
  br label %57

13:                                               ; preds = %9
  %14 = call i32 (...) @newnfs_portinit()
  %15 = load i32, i32* @MTX_DEF, align 4
  %16 = call i32 @mtx_init(i32* @nfs_nameid_mutex, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32* null, i32 %15)
  %17 = load i32, i32* @MTX_DEF, align 4
  %18 = call i32 @mtx_init(i32* @nfs_sockl_mutex, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32* null, i32 %17)
  %19 = load i32, i32* @MTX_DEF, align 4
  %20 = call i32 @mtx_init(i32* @nfs_slock_mutex, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i32* null, i32 %19)
  %21 = load i32, i32* @MTX_DEF, align 4
  %22 = call i32 @mtx_init(i32* @nfs_req_mutex, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i32* null, i32 %21)
  %23 = load i32, i32* @MTX_DEF, align 4
  %24 = call i32 @mtx_init(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @nfsrv_nfsuserdsock, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i32* null, i32 %23)
  %25 = load i32, i32* @MTX_DEF, align 4
  %26 = call i32 @mtx_init(i32* @nfsrv_dslock_mtx, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i32* null, i32 %25)
  %27 = call i32 @TAILQ_INIT(i32* @nfsrv_devidhead)
  %28 = call i32 @callout_init(i32* @newnfsd_callout, i32 1)
  %29 = call i32 (...) @newnfs_init()
  %30 = load i32*, i32** @nfssvc_nfscommon, align 8
  store i32* %30, i32** @nfsd_call_nfscommon, align 8
  store i32 1, i32* @nfscommon_modevent.loaded, align 4
  br label %56

31:                                               ; preds = %3
  %32 = load i32, i32* @newnfs_numnfsd, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %40, label %34

34:                                               ; preds = %31
  %35 = load i32, i32* @nfsrv_nfsuserd, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %40, label %37

37:                                               ; preds = %34
  %38 = load i32, i32* @nfs_numnfscbd, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %37, %34, %31
  %41 = load i32, i32* @EBUSY, align 4
  store i32 %41, i32* %7, align 4
  br label %56

42:                                               ; preds = %37
  store i32* null, i32** @nfsd_call_nfscommon, align 8
  %43 = call i32 @callout_drain(i32* @newnfsd_callout)
  %44 = call i32 (...) @nfsrv_cleanusergroup()
  %45 = call i32 @mtx_destroy(i32* @nfs_nameid_mutex)
  %46 = call i32 @mtx_destroy(i32* @newnfsd_mtx)
  %47 = call i32 @mtx_destroy(i32* @nfs_state_mutex)
  %48 = call i32 @mtx_destroy(i32* @nfs_clstate_mutex)
  %49 = call i32 @mtx_destroy(i32* @nfs_sockl_mutex)
  %50 = call i32 @mtx_destroy(i32* @nfs_slock_mutex)
  %51 = call i32 @mtx_destroy(i32* @nfs_req_mutex)
  %52 = call i32 @mtx_destroy(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @nfsrv_nfsuserdsock, i32 0, i32 0))
  %53 = call i32 @mtx_destroy(i32* @nfsrv_dslock_mtx)
  store i32 0, i32* @nfscommon_modevent.loaded, align 4
  br label %56

54:                                               ; preds = %3
  %55 = load i32, i32* @EOPNOTSUPP, align 4
  store i32 %55, i32* %7, align 4
  br label %56

56:                                               ; preds = %54, %42, %40, %13
  br label %57

57:                                               ; preds = %56, %12
  %58 = load i32, i32* %7, align 4
  %59 = call i32 @NFSEXITCODE(i32 %58)
  %60 = load i32, i32* %7, align 4
  ret i32 %60
}

declare dso_local i32 @newnfs_portinit(...) #1

declare dso_local i32 @mtx_init(i32*, i8*, i32*, i32) #1

declare dso_local i32 @TAILQ_INIT(i32*) #1

declare dso_local i32 @callout_init(i32*, i32) #1

declare dso_local i32 @newnfs_init(...) #1

declare dso_local i32 @callout_drain(i32*) #1

declare dso_local i32 @nfsrv_cleanusergroup(...) #1

declare dso_local i32 @mtx_destroy(i32*) #1

declare dso_local i32 @NFSEXITCODE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
