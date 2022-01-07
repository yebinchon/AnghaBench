; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/nfsclient/extr_nfs_clkrpc.c_nfsrvd_cbinit.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/nfsclient/extr_nfs_clkrpc.c_nfsrvd_cbinit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32*, i32*, i32* }

@nfs_numnfscbd = common dso_local global i64 0, align 8
@NFSDLOCKMUTEXPTR = common dso_local global i32 0, align 4
@PZERO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"nfscbdt\00", align 1
@nfscbd_pool = common dso_local global %struct.TYPE_4__* null, align 8
@.str.1 = private unnamed_addr constant [7 x i8] c"nfscbd\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nfsrvd_cbinit(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = call i32 (...) @NFSD_LOCK_ASSERT()
  %4 = load i32, i32* %2, align 4
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %6, label %23

6:                                                ; preds = %1
  br label %7

7:                                                ; preds = %10, %6
  %8 = load i64, i64* @nfs_numnfscbd, align 8
  %9 = icmp sgt i64 %8, 0
  br i1 %9, label %10, label %14

10:                                               ; preds = %7
  %11 = load i32, i32* @NFSDLOCKMUTEXPTR, align 4
  %12 = load i32, i32* @PZERO, align 4
  %13 = call i32 @msleep(i64* @nfs_numnfscbd, i32 %11, i32 %12, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 0)
  br label %7

14:                                               ; preds = %7
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** @nfscbd_pool, align 8
  %16 = icmp ne %struct.TYPE_4__* %15, null
  br i1 %16, label %17, label %22

17:                                               ; preds = %14
  %18 = call i32 (...) @NFSD_UNLOCK()
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** @nfscbd_pool, align 8
  %20 = call i32 @svcpool_close(%struct.TYPE_4__* %19)
  %21 = call i32 (...) @NFSD_LOCK()
  br label %22

22:                                               ; preds = %17, %14
  br label %23

23:                                               ; preds = %22, %1
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** @nfscbd_pool, align 8
  %25 = icmp eq %struct.TYPE_4__* %24, null
  br i1 %25, label %26, label %36

26:                                               ; preds = %23
  %27 = call i32 (...) @NFSD_UNLOCK()
  %28 = call %struct.TYPE_4__* @svcpool_create(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32* null)
  store %struct.TYPE_4__* %28, %struct.TYPE_4__** @nfscbd_pool, align 8
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** @nfscbd_pool, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 2
  store i32* null, i32** %30, align 8
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** @nfscbd_pool, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 1
  store i32* null, i32** %32, align 8
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** @nfscbd_pool, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  store i32* null, i32** %34, align 8
  %35 = call i32 (...) @NFSD_LOCK()
  br label %36

36:                                               ; preds = %26, %23
  ret void
}

declare dso_local i32 @NFSD_LOCK_ASSERT(...) #1

declare dso_local i32 @msleep(i64*, i32, i32, i8*, i32) #1

declare dso_local i32 @NFSD_UNLOCK(...) #1

declare dso_local i32 @svcpool_close(%struct.TYPE_4__*) #1

declare dso_local i32 @NFSD_LOCK(...) #1

declare dso_local %struct.TYPE_4__* @svcpool_create(i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
