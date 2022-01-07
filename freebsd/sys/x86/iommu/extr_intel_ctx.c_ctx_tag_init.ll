; ModuleID = '/home/carl/AnghaBench/freebsd/sys/x86/iommu/extr_intel_ctx.c_ctx_tag_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/x86/iommu/extr_intel_ctx.c_ctx_tag_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dmar_ctx = type { %struct.TYPE_6__, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { i32, %struct.dmar_ctx*, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i8*, i32, i8*, i8*, i8*, i64, i32* }
%struct.TYPE_4__ = type { i32 }

@BUS_SPACE_MAXADDR = common dso_local global i32 0, align 4
@bus_dma_dmar_impl = common dso_local global i32 0, align 4
@BUS_SPACE_UNRESTRICTED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dmar_ctx*, i32)* @ctx_tag_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ctx_tag_init(%struct.dmar_ctx* %0, i32 %1) #0 {
  %3 = alloca %struct.dmar_ctx*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  store %struct.dmar_ctx* %0, %struct.dmar_ctx** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.dmar_ctx*, %struct.dmar_ctx** %3, align 8
  %7 = getelementptr inbounds %struct.dmar_ctx, %struct.dmar_ctx* %6, i32 0, i32 1
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %12 = call i8* @MIN(i32 %10, i32 %11)
  store i8* %12, i8** %5, align 8
  %13 = load %struct.dmar_ctx*, %struct.dmar_ctx** %3, align 8
  %14 = getelementptr inbounds %struct.dmar_ctx, %struct.dmar_ctx* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 2
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  store i32 1, i32* %16, align 8
  %17 = load %struct.dmar_ctx*, %struct.dmar_ctx** %3, align 8
  %18 = getelementptr inbounds %struct.dmar_ctx, %struct.dmar_ctx* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 2
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 7
  store i32* @bus_dma_dmar_impl, i32** %20, align 8
  %21 = load %struct.dmar_ctx*, %struct.dmar_ctx** %3, align 8
  %22 = getelementptr inbounds %struct.dmar_ctx, %struct.dmar_ctx* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 2
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 6
  store i64 0, i64* %24, align 8
  %25 = load i8*, i8** %5, align 8
  %26 = load %struct.dmar_ctx*, %struct.dmar_ctx** %3, align 8
  %27 = getelementptr inbounds %struct.dmar_ctx, %struct.dmar_ctx* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 2
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 5
  store i8* %25, i8** %29, align 8
  %30 = load i8*, i8** %5, align 8
  %31 = load %struct.dmar_ctx*, %struct.dmar_ctx** %3, align 8
  %32 = getelementptr inbounds %struct.dmar_ctx, %struct.dmar_ctx* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 2
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 4
  store i8* %30, i8** %34, align 8
  %35 = load i8*, i8** %5, align 8
  %36 = load %struct.dmar_ctx*, %struct.dmar_ctx** %3, align 8
  %37 = getelementptr inbounds %struct.dmar_ctx, %struct.dmar_ctx* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 2
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 3
  store i8* %35, i8** %39, align 8
  %40 = load i32, i32* @BUS_SPACE_UNRESTRICTED, align 4
  %41 = load %struct.dmar_ctx*, %struct.dmar_ctx** %3, align 8
  %42 = getelementptr inbounds %struct.dmar_ctx, %struct.dmar_ctx* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 2
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 2
  store i32 %40, i32* %44, align 8
  %45 = load i8*, i8** %5, align 8
  %46 = load %struct.dmar_ctx*, %struct.dmar_ctx** %3, align 8
  %47 = getelementptr inbounds %struct.dmar_ctx, %struct.dmar_ctx* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 2
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 1
  store i8* %45, i8** %49, align 8
  %50 = load %struct.dmar_ctx*, %struct.dmar_ctx** %3, align 8
  %51 = load %struct.dmar_ctx*, %struct.dmar_ctx** %3, align 8
  %52 = getelementptr inbounds %struct.dmar_ctx, %struct.dmar_ctx* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 1
  store %struct.dmar_ctx* %50, %struct.dmar_ctx** %53, align 8
  %54 = load i32, i32* %4, align 4
  %55 = load %struct.dmar_ctx*, %struct.dmar_ctx** %3, align 8
  %56 = getelementptr inbounds %struct.dmar_ctx, %struct.dmar_ctx* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 0
  store i32 %54, i32* %57, align 8
  ret void
}

declare dso_local i8* @MIN(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
