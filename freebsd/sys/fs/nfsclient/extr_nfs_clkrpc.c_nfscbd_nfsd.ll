; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/nfsclient/extr_nfs_clkrpc.c_nfscbd_nfsd.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/nfsclient/extr_nfs_clkrpc.c_nfscbd_nfsd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }
%struct.thread = type { i32 }
%struct.nfsd_nfscbd_args = type { i32 }

@nfs_numnfscbd = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [11 x i8] c"kerberosv5\00", align 1
@GSS_C_INDEFINITE = common dso_local global i32 0, align 4
@NFS_CALLBCKPROG = common dso_local global i32 0, align 4
@NFSV4_CBVERS = common dso_local global i32 0, align 4
@nfscbd_pool = common dso_local global %struct.TYPE_3__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nfscbd_nfsd(%struct.thread* %0, %struct.nfsd_nfscbd_args* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.thread*, align 8
  %5 = alloca %struct.nfsd_nfscbd_args*, align 8
  %6 = alloca [128 x i8], align 16
  %7 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %4, align 8
  store %struct.nfsd_nfscbd_args* %1, %struct.nfsd_nfscbd_args** %5, align 8
  %8 = load %struct.nfsd_nfscbd_args*, %struct.nfsd_nfscbd_args** %5, align 8
  %9 = icmp ne %struct.nfsd_nfscbd_args* %8, null
  br i1 %9, label %10, label %21

10:                                               ; preds = %2
  %11 = load %struct.nfsd_nfscbd_args*, %struct.nfsd_nfscbd_args** %5, align 8
  %12 = getelementptr inbounds %struct.nfsd_nfscbd_args, %struct.nfsd_nfscbd_args* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = getelementptr inbounds [128 x i8], [128 x i8]* %6, i64 0, i64 0
  %15 = call i32 @copyinstr(i32 %13, i8* %14, i32 128, i32* null)
  store i32 %15, i32* %7, align 4
  %16 = load i32, i32* %7, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %10
  %19 = load i32, i32* %7, align 4
  store i32 %19, i32* %3, align 4
  br label %57

20:                                               ; preds = %10
  br label %23

21:                                               ; preds = %2
  %22 = getelementptr inbounds [128 x i8], [128 x i8]* %6, i64 0, i64 0
  store i8 0, i8* %22, align 16
  br label %23

23:                                               ; preds = %21, %20
  %24 = call i32 (...) @NFSD_LOCK()
  %25 = load i64, i64* @nfs_numnfscbd, align 8
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %27, label %55

27:                                               ; preds = %23
  %28 = load i64, i64* @nfs_numnfscbd, align 8
  %29 = add nsw i64 %28, 1
  store i64 %29, i64* @nfs_numnfscbd, align 8
  %30 = call i32 (...) @NFSD_UNLOCK()
  %31 = getelementptr inbounds [128 x i8], [128 x i8]* %6, i64 0, i64 0
  %32 = load i8, i8* %31, align 16
  %33 = sext i8 %32 to i32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %41

35:                                               ; preds = %27
  %36 = getelementptr inbounds [128 x i8], [128 x i8]* %6, i64 0, i64 0
  %37 = load i32, i32* @GSS_C_INDEFINITE, align 4
  %38 = load i32, i32* @NFS_CALLBCKPROG, align 4
  %39 = load i32, i32* @NFSV4_CBVERS, align 4
  %40 = call i32 @rpc_gss_set_svc_name_call(i8* %36, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %37, i32 %38, i32 %39)
  br label %41

41:                                               ; preds = %35, %27
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** @nfscbd_pool, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  store i32 4, i32* %43, align 4
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** @nfscbd_pool, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 1
  store i32 4, i32* %45, align 4
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** @nfscbd_pool, align 8
  %47 = call i32 @svc_run(%struct.TYPE_3__* %46)
  %48 = load i32, i32* @NFS_CALLBCKPROG, align 4
  %49 = load i32, i32* @NFSV4_CBVERS, align 4
  %50 = call i32 @rpc_gss_clear_svc_name_call(i32 %48, i32 %49)
  %51 = call i32 (...) @NFSD_LOCK()
  %52 = load i64, i64* @nfs_numnfscbd, align 8
  %53 = add nsw i64 %52, -1
  store i64 %53, i64* @nfs_numnfscbd, align 8
  %54 = call i32 @nfsrvd_cbinit(i32 1)
  br label %55

55:                                               ; preds = %41, %23
  %56 = call i32 (...) @NFSD_UNLOCK()
  store i32 0, i32* %3, align 4
  br label %57

57:                                               ; preds = %55, %18
  %58 = load i32, i32* %3, align 4
  ret i32 %58
}

declare dso_local i32 @copyinstr(i32, i8*, i32, i32*) #1

declare dso_local i32 @NFSD_LOCK(...) #1

declare dso_local i32 @NFSD_UNLOCK(...) #1

declare dso_local i32 @rpc_gss_set_svc_name_call(i8*, i8*, i32, i32, i32) #1

declare dso_local i32 @svc_run(%struct.TYPE_3__*) #1

declare dso_local i32 @rpc_gss_clear_svc_name_call(i32, i32) #1

declare dso_local i32 @nfsrvd_cbinit(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
