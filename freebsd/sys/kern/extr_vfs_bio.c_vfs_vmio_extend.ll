; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_bio.c_vfs_vmio_extend.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_bio.c_vfs_vmio_extend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.buf = type { i32, i32, i32, i32, i32*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@VM_ALLOC_SYSTEM = common dso_local global i32 0, align 4
@VM_ALLOC_IGN_SBUSY = common dso_local global i32 0, align 4
@VM_ALLOC_NOBUSY = common dso_local global i32 0, align 4
@VM_ALLOC_WIRED = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@PAGE_MASK = common dso_local global i32 0, align 4
@B_CACHE = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.buf*, i32, i32)* @vfs_vmio_extend to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vfs_vmio_extend(%struct.buf* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.buf*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store %struct.buf* %0, %struct.buf** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %12 = load %struct.buf*, %struct.buf** %4, align 8
  %13 = getelementptr inbounds %struct.buf, %struct.buf* %12, i32 0, i32 5
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %7, align 4
  %17 = load %struct.buf*, %struct.buf** %4, align 8
  %18 = getelementptr inbounds %struct.buf, %struct.buf* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* %5, align 4
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %22, label %61

22:                                               ; preds = %3
  %23 = load i32, i32* %7, align 4
  %24 = call i32 @VM_OBJECT_WLOCK(i32 %23)
  %25 = load i32, i32* %7, align 4
  %26 = load %struct.buf*, %struct.buf** %4, align 8
  %27 = getelementptr inbounds %struct.buf, %struct.buf* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call i64 @OFF_TO_IDX(i32 %28)
  %30 = load %struct.buf*, %struct.buf** %4, align 8
  %31 = getelementptr inbounds %struct.buf, %struct.buf* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = sext i32 %32 to i64
  %34 = add nsw i64 %29, %33
  %35 = load i32, i32* @VM_ALLOC_SYSTEM, align 4
  %36 = load i32, i32* @VM_ALLOC_IGN_SBUSY, align 4
  %37 = or i32 %35, %36
  %38 = load i32, i32* @VM_ALLOC_NOBUSY, align 4
  %39 = or i32 %37, %38
  %40 = load i32, i32* @VM_ALLOC_WIRED, align 4
  %41 = or i32 %39, %40
  %42 = load %struct.buf*, %struct.buf** %4, align 8
  %43 = getelementptr inbounds %struct.buf, %struct.buf* %42, i32 0, i32 4
  %44 = load i32*, i32** %43, align 8
  %45 = load %struct.buf*, %struct.buf** %4, align 8
  %46 = getelementptr inbounds %struct.buf, %struct.buf* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %44, i64 %48
  %50 = load i32, i32* %5, align 4
  %51 = load %struct.buf*, %struct.buf** %4, align 8
  %52 = getelementptr inbounds %struct.buf, %struct.buf* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = sub nsw i32 %50, %53
  %55 = call i32 @vm_page_grab_pages(i32 %25, i64 %34, i32 %41, i32* %49, i32 %54)
  %56 = load i32, i32* %7, align 4
  %57 = call i32 @VM_OBJECT_WUNLOCK(i32 %56)
  %58 = load i32, i32* %5, align 4
  %59 = load %struct.buf*, %struct.buf** %4, align 8
  %60 = getelementptr inbounds %struct.buf, %struct.buf* %59, i32 0, i32 0
  store i32 %58, i32* %60, align 8
  br label %61

61:                                               ; preds = %22, %3
  %62 = load %struct.buf*, %struct.buf** %4, align 8
  %63 = getelementptr inbounds %struct.buf, %struct.buf* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 8
  store i32 %64, i32* %8, align 4
  %65 = load i32, i32* @PAGE_SIZE, align 4
  %66 = load %struct.buf*, %struct.buf** %4, align 8
  %67 = getelementptr inbounds %struct.buf, %struct.buf* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* %8, align 4
  %70 = add nsw i32 %68, %69
  %71 = load i32, i32* @PAGE_MASK, align 4
  %72 = and i32 %70, %71
  %73 = sub nsw i32 %65, %72
  store i32 %73, i32* %9, align 4
  br label %74

74:                                               ; preds = %97, %61
  %75 = load %struct.buf*, %struct.buf** %4, align 8
  %76 = getelementptr inbounds %struct.buf, %struct.buf* %75, i32 0, i32 3
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* @B_CACHE, align 4
  %79 = and i32 %77, %78
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %85

81:                                               ; preds = %74
  %82 = load i32, i32* %8, align 4
  %83 = load i32, i32* %6, align 4
  %84 = icmp slt i32 %82, %83
  br label %85

85:                                               ; preds = %81, %74
  %86 = phi i1 [ false, %74 ], [ %84, %81 ]
  br i1 %86, label %87, label %126

87:                                               ; preds = %85
  %88 = load i32, i32* %9, align 4
  %89 = load i32, i32* %6, align 4
  %90 = load i32, i32* %8, align 4
  %91 = sub nsw i32 %89, %90
  %92 = icmp sgt i32 %88, %91
  br i1 %92, label %93, label %97

93:                                               ; preds = %87
  %94 = load i32, i32* %6, align 4
  %95 = load i32, i32* %8, align 4
  %96 = sub nsw i32 %94, %95
  store i32 %96, i32* %9, align 4
  br label %97

97:                                               ; preds = %93, %87
  %98 = load %struct.buf*, %struct.buf** %4, align 8
  %99 = getelementptr inbounds %struct.buf, %struct.buf* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = load i32, i32* @PAGE_MASK, align 4
  %102 = and i32 %100, %101
  %103 = load i32, i32* %8, align 4
  %104 = add nsw i32 %102, %103
  %105 = load i32, i32* @PAGE_SHIFT, align 4
  %106 = ashr i32 %104, %105
  %107 = sext i32 %106 to i64
  store i64 %107, i64* %11, align 8
  %108 = load %struct.buf*, %struct.buf** %4, align 8
  %109 = getelementptr inbounds %struct.buf, %struct.buf* %108, i32 0, i32 4
  %110 = load i32*, i32** %109, align 8
  %111 = load i64, i64* %11, align 8
  %112 = getelementptr inbounds i32, i32* %110, i64 %111
  %113 = load i32, i32* %112, align 4
  store i32 %113, i32* %10, align 4
  %114 = load %struct.buf*, %struct.buf** %4, align 8
  %115 = load %struct.buf*, %struct.buf** %4, align 8
  %116 = getelementptr inbounds %struct.buf, %struct.buf* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  %118 = load i32, i32* %8, align 4
  %119 = load i32, i32* %9, align 4
  %120 = load i32, i32* %10, align 4
  %121 = call i32 @vfs_buf_test_cache(%struct.buf* %114, i32 %117, i32 %118, i32 %119, i32 %120)
  %122 = load i32, i32* %9, align 4
  %123 = load i32, i32* %8, align 4
  %124 = add nsw i32 %123, %122
  store i32 %124, i32* %8, align 4
  %125 = load i32, i32* @PAGE_SIZE, align 4
  store i32 %125, i32* %9, align 4
  br label %74

126:                                              ; preds = %85
  %127 = load %struct.buf*, %struct.buf** %4, align 8
  %128 = call i64 @buf_mapped(%struct.buf* %127)
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %133

130:                                              ; preds = %126
  %131 = load %struct.buf*, %struct.buf** %4, align 8
  %132 = call i32 @bpmap_qenter(%struct.buf* %131)
  br label %136

133:                                              ; preds = %126
  %134 = load %struct.buf*, %struct.buf** %4, align 8
  %135 = call i32 @BUF_CHECK_UNMAPPED(%struct.buf* %134)
  br label %136

136:                                              ; preds = %133, %130
  ret void
}

declare dso_local i32 @VM_OBJECT_WLOCK(i32) #1

declare dso_local i32 @vm_page_grab_pages(i32, i64, i32, i32*, i32) #1

declare dso_local i64 @OFF_TO_IDX(i32) #1

declare dso_local i32 @VM_OBJECT_WUNLOCK(i32) #1

declare dso_local i32 @vfs_buf_test_cache(%struct.buf*, i32, i32, i32, i32) #1

declare dso_local i64 @buf_mapped(%struct.buf*) #1

declare dso_local i32 @bpmap_qenter(%struct.buf*) #1

declare dso_local i32 @BUF_CHECK_UNMAPPED(%struct.buf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
