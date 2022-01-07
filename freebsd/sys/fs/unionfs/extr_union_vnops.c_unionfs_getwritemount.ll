; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/unionfs/extr_union_vnops.c_unionfs_getwritemount.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/unionfs/extr_union_vnops.c_unionfs_getwritemount.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vnode = type { i64, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.vop_getwritemount_args = type { i32, %struct.vnode* }
%struct.TYPE_4__ = type { %struct.vnode* }

@.str = private unnamed_addr constant [30 x i8] c"unionfs_getwritemount: enter\0A\00", align 1
@NULLVP = common dso_local global %struct.vnode* null, align 8
@MNT_RDONLY = common dso_local global i32 0, align 4
@EACCES = common dso_local global i32 0, align 4
@VREG = common dso_local global i64 0, align 8
@VI_FREE = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"unionfs_getwritemount: leave (%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vop_getwritemount_args*)* @unionfs_getwritemount to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @unionfs_getwritemount(%struct.vop_getwritemount_args* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vop_getwritemount_args*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.vnode*, align 8
  %6 = alloca %struct.vnode*, align 8
  store %struct.vop_getwritemount_args* %0, %struct.vop_getwritemount_args** %3, align 8
  %7 = call i32 (i8*, ...) @UNIONFS_INTERNAL_DEBUG(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  %8 = load %struct.vop_getwritemount_args*, %struct.vop_getwritemount_args** %3, align 8
  %9 = getelementptr inbounds %struct.vop_getwritemount_args, %struct.vop_getwritemount_args* %8, i32 0, i32 1
  %10 = load %struct.vnode*, %struct.vnode** %9, align 8
  store %struct.vnode* %10, %struct.vnode** %6, align 8
  %11 = load %struct.vnode*, %struct.vnode** %6, align 8
  %12 = load %struct.vnode*, %struct.vnode** @NULLVP, align 8
  %13 = icmp eq %struct.vnode* %11, %12
  br i1 %13, label %23, label %14

14:                                               ; preds = %1
  %15 = load %struct.vnode*, %struct.vnode** %6, align 8
  %16 = getelementptr inbounds %struct.vnode, %struct.vnode* %15, i32 0, i32 2
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @MNT_RDONLY, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %14, %1
  %24 = load i32, i32* @EACCES, align 4
  store i32 %24, i32* %2, align 4
  br label %75

25:                                               ; preds = %14
  %26 = load %struct.vnode*, %struct.vnode** %6, align 8
  %27 = call i32 @KASSERT_UNIONFS_VNODE(%struct.vnode* %26)
  %28 = load %struct.vnode*, %struct.vnode** %6, align 8
  %29 = call %struct.vnode* @UNIONFSVPTOUPPERVP(%struct.vnode* %28)
  store %struct.vnode* %29, %struct.vnode** %5, align 8
  %30 = load %struct.vnode*, %struct.vnode** %5, align 8
  %31 = load %struct.vnode*, %struct.vnode** @NULLVP, align 8
  %32 = icmp eq %struct.vnode* %30, %31
  br i1 %32, label %33, label %45

33:                                               ; preds = %25
  %34 = load i64, i64* @VREG, align 8
  %35 = load %struct.vnode*, %struct.vnode** %6, align 8
  %36 = getelementptr inbounds %struct.vnode, %struct.vnode* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp eq i64 %34, %37
  br i1 %38, label %39, label %45

39:                                               ; preds = %33
  %40 = load %struct.vnode*, %struct.vnode** %6, align 8
  %41 = call %struct.TYPE_4__* @VTOUNIONFS(%struct.vnode* %40)
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = load %struct.vnode*, %struct.vnode** %42, align 8
  %44 = call %struct.vnode* @UNIONFSVPTOUPPERVP(%struct.vnode* %43)
  store %struct.vnode* %44, %struct.vnode** %5, align 8
  br label %45

45:                                               ; preds = %39, %33, %25
  %46 = load %struct.vnode*, %struct.vnode** %5, align 8
  %47 = load %struct.vnode*, %struct.vnode** @NULLVP, align 8
  %48 = icmp ne %struct.vnode* %46, %47
  br i1 %48, label %49, label %55

49:                                               ; preds = %45
  %50 = load %struct.vnode*, %struct.vnode** %5, align 8
  %51 = load %struct.vop_getwritemount_args*, %struct.vop_getwritemount_args** %3, align 8
  %52 = getelementptr inbounds %struct.vop_getwritemount_args, %struct.vop_getwritemount_args* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @VOP_GETWRITEMOUNT(%struct.vnode* %50, i32 %53)
  store i32 %54, i32* %4, align 4
  br label %71

55:                                               ; preds = %45
  %56 = load %struct.vnode*, %struct.vnode** %6, align 8
  %57 = call i32 @VI_LOCK(%struct.vnode* %56)
  %58 = load %struct.vnode*, %struct.vnode** %6, align 8
  %59 = getelementptr inbounds %struct.vnode, %struct.vnode* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  %61 = load i32, i32* @VI_FREE, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %55
  %65 = load i32, i32* @EOPNOTSUPP, align 4
  store i32 %65, i32* %4, align 4
  br label %68

66:                                               ; preds = %55
  %67 = load i32, i32* @EACCES, align 4
  store i32 %67, i32* %4, align 4
  br label %68

68:                                               ; preds = %66, %64
  %69 = load %struct.vnode*, %struct.vnode** %6, align 8
  %70 = call i32 @VI_UNLOCK(%struct.vnode* %69)
  br label %71

71:                                               ; preds = %68, %49
  %72 = load i32, i32* %4, align 4
  %73 = call i32 (i8*, ...) @UNIONFS_INTERNAL_DEBUG(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %72)
  %74 = load i32, i32* %4, align 4
  store i32 %74, i32* %2, align 4
  br label %75

75:                                               ; preds = %71, %23
  %76 = load i32, i32* %2, align 4
  ret i32 %76
}

declare dso_local i32 @UNIONFS_INTERNAL_DEBUG(i8*, ...) #1

declare dso_local i32 @KASSERT_UNIONFS_VNODE(%struct.vnode*) #1

declare dso_local %struct.vnode* @UNIONFSVPTOUPPERVP(%struct.vnode*) #1

declare dso_local %struct.TYPE_4__* @VTOUNIONFS(%struct.vnode*) #1

declare dso_local i32 @VOP_GETWRITEMOUNT(%struct.vnode*, i32) #1

declare dso_local i32 @VI_LOCK(%struct.vnode*) #1

declare dso_local i32 @VI_UNLOCK(%struct.vnode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
