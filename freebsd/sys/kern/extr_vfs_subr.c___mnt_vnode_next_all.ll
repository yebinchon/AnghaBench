; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_subr.c___mnt_vnode_next_all.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_subr.c___mnt_vnode_next_all.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vnode = type { i64, i32, %struct.mount* }
%struct.mount = type { i32 }

@PRI_USER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"marker vnode mount list mismatch\00", align 1
@v_nmntvnodes = common dso_local global i32 0, align 4
@VMARKER = common dso_local global i64 0, align 8
@VI_DOOMED = common dso_local global i32 0, align 4
@MA_NOTOWNED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.vnode* @__mnt_vnode_next_all(%struct.vnode** %0, %struct.mount* %1) #0 {
  %3 = alloca %struct.vnode*, align 8
  %4 = alloca %struct.vnode**, align 8
  %5 = alloca %struct.mount*, align 8
  %6 = alloca %struct.vnode*, align 8
  store %struct.vnode** %0, %struct.vnode*** %4, align 8
  store %struct.mount* %1, %struct.mount** %5, align 8
  %7 = call i64 (...) @should_yield()
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %12

9:                                                ; preds = %2
  %10 = load i32, i32* @PRI_USER, align 4
  %11 = call i32 @kern_yield(i32 %10)
  br label %12

12:                                               ; preds = %9, %2
  %13 = load %struct.mount*, %struct.mount** %5, align 8
  %14 = call i32 @MNT_ILOCK(%struct.mount* %13)
  %15 = load %struct.vnode**, %struct.vnode*** %4, align 8
  %16 = load %struct.vnode*, %struct.vnode** %15, align 8
  %17 = getelementptr inbounds %struct.vnode, %struct.vnode* %16, i32 0, i32 2
  %18 = load %struct.mount*, %struct.mount** %17, align 8
  %19 = load %struct.mount*, %struct.mount** %5, align 8
  %20 = icmp eq %struct.mount* %18, %19
  %21 = zext i1 %20 to i32
  %22 = call i32 @KASSERT(i32 %21, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %23 = load %struct.vnode**, %struct.vnode*** %4, align 8
  %24 = load %struct.vnode*, %struct.vnode** %23, align 8
  %25 = load i32, i32* @v_nmntvnodes, align 4
  %26 = call %struct.vnode* @TAILQ_NEXT(%struct.vnode* %24, i32 %25)
  store %struct.vnode* %26, %struct.vnode** %6, align 8
  br label %27

27:                                               ; preds = %57, %12
  %28 = load %struct.vnode*, %struct.vnode** %6, align 8
  %29 = icmp ne %struct.vnode* %28, null
  br i1 %29, label %30, label %61

30:                                               ; preds = %27
  %31 = load %struct.vnode*, %struct.vnode** %6, align 8
  %32 = getelementptr inbounds %struct.vnode, %struct.vnode* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @VMARKER, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %43, label %36

36:                                               ; preds = %30
  %37 = load %struct.vnode*, %struct.vnode** %6, align 8
  %38 = getelementptr inbounds %struct.vnode, %struct.vnode* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* @VI_DOOMED, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %36, %30
  br label %57

44:                                               ; preds = %36
  %45 = load %struct.vnode*, %struct.vnode** %6, align 8
  %46 = call i32 @VI_LOCK(%struct.vnode* %45)
  %47 = load %struct.vnode*, %struct.vnode** %6, align 8
  %48 = getelementptr inbounds %struct.vnode, %struct.vnode* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* @VI_DOOMED, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %44
  %54 = load %struct.vnode*, %struct.vnode** %6, align 8
  %55 = call i32 @VI_UNLOCK(%struct.vnode* %54)
  br label %57

56:                                               ; preds = %44
  br label %61

57:                                               ; preds = %53, %43
  %58 = load %struct.vnode*, %struct.vnode** %6, align 8
  %59 = load i32, i32* @v_nmntvnodes, align 4
  %60 = call %struct.vnode* @TAILQ_NEXT(%struct.vnode* %58, i32 %59)
  store %struct.vnode* %60, %struct.vnode** %6, align 8
  br label %27

61:                                               ; preds = %56, %27
  %62 = load %struct.vnode*, %struct.vnode** %6, align 8
  %63 = icmp eq %struct.vnode* %62, null
  br i1 %63, label %64, label %72

64:                                               ; preds = %61
  %65 = load %struct.vnode**, %struct.vnode*** %4, align 8
  %66 = load %struct.mount*, %struct.mount** %5, align 8
  %67 = call i32 @__mnt_vnode_markerfree_all(%struct.vnode** %65, %struct.mount* %66)
  %68 = load %struct.mount*, %struct.mount** %5, align 8
  %69 = call i32 @MNT_MTX(%struct.mount* %68)
  %70 = load i32, i32* @MA_NOTOWNED, align 4
  %71 = call i32 @mtx_assert(i32 %69, i32 %70)
  store %struct.vnode* null, %struct.vnode** %3, align 8
  br label %89

72:                                               ; preds = %61
  %73 = load %struct.mount*, %struct.mount** %5, align 8
  %74 = getelementptr inbounds %struct.mount, %struct.mount* %73, i32 0, i32 0
  %75 = load %struct.vnode**, %struct.vnode*** %4, align 8
  %76 = load %struct.vnode*, %struct.vnode** %75, align 8
  %77 = load i32, i32* @v_nmntvnodes, align 4
  %78 = call i32 @TAILQ_REMOVE(i32* %74, %struct.vnode* %76, i32 %77)
  %79 = load %struct.mount*, %struct.mount** %5, align 8
  %80 = getelementptr inbounds %struct.mount, %struct.mount* %79, i32 0, i32 0
  %81 = load %struct.vnode*, %struct.vnode** %6, align 8
  %82 = load %struct.vnode**, %struct.vnode*** %4, align 8
  %83 = load %struct.vnode*, %struct.vnode** %82, align 8
  %84 = load i32, i32* @v_nmntvnodes, align 4
  %85 = call i32 @TAILQ_INSERT_AFTER(i32* %80, %struct.vnode* %81, %struct.vnode* %83, i32 %84)
  %86 = load %struct.mount*, %struct.mount** %5, align 8
  %87 = call i32 @MNT_IUNLOCK(%struct.mount* %86)
  %88 = load %struct.vnode*, %struct.vnode** %6, align 8
  store %struct.vnode* %88, %struct.vnode** %3, align 8
  br label %89

89:                                               ; preds = %72, %64
  %90 = load %struct.vnode*, %struct.vnode** %3, align 8
  ret %struct.vnode* %90
}

declare dso_local i64 @should_yield(...) #1

declare dso_local i32 @kern_yield(i32) #1

declare dso_local i32 @MNT_ILOCK(%struct.mount*) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local %struct.vnode* @TAILQ_NEXT(%struct.vnode*, i32) #1

declare dso_local i32 @VI_LOCK(%struct.vnode*) #1

declare dso_local i32 @VI_UNLOCK(%struct.vnode*) #1

declare dso_local i32 @__mnt_vnode_markerfree_all(%struct.vnode**, %struct.mount*) #1

declare dso_local i32 @mtx_assert(i32, i32) #1

declare dso_local i32 @MNT_MTX(%struct.mount*) #1

declare dso_local i32 @TAILQ_REMOVE(i32*, %struct.vnode*, i32) #1

declare dso_local i32 @TAILQ_INSERT_AFTER(i32*, %struct.vnode*, %struct.vnode*, i32) #1

declare dso_local i32 @MNT_IUNLOCK(%struct.mount*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
