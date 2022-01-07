; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/nfsserver/extr_nfs_nfsdkrpc.c_nfsrvd_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/nfsserver/extr_nfs_nfsdkrpc.c_nfsrvd_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32* }

@nfsd_master_proc = common dso_local global i32* null, align 8
@nfsrvd_pool = common dso_local global %struct.TYPE_4__* null, align 8
@nfsrv_zeropnfsdat = common dso_local global i32* null, align 8
@M_TEMP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"nfsd\00", align 1
@_vfs_nfsd = common dso_local global i32 0, align 4
@fhanew_assign = common dso_local global i32 0, align 4
@fha_nd_complete = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nfsrvd_init(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = call i32 (...) @NFSD_LOCK_ASSERT()
  %4 = load i32, i32* %2, align 4
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %6, label %16

6:                                                ; preds = %1
  store i32* null, i32** @nfsd_master_proc, align 8
  %7 = call i32 (...) @NFSD_UNLOCK()
  %8 = call i32 (...) @nfsrv_freealllayoutsanddevids()
  %9 = call i32 (...) @nfsrv_freeallbackchannel_xprts()
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** @nfsrvd_pool, align 8
  %11 = call i32 @svcpool_close(%struct.TYPE_4__* %10)
  %12 = load i32*, i32** @nfsrv_zeropnfsdat, align 8
  %13 = load i32, i32* @M_TEMP, align 4
  %14 = call i32 @free(i32* %12, i32 %13)
  store i32* null, i32** @nfsrv_zeropnfsdat, align 8
  %15 = call i32 (...) @NFSD_LOCK()
  br label %30

16:                                               ; preds = %1
  %17 = call i32 (...) @NFSD_UNLOCK()
  %18 = load i32, i32* @_vfs_nfsd, align 4
  %19 = call i32 @SYSCTL_STATIC_CHILDREN(i32 %18)
  %20 = call %struct.TYPE_4__* @svcpool_create(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %19)
  store %struct.TYPE_4__* %20, %struct.TYPE_4__** @nfsrvd_pool, align 8
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** @nfsrvd_pool, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 2
  store i32* null, i32** %22, align 8
  %23 = load i32, i32* @fhanew_assign, align 4
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** @nfsrvd_pool, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 1
  store i32 %23, i32* %25, align 4
  %26 = load i32, i32* @fha_nd_complete, align 4
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** @nfsrvd_pool, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 8
  %29 = call i32 (...) @NFSD_LOCK()
  br label %30

30:                                               ; preds = %16, %6
  ret void
}

declare dso_local i32 @NFSD_LOCK_ASSERT(...) #1

declare dso_local i32 @NFSD_UNLOCK(...) #1

declare dso_local i32 @nfsrv_freealllayoutsanddevids(...) #1

declare dso_local i32 @nfsrv_freeallbackchannel_xprts(...) #1

declare dso_local i32 @svcpool_close(%struct.TYPE_4__*) #1

declare dso_local i32 @free(i32*, i32) #1

declare dso_local i32 @NFSD_LOCK(...) #1

declare dso_local %struct.TYPE_4__* @svcpool_create(i8*, i32) #1

declare dso_local i32 @SYSCTL_STATIC_CHILDREN(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
