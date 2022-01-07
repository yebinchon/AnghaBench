; ModuleID = '/home/carl/AnghaBench/freebsd/sys/vm/extr_phys_pager.c_phys_pager_alloc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/vm/extr_phys_pager.c_phys_pager_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, i8* }
%struct.ucred = type { i32 }

@PAGE_MASK = common dso_local global i32 0, align 4
@phys_pager_mtx = common dso_local global i32 0, align 4
@phys_pager_object_list = common dso_local global i32 0, align 4
@OBJT_PHYS = common dso_local global i32 0, align 4
@OBJ_POPULATE = common dso_local global i32 0, align 4
@pager_object_list = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_8__* (i8*, i32, i32, i32, %struct.ucred*)* @phys_pager_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_8__* @phys_pager_alloc(i8* %0, i32 %1, i32 %2, i32 %3, %struct.ucred* %4) #0 {
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.ucred*, align 8
  %12 = alloca %struct.TYPE_8__*, align 8
  %13 = alloca %struct.TYPE_8__*, align 8
  %14 = alloca i64, align 8
  store i8* %0, i8** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store %struct.ucred* %4, %struct.ucred** %11, align 8
  %15 = load i32, i32* %10, align 4
  %16 = load i32, i32* @PAGE_MASK, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %5
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %6, align 8
  br label %92

20:                                               ; preds = %5
  %21 = load i32, i32* %10, align 4
  %22 = load i32, i32* @PAGE_MASK, align 4
  %23 = add nsw i32 %21, %22
  %24 = load i32, i32* %8, align 4
  %25 = add nsw i32 %23, %24
  %26 = call i64 @OFF_TO_IDX(i32 %25)
  store i64 %26, i64* %14, align 8
  %27 = load i8*, i8** %7, align 8
  %28 = icmp ne i8* %27, null
  br i1 %28, label %29, label %83

29:                                               ; preds = %20
  %30 = call i32 @mtx_lock(i32* @phys_pager_mtx)
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %13, align 8
  %31 = load i8*, i8** %7, align 8
  %32 = call %struct.TYPE_8__* @vm_pager_object_lookup(i32* @phys_pager_object_list, i8* %31)
  store %struct.TYPE_8__* %32, %struct.TYPE_8__** %12, align 8
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %34 = icmp eq %struct.TYPE_8__* %33, null
  br i1 %34, label %35, label %68

35:                                               ; preds = %29
  %36 = call i32 @mtx_unlock(i32* @phys_pager_mtx)
  %37 = load i32, i32* @OBJT_PHYS, align 4
  %38 = load i64, i64* %14, align 8
  %39 = call %struct.TYPE_8__* @vm_object_allocate(i32 %37, i64 %38)
  store %struct.TYPE_8__* %39, %struct.TYPE_8__** %13, align 8
  %40 = call i32 @mtx_lock(i32* @phys_pager_mtx)
  %41 = load i8*, i8** %7, align 8
  %42 = call %struct.TYPE_8__* @vm_pager_object_lookup(i32* @phys_pager_object_list, i8* %41)
  store %struct.TYPE_8__* %42, %struct.TYPE_8__** %12, align 8
  %43 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %44 = icmp ne %struct.TYPE_8__* %43, null
  br i1 %44, label %45, label %56

45:                                               ; preds = %35
  %46 = load i64, i64* %14, align 8
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = icmp sgt i64 %46, %49
  br i1 %50, label %51, label %55

51:                                               ; preds = %45
  %52 = load i64, i64* %14, align 8
  %53 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 0
  store i64 %52, i64* %54, align 8
  br label %55

55:                                               ; preds = %51, %45
  br label %67

56:                                               ; preds = %35
  %57 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  store %struct.TYPE_8__* %57, %struct.TYPE_8__** %12, align 8
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %13, align 8
  %58 = load i8*, i8** %7, align 8
  %59 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 1
  store i8* %58, i8** %60, align 8
  %61 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %62 = load i32, i32* @OBJ_POPULATE, align 4
  %63 = call i32 @vm_object_set_flag(%struct.TYPE_8__* %61, i32 %62)
  %64 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %65 = load i32, i32* @pager_object_list, align 4
  %66 = call i32 @TAILQ_INSERT_TAIL(i32* @phys_pager_object_list, %struct.TYPE_8__* %64, i32 %65)
  br label %67

67:                                               ; preds = %56, %55
  br label %79

68:                                               ; preds = %29
  %69 = load i64, i64* %14, align 8
  %70 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = icmp sgt i64 %69, %72
  br i1 %73, label %74, label %78

74:                                               ; preds = %68
  %75 = load i64, i64* %14, align 8
  %76 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %76, i32 0, i32 0
  store i64 %75, i64* %77, align 8
  br label %78

78:                                               ; preds = %74, %68
  br label %79

79:                                               ; preds = %78, %67
  %80 = call i32 @mtx_unlock(i32* @phys_pager_mtx)
  %81 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %82 = call i32 @vm_object_deallocate(%struct.TYPE_8__* %81)
  br label %90

83:                                               ; preds = %20
  %84 = load i32, i32* @OBJT_PHYS, align 4
  %85 = load i64, i64* %14, align 8
  %86 = call %struct.TYPE_8__* @vm_object_allocate(i32 %84, i64 %85)
  store %struct.TYPE_8__* %86, %struct.TYPE_8__** %12, align 8
  %87 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %88 = load i32, i32* @OBJ_POPULATE, align 4
  %89 = call i32 @vm_object_set_flag(%struct.TYPE_8__* %87, i32 %88)
  br label %90

90:                                               ; preds = %83, %79
  %91 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  store %struct.TYPE_8__* %91, %struct.TYPE_8__** %6, align 8
  br label %92

92:                                               ; preds = %90, %19
  %93 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  ret %struct.TYPE_8__* %93
}

declare dso_local i64 @OFF_TO_IDX(i32) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local %struct.TYPE_8__* @vm_pager_object_lookup(i32*, i8*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local %struct.TYPE_8__* @vm_object_allocate(i32, i64) #1

declare dso_local i32 @vm_object_set_flag(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @TAILQ_INSERT_TAIL(i32*, %struct.TYPE_8__*, i32) #1

declare dso_local i32 @vm_object_deallocate(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
