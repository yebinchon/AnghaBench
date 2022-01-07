; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_subr.c___mnt_vnode_first_active.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_subr.c___mnt_vnode_first_active.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vnode = type { %struct.mount*, i32 }
%struct.mount = type { i32, i32 }

@M_VNODE_MARKER = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@VMARKER = common dso_local global i32 0, align 4
@v_actfreelist = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.vnode* @__mnt_vnode_first_active(%struct.vnode** %0, %struct.mount* %1) #0 {
  %3 = alloca %struct.vnode*, align 8
  %4 = alloca %struct.vnode**, align 8
  %5 = alloca %struct.mount*, align 8
  %6 = alloca %struct.vnode*, align 8
  store %struct.vnode** %0, %struct.vnode*** %4, align 8
  store %struct.mount* %1, %struct.mount** %5, align 8
  %7 = load i32, i32* @M_VNODE_MARKER, align 4
  %8 = load i32, i32* @M_WAITOK, align 4
  %9 = load i32, i32* @M_ZERO, align 4
  %10 = or i32 %8, %9
  %11 = call %struct.vnode* @malloc(i32 16, i32 %7, i32 %10)
  %12 = load %struct.vnode**, %struct.vnode*** %4, align 8
  store %struct.vnode* %11, %struct.vnode** %12, align 8
  %13 = load %struct.mount*, %struct.mount** %5, align 8
  %14 = call i32 @MNT_ILOCK(%struct.mount* %13)
  %15 = load %struct.mount*, %struct.mount** %5, align 8
  %16 = call i32 @MNT_REF(%struct.mount* %15)
  %17 = load %struct.mount*, %struct.mount** %5, align 8
  %18 = call i32 @MNT_IUNLOCK(%struct.mount* %17)
  %19 = load i32, i32* @VMARKER, align 4
  %20 = load %struct.vnode**, %struct.vnode*** %4, align 8
  %21 = load %struct.vnode*, %struct.vnode** %20, align 8
  %22 = getelementptr inbounds %struct.vnode, %struct.vnode* %21, i32 0, i32 1
  store i32 %19, i32* %22, align 8
  %23 = load %struct.mount*, %struct.mount** %5, align 8
  %24 = load %struct.vnode**, %struct.vnode*** %4, align 8
  %25 = load %struct.vnode*, %struct.vnode** %24, align 8
  %26 = getelementptr inbounds %struct.vnode, %struct.vnode* %25, i32 0, i32 0
  store %struct.mount* %23, %struct.mount** %26, align 8
  %27 = load %struct.mount*, %struct.mount** %5, align 8
  %28 = getelementptr inbounds %struct.mount, %struct.mount* %27, i32 0, i32 0
  %29 = call i32 @mtx_lock(i32* %28)
  %30 = load %struct.mount*, %struct.mount** %5, align 8
  %31 = getelementptr inbounds %struct.mount, %struct.mount* %30, i32 0, i32 1
  %32 = call %struct.vnode* @TAILQ_FIRST(i32* %31)
  store %struct.vnode* %32, %struct.vnode** %6, align 8
  %33 = load %struct.vnode*, %struct.vnode** %6, align 8
  %34 = icmp eq %struct.vnode* %33, null
  br i1 %34, label %35, label %42

35:                                               ; preds = %2
  %36 = load %struct.mount*, %struct.mount** %5, align 8
  %37 = getelementptr inbounds %struct.mount, %struct.mount* %36, i32 0, i32 0
  %38 = call i32 @mtx_unlock(i32* %37)
  %39 = load %struct.vnode**, %struct.vnode*** %4, align 8
  %40 = load %struct.mount*, %struct.mount** %5, align 8
  %41 = call i32 @mnt_vnode_markerfree_active(%struct.vnode** %39, %struct.mount* %40)
  store %struct.vnode* null, %struct.vnode** %3, align 8
  br label %51

42:                                               ; preds = %2
  %43 = load %struct.vnode*, %struct.vnode** %6, align 8
  %44 = load %struct.vnode**, %struct.vnode*** %4, align 8
  %45 = load %struct.vnode*, %struct.vnode** %44, align 8
  %46 = load i32, i32* @v_actfreelist, align 4
  %47 = call i32 @TAILQ_INSERT_BEFORE(%struct.vnode* %43, %struct.vnode* %45, i32 %46)
  %48 = load %struct.vnode**, %struct.vnode*** %4, align 8
  %49 = load %struct.mount*, %struct.mount** %5, align 8
  %50 = call %struct.vnode* @mnt_vnode_next_active(%struct.vnode** %48, %struct.mount* %49)
  store %struct.vnode* %50, %struct.vnode** %3, align 8
  br label %51

51:                                               ; preds = %42, %35
  %52 = load %struct.vnode*, %struct.vnode** %3, align 8
  ret %struct.vnode* %52
}

declare dso_local %struct.vnode* @malloc(i32, i32, i32) #1

declare dso_local i32 @MNT_ILOCK(%struct.mount*) #1

declare dso_local i32 @MNT_REF(%struct.mount*) #1

declare dso_local i32 @MNT_IUNLOCK(%struct.mount*) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local %struct.vnode* @TAILQ_FIRST(i32*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @mnt_vnode_markerfree_active(%struct.vnode**, %struct.mount*) #1

declare dso_local i32 @TAILQ_INSERT_BEFORE(%struct.vnode*, %struct.vnode*, i32) #1

declare dso_local %struct.vnode* @mnt_vnode_next_active(%struct.vnode**, %struct.mount*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
