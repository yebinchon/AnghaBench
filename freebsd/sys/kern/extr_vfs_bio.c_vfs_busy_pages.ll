; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_bio.c_vfs_busy_pages.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_bio.c_vfs_busy_pages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.buf = type { i32, i32, i32, i64, i32*, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@B_VMIO = common dso_local global i32 0, align 4
@NOOFFSET = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [33 x i8] c"vfs_busy_pages: no buffer offset\00", align 1
@B_CLUSTER = common dso_local global i32 0, align 4
@B_CACHE = common dso_local global i32 0, align 4
@bogus_page = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@PAGE_MASK = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vfs_busy_pages(%struct.buf* %0, i32 %1) #0 {
  %3 = alloca %struct.buf*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.buf* %0, %struct.buf** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load %struct.buf*, %struct.buf** %3, align 8
  %11 = getelementptr inbounds %struct.buf, %struct.buf* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* @B_VMIO, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %2
  br label %135

17:                                               ; preds = %2
  %18 = load %struct.buf*, %struct.buf** %3, align 8
  %19 = getelementptr inbounds %struct.buf, %struct.buf* %18, i32 0, i32 6
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %5, align 4
  %23 = load %struct.buf*, %struct.buf** %3, align 8
  %24 = getelementptr inbounds %struct.buf, %struct.buf* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %6, align 4
  %26 = load %struct.buf*, %struct.buf** %3, align 8
  %27 = getelementptr inbounds %struct.buf, %struct.buf* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = sext i32 %28 to i64
  %30 = load i64, i64* @NOOFFSET, align 8
  %31 = icmp ne i64 %29, %30
  %32 = zext i1 %31 to i32
  %33 = call i32 @KASSERT(i32 %32, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %34 = load %struct.buf*, %struct.buf** %3, align 8
  %35 = getelementptr inbounds %struct.buf, %struct.buf* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* @B_CLUSTER, align 4
  %38 = and i32 %36, %37
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %48

40:                                               ; preds = %17
  %41 = load i32, i32* %5, align 4
  %42 = load %struct.buf*, %struct.buf** %3, align 8
  %43 = getelementptr inbounds %struct.buf, %struct.buf* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @vm_object_pip_add(i32 %41, i32 %44)
  %46 = load %struct.buf*, %struct.buf** %3, align 8
  %47 = call i32 @vfs_busy_pages_acquire(%struct.buf* %46)
  br label %48

48:                                               ; preds = %40, %17
  %49 = load %struct.buf*, %struct.buf** %3, align 8
  %50 = getelementptr inbounds %struct.buf, %struct.buf* %49, i32 0, i32 3
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %48
  %54 = load %struct.buf*, %struct.buf** %3, align 8
  %55 = call i32 @vfs_setdirty_range(%struct.buf* %54)
  br label %56

56:                                               ; preds = %53, %48
  store i32 0, i32* %9, align 4
  store i32 0, i32* %8, align 4
  br label %57

57:                                               ; preds = %110, %56
  %58 = load i32, i32* %8, align 4
  %59 = load %struct.buf*, %struct.buf** %3, align 8
  %60 = getelementptr inbounds %struct.buf, %struct.buf* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 8
  %62 = icmp slt i32 %58, %61
  br i1 %62, label %63, label %113

63:                                               ; preds = %57
  %64 = load %struct.buf*, %struct.buf** %3, align 8
  %65 = getelementptr inbounds %struct.buf, %struct.buf* %64, i32 0, i32 4
  %66 = load i32*, i32** %65, align 8
  %67 = load i32, i32* %8, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i32, i32* %66, i64 %68
  %70 = load i32, i32* %69, align 4
  store i32 %70, i32* %7, align 4
  %71 = load i32, i32* %7, align 4
  %72 = call i32 @vm_page_assert_sbusied(i32 %71)
  %73 = load i32, i32* %4, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %82

75:                                               ; preds = %63
  %76 = load i32, i32* %7, align 4
  %77 = call i32 @pmap_remove_write(i32 %76)
  %78 = load %struct.buf*, %struct.buf** %3, align 8
  %79 = load i32, i32* %6, align 4
  %80 = load i32, i32* %7, align 4
  %81 = call i32 @vfs_page_set_validclean(%struct.buf* %78, i32 %79, i32 %80)
  br label %102

82:                                               ; preds = %63
  %83 = load i32, i32* %7, align 4
  %84 = call i64 @vm_page_all_valid(i32 %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %101

86:                                               ; preds = %82
  %87 = load %struct.buf*, %struct.buf** %3, align 8
  %88 = getelementptr inbounds %struct.buf, %struct.buf* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = load i32, i32* @B_CACHE, align 4
  %91 = and i32 %89, %90
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %93, label %101

93:                                               ; preds = %86
  %94 = load i32, i32* @bogus_page, align 4
  %95 = load %struct.buf*, %struct.buf** %3, align 8
  %96 = getelementptr inbounds %struct.buf, %struct.buf* %95, i32 0, i32 4
  %97 = load i32*, i32** %96, align 8
  %98 = load i32, i32* %8, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i32, i32* %97, i64 %99
  store i32 %94, i32* %100, align 4
  store i32 1, i32* %9, align 4
  br label %101

101:                                              ; preds = %93, %86, %82
  br label %102

102:                                              ; preds = %101, %75
  %103 = load i32, i32* %6, align 4
  %104 = load i32, i32* @PAGE_SIZE, align 4
  %105 = add nsw i32 %103, %104
  %106 = load i64, i64* @PAGE_MASK, align 8
  %107 = trunc i64 %106 to i32
  %108 = xor i32 %107, -1
  %109 = and i32 %105, %108
  store i32 %109, i32* %6, align 4
  br label %110

110:                                              ; preds = %102
  %111 = load i32, i32* %8, align 4
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %8, align 4
  br label %57

113:                                              ; preds = %57
  %114 = load i32, i32* %9, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %135

116:                                              ; preds = %113
  %117 = load %struct.buf*, %struct.buf** %3, align 8
  %118 = call i64 @buf_mapped(%struct.buf* %117)
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %135

120:                                              ; preds = %116
  %121 = load %struct.buf*, %struct.buf** %3, align 8
  %122 = call i32 @BUF_CHECK_MAPPED(%struct.buf* %121)
  %123 = load %struct.buf*, %struct.buf** %3, align 8
  %124 = getelementptr inbounds %struct.buf, %struct.buf* %123, i32 0, i32 5
  %125 = load i64, i64* %124, align 8
  %126 = trunc i64 %125 to i32
  %127 = call i32 @trunc_page(i32 %126)
  %128 = load %struct.buf*, %struct.buf** %3, align 8
  %129 = getelementptr inbounds %struct.buf, %struct.buf* %128, i32 0, i32 4
  %130 = load i32*, i32** %129, align 8
  %131 = load %struct.buf*, %struct.buf** %3, align 8
  %132 = getelementptr inbounds %struct.buf, %struct.buf* %131, i32 0, i32 2
  %133 = load i32, i32* %132, align 8
  %134 = call i32 @pmap_qenter(i32 %127, i32* %130, i32 %133)
  br label %135

135:                                              ; preds = %16, %120, %116, %113
  ret void
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @vm_object_pip_add(i32, i32) #1

declare dso_local i32 @vfs_busy_pages_acquire(%struct.buf*) #1

declare dso_local i32 @vfs_setdirty_range(%struct.buf*) #1

declare dso_local i32 @vm_page_assert_sbusied(i32) #1

declare dso_local i32 @pmap_remove_write(i32) #1

declare dso_local i32 @vfs_page_set_validclean(%struct.buf*, i32, i32) #1

declare dso_local i64 @vm_page_all_valid(i32) #1

declare dso_local i64 @buf_mapped(%struct.buf*) #1

declare dso_local i32 @BUF_CHECK_MAPPED(%struct.buf*) #1

declare dso_local i32 @pmap_qenter(i32, i32*, i32) #1

declare dso_local i32 @trunc_page(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
