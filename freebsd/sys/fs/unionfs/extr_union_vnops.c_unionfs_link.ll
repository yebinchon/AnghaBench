; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/unionfs/extr_union_vnops.c_unionfs_link.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/unionfs/extr_union_vnops.c_unionfs_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vnode = type { i64, i32* }
%struct.thread = type { i32 }
%struct.vop_link_args = type { %struct.vnode*, %struct.vnode*, %struct.componentname* }
%struct.componentname = type { i32 }
%struct.unionfs_node = type { %struct.vnode* }

@.str = private unnamed_addr constant [21 x i8] c"unionfs_link: enter\0A\00", align 1
@NULLVP = common dso_local global %struct.vnode* null, align 8
@curthread = common dso_local global %struct.thread* null, align 8
@EROFS = common dso_local global i32 0, align 4
@unionfs_vnodeops = common dso_local global i32 0, align 4
@VREG = common dso_local global i64 0, align 8
@EOPNOTSUPP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"unionfs_link: leave (%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vop_link_args*)* @unionfs_link to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @unionfs_link(%struct.vop_link_args* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vop_link_args*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.unionfs_node*, align 8
  %7 = alloca %struct.unionfs_node*, align 8
  %8 = alloca %struct.vnode*, align 8
  %9 = alloca %struct.vnode*, align 8
  %10 = alloca %struct.componentname*, align 8
  %11 = alloca %struct.thread*, align 8
  store %struct.vop_link_args* %0, %struct.vop_link_args** %3, align 8
  %12 = call i32 (i8*, ...) @UNIONFS_INTERNAL_DEBUG(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %13 = load %struct.vop_link_args*, %struct.vop_link_args** %3, align 8
  %14 = getelementptr inbounds %struct.vop_link_args, %struct.vop_link_args* %13, i32 0, i32 0
  %15 = load %struct.vnode*, %struct.vnode** %14, align 8
  %16 = call i32 @KASSERT_UNIONFS_VNODE(%struct.vnode* %15)
  %17 = load %struct.vop_link_args*, %struct.vop_link_args** %3, align 8
  %18 = getelementptr inbounds %struct.vop_link_args, %struct.vop_link_args* %17, i32 0, i32 1
  %19 = load %struct.vnode*, %struct.vnode** %18, align 8
  %20 = call i32 @KASSERT_UNIONFS_VNODE(%struct.vnode* %19)
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %21 = load %struct.vop_link_args*, %struct.vop_link_args** %3, align 8
  %22 = getelementptr inbounds %struct.vop_link_args, %struct.vop_link_args* %21, i32 0, i32 0
  %23 = load %struct.vnode*, %struct.vnode** %22, align 8
  %24 = call %struct.unionfs_node* @VTOUNIONFS(%struct.vnode* %23)
  store %struct.unionfs_node* %24, %struct.unionfs_node** %6, align 8
  store %struct.unionfs_node* null, %struct.unionfs_node** %7, align 8
  %25 = load %struct.unionfs_node*, %struct.unionfs_node** %6, align 8
  %26 = getelementptr inbounds %struct.unionfs_node, %struct.unionfs_node* %25, i32 0, i32 0
  %27 = load %struct.vnode*, %struct.vnode** %26, align 8
  store %struct.vnode* %27, %struct.vnode** %8, align 8
  %28 = load %struct.vnode*, %struct.vnode** @NULLVP, align 8
  store %struct.vnode* %28, %struct.vnode** %9, align 8
  %29 = load %struct.vop_link_args*, %struct.vop_link_args** %3, align 8
  %30 = getelementptr inbounds %struct.vop_link_args, %struct.vop_link_args* %29, i32 0, i32 2
  %31 = load %struct.componentname*, %struct.componentname** %30, align 8
  store %struct.componentname* %31, %struct.componentname** %10, align 8
  %32 = load %struct.thread*, %struct.thread** @curthread, align 8
  store %struct.thread* %32, %struct.thread** %11, align 8
  %33 = load %struct.vnode*, %struct.vnode** %8, align 8
  %34 = load %struct.vnode*, %struct.vnode** @NULLVP, align 8
  %35 = icmp eq %struct.vnode* %33, %34
  br i1 %35, label %36, label %38

36:                                               ; preds = %1
  %37 = load i32, i32* @EROFS, align 4
  store i32 %37, i32* %2, align 4
  br label %107

38:                                               ; preds = %1
  %39 = load %struct.vop_link_args*, %struct.vop_link_args** %3, align 8
  %40 = getelementptr inbounds %struct.vop_link_args, %struct.vop_link_args* %39, i32 0, i32 1
  %41 = load %struct.vnode*, %struct.vnode** %40, align 8
  %42 = getelementptr inbounds %struct.vnode, %struct.vnode* %41, i32 0, i32 1
  %43 = load i32*, i32** %42, align 8
  %44 = icmp ne i32* %43, @unionfs_vnodeops
  br i1 %44, label %45, label %49

45:                                               ; preds = %38
  %46 = load %struct.vop_link_args*, %struct.vop_link_args** %3, align 8
  %47 = getelementptr inbounds %struct.vop_link_args, %struct.vop_link_args* %46, i32 0, i32 1
  %48 = load %struct.vnode*, %struct.vnode** %47, align 8
  store %struct.vnode* %48, %struct.vnode** %9, align 8
  br label %85

49:                                               ; preds = %38
  %50 = load %struct.vop_link_args*, %struct.vop_link_args** %3, align 8
  %51 = getelementptr inbounds %struct.vop_link_args, %struct.vop_link_args* %50, i32 0, i32 1
  %52 = load %struct.vnode*, %struct.vnode** %51, align 8
  %53 = call %struct.unionfs_node* @VTOUNIONFS(%struct.vnode* %52)
  store %struct.unionfs_node* %53, %struct.unionfs_node** %7, align 8
  %54 = load %struct.unionfs_node*, %struct.unionfs_node** %7, align 8
  %55 = getelementptr inbounds %struct.unionfs_node, %struct.unionfs_node* %54, i32 0, i32 0
  %56 = load %struct.vnode*, %struct.vnode** %55, align 8
  %57 = load %struct.vnode*, %struct.vnode** @NULLVP, align 8
  %58 = icmp eq %struct.vnode* %56, %57
  br i1 %58, label %59, label %81

59:                                               ; preds = %49
  %60 = load %struct.vop_link_args*, %struct.vop_link_args** %3, align 8
  %61 = getelementptr inbounds %struct.vop_link_args, %struct.vop_link_args* %60, i32 0, i32 1
  %62 = load %struct.vnode*, %struct.vnode** %61, align 8
  %63 = getelementptr inbounds %struct.vnode, %struct.vnode* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @VREG, align 8
  %66 = icmp ne i64 %64, %65
  br i1 %66, label %67, label %69

67:                                               ; preds = %59
  %68 = load i32, i32* @EOPNOTSUPP, align 4
  store i32 %68, i32* %2, align 4
  br label %107

69:                                               ; preds = %59
  %70 = load %struct.unionfs_node*, %struct.unionfs_node** %7, align 8
  %71 = load %struct.componentname*, %struct.componentname** %10, align 8
  %72 = getelementptr inbounds %struct.componentname, %struct.componentname* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.thread*, %struct.thread** %11, align 8
  %75 = call i32 @unionfs_copyfile(%struct.unionfs_node* %70, i32 1, i32 %73, %struct.thread* %74)
  store i32 %75, i32* %4, align 4
  %76 = load i32, i32* %4, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %80

78:                                               ; preds = %69
  %79 = load i32, i32* %4, align 4
  store i32 %79, i32* %2, align 4
  br label %107

80:                                               ; preds = %69
  store i32 1, i32* %5, align 4
  br label %81

81:                                               ; preds = %80, %49
  %82 = load %struct.unionfs_node*, %struct.unionfs_node** %7, align 8
  %83 = getelementptr inbounds %struct.unionfs_node, %struct.unionfs_node* %82, i32 0, i32 0
  %84 = load %struct.vnode*, %struct.vnode** %83, align 8
  store %struct.vnode* %84, %struct.vnode** %9, align 8
  br label %85

85:                                               ; preds = %81, %45
  %86 = load i32, i32* %5, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %95

88:                                               ; preds = %85
  %89 = load %struct.vop_link_args*, %struct.vop_link_args** %3, align 8
  %90 = getelementptr inbounds %struct.vop_link_args, %struct.vop_link_args* %89, i32 0, i32 0
  %91 = load %struct.vnode*, %struct.vnode** %90, align 8
  %92 = load %struct.componentname*, %struct.componentname** %10, align 8
  %93 = load %struct.thread*, %struct.thread** %11, align 8
  %94 = call i32 @unionfs_relookup_for_create(%struct.vnode* %91, %struct.componentname* %92, %struct.thread* %93)
  store i32 %94, i32* %4, align 4
  br label %95

95:                                               ; preds = %88, %85
  %96 = load i32, i32* %4, align 4
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %98, label %103

98:                                               ; preds = %95
  %99 = load %struct.vnode*, %struct.vnode** %8, align 8
  %100 = load %struct.vnode*, %struct.vnode** %9, align 8
  %101 = load %struct.componentname*, %struct.componentname** %10, align 8
  %102 = call i32 @VOP_LINK(%struct.vnode* %99, %struct.vnode* %100, %struct.componentname* %101)
  store i32 %102, i32* %4, align 4
  br label %103

103:                                              ; preds = %98, %95
  %104 = load i32, i32* %4, align 4
  %105 = call i32 (i8*, ...) @UNIONFS_INTERNAL_DEBUG(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %104)
  %106 = load i32, i32* %4, align 4
  store i32 %106, i32* %2, align 4
  br label %107

107:                                              ; preds = %103, %78, %67, %36
  %108 = load i32, i32* %2, align 4
  ret i32 %108
}

declare dso_local i32 @UNIONFS_INTERNAL_DEBUG(i8*, ...) #1

declare dso_local i32 @KASSERT_UNIONFS_VNODE(%struct.vnode*) #1

declare dso_local %struct.unionfs_node* @VTOUNIONFS(%struct.vnode*) #1

declare dso_local i32 @unionfs_copyfile(%struct.unionfs_node*, i32, i32, %struct.thread*) #1

declare dso_local i32 @unionfs_relookup_for_create(%struct.vnode*, %struct.componentname*, %struct.thread*) #1

declare dso_local i32 @VOP_LINK(%struct.vnode*, %struct.vnode*, %struct.componentname*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
