; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_kcov.c_kcov_alloc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_kcov.c_kcov_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.kcov_info = type { i64, i64, i64, i64, i32 }
%struct.TYPE_5__ = type { i32 }

@.str = private unnamed_addr constant [34 x i8] c"kcov_alloc: Already have a buffer\00", align 1
@KCOV_STATE_OPEN = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [35 x i8] c"kcov_alloc: Not in open state (%x)\00", align 1
@kcov_max_entries = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@KCOV_ELEMENT_SIZE = common dso_local global i64 0, align 8
@PAGE_SIZE = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i32 0, align 4
@OBJT_PHYS = common dso_local global i32 0, align 4
@PROT_READ = common dso_local global i32 0, align 4
@PROT_WRITE = common dso_local global i32 0, align 4
@curthread = common dso_local global %struct.TYPE_6__* null, align 8
@VM_ALLOC_NOBUSY = common dso_local global i32 0, align 4
@VM_ALLOC_ZERO = common dso_local global i32 0, align 4
@VM_ALLOC_WIRED = common dso_local global i32 0, align 4
@VM_PAGE_BITS_ALL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kcov_info*, i64)* @kcov_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kcov_alloc(%struct.kcov_info* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.kcov_info*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_5__*, align 8
  store %struct.kcov_info* %0, %struct.kcov_info** %4, align 8
  store i64 %1, i64* %5, align 8
  %9 = load %struct.kcov_info*, %struct.kcov_info** %4, align 8
  %10 = getelementptr inbounds %struct.kcov_info, %struct.kcov_info* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp eq i64 %11, 0
  %13 = zext i1 %12 to i32
  %14 = call i32 @KASSERT(i32 %13, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %15 = load %struct.kcov_info*, %struct.kcov_info** %4, align 8
  %16 = getelementptr inbounds %struct.kcov_info, %struct.kcov_info* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @KCOV_STATE_OPEN, align 8
  %19 = icmp eq i64 %17, %18
  %20 = zext i1 %19 to i32
  %21 = load %struct.kcov_info*, %struct.kcov_info** %4, align 8
  %22 = getelementptr inbounds %struct.kcov_info, %struct.kcov_info* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = inttoptr i64 %23 to i8*
  %25 = call i32 @KASSERT(i32 %20, i8* %24)
  %26 = load i64, i64* %5, align 8
  %27 = icmp ult i64 %26, 2
  br i1 %27, label %32, label %28

28:                                               ; preds = %2
  %29 = load i64, i64* %5, align 8
  %30 = load i64, i64* @kcov_max_entries, align 8
  %31 = icmp ugt i64 %29, %30
  br i1 %31, label %32, label %34

32:                                               ; preds = %28, %2
  %33 = load i32, i32* @EINVAL, align 4
  store i32 %33, i32* %3, align 4
  br label %111

34:                                               ; preds = %28
  %35 = load i64, i64* %5, align 8
  %36 = load i64, i64* @KCOV_ELEMENT_SIZE, align 8
  %37 = mul i64 %35, %36
  %38 = load i64, i64* @PAGE_SIZE, align 8
  %39 = call i64 @roundup2(i64 %37, i64 %38)
  %40 = load %struct.kcov_info*, %struct.kcov_info** %4, align 8
  %41 = getelementptr inbounds %struct.kcov_info, %struct.kcov_info* %40, i32 0, i32 2
  store i64 %39, i64* %41, align 8
  %42 = load %struct.kcov_info*, %struct.kcov_info** %4, align 8
  %43 = getelementptr inbounds %struct.kcov_info, %struct.kcov_info* %42, i32 0, i32 2
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @PAGE_SIZE, align 8
  %46 = udiv i64 %44, %45
  store i64 %46, i64* %7, align 8
  %47 = load %struct.kcov_info*, %struct.kcov_info** %4, align 8
  %48 = getelementptr inbounds %struct.kcov_info, %struct.kcov_info* %47, i32 0, i32 2
  %49 = load i64, i64* %48, align 8
  %50 = call i64 @kva_alloc(i64 %49)
  %51 = load %struct.kcov_info*, %struct.kcov_info** %4, align 8
  %52 = getelementptr inbounds %struct.kcov_info, %struct.kcov_info* %51, i32 0, i32 0
  store i64 %50, i64* %52, align 8
  %53 = icmp eq i64 %50, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %34
  %55 = load i32, i32* @ENOMEM, align 4
  store i32 %55, i32* %3, align 4
  br label %111

56:                                               ; preds = %34
  %57 = load i32, i32* @OBJT_PHYS, align 4
  %58 = load %struct.kcov_info*, %struct.kcov_info** %4, align 8
  %59 = getelementptr inbounds %struct.kcov_info, %struct.kcov_info* %58, i32 0, i32 2
  %60 = load i64, i64* %59, align 8
  %61 = load i32, i32* @PROT_READ, align 4
  %62 = load i32, i32* @PROT_WRITE, align 4
  %63 = or i32 %61, %62
  %64 = load %struct.TYPE_6__*, %struct.TYPE_6__** @curthread, align 8
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @vm_pager_allocate(i32 %57, i32 0, i64 %60, i32 %63, i32 0, i32 %66)
  %68 = load %struct.kcov_info*, %struct.kcov_info** %4, align 8
  %69 = getelementptr inbounds %struct.kcov_info, %struct.kcov_info* %68, i32 0, i32 4
  store i32 %67, i32* %69, align 8
  %70 = load %struct.kcov_info*, %struct.kcov_info** %4, align 8
  %71 = getelementptr inbounds %struct.kcov_info, %struct.kcov_info* %70, i32 0, i32 4
  %72 = load i32, i32* %71, align 8
  %73 = call i32 @VM_OBJECT_WLOCK(i32 %72)
  store i64 0, i64* %6, align 8
  br label %74

74:                                               ; preds = %100, %56
  %75 = load i64, i64* %6, align 8
  %76 = load i64, i64* %7, align 8
  %77 = icmp ult i64 %75, %76
  br i1 %77, label %78, label %103

78:                                               ; preds = %74
  %79 = load %struct.kcov_info*, %struct.kcov_info** %4, align 8
  %80 = getelementptr inbounds %struct.kcov_info, %struct.kcov_info* %79, i32 0, i32 4
  %81 = load i32, i32* %80, align 8
  %82 = load i64, i64* %6, align 8
  %83 = load i32, i32* @VM_ALLOC_NOBUSY, align 4
  %84 = load i32, i32* @VM_ALLOC_ZERO, align 4
  %85 = or i32 %83, %84
  %86 = load i32, i32* @VM_ALLOC_WIRED, align 4
  %87 = or i32 %85, %86
  %88 = call %struct.TYPE_5__* @vm_page_grab(i32 %81, i64 %82, i32 %87)
  store %struct.TYPE_5__* %88, %struct.TYPE_5__** %8, align 8
  %89 = load i32, i32* @VM_PAGE_BITS_ALL, align 4
  %90 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %91 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %90, i32 0, i32 0
  store i32 %89, i32* %91, align 4
  %92 = load %struct.kcov_info*, %struct.kcov_info** %4, align 8
  %93 = getelementptr inbounds %struct.kcov_info, %struct.kcov_info* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = load i64, i64* %6, align 8
  %96 = load i64, i64* @PAGE_SIZE, align 8
  %97 = mul i64 %95, %96
  %98 = add i64 %94, %97
  %99 = call i32 @pmap_qenter(i64 %98, %struct.TYPE_5__** %8, i32 1)
  br label %100

100:                                              ; preds = %78
  %101 = load i64, i64* %6, align 8
  %102 = add i64 %101, 1
  store i64 %102, i64* %6, align 8
  br label %74

103:                                              ; preds = %74
  %104 = load %struct.kcov_info*, %struct.kcov_info** %4, align 8
  %105 = getelementptr inbounds %struct.kcov_info, %struct.kcov_info* %104, i32 0, i32 4
  %106 = load i32, i32* %105, align 8
  %107 = call i32 @VM_OBJECT_WUNLOCK(i32 %106)
  %108 = load i64, i64* %5, align 8
  %109 = load %struct.kcov_info*, %struct.kcov_info** %4, align 8
  %110 = getelementptr inbounds %struct.kcov_info, %struct.kcov_info* %109, i32 0, i32 3
  store i64 %108, i64* %110, align 8
  store i32 0, i32* %3, align 4
  br label %111

111:                                              ; preds = %103, %54, %32
  %112 = load i32, i32* %3, align 4
  ret i32 %112
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i64 @roundup2(i64, i64) #1

declare dso_local i64 @kva_alloc(i64) #1

declare dso_local i32 @vm_pager_allocate(i32, i32, i64, i32, i32, i32) #1

declare dso_local i32 @VM_OBJECT_WLOCK(i32) #1

declare dso_local %struct.TYPE_5__* @vm_page_grab(i32, i64, i32) #1

declare dso_local i32 @pmap_qenter(i64, %struct.TYPE_5__**, i32) #1

declare dso_local i32 @VM_OBJECT_WUNLOCK(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
