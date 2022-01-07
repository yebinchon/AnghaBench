; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/aim/extr_mmu_oea64.c_moea64_mid_bootstrap.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/aim/extr_mmu_oea64.c_moea64_mid_bootstrap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pvo_entry = type { i32 }
%struct.TYPE_9__ = type { i32, i32, %struct.TYPE_9__*, i64* }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64, i64 }

@moea64_pteg_count = common dso_local global i64 0, align 8
@moea64_pteg_mask = common dso_local global i64 0, align 8
@moea64_slb_mutex = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"SLB table\00", align 1
@MTX_DEF = common dso_local global i32 0, align 4
@PV_LOCK_COUNT = common dso_local global i32 0, align 4
@pv_lock = common dso_local global i32* null, align 8
@.str.1 = private unnamed_addr constant [8 x i8] c"page pv\00", align 1
@moea64_bpvo_pool_size = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@moea64_bpvo_pool = common dso_local global %struct.pvo_entry* null, align 8
@moea64_bpvo_pool_index = common dso_local global i64 0, align 8
@hw_direct_map = common dso_local global i64 0, align 8
@KERNEL_VSIDBITS = common dso_local global i32 0, align 4
@VSID_NBPW = common dso_local global i32 0, align 4
@moea64_vsid_bitmap = common dso_local global i32* null, align 8
@NVSIDS = common dso_local global i32 0, align 4
@EMPTY_SEGMENT = common dso_local global i64 0, align 8
@kernel_pmap = common dso_local global %struct.TYPE_9__* null, align 8
@pcpup = common dso_local global %struct.TYPE_8__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @moea64_mid_bootstrap(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load i64, i64* @moea64_pteg_count, align 8
  %9 = sub nsw i64 %8, 1
  store i64 %9, i64* @moea64_pteg_mask, align 8
  %10 = load i32, i32* @MTX_DEF, align 4
  %11 = call i32 @mtx_init(i32* @moea64_slb_mutex, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32* null, i32 %10)
  store i32 0, i32* %7, align 4
  br label %12

12:                                               ; preds = %23, %3
  %13 = load i32, i32* %7, align 4
  %14 = load i32, i32* @PV_LOCK_COUNT, align 4
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %16, label %26

16:                                               ; preds = %12
  %17 = load i32*, i32** @pv_lock, align 8
  %18 = load i32, i32* %7, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i32, i32* %17, i64 %19
  %21 = load i32, i32* @MTX_DEF, align 4
  %22 = call i32 @mtx_init(i32* %20, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32* null, i32 %21)
  br label %23

23:                                               ; preds = %16
  %24 = load i32, i32* %7, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %7, align 4
  br label %12

26:                                               ; preds = %12
  %27 = load i32, i32* @moea64_bpvo_pool_size, align 4
  %28 = sext i32 %27 to i64
  %29 = mul i64 %28, 4
  %30 = trunc i64 %29 to i32
  %31 = load i32, i32* @PAGE_SIZE, align 4
  %32 = call i64 @moea64_bootstrap_alloc(i32 %30, i32 %31)
  %33 = inttoptr i64 %32 to %struct.pvo_entry*
  store %struct.pvo_entry* %33, %struct.pvo_entry** @moea64_bpvo_pool, align 8
  store i64 0, i64* @moea64_bpvo_pool_index, align 8
  %34 = load i64, i64* @hw_direct_map, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %26
  %37 = load %struct.pvo_entry*, %struct.pvo_entry** @moea64_bpvo_pool, align 8
  %38 = ptrtoint %struct.pvo_entry* %37 to i64
  %39 = call i64 @PHYS_TO_DMAP(i64 %38)
  %40 = inttoptr i64 %39 to %struct.pvo_entry*
  store %struct.pvo_entry* %40, %struct.pvo_entry** @moea64_bpvo_pool, align 8
  br label %41

41:                                               ; preds = %36, %26
  %42 = load i32, i32* @KERNEL_VSIDBITS, align 4
  %43 = load i32, i32* @VSID_NBPW, align 4
  %44 = srem i32 %42, %43
  %45 = shl i32 1, %44
  %46 = load i32*, i32** @moea64_vsid_bitmap, align 8
  %47 = load i32, i32* @KERNEL_VSIDBITS, align 4
  %48 = load i32, i32* @NVSIDS, align 4
  %49 = sub nsw i32 %48, 1
  %50 = and i32 %47, %49
  %51 = load i32, i32* @VSID_NBPW, align 4
  %52 = sdiv i32 %50, %51
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i32, i32* %46, i64 %53
  %55 = load i32, i32* %54, align 4
  %56 = or i32 %55, %45
  store i32 %56, i32* %54, align 4
  %57 = load i32*, i32** @moea64_vsid_bitmap, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 0
  %59 = load i32, i32* %58, align 4
  %60 = or i32 %59, 1
  store i32 %60, i32* %58, align 4
  store i32 0, i32* %7, align 4
  br label %61

61:                                               ; preds = %75, %41
  %62 = load i32, i32* %7, align 4
  %63 = icmp slt i32 %62, 16
  br i1 %63, label %64, label %78

64:                                               ; preds = %61
  %65 = load i64, i64* @EMPTY_SEGMENT, align 8
  %66 = load i32, i32* %7, align 4
  %67 = sext i32 %66 to i64
  %68 = add nsw i64 %65, %67
  %69 = load %struct.TYPE_9__*, %struct.TYPE_9__** @kernel_pmap, align 8
  %70 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %69, i32 0, i32 3
  %71 = load i64*, i64** %70, align 8
  %72 = load i32, i32* %7, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i64, i64* %71, i64 %73
  store i64 %68, i64* %74, align 8
  br label %75

75:                                               ; preds = %64
  %76 = load i32, i32* %7, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %7, align 4
  br label %61

78:                                               ; preds = %61
  %79 = load %struct.TYPE_9__*, %struct.TYPE_9__** @kernel_pmap, align 8
  %80 = load %struct.TYPE_9__*, %struct.TYPE_9__** @kernel_pmap, align 8
  %81 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %80, i32 0, i32 2
  store %struct.TYPE_9__* %79, %struct.TYPE_9__** %81, align 8
  %82 = load %struct.TYPE_9__*, %struct.TYPE_9__** @kernel_pmap, align 8
  %83 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %82, i32 0, i32 1
  %84 = call i32 @CPU_FILL(i32* %83)
  %85 = load %struct.TYPE_9__*, %struct.TYPE_9__** @kernel_pmap, align 8
  %86 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %85, i32 0, i32 0
  %87 = call i32 @RB_INIT(i32* %86)
  %88 = load %struct.TYPE_9__*, %struct.TYPE_9__** @kernel_pmap, align 8
  %89 = call i32 @PMAP_LOCK_INIT(%struct.TYPE_9__* %88)
  %90 = load i32, i32* %4, align 4
  %91 = load i32, i32* %5, align 4
  %92 = load i32, i32* %6, align 4
  %93 = call i32 @moea64_setup_direct_map(i32 %90, i32 %91, i32 %92)
  ret void
}

declare dso_local i32 @mtx_init(i32*, i8*, i32*, i32) #1

declare dso_local i64 @moea64_bootstrap_alloc(i32, i32) #1

declare dso_local i64 @PHYS_TO_DMAP(i64) #1

declare dso_local i32 @CPU_FILL(i32*) #1

declare dso_local i32 @RB_INIT(i32*) #1

declare dso_local i32 @PMAP_LOCK_INIT(%struct.TYPE_9__*) #1

declare dso_local i32 @moea64_setup_direct_map(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
