; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/nfsclient/extr_nfs_clvnops.c_ncl_commit.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/nfsclient/extr_nfs_clvnops.c_ncl_commit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vnode = type { i32 }
%struct.ucred = type { i32 }
%struct.thread = type { i32 }
%struct.nfsvattr = type { i32 }
%struct.nfsmount = type { i32, i32 }
%struct.nfsnode = type { i32 }
%struct.uio = type { i32, i32 }

@EIO = common dso_local global i32 0, align 4
@NDSCOMMIT = common dso_local global i32 0, align 4
@NFSV4OPEN_ACCESSWRITE = common dso_local global i32 0, align 4
@NFSSTA_HASWRITEVERF = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ncl_commit(%struct.vnode* %0, i32 %1, i32 %2, %struct.ucred* %3, %struct.thread* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.vnode*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.ucred*, align 8
  %11 = alloca %struct.thread*, align 8
  %12 = alloca %struct.nfsvattr, align 4
  %13 = alloca %struct.nfsmount*, align 8
  %14 = alloca %struct.nfsnode*, align 8
  %15 = alloca %struct.uio, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.vnode* %0, %struct.vnode** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store %struct.ucred* %3, %struct.ucred** %10, align 8
  store %struct.thread* %4, %struct.thread** %11, align 8
  %18 = load %struct.vnode*, %struct.vnode** %7, align 8
  %19 = getelementptr inbounds %struct.vnode, %struct.vnode* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call %struct.nfsmount* @VFSTONFS(i32 %20)
  store %struct.nfsmount* %21, %struct.nfsmount** %13, align 8
  %22 = load %struct.vnode*, %struct.vnode** %7, align 8
  %23 = call %struct.nfsnode* @VTONFS(%struct.vnode* %22)
  store %struct.nfsnode* %23, %struct.nfsnode** %14, align 8
  %24 = load i32, i32* @EIO, align 4
  store i32 %24, i32* %16, align 4
  store i32 0, i32* %17, align 4
  %25 = load %struct.nfsmount*, %struct.nfsmount** %13, align 8
  %26 = call i64 @NFSHASPNFS(%struct.nfsmount* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %59

28:                                               ; preds = %5
  %29 = load %struct.nfsnode*, %struct.nfsnode** %14, align 8
  %30 = getelementptr inbounds %struct.nfsnode, %struct.nfsnode* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @NDSCOMMIT, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %59

35:                                               ; preds = %28
  %36 = load i32, i32* %8, align 4
  %37 = getelementptr inbounds %struct.uio, %struct.uio* %15, i32 0, i32 1
  store i32 %36, i32* %37, align 4
  %38 = load i32, i32* %9, align 4
  %39 = getelementptr inbounds %struct.uio, %struct.uio* %15, i32 0, i32 0
  store i32 %38, i32* %39, align 4
  %40 = load %struct.vnode*, %struct.vnode** %7, align 8
  %41 = load i32, i32* @NFSV4OPEN_ACCESSWRITE, align 4
  %42 = load %struct.ucred*, %struct.ucred** %10, align 8
  %43 = load %struct.thread*, %struct.thread** %11, align 8
  %44 = call i32 @nfscl_doiods(%struct.vnode* %40, %struct.uio* %15, i32* null, i32* null, i32 %41, i32 1, %struct.ucred* %42, %struct.thread* %43)
  store i32 %44, i32* %16, align 4
  %45 = load i32, i32* %16, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %58

47:                                               ; preds = %35
  %48 = load %struct.nfsnode*, %struct.nfsnode** %14, align 8
  %49 = call i32 @NFSLOCKNODE(%struct.nfsnode* %48)
  %50 = load i32, i32* @NDSCOMMIT, align 4
  %51 = xor i32 %50, -1
  %52 = load %struct.nfsnode*, %struct.nfsnode** %14, align 8
  %53 = getelementptr inbounds %struct.nfsnode, %struct.nfsnode* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = and i32 %54, %51
  store i32 %55, i32* %53, align 4
  %56 = load %struct.nfsnode*, %struct.nfsnode** %14, align 8
  %57 = call i32 @NFSUNLOCKNODE(%struct.nfsnode* %56)
  br label %58

58:                                               ; preds = %47, %35
  br label %59

59:                                               ; preds = %58, %28, %5
  %60 = load i32, i32* %16, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %86

62:                                               ; preds = %59
  %63 = load %struct.nfsmount*, %struct.nfsmount** %13, align 8
  %64 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %63, i32 0, i32 1
  %65 = call i32 @mtx_lock(i32* %64)
  %66 = load %struct.nfsmount*, %struct.nfsmount** %13, align 8
  %67 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* @NFSSTA_HASWRITEVERF, align 4
  %70 = and i32 %68, %69
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %76

72:                                               ; preds = %62
  %73 = load %struct.nfsmount*, %struct.nfsmount** %13, align 8
  %74 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %73, i32 0, i32 1
  %75 = call i32 @mtx_unlock(i32* %74)
  store i32 0, i32* %6, align 4
  br label %104

76:                                               ; preds = %62
  %77 = load %struct.nfsmount*, %struct.nfsmount** %13, align 8
  %78 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %77, i32 0, i32 1
  %79 = call i32 @mtx_unlock(i32* %78)
  %80 = load %struct.vnode*, %struct.vnode** %7, align 8
  %81 = load i32, i32* %8, align 4
  %82 = load i32, i32* %9, align 4
  %83 = load %struct.ucred*, %struct.ucred** %10, align 8
  %84 = load %struct.thread*, %struct.thread** %11, align 8
  %85 = call i32 @nfsrpc_commit(%struct.vnode* %80, i32 %81, i32 %82, %struct.ucred* %83, %struct.thread* %84, %struct.nfsvattr* %12, i32* %17, i32* null)
  store i32 %85, i32* %16, align 4
  br label %86

86:                                               ; preds = %76, %59
  %87 = load i32, i32* %17, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %91

89:                                               ; preds = %86
  %90 = call i32 @nfscl_loadattrcache(%struct.vnode** %7, %struct.nfsvattr* %12, i32* null, i32* null, i32 0, i32 1)
  br label %91

91:                                               ; preds = %89, %86
  %92 = load i32, i32* %16, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %102

94:                                               ; preds = %91
  %95 = load %struct.vnode*, %struct.vnode** %7, align 8
  %96 = call i64 @NFS_ISV4(%struct.vnode* %95)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %102

98:                                               ; preds = %94
  %99 = load %struct.thread*, %struct.thread** %11, align 8
  %100 = load i32, i32* %16, align 4
  %101 = call i32 @nfscl_maperr(%struct.thread* %99, i32 %100, i32 0, i32 0)
  store i32 %101, i32* %16, align 4
  br label %102

102:                                              ; preds = %98, %94, %91
  %103 = load i32, i32* %16, align 4
  store i32 %103, i32* %6, align 4
  br label %104

104:                                              ; preds = %102, %72
  %105 = load i32, i32* %6, align 4
  ret i32 %105
}

declare dso_local %struct.nfsmount* @VFSTONFS(i32) #1

declare dso_local %struct.nfsnode* @VTONFS(%struct.vnode*) #1

declare dso_local i64 @NFSHASPNFS(%struct.nfsmount*) #1

declare dso_local i32 @nfscl_doiods(%struct.vnode*, %struct.uio*, i32*, i32*, i32, i32, %struct.ucred*, %struct.thread*) #1

declare dso_local i32 @NFSLOCKNODE(%struct.nfsnode*) #1

declare dso_local i32 @NFSUNLOCKNODE(%struct.nfsnode*) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @nfsrpc_commit(%struct.vnode*, i32, i32, %struct.ucred*, %struct.thread*, %struct.nfsvattr*, i32*, i32*) #1

declare dso_local i32 @nfscl_loadattrcache(%struct.vnode**, %struct.nfsvattr*, i32*, i32*, i32, i32) #1

declare dso_local i64 @NFS_ISV4(%struct.vnode*) #1

declare dso_local i32 @nfscl_maperr(%struct.thread*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
