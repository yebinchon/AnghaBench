; ModuleID = '/home/carl/AnghaBench/freebsd/sys/vm/extr_vnode_pager.c_vnode_pager_setsize.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/vm/extr_vnode_pager.c_vnode_pager_setsize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vnode = type { %struct.mount*, %struct.TYPE_10__* }
%struct.mount = type { i32 }
%struct.TYPE_10__ = type { i64, i64, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }

@OBJT_DEAD = common dso_local global i64 0, align 8
@OBJT_VNODE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [27 x i8] c"not vnode-backed object %p\00", align 1
@PAGE_MASK = common dso_local global i32 0, align 4
@VM_ALLOC_NOCREAT = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@DEV_BSIZE = common dso_local global i32 0, align 4
@MNTK_VMSETSIZE_BUG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vnode_pager_setsize(%struct.vnode* %0, i32 %1) #0 {
  %3 = alloca %struct.vnode*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.vnode* %0, %struct.vnode** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load %struct.vnode*, %struct.vnode** %3, align 8
  %11 = getelementptr inbounds %struct.vnode, %struct.vnode* %10, i32 0, i32 1
  %12 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  store %struct.TYPE_10__* %12, %struct.TYPE_10__** %5, align 8
  %13 = icmp eq %struct.TYPE_10__* %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  br label %129

15:                                               ; preds = %2
  %16 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %17 = call i32 @VM_OBJECT_WLOCK(%struct.TYPE_10__* %16)
  %18 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @OBJT_DEAD, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %26

23:                                               ; preds = %15
  %24 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %25 = call i32 @VM_OBJECT_WUNLOCK(%struct.TYPE_10__* %24)
  br label %129

26:                                               ; preds = %15
  %27 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @OBJT_VNODE, align 8
  %31 = icmp eq i64 %29, %30
  %32 = zext i1 %31 to i32
  %33 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %34 = bitcast %struct.TYPE_10__* %33 to i8*
  %35 = call i32 @KASSERT(i32 %32, i8* %34)
  %36 = load i32, i32* %4, align 4
  %37 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %37, i32 0, i32 2
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = icmp eq i32 %36, %41
  br i1 %42, label %43, label %46

43:                                               ; preds = %26
  %44 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %45 = call i32 @VM_OBJECT_WUNLOCK(%struct.TYPE_10__* %44)
  br label %129

46:                                               ; preds = %26
  %47 = load i32, i32* %4, align 4
  %48 = load i32, i32* @PAGE_MASK, align 4
  %49 = add nsw i32 %47, %48
  %50 = call i64 @OFF_TO_IDX(i32 %49)
  store i64 %50, i64* %7, align 8
  %51 = load i32, i32* %4, align 4
  %52 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %53 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %52, i32 0, i32 2
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = icmp slt i32 %51, %56
  br i1 %57, label %58, label %117

58:                                               ; preds = %46
  %59 = load i64, i64* %7, align 8
  %60 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %61 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = icmp slt i64 %59, %62
  br i1 %63, label %64, label %71

64:                                               ; preds = %58
  %65 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %66 = load i64, i64* %7, align 8
  %67 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %68 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = call i32 @vm_object_page_remove(%struct.TYPE_10__* %65, i64 %66, i64 %69, i32 0)
  br label %71

71:                                               ; preds = %64, %58
  %72 = load i32, i32* %4, align 4
  %73 = load i32, i32* @PAGE_MASK, align 4
  %74 = and i32 %72, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %77, label %76

76:                                               ; preds = %71
  br label %118

77:                                               ; preds = %71
  %78 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %79 = load i32, i32* %4, align 4
  %80 = call i64 @OFF_TO_IDX(i32 %79)
  %81 = load i32, i32* @VM_ALLOC_NOCREAT, align 4
  %82 = call i32* @vm_page_grab(%struct.TYPE_10__* %78, i64 %80, i32 %81)
  store i32* %82, i32** %6, align 8
  %83 = load i32*, i32** %6, align 8
  %84 = icmp eq i32* %83, null
  br i1 %84, label %85, label %86

85:                                               ; preds = %77
  br label %118

86:                                               ; preds = %77
  %87 = load i32*, i32** %6, align 8
  %88 = call i32 @vm_page_none_valid(i32* %87)
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %114, label %90

90:                                               ; preds = %86
  %91 = load i32, i32* %4, align 4
  %92 = load i32, i32* @PAGE_MASK, align 4
  %93 = and i32 %91, %92
  store i32 %93, i32* %8, align 4
  %94 = load i32, i32* @PAGE_SIZE, align 4
  %95 = load i32, i32* %8, align 4
  %96 = sub nsw i32 %94, %95
  store i32 %96, i32* %9, align 4
  %97 = load i32*, i32** %6, align 8
  %98 = load i32, i32* %8, align 4
  %99 = load i32, i32* %9, align 4
  %100 = call i32 @pmap_zero_page_area(i32* %97, i32 %98, i32 %99)
  %101 = load i32*, i32** %6, align 8
  %102 = load i32, i32* %8, align 4
  %103 = load i32, i32* %9, align 4
  %104 = call i32 @vm_page_set_valid_range(i32* %101, i32 %102, i32 %103)
  %105 = load i32, i32* %8, align 4
  %106 = load i32, i32* @DEV_BSIZE, align 4
  %107 = call i32 @roundup2(i32 %105, i32 %106)
  store i32 %107, i32* %8, align 4
  %108 = load i32*, i32** %6, align 8
  %109 = load i32, i32* %8, align 4
  %110 = load i32, i32* @PAGE_SIZE, align 4
  %111 = load i32, i32* %8, align 4
  %112 = sub nsw i32 %110, %111
  %113 = call i32 @vm_page_clear_dirty(i32* %108, i32 %109, i32 %112)
  br label %114

114:                                              ; preds = %90, %86
  %115 = load i32*, i32** %6, align 8
  %116 = call i32 @vm_page_xunbusy(i32* %115)
  br label %117

117:                                              ; preds = %114, %46
  br label %118

118:                                              ; preds = %117, %85, %76
  %119 = load i32, i32* %4, align 4
  %120 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %121 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %120, i32 0, i32 2
  %122 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %122, i32 0, i32 0
  store i32 %119, i32* %123, align 8
  %124 = load i64, i64* %7, align 8
  %125 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %126 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %125, i32 0, i32 1
  store i64 %124, i64* %126, align 8
  %127 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %128 = call i32 @VM_OBJECT_WUNLOCK(%struct.TYPE_10__* %127)
  br label %129

129:                                              ; preds = %118, %43, %23, %14
  ret void
}

declare dso_local i32 @VM_OBJECT_WLOCK(%struct.TYPE_10__*) #1

declare dso_local i32 @VM_OBJECT_WUNLOCK(%struct.TYPE_10__*) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i64 @OFF_TO_IDX(i32) #1

declare dso_local i32 @vm_object_page_remove(%struct.TYPE_10__*, i64, i64, i32) #1

declare dso_local i32* @vm_page_grab(%struct.TYPE_10__*, i64, i32) #1

declare dso_local i32 @vm_page_none_valid(i32*) #1

declare dso_local i32 @pmap_zero_page_area(i32*, i32, i32) #1

declare dso_local i32 @vm_page_set_valid_range(i32*, i32, i32) #1

declare dso_local i32 @roundup2(i32, i32) #1

declare dso_local i32 @vm_page_clear_dirty(i32*, i32, i32) #1

declare dso_local i32 @vm_page_xunbusy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
