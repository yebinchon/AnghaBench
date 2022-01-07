; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/nfsclient/extr_nfs_clvnops.c_nfs_remove.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/nfsclient/extr_nfs_clvnops.c_nfs_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vop_remove_args = type { %struct.componentname*, %struct.vnode*, %struct.vnode* }
%struct.componentname = type { i32, i32, i32, i32, i32 }
%struct.vnode = type { i64 }
%struct.nfsnode = type { i64, i64 }
%struct.vattr = type { i32 }

@HASBUF = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"nfs_remove: no name\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"nfs_remove: bad v_usecount\00", align 1
@VDIR = common dso_local global i64 0, align 8
@EPERM = common dso_local global i32 0, align 4
@EINTR = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vop_remove_args*)* @nfs_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfs_remove(%struct.vop_remove_args* %0) #0 {
  %2 = alloca %struct.vop_remove_args*, align 8
  %3 = alloca %struct.vnode*, align 8
  %4 = alloca %struct.vnode*, align 8
  %5 = alloca %struct.componentname*, align 8
  %6 = alloca %struct.nfsnode*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.vattr, align 4
  store %struct.vop_remove_args* %0, %struct.vop_remove_args** %2, align 8
  %9 = load %struct.vop_remove_args*, %struct.vop_remove_args** %2, align 8
  %10 = getelementptr inbounds %struct.vop_remove_args, %struct.vop_remove_args* %9, i32 0, i32 2
  %11 = load %struct.vnode*, %struct.vnode** %10, align 8
  store %struct.vnode* %11, %struct.vnode** %3, align 8
  %12 = load %struct.vop_remove_args*, %struct.vop_remove_args** %2, align 8
  %13 = getelementptr inbounds %struct.vop_remove_args, %struct.vop_remove_args* %12, i32 0, i32 1
  %14 = load %struct.vnode*, %struct.vnode** %13, align 8
  store %struct.vnode* %14, %struct.vnode** %4, align 8
  %15 = load %struct.vop_remove_args*, %struct.vop_remove_args** %2, align 8
  %16 = getelementptr inbounds %struct.vop_remove_args, %struct.vop_remove_args* %15, i32 0, i32 0
  %17 = load %struct.componentname*, %struct.componentname** %16, align 8
  store %struct.componentname* %17, %struct.componentname** %5, align 8
  %18 = load %struct.vnode*, %struct.vnode** %3, align 8
  %19 = call %struct.nfsnode* @VTONFS(%struct.vnode* %18)
  store %struct.nfsnode* %19, %struct.nfsnode** %6, align 8
  store i32 0, i32* %7, align 4
  %20 = load %struct.componentname*, %struct.componentname** %5, align 8
  %21 = getelementptr inbounds %struct.componentname, %struct.componentname* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @HASBUF, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  %26 = zext i1 %25 to i32
  %27 = call i32 @KASSERT(i32 %26, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %28 = load %struct.vnode*, %struct.vnode** %3, align 8
  %29 = call i32 @vrefcnt(%struct.vnode* %28)
  %30 = icmp sgt i32 %29, 0
  %31 = zext i1 %30 to i32
  %32 = call i32 @KASSERT(i32 %31, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %33 = load %struct.vnode*, %struct.vnode** %3, align 8
  %34 = getelementptr inbounds %struct.vnode, %struct.vnode* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @VDIR, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %40

38:                                               ; preds = %1
  %39 = load i32, i32* @EPERM, align 4
  store i32 %39, i32* %7, align 4
  br label %109

40:                                               ; preds = %1
  %41 = load %struct.vnode*, %struct.vnode** %3, align 8
  %42 = call i32 @vrefcnt(%struct.vnode* %41)
  %43 = icmp eq i32 %42, 1
  br i1 %43, label %60, label %44

44:                                               ; preds = %40
  %45 = load %struct.nfsnode*, %struct.nfsnode** %6, align 8
  %46 = getelementptr inbounds %struct.nfsnode, %struct.nfsnode* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %97

49:                                               ; preds = %44
  %50 = load %struct.vnode*, %struct.vnode** %3, align 8
  %51 = load %struct.componentname*, %struct.componentname** %5, align 8
  %52 = getelementptr inbounds %struct.componentname, %struct.componentname* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 4
  %54 = call i64 @VOP_GETATTR(%struct.vnode* %50, %struct.vattr* %8, i32 %53)
  %55 = icmp eq i64 %54, 0
  br i1 %55, label %56, label %97

56:                                               ; preds = %49
  %57 = getelementptr inbounds %struct.vattr, %struct.vattr* %8, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = icmp sgt i32 %58, 1
  br i1 %59, label %60, label %97

60:                                               ; preds = %56, %40
  %61 = load %struct.vnode*, %struct.vnode** %3, align 8
  %62 = call i32 @cache_purge(%struct.vnode* %61)
  %63 = load %struct.vnode*, %struct.vnode** %3, align 8
  %64 = load %struct.componentname*, %struct.componentname** %5, align 8
  %65 = getelementptr inbounds %struct.componentname, %struct.componentname* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @ncl_vinvalbuf(%struct.vnode* %63, i32 0, i32 %66, i32 1)
  store i32 %67, i32* %7, align 4
  %68 = load i32, i32* %7, align 4
  %69 = load i32, i32* @EINTR, align 4
  %70 = icmp ne i32 %68, %69
  br i1 %70, label %71, label %91

71:                                               ; preds = %60
  %72 = load i32, i32* %7, align 4
  %73 = load i32, i32* @EIO, align 4
  %74 = icmp ne i32 %72, %73
  br i1 %74, label %75, label %91

75:                                               ; preds = %71
  %76 = load %struct.vnode*, %struct.vnode** %4, align 8
  %77 = load %struct.vnode*, %struct.vnode** %3, align 8
  %78 = load %struct.componentname*, %struct.componentname** %5, align 8
  %79 = getelementptr inbounds %struct.componentname, %struct.componentname* %78, i32 0, i32 4
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.componentname*, %struct.componentname** %5, align 8
  %82 = getelementptr inbounds %struct.componentname, %struct.componentname* %81, i32 0, i32 3
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.componentname*, %struct.componentname** %5, align 8
  %85 = getelementptr inbounds %struct.componentname, %struct.componentname* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.componentname*, %struct.componentname** %5, align 8
  %88 = getelementptr inbounds %struct.componentname, %struct.componentname* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @nfs_removerpc(%struct.vnode* %76, %struct.vnode* %77, i32 %80, i32 %83, i32 %86, i32 %89)
  store i32 %90, i32* %7, align 4
  br label %91

91:                                               ; preds = %75, %71, %60
  %92 = load i32, i32* %7, align 4
  %93 = load i32, i32* @ENOENT, align 4
  %94 = icmp eq i32 %92, %93
  br i1 %94, label %95, label %96

95:                                               ; preds = %91
  store i32 0, i32* %7, align 4
  br label %96

96:                                               ; preds = %95, %91
  br label %108

97:                                               ; preds = %56, %49, %44
  %98 = load %struct.nfsnode*, %struct.nfsnode** %6, align 8
  %99 = getelementptr inbounds %struct.nfsnode, %struct.nfsnode* %98, i32 0, i32 1
  %100 = load i64, i64* %99, align 8
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %107, label %102

102:                                              ; preds = %97
  %103 = load %struct.vnode*, %struct.vnode** %4, align 8
  %104 = load %struct.vnode*, %struct.vnode** %3, align 8
  %105 = load %struct.componentname*, %struct.componentname** %5, align 8
  %106 = call i32 @nfs_sillyrename(%struct.vnode* %103, %struct.vnode* %104, %struct.componentname* %105)
  store i32 %106, i32* %7, align 4
  br label %107

107:                                              ; preds = %102, %97
  br label %108

108:                                              ; preds = %107, %96
  br label %109

109:                                              ; preds = %108, %38
  %110 = load %struct.nfsnode*, %struct.nfsnode** %6, align 8
  %111 = call i32 @NFSLOCKNODE(%struct.nfsnode* %110)
  %112 = load %struct.nfsnode*, %struct.nfsnode** %6, align 8
  %113 = getelementptr inbounds %struct.nfsnode, %struct.nfsnode* %112, i32 0, i32 0
  store i64 0, i64* %113, align 8
  %114 = load %struct.nfsnode*, %struct.nfsnode** %6, align 8
  %115 = call i32 @NFSUNLOCKNODE(%struct.nfsnode* %114)
  %116 = load %struct.vnode*, %struct.vnode** %3, align 8
  %117 = call i32 @KDTRACE_NFS_ATTRCACHE_FLUSH_DONE(%struct.vnode* %116)
  %118 = load i32, i32* %7, align 4
  ret i32 %118
}

declare dso_local %struct.nfsnode* @VTONFS(%struct.vnode*) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @vrefcnt(%struct.vnode*) #1

declare dso_local i64 @VOP_GETATTR(%struct.vnode*, %struct.vattr*, i32) #1

declare dso_local i32 @cache_purge(%struct.vnode*) #1

declare dso_local i32 @ncl_vinvalbuf(%struct.vnode*, i32, i32, i32) #1

declare dso_local i32 @nfs_removerpc(%struct.vnode*, %struct.vnode*, i32, i32, i32, i32) #1

declare dso_local i32 @nfs_sillyrename(%struct.vnode*, %struct.vnode*, %struct.componentname*) #1

declare dso_local i32 @NFSLOCKNODE(%struct.nfsnode*) #1

declare dso_local i32 @NFSUNLOCKNODE(%struct.nfsnode*) #1

declare dso_local i32 @KDTRACE_NFS_ATTRCACHE_FLUSH_DONE(%struct.vnode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
