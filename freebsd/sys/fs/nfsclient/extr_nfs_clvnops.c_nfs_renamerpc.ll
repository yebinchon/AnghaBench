; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/nfsclient/extr_nfs_clvnops.c_nfs_renamerpc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/nfsclient/extr_nfs_clvnops.c_nfs_renamerpc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vnode = type { i32 }
%struct.ucred = type { i32 }
%struct.thread = type { i32 }
%struct.nfsvattr = type { i32 }
%struct.nfsnode = type { i64, i32 }

@NMODIFIED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vnode*, %struct.vnode*, i8*, i32, %struct.vnode*, %struct.vnode*, i8*, i32, %struct.ucred*, %struct.thread*)* @nfs_renamerpc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfs_renamerpc(%struct.vnode* %0, %struct.vnode* %1, i8* %2, i32 %3, %struct.vnode* %4, %struct.vnode* %5, i8* %6, i32 %7, %struct.ucred* %8, %struct.thread* %9) #0 {
  %11 = alloca %struct.vnode*, align 8
  %12 = alloca %struct.vnode*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.vnode*, align 8
  %16 = alloca %struct.vnode*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  %19 = alloca %struct.ucred*, align 8
  %20 = alloca %struct.thread*, align 8
  %21 = alloca %struct.nfsvattr, align 4
  %22 = alloca %struct.nfsvattr, align 4
  %23 = alloca %struct.nfsnode*, align 8
  %24 = alloca %struct.nfsnode*, align 8
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  store %struct.vnode* %0, %struct.vnode** %11, align 8
  store %struct.vnode* %1, %struct.vnode** %12, align 8
  store i8* %2, i8** %13, align 8
  store i32 %3, i32* %14, align 4
  store %struct.vnode* %4, %struct.vnode** %15, align 8
  store %struct.vnode* %5, %struct.vnode** %16, align 8
  store i8* %6, i8** %17, align 8
  store i32 %7, i32* %18, align 4
  store %struct.ucred* %8, %struct.ucred** %19, align 8
  store %struct.thread* %9, %struct.thread** %20, align 8
  %28 = load %struct.vnode*, %struct.vnode** %11, align 8
  %29 = call %struct.nfsnode* @VTONFS(%struct.vnode* %28)
  store %struct.nfsnode* %29, %struct.nfsnode** %23, align 8
  %30 = load %struct.vnode*, %struct.vnode** %15, align 8
  %31 = call %struct.nfsnode* @VTONFS(%struct.vnode* %30)
  store %struct.nfsnode* %31, %struct.nfsnode** %24, align 8
  store i32 0, i32* %25, align 4
  %32 = load %struct.vnode*, %struct.vnode** %11, align 8
  %33 = load %struct.vnode*, %struct.vnode** %12, align 8
  %34 = load i8*, i8** %13, align 8
  %35 = load i32, i32* %14, align 4
  %36 = load %struct.vnode*, %struct.vnode** %15, align 8
  %37 = load %struct.vnode*, %struct.vnode** %16, align 8
  %38 = load i8*, i8** %17, align 8
  %39 = load i32, i32* %18, align 4
  %40 = load %struct.ucred*, %struct.ucred** %19, align 8
  %41 = load %struct.thread*, %struct.thread** %20, align 8
  %42 = call i32 @nfsrpc_rename(%struct.vnode* %32, %struct.vnode* %33, i8* %34, i32 %35, %struct.vnode* %36, %struct.vnode* %37, i8* %38, i32 %39, %struct.ucred* %40, %struct.thread* %41, %struct.nfsvattr* %21, %struct.nfsvattr* %22, i32* %26, i32* %27, i32* null, i32* null)
  store i32 %42, i32* %25, align 4
  %43 = load %struct.nfsnode*, %struct.nfsnode** %23, align 8
  %44 = call i32 @NFSLOCKNODE(%struct.nfsnode* %43)
  %45 = load i32, i32* @NMODIFIED, align 4
  %46 = load %struct.nfsnode*, %struct.nfsnode** %23, align 8
  %47 = getelementptr inbounds %struct.nfsnode, %struct.nfsnode* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = or i32 %48, %45
  store i32 %49, i32* %47, align 8
  %50 = load i32, i32* %26, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %10
  %53 = load %struct.nfsnode*, %struct.nfsnode** %23, align 8
  %54 = call i32 @NFSUNLOCKNODE(%struct.nfsnode* %53)
  %55 = call i32 @nfscl_loadattrcache(%struct.vnode** %11, %struct.nfsvattr* %21, i32* null, i32* null, i32 0, i32 1)
  br label %63

56:                                               ; preds = %10
  %57 = load %struct.nfsnode*, %struct.nfsnode** %23, align 8
  %58 = getelementptr inbounds %struct.nfsnode, %struct.nfsnode* %57, i32 0, i32 0
  store i64 0, i64* %58, align 8
  %59 = load %struct.nfsnode*, %struct.nfsnode** %23, align 8
  %60 = call i32 @NFSUNLOCKNODE(%struct.nfsnode* %59)
  %61 = load %struct.vnode*, %struct.vnode** %11, align 8
  %62 = call i32 @KDTRACE_NFS_ATTRCACHE_FLUSH_DONE(%struct.vnode* %61)
  br label %63

63:                                               ; preds = %56, %52
  %64 = load %struct.nfsnode*, %struct.nfsnode** %24, align 8
  %65 = call i32 @NFSLOCKNODE(%struct.nfsnode* %64)
  %66 = load i32, i32* @NMODIFIED, align 4
  %67 = load %struct.nfsnode*, %struct.nfsnode** %24, align 8
  %68 = getelementptr inbounds %struct.nfsnode, %struct.nfsnode* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 8
  %70 = or i32 %69, %66
  store i32 %70, i32* %68, align 8
  %71 = load i32, i32* %27, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %77

73:                                               ; preds = %63
  %74 = load %struct.nfsnode*, %struct.nfsnode** %24, align 8
  %75 = call i32 @NFSUNLOCKNODE(%struct.nfsnode* %74)
  %76 = call i32 @nfscl_loadattrcache(%struct.vnode** %15, %struct.nfsvattr* %22, i32* null, i32* null, i32 0, i32 1)
  br label %84

77:                                               ; preds = %63
  %78 = load %struct.nfsnode*, %struct.nfsnode** %24, align 8
  %79 = getelementptr inbounds %struct.nfsnode, %struct.nfsnode* %78, i32 0, i32 0
  store i64 0, i64* %79, align 8
  %80 = load %struct.nfsnode*, %struct.nfsnode** %24, align 8
  %81 = call i32 @NFSUNLOCKNODE(%struct.nfsnode* %80)
  %82 = load %struct.vnode*, %struct.vnode** %15, align 8
  %83 = call i32 @KDTRACE_NFS_ATTRCACHE_FLUSH_DONE(%struct.vnode* %82)
  br label %84

84:                                               ; preds = %77, %73
  %85 = load i32, i32* %25, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %95

87:                                               ; preds = %84
  %88 = load %struct.vnode*, %struct.vnode** %11, align 8
  %89 = call i64 @NFS_ISV4(%struct.vnode* %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %95

91:                                               ; preds = %87
  %92 = load %struct.thread*, %struct.thread** %20, align 8
  %93 = load i32, i32* %25, align 4
  %94 = call i32 @nfscl_maperr(%struct.thread* %92, i32 %93, i32 0, i32 0)
  store i32 %94, i32* %25, align 4
  br label %95

95:                                               ; preds = %91, %87, %84
  %96 = load i32, i32* %25, align 4
  ret i32 %96
}

declare dso_local %struct.nfsnode* @VTONFS(%struct.vnode*) #1

declare dso_local i32 @nfsrpc_rename(%struct.vnode*, %struct.vnode*, i8*, i32, %struct.vnode*, %struct.vnode*, i8*, i32, %struct.ucred*, %struct.thread*, %struct.nfsvattr*, %struct.nfsvattr*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @NFSLOCKNODE(%struct.nfsnode*) #1

declare dso_local i32 @NFSUNLOCKNODE(%struct.nfsnode*) #1

declare dso_local i32 @nfscl_loadattrcache(%struct.vnode**, %struct.nfsvattr*, i32*, i32*, i32, i32) #1

declare dso_local i32 @KDTRACE_NFS_ATTRCACHE_FLUSH_DONE(%struct.vnode*) #1

declare dso_local i64 @NFS_ISV4(%struct.vnode*) #1

declare dso_local i32 @nfscl_maperr(%struct.thread*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
