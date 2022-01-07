; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/nullfs/extr_null_vnops.c_null_getwritemount.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/nullfs/extr_null_vnops.c_null_getwritemount.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vop_getwritemount_args = type { i32**, %struct.vnode* }
%struct.vnode = type { i32 }
%struct.null_node = type { %struct.vnode* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vop_getwritemount_args*)* @null_getwritemount to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @null_getwritemount(%struct.vop_getwritemount_args* %0) #0 {
  %2 = alloca %struct.vop_getwritemount_args*, align 8
  %3 = alloca %struct.null_node*, align 8
  %4 = alloca %struct.vnode*, align 8
  %5 = alloca %struct.vnode*, align 8
  store %struct.vop_getwritemount_args* %0, %struct.vop_getwritemount_args** %2, align 8
  %6 = load %struct.vop_getwritemount_args*, %struct.vop_getwritemount_args** %2, align 8
  %7 = getelementptr inbounds %struct.vop_getwritemount_args, %struct.vop_getwritemount_args* %6, i32 0, i32 1
  %8 = load %struct.vnode*, %struct.vnode** %7, align 8
  store %struct.vnode* %8, %struct.vnode** %5, align 8
  %9 = load %struct.vnode*, %struct.vnode** %5, align 8
  %10 = call i32 @VI_LOCK(%struct.vnode* %9)
  %11 = load %struct.vnode*, %struct.vnode** %5, align 8
  %12 = call %struct.null_node* @VTONULL(%struct.vnode* %11)
  store %struct.null_node* %12, %struct.null_node** %3, align 8
  %13 = load %struct.null_node*, %struct.null_node** %3, align 8
  %14 = icmp ne %struct.null_node* %13, null
  br i1 %14, label %15, label %32

15:                                               ; preds = %1
  %16 = load %struct.null_node*, %struct.null_node** %3, align 8
  %17 = getelementptr inbounds %struct.null_node, %struct.null_node* %16, i32 0, i32 0
  %18 = load %struct.vnode*, %struct.vnode** %17, align 8
  store %struct.vnode* %18, %struct.vnode** %4, align 8
  %19 = icmp ne %struct.vnode* %18, null
  br i1 %19, label %20, label %32

20:                                               ; preds = %15
  %21 = load %struct.vnode*, %struct.vnode** %4, align 8
  %22 = call i32 @vholdnz(%struct.vnode* %21)
  %23 = load %struct.vnode*, %struct.vnode** %5, align 8
  %24 = call i32 @VI_UNLOCK(%struct.vnode* %23)
  %25 = load %struct.vnode*, %struct.vnode** %4, align 8
  %26 = load %struct.vop_getwritemount_args*, %struct.vop_getwritemount_args** %2, align 8
  %27 = getelementptr inbounds %struct.vop_getwritemount_args, %struct.vop_getwritemount_args* %26, i32 0, i32 0
  %28 = load i32**, i32*** %27, align 8
  %29 = call i32 @VOP_GETWRITEMOUNT(%struct.vnode* %25, i32** %28)
  %30 = load %struct.vnode*, %struct.vnode** %4, align 8
  %31 = call i32 @vdrop(%struct.vnode* %30)
  br label %38

32:                                               ; preds = %15, %1
  %33 = load %struct.vnode*, %struct.vnode** %5, align 8
  %34 = call i32 @VI_UNLOCK(%struct.vnode* %33)
  %35 = load %struct.vop_getwritemount_args*, %struct.vop_getwritemount_args** %2, align 8
  %36 = getelementptr inbounds %struct.vop_getwritemount_args, %struct.vop_getwritemount_args* %35, i32 0, i32 0
  %37 = load i32**, i32*** %36, align 8
  store i32* null, i32** %37, align 8
  br label %38

38:                                               ; preds = %32, %20
  ret i32 0
}

declare dso_local i32 @VI_LOCK(%struct.vnode*) #1

declare dso_local %struct.null_node* @VTONULL(%struct.vnode*) #1

declare dso_local i32 @vholdnz(%struct.vnode*) #1

declare dso_local i32 @VI_UNLOCK(%struct.vnode*) #1

declare dso_local i32 @VOP_GETWRITEMOUNT(%struct.vnode*, i32**) #1

declare dso_local i32 @vdrop(%struct.vnode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
