; ModuleID = '/home/carl/AnghaBench/freebsd/sys/sparc64/sparc64/extr_pmap.c_pmap_kenter.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/sparc64/sparc64/extr_pmap.c_pmap_kenter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_9__, i32, %struct.TYPE_11__* }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_11__ = type { i32 }
%struct.tte = type { i64, i32 }

@tte_list_global_lock = common dso_local global i32 0, align 4
@RA_WLOCKED = common dso_local global i32 0, align 4
@pmap_nkenter = common dso_local global i32 0, align 4
@KTR_PMAP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"pmap_kenter: va=%#lx pa=%#lx tp=%p data=%#lx\00", align 1
@KTR_SPARE2 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [58 x i8] c"pmap_kenter: off color va=%#lx pa=%#lx o=%p ot=%d pi=%#lx\00", align 1
@pmap_nkenter_oc = common dso_local global i32 0, align 4
@TD_V = common dso_local global i64 0, align 8
@pmap_nkenter_stupid = common dso_local global i32 0, align 4
@tte_link = common dso_local global i32 0, align 4
@kernel_pmap = common dso_local global i32 0, align 4
@TD_8K = common dso_local global i64 0, align 8
@TD_REF = common dso_local global i64 0, align 8
@TD_SW = common dso_local global i64 0, align 8
@TD_CP = common dso_local global i64 0, align 8
@TD_P = common dso_local global i64 0, align 8
@TD_W = common dso_local global i64 0, align 8
@TD_CV = common dso_local global i64 0, align 8
@TS_8K = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pmap_kenter(i64 %0, %struct.TYPE_10__* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.tte*, align 8
  %7 = alloca %struct.TYPE_10__*, align 8
  %8 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %4, align 8
  %9 = load i32, i32* @RA_WLOCKED, align 4
  %10 = call i32 @rw_assert(i32* @tte_list_global_lock, i32 %9)
  %11 = load i32, i32* @pmap_nkenter, align 4
  %12 = call i32 @PMAP_STATS_INC(i32 %11)
  %13 = load i64, i64* %3, align 8
  %14 = call %struct.tte* @tsb_kvtotte(i64 %13)
  store %struct.tte* %14, %struct.tte** %6, align 8
  %15 = load i32, i32* @KTR_PMAP, align 4
  %16 = load i64, i64* %3, align 8
  %17 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %18 = call i64 @VM_PAGE_TO_PHYS(%struct.TYPE_10__* %17)
  %19 = load %struct.tte*, %struct.tte** %6, align 8
  %20 = load %struct.tte*, %struct.tte** %6, align 8
  %21 = getelementptr inbounds %struct.tte, %struct.tte* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = call i32 @CTR4(i32 %15, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i64 %16, i64 %18, %struct.tte* %19, i64 %22)
  %24 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %25 = call i64 @VM_PAGE_TO_PHYS(%struct.TYPE_10__* %24)
  %26 = call i64 @DCACHE_COLOR(i64 %25)
  %27 = load i64, i64* %3, align 8
  %28 = call i64 @DCACHE_COLOR(i64 %27)
  %29 = icmp ne i64 %26, %28
  br i1 %29, label %30, label %57

30:                                               ; preds = %2
  %31 = load i32, i32* @KTR_SPARE2, align 4
  %32 = load i64, i64* %3, align 8
  %33 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %34 = call i64 @VM_PAGE_TO_PHYS(%struct.TYPE_10__* %33)
  %35 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %35, i32 0, i32 2
  %37 = load %struct.TYPE_11__*, %struct.TYPE_11__** %36, align 8
  %38 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %38, i32 0, i32 2
  %40 = load %struct.TYPE_11__*, %struct.TYPE_11__** %39, align 8
  %41 = icmp ne %struct.TYPE_11__* %40, null
  br i1 %41, label %42, label %48

42:                                               ; preds = %30
  %43 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %43, i32 0, i32 2
  %45 = load %struct.TYPE_11__*, %struct.TYPE_11__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  br label %49

48:                                               ; preds = %30
  br label %49

49:                                               ; preds = %48, %42
  %50 = phi i32 [ %47, %42 ], [ -1, %48 ]
  %51 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %52 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @CTR5(i32 %31, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.1, i64 0, i64 0), i64 %32, i64 %34, %struct.TYPE_11__* %37, i32 %50, i32 %53)
  %55 = load i32, i32* @pmap_nkenter_oc, align 4
  %56 = call i32 @PMAP_STATS_INC(i32 %55)
  br label %57

57:                                               ; preds = %49, %2
  %58 = load %struct.tte*, %struct.tte** %6, align 8
  %59 = getelementptr inbounds %struct.tte, %struct.tte* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @TD_V, align 8
  %62 = and i64 %60, %61
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %98

64:                                               ; preds = %57
  %65 = load %struct.tte*, %struct.tte** %6, align 8
  %66 = call i32 @TTE_GET_PA(%struct.tte* %65)
  %67 = call %struct.TYPE_10__* @PHYS_TO_VM_PAGE(i32 %66)
  store %struct.TYPE_10__* %67, %struct.TYPE_10__** %7, align 8
  %68 = load %struct.tte*, %struct.tte** %6, align 8
  %69 = call i64 @TTE_GET_VA(%struct.tte* %68)
  store i64 %69, i64* %5, align 8
  %70 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %71 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %72 = icmp eq %struct.TYPE_10__* %70, %71
  br i1 %72, label %73, label %80

73:                                               ; preds = %64
  %74 = load i64, i64* %3, align 8
  %75 = load i64, i64* %5, align 8
  %76 = icmp eq i64 %74, %75
  br i1 %76, label %77, label %80

77:                                               ; preds = %73
  %78 = load i32, i32* @pmap_nkenter_stupid, align 4
  %79 = call i32 @PMAP_STATS_INC(i32 %78)
  br label %138

80:                                               ; preds = %73, %64
  %81 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %82 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %82, i32 0, i32 0
  %84 = load %struct.tte*, %struct.tte** %6, align 8
  %85 = load i32, i32* @tte_link, align 4
  %86 = call i32 @TAILQ_REMOVE(i32* %83, %struct.tte* %84, i32 %85)
  %87 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %88 = load i64, i64* %5, align 8
  %89 = call i32 @pmap_cache_remove(%struct.TYPE_10__* %87, i64 %88)
  %90 = load i64, i64* %3, align 8
  %91 = load i64, i64* %5, align 8
  %92 = icmp ne i64 %90, %91
  br i1 %92, label %93, label %97

93:                                               ; preds = %80
  %94 = load i32, i32* @kernel_pmap, align 4
  %95 = load i64, i64* %5, align 8
  %96 = call i32 @tlb_page_demap(i32 %94, i64 %95)
  br label %97

97:                                               ; preds = %93, %80
  br label %98

98:                                               ; preds = %97, %57
  %99 = load i64, i64* @TD_V, align 8
  %100 = load i64, i64* @TD_8K, align 8
  %101 = or i64 %99, %100
  %102 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %103 = call i64 @VM_PAGE_TO_PHYS(%struct.TYPE_10__* %102)
  %104 = or i64 %101, %103
  %105 = load i64, i64* @TD_REF, align 8
  %106 = or i64 %104, %105
  %107 = load i64, i64* @TD_SW, align 8
  %108 = or i64 %106, %107
  %109 = load i64, i64* @TD_CP, align 8
  %110 = or i64 %108, %109
  %111 = load i64, i64* @TD_P, align 8
  %112 = or i64 %110, %111
  %113 = load i64, i64* @TD_W, align 8
  %114 = or i64 %112, %113
  store i64 %114, i64* %8, align 8
  %115 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %116 = load i64, i64* %3, align 8
  %117 = call i64 @pmap_cache_enter(%struct.TYPE_10__* %115, i64 %116)
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %123

119:                                              ; preds = %98
  %120 = load i64, i64* @TD_CV, align 8
  %121 = load i64, i64* %8, align 8
  %122 = or i64 %121, %120
  store i64 %122, i64* %8, align 8
  br label %123

123:                                              ; preds = %119, %98
  %124 = load i64, i64* %3, align 8
  %125 = load i32, i32* @TS_8K, align 4
  %126 = call i32 @TV_VPN(i64 %124, i32 %125)
  %127 = load %struct.tte*, %struct.tte** %6, align 8
  %128 = getelementptr inbounds %struct.tte, %struct.tte* %127, i32 0, i32 1
  store i32 %126, i32* %128, align 8
  %129 = load i64, i64* %8, align 8
  %130 = load %struct.tte*, %struct.tte** %6, align 8
  %131 = getelementptr inbounds %struct.tte, %struct.tte* %130, i32 0, i32 0
  store i64 %129, i64* %131, align 8
  %132 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %133 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %132, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %133, i32 0, i32 0
  %135 = load %struct.tte*, %struct.tte** %6, align 8
  %136 = load i32, i32* @tte_link, align 4
  %137 = call i32 @TAILQ_INSERT_TAIL(i32* %134, %struct.tte* %135, i32 %136)
  br label %138

138:                                              ; preds = %123, %77
  ret void
}

declare dso_local i32 @rw_assert(i32*, i32) #1

declare dso_local i32 @PMAP_STATS_INC(i32) #1

declare dso_local %struct.tte* @tsb_kvtotte(i64) #1

declare dso_local i32 @CTR4(i32, i8*, i64, i64, %struct.tte*, i64) #1

declare dso_local i64 @VM_PAGE_TO_PHYS(%struct.TYPE_10__*) #1

declare dso_local i64 @DCACHE_COLOR(i64) #1

declare dso_local i32 @CTR5(i32, i8*, i64, i64, %struct.TYPE_11__*, i32, i32) #1

declare dso_local %struct.TYPE_10__* @PHYS_TO_VM_PAGE(i32) #1

declare dso_local i32 @TTE_GET_PA(%struct.tte*) #1

declare dso_local i64 @TTE_GET_VA(%struct.tte*) #1

declare dso_local i32 @TAILQ_REMOVE(i32*, %struct.tte*, i32) #1

declare dso_local i32 @pmap_cache_remove(%struct.TYPE_10__*, i64) #1

declare dso_local i32 @tlb_page_demap(i32, i64) #1

declare dso_local i64 @pmap_cache_enter(%struct.TYPE_10__*, i64) #1

declare dso_local i32 @TV_VPN(i64, i32) #1

declare dso_local i32 @TAILQ_INSERT_TAIL(i32*, %struct.tte*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
