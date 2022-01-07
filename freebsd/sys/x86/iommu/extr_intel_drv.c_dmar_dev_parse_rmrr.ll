; ModuleID = '/home/carl/AnghaBench/freebsd/sys/x86/iommu/extr_intel_drv.c_dmar_dev_parse_rmrr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/x86/iommu/extr_intel_drv.c_dmar_dev_parse_rmrr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dmar_domain = type { i32 }
%struct.dmar_map_entries_tailq = type { i32 }
%struct.rmrr_iter_args = type { i32, i32, i32, %struct.dmar_map_entries_tailq*, i32*, %struct.dmar_domain* }

@dmar_rmrr_iter = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dmar_dev_parse_rmrr(%struct.dmar_domain* %0, i32 %1, i32 %2, i8* %3, i32 %4, %struct.dmar_map_entries_tailq* %5) #0 {
  %7 = alloca %struct.dmar_domain*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.dmar_map_entries_tailq*, align 8
  %13 = alloca %struct.rmrr_iter_args, align 8
  store %struct.dmar_domain* %0, %struct.dmar_domain** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i8* %3, i8** %10, align 8
  store i32 %4, i32* %11, align 4
  store %struct.dmar_map_entries_tailq* %5, %struct.dmar_map_entries_tailq** %12, align 8
  %14 = load %struct.dmar_domain*, %struct.dmar_domain** %7, align 8
  %15 = getelementptr inbounds %struct.rmrr_iter_args, %struct.rmrr_iter_args* %13, i32 0, i32 5
  store %struct.dmar_domain* %14, %struct.dmar_domain** %15, align 8
  %16 = load i32, i32* %8, align 4
  %17 = getelementptr inbounds %struct.rmrr_iter_args, %struct.rmrr_iter_args* %13, i32 0, i32 0
  store i32 %16, i32* %17, align 8
  %18 = load i32, i32* %9, align 4
  %19 = getelementptr inbounds %struct.rmrr_iter_args, %struct.rmrr_iter_args* %13, i32 0, i32 1
  store i32 %18, i32* %19, align 4
  %20 = load i8*, i8** %10, align 8
  %21 = bitcast i8* %20 to i32*
  %22 = getelementptr inbounds %struct.rmrr_iter_args, %struct.rmrr_iter_args* %13, i32 0, i32 4
  store i32* %21, i32** %22, align 8
  %23 = load i32, i32* %11, align 4
  %24 = getelementptr inbounds %struct.rmrr_iter_args, %struct.rmrr_iter_args* %13, i32 0, i32 2
  store i32 %23, i32* %24, align 8
  %25 = load %struct.dmar_map_entries_tailq*, %struct.dmar_map_entries_tailq** %12, align 8
  %26 = getelementptr inbounds %struct.rmrr_iter_args, %struct.rmrr_iter_args* %13, i32 0, i32 3
  store %struct.dmar_map_entries_tailq* %25, %struct.dmar_map_entries_tailq** %26, align 8
  %27 = load i32, i32* @dmar_rmrr_iter, align 4
  %28 = call i32 @dmar_iterate_tbl(i32 %27, %struct.rmrr_iter_args* %13)
  ret void
}

declare dso_local i32 @dmar_iterate_tbl(i32, %struct.rmrr_iter_args*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
