; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/nfsclient/extr_nfs_clnode.c_ncl_reclaim.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/nfsclient/extr_nfs_clnode.c_ncl_reclaim.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vop_reclaim_args = type { i32, %struct.vnode* }
%struct.vnode = type { i64, i32* }
%struct.nfsnode = type { i32, i32, %struct.nfsdmap*, %struct.nfsdmap*, i32*, i32 }
%struct.nfsdmap = type { i32 }

@VREG = common dso_local global i64 0, align 8
@VDIR = common dso_local global i64 0, align 8
@ndm_list = common dso_local global i32 0, align 4
@M_NFSDIROFF = common dso_local global i32 0, align 4
@M_NFSFH = common dso_local global i32 0, align 4
@M_NFSV4NODE = common dso_local global i32 0, align 4
@newnfsnode_zone = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ncl_reclaim(%struct.vop_reclaim_args* %0) #0 {
  %2 = alloca %struct.vop_reclaim_args*, align 8
  %3 = alloca %struct.vnode*, align 8
  %4 = alloca %struct.nfsnode*, align 8
  %5 = alloca %struct.nfsdmap*, align 8
  %6 = alloca %struct.nfsdmap*, align 8
  store %struct.vop_reclaim_args* %0, %struct.vop_reclaim_args** %2, align 8
  %7 = load %struct.vop_reclaim_args*, %struct.vop_reclaim_args** %2, align 8
  %8 = getelementptr inbounds %struct.vop_reclaim_args, %struct.vop_reclaim_args* %7, i32 0, i32 1
  %9 = load %struct.vnode*, %struct.vnode** %8, align 8
  store %struct.vnode* %9, %struct.vnode** %3, align 8
  %10 = load %struct.vnode*, %struct.vnode** %3, align 8
  %11 = call %struct.nfsnode* @VTONFS(%struct.vnode* %10)
  store %struct.nfsnode* %11, %struct.nfsnode** %4, align 8
  %12 = load %struct.vop_reclaim_args*, %struct.vop_reclaim_args** %2, align 8
  %13 = call i32 @nfs_reclaim_p(%struct.vop_reclaim_args* %12)
  %14 = load %struct.nfsnode*, %struct.nfsnode** %4, align 8
  %15 = call i32 @NFSLOCKNODE(%struct.nfsnode* %14)
  %16 = load %struct.vnode*, %struct.vnode** %3, align 8
  %17 = load %struct.vop_reclaim_args*, %struct.vop_reclaim_args** %2, align 8
  %18 = getelementptr inbounds %struct.vop_reclaim_args, %struct.vop_reclaim_args* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @ncl_releasesillyrename(%struct.vnode* %16, i32 %19)
  %21 = load %struct.nfsnode*, %struct.nfsnode** %4, align 8
  %22 = call i32 @NFSUNLOCKNODE(%struct.nfsnode* %21)
  %23 = load %struct.vnode*, %struct.vnode** %3, align 8
  %24 = call i64 @NFS_ISV4(%struct.vnode* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %38

26:                                               ; preds = %1
  %27 = load %struct.vnode*, %struct.vnode** %3, align 8
  %28 = getelementptr inbounds %struct.vnode, %struct.vnode* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @VREG, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %38

32:                                               ; preds = %26
  %33 = load %struct.vnode*, %struct.vnode** %3, align 8
  %34 = load %struct.vop_reclaim_args*, %struct.vop_reclaim_args** %2, align 8
  %35 = getelementptr inbounds %struct.vop_reclaim_args, %struct.vop_reclaim_args* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @nfsrpc_close(%struct.vnode* %33, i32 1, i32 %36)
  br label %38

38:                                               ; preds = %32, %26, %1
  %39 = load %struct.vnode*, %struct.vnode** %3, align 8
  %40 = call i32 @vfs_hash_remove(%struct.vnode* %39)
  %41 = load %struct.vnode*, %struct.vnode** %3, align 8
  %42 = getelementptr inbounds %struct.vnode, %struct.vnode* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @VREG, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %49

46:                                               ; preds = %38
  %47 = load %struct.vnode*, %struct.vnode** %3, align 8
  %48 = call i32 @nfscl_reclaimnode(%struct.vnode* %47)
  br label %49

49:                                               ; preds = %46, %38
  %50 = load %struct.vnode*, %struct.vnode** %3, align 8
  %51 = getelementptr inbounds %struct.vnode, %struct.vnode* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @VDIR, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %71

55:                                               ; preds = %49
  %56 = load %struct.nfsnode*, %struct.nfsnode** %4, align 8
  %57 = getelementptr inbounds %struct.nfsnode, %struct.nfsnode* %56, i32 0, i32 5
  %58 = call %struct.nfsdmap* @LIST_FIRST(i32* %57)
  store %struct.nfsdmap* %58, %struct.nfsdmap** %5, align 8
  br label %59

59:                                               ; preds = %62, %55
  %60 = load %struct.nfsdmap*, %struct.nfsdmap** %5, align 8
  %61 = icmp ne %struct.nfsdmap* %60, null
  br i1 %61, label %62, label %70

62:                                               ; preds = %59
  %63 = load %struct.nfsdmap*, %struct.nfsdmap** %5, align 8
  store %struct.nfsdmap* %63, %struct.nfsdmap** %6, align 8
  %64 = load %struct.nfsdmap*, %struct.nfsdmap** %5, align 8
  %65 = load i32, i32* @ndm_list, align 4
  %66 = call %struct.nfsdmap* @LIST_NEXT(%struct.nfsdmap* %64, i32 %65)
  store %struct.nfsdmap* %66, %struct.nfsdmap** %5, align 8
  %67 = load %struct.nfsdmap*, %struct.nfsdmap** %6, align 8
  %68 = load i32, i32* @M_NFSDIROFF, align 4
  %69 = call i32 @free(%struct.nfsdmap* %67, i32 %68)
  br label %59

70:                                               ; preds = %59
  br label %71

71:                                               ; preds = %70, %49
  %72 = load %struct.nfsnode*, %struct.nfsnode** %4, align 8
  %73 = getelementptr inbounds %struct.nfsnode, %struct.nfsnode* %72, i32 0, i32 4
  %74 = load i32*, i32** %73, align 8
  %75 = icmp ne i32* %74, null
  br i1 %75, label %76, label %81

76:                                               ; preds = %71
  %77 = load %struct.nfsnode*, %struct.nfsnode** %4, align 8
  %78 = getelementptr inbounds %struct.nfsnode, %struct.nfsnode* %77, i32 0, i32 4
  %79 = load i32*, i32** %78, align 8
  %80 = call i32 @crfree(i32* %79)
  br label %81

81:                                               ; preds = %76, %71
  %82 = load %struct.nfsnode*, %struct.nfsnode** %4, align 8
  %83 = getelementptr inbounds %struct.nfsnode, %struct.nfsnode* %82, i32 0, i32 3
  %84 = load %struct.nfsdmap*, %struct.nfsdmap** %83, align 8
  %85 = load i32, i32* @M_NFSFH, align 4
  %86 = call i32 @free(%struct.nfsdmap* %84, i32 %85)
  %87 = load %struct.nfsnode*, %struct.nfsnode** %4, align 8
  %88 = getelementptr inbounds %struct.nfsnode, %struct.nfsnode* %87, i32 0, i32 2
  %89 = load %struct.nfsdmap*, %struct.nfsdmap** %88, align 8
  %90 = icmp ne %struct.nfsdmap* %89, null
  br i1 %90, label %91, label %97

91:                                               ; preds = %81
  %92 = load %struct.nfsnode*, %struct.nfsnode** %4, align 8
  %93 = getelementptr inbounds %struct.nfsnode, %struct.nfsnode* %92, i32 0, i32 2
  %94 = load %struct.nfsdmap*, %struct.nfsdmap** %93, align 8
  %95 = load i32, i32* @M_NFSV4NODE, align 4
  %96 = call i32 @free(%struct.nfsdmap* %94, i32 %95)
  br label %97

97:                                               ; preds = %91, %81
  %98 = load %struct.nfsnode*, %struct.nfsnode** %4, align 8
  %99 = getelementptr inbounds %struct.nfsnode, %struct.nfsnode* %98, i32 0, i32 1
  %100 = call i32 @mtx_destroy(i32* %99)
  %101 = load %struct.nfsnode*, %struct.nfsnode** %4, align 8
  %102 = getelementptr inbounds %struct.nfsnode, %struct.nfsnode* %101, i32 0, i32 0
  %103 = call i32 @lockdestroy(i32* %102)
  %104 = load i32, i32* @newnfsnode_zone, align 4
  %105 = load %struct.vnode*, %struct.vnode** %3, align 8
  %106 = getelementptr inbounds %struct.vnode, %struct.vnode* %105, i32 0, i32 1
  %107 = load i32*, i32** %106, align 8
  %108 = call i32 @uma_zfree(i32 %104, i32* %107)
  %109 = load %struct.vnode*, %struct.vnode** %3, align 8
  %110 = getelementptr inbounds %struct.vnode, %struct.vnode* %109, i32 0, i32 1
  store i32* null, i32** %110, align 8
  ret i32 0
}

declare dso_local %struct.nfsnode* @VTONFS(%struct.vnode*) #1

declare dso_local i32 @nfs_reclaim_p(%struct.vop_reclaim_args*) #1

declare dso_local i32 @NFSLOCKNODE(%struct.nfsnode*) #1

declare dso_local i32 @ncl_releasesillyrename(%struct.vnode*, i32) #1

declare dso_local i32 @NFSUNLOCKNODE(%struct.nfsnode*) #1

declare dso_local i64 @NFS_ISV4(%struct.vnode*) #1

declare dso_local i32 @nfsrpc_close(%struct.vnode*, i32, i32) #1

declare dso_local i32 @vfs_hash_remove(%struct.vnode*) #1

declare dso_local i32 @nfscl_reclaimnode(%struct.vnode*) #1

declare dso_local %struct.nfsdmap* @LIST_FIRST(i32*) #1

declare dso_local %struct.nfsdmap* @LIST_NEXT(%struct.nfsdmap*, i32) #1

declare dso_local i32 @free(%struct.nfsdmap*, i32) #1

declare dso_local i32 @crfree(i32*) #1

declare dso_local i32 @mtx_destroy(i32*) #1

declare dso_local i32 @lockdestroy(i32*) #1

declare dso_local i32 @uma_zfree(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
