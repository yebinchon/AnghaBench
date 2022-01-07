; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/nfsclient/extr_nfs_clvfsops.c_nfs_root.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/nfsclient/extr_nfs_clvfsops.c_nfs_root.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }
%struct.mount = type { i32 }
%struct.vnode = type { i64, i32 }
%struct.nfsmount = type { i32, i32, i32 }
%struct.nfsnode = type { i32 }

@curthread = common dso_local global %struct.TYPE_3__* null, align 8
@VNON = common dso_local global i64 0, align 8
@VDIR = common dso_local global i64 0, align 8
@VV_ROOT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mount*, i32, %struct.vnode**)* @nfs_root to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfs_root(%struct.mount* %0, i32 %1, %struct.vnode** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mount*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.vnode**, align 8
  %8 = alloca %struct.vnode*, align 8
  %9 = alloca %struct.nfsmount*, align 8
  %10 = alloca %struct.nfsnode*, align 8
  %11 = alloca i32, align 4
  store %struct.mount* %0, %struct.mount** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.vnode** %2, %struct.vnode*** %7, align 8
  %12 = load %struct.mount*, %struct.mount** %5, align 8
  %13 = call %struct.nfsmount* @VFSTONFS(%struct.mount* %12)
  store %struct.nfsmount* %13, %struct.nfsmount** %9, align 8
  %14 = load %struct.mount*, %struct.mount** %5, align 8
  %15 = load %struct.nfsmount*, %struct.nfsmount** %9, align 8
  %16 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.nfsmount*, %struct.nfsmount** %9, align 8
  %19 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* %6, align 4
  %22 = call i32 @ncl_nget(%struct.mount* %14, i32 %17, i32 %20, %struct.nfsnode** %10, i32 %21)
  store i32 %22, i32* %11, align 4
  %23 = load i32, i32* %11, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %3
  %26 = load i32, i32* %11, align 4
  store i32 %26, i32* %4, align 4
  br label %73

27:                                               ; preds = %3
  %28 = load %struct.nfsnode*, %struct.nfsnode** %10, align 8
  %29 = call %struct.vnode* @NFSTOV(%struct.nfsnode* %28)
  store %struct.vnode* %29, %struct.vnode** %8, align 8
  %30 = load %struct.nfsmount*, %struct.nfsmount** %9, align 8
  %31 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %30, i32 0, i32 0
  %32 = call i32 @mtx_lock(i32* %31)
  %33 = load %struct.nfsmount*, %struct.nfsmount** %9, align 8
  %34 = call i64 @NFSHASNFSV3(%struct.nfsmount* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %51

36:                                               ; preds = %27
  %37 = load %struct.nfsmount*, %struct.nfsmount** %9, align 8
  %38 = call i32 @NFSHASGOTFSINFO(%struct.nfsmount* %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %51, label %40

40:                                               ; preds = %36
  %41 = load %struct.nfsmount*, %struct.nfsmount** %9, align 8
  %42 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %41, i32 0, i32 0
  %43 = call i32 @mtx_unlock(i32* %42)
  %44 = load %struct.nfsmount*, %struct.nfsmount** %9, align 8
  %45 = load %struct.vnode*, %struct.vnode** %8, align 8
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** @curthread, align 8
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** @curthread, align 8
  %50 = call i32 @ncl_fsinfo(%struct.nfsmount* %44, %struct.vnode* %45, i32 %48, %struct.TYPE_3__* %49)
  br label %55

51:                                               ; preds = %36, %27
  %52 = load %struct.nfsmount*, %struct.nfsmount** %9, align 8
  %53 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %52, i32 0, i32 0
  %54 = call i32 @mtx_unlock(i32* %53)
  br label %55

55:                                               ; preds = %51, %40
  %56 = load %struct.vnode*, %struct.vnode** %8, align 8
  %57 = getelementptr inbounds %struct.vnode, %struct.vnode* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @VNON, align 8
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %61, label %65

61:                                               ; preds = %55
  %62 = load i64, i64* @VDIR, align 8
  %63 = load %struct.vnode*, %struct.vnode** %8, align 8
  %64 = getelementptr inbounds %struct.vnode, %struct.vnode* %63, i32 0, i32 0
  store i64 %62, i64* %64, align 8
  br label %65

65:                                               ; preds = %61, %55
  %66 = load i32, i32* @VV_ROOT, align 4
  %67 = load %struct.vnode*, %struct.vnode** %8, align 8
  %68 = getelementptr inbounds %struct.vnode, %struct.vnode* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 8
  %70 = or i32 %69, %66
  store i32 %70, i32* %68, align 8
  %71 = load %struct.vnode*, %struct.vnode** %8, align 8
  %72 = load %struct.vnode**, %struct.vnode*** %7, align 8
  store %struct.vnode* %71, %struct.vnode** %72, align 8
  store i32 0, i32* %4, align 4
  br label %73

73:                                               ; preds = %65, %25
  %74 = load i32, i32* %4, align 4
  ret i32 %74
}

declare dso_local %struct.nfsmount* @VFSTONFS(%struct.mount*) #1

declare dso_local i32 @ncl_nget(%struct.mount*, i32, i32, %struct.nfsnode**, i32) #1

declare dso_local %struct.vnode* @NFSTOV(%struct.nfsnode*) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i64 @NFSHASNFSV3(%struct.nfsmount*) #1

declare dso_local i32 @NFSHASGOTFSINFO(%struct.nfsmount*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @ncl_fsinfo(%struct.nfsmount*, %struct.vnode*, i32, %struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
