; ModuleID = '/home/carl/AnghaBench/freebsd/sys/sparc64/sparc64/extr_pmap.c_pmap_quick_enter_page.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/sparc64/sparc64/extr_pmap.c_pmap_quick_enter_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 }
%struct.tte = type { i32, i32 }

@dcache_color_ignore = common dso_local global i64 0, align 8
@qmap_addr = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i64 0, align 8
@DCACHE_COLORS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [32 x i8] c"pmap_quick_enter_page: PTE busy\00", align 1
@TD_V = common dso_local global i32 0, align 4
@TD_8K = common dso_local global i32 0, align 4
@TD_CP = common dso_local global i32 0, align 4
@TD_CV = common dso_local global i32 0, align 4
@TD_W = common dso_local global i32 0, align 4
@TS_8K = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @pmap_quick_enter_page(%struct.TYPE_6__* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.tte*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  %7 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %8 = call i64 @VM_PAGE_TO_PHYS(%struct.TYPE_6__* %7)
  store i64 %8, i64* %4, align 8
  %9 = load i64, i64* @dcache_color_ignore, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %19, label %11

11:                                               ; preds = %1
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* %4, align 8
  %17 = call i64 @DCACHE_COLOR(i64 %16)
  %18 = icmp eq i64 %15, %17
  br i1 %18, label %19, label %22

19:                                               ; preds = %11, %1
  %20 = load i64, i64* %4, align 8
  %21 = call i64 @TLB_PHYS_TO_DIRECT(i64 %20)
  store i64 %21, i64* %2, align 8
  br label %67

22:                                               ; preds = %11
  %23 = call i32 (...) @critical_enter()
  %24 = load i32, i32* @qmap_addr, align 4
  %25 = call i64 @PCPU_GET(i32 %24)
  store i64 %25, i64* %5, align 8
  %26 = load i64, i64* @PAGE_SIZE, align 8
  %27 = load i64, i64* @DCACHE_COLORS, align 8
  %28 = load i64, i64* %4, align 8
  %29 = call i64 @DCACHE_COLOR(i64 %28)
  %30 = add nsw i64 %27, %29
  %31 = load i64, i64* %5, align 8
  %32 = call i64 @DCACHE_COLOR(i64 %31)
  %33 = sub nsw i64 %30, %32
  %34 = load i64, i64* @DCACHE_COLORS, align 8
  %35 = srem i64 %33, %34
  %36 = mul nsw i64 %26, %35
  %37 = load i64, i64* %5, align 8
  %38 = add nsw i64 %37, %36
  store i64 %38, i64* %5, align 8
  %39 = load i64, i64* %5, align 8
  %40 = call %struct.tte* @tsb_kvtotte(i64 %39)
  store %struct.tte* %40, %struct.tte** %6, align 8
  %41 = load %struct.tte*, %struct.tte** %6, align 8
  %42 = getelementptr inbounds %struct.tte, %struct.tte* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = icmp eq i32 %43, 0
  %45 = zext i1 %44 to i32
  %46 = call i32 @KASSERT(i32 %45, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %47 = load i32, i32* @TD_V, align 4
  %48 = load i32, i32* @TD_8K, align 4
  %49 = or i32 %47, %48
  %50 = load i64, i64* %4, align 8
  %51 = call i32 @TD_PA(i64 %50)
  %52 = or i32 %49, %51
  %53 = load i32, i32* @TD_CP, align 4
  %54 = or i32 %52, %53
  %55 = load i32, i32* @TD_CV, align 4
  %56 = or i32 %54, %55
  %57 = load i32, i32* @TD_W, align 4
  %58 = or i32 %56, %57
  %59 = load %struct.tte*, %struct.tte** %6, align 8
  %60 = getelementptr inbounds %struct.tte, %struct.tte* %59, i32 0, i32 0
  store i32 %58, i32* %60, align 4
  %61 = load i64, i64* %5, align 8
  %62 = load i32, i32* @TS_8K, align 4
  %63 = call i32 @TV_VPN(i64 %61, i32 %62)
  %64 = load %struct.tte*, %struct.tte** %6, align 8
  %65 = getelementptr inbounds %struct.tte, %struct.tte* %64, i32 0, i32 1
  store i32 %63, i32* %65, align 4
  %66 = load i64, i64* %5, align 8
  store i64 %66, i64* %2, align 8
  br label %67

67:                                               ; preds = %22, %19
  %68 = load i64, i64* %2, align 8
  ret i64 %68
}

declare dso_local i64 @VM_PAGE_TO_PHYS(%struct.TYPE_6__*) #1

declare dso_local i64 @DCACHE_COLOR(i64) #1

declare dso_local i64 @TLB_PHYS_TO_DIRECT(i64) #1

declare dso_local i32 @critical_enter(...) #1

declare dso_local i64 @PCPU_GET(i32) #1

declare dso_local %struct.tte* @tsb_kvtotte(i64) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @TD_PA(i64) #1

declare dso_local i32 @TV_VPN(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
