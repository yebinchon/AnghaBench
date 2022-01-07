; ModuleID = '/home/carl/AnghaBench/freebsd/sys/x86/iommu/extr_intel_ctx.c_dmar_domain_unload_task.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/x86/iommu/extr_intel_ctx.c_dmar_domain_unload_task.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dmar_domain = type { i32 }
%struct.dmar_map_entries_tailq = type { i32 }

@dmar_map_entry = common dso_local global i32 0, align 4
@dmamap_link = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @dmar_domain_unload_task to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dmar_domain_unload_task(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.dmar_domain*, align 8
  %6 = alloca %struct.dmar_map_entries_tailq, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i8*, i8** %3, align 8
  %8 = bitcast i8* %7 to %struct.dmar_domain*
  store %struct.dmar_domain* %8, %struct.dmar_domain** %5, align 8
  %9 = call i32 @TAILQ_INIT(%struct.dmar_map_entries_tailq* %6)
  br label %10

10:                                               ; preds = %23, %2
  %11 = load %struct.dmar_domain*, %struct.dmar_domain** %5, align 8
  %12 = call i32 @DMAR_DOMAIN_LOCK(%struct.dmar_domain* %11)
  %13 = load %struct.dmar_domain*, %struct.dmar_domain** %5, align 8
  %14 = getelementptr inbounds %struct.dmar_domain, %struct.dmar_domain* %13, i32 0, i32 0
  %15 = load i32, i32* @dmar_map_entry, align 4
  %16 = load i32, i32* @dmamap_link, align 4
  %17 = call i32 @TAILQ_SWAP(i32* %14, %struct.dmar_map_entries_tailq* %6, i32 %15, i32 %16)
  %18 = load %struct.dmar_domain*, %struct.dmar_domain** %5, align 8
  %19 = call i32 @DMAR_DOMAIN_UNLOCK(%struct.dmar_domain* %18)
  %20 = call i64 @TAILQ_EMPTY(%struct.dmar_map_entries_tailq* %6)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %10
  br label %26

23:                                               ; preds = %10
  %24 = load %struct.dmar_domain*, %struct.dmar_domain** %5, align 8
  %25 = call i32 @dmar_domain_unload(%struct.dmar_domain* %24, %struct.dmar_map_entries_tailq* %6, i32 1)
  br label %10

26:                                               ; preds = %22
  ret void
}

declare dso_local i32 @TAILQ_INIT(%struct.dmar_map_entries_tailq*) #1

declare dso_local i32 @DMAR_DOMAIN_LOCK(%struct.dmar_domain*) #1

declare dso_local i32 @TAILQ_SWAP(i32*, %struct.dmar_map_entries_tailq*, i32, i32) #1

declare dso_local i32 @DMAR_DOMAIN_UNLOCK(%struct.dmar_domain*) #1

declare dso_local i64 @TAILQ_EMPTY(%struct.dmar_map_entries_tailq*) #1

declare dso_local i32 @dmar_domain_unload(%struct.dmar_domain*, %struct.dmar_map_entries_tailq*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
