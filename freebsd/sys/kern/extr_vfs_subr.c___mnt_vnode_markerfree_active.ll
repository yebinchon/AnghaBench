; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_subr.c___mnt_vnode_markerfree_active.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_subr.c___mnt_vnode_markerfree_active.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vnode = type { i32 }
%struct.mount = type { i32, i32 }

@v_actfreelist = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__mnt_vnode_markerfree_active(%struct.vnode** %0, %struct.mount* %1) #0 {
  %3 = alloca %struct.vnode**, align 8
  %4 = alloca %struct.mount*, align 8
  store %struct.vnode** %0, %struct.vnode*** %3, align 8
  store %struct.mount* %1, %struct.mount** %4, align 8
  %5 = load %struct.vnode**, %struct.vnode*** %3, align 8
  %6 = load %struct.vnode*, %struct.vnode** %5, align 8
  %7 = icmp eq %struct.vnode* %6, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %2
  br label %25

9:                                                ; preds = %2
  %10 = load %struct.mount*, %struct.mount** %4, align 8
  %11 = getelementptr inbounds %struct.mount, %struct.mount* %10, i32 0, i32 0
  %12 = call i32 @mtx_lock(i32* %11)
  %13 = load %struct.mount*, %struct.mount** %4, align 8
  %14 = getelementptr inbounds %struct.mount, %struct.mount* %13, i32 0, i32 1
  %15 = load %struct.vnode**, %struct.vnode*** %3, align 8
  %16 = load %struct.vnode*, %struct.vnode** %15, align 8
  %17 = load i32, i32* @v_actfreelist, align 4
  %18 = call i32 @TAILQ_REMOVE(i32* %14, %struct.vnode* %16, i32 %17)
  %19 = load %struct.mount*, %struct.mount** %4, align 8
  %20 = getelementptr inbounds %struct.mount, %struct.mount* %19, i32 0, i32 0
  %21 = call i32 @mtx_unlock(i32* %20)
  %22 = load %struct.vnode**, %struct.vnode*** %3, align 8
  %23 = load %struct.mount*, %struct.mount** %4, align 8
  %24 = call i32 @mnt_vnode_markerfree_active(%struct.vnode** %22, %struct.mount* %23)
  br label %25

25:                                               ; preds = %9, %8
  ret void
}

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @TAILQ_REMOVE(i32*, %struct.vnode*, i32) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @mnt_vnode_markerfree_active(%struct.vnode**, %struct.mount*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
