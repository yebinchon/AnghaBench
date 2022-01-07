; ModuleID = '/home/carl/AnghaBench/freebsd/sys/sparc64/sparc64/extr_pmap.c_pmap_zero_page.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/sparc64/sparc64/extr_pmap.c_pmap_zero_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 }
%struct.tte = type { i32, i32 }

@PG_FICTITIOUS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"pmap_zero_page: fake page\00", align 1
@pmap_nzero_page = common dso_local global i32 0, align 4
@dcache_color_ignore = common dso_local global i64 0, align 8
@pmap_nzero_page_c = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@pmap_nzero_page_nc = common dso_local global i32 0, align 4
@ASI_PHYS_USE_EC = common dso_local global i32 0, align 4
@pmap_nzero_page_oc = common dso_local global i32 0, align 4
@kernel_pmap = common dso_local global i32 0, align 4
@pmap_temp_map_1 = common dso_local global i64 0, align 8
@TD_V = common dso_local global i32 0, align 4
@TD_8K = common dso_local global i32 0, align 4
@TD_CP = common dso_local global i32 0, align 4
@TD_CV = common dso_local global i32 0, align 4
@TD_W = common dso_local global i32 0, align 4
@TS_8K = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pmap_zero_page(%struct.TYPE_6__* %0) #0 {
  %2 = alloca %struct.TYPE_6__*, align 8
  %3 = alloca %struct.tte*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %2, align 8
  %6 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %7 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = load i32, i32* @PG_FICTITIOUS, align 4
  %10 = and i32 %8, %9
  %11 = icmp eq i32 %10, 0
  %12 = zext i1 %11 to i32
  %13 = call i32 @KASSERT(i32 %12, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %14 = load i32, i32* @pmap_nzero_page, align 4
  %15 = call i32 @PMAP_STATS_INC(i32 %14)
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %17 = call i32 @VM_PAGE_TO_PHYS(%struct.TYPE_6__* %16)
  store i32 %17, i32* %5, align 4
  %18 = load i64, i64* @dcache_color_ignore, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %28, label %20

20:                                               ; preds = %1
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i32, i32* %5, align 4
  %26 = call i64 @DCACHE_COLOR(i32 %25)
  %27 = icmp eq i64 %24, %26
  br i1 %27, label %28, label %37

28:                                               ; preds = %20, %1
  %29 = load i32, i32* @pmap_nzero_page_c, align 4
  %30 = call i32 @PMAP_STATS_INC(i32 %29)
  %31 = load i32, i32* %5, align 4
  %32 = call i64 @TLB_PHYS_TO_DIRECT(i32 %31)
  store i64 %32, i64* %4, align 8
  %33 = load i64, i64* %4, align 8
  %34 = inttoptr i64 %33 to i8*
  %35 = load i32, i32* @PAGE_SIZE, align 4
  %36 = call i32 @cpu_block_zero(i8* %34, i32 %35)
  br label %95

37:                                               ; preds = %20
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp eq i64 %41, -1
  br i1 %42, label %43, label %50

43:                                               ; preds = %37
  %44 = load i32, i32* @pmap_nzero_page_nc, align 4
  %45 = call i32 @PMAP_STATS_INC(i32 %44)
  %46 = load i32, i32* @ASI_PHYS_USE_EC, align 4
  %47 = load i32, i32* %5, align 4
  %48 = load i32, i32* @PAGE_SIZE, align 4
  %49 = call i32 @aszero(i32 %46, i32 %47, i32 %48)
  br label %94

50:                                               ; preds = %37
  %51 = load i32, i32* @pmap_nzero_page_oc, align 4
  %52 = call i32 @PMAP_STATS_INC(i32 %51)
  %53 = load i32, i32* @kernel_pmap, align 4
  %54 = call i32 @PMAP_LOCK(i32 %53)
  %55 = load i64, i64* @pmap_temp_map_1, align 8
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load i32, i32* @PAGE_SIZE, align 4
  %61 = sext i32 %60 to i64
  %62 = mul nsw i64 %59, %61
  %63 = add nsw i64 %55, %62
  store i64 %63, i64* %4, align 8
  %64 = load i64, i64* %4, align 8
  %65 = call %struct.tte* @tsb_kvtotte(i64 %64)
  store %struct.tte* %65, %struct.tte** %3, align 8
  %66 = load i32, i32* @TD_V, align 4
  %67 = load i32, i32* @TD_8K, align 4
  %68 = or i32 %66, %67
  %69 = load i32, i32* %5, align 4
  %70 = call i32 @TD_PA(i32 %69)
  %71 = or i32 %68, %70
  %72 = load i32, i32* @TD_CP, align 4
  %73 = or i32 %71, %72
  %74 = load i32, i32* @TD_CV, align 4
  %75 = or i32 %73, %74
  %76 = load i32, i32* @TD_W, align 4
  %77 = or i32 %75, %76
  %78 = load %struct.tte*, %struct.tte** %3, align 8
  %79 = getelementptr inbounds %struct.tte, %struct.tte* %78, i32 0, i32 0
  store i32 %77, i32* %79, align 4
  %80 = load i64, i64* %4, align 8
  %81 = load i32, i32* @TS_8K, align 4
  %82 = call i32 @TV_VPN(i64 %80, i32 %81)
  %83 = load %struct.tte*, %struct.tte** %3, align 8
  %84 = getelementptr inbounds %struct.tte, %struct.tte* %83, i32 0, i32 1
  store i32 %82, i32* %84, align 4
  %85 = load i64, i64* %4, align 8
  %86 = inttoptr i64 %85 to i8*
  %87 = load i32, i32* @PAGE_SIZE, align 4
  %88 = call i32 @cpu_block_zero(i8* %86, i32 %87)
  %89 = load i32, i32* @kernel_pmap, align 4
  %90 = load i64, i64* %4, align 8
  %91 = call i32 @tlb_page_demap(i32 %89, i64 %90)
  %92 = load i32, i32* @kernel_pmap, align 4
  %93 = call i32 @PMAP_UNLOCK(i32 %92)
  br label %94

94:                                               ; preds = %50, %43
  br label %95

95:                                               ; preds = %94, %28
  ret void
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @PMAP_STATS_INC(i32) #1

declare dso_local i32 @VM_PAGE_TO_PHYS(%struct.TYPE_6__*) #1

declare dso_local i64 @DCACHE_COLOR(i32) #1

declare dso_local i64 @TLB_PHYS_TO_DIRECT(i32) #1

declare dso_local i32 @cpu_block_zero(i8*, i32) #1

declare dso_local i32 @aszero(i32, i32, i32) #1

declare dso_local i32 @PMAP_LOCK(i32) #1

declare dso_local %struct.tte* @tsb_kvtotte(i64) #1

declare dso_local i32 @TD_PA(i32) #1

declare dso_local i32 @TV_VPN(i64, i32) #1

declare dso_local i32 @tlb_page_demap(i32, i64) #1

declare dso_local i32 @PMAP_UNLOCK(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
