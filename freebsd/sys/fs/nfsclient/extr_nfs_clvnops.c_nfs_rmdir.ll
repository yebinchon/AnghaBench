; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/nfsclient/extr_nfs_clvnops.c_nfs_rmdir.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/nfsclient/extr_nfs_clvnops.c_nfs_rmdir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vop_rmdir_args = type { %struct.componentname*, %struct.vnode*, %struct.vnode* }
%struct.componentname = type { i32, i32, i32, i32 }
%struct.vnode = type { i32 }
%struct.nfsnode = type { i64, i32 }
%struct.nfsvattr = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@NMODIFIED = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vop_rmdir_args*)* @nfs_rmdir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfs_rmdir(%struct.vop_rmdir_args* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vop_rmdir_args*, align 8
  %4 = alloca %struct.vnode*, align 8
  %5 = alloca %struct.vnode*, align 8
  %6 = alloca %struct.componentname*, align 8
  %7 = alloca %struct.nfsnode*, align 8
  %8 = alloca %struct.nfsvattr, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.vop_rmdir_args* %0, %struct.vop_rmdir_args** %3, align 8
  %11 = load %struct.vop_rmdir_args*, %struct.vop_rmdir_args** %3, align 8
  %12 = getelementptr inbounds %struct.vop_rmdir_args, %struct.vop_rmdir_args* %11, i32 0, i32 2
  %13 = load %struct.vnode*, %struct.vnode** %12, align 8
  store %struct.vnode* %13, %struct.vnode** %4, align 8
  %14 = load %struct.vop_rmdir_args*, %struct.vop_rmdir_args** %3, align 8
  %15 = getelementptr inbounds %struct.vop_rmdir_args, %struct.vop_rmdir_args* %14, i32 0, i32 1
  %16 = load %struct.vnode*, %struct.vnode** %15, align 8
  store %struct.vnode* %16, %struct.vnode** %5, align 8
  %17 = load %struct.vop_rmdir_args*, %struct.vop_rmdir_args** %3, align 8
  %18 = getelementptr inbounds %struct.vop_rmdir_args, %struct.vop_rmdir_args* %17, i32 0, i32 0
  %19 = load %struct.componentname*, %struct.componentname** %18, align 8
  store %struct.componentname* %19, %struct.componentname** %6, align 8
  %20 = load %struct.vnode*, %struct.vnode** %5, align 8
  %21 = load %struct.vnode*, %struct.vnode** %4, align 8
  %22 = icmp eq %struct.vnode* %20, %21
  br i1 %22, label %23, label %25

23:                                               ; preds = %1
  %24 = load i32, i32* @EINVAL, align 4
  store i32 %24, i32* %2, align 4
  br label %86

25:                                               ; preds = %1
  %26 = load %struct.vnode*, %struct.vnode** %5, align 8
  %27 = load %struct.componentname*, %struct.componentname** %6, align 8
  %28 = getelementptr inbounds %struct.componentname, %struct.componentname* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.componentname*, %struct.componentname** %6, align 8
  %31 = getelementptr inbounds %struct.componentname, %struct.componentname* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.componentname*, %struct.componentname** %6, align 8
  %34 = getelementptr inbounds %struct.componentname, %struct.componentname* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.componentname*, %struct.componentname** %6, align 8
  %37 = getelementptr inbounds %struct.componentname, %struct.componentname* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @nfsrpc_rmdir(%struct.vnode* %26, i32 %29, i32 %32, i32 %35, i32 %38, %struct.nfsvattr* %8, i32* %10, i32* null)
  store i32 %39, i32* %9, align 4
  %40 = load %struct.vnode*, %struct.vnode** %5, align 8
  %41 = call %struct.nfsnode* @VTONFS(%struct.vnode* %40)
  store %struct.nfsnode* %41, %struct.nfsnode** %7, align 8
  %42 = load %struct.nfsnode*, %struct.nfsnode** %7, align 8
  %43 = call i32 @NFSLOCKNODE(%struct.nfsnode* %42)
  %44 = load i32, i32* @NMODIFIED, align 4
  %45 = load %struct.nfsnode*, %struct.nfsnode** %7, align 8
  %46 = getelementptr inbounds %struct.nfsnode, %struct.nfsnode* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = or i32 %47, %44
  store i32 %48, i32* %46, align 8
  %49 = load i32, i32* %10, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %25
  %52 = load %struct.nfsnode*, %struct.nfsnode** %7, align 8
  %53 = call i32 @NFSUNLOCKNODE(%struct.nfsnode* %52)
  %54 = call i32 @nfscl_loadattrcache(%struct.vnode** %5, %struct.nfsvattr* %8, i32* null, i32* null, i32 0, i32 1)
  br label %62

55:                                               ; preds = %25
  %56 = load %struct.nfsnode*, %struct.nfsnode** %7, align 8
  %57 = getelementptr inbounds %struct.nfsnode, %struct.nfsnode* %56, i32 0, i32 0
  store i64 0, i64* %57, align 8
  %58 = load %struct.nfsnode*, %struct.nfsnode** %7, align 8
  %59 = call i32 @NFSUNLOCKNODE(%struct.nfsnode* %58)
  %60 = load %struct.vnode*, %struct.vnode** %5, align 8
  %61 = call i32 @KDTRACE_NFS_ATTRCACHE_FLUSH_DONE(%struct.vnode* %60)
  br label %62

62:                                               ; preds = %55, %51
  %63 = load %struct.vnode*, %struct.vnode** %5, align 8
  %64 = call i32 @cache_purge(%struct.vnode* %63)
  %65 = load %struct.vnode*, %struct.vnode** %4, align 8
  %66 = call i32 @cache_purge(%struct.vnode* %65)
  %67 = load i32, i32* %9, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %79

69:                                               ; preds = %62
  %70 = load %struct.vnode*, %struct.vnode** %5, align 8
  %71 = call i64 @NFS_ISV4(%struct.vnode* %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %79

73:                                               ; preds = %69
  %74 = load %struct.componentname*, %struct.componentname** %6, align 8
  %75 = getelementptr inbounds %struct.componentname, %struct.componentname* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* %9, align 4
  %78 = call i32 @nfscl_maperr(i32 %76, i32 %77, i32 0, i32 0)
  store i32 %78, i32* %9, align 4
  br label %79

79:                                               ; preds = %73, %69, %62
  %80 = load i32, i32* %9, align 4
  %81 = load i32, i32* @ENOENT, align 4
  %82 = icmp eq i32 %80, %81
  br i1 %82, label %83, label %84

83:                                               ; preds = %79
  store i32 0, i32* %9, align 4
  br label %84

84:                                               ; preds = %83, %79
  %85 = load i32, i32* %9, align 4
  store i32 %85, i32* %2, align 4
  br label %86

86:                                               ; preds = %84, %23
  %87 = load i32, i32* %2, align 4
  ret i32 %87
}

declare dso_local i32 @nfsrpc_rmdir(%struct.vnode*, i32, i32, i32, i32, %struct.nfsvattr*, i32*, i32*) #1

declare dso_local %struct.nfsnode* @VTONFS(%struct.vnode*) #1

declare dso_local i32 @NFSLOCKNODE(%struct.nfsnode*) #1

declare dso_local i32 @NFSUNLOCKNODE(%struct.nfsnode*) #1

declare dso_local i32 @nfscl_loadattrcache(%struct.vnode**, %struct.nfsvattr*, i32*, i32*, i32, i32) #1

declare dso_local i32 @KDTRACE_NFS_ATTRCACHE_FLUSH_DONE(%struct.vnode*) #1

declare dso_local i32 @cache_purge(%struct.vnode*) #1

declare dso_local i64 @NFS_ISV4(%struct.vnode*) #1

declare dso_local i32 @nfscl_maperr(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
