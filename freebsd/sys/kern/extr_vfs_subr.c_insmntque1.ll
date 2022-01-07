; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_subr.c_insmntque1.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_subr.c_insmntque1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vnode = type { i32, i32, %struct.mount* }
%struct.mount = type { i32, i64, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [49 x i8] c"insmntque: vnode already on per mount vnode list\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"Don't call insmntque(foo, NULL)\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"insmntque: non-locked vp\00", align 1
@MNTK_UNMOUNT = common dso_local global i32 0, align 4
@MNTK_UNMOUNTF = common dso_local global i32 0, align 4
@VV_FORCEINSMQ = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@v_nmntvnodes = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [32 x i8] c"neg mount point vnode list size\00", align 1
@VI_ACTIVE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [32 x i8] c"Activating already active vnode\00", align 1
@v_actfreelist = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @insmntque1(%struct.vnode* %0, %struct.mount* %1, void (%struct.vnode*, i8*)* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.vnode*, align 8
  %7 = alloca %struct.mount*, align 8
  %8 = alloca void (%struct.vnode*, i8*)*, align 8
  %9 = alloca i8*, align 8
  store %struct.vnode* %0, %struct.vnode** %6, align 8
  store %struct.mount* %1, %struct.mount** %7, align 8
  store void (%struct.vnode*, i8*)* %2, void (%struct.vnode*, i8*)** %8, align 8
  store i8* %3, i8** %9, align 8
  %10 = load %struct.vnode*, %struct.vnode** %6, align 8
  %11 = getelementptr inbounds %struct.vnode, %struct.vnode* %10, i32 0, i32 2
  %12 = load %struct.mount*, %struct.mount** %11, align 8
  %13 = icmp eq %struct.mount* %12, null
  %14 = zext i1 %13 to i32
  %15 = call i32 @KASSERT(i32 %14, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0))
  %16 = load %struct.mount*, %struct.mount** %7, align 8
  %17 = icmp ne %struct.mount* %16, null
  %18 = zext i1 %17 to i32
  %19 = load %struct.vnode*, %struct.vnode** %6, align 8
  %20 = call i32 @VNASSERT(i32 %18, %struct.vnode* %19, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  %21 = load %struct.vnode*, %struct.vnode** %6, align 8
  %22 = call i32 @ASSERT_VOP_ELOCKED(%struct.vnode* %21, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  %23 = load %struct.mount*, %struct.mount** %7, align 8
  %24 = call i32 @MNT_ILOCK(%struct.mount* %23)
  %25 = load %struct.vnode*, %struct.vnode** %6, align 8
  %26 = call i32 @VI_LOCK(%struct.vnode* %25)
  %27 = load %struct.mount*, %struct.mount** %7, align 8
  %28 = getelementptr inbounds %struct.mount, %struct.mount* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @MNTK_UNMOUNT, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %65

33:                                               ; preds = %4
  %34 = load %struct.mount*, %struct.mount** %7, align 8
  %35 = getelementptr inbounds %struct.mount, %struct.mount* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* @MNTK_UNMOUNTF, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %45, label %40

40:                                               ; preds = %33
  %41 = load %struct.mount*, %struct.mount** %7, align 8
  %42 = getelementptr inbounds %struct.mount, %struct.mount* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = icmp eq i64 %43, 0
  br i1 %44, label %45, label %65

45:                                               ; preds = %40, %33
  %46 = load %struct.vnode*, %struct.vnode** %6, align 8
  %47 = getelementptr inbounds %struct.vnode, %struct.vnode* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* @VV_FORCEINSMQ, align 4
  %50 = and i32 %48, %49
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %65

52:                                               ; preds = %45
  %53 = load %struct.vnode*, %struct.vnode** %6, align 8
  %54 = call i32 @VI_UNLOCK(%struct.vnode* %53)
  %55 = load %struct.mount*, %struct.mount** %7, align 8
  %56 = call i32 @MNT_IUNLOCK(%struct.mount* %55)
  %57 = load void (%struct.vnode*, i8*)*, void (%struct.vnode*, i8*)** %8, align 8
  %58 = icmp ne void (%struct.vnode*, i8*)* %57, null
  br i1 %58, label %59, label %63

59:                                               ; preds = %52
  %60 = load void (%struct.vnode*, i8*)*, void (%struct.vnode*, i8*)** %8, align 8
  %61 = load %struct.vnode*, %struct.vnode** %6, align 8
  %62 = load i8*, i8** %9, align 8
  call void %60(%struct.vnode* %61, i8* %62)
  br label %63

63:                                               ; preds = %59, %52
  %64 = load i32, i32* @EBUSY, align 4
  store i32 %64, i32* %5, align 4
  br label %119

65:                                               ; preds = %45, %40, %4
  %66 = load %struct.mount*, %struct.mount** %7, align 8
  %67 = load %struct.vnode*, %struct.vnode** %6, align 8
  %68 = getelementptr inbounds %struct.vnode, %struct.vnode* %67, i32 0, i32 2
  store %struct.mount* %66, %struct.mount** %68, align 8
  %69 = load %struct.mount*, %struct.mount** %7, align 8
  %70 = call i32 @MNT_REF(%struct.mount* %69)
  %71 = load %struct.mount*, %struct.mount** %7, align 8
  %72 = getelementptr inbounds %struct.mount, %struct.mount* %71, i32 0, i32 5
  %73 = load %struct.vnode*, %struct.vnode** %6, align 8
  %74 = load i32, i32* @v_nmntvnodes, align 4
  %75 = call i32 @TAILQ_INSERT_TAIL(i32* %72, %struct.vnode* %73, i32 %74)
  %76 = load %struct.mount*, %struct.mount** %7, align 8
  %77 = getelementptr inbounds %struct.mount, %struct.mount* %76, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = icmp sge i64 %78, 0
  %80 = zext i1 %79 to i32
  %81 = load %struct.vnode*, %struct.vnode** %6, align 8
  %82 = call i32 @VNASSERT(i32 %80, %struct.vnode* %81, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0))
  %83 = load %struct.mount*, %struct.mount** %7, align 8
  %84 = getelementptr inbounds %struct.mount, %struct.mount* %83, i32 0, i32 1
  %85 = load i64, i64* %84, align 8
  %86 = add nsw i64 %85, 1
  store i64 %86, i64* %84, align 8
  %87 = load %struct.vnode*, %struct.vnode** %6, align 8
  %88 = getelementptr inbounds %struct.vnode, %struct.vnode* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* @VI_ACTIVE, align 4
  %91 = and i32 %89, %90
  %92 = icmp eq i32 %91, 0
  %93 = zext i1 %92 to i32
  %94 = call i32 @KASSERT(i32 %93, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0))
  %95 = load i32, i32* @VI_ACTIVE, align 4
  %96 = load %struct.vnode*, %struct.vnode** %6, align 8
  %97 = getelementptr inbounds %struct.vnode, %struct.vnode* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = or i32 %98, %95
  store i32 %99, i32* %97, align 4
  %100 = load %struct.mount*, %struct.mount** %7, align 8
  %101 = getelementptr inbounds %struct.mount, %struct.mount* %100, i32 0, i32 2
  %102 = call i32 @mtx_lock(i32* %101)
  %103 = load %struct.mount*, %struct.mount** %7, align 8
  %104 = getelementptr inbounds %struct.mount, %struct.mount* %103, i32 0, i32 4
  %105 = load %struct.vnode*, %struct.vnode** %6, align 8
  %106 = load i32, i32* @v_actfreelist, align 4
  %107 = call i32 @TAILQ_INSERT_HEAD(i32* %104, %struct.vnode* %105, i32 %106)
  %108 = load %struct.mount*, %struct.mount** %7, align 8
  %109 = getelementptr inbounds %struct.mount, %struct.mount* %108, i32 0, i32 3
  %110 = load i32, i32* %109, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %109, align 4
  %112 = load %struct.mount*, %struct.mount** %7, align 8
  %113 = getelementptr inbounds %struct.mount, %struct.mount* %112, i32 0, i32 2
  %114 = call i32 @mtx_unlock(i32* %113)
  %115 = load %struct.vnode*, %struct.vnode** %6, align 8
  %116 = call i32 @VI_UNLOCK(%struct.vnode* %115)
  %117 = load %struct.mount*, %struct.mount** %7, align 8
  %118 = call i32 @MNT_IUNLOCK(%struct.mount* %117)
  store i32 0, i32* %5, align 4
  br label %119

119:                                              ; preds = %65, %63
  %120 = load i32, i32* %5, align 4
  ret i32 %120
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @VNASSERT(i32, %struct.vnode*, i8*) #1

declare dso_local i32 @ASSERT_VOP_ELOCKED(%struct.vnode*, i8*) #1

declare dso_local i32 @MNT_ILOCK(%struct.mount*) #1

declare dso_local i32 @VI_LOCK(%struct.vnode*) #1

declare dso_local i32 @VI_UNLOCK(%struct.vnode*) #1

declare dso_local i32 @MNT_IUNLOCK(%struct.mount*) #1

declare dso_local i32 @MNT_REF(%struct.mount*) #1

declare dso_local i32 @TAILQ_INSERT_TAIL(i32*, %struct.vnode*, i32) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @TAILQ_INSERT_HEAD(i32*, %struct.vnode*, i32) #1

declare dso_local i32 @mtx_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
