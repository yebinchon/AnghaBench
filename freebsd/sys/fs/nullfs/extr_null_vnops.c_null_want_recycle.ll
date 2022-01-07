; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/nullfs/extr_null_vnops.c_null_want_recycle.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/nullfs/extr_null_vnops.c_null_want_recycle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vnode = type { i32, %struct.mount* }
%struct.mount = type { i32 }
%struct.null_node = type { i32 }
%struct.null_mount = type { i32 }

@NULLM_CACHE = common dso_local global i32 0, align 4
@NULLV_DROP = common dso_local global i32 0, align 4
@VV_NOSYNC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vnode*)* @null_want_recycle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @null_want_recycle(%struct.vnode* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vnode*, align 8
  %4 = alloca %struct.vnode*, align 8
  %5 = alloca %struct.null_node*, align 8
  %6 = alloca %struct.mount*, align 8
  %7 = alloca %struct.null_mount*, align 8
  store %struct.vnode* %0, %struct.vnode** %3, align 8
  %8 = load %struct.vnode*, %struct.vnode** %3, align 8
  %9 = call %struct.null_node* @VTONULL(%struct.vnode* %8)
  store %struct.null_node* %9, %struct.null_node** %5, align 8
  %10 = load %struct.vnode*, %struct.vnode** %3, align 8
  %11 = call %struct.vnode* @NULLVPTOLOWERVP(%struct.vnode* %10)
  store %struct.vnode* %11, %struct.vnode** %4, align 8
  %12 = load %struct.vnode*, %struct.vnode** %3, align 8
  %13 = getelementptr inbounds %struct.vnode, %struct.vnode* %12, i32 0, i32 1
  %14 = load %struct.mount*, %struct.mount** %13, align 8
  store %struct.mount* %14, %struct.mount** %6, align 8
  %15 = load %struct.mount*, %struct.mount** %6, align 8
  %16 = call %struct.null_mount* @MOUNTTONULLMOUNT(%struct.mount* %15)
  store %struct.null_mount* %16, %struct.null_mount** %7, align 8
  %17 = load %struct.null_mount*, %struct.null_mount** %7, align 8
  %18 = getelementptr inbounds %struct.null_mount, %struct.null_mount* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @NULLM_CACHE, align 4
  %21 = and i32 %19, %20
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %37, label %23

23:                                               ; preds = %1
  %24 = load %struct.null_node*, %struct.null_node** %5, align 8
  %25 = getelementptr inbounds %struct.null_node, %struct.null_node* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @NULLV_DROP, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %37, label %30

30:                                               ; preds = %23
  %31 = load %struct.vnode*, %struct.vnode** %4, align 8
  %32 = getelementptr inbounds %struct.vnode, %struct.vnode* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* @VV_NOSYNC, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %30, %23, %1
  store i32 1, i32* %2, align 4
  br label %39

38:                                               ; preds = %30
  store i32 0, i32* %2, align 4
  br label %39

39:                                               ; preds = %38, %37
  %40 = load i32, i32* %2, align 4
  ret i32 %40
}

declare dso_local %struct.null_node* @VTONULL(%struct.vnode*) #1

declare dso_local %struct.vnode* @NULLVPTOLOWERVP(%struct.vnode*) #1

declare dso_local %struct.null_mount* @MOUNTTONULLMOUNT(%struct.mount*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
