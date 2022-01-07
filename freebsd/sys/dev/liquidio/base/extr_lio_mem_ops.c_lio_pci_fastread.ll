; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/liquidio/base/extr_lio_mem_ops.c_lio_pci_fastread.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/liquidio/base/extr_lio_mem_ops.c_lio_pci_fastread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.octeon_device = type { i32 }

@MEMOPS_IDX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.octeon_device*, i32, i32*, i32)* @lio_pci_fastread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lio_pci_fastread(%struct.octeon_device* %0, i32 %1, i32* %2, i32 %3) #0 {
  %5 = alloca %struct.octeon_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store %struct.octeon_device* %0, %struct.octeon_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  br label %9

9:                                                ; preds = %19, %4
  %10 = load i32, i32* %8, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %17

12:                                               ; preds = %9
  %13 = load i32, i32* %6, align 4
  %14 = sext i32 %13 to i64
  %15 = and i64 %14, 7
  %16 = icmp ne i64 %15, 0
  br label %17

17:                                               ; preds = %12, %9
  %18 = phi i1 [ false, %9 ], [ %16, %12 ]
  br i1 %18, label %19, label %29

19:                                               ; preds = %17
  %20 = load %struct.octeon_device*, %struct.octeon_device** %5, align 8
  %21 = load i32, i32* %6, align 4
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* %6, align 4
  %23 = call i8* @lio_read_bar1_mem8(%struct.octeon_device* %20, i32 %21)
  %24 = ptrtoint i8* %23 to i32
  %25 = load i32*, i32** %7, align 8
  %26 = getelementptr inbounds i32, i32* %25, i32 1
  store i32* %26, i32** %7, align 8
  store i32 %24, i32* %25, align 4
  %27 = load i32, i32* %8, align 4
  %28 = add nsw i32 %27, -1
  store i32 %28, i32* %8, align 4
  br label %9

29:                                               ; preds = %17
  %30 = load %struct.octeon_device*, %struct.octeon_device** %5, align 8
  %31 = load i32, i32* @MEMOPS_IDX, align 4
  %32 = call i32 @lio_toggle_bar1_swapmode(%struct.octeon_device* %30, i32 %31)
  br label %33

33:                                               ; preds = %36, %29
  %34 = load i32, i32* %8, align 4
  %35 = icmp sge i32 %34, 8
  br i1 %35, label %36, label %47

36:                                               ; preds = %33
  %37 = load %struct.octeon_device*, %struct.octeon_device** %5, align 8
  %38 = load i32, i32* %6, align 4
  %39 = call i32 @lio_read_bar1_mem64(%struct.octeon_device* %37, i32 %38)
  %40 = load i32*, i32** %7, align 8
  store i32 %39, i32* %40, align 4
  %41 = load i32, i32* %6, align 4
  %42 = add nsw i32 %41, 8
  store i32 %42, i32* %6, align 4
  %43 = load i32*, i32** %7, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 8
  store i32* %44, i32** %7, align 8
  %45 = load i32, i32* %8, align 4
  %46 = sub nsw i32 %45, 8
  store i32 %46, i32* %8, align 4
  br label %33

47:                                               ; preds = %33
  %48 = load %struct.octeon_device*, %struct.octeon_device** %5, align 8
  %49 = load i32, i32* @MEMOPS_IDX, align 4
  %50 = call i32 @lio_toggle_bar1_swapmode(%struct.octeon_device* %48, i32 %49)
  br label %51

51:                                               ; preds = %55, %47
  %52 = load i32, i32* %8, align 4
  %53 = add nsw i32 %52, -1
  store i32 %53, i32* %8, align 4
  %54 = icmp ne i32 %52, 0
  br i1 %54, label %55, label %63

55:                                               ; preds = %51
  %56 = load %struct.octeon_device*, %struct.octeon_device** %5, align 8
  %57 = load i32, i32* %6, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %6, align 4
  %59 = call i8* @lio_read_bar1_mem8(%struct.octeon_device* %56, i32 %57)
  %60 = ptrtoint i8* %59 to i32
  %61 = load i32*, i32** %7, align 8
  %62 = getelementptr inbounds i32, i32* %61, i32 1
  store i32* %62, i32** %7, align 8
  store i32 %60, i32* %61, align 4
  br label %51

63:                                               ; preds = %51
  ret void
}

declare dso_local i8* @lio_read_bar1_mem8(%struct.octeon_device*, i32) #1

declare dso_local i32 @lio_toggle_bar1_swapmode(%struct.octeon_device*, i32) #1

declare dso_local i32 @lio_read_bar1_mem64(%struct.octeon_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
