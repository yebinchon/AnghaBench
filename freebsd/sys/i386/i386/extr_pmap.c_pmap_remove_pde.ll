; ModuleID = '/home/carl/AnghaBench/freebsd/sys/i386/i386/extr_pmap.c_pmap_remove_pde.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/i386/i386/extr_pmap.c_pmap_remove_pde.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { %struct.TYPE_19__ }
%struct.TYPE_19__ = type { i32, i64 }
%struct.spglist = type { i32 }
%struct.md_page = type { i32 }
%struct.TYPE_20__ = type { i64, i64, %struct.TYPE_18__ }
%struct.TYPE_18__ = type { i32 }

@MA_OWNED = common dso_local global i32 0, align 4
@PDRMASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"pmap_remove_pde: sva is not 4mpage aligned\00", align 1
@PG_W = common dso_local global i32 0, align 4
@NBPDR = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@PG_G = common dso_local global i32 0, align 4
@kernel_pmap = common dso_local global %struct.TYPE_21__* null, align 8
@PG_MANAGED = common dso_local global i32 0, align 4
@PG_PS_FRAME = common dso_local global i32 0, align 4
@PG_M = common dso_local global i32 0, align 4
@PG_RW = common dso_local global i32 0, align 4
@PG_A = common dso_local global i32 0, align 4
@PGA_REFERENCED = common dso_local global i32 0, align 4
@PGA_WRITEABLE = common dso_local global i32 0, align 4
@VM_PAGE_BITS_ALL = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [39 x i8] c"pmap_remove_pde: pte page not promoted\00", align 1
@NPTEPG = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [42 x i8] c"pmap_remove_pde: pte page ref count error\00", align 1
@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_21__*, i32*, i32, %struct.spglist*)* @pmap_remove_pde to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pmap_remove_pde(%struct.TYPE_21__* %0, i32* %1, i32 %2, %struct.spglist* %3) #0 {
  %5 = alloca %struct.TYPE_21__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.spglist*, align 8
  %9 = alloca %struct.md_page*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_20__*, align 8
  %14 = alloca %struct.TYPE_20__*, align 8
  store %struct.TYPE_21__* %0, %struct.TYPE_21__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.spglist* %3, %struct.spglist** %8, align 8
  %15 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %16 = load i32, i32* @MA_OWNED, align 4
  %17 = call i32 @PMAP_LOCK_ASSERT(%struct.TYPE_21__* %15, i32 %16)
  %18 = load i32, i32* %7, align 4
  %19 = load i32, i32* @PDRMASK, align 4
  %20 = and i32 %18, %19
  %21 = icmp eq i32 %20, 0
  %22 = zext i1 %21 to i32
  %23 = call i32 @KASSERT(i32 %22, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  %24 = load i32*, i32** %6, align 8
  %25 = call i32 @pte_load_clear(i32* %24)
  store i32 %25, i32* %10, align 4
  %26 = load i32, i32* %10, align 4
  %27 = load i32, i32* @PG_W, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %39

30:                                               ; preds = %4
  %31 = load i32, i32* @NBPDR, align 4
  %32 = load i32, i32* @PAGE_SIZE, align 4
  %33 = sdiv i32 %31, %32
  %34 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = sub nsw i32 %37, %33
  store i32 %38, i32* %36, align 8
  br label %39

39:                                               ; preds = %30, %4
  %40 = load i32, i32* %10, align 4
  %41 = load i32, i32* @PG_G, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %39
  %45 = load %struct.TYPE_21__*, %struct.TYPE_21__** @kernel_pmap, align 8
  %46 = load i32, i32* %7, align 4
  %47 = load i32, i32* %10, align 4
  %48 = call i32 @pmap_invalidate_pde_page(%struct.TYPE_21__* %45, i32 %46, i32 %47)
  br label %49

49:                                               ; preds = %44, %39
  %50 = load i32, i32* @NBPDR, align 4
  %51 = load i32, i32* @PAGE_SIZE, align 4
  %52 = sdiv i32 %50, %51
  %53 = sext i32 %52 to i64
  %54 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %55 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = sub nsw i64 %57, %53
  store i64 %58, i64* %56, align 8
  %59 = load i32, i32* %10, align 4
  %60 = load i32, i32* @PG_MANAGED, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %129

63:                                               ; preds = %49
  %64 = load i32, i32* %10, align 4
  %65 = load i32, i32* @PG_PS_FRAME, align 4
  %66 = and i32 %64, %65
  %67 = call %struct.md_page* @pa_to_pvh(i32 %66)
  store %struct.md_page* %67, %struct.md_page** %9, align 8
  %68 = load %struct.md_page*, %struct.md_page** %9, align 8
  %69 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %70 = load i32, i32* %7, align 4
  %71 = call i32 @pmap_pvh_free(%struct.md_page* %68, %struct.TYPE_21__* %69, i32 %70)
  %72 = load i32, i32* %7, align 4
  %73 = load i32, i32* @NBPDR, align 4
  %74 = add nsw i32 %72, %73
  store i32 %74, i32* %11, align 4
  %75 = load i32, i32* %7, align 4
  store i32 %75, i32* %12, align 4
  %76 = load i32, i32* %10, align 4
  %77 = load i32, i32* @PG_PS_FRAME, align 4
  %78 = and i32 %76, %77
  %79 = call %struct.TYPE_20__* @PHYS_TO_VM_PAGE(i32 %78)
  store %struct.TYPE_20__* %79, %struct.TYPE_20__** %13, align 8
  br label %80

80:                                               ; preds = %122, %63
  %81 = load i32, i32* %12, align 4
  %82 = load i32, i32* %11, align 4
  %83 = icmp slt i32 %81, %82
  br i1 %83, label %84, label %128

84:                                               ; preds = %80
  %85 = load i32, i32* %10, align 4
  %86 = load i32, i32* @PG_M, align 4
  %87 = load i32, i32* @PG_RW, align 4
  %88 = or i32 %86, %87
  %89 = and i32 %85, %88
  %90 = load i32, i32* @PG_M, align 4
  %91 = load i32, i32* @PG_RW, align 4
  %92 = or i32 %90, %91
  %93 = icmp eq i32 %89, %92
  br i1 %93, label %94, label %97

94:                                               ; preds = %84
  %95 = load %struct.TYPE_20__*, %struct.TYPE_20__** %13, align 8
  %96 = call i32 @vm_page_dirty(%struct.TYPE_20__* %95)
  br label %97

97:                                               ; preds = %94, %84
  %98 = load i32, i32* %10, align 4
  %99 = load i32, i32* @PG_A, align 4
  %100 = and i32 %98, %99
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %106

102:                                              ; preds = %97
  %103 = load %struct.TYPE_20__*, %struct.TYPE_20__** %13, align 8
  %104 = load i32, i32* @PGA_REFERENCED, align 4
  %105 = call i32 @vm_page_aflag_set(%struct.TYPE_20__* %103, i32 %104)
  br label %106

106:                                              ; preds = %102, %97
  %107 = load %struct.TYPE_20__*, %struct.TYPE_20__** %13, align 8
  %108 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %107, i32 0, i32 2
  %109 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %108, i32 0, i32 0
  %110 = call i64 @TAILQ_EMPTY(i32* %109)
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %121

112:                                              ; preds = %106
  %113 = load %struct.md_page*, %struct.md_page** %9, align 8
  %114 = getelementptr inbounds %struct.md_page, %struct.md_page* %113, i32 0, i32 0
  %115 = call i64 @TAILQ_EMPTY(i32* %114)
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %121

117:                                              ; preds = %112
  %118 = load %struct.TYPE_20__*, %struct.TYPE_20__** %13, align 8
  %119 = load i32, i32* @PGA_WRITEABLE, align 4
  %120 = call i32 @vm_page_aflag_clear(%struct.TYPE_20__* %118, i32 %119)
  br label %121

121:                                              ; preds = %117, %112, %106
  br label %122

122:                                              ; preds = %121
  %123 = load i32, i32* @PAGE_SIZE, align 4
  %124 = load i32, i32* %12, align 4
  %125 = add nsw i32 %124, %123
  store i32 %125, i32* %12, align 4
  %126 = load %struct.TYPE_20__*, %struct.TYPE_20__** %13, align 8
  %127 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %126, i32 1
  store %struct.TYPE_20__* %127, %struct.TYPE_20__** %13, align 8
  br label %80

128:                                              ; preds = %80
  br label %129

129:                                              ; preds = %128, %49
  %130 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %131 = load %struct.TYPE_21__*, %struct.TYPE_21__** @kernel_pmap, align 8
  %132 = icmp eq %struct.TYPE_21__* %130, %131
  br i1 %132, label %133, label %138

133:                                              ; preds = %129
  %134 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %135 = load i32*, i32** %6, align 8
  %136 = load i32, i32* %7, align 4
  %137 = call i32 @pmap_remove_kernel_pde(%struct.TYPE_21__* %134, i32* %135, i32 %136)
  br label %171

138:                                              ; preds = %129
  %139 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %140 = load i32, i32* %7, align 4
  %141 = call %struct.TYPE_20__* @pmap_remove_pt_page(%struct.TYPE_21__* %139, i32 %140)
  store %struct.TYPE_20__* %141, %struct.TYPE_20__** %14, align 8
  %142 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %143 = icmp ne %struct.TYPE_20__* %142, null
  br i1 %143, label %144, label %170

144:                                              ; preds = %138
  %145 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %146 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %145, i32 0, i32 0
  %147 = load i64, i64* %146, align 8
  %148 = load i64, i64* @VM_PAGE_BITS_ALL, align 8
  %149 = icmp eq i64 %147, %148
  %150 = zext i1 %149 to i32
  %151 = call i32 @KASSERT(i32 %150, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  %152 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %153 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %152, i32 0, i32 0
  %154 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %153, i32 0, i32 1
  %155 = load i64, i64* %154, align 8
  %156 = add nsw i64 %155, -1
  store i64 %156, i64* %154, align 8
  %157 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %158 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %157, i32 0, i32 1
  %159 = load i64, i64* %158, align 8
  %160 = load i64, i64* @NPTEPG, align 8
  %161 = icmp eq i64 %159, %160
  %162 = zext i1 %161 to i32
  %163 = call i32 @KASSERT(i32 %162, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0))
  %164 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %165 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %164, i32 0, i32 1
  store i64 0, i64* %165, align 8
  %166 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %167 = load %struct.spglist*, %struct.spglist** %8, align 8
  %168 = load i32, i32* @FALSE, align 4
  %169 = call i32 @pmap_add_delayed_free_list(%struct.TYPE_20__* %166, %struct.spglist* %167, i32 %168)
  br label %170

170:                                              ; preds = %144, %138
  br label %171

171:                                              ; preds = %170, %133
  ret void
}

declare dso_local i32 @PMAP_LOCK_ASSERT(%struct.TYPE_21__*, i32) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @pte_load_clear(i32*) #1

declare dso_local i32 @pmap_invalidate_pde_page(%struct.TYPE_21__*, i32, i32) #1

declare dso_local %struct.md_page* @pa_to_pvh(i32) #1

declare dso_local i32 @pmap_pvh_free(%struct.md_page*, %struct.TYPE_21__*, i32) #1

declare dso_local %struct.TYPE_20__* @PHYS_TO_VM_PAGE(i32) #1

declare dso_local i32 @vm_page_dirty(%struct.TYPE_20__*) #1

declare dso_local i32 @vm_page_aflag_set(%struct.TYPE_20__*, i32) #1

declare dso_local i64 @TAILQ_EMPTY(i32*) #1

declare dso_local i32 @vm_page_aflag_clear(%struct.TYPE_20__*, i32) #1

declare dso_local i32 @pmap_remove_kernel_pde(%struct.TYPE_21__*, i32*, i32) #1

declare dso_local %struct.TYPE_20__* @pmap_remove_pt_page(%struct.TYPE_21__*, i32) #1

declare dso_local i32 @pmap_add_delayed_free_list(%struct.TYPE_20__*, %struct.spglist*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
