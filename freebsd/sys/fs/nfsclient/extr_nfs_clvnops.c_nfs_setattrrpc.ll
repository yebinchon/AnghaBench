; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/nfsclient/extr_nfs_clvnops.c_nfs_setattrrpc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/nfsclient/extr_nfs_clvnops.c_nfs_setattrrpc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vnode = type { i32 }
%struct.vattr = type { i32, i32 }
%struct.ucred = type { i32 }
%struct.thread = type { i32 }
%struct.nfsnode = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.nfsvattr = type { i32 }

@NFS_ACCESSCACHESIZE = common dso_local global i32 0, align 4
@NDELEGMOD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vnode*, %struct.vattr*, %struct.ucred*, %struct.thread*)* @nfs_setattrrpc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfs_setattrrpc(%struct.vnode* %0, %struct.vattr* %1, %struct.ucred* %2, %struct.thread* %3) #0 {
  %5 = alloca %struct.vnode*, align 8
  %6 = alloca %struct.vattr*, align 8
  %7 = alloca %struct.ucred*, align 8
  %8 = alloca %struct.thread*, align 8
  %9 = alloca %struct.nfsnode*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.nfsvattr, align 4
  store %struct.vnode* %0, %struct.vnode** %5, align 8
  store %struct.vattr* %1, %struct.vattr** %6, align 8
  store %struct.ucred* %2, %struct.ucred** %7, align 8
  store %struct.thread* %3, %struct.thread** %8, align 8
  %15 = load %struct.vnode*, %struct.vnode** %5, align 8
  %16 = call %struct.nfsnode* @VTONFS(%struct.vnode* %15)
  store %struct.nfsnode* %16, %struct.nfsnode** %9, align 8
  %17 = load %struct.vnode*, %struct.vnode** %5, align 8
  %18 = call i64 @NFS_ISV34(%struct.vnode* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %48

20:                                               ; preds = %4
  %21 = load %struct.nfsnode*, %struct.nfsnode** %9, align 8
  %22 = call i32 @NFSLOCKNODE(%struct.nfsnode* %21)
  store i32 0, i32* %13, align 4
  br label %23

23:                                               ; preds = %35, %20
  %24 = load i32, i32* %13, align 4
  %25 = load i32, i32* @NFS_ACCESSCACHESIZE, align 4
  %26 = icmp slt i32 %24, %25
  br i1 %26, label %27, label %38

27:                                               ; preds = %23
  %28 = load %struct.nfsnode*, %struct.nfsnode** %9, align 8
  %29 = getelementptr inbounds %struct.nfsnode, %struct.nfsnode* %28, i32 0, i32 1
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = load i32, i32* %13, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i64 %32
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  store i64 0, i64* %34, align 8
  br label %35

35:                                               ; preds = %27
  %36 = load i32, i32* %13, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %13, align 4
  br label %23

38:                                               ; preds = %23
  %39 = load i32, i32* @NDELEGMOD, align 4
  %40 = load %struct.nfsnode*, %struct.nfsnode** %9, align 8
  %41 = getelementptr inbounds %struct.nfsnode, %struct.nfsnode* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = or i32 %42, %39
  store i32 %43, i32* %41, align 8
  %44 = load %struct.nfsnode*, %struct.nfsnode** %9, align 8
  %45 = call i32 @NFSUNLOCKNODE(%struct.nfsnode* %44)
  %46 = load %struct.vnode*, %struct.vnode** %5, align 8
  %47 = call i32 @KDTRACE_NFS_ACCESSCACHE_FLUSH_DONE(%struct.vnode* %46)
  br label %48

48:                                               ; preds = %38, %4
  %49 = load %struct.vnode*, %struct.vnode** %5, align 8
  %50 = load %struct.vattr*, %struct.vattr** %6, align 8
  %51 = load %struct.ucred*, %struct.ucred** %7, align 8
  %52 = load %struct.thread*, %struct.thread** %8, align 8
  %53 = call i32 @nfsrpc_setattr(%struct.vnode* %49, %struct.vattr* %50, i32* null, %struct.ucred* %51, %struct.thread* %52, %struct.nfsvattr* %14, i32* %12, i32* null)
  store i32 %53, i32* %10, align 4
  %54 = load i32, i32* %12, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %66

56:                                               ; preds = %48
  %57 = call i32 @nfscl_loadattrcache(%struct.vnode** %5, %struct.nfsvattr* %14, i32* null, i32* null, i32 0, i32 1)
  store i32 %57, i32* %11, align 4
  %58 = load i32, i32* %11, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %65

60:                                               ; preds = %56
  %61 = load i32, i32* %10, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %65, label %63

63:                                               ; preds = %60
  %64 = load i32, i32* %11, align 4
  store i32 %64, i32* %10, align 4
  br label %65

65:                                               ; preds = %63, %60, %56
  br label %66

66:                                               ; preds = %65, %48
  %67 = load i32, i32* %10, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %83

69:                                               ; preds = %66
  %70 = load %struct.vnode*, %struct.vnode** %5, align 8
  %71 = call i64 @NFS_ISV4(%struct.vnode* %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %83

73:                                               ; preds = %69
  %74 = load %struct.thread*, %struct.thread** %8, align 8
  %75 = load i32, i32* %10, align 4
  %76 = load %struct.vattr*, %struct.vattr** %6, align 8
  %77 = getelementptr inbounds %struct.vattr, %struct.vattr* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.vattr*, %struct.vattr** %6, align 8
  %80 = getelementptr inbounds %struct.vattr, %struct.vattr* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @nfscl_maperr(%struct.thread* %74, i32 %75, i32 %78, i32 %81)
  store i32 %82, i32* %10, align 4
  br label %83

83:                                               ; preds = %73, %69, %66
  %84 = load i32, i32* %10, align 4
  ret i32 %84
}

declare dso_local %struct.nfsnode* @VTONFS(%struct.vnode*) #1

declare dso_local i64 @NFS_ISV34(%struct.vnode*) #1

declare dso_local i32 @NFSLOCKNODE(%struct.nfsnode*) #1

declare dso_local i32 @NFSUNLOCKNODE(%struct.nfsnode*) #1

declare dso_local i32 @KDTRACE_NFS_ACCESSCACHE_FLUSH_DONE(%struct.vnode*) #1

declare dso_local i32 @nfsrpc_setattr(%struct.vnode*, %struct.vattr*, i32*, %struct.ucred*, %struct.thread*, %struct.nfsvattr*, i32*, i32*) #1

declare dso_local i32 @nfscl_loadattrcache(%struct.vnode**, %struct.nfsvattr*, i32*, i32*, i32, i32) #1

declare dso_local i64 @NFS_ISV4(%struct.vnode*) #1

declare dso_local i32 @nfscl_maperr(%struct.thread*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
