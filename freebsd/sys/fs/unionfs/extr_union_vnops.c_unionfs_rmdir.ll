; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/unionfs/extr_union_vnops.c_unionfs_rmdir.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/unionfs/extr_union_vnops.c_unionfs_rmdir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32 }
%struct.vnode = type { i32 }
%struct.vop_rmdir_args = type { %struct.TYPE_6__*, %struct.TYPE_6__*, %struct.componentname* }
%struct.TYPE_6__ = type { i32 }
%struct.componentname = type { i32, i32 }
%struct.unionfs_node = type { i32, %struct.vnode*, %struct.vnode* }
%struct.unionfs_mount = type { i64 }

@.str = private unnamed_addr constant [22 x i8] c"unionfs_rmdir: enter\0A\00", align 1
@curthread = common dso_local global %struct.thread* null, align 8
@NULLVP = common dso_local global %struct.vnode* null, align 8
@EROFS = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@UNIONFS_WHITE_ALWAYS = common dso_local global i64 0, align 8
@DOWHITEOUT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"unionfs_rmdir: leave (%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vop_rmdir_args*)* @unionfs_rmdir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @unionfs_rmdir(%struct.vop_rmdir_args* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vop_rmdir_args*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.unionfs_node*, align 8
  %6 = alloca %struct.unionfs_node*, align 8
  %7 = alloca %struct.unionfs_mount*, align 8
  %8 = alloca %struct.componentname*, align 8
  %9 = alloca %struct.thread*, align 8
  %10 = alloca %struct.vnode*, align 8
  %11 = alloca %struct.vnode*, align 8
  %12 = alloca %struct.vnode*, align 8
  store %struct.vop_rmdir_args* %0, %struct.vop_rmdir_args** %3, align 8
  %13 = call i32 (i8*, ...) @UNIONFS_INTERNAL_DEBUG(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %14 = load %struct.vop_rmdir_args*, %struct.vop_rmdir_args** %3, align 8
  %15 = getelementptr inbounds %struct.vop_rmdir_args, %struct.vop_rmdir_args* %14, i32 0, i32 1
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %17 = call i32 @KASSERT_UNIONFS_VNODE(%struct.TYPE_6__* %16)
  %18 = load %struct.vop_rmdir_args*, %struct.vop_rmdir_args** %3, align 8
  %19 = getelementptr inbounds %struct.vop_rmdir_args, %struct.vop_rmdir_args* %18, i32 0, i32 0
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %21 = call i32 @KASSERT_UNIONFS_VNODE(%struct.TYPE_6__* %20)
  store i32 0, i32* %4, align 4
  %22 = load %struct.vop_rmdir_args*, %struct.vop_rmdir_args** %3, align 8
  %23 = getelementptr inbounds %struct.vop_rmdir_args, %struct.vop_rmdir_args* %22, i32 0, i32 1
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %23, align 8
  %25 = call %struct.unionfs_node* @VTOUNIONFS(%struct.TYPE_6__* %24)
  store %struct.unionfs_node* %25, %struct.unionfs_node** %5, align 8
  %26 = load %struct.vop_rmdir_args*, %struct.vop_rmdir_args** %3, align 8
  %27 = getelementptr inbounds %struct.vop_rmdir_args, %struct.vop_rmdir_args* %26, i32 0, i32 0
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %27, align 8
  %29 = call %struct.unionfs_node* @VTOUNIONFS(%struct.TYPE_6__* %28)
  store %struct.unionfs_node* %29, %struct.unionfs_node** %6, align 8
  %30 = load %struct.vop_rmdir_args*, %struct.vop_rmdir_args** %3, align 8
  %31 = getelementptr inbounds %struct.vop_rmdir_args, %struct.vop_rmdir_args* %30, i32 0, i32 2
  %32 = load %struct.componentname*, %struct.componentname** %31, align 8
  store %struct.componentname* %32, %struct.componentname** %8, align 8
  %33 = load %struct.thread*, %struct.thread** @curthread, align 8
  store %struct.thread* %33, %struct.thread** %9, align 8
  %34 = load %struct.unionfs_node*, %struct.unionfs_node** %5, align 8
  %35 = getelementptr inbounds %struct.unionfs_node, %struct.unionfs_node* %34, i32 0, i32 2
  %36 = load %struct.vnode*, %struct.vnode** %35, align 8
  store %struct.vnode* %36, %struct.vnode** %10, align 8
  %37 = load %struct.unionfs_node*, %struct.unionfs_node** %6, align 8
  %38 = getelementptr inbounds %struct.unionfs_node, %struct.unionfs_node* %37, i32 0, i32 2
  %39 = load %struct.vnode*, %struct.vnode** %38, align 8
  store %struct.vnode* %39, %struct.vnode** %11, align 8
  %40 = load %struct.unionfs_node*, %struct.unionfs_node** %6, align 8
  %41 = getelementptr inbounds %struct.unionfs_node, %struct.unionfs_node* %40, i32 0, i32 1
  %42 = load %struct.vnode*, %struct.vnode** %41, align 8
  store %struct.vnode* %42, %struct.vnode** %12, align 8
  %43 = load %struct.vnode*, %struct.vnode** %10, align 8
  %44 = load %struct.vnode*, %struct.vnode** @NULLVP, align 8
  %45 = icmp eq %struct.vnode* %43, %44
  br i1 %45, label %46, label %48

46:                                               ; preds = %1
  %47 = load i32, i32* @EROFS, align 4
  store i32 %47, i32* %2, align 4
  br label %142

48:                                               ; preds = %1
  %49 = load %struct.vnode*, %struct.vnode** %10, align 8
  %50 = load %struct.vnode*, %struct.vnode** %11, align 8
  %51 = icmp eq %struct.vnode* %49, %50
  br i1 %51, label %52, label %54

52:                                               ; preds = %48
  %53 = load i32, i32* @EOPNOTSUPP, align 4
  store i32 %53, i32* %2, align 4
  br label %142

54:                                               ; preds = %48
  %55 = load %struct.vnode*, %struct.vnode** %11, align 8
  %56 = load %struct.vnode*, %struct.vnode** @NULLVP, align 8
  %57 = icmp ne %struct.vnode* %55, %56
  br i1 %57, label %58, label %113

58:                                               ; preds = %54
  %59 = load %struct.vnode*, %struct.vnode** %12, align 8
  %60 = load %struct.vnode*, %struct.vnode** @NULLVP, align 8
  %61 = icmp ne %struct.vnode* %59, %60
  br i1 %61, label %62, label %76

62:                                               ; preds = %58
  %63 = load %struct.vop_rmdir_args*, %struct.vop_rmdir_args** %3, align 8
  %64 = getelementptr inbounds %struct.vop_rmdir_args, %struct.vop_rmdir_args* %63, i32 0, i32 0
  %65 = load %struct.TYPE_6__*, %struct.TYPE_6__** %64, align 8
  %66 = load %struct.componentname*, %struct.componentname** %8, align 8
  %67 = getelementptr inbounds %struct.componentname, %struct.componentname* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.thread*, %struct.thread** %9, align 8
  %70 = call i32 @unionfs_check_rmdir(%struct.TYPE_6__* %65, i32 %68, %struct.thread* %69)
  store i32 %70, i32* %4, align 4
  %71 = load i32, i32* %4, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %62
  %74 = load i32, i32* %4, align 4
  store i32 %74, i32* %2, align 4
  br label %142

75:                                               ; preds = %62
  br label %76

76:                                               ; preds = %75, %58
  %77 = load %struct.vop_rmdir_args*, %struct.vop_rmdir_args** %3, align 8
  %78 = getelementptr inbounds %struct.vop_rmdir_args, %struct.vop_rmdir_args* %77, i32 0, i32 0
  %79 = load %struct.TYPE_6__*, %struct.TYPE_6__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = call %struct.unionfs_mount* @MOUNTTOUNIONFSMOUNT(i32 %81)
  store %struct.unionfs_mount* %82, %struct.unionfs_mount** %7, align 8
  %83 = load %struct.unionfs_mount*, %struct.unionfs_mount** %7, align 8
  %84 = getelementptr inbounds %struct.unionfs_mount, %struct.unionfs_mount* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = load i64, i64* @UNIONFS_WHITE_ALWAYS, align 8
  %87 = icmp eq i64 %85, %86
  br i1 %87, label %92, label %88

88:                                               ; preds = %76
  %89 = load %struct.vnode*, %struct.vnode** %12, align 8
  %90 = load %struct.vnode*, %struct.vnode** @NULLVP, align 8
  %91 = icmp ne %struct.vnode* %89, %90
  br i1 %91, label %92, label %98

92:                                               ; preds = %88, %76
  %93 = load i32, i32* @DOWHITEOUT, align 4
  %94 = load %struct.componentname*, %struct.componentname** %8, align 8
  %95 = getelementptr inbounds %struct.componentname, %struct.componentname* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = or i32 %96, %93
  store i32 %97, i32* %95, align 4
  br label %98

98:                                               ; preds = %92, %88
  %99 = load %struct.vop_rmdir_args*, %struct.vop_rmdir_args** %3, align 8
  %100 = getelementptr inbounds %struct.vop_rmdir_args, %struct.vop_rmdir_args* %99, i32 0, i32 1
  %101 = load %struct.TYPE_6__*, %struct.TYPE_6__** %100, align 8
  %102 = load %struct.componentname*, %struct.componentname** %8, align 8
  %103 = load %struct.thread*, %struct.thread** %9, align 8
  %104 = call i32 @unionfs_relookup_for_delete(%struct.TYPE_6__* %101, %struct.componentname* %102, %struct.thread* %103)
  store i32 %104, i32* %4, align 4
  %105 = load i32, i32* %4, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %112, label %107

107:                                              ; preds = %98
  %108 = load %struct.vnode*, %struct.vnode** %10, align 8
  %109 = load %struct.vnode*, %struct.vnode** %11, align 8
  %110 = load %struct.componentname*, %struct.componentname** %8, align 8
  %111 = call i32 @VOP_RMDIR(%struct.vnode* %108, %struct.vnode* %109, %struct.componentname* %110)
  store i32 %111, i32* %4, align 4
  br label %112

112:                                              ; preds = %107, %98
  br label %126

113:                                              ; preds = %54
  %114 = load %struct.vnode*, %struct.vnode** %12, align 8
  %115 = load %struct.vnode*, %struct.vnode** @NULLVP, align 8
  %116 = icmp ne %struct.vnode* %114, %115
  br i1 %116, label %117, label %125

117:                                              ; preds = %113
  %118 = load %struct.vnode*, %struct.vnode** %10, align 8
  %119 = load %struct.componentname*, %struct.componentname** %8, align 8
  %120 = load %struct.thread*, %struct.thread** %9, align 8
  %121 = load %struct.unionfs_node*, %struct.unionfs_node** %6, align 8
  %122 = getelementptr inbounds %struct.unionfs_node, %struct.unionfs_node* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = call i32 @unionfs_mkwhiteout(%struct.vnode* %118, %struct.componentname* %119, %struct.thread* %120, i32 %123)
  store i32 %124, i32* %4, align 4
  br label %125

125:                                              ; preds = %117, %113
  br label %126

126:                                              ; preds = %125, %112
  %127 = load i32, i32* %4, align 4
  %128 = icmp eq i32 %127, 0
  br i1 %128, label %129, label %138

129:                                              ; preds = %126
  %130 = load %struct.vop_rmdir_args*, %struct.vop_rmdir_args** %3, align 8
  %131 = getelementptr inbounds %struct.vop_rmdir_args, %struct.vop_rmdir_args* %130, i32 0, i32 1
  %132 = load %struct.TYPE_6__*, %struct.TYPE_6__** %131, align 8
  %133 = call i32 @cache_purge(%struct.TYPE_6__* %132)
  %134 = load %struct.vop_rmdir_args*, %struct.vop_rmdir_args** %3, align 8
  %135 = getelementptr inbounds %struct.vop_rmdir_args, %struct.vop_rmdir_args* %134, i32 0, i32 0
  %136 = load %struct.TYPE_6__*, %struct.TYPE_6__** %135, align 8
  %137 = call i32 @cache_purge(%struct.TYPE_6__* %136)
  br label %138

138:                                              ; preds = %129, %126
  %139 = load i32, i32* %4, align 4
  %140 = call i32 (i8*, ...) @UNIONFS_INTERNAL_DEBUG(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %139)
  %141 = load i32, i32* %4, align 4
  store i32 %141, i32* %2, align 4
  br label %142

142:                                              ; preds = %138, %73, %52, %46
  %143 = load i32, i32* %2, align 4
  ret i32 %143
}

declare dso_local i32 @UNIONFS_INTERNAL_DEBUG(i8*, ...) #1

declare dso_local i32 @KASSERT_UNIONFS_VNODE(%struct.TYPE_6__*) #1

declare dso_local %struct.unionfs_node* @VTOUNIONFS(%struct.TYPE_6__*) #1

declare dso_local i32 @unionfs_check_rmdir(%struct.TYPE_6__*, i32, %struct.thread*) #1

declare dso_local %struct.unionfs_mount* @MOUNTTOUNIONFSMOUNT(i32) #1

declare dso_local i32 @unionfs_relookup_for_delete(%struct.TYPE_6__*, %struct.componentname*, %struct.thread*) #1

declare dso_local i32 @VOP_RMDIR(%struct.vnode*, %struct.vnode*, %struct.componentname*) #1

declare dso_local i32 @unionfs_mkwhiteout(%struct.vnode*, %struct.componentname*, %struct.thread*, i32) #1

declare dso_local i32 @cache_purge(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
