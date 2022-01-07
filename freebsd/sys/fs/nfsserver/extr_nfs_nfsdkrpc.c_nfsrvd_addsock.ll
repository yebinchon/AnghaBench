; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/nfsserver/extr_nfs_nfsdkrpc.c_nfsrvd_addsock.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/nfsserver/extr_nfs_nfsdkrpc.c_nfsrvd_addsock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.socket*, i32* }
%struct.socket = type { i64 }
%struct.TYPE_7__ = type { i64 }

@nfsrvd_addsock.sockref = internal global i64 0, align 8
@sb_max_adj = common dso_local global i32 0, align 4
@SOCK_DGRAM = common dso_local global i64 0, align 8
@nfsrvd_pool = common dso_local global i32 0, align 4
@badfileops = common dso_local global i32 0, align 4
@nfs_minvers = common dso_local global i64 0, align 8
@NFS_VER2 = common dso_local global i64 0, align 8
@NFS_PROG = common dso_local global i32 0, align 4
@nfssvc_program = common dso_local global i32 0, align 4
@NFS_VER3 = common dso_local global i64 0, align 8
@nfs_maxvers = common dso_local global i64 0, align 8
@NFS_VER4 = common dso_local global i64 0, align 8
@SOCK_STREAM = common dso_local global i64 0, align 8
@nfssvc_loss = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nfsrvd_addsock(%struct.file* %0) #0 {
  %2 = alloca %struct.file*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.socket*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_7__*, align 8
  store %struct.file* %0, %struct.file** %2, align 8
  store i32 0, i32* %5, align 4
  %7 = load %struct.file*, %struct.file** %2, align 8
  %8 = getelementptr inbounds %struct.file, %struct.file* %7, i32 0, i32 0
  %9 = load %struct.socket*, %struct.socket** %8, align 8
  store %struct.socket* %9, %struct.socket** %4, align 8
  %10 = load i32, i32* @sb_max_adj, align 4
  store i32 %10, i32* %3, align 4
  %11 = load %struct.socket*, %struct.socket** %4, align 8
  %12 = load i32, i32* %3, align 4
  %13 = load i32, i32* %3, align 4
  %14 = call i32 @soreserve(%struct.socket* %11, i32 %12, i32 %13)
  store i32 %14, i32* %5, align 4
  %15 = load i32, i32* %5, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %1
  br label %91

18:                                               ; preds = %1
  %19 = load %struct.socket*, %struct.socket** %4, align 8
  %20 = getelementptr inbounds %struct.socket, %struct.socket* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @SOCK_DGRAM, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %28

24:                                               ; preds = %18
  %25 = load i32, i32* @nfsrvd_pool, align 4
  %26 = load %struct.socket*, %struct.socket** %4, align 8
  %27 = call %struct.TYPE_7__* @svc_dg_create(i32 %25, %struct.socket* %26, i32 0, i32 0)
  store %struct.TYPE_7__* %27, %struct.TYPE_7__** %6, align 8
  br label %32

28:                                               ; preds = %18
  %29 = load i32, i32* @nfsrvd_pool, align 4
  %30 = load %struct.socket*, %struct.socket** %4, align 8
  %31 = call %struct.TYPE_7__* @svc_vc_create(i32 %29, %struct.socket* %30, i32 0, i32 0)
  store %struct.TYPE_7__* %31, %struct.TYPE_7__** %6, align 8
  br label %32

32:                                               ; preds = %28, %24
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %34 = icmp ne %struct.TYPE_7__* %33, null
  br i1 %34, label %35, label %90

35:                                               ; preds = %32
  %36 = load %struct.file*, %struct.file** %2, align 8
  %37 = getelementptr inbounds %struct.file, %struct.file* %36, i32 0, i32 1
  store i32* @badfileops, i32** %37, align 8
  %38 = load %struct.file*, %struct.file** %2, align 8
  %39 = getelementptr inbounds %struct.file, %struct.file* %38, i32 0, i32 0
  store %struct.socket* null, %struct.socket** %39, align 8
  %40 = load i64, i64* @nfsrvd_addsock.sockref, align 8
  %41 = add nsw i64 %40, 1
  store i64 %41, i64* @nfsrvd_addsock.sockref, align 8
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 0
  store i64 %41, i64* %43, align 8
  %44 = load i64, i64* @nfs_minvers, align 8
  %45 = load i64, i64* @NFS_VER2, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %53

47:                                               ; preds = %35
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %49 = load i32, i32* @NFS_PROG, align 4
  %50 = load i64, i64* @NFS_VER2, align 8
  %51 = load i32, i32* @nfssvc_program, align 4
  %52 = call i32 @svc_reg(%struct.TYPE_7__* %48, i32 %49, i64 %50, i32 %51, i32* null)
  br label %53

53:                                               ; preds = %47, %35
  %54 = load i64, i64* @nfs_minvers, align 8
  %55 = load i64, i64* @NFS_VER3, align 8
  %56 = icmp sle i64 %54, %55
  br i1 %56, label %57, label %67

57:                                               ; preds = %53
  %58 = load i64, i64* @nfs_maxvers, align 8
  %59 = load i64, i64* @NFS_VER3, align 8
  %60 = icmp sge i64 %58, %59
  br i1 %60, label %61, label %67

61:                                               ; preds = %57
  %62 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %63 = load i32, i32* @NFS_PROG, align 4
  %64 = load i64, i64* @NFS_VER3, align 8
  %65 = load i32, i32* @nfssvc_program, align 4
  %66 = call i32 @svc_reg(%struct.TYPE_7__* %62, i32 %63, i64 %64, i32 %65, i32* null)
  br label %67

67:                                               ; preds = %61, %57, %53
  %68 = load i64, i64* @nfs_maxvers, align 8
  %69 = load i64, i64* @NFS_VER4, align 8
  %70 = icmp sge i64 %68, %69
  br i1 %70, label %71, label %77

71:                                               ; preds = %67
  %72 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %73 = load i32, i32* @NFS_PROG, align 4
  %74 = load i64, i64* @NFS_VER4, align 8
  %75 = load i32, i32* @nfssvc_program, align 4
  %76 = call i32 @svc_reg(%struct.TYPE_7__* %72, i32 %73, i64 %74, i32 %75, i32* null)
  br label %77

77:                                               ; preds = %71, %67
  %78 = load %struct.socket*, %struct.socket** %4, align 8
  %79 = getelementptr inbounds %struct.socket, %struct.socket* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = load i64, i64* @SOCK_STREAM, align 8
  %82 = icmp eq i64 %80, %81
  br i1 %82, label %83, label %87

83:                                               ; preds = %77
  %84 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %85 = load i32, i32* @nfssvc_loss, align 4
  %86 = call i32 @svc_loss_reg(%struct.TYPE_7__* %84, i32 %85)
  br label %87

87:                                               ; preds = %83, %77
  %88 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %89 = call i32 @SVC_RELEASE(%struct.TYPE_7__* %88)
  br label %90

90:                                               ; preds = %87, %32
  br label %91

91:                                               ; preds = %90, %17
  %92 = load i32, i32* %5, align 4
  %93 = call i32 @NFSEXITCODE(i32 %92)
  %94 = load i32, i32* %5, align 4
  ret i32 %94
}

declare dso_local i32 @soreserve(%struct.socket*, i32, i32) #1

declare dso_local %struct.TYPE_7__* @svc_dg_create(i32, %struct.socket*, i32, i32) #1

declare dso_local %struct.TYPE_7__* @svc_vc_create(i32, %struct.socket*, i32, i32) #1

declare dso_local i32 @svc_reg(%struct.TYPE_7__*, i32, i64, i32, i32*) #1

declare dso_local i32 @svc_loss_reg(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @SVC_RELEASE(%struct.TYPE_7__*) #1

declare dso_local i32 @NFSEXITCODE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
