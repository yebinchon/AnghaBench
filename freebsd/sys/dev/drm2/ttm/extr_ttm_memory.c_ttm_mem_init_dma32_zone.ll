; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/drm2/ttm/extr_ttm_memory.c_ttm_mem_init_dma32_zone.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/drm2/ttm/extr_ttm_memory.c_ttm_mem_init_dma32_zone.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ttm_mem_global = type { i32, %struct.ttm_mem_zone**, %struct.ttm_mem_zone* }
%struct.ttm_mem_zone = type { i8*, i32, i32, i32, i32, i32, %struct.ttm_mem_global*, i64 }

@M_TTM_ZONE = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"dma32\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ttm_mem_global*, i32)* @ttm_mem_init_dma32_zone to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ttm_mem_init_dma32_zone(%struct.ttm_mem_global* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ttm_mem_global*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ttm_mem_zone*, align 8
  store %struct.ttm_mem_global* %0, %struct.ttm_mem_global** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* @M_TTM_ZONE, align 4
  %8 = load i32, i32* @M_WAITOK, align 4
  %9 = load i32, i32* @M_ZERO, align 4
  %10 = or i32 %8, %9
  %11 = call %struct.ttm_mem_zone* @malloc(i32 48, i32 %7, i32 %10)
  store %struct.ttm_mem_zone* %11, %struct.ttm_mem_zone** %6, align 8
  %12 = load i32, i32* %5, align 4
  %13 = icmp sle i32 %12, undef
  br i1 %13, label %14, label %18

14:                                               ; preds = %2
  %15 = load %struct.ttm_mem_zone*, %struct.ttm_mem_zone** %6, align 8
  %16 = load i32, i32* @M_TTM_ZONE, align 4
  %17 = call i32 @free(%struct.ttm_mem_zone* %15, i32 %16)
  store i32 0, i32* %3, align 4
  br label %64

18:                                               ; preds = %2
  store i32 undef, i32* %5, align 4
  %19 = load %struct.ttm_mem_zone*, %struct.ttm_mem_zone** %6, align 8
  %20 = getelementptr inbounds %struct.ttm_mem_zone, %struct.ttm_mem_zone* %19, i32 0, i32 0
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8** %20, align 8
  %21 = load i32, i32* %5, align 4
  %22 = load %struct.ttm_mem_zone*, %struct.ttm_mem_zone** %6, align 8
  %23 = getelementptr inbounds %struct.ttm_mem_zone, %struct.ttm_mem_zone* %22, i32 0, i32 1
  store i32 %21, i32* %23, align 8
  %24 = load i32, i32* %5, align 4
  %25 = ashr i32 %24, 1
  %26 = load %struct.ttm_mem_zone*, %struct.ttm_mem_zone** %6, align 8
  %27 = getelementptr inbounds %struct.ttm_mem_zone, %struct.ttm_mem_zone* %26, i32 0, i32 2
  store i32 %25, i32* %27, align 4
  %28 = load i32, i32* %5, align 4
  %29 = ashr i32 %28, 1
  %30 = load i32, i32* %5, align 4
  %31 = ashr i32 %30, 2
  %32 = add nsw i32 %29, %31
  %33 = load %struct.ttm_mem_zone*, %struct.ttm_mem_zone** %6, align 8
  %34 = getelementptr inbounds %struct.ttm_mem_zone, %struct.ttm_mem_zone* %33, i32 0, i32 3
  store i32 %32, i32* %34, align 8
  %35 = load %struct.ttm_mem_zone*, %struct.ttm_mem_zone** %6, align 8
  %36 = getelementptr inbounds %struct.ttm_mem_zone, %struct.ttm_mem_zone* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* %5, align 4
  %39 = ashr i32 %38, 3
  %40 = sub nsw i32 %37, %39
  %41 = load %struct.ttm_mem_zone*, %struct.ttm_mem_zone** %6, align 8
  %42 = getelementptr inbounds %struct.ttm_mem_zone, %struct.ttm_mem_zone* %41, i32 0, i32 4
  store i32 %40, i32* %42, align 4
  %43 = load %struct.ttm_mem_zone*, %struct.ttm_mem_zone** %6, align 8
  %44 = getelementptr inbounds %struct.ttm_mem_zone, %struct.ttm_mem_zone* %43, i32 0, i32 7
  store i64 0, i64* %44, align 8
  %45 = load %struct.ttm_mem_global*, %struct.ttm_mem_global** %4, align 8
  %46 = load %struct.ttm_mem_zone*, %struct.ttm_mem_zone** %6, align 8
  %47 = getelementptr inbounds %struct.ttm_mem_zone, %struct.ttm_mem_zone* %46, i32 0, i32 6
  store %struct.ttm_mem_global* %45, %struct.ttm_mem_global** %47, align 8
  %48 = load %struct.ttm_mem_zone*, %struct.ttm_mem_zone** %6, align 8
  %49 = load %struct.ttm_mem_global*, %struct.ttm_mem_global** %4, align 8
  %50 = getelementptr inbounds %struct.ttm_mem_global, %struct.ttm_mem_global* %49, i32 0, i32 2
  store %struct.ttm_mem_zone* %48, %struct.ttm_mem_zone** %50, align 8
  %51 = load %struct.ttm_mem_zone*, %struct.ttm_mem_zone** %6, align 8
  %52 = getelementptr inbounds %struct.ttm_mem_zone, %struct.ttm_mem_zone* %51, i32 0, i32 5
  %53 = call i32 @refcount_init(i32* %52, i32 1)
  %54 = load %struct.ttm_mem_zone*, %struct.ttm_mem_zone** %6, align 8
  %55 = load %struct.ttm_mem_global*, %struct.ttm_mem_global** %4, align 8
  %56 = getelementptr inbounds %struct.ttm_mem_global, %struct.ttm_mem_global* %55, i32 0, i32 1
  %57 = load %struct.ttm_mem_zone**, %struct.ttm_mem_zone*** %56, align 8
  %58 = load %struct.ttm_mem_global*, %struct.ttm_mem_global** %4, align 8
  %59 = getelementptr inbounds %struct.ttm_mem_global, %struct.ttm_mem_global* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %59, align 8
  %62 = sext i32 %60 to i64
  %63 = getelementptr inbounds %struct.ttm_mem_zone*, %struct.ttm_mem_zone** %57, i64 %62
  store %struct.ttm_mem_zone* %54, %struct.ttm_mem_zone** %63, align 8
  store i32 0, i32* %3, align 4
  br label %64

64:                                               ; preds = %18, %14
  %65 = load i32, i32* %3, align 4
  ret i32 %65
}

declare dso_local %struct.ttm_mem_zone* @malloc(i32, i32, i32) #1

declare dso_local i32 @free(%struct.ttm_mem_zone*, i32) #1

declare dso_local i32 @refcount_init(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
