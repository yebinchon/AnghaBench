; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/unionfs/extr_union_vnops.c_unionfs_setattr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/unionfs/extr_union_vnops.c_unionfs_setattr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32 }
%struct.vnode = type { i64 }
%struct.vop_setattr_args = type { i32, %struct.TYPE_9__*, %struct.vattr* }
%struct.TYPE_9__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.vattr = type { i64, i64, i64, i64, i64, %struct.TYPE_8__, %struct.TYPE_7__ }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_7__ = type { i64 }
%struct.unionfs_node = type { %struct.vnode*, %struct.vnode* }

@.str = private unnamed_addr constant [24 x i8] c"unionfs_setattr: enter\0A\00", align 1
@EROFS = common dso_local global i32 0, align 4
@curthread = common dso_local global %struct.thread* null, align 8
@MNT_RDONLY = common dso_local global i32 0, align 4
@VNOVAL = common dso_local global i64 0, align 8
@NULLVP = common dso_local global %struct.vnode* null, align 8
@VREG = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [29 x i8] c"unionfs_setattr: leave (%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vop_setattr_args*)* @unionfs_setattr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @unionfs_setattr(%struct.vop_setattr_args* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vop_setattr_args*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.unionfs_node*, align 8
  %6 = alloca %struct.vnode*, align 8
  %7 = alloca %struct.vnode*, align 8
  %8 = alloca %struct.thread*, align 8
  %9 = alloca %struct.vattr*, align 8
  store %struct.vop_setattr_args* %0, %struct.vop_setattr_args** %3, align 8
  %10 = call i32 (i8*, ...) @UNIONFS_INTERNAL_DEBUG(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %11 = load %struct.vop_setattr_args*, %struct.vop_setattr_args** %3, align 8
  %12 = getelementptr inbounds %struct.vop_setattr_args, %struct.vop_setattr_args* %11, i32 0, i32 1
  %13 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %14 = call i32 @KASSERT_UNIONFS_VNODE(%struct.TYPE_9__* %13)
  %15 = load i32, i32* @EROFS, align 4
  store i32 %15, i32* %4, align 4
  %16 = load %struct.vop_setattr_args*, %struct.vop_setattr_args** %3, align 8
  %17 = getelementptr inbounds %struct.vop_setattr_args, %struct.vop_setattr_args* %16, i32 0, i32 1
  %18 = load %struct.TYPE_9__*, %struct.TYPE_9__** %17, align 8
  %19 = call %struct.unionfs_node* @VTOUNIONFS(%struct.TYPE_9__* %18)
  store %struct.unionfs_node* %19, %struct.unionfs_node** %5, align 8
  %20 = load %struct.unionfs_node*, %struct.unionfs_node** %5, align 8
  %21 = getelementptr inbounds %struct.unionfs_node, %struct.unionfs_node* %20, i32 0, i32 0
  %22 = load %struct.vnode*, %struct.vnode** %21, align 8
  store %struct.vnode* %22, %struct.vnode** %6, align 8
  %23 = load %struct.unionfs_node*, %struct.unionfs_node** %5, align 8
  %24 = getelementptr inbounds %struct.unionfs_node, %struct.unionfs_node* %23, i32 0, i32 1
  %25 = load %struct.vnode*, %struct.vnode** %24, align 8
  store %struct.vnode* %25, %struct.vnode** %7, align 8
  %26 = load %struct.thread*, %struct.thread** @curthread, align 8
  store %struct.thread* %26, %struct.thread** %8, align 8
  %27 = load %struct.vop_setattr_args*, %struct.vop_setattr_args** %3, align 8
  %28 = getelementptr inbounds %struct.vop_setattr_args, %struct.vop_setattr_args* %27, i32 0, i32 2
  %29 = load %struct.vattr*, %struct.vattr** %28, align 8
  store %struct.vattr* %29, %struct.vattr** %9, align 8
  %30 = load %struct.vop_setattr_args*, %struct.vop_setattr_args** %3, align 8
  %31 = getelementptr inbounds %struct.vop_setattr_args, %struct.vop_setattr_args* %30, i32 0, i32 1
  %32 = load %struct.TYPE_9__*, %struct.TYPE_9__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %32, i32 0, i32 0
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @MNT_RDONLY, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %80

40:                                               ; preds = %1
  %41 = load %struct.vattr*, %struct.vattr** %9, align 8
  %42 = getelementptr inbounds %struct.vattr, %struct.vattr* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @VNOVAL, align 8
  %45 = icmp ne i64 %43, %44
  br i1 %45, label %78, label %46

46:                                               ; preds = %40
  %47 = load %struct.vattr*, %struct.vattr** %9, align 8
  %48 = getelementptr inbounds %struct.vattr, %struct.vattr* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @VNOVAL, align 8
  %51 = icmp ne i64 %49, %50
  br i1 %51, label %78, label %52

52:                                               ; preds = %46
  %53 = load %struct.vattr*, %struct.vattr** %9, align 8
  %54 = getelementptr inbounds %struct.vattr, %struct.vattr* %53, i32 0, i32 2
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @VNOVAL, align 8
  %57 = icmp ne i64 %55, %56
  br i1 %57, label %78, label %58

58:                                               ; preds = %52
  %59 = load %struct.vattr*, %struct.vattr** %9, align 8
  %60 = getelementptr inbounds %struct.vattr, %struct.vattr* %59, i32 0, i32 6
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @VNOVAL, align 8
  %64 = icmp ne i64 %62, %63
  br i1 %64, label %78, label %65

65:                                               ; preds = %58
  %66 = load %struct.vattr*, %struct.vattr** %9, align 8
  %67 = getelementptr inbounds %struct.vattr, %struct.vattr* %66, i32 0, i32 5
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @VNOVAL, align 8
  %71 = icmp ne i64 %69, %70
  br i1 %71, label %78, label %72

72:                                               ; preds = %65
  %73 = load %struct.vattr*, %struct.vattr** %9, align 8
  %74 = getelementptr inbounds %struct.vattr, %struct.vattr* %73, i32 0, i32 3
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* @VNOVAL, align 8
  %77 = icmp ne i64 %75, %76
  br i1 %77, label %78, label %80

78:                                               ; preds = %72, %65, %58, %52, %46, %40
  %79 = load i32, i32* @EROFS, align 4
  store i32 %79, i32* %2, align 4
  br label %125

80:                                               ; preds = %72, %1
  %81 = load %struct.vnode*, %struct.vnode** %6, align 8
  %82 = load %struct.vnode*, %struct.vnode** @NULLVP, align 8
  %83 = icmp eq %struct.vnode* %81, %82
  br i1 %83, label %84, label %110

84:                                               ; preds = %80
  %85 = load %struct.vnode*, %struct.vnode** %7, align 8
  %86 = getelementptr inbounds %struct.vnode, %struct.vnode* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = load i64, i64* @VREG, align 8
  %89 = icmp eq i64 %87, %88
  br i1 %89, label %90, label %110

90:                                               ; preds = %84
  %91 = load %struct.unionfs_node*, %struct.unionfs_node** %5, align 8
  %92 = load %struct.vattr*, %struct.vattr** %9, align 8
  %93 = getelementptr inbounds %struct.vattr, %struct.vattr* %92, i32 0, i32 4
  %94 = load i64, i64* %93, align 8
  %95 = icmp ne i64 %94, 0
  %96 = zext i1 %95 to i32
  %97 = load %struct.vop_setattr_args*, %struct.vop_setattr_args** %3, align 8
  %98 = getelementptr inbounds %struct.vop_setattr_args, %struct.vop_setattr_args* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = load %struct.thread*, %struct.thread** %8, align 8
  %101 = call i32 @unionfs_copyfile(%struct.unionfs_node* %91, i32 %96, i32 %99, %struct.thread* %100)
  store i32 %101, i32* %4, align 4
  %102 = load i32, i32* %4, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %106

104:                                              ; preds = %90
  %105 = load i32, i32* %4, align 4
  store i32 %105, i32* %2, align 4
  br label %125

106:                                              ; preds = %90
  %107 = load %struct.unionfs_node*, %struct.unionfs_node** %5, align 8
  %108 = getelementptr inbounds %struct.unionfs_node, %struct.unionfs_node* %107, i32 0, i32 0
  %109 = load %struct.vnode*, %struct.vnode** %108, align 8
  store %struct.vnode* %109, %struct.vnode** %6, align 8
  br label %110

110:                                              ; preds = %106, %84, %80
  %111 = load %struct.vnode*, %struct.vnode** %6, align 8
  %112 = load %struct.vnode*, %struct.vnode** @NULLVP, align 8
  %113 = icmp ne %struct.vnode* %111, %112
  br i1 %113, label %114, label %121

114:                                              ; preds = %110
  %115 = load %struct.vnode*, %struct.vnode** %6, align 8
  %116 = load %struct.vattr*, %struct.vattr** %9, align 8
  %117 = load %struct.vop_setattr_args*, %struct.vop_setattr_args** %3, align 8
  %118 = getelementptr inbounds %struct.vop_setattr_args, %struct.vop_setattr_args* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = call i32 @VOP_SETATTR(%struct.vnode* %115, %struct.vattr* %116, i32 %119)
  store i32 %120, i32* %4, align 4
  br label %121

121:                                              ; preds = %114, %110
  %122 = load i32, i32* %4, align 4
  %123 = call i32 (i8*, ...) @UNIONFS_INTERNAL_DEBUG(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %122)
  %124 = load i32, i32* %4, align 4
  store i32 %124, i32* %2, align 4
  br label %125

125:                                              ; preds = %121, %104, %78
  %126 = load i32, i32* %2, align 4
  ret i32 %126
}

declare dso_local i32 @UNIONFS_INTERNAL_DEBUG(i8*, ...) #1

declare dso_local i32 @KASSERT_UNIONFS_VNODE(%struct.TYPE_9__*) #1

declare dso_local %struct.unionfs_node* @VTOUNIONFS(%struct.TYPE_9__*) #1

declare dso_local i32 @unionfs_copyfile(%struct.unionfs_node*, i32, i32, %struct.thread*) #1

declare dso_local i32 @VOP_SETATTR(%struct.vnode*, %struct.vattr*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
