; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/autofs/extr_autofs_vnops.c_autofs_mkdir.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/autofs/extr_autofs_vnops.c_autofs_mkdir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vop_mkdir_args = type { i32, %struct.TYPE_2__*, %struct.vnode* }
%struct.TYPE_2__ = type { i32, i32 }
%struct.vnode = type { i32, %struct.autofs_node* }
%struct.autofs_node = type { i32 }
%struct.autofs_mount = type { i32 }

@curthread = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@LK_EXCLUSIVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vop_mkdir_args*)* @autofs_mkdir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autofs_mkdir(%struct.vop_mkdir_args* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vop_mkdir_args*, align 8
  %4 = alloca %struct.vnode*, align 8
  %5 = alloca %struct.autofs_node*, align 8
  %6 = alloca %struct.autofs_mount*, align 8
  %7 = alloca %struct.autofs_node*, align 8
  %8 = alloca i32, align 4
  store %struct.vop_mkdir_args* %0, %struct.vop_mkdir_args** %3, align 8
  %9 = load %struct.vop_mkdir_args*, %struct.vop_mkdir_args** %3, align 8
  %10 = getelementptr inbounds %struct.vop_mkdir_args, %struct.vop_mkdir_args* %9, i32 0, i32 2
  %11 = load %struct.vnode*, %struct.vnode** %10, align 8
  store %struct.vnode* %11, %struct.vnode** %4, align 8
  %12 = load %struct.vnode*, %struct.vnode** %4, align 8
  %13 = getelementptr inbounds %struct.vnode, %struct.vnode* %12, i32 0, i32 1
  %14 = load %struct.autofs_node*, %struct.autofs_node** %13, align 8
  store %struct.autofs_node* %14, %struct.autofs_node** %5, align 8
  %15 = load %struct.vnode*, %struct.vnode** %4, align 8
  %16 = getelementptr inbounds %struct.vnode, %struct.vnode* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = call %struct.autofs_mount* @VFSTOAUTOFS(i32 %17)
  store %struct.autofs_mount* %18, %struct.autofs_mount** %6, align 8
  %19 = load i32, i32* @curthread, align 4
  %20 = call i32 @autofs_ignore_thread(i32 %19)
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %1
  %23 = load i32, i32* @EPERM, align 4
  store i32 %23, i32* %2, align 4
  br label %59

24:                                               ; preds = %1
  %25 = load %struct.autofs_mount*, %struct.autofs_mount** %6, align 8
  %26 = call i32 @AUTOFS_XLOCK(%struct.autofs_mount* %25)
  %27 = load %struct.autofs_node*, %struct.autofs_node** %5, align 8
  %28 = load %struct.autofs_mount*, %struct.autofs_mount** %6, align 8
  %29 = load %struct.vop_mkdir_args*, %struct.vop_mkdir_args** %3, align 8
  %30 = getelementptr inbounds %struct.vop_mkdir_args, %struct.vop_mkdir_args* %29, i32 0, i32 1
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.vop_mkdir_args*, %struct.vop_mkdir_args** %3, align 8
  %35 = getelementptr inbounds %struct.vop_mkdir_args, %struct.vop_mkdir_args* %34, i32 0, i32 1
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @autofs_node_new(%struct.autofs_node* %27, %struct.autofs_mount* %28, i32 %33, i32 %38, %struct.autofs_node** %7)
  store i32 %39, i32* %8, align 4
  %40 = load i32, i32* %8, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %24
  %43 = load %struct.autofs_mount*, %struct.autofs_mount** %6, align 8
  %44 = call i32 @AUTOFS_XUNLOCK(%struct.autofs_mount* %43)
  %45 = load i32, i32* %8, align 4
  store i32 %45, i32* %2, align 4
  br label %59

46:                                               ; preds = %24
  %47 = load %struct.autofs_mount*, %struct.autofs_mount** %6, align 8
  %48 = call i32 @AUTOFS_XUNLOCK(%struct.autofs_mount* %47)
  %49 = load %struct.autofs_node*, %struct.autofs_node** %7, align 8
  %50 = load %struct.vnode*, %struct.vnode** %4, align 8
  %51 = getelementptr inbounds %struct.vnode, %struct.vnode* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* @LK_EXCLUSIVE, align 4
  %54 = load %struct.vop_mkdir_args*, %struct.vop_mkdir_args** %3, align 8
  %55 = getelementptr inbounds %struct.vop_mkdir_args, %struct.vop_mkdir_args* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @autofs_node_vn(%struct.autofs_node* %49, i32 %52, i32 %53, i32 %56)
  store i32 %57, i32* %8, align 4
  %58 = load i32, i32* %8, align 4
  store i32 %58, i32* %2, align 4
  br label %59

59:                                               ; preds = %46, %42, %22
  %60 = load i32, i32* %2, align 4
  ret i32 %60
}

declare dso_local %struct.autofs_mount* @VFSTOAUTOFS(i32) #1

declare dso_local i32 @autofs_ignore_thread(i32) #1

declare dso_local i32 @AUTOFS_XLOCK(%struct.autofs_mount*) #1

declare dso_local i32 @autofs_node_new(%struct.autofs_node*, %struct.autofs_mount*, i32, i32, %struct.autofs_node**) #1

declare dso_local i32 @AUTOFS_XUNLOCK(%struct.autofs_mount*) #1

declare dso_local i32 @autofs_node_vn(%struct.autofs_node*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
