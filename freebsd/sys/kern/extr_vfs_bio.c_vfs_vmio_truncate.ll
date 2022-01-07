; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_bio.c_vfs_vmio_truncate.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_bio.c_vfs_vmio_truncate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.buf = type { i32, i32, i64*, %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i32* }

@PAGE_SHIFT = common dso_local global i32 0, align 4
@B_NOREUSE = common dso_local global i32 0, align 4
@VPR_NOREUSE = common dso_local global i32 0, align 4
@B_DIRECT = common dso_local global i32 0, align 4
@VPR_TRYFREE = common dso_local global i32 0, align 4
@bogus_page = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [27 x i8] c"allocbuf: bogus page found\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.buf*, i32)* @vfs_vmio_truncate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vfs_vmio_truncate(%struct.buf* %0, i32 %1) #0 {
  %3 = alloca %struct.buf*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.buf* %0, %struct.buf** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.buf*, %struct.buf** %3, align 8
  %10 = getelementptr inbounds %struct.buf, %struct.buf* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* %4, align 4
  %13 = icmp eq i32 %11, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  br label %121

15:                                               ; preds = %2
  %16 = load %struct.buf*, %struct.buf** %3, align 8
  %17 = call i64 @buf_mapped(%struct.buf* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %37

19:                                               ; preds = %15
  %20 = load %struct.buf*, %struct.buf** %3, align 8
  %21 = call i32 @BUF_CHECK_MAPPED(%struct.buf* %20)
  %22 = load %struct.buf*, %struct.buf** %3, align 8
  %23 = getelementptr inbounds %struct.buf, %struct.buf* %22, i32 0, i32 4
  %24 = load i64, i64* %23, align 8
  %25 = call i64 @trunc_page(i64 %24)
  %26 = load i32, i32* %4, align 4
  %27 = load i32, i32* @PAGE_SHIFT, align 4
  %28 = shl i32 %26, %27
  %29 = sext i32 %28 to i64
  %30 = add nsw i64 %25, %29
  %31 = load %struct.buf*, %struct.buf** %3, align 8
  %32 = getelementptr inbounds %struct.buf, %struct.buf* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* %4, align 4
  %35 = sub nsw i32 %33, %34
  %36 = call i32 @pmap_qremove(i64 %30, i32 %35)
  br label %40

37:                                               ; preds = %15
  %38 = load %struct.buf*, %struct.buf** %3, align 8
  %39 = call i32 @BUF_CHECK_UNMAPPED(%struct.buf* %38)
  br label %40

40:                                               ; preds = %37, %19
  %41 = load %struct.buf*, %struct.buf** %3, align 8
  %42 = getelementptr inbounds %struct.buf, %struct.buf* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @B_NOREUSE, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %40
  %48 = load i32, i32* @VPR_NOREUSE, align 4
  br label %50

49:                                               ; preds = %40
  br label %50

50:                                               ; preds = %49, %47
  %51 = phi i32 [ %48, %47 ], [ 0, %49 ]
  store i32 %51, i32* %7, align 4
  %52 = load %struct.buf*, %struct.buf** %3, align 8
  %53 = getelementptr inbounds %struct.buf, %struct.buf* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @B_DIRECT, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %69

58:                                               ; preds = %50
  %59 = load i32, i32* @VPR_TRYFREE, align 4
  %60 = load i32, i32* %7, align 4
  %61 = or i32 %60, %59
  store i32 %61, i32* %7, align 4
  %62 = load %struct.buf*, %struct.buf** %3, align 8
  %63 = getelementptr inbounds %struct.buf, %struct.buf* %62, i32 0, i32 3
  %64 = load %struct.TYPE_2__*, %struct.TYPE_2__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 0
  %66 = load i32*, i32** %65, align 8
  store i32* %66, i32** %5, align 8
  %67 = load i32*, i32** %5, align 8
  %68 = call i32 @VM_OBJECT_WLOCK(i32* %67)
  br label %70

69:                                               ; preds = %50
  store i32* null, i32** %5, align 8
  br label %70

70:                                               ; preds = %69, %58
  %71 = load i32, i32* %4, align 4
  store i32 %71, i32* %8, align 4
  br label %72

72:                                               ; preds = %108, %70
  %73 = load i32, i32* %8, align 4
  %74 = load %struct.buf*, %struct.buf** %3, align 8
  %75 = getelementptr inbounds %struct.buf, %struct.buf* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = icmp slt i32 %73, %76
  br i1 %77, label %78, label %111

78:                                               ; preds = %72
  %79 = load %struct.buf*, %struct.buf** %3, align 8
  %80 = getelementptr inbounds %struct.buf, %struct.buf* %79, i32 0, i32 2
  %81 = load i64*, i64** %80, align 8
  %82 = load i32, i32* %8, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i64, i64* %81, i64 %83
  %85 = load i64, i64* %84, align 8
  store i64 %85, i64* %6, align 8
  %86 = load i64, i64* %6, align 8
  %87 = load i64, i64* @bogus_page, align 8
  %88 = icmp ne i64 %86, %87
  %89 = zext i1 %88 to i32
  %90 = call i32 @KASSERT(i32 %89, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %91 = load %struct.buf*, %struct.buf** %3, align 8
  %92 = getelementptr inbounds %struct.buf, %struct.buf* %91, i32 0, i32 2
  %93 = load i64*, i64** %92, align 8
  %94 = load i32, i32* %8, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i64, i64* %93, i64 %95
  store i64 0, i64* %96, align 8
  %97 = load i32*, i32** %5, align 8
  %98 = icmp ne i32* %97, null
  br i1 %98, label %99, label %103

99:                                               ; preds = %78
  %100 = load i64, i64* %6, align 8
  %101 = load i32, i32* %7, align 4
  %102 = call i32 @vm_page_release_locked(i64 %100, i32 %101)
  br label %107

103:                                              ; preds = %78
  %104 = load i64, i64* %6, align 8
  %105 = load i32, i32* %7, align 4
  %106 = call i32 @vm_page_release(i64 %104, i32 %105)
  br label %107

107:                                              ; preds = %103, %99
  br label %108

108:                                              ; preds = %107
  %109 = load i32, i32* %8, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %8, align 4
  br label %72

111:                                              ; preds = %72
  %112 = load i32*, i32** %5, align 8
  %113 = icmp ne i32* %112, null
  br i1 %113, label %114, label %117

114:                                              ; preds = %111
  %115 = load i32*, i32** %5, align 8
  %116 = call i32 @VM_OBJECT_WUNLOCK(i32* %115)
  br label %117

117:                                              ; preds = %114, %111
  %118 = load i32, i32* %4, align 4
  %119 = load %struct.buf*, %struct.buf** %3, align 8
  %120 = getelementptr inbounds %struct.buf, %struct.buf* %119, i32 0, i32 0
  store i32 %118, i32* %120, align 8
  br label %121

121:                                              ; preds = %117, %14
  ret void
}

declare dso_local i64 @buf_mapped(%struct.buf*) #1

declare dso_local i32 @BUF_CHECK_MAPPED(%struct.buf*) #1

declare dso_local i32 @pmap_qremove(i64, i32) #1

declare dso_local i64 @trunc_page(i64) #1

declare dso_local i32 @BUF_CHECK_UNMAPPED(%struct.buf*) #1

declare dso_local i32 @VM_OBJECT_WLOCK(i32*) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @vm_page_release_locked(i64, i32) #1

declare dso_local i32 @vm_page_release(i64, i32) #1

declare dso_local i32 @VM_OBJECT_WUNLOCK(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
