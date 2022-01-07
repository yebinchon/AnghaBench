; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_subr.c_vn_need_pageq_flush.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_subr.c_vn_need_pageq_flush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vnode = type { i32, %struct.vm_object* }
%struct.vm_object = type { i32 }

@VV_NOSYNC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vn_need_pageq_flush(%struct.vnode* %0) #0 {
  %2 = alloca %struct.vnode*, align 8
  %3 = alloca %struct.vm_object*, align 8
  %4 = alloca i32, align 4
  store %struct.vnode* %0, %struct.vnode** %2, align 8
  %5 = load %struct.vnode*, %struct.vnode** %2, align 8
  %6 = call i32 @VI_MTX(%struct.vnode* %5)
  %7 = call i32 @mtx_owned(i32 %6)
  %8 = call i32 @MPASS(i32 %7)
  store i32 0, i32* %4, align 4
  %9 = load %struct.vnode*, %struct.vnode** %2, align 8
  %10 = getelementptr inbounds %struct.vnode, %struct.vnode* %9, i32 0, i32 1
  %11 = load %struct.vm_object*, %struct.vm_object** %10, align 8
  store %struct.vm_object* %11, %struct.vm_object** %3, align 8
  %12 = icmp ne %struct.vm_object* %11, null
  br i1 %12, label %13, label %25

13:                                               ; preds = %1
  %14 = load %struct.vnode*, %struct.vnode** %2, align 8
  %15 = getelementptr inbounds %struct.vnode, %struct.vnode* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @VV_NOSYNC, align 4
  %18 = and i32 %16, %17
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %13
  %21 = load %struct.vm_object*, %struct.vm_object** %3, align 8
  %22 = call i64 @vm_object_mightbedirty(%struct.vm_object* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %20
  store i32 1, i32* %4, align 4
  br label %25

25:                                               ; preds = %24, %20, %13, %1
  %26 = load i32, i32* %4, align 4
  ret i32 %26
}

declare dso_local i32 @MPASS(i32) #1

declare dso_local i32 @mtx_owned(i32) #1

declare dso_local i32 @VI_MTX(%struct.vnode*) #1

declare dso_local i64 @vm_object_mightbedirty(%struct.vm_object*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
