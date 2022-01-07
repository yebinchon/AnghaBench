; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/nfsclient/extr_nfs_clvnops.c_ncl_writerpc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/nfsclient/extr_nfs_clvnops.c_ncl_writerpc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vnode = type { i32 }
%struct.uio = type { i32 }
%struct.ucred = type { i32 }
%struct.nfsvattr = type { i32 }
%struct.nfsmount = type { i32 }
%struct.TYPE_2__ = type { i32 }

@EIO = common dso_local global i32 0, align 4
@NFSV4OPEN_ACCESSWRITE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"writerpc: aft doiods=%d\0A\00", align 1
@ND_NFSV4 = common dso_local global i32 0, align 4
@NFSWRITE_FILESYNC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ncl_writerpc(%struct.vnode* %0, %struct.uio* %1, %struct.ucred* %2, i32* %3, i32* %4, i32 %5) #0 {
  %7 = alloca %struct.vnode*, align 8
  %8 = alloca %struct.uio*, align 8
  %9 = alloca %struct.ucred*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.nfsvattr, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.nfsmount*, align 8
  store %struct.vnode* %0, %struct.vnode** %7, align 8
  store %struct.uio* %1, %struct.uio** %8, align 8
  store %struct.ucred* %2, %struct.ucred** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  store i32 %5, i32* %12, align 4
  %18 = load %struct.vnode*, %struct.vnode** %7, align 8
  %19 = call i32 @vnode_mount(%struct.vnode* %18)
  %20 = call %struct.nfsmount* @VFSTONFS(i32 %19)
  store %struct.nfsmount* %20, %struct.nfsmount** %17, align 8
  %21 = load i32, i32* @EIO, align 4
  store i32 %21, i32* %14, align 4
  store i32 0, i32* %15, align 4
  %22 = load %struct.nfsmount*, %struct.nfsmount** %17, align 8
  %23 = call i64 @NFSHASPNFS(%struct.nfsmount* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %36

25:                                               ; preds = %6
  %26 = load %struct.vnode*, %struct.vnode** %7, align 8
  %27 = load %struct.uio*, %struct.uio** %8, align 8
  %28 = load i32*, i32** %10, align 8
  %29 = load i32*, i32** %11, align 8
  %30 = load i32, i32* @NFSV4OPEN_ACCESSWRITE, align 4
  %31 = load %struct.ucred*, %struct.ucred** %9, align 8
  %32 = load %struct.uio*, %struct.uio** %8, align 8
  %33 = getelementptr inbounds %struct.uio, %struct.uio* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @nfscl_doiods(%struct.vnode* %26, %struct.uio* %27, i32* %28, i32* %29, i32 %30, i32 0, %struct.ucred* %31, i32 %34)
  store i32 %35, i32* %14, align 4
  br label %36

36:                                               ; preds = %25, %6
  %37 = load i32, i32* %14, align 4
  %38 = call i32 @NFSCL_DEBUG(i32 4, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %37)
  %39 = load i32, i32* %14, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %52

41:                                               ; preds = %36
  %42 = load %struct.vnode*, %struct.vnode** %7, align 8
  %43 = load %struct.uio*, %struct.uio** %8, align 8
  %44 = load i32*, i32** %10, align 8
  %45 = load i32*, i32** %11, align 8
  %46 = load %struct.ucred*, %struct.ucred** %9, align 8
  %47 = load %struct.uio*, %struct.uio** %8, align 8
  %48 = getelementptr inbounds %struct.uio, %struct.uio* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* %12, align 4
  %51 = call i32 @nfsrpc_write(%struct.vnode* %42, %struct.uio* %43, i32* %44, i32* %45, %struct.ucred* %46, i32 %49, %struct.nfsvattr* %13, i32* %15, i32* null, i32 %50)
  store i32 %51, i32* %14, align 4
  br label %52

52:                                               ; preds = %41, %36
  %53 = load i32, i32* %15, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %76

55:                                               ; preds = %52
  %56 = load %struct.vnode*, %struct.vnode** %7, align 8
  %57 = call %struct.TYPE_2__* @VTONFS(%struct.vnode* %56)
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @ND_NFSV4, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %55
  %64 = call i32 @nfscl_loadattrcache(%struct.vnode** %7, %struct.nfsvattr* %13, i32* null, i32* null, i32 1, i32 1)
  store i32 %64, i32* %16, align 4
  br label %67

65:                                               ; preds = %55
  %66 = call i32 @nfscl_loadattrcache(%struct.vnode** %7, %struct.nfsvattr* %13, i32* null, i32* null, i32 0, i32 1)
  store i32 %66, i32* %16, align 4
  br label %67

67:                                               ; preds = %65, %63
  %68 = load i32, i32* %16, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %75

70:                                               ; preds = %67
  %71 = load i32, i32* %14, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %75, label %73

73:                                               ; preds = %70
  %74 = load i32, i32* %16, align 4
  store i32 %74, i32* %14, align 4
  br label %75

75:                                               ; preds = %73, %70, %67
  br label %76

76:                                               ; preds = %75, %52
  %77 = load %struct.vnode*, %struct.vnode** %7, align 8
  %78 = call i64 @DOINGASYNC(%struct.vnode* %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %83

80:                                               ; preds = %76
  %81 = load i32, i32* @NFSWRITE_FILESYNC, align 4
  %82 = load i32*, i32** %10, align 8
  store i32 %81, i32* %82, align 4
  br label %83

83:                                               ; preds = %80, %76
  %84 = load i32, i32* %14, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %96

86:                                               ; preds = %83
  %87 = load %struct.vnode*, %struct.vnode** %7, align 8
  %88 = call i64 @NFS_ISV4(%struct.vnode* %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %96

90:                                               ; preds = %86
  %91 = load %struct.uio*, %struct.uio** %8, align 8
  %92 = getelementptr inbounds %struct.uio, %struct.uio* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = load i32, i32* %14, align 4
  %95 = call i32 @nfscl_maperr(i32 %93, i32 %94, i32 0, i32 0)
  store i32 %95, i32* %14, align 4
  br label %96

96:                                               ; preds = %90, %86, %83
  %97 = load i32, i32* %14, align 4
  ret i32 %97
}

declare dso_local %struct.nfsmount* @VFSTONFS(i32) #1

declare dso_local i32 @vnode_mount(%struct.vnode*) #1

declare dso_local i64 @NFSHASPNFS(%struct.nfsmount*) #1

declare dso_local i32 @nfscl_doiods(%struct.vnode*, %struct.uio*, i32*, i32*, i32, i32, %struct.ucred*, i32) #1

declare dso_local i32 @NFSCL_DEBUG(i32, i8*, i32) #1

declare dso_local i32 @nfsrpc_write(%struct.vnode*, %struct.uio*, i32*, i32*, %struct.ucred*, i32, %struct.nfsvattr*, i32*, i32*, i32) #1

declare dso_local %struct.TYPE_2__* @VTONFS(%struct.vnode*) #1

declare dso_local i32 @nfscl_loadattrcache(%struct.vnode**, %struct.nfsvattr*, i32*, i32*, i32, i32) #1

declare dso_local i64 @DOINGASYNC(%struct.vnode*) #1

declare dso_local i64 @NFS_ISV4(%struct.vnode*) #1

declare dso_local i32 @nfscl_maperr(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
