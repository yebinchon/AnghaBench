; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/nfsclient/extr_nfs_clvnops.c_nfs_link.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/nfsclient/extr_nfs_clvnops.c_nfs_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vop_link_args = type { %struct.componentname*, %struct.vnode*, %struct.vnode* }
%struct.componentname = type { i32, i32, i32, i32, i32 }
%struct.vnode = type { i32 }
%struct.nfsnode = type { i64, i32 }
%struct.nfsvattr = type { i32 }
%struct.TYPE_2__ = type { i64 }

@MNT_WAIT = common dso_local global i32 0, align 4
@NMODIFIED = common dso_local global i32 0, align 4
@MAKEENTRY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vop_link_args*)* @nfs_link to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfs_link(%struct.vop_link_args* %0) #0 {
  %2 = alloca %struct.vop_link_args*, align 8
  %3 = alloca %struct.vnode*, align 8
  %4 = alloca %struct.vnode*, align 8
  %5 = alloca %struct.componentname*, align 8
  %6 = alloca %struct.nfsnode*, align 8
  %7 = alloca %struct.nfsnode*, align 8
  %8 = alloca %struct.nfsvattr, align 4
  %9 = alloca %struct.nfsvattr, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.vop_link_args* %0, %struct.vop_link_args** %2, align 8
  %13 = load %struct.vop_link_args*, %struct.vop_link_args** %2, align 8
  %14 = getelementptr inbounds %struct.vop_link_args, %struct.vop_link_args* %13, i32 0, i32 2
  %15 = load %struct.vnode*, %struct.vnode** %14, align 8
  store %struct.vnode* %15, %struct.vnode** %3, align 8
  %16 = load %struct.vop_link_args*, %struct.vop_link_args** %2, align 8
  %17 = getelementptr inbounds %struct.vop_link_args, %struct.vop_link_args* %16, i32 0, i32 1
  %18 = load %struct.vnode*, %struct.vnode** %17, align 8
  store %struct.vnode* %18, %struct.vnode** %4, align 8
  %19 = load %struct.vop_link_args*, %struct.vop_link_args** %2, align 8
  %20 = getelementptr inbounds %struct.vop_link_args, %struct.vop_link_args* %19, i32 0, i32 0
  %21 = load %struct.componentname*, %struct.componentname** %20, align 8
  store %struct.componentname* %21, %struct.componentname** %5, align 8
  store i32 0, i32* %10, align 4
  %22 = load %struct.vnode*, %struct.vnode** %3, align 8
  %23 = load i32, i32* @MNT_WAIT, align 4
  %24 = load %struct.componentname*, %struct.componentname** %5, align 8
  %25 = getelementptr inbounds %struct.componentname, %struct.componentname* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @VOP_FSYNC(%struct.vnode* %22, i32 %23, i32 %26)
  %28 = load %struct.vnode*, %struct.vnode** %4, align 8
  %29 = load %struct.vnode*, %struct.vnode** %3, align 8
  %30 = load %struct.componentname*, %struct.componentname** %5, align 8
  %31 = getelementptr inbounds %struct.componentname, %struct.componentname* %30, i32 0, i32 4
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.componentname*, %struct.componentname** %5, align 8
  %34 = getelementptr inbounds %struct.componentname, %struct.componentname* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.componentname*, %struct.componentname** %5, align 8
  %37 = getelementptr inbounds %struct.componentname, %struct.componentname* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.componentname*, %struct.componentname** %5, align 8
  %40 = getelementptr inbounds %struct.componentname, %struct.componentname* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @nfsrpc_link(%struct.vnode* %28, %struct.vnode* %29, i32 %32, i32 %35, i32 %38, i32 %41, %struct.nfsvattr* %9, %struct.nfsvattr* %8, i32* %11, i32* %12, i32* null)
  store i32 %42, i32* %10, align 4
  %43 = load %struct.vnode*, %struct.vnode** %4, align 8
  %44 = call %struct.nfsnode* @VTONFS(%struct.vnode* %43)
  store %struct.nfsnode* %44, %struct.nfsnode** %7, align 8
  %45 = load %struct.nfsnode*, %struct.nfsnode** %7, align 8
  %46 = call i32 @NFSLOCKNODE(%struct.nfsnode* %45)
  %47 = load i32, i32* @NMODIFIED, align 4
  %48 = load %struct.nfsnode*, %struct.nfsnode** %7, align 8
  %49 = getelementptr inbounds %struct.nfsnode, %struct.nfsnode* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = or i32 %50, %47
  store i32 %51, i32* %49, align 8
  %52 = load i32, i32* %12, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %58

54:                                               ; preds = %1
  %55 = load %struct.nfsnode*, %struct.nfsnode** %7, align 8
  %56 = call i32 @NFSUNLOCKNODE(%struct.nfsnode* %55)
  %57 = call i32 @nfscl_loadattrcache(%struct.vnode** %4, %struct.nfsvattr* %9, i32* null, i32* null, i32 0, i32 1)
  br label %65

58:                                               ; preds = %1
  %59 = load %struct.nfsnode*, %struct.nfsnode** %7, align 8
  %60 = getelementptr inbounds %struct.nfsnode, %struct.nfsnode* %59, i32 0, i32 0
  store i64 0, i64* %60, align 8
  %61 = load %struct.nfsnode*, %struct.nfsnode** %7, align 8
  %62 = call i32 @NFSUNLOCKNODE(%struct.nfsnode* %61)
  %63 = load %struct.vnode*, %struct.vnode** %4, align 8
  %64 = call i32 @KDTRACE_NFS_ATTRCACHE_FLUSH_DONE(%struct.vnode* %63)
  br label %65

65:                                               ; preds = %58, %54
  %66 = load i32, i32* %11, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %65
  %69 = call i32 @nfscl_loadattrcache(%struct.vnode** %3, %struct.nfsvattr* %8, i32* null, i32* null, i32 0, i32 1)
  br label %81

70:                                               ; preds = %65
  %71 = load %struct.vnode*, %struct.vnode** %3, align 8
  %72 = call %struct.nfsnode* @VTONFS(%struct.vnode* %71)
  store %struct.nfsnode* %72, %struct.nfsnode** %6, align 8
  %73 = load %struct.nfsnode*, %struct.nfsnode** %6, align 8
  %74 = call i32 @NFSLOCKNODE(%struct.nfsnode* %73)
  %75 = load %struct.nfsnode*, %struct.nfsnode** %6, align 8
  %76 = getelementptr inbounds %struct.nfsnode, %struct.nfsnode* %75, i32 0, i32 0
  store i64 0, i64* %76, align 8
  %77 = load %struct.nfsnode*, %struct.nfsnode** %6, align 8
  %78 = call i32 @NFSUNLOCKNODE(%struct.nfsnode* %77)
  %79 = load %struct.vnode*, %struct.vnode** %3, align 8
  %80 = call i32 @KDTRACE_NFS_ATTRCACHE_FLUSH_DONE(%struct.vnode* %79)
  br label %81

81:                                               ; preds = %70, %68
  %82 = load %struct.vnode*, %struct.vnode** %3, align 8
  %83 = getelementptr inbounds %struct.vnode, %struct.vnode* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = call %struct.TYPE_2__* @VFSTONFS(i32 %84)
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %108

89:                                               ; preds = %81
  %90 = load %struct.componentname*, %struct.componentname** %5, align 8
  %91 = getelementptr inbounds %struct.componentname, %struct.componentname* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = load i32, i32* @MAKEENTRY, align 4
  %94 = and i32 %92, %93
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %108

96:                                               ; preds = %89
  %97 = load i32, i32* %11, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %108

99:                                               ; preds = %96
  %100 = load i32, i32* %10, align 4
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %102, label %108

102:                                              ; preds = %99
  %103 = load %struct.vnode*, %struct.vnode** %4, align 8
  %104 = load %struct.vnode*, %struct.vnode** %3, align 8
  %105 = load %struct.componentname*, %struct.componentname** %5, align 8
  %106 = getelementptr inbounds %struct.nfsvattr, %struct.nfsvattr* %8, i32 0, i32 0
  %107 = call i32 @cache_enter_time(%struct.vnode* %103, %struct.vnode* %104, %struct.componentname* %105, i32* %106, i32* null)
  br label %108

108:                                              ; preds = %102, %99, %96, %89, %81
  %109 = load i32, i32* %10, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %121

111:                                              ; preds = %108
  %112 = load %struct.vnode*, %struct.vnode** %3, align 8
  %113 = call i64 @NFS_ISV4(%struct.vnode* %112)
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %121

115:                                              ; preds = %111
  %116 = load %struct.componentname*, %struct.componentname** %5, align 8
  %117 = getelementptr inbounds %struct.componentname, %struct.componentname* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = load i32, i32* %10, align 4
  %120 = call i32 @nfscl_maperr(i32 %118, i32 %119, i32 0, i32 0)
  store i32 %120, i32* %10, align 4
  br label %121

121:                                              ; preds = %115, %111, %108
  %122 = load i32, i32* %10, align 4
  ret i32 %122
}

declare dso_local i32 @VOP_FSYNC(%struct.vnode*, i32, i32) #1

declare dso_local i32 @nfsrpc_link(%struct.vnode*, %struct.vnode*, i32, i32, i32, i32, %struct.nfsvattr*, %struct.nfsvattr*, i32*, i32*, i32*) #1

declare dso_local %struct.nfsnode* @VTONFS(%struct.vnode*) #1

declare dso_local i32 @NFSLOCKNODE(%struct.nfsnode*) #1

declare dso_local i32 @NFSUNLOCKNODE(%struct.nfsnode*) #1

declare dso_local i32 @nfscl_loadattrcache(%struct.vnode**, %struct.nfsvattr*, i32*, i32*, i32, i32) #1

declare dso_local i32 @KDTRACE_NFS_ATTRCACHE_FLUSH_DONE(%struct.vnode*) #1

declare dso_local %struct.TYPE_2__* @VFSTONFS(i32) #1

declare dso_local i32 @cache_enter_time(%struct.vnode*, %struct.vnode*, %struct.componentname*, i32*, i32*) #1

declare dso_local i64 @NFS_ISV4(%struct.vnode*) #1

declare dso_local i32 @nfscl_maperr(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
