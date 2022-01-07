; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/nfsserver/extr_nfs_nfsdport.c_nfsrv_setacldsdorpc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/nfsserver/extr_nfs_nfsdport.c_nfsrv_setacldsdorpc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ucred = type { i32 }
%struct.vnode = type { i32 }
%struct.nfsmount = type { i32 }
%struct.acl = type { i32 }
%struct.nfsrv_descript = type { i32, i32 }
%struct.TYPE_3__ = type { i32*, i32 }

@.str = private unnamed_addr constant [24 x i8] c"in nfsrv_setacldsdorpc\0A\00", align 1
@M_TEMP = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@NFSPROC_SETACL = common dso_local global i32 0, align 4
@NFSSTATEID_PUTSTATEID = common dso_local global i32 0, align 4
@NFSATTRBIT_ACL = common dso_local global i32 0, align 4
@NFS_PROG = common dso_local global i32 0, align 4
@NFS_VER4 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"nfsrv_setacldsdorpc: aft setaclrpc=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.ucred*, i32*, %struct.vnode*, %struct.nfsmount*, %struct.acl*)* @nfsrv_setacldsdorpc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfsrv_setacldsdorpc(i32* %0, %struct.ucred* %1, i32* %2, %struct.vnode* %3, %struct.nfsmount* %4, %struct.acl* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca %struct.ucred*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.vnode*, align 8
  %12 = alloca %struct.nfsmount*, align 8
  %13 = alloca %struct.acl*, align 8
  %14 = alloca %struct.nfsrv_descript*, align 8
  %15 = alloca %struct.TYPE_3__, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store i32* %0, i32** %8, align 8
  store %struct.ucred* %1, %struct.ucred** %9, align 8
  store i32* %2, i32** %10, align 8
  store %struct.vnode* %3, %struct.vnode** %11, align 8
  store %struct.nfsmount* %4, %struct.nfsmount** %12, align 8
  store %struct.acl* %5, %struct.acl** %13, align 8
  %18 = call i32 (i32, i8*, ...) @NFSD_DEBUG(i32 4, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %19 = load i32, i32* @M_TEMP, align 4
  %20 = load i32, i32* @M_WAITOK, align 4
  %21 = load i32, i32* @M_ZERO, align 4
  %22 = or i32 %20, %21
  %23 = call %struct.nfsrv_descript* @malloc(i32 8, i32 %19, i32 %22)
  store %struct.nfsrv_descript* %23, %struct.nfsrv_descript** %14, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 0
  store i32 1431655765, i32* %26, align 4
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 1
  store i32 1431655765, i32* %29, align 4
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 2
  store i32 1431655765, i32* %32, align 4
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 1
  store i32 -1, i32* %33, align 8
  %34 = load %struct.nfsrv_descript*, %struct.nfsrv_descript** %14, align 8
  %35 = load i32, i32* @NFSPROC_SETACL, align 4
  %36 = load %struct.nfsmount*, %struct.nfsmount** %12, align 8
  %37 = load i32*, i32** %8, align 8
  %38 = call i32 @nfscl_reqstart(%struct.nfsrv_descript* %34, i32 %35, %struct.nfsmount* %36, i32* %37, i32 4, i32* null, i32* null, i32 0, i32 0)
  %39 = load %struct.nfsrv_descript*, %struct.nfsrv_descript** %14, align 8
  %40 = load i32, i32* @NFSSTATEID_PUTSTATEID, align 4
  %41 = call i32 @nfsm_stateidtom(%struct.nfsrv_descript* %39, %struct.TYPE_3__* %15, i32 %40)
  %42 = call i32 @NFSZERO_ATTRBIT(i32* %16)
  %43 = load i32, i32* @NFSATTRBIT_ACL, align 4
  %44 = call i32 @NFSSETBIT_ATTRBIT(i32* %16, i32 %43)
  %45 = load %struct.nfsrv_descript*, %struct.nfsrv_descript** %14, align 8
  %46 = load %struct.vnode*, %struct.vnode** %11, align 8
  %47 = load %struct.acl*, %struct.acl** %13, align 8
  %48 = call i32 @nfsv4_fillattr(%struct.nfsrv_descript* %45, i32* null, %struct.vnode* %46, %struct.acl* %47, i32* null, i32* null, i32 0, i32* %16, i32* null, i32* null, i32 0, i32 0, i32 0, i32 0, i32 0, i32* null)
  %49 = load %struct.nfsrv_descript*, %struct.nfsrv_descript** %14, align 8
  %50 = load %struct.nfsmount*, %struct.nfsmount** %12, align 8
  %51 = load %struct.nfsmount*, %struct.nfsmount** %12, align 8
  %52 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %51, i32 0, i32 0
  %53 = load i32*, i32** %10, align 8
  %54 = load %struct.ucred*, %struct.ucred** %9, align 8
  %55 = load i32, i32* @NFS_PROG, align 4
  %56 = load i32, i32* @NFS_VER4, align 4
  %57 = call i32 @newnfs_request(%struct.nfsrv_descript* %49, %struct.nfsmount* %50, i32* null, i32* %52, i32* null, i32* %53, %struct.ucred* %54, i32 %55, i32 %56, i32* null, i32 1, i32* null, i32* null)
  store i32 %57, i32* %17, align 4
  %58 = load i32, i32* %17, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %65

60:                                               ; preds = %6
  %61 = load %struct.nfsrv_descript*, %struct.nfsrv_descript** %14, align 8
  %62 = load i32, i32* @M_TEMP, align 4
  %63 = call i32 @free(%struct.nfsrv_descript* %61, i32 %62)
  %64 = load i32, i32* %17, align 4
  store i32 %64, i32* %7, align 4
  br label %81

65:                                               ; preds = %6
  %66 = load %struct.nfsrv_descript*, %struct.nfsrv_descript** %14, align 8
  %67 = getelementptr inbounds %struct.nfsrv_descript, %struct.nfsrv_descript* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = call i32 (i32, i8*, ...) @NFSD_DEBUG(i32 4, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %68)
  %70 = load %struct.nfsrv_descript*, %struct.nfsrv_descript** %14, align 8
  %71 = getelementptr inbounds %struct.nfsrv_descript, %struct.nfsrv_descript* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  store i32 %72, i32* %17, align 4
  %73 = load %struct.nfsrv_descript*, %struct.nfsrv_descript** %14, align 8
  %74 = getelementptr inbounds %struct.nfsrv_descript, %struct.nfsrv_descript* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @m_freem(i32 %75)
  %77 = load %struct.nfsrv_descript*, %struct.nfsrv_descript** %14, align 8
  %78 = load i32, i32* @M_TEMP, align 4
  %79 = call i32 @free(%struct.nfsrv_descript* %77, i32 %78)
  %80 = load i32, i32* %17, align 4
  store i32 %80, i32* %7, align 4
  br label %81

81:                                               ; preds = %65, %60
  %82 = load i32, i32* %7, align 4
  ret i32 %82
}

declare dso_local i32 @NFSD_DEBUG(i32, i8*, ...) #1

declare dso_local %struct.nfsrv_descript* @malloc(i32, i32, i32) #1

declare dso_local i32 @nfscl_reqstart(%struct.nfsrv_descript*, i32, %struct.nfsmount*, i32*, i32, i32*, i32*, i32, i32) #1

declare dso_local i32 @nfsm_stateidtom(%struct.nfsrv_descript*, %struct.TYPE_3__*, i32) #1

declare dso_local i32 @NFSZERO_ATTRBIT(i32*) #1

declare dso_local i32 @NFSSETBIT_ATTRBIT(i32*, i32) #1

declare dso_local i32 @nfsv4_fillattr(%struct.nfsrv_descript*, i32*, %struct.vnode*, %struct.acl*, i32*, i32*, i32, i32*, i32*, i32*, i32, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @newnfs_request(%struct.nfsrv_descript*, %struct.nfsmount*, i32*, i32*, i32*, i32*, %struct.ucred*, i32, i32, i32*, i32, i32*, i32*) #1

declare dso_local i32 @free(%struct.nfsrv_descript*, i32) #1

declare dso_local i32 @m_freem(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
