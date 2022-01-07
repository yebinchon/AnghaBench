; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/nfsclient/extr_nfs_clvnops.c_ncl_readlinkrpc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/nfsclient/extr_nfs_clvnops.c_ncl_readlinkrpc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vnode = type { i32 }
%struct.uio = type { i32 }
%struct.ucred = type { i32 }
%struct.nfsvattr = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ncl_readlinkrpc(%struct.vnode* %0, %struct.uio* %1, %struct.ucred* %2) #0 {
  %4 = alloca %struct.vnode*, align 8
  %5 = alloca %struct.uio*, align 8
  %6 = alloca %struct.ucred*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.nfsvattr, align 4
  store %struct.vnode* %0, %struct.vnode** %4, align 8
  store %struct.uio* %1, %struct.uio** %5, align 8
  store %struct.ucred* %2, %struct.ucred** %6, align 8
  %11 = load %struct.vnode*, %struct.vnode** %4, align 8
  %12 = load %struct.uio*, %struct.uio** %5, align 8
  %13 = load %struct.ucred*, %struct.ucred** %6, align 8
  %14 = load %struct.uio*, %struct.uio** %5, align 8
  %15 = getelementptr inbounds %struct.uio, %struct.uio* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @nfsrpc_readlink(%struct.vnode* %11, %struct.uio* %12, %struct.ucred* %13, i32 %16, %struct.nfsvattr* %10, i32* %9, i32* null)
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* %9, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %30

20:                                               ; preds = %3
  %21 = call i32 @nfscl_loadattrcache(%struct.vnode** %4, %struct.nfsvattr* %10, i32* null, i32* null, i32 0, i32 1)
  store i32 %21, i32* %8, align 4
  %22 = load i32, i32* %8, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %20
  %25 = load i32, i32* %7, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %29, label %27

27:                                               ; preds = %24
  %28 = load i32, i32* %8, align 4
  store i32 %28, i32* %7, align 4
  br label %29

29:                                               ; preds = %27, %24, %20
  br label %30

30:                                               ; preds = %29, %3
  %31 = load i32, i32* %7, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %43

33:                                               ; preds = %30
  %34 = load %struct.vnode*, %struct.vnode** %4, align 8
  %35 = call i64 @NFS_ISV4(%struct.vnode* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %43

37:                                               ; preds = %33
  %38 = load %struct.uio*, %struct.uio** %5, align 8
  %39 = getelementptr inbounds %struct.uio, %struct.uio* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* %7, align 4
  %42 = call i32 @nfscl_maperr(i32 %40, i32 %41, i32 0, i32 0)
  store i32 %42, i32* %7, align 4
  br label %43

43:                                               ; preds = %37, %33, %30
  %44 = load i32, i32* %7, align 4
  ret i32 %44
}

declare dso_local i32 @nfsrpc_readlink(%struct.vnode*, %struct.uio*, %struct.ucred*, i32, %struct.nfsvattr*, i32*, i32*) #1

declare dso_local i32 @nfscl_loadattrcache(%struct.vnode**, %struct.nfsvattr*, i32*, i32*, i32, i32) #1

declare dso_local i64 @NFS_ISV4(%struct.vnode*) #1

declare dso_local i32 @nfscl_maperr(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
