; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/nfsclient/extr_nfs_clrpcops.c_nfsrpc_setaclrpc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/nfsclient/extr_nfs_clrpcops.c_nfsrpc_setaclrpc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ucred = type { i32 }
%struct.acl = type { i32 }
%struct.nfsrv_descript = type { i32, i32 }
%struct.nfsmount = type { i32 }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@NFSPROC_SETACL = common dso_local global i32 0, align 4
@NFSSTATEID_PUTSTATEID = common dso_local global i32 0, align 4
@NFSATTRBIT_ACL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.ucred*, i32*, %struct.acl*, i32*, i8*)* @nfsrpc_setaclrpc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfsrpc_setaclrpc(i32 %0, %struct.ucred* %1, i32* %2, %struct.acl* %3, i32* %4, i8* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.ucred*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.acl*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca %struct.nfsrv_descript, align 4
  %15 = alloca %struct.nfsrv_descript*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.nfsmount*, align 8
  store i32 %0, i32* %8, align 4
  store %struct.ucred* %1, %struct.ucred** %9, align 8
  store i32* %2, i32** %10, align 8
  store %struct.acl* %3, %struct.acl** %11, align 8
  store i32* %4, i32** %12, align 8
  store i8* %5, i8** %13, align 8
  store %struct.nfsrv_descript* %14, %struct.nfsrv_descript** %15, align 8
  %19 = load i32, i32* %8, align 4
  %20 = call i32 @vnode_mount(i32 %19)
  %21 = call %struct.nfsmount* @VFSTONFS(i32 %20)
  store %struct.nfsmount* %21, %struct.nfsmount** %18, align 8
  %22 = load %struct.nfsmount*, %struct.nfsmount** %18, align 8
  %23 = call i32 @NFSHASNFSV4(%struct.nfsmount* %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %27, label %25

25:                                               ; preds = %6
  %26 = load i32, i32* @EOPNOTSUPP, align 4
  store i32 %26, i32* %7, align 4
  br label %63

27:                                               ; preds = %6
  %28 = load %struct.nfsrv_descript*, %struct.nfsrv_descript** %15, align 8
  %29 = load i32, i32* @NFSPROC_SETACL, align 4
  %30 = load i32, i32* %8, align 4
  %31 = call i32 @NFSCL_REQSTART(%struct.nfsrv_descript* %28, i32 %29, i32 %30)
  %32 = load %struct.nfsrv_descript*, %struct.nfsrv_descript** %15, align 8
  %33 = load i32*, i32** %12, align 8
  %34 = load i32, i32* @NFSSTATEID_PUTSTATEID, align 4
  %35 = call i32 @nfsm_stateidtom(%struct.nfsrv_descript* %32, i32* %33, i32 %34)
  %36 = call i32 @NFSZERO_ATTRBIT(i32* %17)
  %37 = load i32, i32* @NFSATTRBIT_ACL, align 4
  %38 = call i32 @NFSSETBIT_ATTRBIT(i32* %17, i32 %37)
  %39 = load %struct.nfsrv_descript*, %struct.nfsrv_descript** %15, align 8
  %40 = load i32, i32* %8, align 4
  %41 = call i32 @vnode_mount(i32 %40)
  %42 = load i32, i32* %8, align 4
  %43 = load %struct.acl*, %struct.acl** %11, align 8
  %44 = call i32 @nfsv4_fillattr(%struct.nfsrv_descript* %39, i32 %41, i32 %42, %struct.acl* %43, i32* null, i32* null, i32 0, i32* %17, i32* null, i32* null, i32 0, i32 0, i32 0, i32 0, i32 0, i32* null)
  %45 = load %struct.nfsrv_descript*, %struct.nfsrv_descript** %15, align 8
  %46 = load i32, i32* %8, align 4
  %47 = load i32*, i32** %10, align 8
  %48 = load %struct.ucred*, %struct.ucred** %9, align 8
  %49 = load i8*, i8** %13, align 8
  %50 = call i32 @nfscl_request(%struct.nfsrv_descript* %45, i32 %46, i32* %47, %struct.ucred* %48, i8* %49)
  store i32 %50, i32* %16, align 4
  %51 = load i32, i32* %16, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %27
  %54 = load i32, i32* %16, align 4
  store i32 %54, i32* %7, align 4
  br label %63

55:                                               ; preds = %27
  %56 = load %struct.nfsrv_descript*, %struct.nfsrv_descript** %15, align 8
  %57 = getelementptr inbounds %struct.nfsrv_descript, %struct.nfsrv_descript* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @mbuf_freem(i32 %58)
  %60 = load %struct.nfsrv_descript*, %struct.nfsrv_descript** %15, align 8
  %61 = getelementptr inbounds %struct.nfsrv_descript, %struct.nfsrv_descript* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  store i32 %62, i32* %7, align 4
  br label %63

63:                                               ; preds = %55, %53, %25
  %64 = load i32, i32* %7, align 4
  ret i32 %64
}

declare dso_local %struct.nfsmount* @VFSTONFS(i32) #1

declare dso_local i32 @vnode_mount(i32) #1

declare dso_local i32 @NFSHASNFSV4(%struct.nfsmount*) #1

declare dso_local i32 @NFSCL_REQSTART(%struct.nfsrv_descript*, i32, i32) #1

declare dso_local i32 @nfsm_stateidtom(%struct.nfsrv_descript*, i32*, i32) #1

declare dso_local i32 @NFSZERO_ATTRBIT(i32*) #1

declare dso_local i32 @NFSSETBIT_ATTRBIT(i32*, i32) #1

declare dso_local i32 @nfsv4_fillattr(%struct.nfsrv_descript*, i32, i32, %struct.acl*, i32*, i32*, i32, i32*, i32*, i32*, i32, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @nfscl_request(%struct.nfsrv_descript*, i32, i32*, %struct.ucred*, i8*) #1

declare dso_local i32 @mbuf_freem(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
