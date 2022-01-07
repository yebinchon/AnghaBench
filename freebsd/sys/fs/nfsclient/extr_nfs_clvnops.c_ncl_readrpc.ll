; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/nfsclient/extr_nfs_clvnops.c_ncl_readrpc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/nfsclient/extr_nfs_clvnops.c_ncl_readrpc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vnode = type { i32 }
%struct.uio = type { i32 }
%struct.ucred = type { i32 }
%struct.nfsvattr = type { i32 }
%struct.nfsmount = type { i32 }

@EIO = common dso_local global i32 0, align 4
@NFSV4OPEN_ACCESSREAD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"readrpc: aft doiods=%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ncl_readrpc(%struct.vnode* %0, %struct.uio* %1, %struct.ucred* %2) #0 {
  %4 = alloca %struct.vnode*, align 8
  %5 = alloca %struct.uio*, align 8
  %6 = alloca %struct.ucred*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.nfsvattr, align 4
  %11 = alloca %struct.nfsmount*, align 8
  store %struct.vnode* %0, %struct.vnode** %4, align 8
  store %struct.uio* %1, %struct.uio** %5, align 8
  store %struct.ucred* %2, %struct.ucred** %6, align 8
  %12 = load %struct.vnode*, %struct.vnode** %4, align 8
  %13 = call i32 @vnode_mount(%struct.vnode* %12)
  %14 = call %struct.nfsmount* @VFSTONFS(i32 %13)
  store %struct.nfsmount* %14, %struct.nfsmount** %11, align 8
  %15 = load i32, i32* @EIO, align 4
  store i32 %15, i32* %7, align 4
  store i32 0, i32* %9, align 4
  %16 = load %struct.nfsmount*, %struct.nfsmount** %11, align 8
  %17 = call i64 @NFSHASPNFS(%struct.nfsmount* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %28

19:                                               ; preds = %3
  %20 = load %struct.vnode*, %struct.vnode** %4, align 8
  %21 = load %struct.uio*, %struct.uio** %5, align 8
  %22 = load i32, i32* @NFSV4OPEN_ACCESSREAD, align 4
  %23 = load %struct.ucred*, %struct.ucred** %6, align 8
  %24 = load %struct.uio*, %struct.uio** %5, align 8
  %25 = getelementptr inbounds %struct.uio, %struct.uio* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @nfscl_doiods(%struct.vnode* %20, %struct.uio* %21, i32* null, i32* null, i32 %22, i32 0, %struct.ucred* %23, i32 %26)
  store i32 %27, i32* %7, align 4
  br label %28

28:                                               ; preds = %19, %3
  %29 = load i32, i32* %7, align 4
  %30 = call i32 @NFSCL_DEBUG(i32 4, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %29)
  %31 = load i32, i32* %7, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %41

33:                                               ; preds = %28
  %34 = load %struct.vnode*, %struct.vnode** %4, align 8
  %35 = load %struct.uio*, %struct.uio** %5, align 8
  %36 = load %struct.ucred*, %struct.ucred** %6, align 8
  %37 = load %struct.uio*, %struct.uio** %5, align 8
  %38 = getelementptr inbounds %struct.uio, %struct.uio* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @nfsrpc_read(%struct.vnode* %34, %struct.uio* %35, %struct.ucred* %36, i32 %39, %struct.nfsvattr* %10, i32* %9, i32* null)
  store i32 %40, i32* %7, align 4
  br label %41

41:                                               ; preds = %33, %28
  %42 = load i32, i32* %9, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %54

44:                                               ; preds = %41
  %45 = call i32 @nfscl_loadattrcache(%struct.vnode** %4, %struct.nfsvattr* %10, i32* null, i32* null, i32 0, i32 1)
  store i32 %45, i32* %8, align 4
  %46 = load i32, i32* %8, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %53

48:                                               ; preds = %44
  %49 = load i32, i32* %7, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %53, label %51

51:                                               ; preds = %48
  %52 = load i32, i32* %8, align 4
  store i32 %52, i32* %7, align 4
  br label %53

53:                                               ; preds = %51, %48, %44
  br label %54

54:                                               ; preds = %53, %41
  %55 = load i32, i32* %7, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %67

57:                                               ; preds = %54
  %58 = load %struct.vnode*, %struct.vnode** %4, align 8
  %59 = call i64 @NFS_ISV4(%struct.vnode* %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %67

61:                                               ; preds = %57
  %62 = load %struct.uio*, %struct.uio** %5, align 8
  %63 = getelementptr inbounds %struct.uio, %struct.uio* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* %7, align 4
  %66 = call i32 @nfscl_maperr(i32 %64, i32 %65, i32 0, i32 0)
  store i32 %66, i32* %7, align 4
  br label %67

67:                                               ; preds = %61, %57, %54
  %68 = load i32, i32* %7, align 4
  ret i32 %68
}

declare dso_local %struct.nfsmount* @VFSTONFS(i32) #1

declare dso_local i32 @vnode_mount(%struct.vnode*) #1

declare dso_local i64 @NFSHASPNFS(%struct.nfsmount*) #1

declare dso_local i32 @nfscl_doiods(%struct.vnode*, %struct.uio*, i32*, i32*, i32, i32, %struct.ucred*, i32) #1

declare dso_local i32 @NFSCL_DEBUG(i32, i8*, i32) #1

declare dso_local i32 @nfsrpc_read(%struct.vnode*, %struct.uio*, %struct.ucred*, i32, %struct.nfsvattr*, i32*, i32*) #1

declare dso_local i32 @nfscl_loadattrcache(%struct.vnode**, %struct.nfsvattr*, i32*, i32*, i32, i32) #1

declare dso_local i64 @NFS_ISV4(%struct.vnode*) #1

declare dso_local i32 @nfscl_maperr(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
