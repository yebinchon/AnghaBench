; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_ixl_pf_main.c_ixl_enable_rings.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_ixl_pf_main.c_ixl_enable_rings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixl_vsi = type { i32, i32, %struct.ixl_pf* }
%struct.ixl_pf = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ixl_enable_rings(%struct.ixl_vsi* %0) #0 {
  %2 = alloca %struct.ixl_vsi*, align 8
  %3 = alloca %struct.ixl_pf*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.ixl_vsi* %0, %struct.ixl_vsi** %2, align 8
  %7 = load %struct.ixl_vsi*, %struct.ixl_vsi** %2, align 8
  %8 = getelementptr inbounds %struct.ixl_vsi, %struct.ixl_vsi* %7, i32 0, i32 2
  %9 = load %struct.ixl_pf*, %struct.ixl_pf** %8, align 8
  store %struct.ixl_pf* %9, %struct.ixl_pf** %3, align 8
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  br label %10

10:                                               ; preds = %22, %1
  %11 = load i32, i32* %5, align 4
  %12 = load %struct.ixl_vsi*, %struct.ixl_vsi** %2, align 8
  %13 = getelementptr inbounds %struct.ixl_vsi, %struct.ixl_vsi* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp slt i32 %11, %14
  br i1 %15, label %16, label %25

16:                                               ; preds = %10
  %17 = load %struct.ixl_pf*, %struct.ixl_pf** %3, align 8
  %18 = load %struct.ixl_pf*, %struct.ixl_pf** %3, align 8
  %19 = getelementptr inbounds %struct.ixl_pf, %struct.ixl_pf* %18, i32 0, i32 0
  %20 = load i32, i32* %5, align 4
  %21 = call i32 @ixl_enable_tx_ring(%struct.ixl_pf* %17, i32* %19, i32 %20)
  store i32 %21, i32* %4, align 4
  br label %22

22:                                               ; preds = %16
  %23 = load i32, i32* %5, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %5, align 4
  br label %10

25:                                               ; preds = %10
  store i32 0, i32* %6, align 4
  br label %26

26:                                               ; preds = %38, %25
  %27 = load i32, i32* %6, align 4
  %28 = load %struct.ixl_vsi*, %struct.ixl_vsi** %2, align 8
  %29 = getelementptr inbounds %struct.ixl_vsi, %struct.ixl_vsi* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = icmp slt i32 %27, %30
  br i1 %31, label %32, label %41

32:                                               ; preds = %26
  %33 = load %struct.ixl_pf*, %struct.ixl_pf** %3, align 8
  %34 = load %struct.ixl_pf*, %struct.ixl_pf** %3, align 8
  %35 = getelementptr inbounds %struct.ixl_pf, %struct.ixl_pf* %34, i32 0, i32 0
  %36 = load i32, i32* %6, align 4
  %37 = call i32 @ixl_enable_rx_ring(%struct.ixl_pf* %33, i32* %35, i32 %36)
  store i32 %37, i32* %4, align 4
  br label %38

38:                                               ; preds = %32
  %39 = load i32, i32* %6, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %6, align 4
  br label %26

41:                                               ; preds = %26
  %42 = load i32, i32* %4, align 4
  ret i32 %42
}

declare dso_local i32 @ixl_enable_tx_ring(%struct.ixl_pf*, i32*, i32) #1

declare dso_local i32 @ixl_enable_rx_ring(%struct.ixl_pf*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
