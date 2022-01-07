; ModuleID = '/home/carl/AnghaBench/freebsd/sys/x86/iommu/extr_intel_ctx.c_dmar_map_ctx_entry.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/x86/iommu/extr_intel_ctx.c_dmar_map_ctx_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dmar_ctx = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.sf_buf = type { i32 }

@DMAR_PGF_NOALLOC = common dso_local global i32 0, align 4
@DMAR_PGF_WAITOK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.dmar_ctx*, %struct.sf_buf**)* @dmar_map_ctx_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @dmar_map_ctx_entry(%struct.dmar_ctx* %0, %struct.sf_buf** %1) #0 {
  %3 = alloca %struct.dmar_ctx*, align 8
  %4 = alloca %struct.sf_buf**, align 8
  %5 = alloca i32*, align 8
  store %struct.dmar_ctx* %0, %struct.dmar_ctx** %3, align 8
  store %struct.sf_buf** %1, %struct.sf_buf*** %4, align 8
  %6 = load %struct.dmar_ctx*, %struct.dmar_ctx** %3, align 8
  %7 = getelementptr inbounds %struct.dmar_ctx, %struct.dmar_ctx* %6, i32 0, i32 1
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.dmar_ctx*, %struct.dmar_ctx** %3, align 8
  %14 = getelementptr inbounds %struct.dmar_ctx, %struct.dmar_ctx* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = call i64 @PCI_RID2BUS(i32 %15)
  %17 = add nsw i64 1, %16
  %18 = load i32, i32* @DMAR_PGF_NOALLOC, align 4
  %19 = load i32, i32* @DMAR_PGF_WAITOK, align 4
  %20 = or i32 %18, %19
  %21 = load %struct.sf_buf**, %struct.sf_buf*** %4, align 8
  %22 = call i32* @dmar_map_pgtbl(i32 %12, i64 %17, i32 %20, %struct.sf_buf** %21)
  store i32* %22, i32** %5, align 8
  %23 = load %struct.dmar_ctx*, %struct.dmar_ctx** %3, align 8
  %24 = getelementptr inbounds %struct.dmar_ctx, %struct.dmar_ctx* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = and i32 %25, 255
  %27 = load i32*, i32** %5, align 8
  %28 = sext i32 %26 to i64
  %29 = getelementptr inbounds i32, i32* %27, i64 %28
  store i32* %29, i32** %5, align 8
  %30 = load i32*, i32** %5, align 8
  ret i32* %30
}

declare dso_local i32* @dmar_map_pgtbl(i32, i64, i32, %struct.sf_buf**) #1

declare dso_local i64 @PCI_RID2BUS(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
