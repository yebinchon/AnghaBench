; ModuleID = '/home/carl/AnghaBench/freebsd/sys/sparc64/sparc64/extr_iommu.c_iommu_strbuf_flushpg.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/sparc64/sparc64/extr_iommu.c_iommu_strbuf_flushpg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iommu_state = type { i64* }

@is_sb = common dso_local global i32* null, align 8
@ISR_PGFLUSH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iommu_state*, i32)* @iommu_strbuf_flushpg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iommu_strbuf_flushpg(%struct.iommu_state* %0, i32 %1) #0 {
  %3 = alloca %struct.iommu_state*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.iommu_state* %0, %struct.iommu_state** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  br label %6

6:                                                ; preds = %29, %2
  %7 = load i32, i32* %5, align 4
  %8 = icmp slt i32 %7, 2
  br i1 %8, label %9, label %32

9:                                                ; preds = %6
  %10 = load %struct.iommu_state*, %struct.iommu_state** %3, align 8
  %11 = getelementptr inbounds %struct.iommu_state, %struct.iommu_state* %10, i32 0, i32 0
  %12 = load i64*, i64** %11, align 8
  %13 = load i32, i32* %5, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds i64, i64* %12, i64 %14
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %28

18:                                               ; preds = %9
  %19 = load %struct.iommu_state*, %struct.iommu_state** %3, align 8
  %20 = load i32*, i32** @is_sb, align 8
  %21 = load i32, i32* %5, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i32, i32* %20, i64 %22
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @ISR_PGFLUSH, align 4
  %26 = load i32, i32* %4, align 4
  %27 = call i32 @IOMMU_WRITE8(%struct.iommu_state* %19, i32 %24, i32 %25, i32 %26)
  br label %28

28:                                               ; preds = %18, %9
  br label %29

29:                                               ; preds = %28
  %30 = load i32, i32* %5, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %5, align 4
  br label %6

32:                                               ; preds = %6
  ret void
}

declare dso_local i32 @IOMMU_WRITE8(%struct.iommu_state*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
