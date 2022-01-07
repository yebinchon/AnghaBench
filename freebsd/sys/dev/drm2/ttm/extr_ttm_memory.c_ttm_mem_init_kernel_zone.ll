; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/drm2/ttm/extr_ttm_memory.c_ttm_mem_init_kernel_zone.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/drm2/ttm/extr_ttm_memory.c_ttm_mem_init_kernel_zone.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ttm_mem_global = type { i32, %struct.ttm_mem_zone**, %struct.ttm_mem_zone* }
%struct.ttm_mem_zone = type { i8*, i32, i32, i32, i32, i32, %struct.ttm_mem_global*, i64 }

@M_TTM_ZONE = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"kernel\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ttm_mem_global*, i32)* @ttm_mem_init_kernel_zone to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ttm_mem_init_kernel_zone(%struct.ttm_mem_global* %0, i32 %1) #0 {
  %3 = alloca %struct.ttm_mem_global*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ttm_mem_zone*, align 8
  store %struct.ttm_mem_global* %0, %struct.ttm_mem_global** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* @M_TTM_ZONE, align 4
  %7 = load i32, i32* @M_WAITOK, align 4
  %8 = load i32, i32* @M_ZERO, align 4
  %9 = or i32 %7, %8
  %10 = call %struct.ttm_mem_zone* @malloc(i32 48, i32 %6, i32 %9)
  store %struct.ttm_mem_zone* %10, %struct.ttm_mem_zone** %5, align 8
  %11 = load %struct.ttm_mem_zone*, %struct.ttm_mem_zone** %5, align 8
  %12 = getelementptr inbounds %struct.ttm_mem_zone, %struct.ttm_mem_zone* %11, i32 0, i32 0
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8** %12, align 8
  %13 = load i32, i32* %4, align 4
  %14 = load %struct.ttm_mem_zone*, %struct.ttm_mem_zone** %5, align 8
  %15 = getelementptr inbounds %struct.ttm_mem_zone, %struct.ttm_mem_zone* %14, i32 0, i32 1
  store i32 %13, i32* %15, align 8
  %16 = load i32, i32* %4, align 4
  %17 = ashr i32 %16, 1
  %18 = load %struct.ttm_mem_zone*, %struct.ttm_mem_zone** %5, align 8
  %19 = getelementptr inbounds %struct.ttm_mem_zone, %struct.ttm_mem_zone* %18, i32 0, i32 2
  store i32 %17, i32* %19, align 4
  %20 = load i32, i32* %4, align 4
  %21 = ashr i32 %20, 1
  %22 = load i32, i32* %4, align 4
  %23 = ashr i32 %22, 2
  %24 = add nsw i32 %21, %23
  %25 = load %struct.ttm_mem_zone*, %struct.ttm_mem_zone** %5, align 8
  %26 = getelementptr inbounds %struct.ttm_mem_zone, %struct.ttm_mem_zone* %25, i32 0, i32 3
  store i32 %24, i32* %26, align 8
  %27 = load %struct.ttm_mem_zone*, %struct.ttm_mem_zone** %5, align 8
  %28 = getelementptr inbounds %struct.ttm_mem_zone, %struct.ttm_mem_zone* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* %4, align 4
  %31 = ashr i32 %30, 3
  %32 = sub nsw i32 %29, %31
  %33 = load %struct.ttm_mem_zone*, %struct.ttm_mem_zone** %5, align 8
  %34 = getelementptr inbounds %struct.ttm_mem_zone, %struct.ttm_mem_zone* %33, i32 0, i32 4
  store i32 %32, i32* %34, align 4
  %35 = load %struct.ttm_mem_zone*, %struct.ttm_mem_zone** %5, align 8
  %36 = getelementptr inbounds %struct.ttm_mem_zone, %struct.ttm_mem_zone* %35, i32 0, i32 7
  store i64 0, i64* %36, align 8
  %37 = load %struct.ttm_mem_global*, %struct.ttm_mem_global** %3, align 8
  %38 = load %struct.ttm_mem_zone*, %struct.ttm_mem_zone** %5, align 8
  %39 = getelementptr inbounds %struct.ttm_mem_zone, %struct.ttm_mem_zone* %38, i32 0, i32 6
  store %struct.ttm_mem_global* %37, %struct.ttm_mem_global** %39, align 8
  %40 = load %struct.ttm_mem_zone*, %struct.ttm_mem_zone** %5, align 8
  %41 = load %struct.ttm_mem_global*, %struct.ttm_mem_global** %3, align 8
  %42 = getelementptr inbounds %struct.ttm_mem_global, %struct.ttm_mem_global* %41, i32 0, i32 2
  store %struct.ttm_mem_zone* %40, %struct.ttm_mem_zone** %42, align 8
  %43 = load %struct.ttm_mem_zone*, %struct.ttm_mem_zone** %5, align 8
  %44 = getelementptr inbounds %struct.ttm_mem_zone, %struct.ttm_mem_zone* %43, i32 0, i32 5
  %45 = call i32 @refcount_init(i32* %44, i32 1)
  %46 = load %struct.ttm_mem_zone*, %struct.ttm_mem_zone** %5, align 8
  %47 = load %struct.ttm_mem_global*, %struct.ttm_mem_global** %3, align 8
  %48 = getelementptr inbounds %struct.ttm_mem_global, %struct.ttm_mem_global* %47, i32 0, i32 1
  %49 = load %struct.ttm_mem_zone**, %struct.ttm_mem_zone*** %48, align 8
  %50 = load %struct.ttm_mem_global*, %struct.ttm_mem_global** %3, align 8
  %51 = getelementptr inbounds %struct.ttm_mem_global, %struct.ttm_mem_global* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %51, align 8
  %54 = sext i32 %52 to i64
  %55 = getelementptr inbounds %struct.ttm_mem_zone*, %struct.ttm_mem_zone** %49, i64 %54
  store %struct.ttm_mem_zone* %46, %struct.ttm_mem_zone** %55, align 8
  ret i32 0
}

declare dso_local %struct.ttm_mem_zone* @malloc(i32, i32, i32) #1

declare dso_local i32 @refcount_init(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
