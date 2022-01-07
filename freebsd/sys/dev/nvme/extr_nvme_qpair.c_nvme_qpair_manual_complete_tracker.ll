; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/nvme/extr_nvme_qpair.c_nvme_qpair_manual_complete_tracker.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/nvme/extr_nvme_qpair.c_nvme_qpair_manual_complete_tracker.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvme_qpair = type { i32 }
%struct.nvme_tracker = type { i32 }
%struct.nvme_completion = type { i32, i32, i32 }

@NVME_STATUS_SCT_MASK = common dso_local global i32 0, align 4
@NVME_STATUS_SCT_SHIFT = common dso_local global i32 0, align 4
@NVME_STATUS_SC_MASK = common dso_local global i32 0, align 4
@NVME_STATUS_SC_SHIFT = common dso_local global i32 0, align 4
@NVME_STATUS_DNR_MASK = common dso_local global i32 0, align 4
@NVME_STATUS_DNR_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nvme_qpair*, %struct.nvme_tracker*, i32, i32, i32, i32)* @nvme_qpair_manual_complete_tracker to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nvme_qpair_manual_complete_tracker(%struct.nvme_qpair* %0, %struct.nvme_tracker* %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.nvme_qpair*, align 8
  %8 = alloca %struct.nvme_tracker*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.nvme_completion, align 4
  store %struct.nvme_qpair* %0, %struct.nvme_qpair** %7, align 8
  store %struct.nvme_tracker* %1, %struct.nvme_tracker** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %14 = call i32 @memset(%struct.nvme_completion* %13, i32 0, i32 12)
  %15 = load %struct.nvme_qpair*, %struct.nvme_qpair** %7, align 8
  %16 = getelementptr inbounds %struct.nvme_qpair, %struct.nvme_qpair* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = getelementptr inbounds %struct.nvme_completion, %struct.nvme_completion* %13, i32 0, i32 2
  store i32 %17, i32* %18, align 4
  %19 = load %struct.nvme_tracker*, %struct.nvme_tracker** %8, align 8
  %20 = getelementptr inbounds %struct.nvme_tracker, %struct.nvme_tracker* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = getelementptr inbounds %struct.nvme_completion, %struct.nvme_completion* %13, i32 0, i32 1
  store i32 %21, i32* %22, align 4
  %23 = load i32, i32* %9, align 4
  %24 = load i32, i32* @NVME_STATUS_SCT_MASK, align 4
  %25 = and i32 %23, %24
  %26 = load i32, i32* @NVME_STATUS_SCT_SHIFT, align 4
  %27 = shl i32 %25, %26
  %28 = getelementptr inbounds %struct.nvme_completion, %struct.nvme_completion* %13, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = or i32 %29, %27
  store i32 %30, i32* %28, align 4
  %31 = load i32, i32* %10, align 4
  %32 = load i32, i32* @NVME_STATUS_SC_MASK, align 4
  %33 = and i32 %31, %32
  %34 = load i32, i32* @NVME_STATUS_SC_SHIFT, align 4
  %35 = shl i32 %33, %34
  %36 = getelementptr inbounds %struct.nvme_completion, %struct.nvme_completion* %13, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = or i32 %37, %35
  store i32 %38, i32* %36, align 4
  %39 = load i32, i32* %11, align 4
  %40 = load i32, i32* @NVME_STATUS_DNR_MASK, align 4
  %41 = and i32 %39, %40
  %42 = load i32, i32* @NVME_STATUS_DNR_SHIFT, align 4
  %43 = shl i32 %41, %42
  %44 = getelementptr inbounds %struct.nvme_completion, %struct.nvme_completion* %13, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = or i32 %45, %43
  store i32 %46, i32* %44, align 4
  %47 = load %struct.nvme_qpair*, %struct.nvme_qpair** %7, align 8
  %48 = load %struct.nvme_tracker*, %struct.nvme_tracker** %8, align 8
  %49 = load i32, i32* %12, align 4
  %50 = call i32 @nvme_qpair_complete_tracker(%struct.nvme_qpair* %47, %struct.nvme_tracker* %48, %struct.nvme_completion* %13, i32 %49)
  ret void
}

declare dso_local i32 @memset(%struct.nvme_completion*, i32, i32) #1

declare dso_local i32 @nvme_qpair_complete_tracker(%struct.nvme_qpair*, %struct.nvme_tracker*, %struct.nvme_completion*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
