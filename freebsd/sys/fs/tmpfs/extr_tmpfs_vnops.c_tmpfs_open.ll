; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/tmpfs/extr_tmpfs_vnops.c_tmpfs_open.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/tmpfs/extr_tmpfs_vnops.c_tmpfs_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vop_open_args = type { i32, i32, %struct.vnode* }
%struct.vnode = type { i64 }
%struct.tmpfs_node = type { i32, i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@ENOENT = common dso_local global i32 0, align 4
@APPEND = common dso_local global i32 0, align 4
@FWRITE = common dso_local global i32 0, align 4
@O_APPEND = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@VREG = common dso_local global i64 0, align 8
@OBJ_DEAD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"dead object\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vop_open_args*)* @tmpfs_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tmpfs_open(%struct.vop_open_args* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vop_open_args*, align 8
  %4 = alloca %struct.vnode*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.tmpfs_node*, align 8
  store %struct.vop_open_args* %0, %struct.vop_open_args** %3, align 8
  %8 = load %struct.vop_open_args*, %struct.vop_open_args** %3, align 8
  %9 = getelementptr inbounds %struct.vop_open_args, %struct.vop_open_args* %8, i32 0, i32 2
  %10 = load %struct.vnode*, %struct.vnode** %9, align 8
  store %struct.vnode* %10, %struct.vnode** %4, align 8
  %11 = load %struct.vop_open_args*, %struct.vop_open_args** %3, align 8
  %12 = getelementptr inbounds %struct.vop_open_args, %struct.vop_open_args* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  store i32 %13, i32* %5, align 4
  %14 = load %struct.vnode*, %struct.vnode** %4, align 8
  %15 = call i32 @VOP_ISLOCKED(%struct.vnode* %14)
  %16 = call i32 @MPASS(i32 %15)
  %17 = load %struct.vnode*, %struct.vnode** %4, align 8
  %18 = call %struct.tmpfs_node* @VP_TO_TMPFS_NODE(%struct.vnode* %17)
  store %struct.tmpfs_node* %18, %struct.tmpfs_node** %7, align 8
  %19 = load %struct.tmpfs_node*, %struct.tmpfs_node** %7, align 8
  %20 = getelementptr inbounds %struct.tmpfs_node, %struct.tmpfs_node* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp slt i32 %21, 1
  br i1 %22, label %23, label %25

23:                                               ; preds = %1
  %24 = load i32, i32* @ENOENT, align 4
  store i32 %24, i32* %2, align 4
  br label %75

25:                                               ; preds = %1
  %26 = load %struct.tmpfs_node*, %struct.tmpfs_node** %7, align 8
  %27 = getelementptr inbounds %struct.tmpfs_node, %struct.tmpfs_node* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @APPEND, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %42

32:                                               ; preds = %25
  %33 = load i32, i32* %5, align 4
  %34 = load i32, i32* @FWRITE, align 4
  %35 = load i32, i32* @O_APPEND, align 4
  %36 = or i32 %34, %35
  %37 = and i32 %33, %36
  %38 = load i32, i32* @FWRITE, align 4
  %39 = icmp eq i32 %37, %38
  br i1 %39, label %40, label %42

40:                                               ; preds = %32
  %41 = load i32, i32* @EPERM, align 4
  store i32 %41, i32* %6, align 4
  br label %70

42:                                               ; preds = %32, %25
  store i32 0, i32* %6, align 4
  %43 = load %struct.vnode*, %struct.vnode** %4, align 8
  %44 = getelementptr inbounds %struct.vnode, %struct.vnode* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @VREG, align 8
  %47 = icmp ne i64 %45, %46
  br i1 %47, label %58, label %48

48:                                               ; preds = %42
  %49 = load %struct.tmpfs_node*, %struct.tmpfs_node** %7, align 8
  %50 = getelementptr inbounds %struct.tmpfs_node, %struct.tmpfs_node* %49, i32 0, i32 3
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @OBJ_DEAD, align 4
  %56 = and i32 %54, %55
  %57 = icmp eq i32 %56, 0
  br label %58

58:                                               ; preds = %48, %42
  %59 = phi i1 [ true, %42 ], [ %57, %48 ]
  %60 = zext i1 %59 to i32
  %61 = call i32 @KASSERT(i32 %60, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %62 = load %struct.vnode*, %struct.vnode** %4, align 8
  %63 = load %struct.tmpfs_node*, %struct.tmpfs_node** %7, align 8
  %64 = getelementptr inbounds %struct.tmpfs_node, %struct.tmpfs_node* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 8
  %66 = load %struct.vop_open_args*, %struct.vop_open_args** %3, align 8
  %67 = getelementptr inbounds %struct.vop_open_args, %struct.vop_open_args* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @vnode_create_vobject(%struct.vnode* %62, i32 %65, i32 %68)
  br label %70

70:                                               ; preds = %58, %40
  %71 = load %struct.vnode*, %struct.vnode** %4, align 8
  %72 = call i32 @VOP_ISLOCKED(%struct.vnode* %71)
  %73 = call i32 @MPASS(i32 %72)
  %74 = load i32, i32* %6, align 4
  store i32 %74, i32* %2, align 4
  br label %75

75:                                               ; preds = %70, %23
  %76 = load i32, i32* %2, align 4
  ret i32 %76
}

declare dso_local i32 @MPASS(i32) #1

declare dso_local i32 @VOP_ISLOCKED(%struct.vnode*) #1

declare dso_local %struct.tmpfs_node* @VP_TO_TMPFS_NODE(%struct.vnode*) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @vnode_create_vobject(%struct.vnode*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
