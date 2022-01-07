; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/nfsclient/extr_nfs_clvnops.c_ncl_readdirplusrpc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/nfsclient/extr_nfs_clvnops.c_ncl_readdirplusrpc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vnode = type { i32 }
%struct.uio = type { i32, i32, i32 }
%struct.ucred = type { i32 }
%struct.thread = type { i32 }
%struct.nfsvattr = type { i32 }
%struct.nfsnode = type { i32 }
%struct.nfsmount = type { i32 }

@DIRBLKSIZ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"nfs readdirplusrpc bad uio\00", align 1
@NFSERR_BAD_COOKIE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"EEK! readdirplusrpc resid > 0\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ncl_readdirplusrpc(%struct.vnode* %0, %struct.uio* %1, %struct.ucred* %2, %struct.thread* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.vnode*, align 8
  %7 = alloca %struct.uio*, align 8
  %8 = alloca %struct.ucred*, align 8
  %9 = alloca %struct.thread*, align 8
  %10 = alloca %struct.nfsvattr, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.nfsnode*, align 8
  %14 = alloca %struct.nfsmount*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.vnode* %0, %struct.vnode** %6, align 8
  store %struct.uio* %1, %struct.uio** %7, align 8
  store %struct.ucred* %2, %struct.ucred** %8, align 8
  store %struct.thread* %3, %struct.thread** %9, align 8
  %18 = load %struct.vnode*, %struct.vnode** %6, align 8
  %19 = call %struct.nfsnode* @VTONFS(%struct.vnode* %18)
  store %struct.nfsnode* %19, %struct.nfsnode** %13, align 8
  %20 = load %struct.vnode*, %struct.vnode** %6, align 8
  %21 = getelementptr inbounds %struct.vnode, %struct.vnode* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call %struct.nfsmount* @VFSTONFS(i32 %22)
  store %struct.nfsmount* %23, %struct.nfsmount** %14, align 8
  store i32 0, i32* %15, align 4
  %24 = load %struct.uio*, %struct.uio** %7, align 8
  %25 = getelementptr inbounds %struct.uio, %struct.uio* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = icmp eq i32 %26, 1
  br i1 %27, label %28, label %44

28:                                               ; preds = %4
  %29 = load %struct.uio*, %struct.uio** %7, align 8
  %30 = getelementptr inbounds %struct.uio, %struct.uio* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @DIRBLKSIZ, align 4
  %33 = sub nsw i32 %32, 1
  %34 = and i32 %31, %33
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %44

36:                                               ; preds = %28
  %37 = load %struct.uio*, %struct.uio** %7, align 8
  %38 = getelementptr inbounds %struct.uio, %struct.uio* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @DIRBLKSIZ, align 4
  %41 = sub nsw i32 %40, 1
  %42 = and i32 %39, %41
  %43 = icmp eq i32 %42, 0
  br label %44

44:                                               ; preds = %36, %28, %4
  %45 = phi i1 [ false, %28 ], [ false, %4 ], [ %43, %36 ]
  %46 = zext i1 %45 to i32
  %47 = call i32 @KASSERT(i32 %46, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %48 = load %struct.nfsnode*, %struct.nfsnode** %13, align 8
  %49 = call i32 @ncl_dircookie_lock(%struct.nfsnode* %48)
  %50 = load %struct.nfsnode*, %struct.nfsnode** %13, align 8
  %51 = load %struct.uio*, %struct.uio** %7, align 8
  %52 = getelementptr inbounds %struct.uio, %struct.uio* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = call i32* @ncl_getcookie(%struct.nfsnode* %50, i32 %53, i32 0)
  store i32* %54, i32** %11, align 8
  %55 = load i32*, i32** %11, align 8
  %56 = icmp ne i32* %55, null
  br i1 %56, label %57, label %62

57:                                               ; preds = %44
  %58 = load i32*, i32** %11, align 8
  %59 = load i32, i32* %58, align 4
  store i32 %59, i32* %12, align 4
  %60 = load %struct.nfsnode*, %struct.nfsnode** %13, align 8
  %61 = call i32 @ncl_dircookie_unlock(%struct.nfsnode* %60)
  br label %66

62:                                               ; preds = %44
  %63 = load %struct.nfsnode*, %struct.nfsnode** %13, align 8
  %64 = call i32 @ncl_dircookie_unlock(%struct.nfsnode* %63)
  %65 = load i32, i32* @NFSERR_BAD_COOKIE, align 4
  store i32 %65, i32* %5, align 4
  br label %133

66:                                               ; preds = %57
  %67 = load %struct.nfsmount*, %struct.nfsmount** %14, align 8
  %68 = call i64 @NFSHASNFSV3(%struct.nfsmount* %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %80

70:                                               ; preds = %66
  %71 = load %struct.nfsmount*, %struct.nfsmount** %14, align 8
  %72 = call i32 @NFSHASGOTFSINFO(%struct.nfsmount* %71)
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %80, label %74

74:                                               ; preds = %70
  %75 = load %struct.nfsmount*, %struct.nfsmount** %14, align 8
  %76 = load %struct.vnode*, %struct.vnode** %6, align 8
  %77 = load %struct.ucred*, %struct.ucred** %8, align 8
  %78 = load %struct.thread*, %struct.thread** %9, align 8
  %79 = call i32 @ncl_fsinfo(%struct.nfsmount* %75, %struct.vnode* %76, %struct.ucred* %77, %struct.thread* %78)
  br label %80

80:                                               ; preds = %74, %70, %66
  %81 = load %struct.vnode*, %struct.vnode** %6, align 8
  %82 = load %struct.uio*, %struct.uio** %7, align 8
  %83 = load %struct.ucred*, %struct.ucred** %8, align 8
  %84 = load %struct.thread*, %struct.thread** %9, align 8
  %85 = call i32 @nfsrpc_readdirplus(%struct.vnode* %81, %struct.uio* %82, i32* %12, %struct.ucred* %83, %struct.thread* %84, %struct.nfsvattr* %10, i32* %16, i32* %17, i32* null)
  store i32 %85, i32* %15, align 4
  %86 = load i32, i32* %16, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %90

88:                                               ; preds = %80
  %89 = call i32 @nfscl_loadattrcache(%struct.vnode** %6, %struct.nfsvattr* %10, i32* null, i32* null, i32 0, i32 1)
  br label %90

90:                                               ; preds = %88, %80
  %91 = load i32, i32* %15, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %122, label %93

93:                                               ; preds = %90
  %94 = load i32, i32* %17, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %102

96:                                               ; preds = %93
  %97 = load %struct.uio*, %struct.uio** %7, align 8
  %98 = getelementptr inbounds %struct.uio, %struct.uio* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.nfsnode*, %struct.nfsnode** %13, align 8
  %101 = getelementptr inbounds %struct.nfsnode, %struct.nfsnode* %100, i32 0, i32 0
  store i32 %99, i32* %101, align 4
  br label %121

102:                                              ; preds = %93
  %103 = load %struct.uio*, %struct.uio** %7, align 8
  %104 = getelementptr inbounds %struct.uio, %struct.uio* %103, i32 0, i32 2
  %105 = load i32, i32* %104, align 4
  %106 = icmp sgt i32 %105, 0
  br i1 %106, label %107, label %109

107:                                              ; preds = %102
  %108 = call i32 @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  br label %109

109:                                              ; preds = %107, %102
  %110 = load %struct.nfsnode*, %struct.nfsnode** %13, align 8
  %111 = call i32 @ncl_dircookie_lock(%struct.nfsnode* %110)
  %112 = load %struct.nfsnode*, %struct.nfsnode** %13, align 8
  %113 = load %struct.uio*, %struct.uio** %7, align 8
  %114 = getelementptr inbounds %struct.uio, %struct.uio* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = call i32* @ncl_getcookie(%struct.nfsnode* %112, i32 %115, i32 1)
  store i32* %116, i32** %11, align 8
  %117 = load i32, i32* %12, align 4
  %118 = load i32*, i32** %11, align 8
  store i32 %117, i32* %118, align 4
  %119 = load %struct.nfsnode*, %struct.nfsnode** %13, align 8
  %120 = call i32 @ncl_dircookie_unlock(%struct.nfsnode* %119)
  br label %121

121:                                              ; preds = %109, %96
  br label %131

122:                                              ; preds = %90
  %123 = load %struct.vnode*, %struct.vnode** %6, align 8
  %124 = call i64 @NFS_ISV4(%struct.vnode* %123)
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %130

126:                                              ; preds = %122
  %127 = load %struct.thread*, %struct.thread** %9, align 8
  %128 = load i32, i32* %15, align 4
  %129 = call i32 @nfscl_maperr(%struct.thread* %127, i32 %128, i32 0, i32 0)
  store i32 %129, i32* %15, align 4
  br label %130

130:                                              ; preds = %126, %122
  br label %131

131:                                              ; preds = %130, %121
  %132 = load i32, i32* %15, align 4
  store i32 %132, i32* %5, align 4
  br label %133

133:                                              ; preds = %131, %62
  %134 = load i32, i32* %5, align 4
  ret i32 %134
}

declare dso_local %struct.nfsnode* @VTONFS(%struct.vnode*) #1

declare dso_local %struct.nfsmount* @VFSTONFS(i32) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @ncl_dircookie_lock(%struct.nfsnode*) #1

declare dso_local i32* @ncl_getcookie(%struct.nfsnode*, i32, i32) #1

declare dso_local i32 @ncl_dircookie_unlock(%struct.nfsnode*) #1

declare dso_local i64 @NFSHASNFSV3(%struct.nfsmount*) #1

declare dso_local i32 @NFSHASGOTFSINFO(%struct.nfsmount*) #1

declare dso_local i32 @ncl_fsinfo(%struct.nfsmount*, %struct.vnode*, %struct.ucred*, %struct.thread*) #1

declare dso_local i32 @nfsrpc_readdirplus(%struct.vnode*, %struct.uio*, i32*, %struct.ucred*, %struct.thread*, %struct.nfsvattr*, i32*, i32*, i32*) #1

declare dso_local i32 @nfscl_loadattrcache(%struct.vnode**, %struct.nfsvattr*, i32*, i32*, i32, i32) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i64 @NFS_ISV4(%struct.vnode*) #1

declare dso_local i32 @nfscl_maperr(%struct.thread*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
