; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/nfsserver/extr_nfs_nfsdport.c_nfsrv_getattrdsrpc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/nfsserver/extr_nfs_nfsdport.c_nfsrv_getattrdsrpc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ucred = type { i32 }
%struct.vnode = type { i32 }
%struct.nfsmount = type { i32 }
%struct.nfsvattr = type { i32 }
%struct.nfsrv_descript = type { i32, i32 }

@.str = private unnamed_addr constant [23 x i8] c"in nfsrv_getattrdsrpc\0A\00", align 1
@M_TEMP = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@NFSPROC_GETATTR = common dso_local global i32 0, align 4
@NFSATTRBIT_SIZE = common dso_local global i32 0, align 4
@NFSATTRBIT_CHANGE = common dso_local global i32 0, align 4
@NFSATTRBIT_TIMEACCESS = common dso_local global i32 0, align 4
@NFSATTRBIT_TIMEMODIFY = common dso_local global i32 0, align 4
@NFS_PROG = common dso_local global i32 0, align 4
@NFS_VER4 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"nfsrv_getattrdsrpc: aft getattrrpc=%d\0A\00", align 1
@LK_EXCLUSIVE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [37 x i8] c"nfsrv_getattrdsrpc: aft setextat=%d\0A\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"nfsrv_getattrdsrpc error=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.ucred*, i32*, %struct.vnode*, %struct.nfsmount*, %struct.nfsvattr*)* @nfsrv_getattrdsrpc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfsrv_getattrdsrpc(i32* %0, %struct.ucred* %1, i32* %2, %struct.vnode* %3, %struct.nfsmount* %4, %struct.nfsvattr* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca %struct.ucred*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.vnode*, align 8
  %12 = alloca %struct.nfsmount*, align 8
  %13 = alloca %struct.nfsvattr*, align 8
  %14 = alloca %struct.nfsrv_descript*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i32* %0, i32** %8, align 8
  store %struct.ucred* %1, %struct.ucred** %9, align 8
  store i32* %2, i32** %10, align 8
  store %struct.vnode* %3, %struct.vnode** %11, align 8
  store %struct.nfsmount* %4, %struct.nfsmount** %12, align 8
  store %struct.nfsvattr* %5, %struct.nfsvattr** %13, align 8
  %17 = call i32 (i32, i8*, ...) @NFSD_DEBUG(i32 4, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %18 = load i32, i32* @M_TEMP, align 4
  %19 = load i32, i32* @M_WAITOK, align 4
  %20 = load i32, i32* @M_ZERO, align 4
  %21 = or i32 %19, %20
  %22 = call %struct.nfsrv_descript* @malloc(i32 8, i32 %18, i32 %21)
  store %struct.nfsrv_descript* %22, %struct.nfsrv_descript** %14, align 8
  %23 = load %struct.nfsrv_descript*, %struct.nfsrv_descript** %14, align 8
  %24 = load i32, i32* @NFSPROC_GETATTR, align 4
  %25 = load %struct.nfsmount*, %struct.nfsmount** %12, align 8
  %26 = load i32*, i32** %8, align 8
  %27 = call i32 @nfscl_reqstart(%struct.nfsrv_descript* %23, i32 %24, %struct.nfsmount* %25, i32* %26, i32 4, i32* null, i32* null, i32 0, i32 0)
  %28 = call i32 @NFSZERO_ATTRBIT(i32* %16)
  %29 = load i32, i32* @NFSATTRBIT_SIZE, align 4
  %30 = call i32 @NFSSETBIT_ATTRBIT(i32* %16, i32 %29)
  %31 = load i32, i32* @NFSATTRBIT_CHANGE, align 4
  %32 = call i32 @NFSSETBIT_ATTRBIT(i32* %16, i32 %31)
  %33 = load i32, i32* @NFSATTRBIT_TIMEACCESS, align 4
  %34 = call i32 @NFSSETBIT_ATTRBIT(i32* %16, i32 %33)
  %35 = load i32, i32* @NFSATTRBIT_TIMEMODIFY, align 4
  %36 = call i32 @NFSSETBIT_ATTRBIT(i32* %16, i32 %35)
  %37 = load %struct.nfsrv_descript*, %struct.nfsrv_descript** %14, align 8
  %38 = call i32 @nfsrv_putattrbit(%struct.nfsrv_descript* %37, i32* %16)
  %39 = load %struct.nfsrv_descript*, %struct.nfsrv_descript** %14, align 8
  %40 = load %struct.nfsmount*, %struct.nfsmount** %12, align 8
  %41 = load %struct.nfsmount*, %struct.nfsmount** %12, align 8
  %42 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %41, i32 0, i32 0
  %43 = load i32*, i32** %10, align 8
  %44 = load %struct.ucred*, %struct.ucred** %9, align 8
  %45 = load i32, i32* @NFS_PROG, align 4
  %46 = load i32, i32* @NFS_VER4, align 4
  %47 = call i32 @newnfs_request(%struct.nfsrv_descript* %39, %struct.nfsmount* %40, i32* null, i32* %42, i32* null, i32* %43, %struct.ucred* %44, i32 %45, i32 %46, i32* null, i32 1, i32* null, i32* null)
  store i32 %47, i32* %15, align 4
  %48 = load i32, i32* %15, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %55

50:                                               ; preds = %6
  %51 = load %struct.nfsrv_descript*, %struct.nfsrv_descript** %14, align 8
  %52 = load i32, i32* @M_TEMP, align 4
  %53 = call i32 @free(%struct.nfsrv_descript* %51, i32 %52)
  %54 = load i32, i32* %15, align 4
  store i32 %54, i32* %7, align 4
  br label %98

55:                                               ; preds = %6
  %56 = load %struct.nfsrv_descript*, %struct.nfsrv_descript** %14, align 8
  %57 = getelementptr inbounds %struct.nfsrv_descript, %struct.nfsrv_descript* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i32 (i32, i8*, ...) @NFSD_DEBUG(i32 4, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %58)
  %60 = load %struct.nfsrv_descript*, %struct.nfsrv_descript** %14, align 8
  %61 = getelementptr inbounds %struct.nfsrv_descript, %struct.nfsrv_descript* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %83

64:                                               ; preds = %55
  %65 = load %struct.nfsrv_descript*, %struct.nfsrv_descript** %14, align 8
  %66 = load %struct.nfsvattr*, %struct.nfsvattr** %13, align 8
  %67 = call i32 @nfsv4_loadattr(%struct.nfsrv_descript* %65, i32* null, %struct.nfsvattr* %66, i32* null, i32* null, i32 0, i32* null, i32* null, i32* null, i32* null, i32* null, i32 0, i32* null, i32* null, i32* null, i32* null, i32* null)
  store i32 %67, i32* %15, align 4
  %68 = load i32, i32* %15, align 4
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %82

70:                                               ; preds = %64
  %71 = load %struct.vnode*, %struct.vnode** %11, align 8
  %72 = call i64 @VOP_ISLOCKED(%struct.vnode* %71)
  %73 = load i64, i64* @LK_EXCLUSIVE, align 8
  %74 = icmp eq i64 %72, %73
  br i1 %74, label %75, label %82

75:                                               ; preds = %70
  %76 = load %struct.vnode*, %struct.vnode** %11, align 8
  %77 = load %struct.nfsvattr*, %struct.nfsvattr** %13, align 8
  %78 = load i32*, i32** %10, align 8
  %79 = call i32 @nfsrv_setextattr(%struct.vnode* %76, %struct.nfsvattr* %77, i32* %78)
  store i32 %79, i32* %15, align 4
  %80 = load i32, i32* %15, align 4
  %81 = call i32 (i32, i8*, ...) @NFSD_DEBUG(i32 4, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i32 %80)
  br label %82

82:                                               ; preds = %75, %70, %64
  br label %87

83:                                               ; preds = %55
  %84 = load %struct.nfsrv_descript*, %struct.nfsrv_descript** %14, align 8
  %85 = getelementptr inbounds %struct.nfsrv_descript, %struct.nfsrv_descript* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  store i32 %86, i32* %15, align 4
  br label %87

87:                                               ; preds = %83, %82
  %88 = load %struct.nfsrv_descript*, %struct.nfsrv_descript** %14, align 8
  %89 = getelementptr inbounds %struct.nfsrv_descript, %struct.nfsrv_descript* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @m_freem(i32 %90)
  %92 = load %struct.nfsrv_descript*, %struct.nfsrv_descript** %14, align 8
  %93 = load i32, i32* @M_TEMP, align 4
  %94 = call i32 @free(%struct.nfsrv_descript* %92, i32 %93)
  %95 = load i32, i32* %15, align 4
  %96 = call i32 (i32, i8*, ...) @NFSD_DEBUG(i32 4, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0), i32 %95)
  %97 = load i32, i32* %15, align 4
  store i32 %97, i32* %7, align 4
  br label %98

98:                                               ; preds = %87, %50
  %99 = load i32, i32* %7, align 4
  ret i32 %99
}

declare dso_local i32 @NFSD_DEBUG(i32, i8*, ...) #1

declare dso_local %struct.nfsrv_descript* @malloc(i32, i32, i32) #1

declare dso_local i32 @nfscl_reqstart(%struct.nfsrv_descript*, i32, %struct.nfsmount*, i32*, i32, i32*, i32*, i32, i32) #1

declare dso_local i32 @NFSZERO_ATTRBIT(i32*) #1

declare dso_local i32 @NFSSETBIT_ATTRBIT(i32*, i32) #1

declare dso_local i32 @nfsrv_putattrbit(%struct.nfsrv_descript*, i32*) #1

declare dso_local i32 @newnfs_request(%struct.nfsrv_descript*, %struct.nfsmount*, i32*, i32*, i32*, i32*, %struct.ucred*, i32, i32, i32*, i32, i32*, i32*) #1

declare dso_local i32 @free(%struct.nfsrv_descript*, i32) #1

declare dso_local i32 @nfsv4_loadattr(%struct.nfsrv_descript*, i32*, %struct.nfsvattr*, i32*, i32*, i32, i32*, i32*, i32*, i32*, i32*, i32, i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i64 @VOP_ISLOCKED(%struct.vnode*) #1

declare dso_local i32 @nfsrv_setextattr(%struct.vnode*, %struct.nfsvattr*, i32*) #1

declare dso_local i32 @m_freem(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
