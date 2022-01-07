; ModuleID = '/home/carl/AnghaBench/freebsd/sys/x86/iommu/extr_intel_ctx.c_dmar_domain_unload_emit_wait.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/x86/iommu/extr_intel_ctx.c_dmar_domain_unload_emit_wait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dmar_domain = type { i32 }
%struct.dmar_map_entry = type { i32 }

@dmamap_link = common dso_local global i32 0, align 4
@dmar_batch_coalesce = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dmar_domain*, %struct.dmar_map_entry*)* @dmar_domain_unload_emit_wait to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dmar_domain_unload_emit_wait(%struct.dmar_domain* %0, %struct.dmar_map_entry* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dmar_domain*, align 8
  %5 = alloca %struct.dmar_map_entry*, align 8
  store %struct.dmar_domain* %0, %struct.dmar_domain** %4, align 8
  store %struct.dmar_map_entry* %1, %struct.dmar_map_entry** %5, align 8
  %6 = load %struct.dmar_map_entry*, %struct.dmar_map_entry** %5, align 8
  %7 = load i32, i32* @dmamap_link, align 4
  %8 = call i32* @TAILQ_NEXT(%struct.dmar_map_entry* %6, i32 %7)
  %9 = icmp eq i32* %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %20

11:                                               ; preds = %2
  %12 = load %struct.dmar_domain*, %struct.dmar_domain** %4, align 8
  %13 = getelementptr inbounds %struct.dmar_domain, %struct.dmar_domain* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = add nsw i32 %14, 1
  store i32 %15, i32* %13, align 4
  %16 = load i32, i32* @dmar_batch_coalesce, align 4
  %17 = srem i32 %14, %16
  %18 = icmp eq i32 %17, 0
  %19 = zext i1 %18 to i32
  store i32 %19, i32* %3, align 4
  br label %20

20:                                               ; preds = %11, %10
  %21 = load i32, i32* %3, align 4
  ret i32 %21
}

declare dso_local i32* @TAILQ_NEXT(%struct.dmar_map_entry*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
