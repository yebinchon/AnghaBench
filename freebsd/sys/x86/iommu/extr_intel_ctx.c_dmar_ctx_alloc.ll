; ModuleID = '/home/carl/AnghaBench/freebsd/sys/x86/iommu/extr_intel_ctx.c_dmar_ctx_alloc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/x86/iommu/extr_intel_ctx.c_dmar_ctx_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dmar_ctx = type { i32, i32, %struct.dmar_domain* }
%struct.dmar_domain = type { i32 }

@M_DMAR_CTX = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dmar_ctx* (%struct.dmar_domain*, i32)* @dmar_ctx_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dmar_ctx* @dmar_ctx_alloc(%struct.dmar_domain* %0, i32 %1) #0 {
  %3 = alloca %struct.dmar_domain*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.dmar_ctx*, align 8
  store %struct.dmar_domain* %0, %struct.dmar_domain** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* @M_DMAR_CTX, align 4
  %7 = load i32, i32* @M_WAITOK, align 4
  %8 = load i32, i32* @M_ZERO, align 4
  %9 = or i32 %7, %8
  %10 = call %struct.dmar_ctx* @malloc(i32 16, i32 %6, i32 %9)
  store %struct.dmar_ctx* %10, %struct.dmar_ctx** %5, align 8
  %11 = load %struct.dmar_domain*, %struct.dmar_domain** %3, align 8
  %12 = load %struct.dmar_ctx*, %struct.dmar_ctx** %5, align 8
  %13 = getelementptr inbounds %struct.dmar_ctx, %struct.dmar_ctx* %12, i32 0, i32 2
  store %struct.dmar_domain* %11, %struct.dmar_domain** %13, align 8
  %14 = load i32, i32* %4, align 4
  %15 = load %struct.dmar_ctx*, %struct.dmar_ctx** %5, align 8
  %16 = getelementptr inbounds %struct.dmar_ctx, %struct.dmar_ctx* %15, i32 0, i32 1
  store i32 %14, i32* %16, align 4
  %17 = load %struct.dmar_ctx*, %struct.dmar_ctx** %5, align 8
  %18 = getelementptr inbounds %struct.dmar_ctx, %struct.dmar_ctx* %17, i32 0, i32 0
  store i32 1, i32* %18, align 8
  %19 = load %struct.dmar_ctx*, %struct.dmar_ctx** %5, align 8
  ret %struct.dmar_ctx* %19
}

declare dso_local %struct.dmar_ctx* @malloc(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
