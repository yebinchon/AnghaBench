; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/nfsserver/extr_nfs_nfsdport.c_nfsrv_setacl.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/nfsserver/extr_nfs_nfsdport.c_nfsrv_setacl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vnode = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.ucred = type { i32 }

@nfsrv_useacl = common dso_local global i64 0, align 8
@NFSERR_ATTRNOTSUPP = common dso_local global i32 0, align 4
@ACL_MAX_ENTRIES = common dso_local global i32 0, align 4
@ACL_TYPE_NFS4 = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nfsrv_setacl(%struct.vnode* %0, %struct.TYPE_5__* %1, %struct.ucred* %2, i32* %3) #0 {
  %5 = alloca %struct.vnode*, align 8
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca %struct.ucred*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  store %struct.vnode* %0, %struct.vnode** %5, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %6, align 8
  store %struct.ucred* %2, %struct.ucred** %7, align 8
  store i32* %3, i32** %8, align 8
  %10 = load i64, i64* @nfsrv_useacl, align 8
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %16, label %12

12:                                               ; preds = %4
  %13 = load %struct.vnode*, %struct.vnode** %5, align 8
  %14 = call i64 @nfs_supportsnfsv4acls(%struct.vnode* %13)
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %12, %4
  %17 = load i32, i32* @NFSERR_ATTRNOTSUPP, align 4
  store i32 %17, i32* %9, align 4
  br label %49

18:                                               ; preds = %12
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @ACL_MAX_ENTRIES, align 4
  %23 = sub nsw i32 %22, 6
  %24 = sdiv i32 %23, 2
  %25 = icmp sgt i32 %21, %24
  br i1 %25, label %26, label %28

26:                                               ; preds = %18
  %27 = load i32, i32* @NFSERR_ATTRNOTSUPP, align 4
  store i32 %27, i32* %9, align 4
  br label %49

28:                                               ; preds = %18
  %29 = load %struct.vnode*, %struct.vnode** %5, align 8
  %30 = load i32, i32* @ACL_TYPE_NFS4, align 4
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %32 = load %struct.ucred*, %struct.ucred** %7, align 8
  %33 = load i32*, i32** %8, align 8
  %34 = call i32 @VOP_SETACL(%struct.vnode* %29, i32 %30, %struct.TYPE_5__* %31, %struct.ucred* %32, i32* %33)
  store i32 %34, i32* %9, align 4
  %35 = load i32, i32* %9, align 4
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %48

37:                                               ; preds = %28
  %38 = load %struct.vnode*, %struct.vnode** %5, align 8
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %40 = load %struct.ucred*, %struct.ucred** %7, align 8
  %41 = load i32*, i32** %8, align 8
  %42 = call i32 @nfsrv_dssetacl(%struct.vnode* %38, %struct.TYPE_5__* %39, %struct.ucred* %40, i32* %41)
  store i32 %42, i32* %9, align 4
  %43 = load i32, i32* %9, align 4
  %44 = load i32, i32* @ENOENT, align 4
  %45 = icmp eq i32 %43, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %37
  store i32 0, i32* %9, align 4
  br label %47

47:                                               ; preds = %46, %37
  br label %48

48:                                               ; preds = %47, %28
  br label %49

49:                                               ; preds = %48, %26, %16
  %50 = load i32, i32* %9, align 4
  %51 = call i32 @NFSEXITCODE(i32 %50)
  %52 = load i32, i32* %9, align 4
  ret i32 %52
}

declare dso_local i64 @nfs_supportsnfsv4acls(%struct.vnode*) #1

declare dso_local i32 @VOP_SETACL(%struct.vnode*, i32, %struct.TYPE_5__*, %struct.ucred*, i32*) #1

declare dso_local i32 @nfsrv_dssetacl(%struct.vnode*, %struct.TYPE_5__*, %struct.ucred*, i32*) #1

declare dso_local i32 @NFSEXITCODE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
