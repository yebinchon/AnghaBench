; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/nfsclient/extr_nfs_clnode.c_ncl_inactive.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/nfsclient/extr_nfs_clnode.c_ncl_inactive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vop_inactive_args = type { i32, %struct.vnode* }
%struct.vnode = type { i64, i32* }
%struct.nfsnode = type { i32 }

@VREG = common dso_local global i64 0, align 8
@OBJPC_SYNC = common dso_local global i32 0, align 4
@TRUE = common dso_local global i64 0, align 8
@MNT_WAIT = common dso_local global i32 0, align 4
@NMODIFIED = common dso_local global i32 0, align 4
@NDSCOMMIT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ncl_inactive(%struct.vop_inactive_args* %0) #0 {
  %2 = alloca %struct.vop_inactive_args*, align 8
  %3 = alloca %struct.vnode*, align 8
  %4 = alloca %struct.nfsnode*, align 8
  %5 = alloca i64, align 8
  store %struct.vop_inactive_args* %0, %struct.vop_inactive_args** %2, align 8
  %6 = load %struct.vop_inactive_args*, %struct.vop_inactive_args** %2, align 8
  %7 = getelementptr inbounds %struct.vop_inactive_args, %struct.vop_inactive_args* %6, i32 0, i32 1
  %8 = load %struct.vnode*, %struct.vnode** %7, align 8
  store %struct.vnode* %8, %struct.vnode** %3, align 8
  %9 = load %struct.vnode*, %struct.vnode** %3, align 8
  %10 = call i64 @NFS_ISV4(%struct.vnode* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %56

12:                                               ; preds = %1
  %13 = load %struct.vnode*, %struct.vnode** %3, align 8
  %14 = getelementptr inbounds %struct.vnode, %struct.vnode* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @VREG, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %56

18:                                               ; preds = %12
  %19 = load %struct.vnode*, %struct.vnode** %3, align 8
  %20 = getelementptr inbounds %struct.vnode, %struct.vnode* %19, i32 0, i32 1
  %21 = load i32*, i32** %20, align 8
  %22 = icmp ne i32* %21, null
  br i1 %22, label %23, label %37

23:                                               ; preds = %18
  %24 = load %struct.vnode*, %struct.vnode** %3, align 8
  %25 = getelementptr inbounds %struct.vnode, %struct.vnode* %24, i32 0, i32 1
  %26 = load i32*, i32** %25, align 8
  %27 = call i32 @VM_OBJECT_WLOCK(i32* %26)
  %28 = load %struct.vnode*, %struct.vnode** %3, align 8
  %29 = getelementptr inbounds %struct.vnode, %struct.vnode* %28, i32 0, i32 1
  %30 = load i32*, i32** %29, align 8
  %31 = load i32, i32* @OBJPC_SYNC, align 4
  %32 = call i64 @vm_object_page_clean(i32* %30, i32 0, i32 0, i32 %31)
  store i64 %32, i64* %5, align 8
  %33 = load %struct.vnode*, %struct.vnode** %3, align 8
  %34 = getelementptr inbounds %struct.vnode, %struct.vnode* %33, i32 0, i32 1
  %35 = load i32*, i32** %34, align 8
  %36 = call i32 @VM_OBJECT_WUNLOCK(i32* %35)
  br label %39

37:                                               ; preds = %18
  %38 = load i64, i64* @TRUE, align 8
  store i64 %38, i64* %5, align 8
  br label %39

39:                                               ; preds = %37, %23
  %40 = load i64, i64* %5, align 8
  %41 = load i64, i64* @TRUE, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %55

43:                                               ; preds = %39
  %44 = load %struct.vnode*, %struct.vnode** %3, align 8
  %45 = load i32, i32* @MNT_WAIT, align 4
  %46 = load %struct.vop_inactive_args*, %struct.vop_inactive_args** %2, align 8
  %47 = getelementptr inbounds %struct.vop_inactive_args, %struct.vop_inactive_args* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @ncl_flush(%struct.vnode* %44, i32 %45, i32 %48, i32 1, i32 0)
  %50 = load %struct.vnode*, %struct.vnode** %3, align 8
  %51 = load %struct.vop_inactive_args*, %struct.vop_inactive_args** %2, align 8
  %52 = getelementptr inbounds %struct.vop_inactive_args, %struct.vop_inactive_args* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @nfsrpc_close(%struct.vnode* %50, i32 1, i32 %53)
  br label %55

55:                                               ; preds = %43, %39
  br label %56

56:                                               ; preds = %55, %12, %1
  %57 = load %struct.vnode*, %struct.vnode** %3, align 8
  %58 = call %struct.nfsnode* @VTONFS(%struct.vnode* %57)
  store %struct.nfsnode* %58, %struct.nfsnode** %4, align 8
  %59 = load %struct.nfsnode*, %struct.nfsnode** %4, align 8
  %60 = call i32 @NFSLOCKNODE(%struct.nfsnode* %59)
  %61 = load %struct.vnode*, %struct.vnode** %3, align 8
  %62 = load %struct.vop_inactive_args*, %struct.vop_inactive_args** %2, align 8
  %63 = getelementptr inbounds %struct.vop_inactive_args, %struct.vop_inactive_args* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = call i32 @ncl_releasesillyrename(%struct.vnode* %61, i32 %64)
  %66 = load i32, i32* @NMODIFIED, align 4
  %67 = load i32, i32* @NDSCOMMIT, align 4
  %68 = or i32 %66, %67
  %69 = load %struct.nfsnode*, %struct.nfsnode** %4, align 8
  %70 = getelementptr inbounds %struct.nfsnode, %struct.nfsnode* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = and i32 %71, %68
  store i32 %72, i32* %70, align 4
  %73 = load %struct.nfsnode*, %struct.nfsnode** %4, align 8
  %74 = call i32 @NFSUNLOCKNODE(%struct.nfsnode* %73)
  ret i32 0
}

declare dso_local i64 @NFS_ISV4(%struct.vnode*) #1

declare dso_local i32 @VM_OBJECT_WLOCK(i32*) #1

declare dso_local i64 @vm_object_page_clean(i32*, i32, i32, i32) #1

declare dso_local i32 @VM_OBJECT_WUNLOCK(i32*) #1

declare dso_local i32 @ncl_flush(%struct.vnode*, i32, i32, i32, i32) #1

declare dso_local i32 @nfsrpc_close(%struct.vnode*, i32, i32) #1

declare dso_local %struct.nfsnode* @VTONFS(%struct.vnode*) #1

declare dso_local i32 @NFSLOCKNODE(%struct.nfsnode*) #1

declare dso_local i32 @ncl_releasesillyrename(%struct.vnode*, i32) #1

declare dso_local i32 @NFSUNLOCKNODE(%struct.nfsnode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
