; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_subr.c___mnt_vnode_next_active.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_subr.c___mnt_vnode_next_active.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vnode = type { i32 }
%struct.mount = type { i32 }

@PRI_USER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.vnode* @__mnt_vnode_next_active(%struct.vnode** %0, %struct.mount* %1) #0 {
  %3 = alloca %struct.vnode**, align 8
  %4 = alloca %struct.mount*, align 8
  store %struct.vnode** %0, %struct.vnode*** %3, align 8
  store %struct.mount* %1, %struct.mount** %4, align 8
  %5 = call i64 (...) @should_yield()
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %10

7:                                                ; preds = %2
  %8 = load i32, i32* @PRI_USER, align 4
  %9 = call i32 @kern_yield(i32 %8)
  br label %10

10:                                               ; preds = %7, %2
  %11 = load %struct.mount*, %struct.mount** %4, align 8
  %12 = getelementptr inbounds %struct.mount, %struct.mount* %11, i32 0, i32 0
  %13 = call i32 @mtx_lock(i32* %12)
  %14 = load %struct.vnode**, %struct.vnode*** %3, align 8
  %15 = load %struct.mount*, %struct.mount** %4, align 8
  %16 = call %struct.vnode* @mnt_vnode_next_active(%struct.vnode** %14, %struct.mount* %15)
  ret %struct.vnode* %16
}

declare dso_local i64 @should_yield(...) #1

declare dso_local i32 @kern_yield(i32) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local %struct.vnode* @mnt_vnode_next_active(%struct.vnode**, %struct.mount*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
