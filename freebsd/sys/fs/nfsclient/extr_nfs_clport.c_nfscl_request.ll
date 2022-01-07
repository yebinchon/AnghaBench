; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/nfsclient/extr_nfs_clport.c_nfscl_request.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/nfsclient/extr_nfs_clport.c_nfscl_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfsrv_descript = type { i32 }
%struct.vnode = type { i32 }
%struct.ucred = type { i32 }
%struct.nfsmount = type { i32 }

@ND_NFSV4 = common dso_local global i32 0, align 4
@NFS_VER4 = common dso_local global i32 0, align 4
@ND_NFSV3 = common dso_local global i32 0, align 4
@NFS_VER3 = common dso_local global i32 0, align 4
@NFS_VER2 = common dso_local global i32 0, align 4
@NFS_PROG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nfscl_request(%struct.nfsrv_descript* %0, %struct.vnode* %1, i32* %2, %struct.ucred* %3, i8* %4) #0 {
  %6 = alloca %struct.nfsrv_descript*, align 8
  %7 = alloca %struct.vnode*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.ucred*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.nfsmount*, align 8
  store %struct.nfsrv_descript* %0, %struct.nfsrv_descript** %6, align 8
  store %struct.vnode* %1, %struct.vnode** %7, align 8
  store i32* %2, i32** %8, align 8
  store %struct.ucred* %3, %struct.ucred** %9, align 8
  store i8* %4, i8** %10, align 8
  %14 = load %struct.vnode*, %struct.vnode** %7, align 8
  %15 = getelementptr inbounds %struct.vnode, %struct.vnode* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call %struct.nfsmount* @VFSTONFS(i32 %16)
  store %struct.nfsmount* %17, %struct.nfsmount** %13, align 8
  %18 = load %struct.nfsrv_descript*, %struct.nfsrv_descript** %6, align 8
  %19 = getelementptr inbounds %struct.nfsrv_descript, %struct.nfsrv_descript* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @ND_NFSV4, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %5
  %25 = load i32, i32* @NFS_VER4, align 4
  store i32 %25, i32* %12, align 4
  br label %38

26:                                               ; preds = %5
  %27 = load %struct.nfsrv_descript*, %struct.nfsrv_descript** %6, align 8
  %28 = getelementptr inbounds %struct.nfsrv_descript, %struct.nfsrv_descript* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @ND_NFSV3, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %26
  %34 = load i32, i32* @NFS_VER3, align 4
  store i32 %34, i32* %12, align 4
  br label %37

35:                                               ; preds = %26
  %36 = load i32, i32* @NFS_VER2, align 4
  store i32 %36, i32* %12, align 4
  br label %37

37:                                               ; preds = %35, %33
  br label %38

38:                                               ; preds = %37, %24
  %39 = load %struct.nfsrv_descript*, %struct.nfsrv_descript** %6, align 8
  %40 = load %struct.nfsmount*, %struct.nfsmount** %13, align 8
  %41 = load %struct.nfsmount*, %struct.nfsmount** %13, align 8
  %42 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %41, i32 0, i32 0
  %43 = load %struct.vnode*, %struct.vnode** %7, align 8
  %44 = load i32*, i32** %8, align 8
  %45 = load %struct.ucred*, %struct.ucred** %9, align 8
  %46 = load i32, i32* @NFS_PROG, align 4
  %47 = load i32, i32* %12, align 4
  %48 = call i32 @newnfs_request(%struct.nfsrv_descript* %39, %struct.nfsmount* %40, i32* null, i32* %42, %struct.vnode* %43, i32* %44, %struct.ucred* %45, i32 %46, i32 %47, i32* null, i32 1, i32* null, i32* null)
  store i32 %48, i32* %11, align 4
  %49 = load i32, i32* %11, align 4
  ret i32 %49
}

declare dso_local %struct.nfsmount* @VFSTONFS(i32) #1

declare dso_local i32 @newnfs_request(%struct.nfsrv_descript*, %struct.nfsmount*, i32*, i32*, %struct.vnode*, i32*, %struct.ucred*, i32, i32, i32*, i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
