; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_subr.c_mnt_vnode_next_active.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_subr.c_mnt_vnode_next_active.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vnode = type { i64, i32, %struct.mount* }
%struct.mount = type { i32, i32 }

@MA_OWNED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"marker vnode mount list mismatch\00", align 1
@v_actfreelist = common dso_local global i32 0, align 4
@VMARKER = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [17 x i8] c"locked marker %p\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"alien vnode on the active list %p %p\00", align 1
@VI_DOOMED = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [12 x i8] c"active iter\00", align 1
@VI_ACTIVE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [17 x i8] c"Non-active vp %p\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.vnode* (%struct.vnode**, %struct.mount*)* @mnt_vnode_next_active to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.vnode* @mnt_vnode_next_active(%struct.vnode** %0, %struct.mount* %1) #0 {
  %3 = alloca %struct.vnode*, align 8
  %4 = alloca %struct.vnode**, align 8
  %5 = alloca %struct.mount*, align 8
  %6 = alloca %struct.vnode*, align 8
  %7 = alloca %struct.vnode*, align 8
  store %struct.vnode** %0, %struct.vnode*** %4, align 8
  store %struct.mount* %1, %struct.mount** %5, align 8
  %8 = load %struct.mount*, %struct.mount** %5, align 8
  %9 = getelementptr inbounds %struct.mount, %struct.mount* %8, i32 0, i32 0
  %10 = load i32, i32* @MA_OWNED, align 4
  %11 = call i32 @mtx_assert(i32* %9, i32 %10)
  %12 = load %struct.vnode**, %struct.vnode*** %4, align 8
  %13 = load %struct.vnode*, %struct.vnode** %12, align 8
  %14 = getelementptr inbounds %struct.vnode, %struct.vnode* %13, i32 0, i32 2
  %15 = load %struct.mount*, %struct.mount** %14, align 8
  %16 = load %struct.mount*, %struct.mount** %5, align 8
  %17 = icmp eq %struct.mount* %15, %16
  %18 = zext i1 %17 to i32
  %19 = call i32 @KASSERT(i32 %18, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  br label %20

20:                                               ; preds = %49, %2
  %21 = load %struct.vnode**, %struct.vnode*** %4, align 8
  %22 = load %struct.vnode*, %struct.vnode** %21, align 8
  %23 = load i32, i32* @v_actfreelist, align 4
  %24 = call %struct.vnode* @TAILQ_NEXT(%struct.vnode* %22, i32 %23)
  store %struct.vnode* %24, %struct.vnode** %6, align 8
  br label %25

25:                                               ; preds = %90, %34, %20
  %26 = load %struct.vnode*, %struct.vnode** %6, align 8
  %27 = icmp ne %struct.vnode* %26, null
  br i1 %27, label %28, label %97

28:                                               ; preds = %25
  %29 = load %struct.vnode*, %struct.vnode** %6, align 8
  %30 = getelementptr inbounds %struct.vnode, %struct.vnode* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @VMARKER, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %38

34:                                               ; preds = %28
  %35 = load %struct.vnode*, %struct.vnode** %6, align 8
  %36 = load i32, i32* @v_actfreelist, align 4
  %37 = call %struct.vnode* @TAILQ_NEXT(%struct.vnode* %35, i32 %36)
  store %struct.vnode* %37, %struct.vnode** %6, align 8
  br label %25

38:                                               ; preds = %28
  %39 = load %struct.vnode*, %struct.vnode** %6, align 8
  %40 = call i32 @VI_TRYLOCK(%struct.vnode* %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %50, label %42

42:                                               ; preds = %38
  %43 = load %struct.vnode**, %struct.vnode*** %4, align 8
  %44 = load %struct.vnode*, %struct.vnode** %43, align 8
  %45 = load %struct.mount*, %struct.mount** %5, align 8
  %46 = load %struct.vnode*, %struct.vnode** %6, align 8
  %47 = call i32 @mnt_vnode_next_active_relock(%struct.vnode* %44, %struct.mount* %45, %struct.vnode* %46)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %50, label %49

49:                                               ; preds = %42
  br label %20

50:                                               ; preds = %42, %38
  %51 = load %struct.vnode*, %struct.vnode** %6, align 8
  %52 = getelementptr inbounds %struct.vnode, %struct.vnode* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @VMARKER, align 8
  %55 = icmp ne i64 %53, %54
  %56 = zext i1 %55 to i32
  %57 = load %struct.vnode*, %struct.vnode** %6, align 8
  %58 = bitcast %struct.vnode* %57 to i8*
  %59 = call i32 @KASSERT(i32 %56, i8* %58)
  %60 = load %struct.vnode*, %struct.vnode** %6, align 8
  %61 = getelementptr inbounds %struct.vnode, %struct.vnode* %60, i32 0, i32 2
  %62 = load %struct.mount*, %struct.mount** %61, align 8
  %63 = load %struct.mount*, %struct.mount** %5, align 8
  %64 = icmp eq %struct.mount* %62, %63
  br i1 %64, label %70, label %65

65:                                               ; preds = %50
  %66 = load %struct.vnode*, %struct.vnode** %6, align 8
  %67 = getelementptr inbounds %struct.vnode, %struct.vnode* %66, i32 0, i32 2
  %68 = load %struct.mount*, %struct.mount** %67, align 8
  %69 = icmp eq %struct.mount* %68, null
  br label %70

70:                                               ; preds = %65, %50
  %71 = phi i1 [ true, %50 ], [ %69, %65 ]
  %72 = zext i1 %71 to i32
  %73 = load %struct.vnode*, %struct.vnode** %6, align 8
  %74 = load %struct.mount*, %struct.mount** %5, align 8
  %75 = bitcast %struct.mount* %74 to i8*
  %76 = call i32 @KASSERT(i32 %72, i8* %75)
  %77 = load %struct.vnode*, %struct.vnode** %6, align 8
  %78 = getelementptr inbounds %struct.vnode, %struct.vnode* %77, i32 0, i32 2
  %79 = load %struct.mount*, %struct.mount** %78, align 8
  %80 = load %struct.mount*, %struct.mount** %5, align 8
  %81 = icmp eq %struct.mount* %79, %80
  br i1 %81, label %82, label %90

82:                                               ; preds = %70
  %83 = load %struct.vnode*, %struct.vnode** %6, align 8
  %84 = getelementptr inbounds %struct.vnode, %struct.vnode* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 8
  %86 = load i32, i32* @VI_DOOMED, align 4
  %87 = and i32 %85, %86
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %82
  br label %97

90:                                               ; preds = %82, %70
  %91 = load %struct.vnode*, %struct.vnode** %6, align 8
  %92 = load i32, i32* @v_actfreelist, align 4
  %93 = call %struct.vnode* @TAILQ_NEXT(%struct.vnode* %91, i32 %92)
  store %struct.vnode* %93, %struct.vnode** %7, align 8
  %94 = load %struct.vnode*, %struct.vnode** %6, align 8
  %95 = call i32 @VI_UNLOCK(%struct.vnode* %94)
  %96 = load %struct.vnode*, %struct.vnode** %7, align 8
  store %struct.vnode* %96, %struct.vnode** %6, align 8
  br label %25

97:                                               ; preds = %89, %25
  %98 = load %struct.mount*, %struct.mount** %5, align 8
  %99 = getelementptr inbounds %struct.mount, %struct.mount* %98, i32 0, i32 1
  %100 = load %struct.vnode**, %struct.vnode*** %4, align 8
  %101 = load %struct.vnode*, %struct.vnode** %100, align 8
  %102 = load i32, i32* @v_actfreelist, align 4
  %103 = call i32 @TAILQ_REMOVE(i32* %99, %struct.vnode* %101, i32 %102)
  %104 = load %struct.vnode*, %struct.vnode** %6, align 8
  %105 = icmp eq %struct.vnode* %104, null
  br i1 %105, label %106, label %113

106:                                              ; preds = %97
  %107 = load %struct.mount*, %struct.mount** %5, align 8
  %108 = getelementptr inbounds %struct.mount, %struct.mount* %107, i32 0, i32 0
  %109 = call i32 @mtx_unlock(i32* %108)
  %110 = load %struct.vnode**, %struct.vnode*** %4, align 8
  %111 = load %struct.mount*, %struct.mount** %5, align 8
  %112 = call i32 @mnt_vnode_markerfree_active(%struct.vnode** %110, %struct.mount* %111)
  store %struct.vnode* null, %struct.vnode** %3, align 8
  br label %137

113:                                              ; preds = %97
  %114 = load %struct.mount*, %struct.mount** %5, align 8
  %115 = getelementptr inbounds %struct.mount, %struct.mount* %114, i32 0, i32 1
  %116 = load %struct.vnode*, %struct.vnode** %6, align 8
  %117 = load %struct.vnode**, %struct.vnode*** %4, align 8
  %118 = load %struct.vnode*, %struct.vnode** %117, align 8
  %119 = load i32, i32* @v_actfreelist, align 4
  %120 = call i32 @TAILQ_INSERT_AFTER(i32* %115, %struct.vnode* %116, %struct.vnode* %118, i32 %119)
  %121 = load %struct.mount*, %struct.mount** %5, align 8
  %122 = getelementptr inbounds %struct.mount, %struct.mount* %121, i32 0, i32 0
  %123 = call i32 @mtx_unlock(i32* %122)
  %124 = load %struct.vnode*, %struct.vnode** %6, align 8
  %125 = call i32 @ASSERT_VI_LOCKED(%struct.vnode* %124, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0))
  %126 = load %struct.vnode*, %struct.vnode** %6, align 8
  %127 = getelementptr inbounds %struct.vnode, %struct.vnode* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 8
  %129 = load i32, i32* @VI_ACTIVE, align 4
  %130 = and i32 %128, %129
  %131 = icmp ne i32 %130, 0
  %132 = zext i1 %131 to i32
  %133 = load %struct.vnode*, %struct.vnode** %6, align 8
  %134 = bitcast %struct.vnode* %133 to i8*
  %135 = call i32 @KASSERT(i32 %132, i8* %134)
  %136 = load %struct.vnode*, %struct.vnode** %6, align 8
  store %struct.vnode* %136, %struct.vnode** %3, align 8
  br label %137

137:                                              ; preds = %113, %106
  %138 = load %struct.vnode*, %struct.vnode** %3, align 8
  ret %struct.vnode* %138
}

declare dso_local i32 @mtx_assert(i32*, i32) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local %struct.vnode* @TAILQ_NEXT(%struct.vnode*, i32) #1

declare dso_local i32 @VI_TRYLOCK(%struct.vnode*) #1

declare dso_local i32 @mnt_vnode_next_active_relock(%struct.vnode*, %struct.mount*, %struct.vnode*) #1

declare dso_local i32 @VI_UNLOCK(%struct.vnode*) #1

declare dso_local i32 @TAILQ_REMOVE(i32*, %struct.vnode*, i32) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @mnt_vnode_markerfree_active(%struct.vnode**, %struct.mount*) #1

declare dso_local i32 @TAILQ_INSERT_AFTER(i32*, %struct.vnode*, %struct.vnode*, i32) #1

declare dso_local i32 @ASSERT_VI_LOCKED(%struct.vnode*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
