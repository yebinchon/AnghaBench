; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/fuse/extr_fuse_vnops.c_fuse_vnop_remove.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/fuse/extr_fuse_vnops.c_fuse_vnop_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vop_remove_args = type { %struct.componentname*, %struct.vnode*, %struct.vnode* }
%struct.componentname = type { i32 }
%struct.vnode = type { i32 }

@ENXIO = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@FUSE_UNLINK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vop_remove_args*)* @fuse_vnop_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fuse_vnop_remove(%struct.vop_remove_args* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vop_remove_args*, align 8
  %4 = alloca %struct.vnode*, align 8
  %5 = alloca %struct.vnode*, align 8
  %6 = alloca %struct.componentname*, align 8
  %7 = alloca i32, align 4
  store %struct.vop_remove_args* %0, %struct.vop_remove_args** %3, align 8
  %8 = load %struct.vop_remove_args*, %struct.vop_remove_args** %3, align 8
  %9 = getelementptr inbounds %struct.vop_remove_args, %struct.vop_remove_args* %8, i32 0, i32 2
  %10 = load %struct.vnode*, %struct.vnode** %9, align 8
  store %struct.vnode* %10, %struct.vnode** %4, align 8
  %11 = load %struct.vop_remove_args*, %struct.vop_remove_args** %3, align 8
  %12 = getelementptr inbounds %struct.vop_remove_args, %struct.vop_remove_args* %11, i32 0, i32 1
  %13 = load %struct.vnode*, %struct.vnode** %12, align 8
  store %struct.vnode* %13, %struct.vnode** %5, align 8
  %14 = load %struct.vop_remove_args*, %struct.vop_remove_args** %3, align 8
  %15 = getelementptr inbounds %struct.vop_remove_args, %struct.vop_remove_args* %14, i32 0, i32 0
  %16 = load %struct.componentname*, %struct.componentname** %15, align 8
  store %struct.componentname* %16, %struct.componentname** %6, align 8
  %17 = load %struct.vnode*, %struct.vnode** %5, align 8
  %18 = call i64 @fuse_isdeadfs(%struct.vnode* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %1
  %21 = load i32, i32* @ENXIO, align 4
  store i32 %21, i32* %2, align 4
  br label %35

22:                                               ; preds = %1
  %23 = load %struct.vnode*, %struct.vnode** %5, align 8
  %24 = call i64 @vnode_isdir(%struct.vnode* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %22
  %27 = load i32, i32* @EPERM, align 4
  store i32 %27, i32* %2, align 4
  br label %35

28:                                               ; preds = %22
  %29 = load %struct.vnode*, %struct.vnode** %4, align 8
  %30 = load %struct.vnode*, %struct.vnode** %5, align 8
  %31 = load %struct.componentname*, %struct.componentname** %6, align 8
  %32 = load i32, i32* @FUSE_UNLINK, align 4
  %33 = call i32 @fuse_internal_remove(%struct.vnode* %29, %struct.vnode* %30, %struct.componentname* %31, i32 %32)
  store i32 %33, i32* %7, align 4
  %34 = load i32, i32* %7, align 4
  store i32 %34, i32* %2, align 4
  br label %35

35:                                               ; preds = %28, %26, %20
  %36 = load i32, i32* %2, align 4
  ret i32 %36
}

declare dso_local i64 @fuse_isdeadfs(%struct.vnode*) #1

declare dso_local i64 @vnode_isdir(%struct.vnode*) #1

declare dso_local i32 @fuse_internal_remove(%struct.vnode*, %struct.vnode*, %struct.componentname*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
