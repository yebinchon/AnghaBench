; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_cache.c_vfs_cache_lookup.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_cache.c_vfs_cache_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vop_lookup_args = type { %struct.vnode*, %struct.componentname*, %struct.vnode** }
%struct.vnode = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.componentname = type { i32, i64, %struct.thread*, %struct.ucred* }
%struct.thread = type { i32 }
%struct.ucred = type { i32 }

@VDIR = common dso_local global i64 0, align 8
@ENOTDIR = common dso_local global i32 0, align 4
@ISLASTCN = common dso_local global i32 0, align 4
@MNT_RDONLY = common dso_local global i32 0, align 4
@DELETE = common dso_local global i64 0, align 8
@RENAME = common dso_local global i64 0, align 8
@EROFS = common dso_local global i32 0, align 4
@VEXEC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vfs_cache_lookup(%struct.vop_lookup_args* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vop_lookup_args*, align 8
  %4 = alloca %struct.vnode*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.vnode**, align 8
  %7 = alloca %struct.componentname*, align 8
  %8 = alloca %struct.ucred*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.thread*, align 8
  store %struct.vop_lookup_args* %0, %struct.vop_lookup_args** %3, align 8
  %11 = load %struct.vop_lookup_args*, %struct.vop_lookup_args** %3, align 8
  %12 = getelementptr inbounds %struct.vop_lookup_args, %struct.vop_lookup_args* %11, i32 0, i32 2
  %13 = load %struct.vnode**, %struct.vnode*** %12, align 8
  store %struct.vnode** %13, %struct.vnode*** %6, align 8
  %14 = load %struct.vop_lookup_args*, %struct.vop_lookup_args** %3, align 8
  %15 = getelementptr inbounds %struct.vop_lookup_args, %struct.vop_lookup_args* %14, i32 0, i32 1
  %16 = load %struct.componentname*, %struct.componentname** %15, align 8
  store %struct.componentname* %16, %struct.componentname** %7, align 8
  %17 = load %struct.componentname*, %struct.componentname** %7, align 8
  %18 = getelementptr inbounds %struct.componentname, %struct.componentname* %17, i32 0, i32 3
  %19 = load %struct.ucred*, %struct.ucred** %18, align 8
  store %struct.ucred* %19, %struct.ucred** %8, align 8
  %20 = load %struct.componentname*, %struct.componentname** %7, align 8
  %21 = getelementptr inbounds %struct.componentname, %struct.componentname* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  store i32 %22, i32* %9, align 4
  %23 = load %struct.componentname*, %struct.componentname** %7, align 8
  %24 = getelementptr inbounds %struct.componentname, %struct.componentname* %23, i32 0, i32 2
  %25 = load %struct.thread*, %struct.thread** %24, align 8
  store %struct.thread* %25, %struct.thread** %10, align 8
  %26 = load %struct.vnode**, %struct.vnode*** %6, align 8
  store %struct.vnode* null, %struct.vnode** %26, align 8
  %27 = load %struct.vop_lookup_args*, %struct.vop_lookup_args** %3, align 8
  %28 = getelementptr inbounds %struct.vop_lookup_args, %struct.vop_lookup_args* %27, i32 0, i32 0
  %29 = load %struct.vnode*, %struct.vnode** %28, align 8
  store %struct.vnode* %29, %struct.vnode** %4, align 8
  %30 = load %struct.vnode*, %struct.vnode** %4, align 8
  %31 = getelementptr inbounds %struct.vnode, %struct.vnode* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @VDIR, align 8
  %34 = icmp ne i64 %32, %33
  br i1 %34, label %35, label %37

35:                                               ; preds = %1
  %36 = load i32, i32* @ENOTDIR, align 4
  store i32 %36, i32* %2, align 4
  br label %93

37:                                               ; preds = %1
  %38 = load i32, i32* %9, align 4
  %39 = load i32, i32* @ISLASTCN, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %65

42:                                               ; preds = %37
  %43 = load %struct.vnode*, %struct.vnode** %4, align 8
  %44 = getelementptr inbounds %struct.vnode, %struct.vnode* %43, i32 0, i32 1
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @MNT_RDONLY, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %65

51:                                               ; preds = %42
  %52 = load %struct.componentname*, %struct.componentname** %7, align 8
  %53 = getelementptr inbounds %struct.componentname, %struct.componentname* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @DELETE, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %63, label %57

57:                                               ; preds = %51
  %58 = load %struct.componentname*, %struct.componentname** %7, align 8
  %59 = getelementptr inbounds %struct.componentname, %struct.componentname* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @RENAME, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %63, label %65

63:                                               ; preds = %57, %51
  %64 = load i32, i32* @EROFS, align 4
  store i32 %64, i32* %2, align 4
  br label %93

65:                                               ; preds = %57, %42, %37
  %66 = load %struct.vnode*, %struct.vnode** %4, align 8
  %67 = load i32, i32* @VEXEC, align 4
  %68 = load %struct.ucred*, %struct.ucred** %8, align 8
  %69 = load %struct.thread*, %struct.thread** %10, align 8
  %70 = call i32 @VOP_ACCESS(%struct.vnode* %66, i32 %67, %struct.ucred* %68, %struct.thread* %69)
  store i32 %70, i32* %5, align 4
  %71 = load i32, i32* %5, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %65
  %74 = load i32, i32* %5, align 4
  store i32 %74, i32* %2, align 4
  br label %93

75:                                               ; preds = %65
  %76 = load %struct.vnode*, %struct.vnode** %4, align 8
  %77 = load %struct.vnode**, %struct.vnode*** %6, align 8
  %78 = load %struct.componentname*, %struct.componentname** %7, align 8
  %79 = call i32 @cache_lookup(%struct.vnode* %76, %struct.vnode** %77, %struct.componentname* %78, i32* null, i32* null)
  store i32 %79, i32* %5, align 4
  %80 = load i32, i32* %5, align 4
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %82, label %87

82:                                               ; preds = %75
  %83 = load %struct.vnode*, %struct.vnode** %4, align 8
  %84 = load %struct.vnode**, %struct.vnode*** %6, align 8
  %85 = load %struct.componentname*, %struct.componentname** %7, align 8
  %86 = call i32 @VOP_CACHEDLOOKUP(%struct.vnode* %83, %struct.vnode** %84, %struct.componentname* %85)
  store i32 %86, i32* %2, align 4
  br label %93

87:                                               ; preds = %75
  %88 = load i32, i32* %5, align 4
  %89 = icmp eq i32 %88, -1
  br i1 %89, label %90, label %91

90:                                               ; preds = %87
  store i32 0, i32* %2, align 4
  br label %93

91:                                               ; preds = %87
  %92 = load i32, i32* %5, align 4
  store i32 %92, i32* %2, align 4
  br label %93

93:                                               ; preds = %91, %90, %82, %73, %63, %35
  %94 = load i32, i32* %2, align 4
  ret i32 %94
}

declare dso_local i32 @VOP_ACCESS(%struct.vnode*, i32, %struct.ucred*, %struct.thread*) #1

declare dso_local i32 @cache_lookup(%struct.vnode*, %struct.vnode**, %struct.componentname*, i32*, i32*) #1

declare dso_local i32 @VOP_CACHEDLOOKUP(%struct.vnode*, %struct.vnode**, %struct.componentname*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
