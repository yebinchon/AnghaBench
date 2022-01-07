; ModuleID = '/home/carl/AnghaBench/freebsd/sys/riscv/riscv/extr_pmap.c_pmap_remove_pages_pv.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/riscv/riscv/extr_pmap.c_pmap_remove_pages_pv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i64, i64, i32, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_12__ = type { i32 }
%struct.spglist = type { i32 }
%struct.md_page = type { i32, i32 }

@Ln_ENTRIES = common dso_local global i64 0, align 8
@pv_next = common dso_local global i32 0, align 4
@PGA_WRITEABLE = common dso_local global i32 0, align 4
@VM_PAGE_BITS_ALL = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [41 x i8] c"pmap_remove_pages: pte page not promoted\00", align 1
@.str.1 = private unnamed_addr constant [44 x i8] c"pmap_remove_pages: pte page ref count error\00", align 1
@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.TYPE_11__*, %struct.TYPE_12__*, %struct.spglist*, i32)* @pmap_remove_pages_pv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pmap_remove_pages_pv(i32 %0, %struct.TYPE_11__* %1, %struct.TYPE_12__* %2, %struct.spglist* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_11__*, align 8
  %8 = alloca %struct.TYPE_12__*, align 8
  %9 = alloca %struct.spglist*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.md_page*, align 8
  %12 = alloca %struct.TYPE_11__*, align 8
  %13 = alloca %struct.TYPE_11__*, align 8
  store i32 %0, i32* %6, align 4
  store %struct.TYPE_11__* %1, %struct.TYPE_11__** %7, align 8
  store %struct.TYPE_12__* %2, %struct.TYPE_12__** %8, align 8
  store %struct.spglist* %3, %struct.spglist** %9, align 8
  store i32 %4, i32* %10, align 4
  %14 = load i32, i32* %10, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %100

16:                                               ; preds = %5
  %17 = load i32, i32* %6, align 4
  %18 = load i64, i64* @Ln_ENTRIES, align 8
  %19 = trunc i64 %18 to i32
  %20 = call i32 @pmap_resident_count_dec(i32 %17, i32 %19)
  %21 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %22 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 8
  %24 = call %struct.md_page* @pa_to_pvh(i32 %23)
  store %struct.md_page* %24, %struct.md_page** %11, align 8
  %25 = load %struct.md_page*, %struct.md_page** %11, align 8
  %26 = getelementptr inbounds %struct.md_page, %struct.md_page* %25, i32 0, i32 0
  %27 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %28 = load i32, i32* @pv_next, align 4
  %29 = call i32 @TAILQ_REMOVE(i32* %26, %struct.TYPE_12__* %27, i32 %28)
  %30 = load %struct.md_page*, %struct.md_page** %11, align 8
  %31 = getelementptr inbounds %struct.md_page, %struct.md_page* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %31, align 4
  %34 = load %struct.md_page*, %struct.md_page** %11, align 8
  %35 = getelementptr inbounds %struct.md_page, %struct.md_page* %34, i32 0, i32 0
  %36 = call i64 @TAILQ_EMPTY(i32* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %68

38:                                               ; preds = %16
  %39 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  store %struct.TYPE_11__* %39, %struct.TYPE_11__** %13, align 8
  br label %40

40:                                               ; preds = %64, %38
  %41 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %42 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %43 = load i64, i64* @Ln_ENTRIES, align 8
  %44 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %42, i64 %43
  %45 = icmp ult %struct.TYPE_11__* %41, %44
  br i1 %45, label %46, label %67

46:                                               ; preds = %40
  %47 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %48 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %47, i32 0, i32 4
  %49 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %48, i32 0, i32 0
  %50 = call i64 @TAILQ_EMPTY(i32* %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %63

52:                                               ; preds = %46
  %53 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %54 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* @PGA_WRITEABLE, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %63

59:                                               ; preds = %52
  %60 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %61 = load i32, i32* @PGA_WRITEABLE, align 4
  %62 = call i32 @vm_page_aflag_clear(%struct.TYPE_11__* %60, i32 %61)
  br label %63

63:                                               ; preds = %59, %52, %46
  br label %64

64:                                               ; preds = %63
  %65 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %66 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %65, i32 1
  store %struct.TYPE_11__* %66, %struct.TYPE_11__** %13, align 8
  br label %40

67:                                               ; preds = %40
  br label %68

68:                                               ; preds = %67, %16
  %69 = load i32, i32* %6, align 4
  %70 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %71 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = call %struct.TYPE_11__* @pmap_remove_pt_page(i32 %69, i32 %72)
  store %struct.TYPE_11__* %73, %struct.TYPE_11__** %12, align 8
  %74 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %75 = icmp ne %struct.TYPE_11__* %74, null
  br i1 %75, label %76, label %99

76:                                               ; preds = %68
  %77 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %78 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %77, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* @VM_PAGE_BITS_ALL, align 8
  %81 = icmp eq i64 %79, %80
  %82 = zext i1 %81 to i32
  %83 = call i32 @KASSERT(i32 %82, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  %84 = load i32, i32* %6, align 4
  %85 = call i32 @pmap_resident_count_dec(i32 %84, i32 1)
  %86 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %87 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %86, i32 0, i32 2
  %88 = load i64, i64* %87, align 8
  %89 = load i64, i64* @Ln_ENTRIES, align 8
  %90 = icmp eq i64 %88, %89
  %91 = zext i1 %90 to i32
  %92 = call i32 @KASSERT(i32 %91, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0))
  %93 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %94 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %93, i32 0, i32 2
  store i64 0, i64* %94, align 8
  %95 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %96 = load %struct.spglist*, %struct.spglist** %9, align 8
  %97 = load i32, i32* @FALSE, align 4
  %98 = call i32 @pmap_add_delayed_free_list(%struct.TYPE_11__* %95, %struct.spglist* %96, i32 %97)
  br label %99

99:                                               ; preds = %76, %68
  br label %141

100:                                              ; preds = %5
  %101 = load i32, i32* %6, align 4
  %102 = call i32 @pmap_resident_count_dec(i32 %101, i32 1)
  %103 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %104 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %103, i32 0, i32 4
  %105 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %104, i32 0, i32 0
  %106 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %107 = load i32, i32* @pv_next, align 4
  %108 = call i32 @TAILQ_REMOVE(i32* %105, %struct.TYPE_12__* %106, i32 %107)
  %109 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %110 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %109, i32 0, i32 4
  %111 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %111, align 4
  %114 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %115 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %114, i32 0, i32 4
  %116 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %115, i32 0, i32 0
  %117 = call i64 @TAILQ_EMPTY(i32* %116)
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %140

119:                                              ; preds = %100
  %120 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %121 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = load i32, i32* @PGA_WRITEABLE, align 4
  %124 = and i32 %122, %123
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %140

126:                                              ; preds = %119
  %127 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %128 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %127, i32 0, i32 3
  %129 = load i32, i32* %128, align 8
  %130 = call %struct.md_page* @pa_to_pvh(i32 %129)
  store %struct.md_page* %130, %struct.md_page** %11, align 8
  %131 = load %struct.md_page*, %struct.md_page** %11, align 8
  %132 = getelementptr inbounds %struct.md_page, %struct.md_page* %131, i32 0, i32 0
  %133 = call i64 @TAILQ_EMPTY(i32* %132)
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %139

135:                                              ; preds = %126
  %136 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %137 = load i32, i32* @PGA_WRITEABLE, align 4
  %138 = call i32 @vm_page_aflag_clear(%struct.TYPE_11__* %136, i32 %137)
  br label %139

139:                                              ; preds = %135, %126
  br label %140

140:                                              ; preds = %139, %119, %100
  br label %141

141:                                              ; preds = %140, %99
  ret void
}

declare dso_local i32 @pmap_resident_count_dec(i32, i32) #1

declare dso_local %struct.md_page* @pa_to_pvh(i32) #1

declare dso_local i32 @TAILQ_REMOVE(i32*, %struct.TYPE_12__*, i32) #1

declare dso_local i64 @TAILQ_EMPTY(i32*) #1

declare dso_local i32 @vm_page_aflag_clear(%struct.TYPE_11__*, i32) #1

declare dso_local %struct.TYPE_11__* @pmap_remove_pt_page(i32, i32) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @pmap_add_delayed_free_list(%struct.TYPE_11__*, %struct.spglist*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
