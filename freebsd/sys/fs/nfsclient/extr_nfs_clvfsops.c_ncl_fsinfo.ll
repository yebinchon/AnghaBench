; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/nfsclient/extr_nfs_clvfsops.c_ncl_fsinfo.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/nfsclient/extr_nfs_clvfsops.c_ncl_fsinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfsmount = type { i32 }
%struct.vnode = type { i32 }
%struct.ucred = type { i32 }
%struct.thread = type { i32 }
%struct.nfsfsinfo = type { i32 }
%struct.nfsvattr = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ncl_fsinfo(%struct.nfsmount* %0, %struct.vnode* %1, %struct.ucred* %2, %struct.thread* %3) #0 {
  %5 = alloca %struct.nfsmount*, align 8
  %6 = alloca %struct.vnode*, align 8
  %7 = alloca %struct.ucred*, align 8
  %8 = alloca %struct.thread*, align 8
  %9 = alloca %struct.nfsfsinfo, align 4
  %10 = alloca %struct.nfsvattr, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.nfsmount* %0, %struct.nfsmount** %5, align 8
  store %struct.vnode* %1, %struct.vnode** %6, align 8
  store %struct.ucred* %2, %struct.ucred** %7, align 8
  store %struct.thread* %3, %struct.thread** %8, align 8
  %13 = load %struct.vnode*, %struct.vnode** %6, align 8
  %14 = load %struct.ucred*, %struct.ucred** %7, align 8
  %15 = load %struct.thread*, %struct.thread** %8, align 8
  %16 = call i32 @nfsrpc_fsinfo(%struct.vnode* %13, %struct.nfsfsinfo* %9, %struct.ucred* %14, %struct.thread* %15, %struct.nfsvattr* %10, i32* %12, i32* null)
  store i32 %16, i32* %11, align 4
  %17 = load i32, i32* %11, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %33, label %19

19:                                               ; preds = %4
  %20 = load i32, i32* %12, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %19
  %23 = call i32 @nfscl_loadattrcache(%struct.vnode** %6, %struct.nfsvattr* %10, i32* null, i32* null, i32 0, i32 1)
  br label %24

24:                                               ; preds = %22, %19
  %25 = load %struct.nfsmount*, %struct.nfsmount** %5, align 8
  %26 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %25, i32 0, i32 0
  %27 = call i32 @mtx_lock(i32* %26)
  %28 = load %struct.nfsmount*, %struct.nfsmount** %5, align 8
  %29 = call i32 @nfscl_loadfsinfo(%struct.nfsmount* %28, %struct.nfsfsinfo* %9)
  %30 = load %struct.nfsmount*, %struct.nfsmount** %5, align 8
  %31 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %30, i32 0, i32 0
  %32 = call i32 @mtx_unlock(i32* %31)
  br label %33

33:                                               ; preds = %24, %4
  %34 = load i32, i32* %11, align 4
  ret i32 %34
}

declare dso_local i32 @nfsrpc_fsinfo(%struct.vnode*, %struct.nfsfsinfo*, %struct.ucred*, %struct.thread*, %struct.nfsvattr*, i32*, i32*) #1

declare dso_local i32 @nfscl_loadattrcache(%struct.vnode**, %struct.nfsvattr*, i32*, i32*, i32, i32) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @nfscl_loadfsinfo(%struct.nfsmount*, %struct.nfsfsinfo*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
