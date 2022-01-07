; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_bio.c_vfs_vmio_invalidate.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_bio.c_vfs_vmio_invalidate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.buf = type { i32, i32, i32, i32, i64*, %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i32 }

@B_NOREUSE = common dso_local global i32 0, align 4
@VPR_NOREUSE = common dso_local global i32 0, align 4
@PAGE_MASK = common dso_local global i32 0, align 4
@bogus_page = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [44 x i8] c"vfs_vmio_invalidate: Unexpected bogus page.\00", align 1
@PAGE_SIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"brelse: extra page\00", align 1
@VM_ALLOC_SBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.buf*)* @vfs_vmio_invalidate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vfs_vmio_invalidate(%struct.buf* %0) #0 {
  %2 = alloca %struct.buf*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.buf* %0, %struct.buf** %2, align 8
  %10 = load %struct.buf*, %struct.buf** %2, align 8
  %11 = call i64 @buf_mapped(%struct.buf* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %25

13:                                               ; preds = %1
  %14 = load %struct.buf*, %struct.buf** %2, align 8
  %15 = call i32 @BUF_CHECK_MAPPED(%struct.buf* %14)
  %16 = load %struct.buf*, %struct.buf** %2, align 8
  %17 = getelementptr inbounds %struct.buf, %struct.buf* %16, i32 0, i32 6
  %18 = load i64, i64* %17, align 8
  %19 = trunc i64 %18 to i32
  %20 = call i32 @trunc_page(i32 %19)
  %21 = load %struct.buf*, %struct.buf** %2, align 8
  %22 = getelementptr inbounds %struct.buf, %struct.buf* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @pmap_qremove(i32 %20, i32 %23)
  br label %28

25:                                               ; preds = %1
  %26 = load %struct.buf*, %struct.buf** %2, align 8
  %27 = call i32 @BUF_CHECK_UNMAPPED(%struct.buf* %26)
  br label %28

28:                                               ; preds = %25, %13
  %29 = load %struct.buf*, %struct.buf** %2, align 8
  %30 = getelementptr inbounds %struct.buf, %struct.buf* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @B_NOREUSE, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %28
  %36 = load i32, i32* @VPR_NOREUSE, align 4
  br label %38

37:                                               ; preds = %28
  br label %38

38:                                               ; preds = %37, %35
  %39 = phi i32 [ %36, %35 ], [ 0, %37 ]
  store i32 %39, i32* %5, align 4
  %40 = load %struct.buf*, %struct.buf** %2, align 8
  %41 = getelementptr inbounds %struct.buf, %struct.buf* %40, i32 0, i32 5
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  store i32 %44, i32* %3, align 4
  %45 = load %struct.buf*, %struct.buf** %2, align 8
  %46 = getelementptr inbounds %struct.buf, %struct.buf* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 8
  store i32 %47, i32* %7, align 4
  %48 = load %struct.buf*, %struct.buf** %2, align 8
  %49 = getelementptr inbounds %struct.buf, %struct.buf* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @PAGE_MASK, align 4
  %52 = and i32 %50, %51
  store i32 %52, i32* %8, align 4
  %53 = load i32, i32* %3, align 4
  %54 = call i32 @VM_OBJECT_WLOCK(i32 %53)
  store i32 0, i32* %6, align 4
  br label %55

55:                                               ; preds = %118, %38
  %56 = load i32, i32* %6, align 4
  %57 = load %struct.buf*, %struct.buf** %2, align 8
  %58 = getelementptr inbounds %struct.buf, %struct.buf* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = icmp slt i32 %56, %59
  br i1 %60, label %61, label %121

61:                                               ; preds = %55
  %62 = load %struct.buf*, %struct.buf** %2, align 8
  %63 = getelementptr inbounds %struct.buf, %struct.buf* %62, i32 0, i32 4
  %64 = load i64*, i64** %63, align 8
  %65 = load i32, i32* %6, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i64, i64* %64, i64 %66
  %68 = load i64, i64* %67, align 8
  store i64 %68, i64* %4, align 8
  %69 = load i64, i64* %4, align 8
  %70 = load i64, i64* @bogus_page, align 8
  %71 = icmp eq i64 %69, %70
  br i1 %71, label %72, label %74

72:                                               ; preds = %61
  %73 = call i32 @panic(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  br label %74

74:                                               ; preds = %72, %61
  %75 = load %struct.buf*, %struct.buf** %2, align 8
  %76 = getelementptr inbounds %struct.buf, %struct.buf* %75, i32 0, i32 4
  %77 = load i64*, i64** %76, align 8
  %78 = load i32, i32* %6, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i64, i64* %77, i64 %79
  store i64 0, i64* %80, align 8
  %81 = load i32, i32* %7, align 4
  %82 = load i32, i32* @PAGE_SIZE, align 4
  %83 = load i32, i32* %8, align 4
  %84 = sub nsw i32 %82, %83
  %85 = icmp sgt i32 %81, %84
  br i1 %85, label %86, label %90

86:                                               ; preds = %74
  %87 = load i32, i32* @PAGE_SIZE, align 4
  %88 = load i32, i32* %8, align 4
  %89 = sub nsw i32 %87, %88
  br label %92

90:                                               ; preds = %74
  %91 = load i32, i32* %7, align 4
  br label %92

92:                                               ; preds = %90, %86
  %93 = phi i32 [ %89, %86 ], [ %91, %90 ]
  store i32 %93, i32* %9, align 4
  %94 = load i32, i32* %9, align 4
  %95 = icmp sge i32 %94, 0
  %96 = zext i1 %95 to i32
  %97 = call i32 @KASSERT(i32 %96, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  %98 = load i64, i64* %4, align 8
  %99 = load i32, i32* @VM_ALLOC_SBUSY, align 4
  %100 = call i32 @vm_page_busy_acquire(i64 %98, i32 %99)
  %101 = load i64, i64* %4, align 8
  %102 = call i64 @pmap_page_wired_mappings(i64 %101)
  %103 = icmp eq i64 %102, 0
  br i1 %103, label %104, label %109

104:                                              ; preds = %92
  %105 = load i64, i64* %4, align 8
  %106 = load i32, i32* %8, align 4
  %107 = load i32, i32* %9, align 4
  %108 = call i32 @vm_page_set_invalid(i64 %105, i32 %106, i32 %107)
  br label %109

109:                                              ; preds = %104, %92
  %110 = load i64, i64* %4, align 8
  %111 = call i32 @vm_page_sunbusy(i64 %110)
  %112 = load i64, i64* %4, align 8
  %113 = load i32, i32* %5, align 4
  %114 = call i32 @vm_page_release_locked(i64 %112, i32 %113)
  %115 = load i32, i32* %9, align 4
  %116 = load i32, i32* %7, align 4
  %117 = sub nsw i32 %116, %115
  store i32 %117, i32* %7, align 4
  store i32 0, i32* %8, align 4
  br label %118

118:                                              ; preds = %109
  %119 = load i32, i32* %6, align 4
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %6, align 4
  br label %55

121:                                              ; preds = %55
  %122 = load i32, i32* %3, align 4
  %123 = call i32 @VM_OBJECT_WUNLOCK(i32 %122)
  %124 = load %struct.buf*, %struct.buf** %2, align 8
  %125 = getelementptr inbounds %struct.buf, %struct.buf* %124, i32 0, i32 0
  store i32 0, i32* %125, align 8
  ret void
}

declare dso_local i64 @buf_mapped(%struct.buf*) #1

declare dso_local i32 @BUF_CHECK_MAPPED(%struct.buf*) #1

declare dso_local i32 @pmap_qremove(i32, i32) #1

declare dso_local i32 @trunc_page(i32) #1

declare dso_local i32 @BUF_CHECK_UNMAPPED(%struct.buf*) #1

declare dso_local i32 @VM_OBJECT_WLOCK(i32) #1

declare dso_local i32 @panic(i8*) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @vm_page_busy_acquire(i64, i32) #1

declare dso_local i64 @pmap_page_wired_mappings(i64) #1

declare dso_local i32 @vm_page_set_invalid(i64, i32, i32) #1

declare dso_local i32 @vm_page_sunbusy(i64) #1

declare dso_local i32 @vm_page_release_locked(i64, i32) #1

declare dso_local i32 @VM_OBJECT_WUNLOCK(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
