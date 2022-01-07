; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/booke/extr_pmap.c_mmu_booke_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/booke/extr_pmap.c_mmu_booke_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@PMAP_SHPGPERPROC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"PV ENTRY\00", align 1
@UMA_ALIGN_PTR = common dso_local global i32 0, align 4
@UMA_ZONE_VM = common dso_local global i32 0, align 4
@UMA_ZONE_NOFREE = common dso_local global i32 0, align 4
@pvzone = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [20 x i8] c"vm.pmap.shpgperproc\00", align 1
@maxproc = common dso_local global i32 0, align 4
@vm_cnt = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@pv_entry_max = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [19 x i8] c"vm.pmap.pv_entries\00", align 1
@pv_entry_high_water = common dso_local global i32 0, align 4
@PV_ENTRY_ZONE_MIN = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [10 x i8] c"pmap root\00", align 1
@PMAP_ROOT_SIZE = common dso_local global i32 0, align 4
@UMA_ALIGN_CACHE = common dso_local global i32 0, align 4
@ptbl_root_zone = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @mmu_booke_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mmu_booke_init(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* @PMAP_SHPGPERPROC, align 4
  store i32 %4, i32* %3, align 4
  %5 = load i32, i32* @UMA_ALIGN_PTR, align 4
  %6 = load i32, i32* @UMA_ZONE_VM, align 4
  %7 = load i32, i32* @UMA_ZONE_NOFREE, align 4
  %8 = or i32 %6, %7
  %9 = call i8* @uma_zcreate(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 4, i32* null, i32* null, i32* null, i32* null, i32 %5, i32 %8)
  store i8* %9, i8** @pvzone, align 8
  %10 = call i32 @TUNABLE_INT_FETCH(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32* %3)
  %11 = load i32, i32* %3, align 4
  %12 = load i32, i32* @maxproc, align 4
  %13 = mul nsw i32 %11, %12
  %14 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @vm_cnt, i32 0, i32 0), align 4
  %15 = add nsw i32 %13, %14
  store i32 %15, i32* @pv_entry_max, align 4
  %16 = call i32 @TUNABLE_INT_FETCH(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i32* @pv_entry_max)
  %17 = load i32, i32* @pv_entry_max, align 4
  %18 = sdiv i32 %17, 10
  %19 = mul nsw i32 9, %18
  store i32 %19, i32* @pv_entry_high_water, align 4
  %20 = load i8*, i8** @pvzone, align 8
  %21 = load i32, i32* @pv_entry_max, align 4
  %22 = call i32 @uma_zone_reserve_kva(i8* %20, i32 %21)
  %23 = load i8*, i8** @pvzone, align 8
  %24 = load i32, i32* @PV_ENTRY_ZONE_MIN, align 4
  %25 = call i32 @uma_prealloc(i8* %23, i32 %24)
  %26 = load i32, i32* @PMAP_ROOT_SIZE, align 4
  %27 = load i32, i32* @UMA_ALIGN_CACHE, align 4
  %28 = load i32, i32* @UMA_ZONE_VM, align 4
  %29 = call i8* @uma_zcreate(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i32 %26, i32* null, i32* null, i32* null, i32* null, i32 %27, i32 %28)
  store i8* %29, i8** @ptbl_root_zone, align 8
  %30 = call i32 (...) @ptbl_init()
  ret void
}

declare dso_local i8* @uma_zcreate(i8*, i32, i32*, i32*, i32*, i32*, i32, i32) #1

declare dso_local i32 @TUNABLE_INT_FETCH(i8*, i32*) #1

declare dso_local i32 @uma_zone_reserve_kva(i8*, i32) #1

declare dso_local i32 @uma_prealloc(i8*, i32) #1

declare dso_local i32 @ptbl_init(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
