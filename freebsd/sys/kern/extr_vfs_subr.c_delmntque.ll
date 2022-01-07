; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_subr.c_delmntque.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_subr.c_delmntque.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vnode = type { i32, %struct.mount* }
%struct.mount = type { i64, i64, i32, i32, i32 }

@.str = private unnamed_addr constant [47 x i8] c"Active vnode list size %d > Vnode list size %d\00", align 1
@VI_ACTIVE = common dso_local global i32 0, align 4
@v_actfreelist = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"bad mount point vnode list size\00", align 1
@v_nmntvnodes = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vnode*)* @delmntque to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @delmntque(%struct.vnode* %0) #0 {
  %2 = alloca %struct.vnode*, align 8
  %3 = alloca %struct.mount*, align 8
  %4 = alloca i32, align 4
  store %struct.vnode* %0, %struct.vnode** %2, align 8
  %5 = load %struct.vnode*, %struct.vnode** %2, align 8
  %6 = getelementptr inbounds %struct.vnode, %struct.vnode* %5, i32 0, i32 1
  %7 = load %struct.mount*, %struct.mount** %6, align 8
  store %struct.mount* %7, %struct.mount** %3, align 8
  %8 = load %struct.mount*, %struct.mount** %3, align 8
  %9 = icmp eq %struct.mount* %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  br label %86

11:                                               ; preds = %1
  %12 = load %struct.mount*, %struct.mount** %3, align 8
  %13 = call i32 @MNT_ILOCK(%struct.mount* %12)
  %14 = load %struct.vnode*, %struct.vnode** %2, align 8
  %15 = call i32 @VI_LOCK(%struct.vnode* %14)
  %16 = load %struct.mount*, %struct.mount** %3, align 8
  %17 = getelementptr inbounds %struct.mount, %struct.mount* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load %struct.mount*, %struct.mount** %3, align 8
  %20 = getelementptr inbounds %struct.mount, %struct.mount* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = icmp sle i64 %18, %21
  %23 = zext i1 %22 to i32
  %24 = load %struct.mount*, %struct.mount** %3, align 8
  %25 = getelementptr inbounds %struct.mount, %struct.mount* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load %struct.mount*, %struct.mount** %3, align 8
  %28 = getelementptr inbounds %struct.mount, %struct.mount* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = inttoptr i64 %29 to i8*
  %31 = call i32 @KASSERT(i32 %23, i8* %30)
  %32 = load %struct.vnode*, %struct.vnode** %2, align 8
  %33 = getelementptr inbounds %struct.vnode, %struct.vnode* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @VI_ACTIVE, align 4
  %36 = and i32 %34, %35
  store i32 %36, i32* %4, align 4
  %37 = load i32, i32* @VI_ACTIVE, align 4
  %38 = xor i32 %37, -1
  %39 = load %struct.vnode*, %struct.vnode** %2, align 8
  %40 = getelementptr inbounds %struct.vnode, %struct.vnode* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = and i32 %41, %38
  store i32 %42, i32* %40, align 8
  %43 = load i32, i32* %4, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %61

45:                                               ; preds = %11
  %46 = load %struct.mount*, %struct.mount** %3, align 8
  %47 = getelementptr inbounds %struct.mount, %struct.mount* %46, i32 0, i32 3
  %48 = call i32 @mtx_lock(i32* %47)
  %49 = load %struct.mount*, %struct.mount** %3, align 8
  %50 = getelementptr inbounds %struct.mount, %struct.mount* %49, i32 0, i32 4
  %51 = load %struct.vnode*, %struct.vnode** %2, align 8
  %52 = load i32, i32* @v_actfreelist, align 4
  %53 = call i32 @TAILQ_REMOVE(i32* %50, %struct.vnode* %51, i32 %52)
  %54 = load %struct.mount*, %struct.mount** %3, align 8
  %55 = getelementptr inbounds %struct.mount, %struct.mount* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = add nsw i64 %56, -1
  store i64 %57, i64* %55, align 8
  %58 = load %struct.mount*, %struct.mount** %3, align 8
  %59 = getelementptr inbounds %struct.mount, %struct.mount* %58, i32 0, i32 3
  %60 = call i32 @mtx_unlock(i32* %59)
  br label %61

61:                                               ; preds = %45, %11
  %62 = load %struct.vnode*, %struct.vnode** %2, align 8
  %63 = getelementptr inbounds %struct.vnode, %struct.vnode* %62, i32 0, i32 1
  store %struct.mount* null, %struct.mount** %63, align 8
  %64 = load %struct.vnode*, %struct.vnode** %2, align 8
  %65 = call i32 @VI_UNLOCK(%struct.vnode* %64)
  %66 = load %struct.mount*, %struct.mount** %3, align 8
  %67 = getelementptr inbounds %struct.mount, %struct.mount* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = icmp sgt i64 %68, 0
  %70 = zext i1 %69 to i32
  %71 = load %struct.vnode*, %struct.vnode** %2, align 8
  %72 = call i32 @VNASSERT(i32 %70, %struct.vnode* %71, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  %73 = load %struct.mount*, %struct.mount** %3, align 8
  %74 = getelementptr inbounds %struct.mount, %struct.mount* %73, i32 0, i32 2
  %75 = load %struct.vnode*, %struct.vnode** %2, align 8
  %76 = load i32, i32* @v_nmntvnodes, align 4
  %77 = call i32 @TAILQ_REMOVE(i32* %74, %struct.vnode* %75, i32 %76)
  %78 = load %struct.mount*, %struct.mount** %3, align 8
  %79 = getelementptr inbounds %struct.mount, %struct.mount* %78, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = add nsw i64 %80, -1
  store i64 %81, i64* %79, align 8
  %82 = load %struct.mount*, %struct.mount** %3, align 8
  %83 = call i32 @MNT_REL(%struct.mount* %82)
  %84 = load %struct.mount*, %struct.mount** %3, align 8
  %85 = call i32 @MNT_IUNLOCK(%struct.mount* %84)
  br label %86

86:                                               ; preds = %61, %10
  ret void
}

declare dso_local i32 @MNT_ILOCK(%struct.mount*) #1

declare dso_local i32 @VI_LOCK(%struct.vnode*) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @TAILQ_REMOVE(i32*, %struct.vnode*, i32) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @VI_UNLOCK(%struct.vnode*) #1

declare dso_local i32 @VNASSERT(i32, %struct.vnode*, i8*) #1

declare dso_local i32 @MNT_REL(%struct.mount*) #1

declare dso_local i32 @MNT_IUNLOCK(%struct.mount*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
