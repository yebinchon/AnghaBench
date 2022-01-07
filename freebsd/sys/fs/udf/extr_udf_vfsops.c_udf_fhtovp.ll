; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/udf/extr_udf_vfsops.c_udf_fhtovp.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/udf/extr_udf_vfsops.c_udf_fhtovp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vnode = type { i32 }
%struct.mount = type { i32 }
%struct.fid = type { i32 }
%struct.ifid = type { i32 }
%struct.udf_node = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@LK_EXCLUSIVE = common dso_local global i32 0, align 4
@NULLVP = common dso_local global %struct.vnode* null, align 8
@curthread = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mount*, %struct.fid*, i32, %struct.vnode**)* @udf_fhtovp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @udf_fhtovp(%struct.mount* %0, %struct.fid* %1, i32 %2, %struct.vnode** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.mount*, align 8
  %7 = alloca %struct.fid*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.vnode**, align 8
  %10 = alloca %struct.ifid*, align 8
  %11 = alloca %struct.vnode*, align 8
  %12 = alloca %struct.udf_node*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.mount* %0, %struct.mount** %6, align 8
  store %struct.fid* %1, %struct.fid** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.vnode** %3, %struct.vnode*** %9, align 8
  %15 = load %struct.fid*, %struct.fid** %7, align 8
  %16 = bitcast %struct.fid* %15 to %struct.ifid*
  store %struct.ifid* %16, %struct.ifid** %10, align 8
  %17 = load %struct.mount*, %struct.mount** %6, align 8
  %18 = load %struct.ifid*, %struct.ifid** %10, align 8
  %19 = getelementptr inbounds %struct.ifid, %struct.ifid* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @LK_EXCLUSIVE, align 4
  %22 = call i32 @VFS_VGET(%struct.mount* %17, i32 %20, i32 %21, %struct.vnode** %11)
  store i32 %22, i32* %14, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %4
  %25 = load %struct.vnode*, %struct.vnode** @NULLVP, align 8
  %26 = load %struct.vnode**, %struct.vnode*** %9, align 8
  store %struct.vnode* %25, %struct.vnode** %26, align 8
  %27 = load i32, i32* %14, align 4
  store i32 %27, i32* %5, align 4
  br label %44

28:                                               ; preds = %4
  %29 = load %struct.vnode*, %struct.vnode** %11, align 8
  %30 = call %struct.udf_node* @VTON(%struct.vnode* %29)
  store %struct.udf_node* %30, %struct.udf_node** %12, align 8
  %31 = load %struct.udf_node*, %struct.udf_node** %12, align 8
  %32 = getelementptr inbounds %struct.udf_node, %struct.udf_node* %31, i32 0, i32 0
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @le64toh(i32 %35)
  store i32 %36, i32* %13, align 4
  %37 = load %struct.vnode*, %struct.vnode** %11, align 8
  %38 = load %struct.vnode**, %struct.vnode*** %9, align 8
  store %struct.vnode* %37, %struct.vnode** %38, align 8
  %39 = load %struct.vnode**, %struct.vnode*** %9, align 8
  %40 = load %struct.vnode*, %struct.vnode** %39, align 8
  %41 = load i32, i32* %13, align 4
  %42 = load i32, i32* @curthread, align 4
  %43 = call i32 @vnode_create_vobject(%struct.vnode* %40, i32 %41, i32 %42)
  store i32 0, i32* %5, align 4
  br label %44

44:                                               ; preds = %28, %24
  %45 = load i32, i32* %5, align 4
  ret i32 %45
}

declare dso_local i32 @VFS_VGET(%struct.mount*, i32, i32, %struct.vnode**) #1

declare dso_local %struct.udf_node* @VTON(%struct.vnode*) #1

declare dso_local i32 @le64toh(i32) #1

declare dso_local i32 @vnode_create_vobject(%struct.vnode*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
