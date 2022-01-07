; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/common/extr_t4_hw.c_t4_get_rx_e_chan_map.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/common/extr_t4_hw.c_t4_get_rx_e_chan_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i32 }

@A_MPS_CMN_CTL = common dso_local global i32 0, align 4
@CHELSIO_T5 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.adapter*, i32)* @t4_get_rx_e_chan_map to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @t4_get_rx_e_chan_map(%struct.adapter* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.adapter*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.adapter* %0, %struct.adapter** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.adapter*, %struct.adapter** %4, align 8
  %8 = load i32, i32* @A_MPS_CMN_CTL, align 4
  %9 = call i32 @t4_read_reg(%struct.adapter* %7, i32 %8)
  %10 = call i32 @G_NUMPORTS(i32 %9)
  store i32 %10, i32* %6, align 4
  %11 = load i32, i32* %6, align 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %18

13:                                               ; preds = %2
  %14 = load i32, i32* %5, align 4
  %15 = icmp eq i32 %14, 0
  %16 = zext i1 %15 to i64
  %17 = select i1 %15, i32 15, i32 0
  store i32 %17, i32* %3, align 4
  br label %39

18:                                               ; preds = %2
  %19 = load i32, i32* %6, align 4
  %20 = icmp eq i32 %19, 1
  br i1 %20, label %21, label %36

21:                                               ; preds = %18
  %22 = load %struct.adapter*, %struct.adapter** %4, align 8
  %23 = call i64 @chip_id(%struct.adapter* %22)
  %24 = load i64, i64* @CHELSIO_T5, align 8
  %25 = icmp sle i64 %23, %24
  br i1 %25, label %26, label %36

26:                                               ; preds = %21
  %27 = load i32, i32* %5, align 4
  %28 = icmp slt i32 %27, 2
  br i1 %28, label %29, label %33

29:                                               ; preds = %26
  %30 = load i32, i32* %5, align 4
  %31 = mul nsw i32 2, %30
  %32 = shl i32 3, %31
  br label %34

33:                                               ; preds = %26
  br label %34

34:                                               ; preds = %33, %29
  %35 = phi i32 [ %32, %29 ], [ 0, %33 ]
  store i32 %35, i32* %3, align 4
  br label %39

36:                                               ; preds = %21, %18
  %37 = load i32, i32* %5, align 4
  %38 = shl i32 1, %37
  store i32 %38, i32* %3, align 4
  br label %39

39:                                               ; preds = %36, %34, %13
  %40 = load i32, i32* %3, align 4
  ret i32 %40
}

declare dso_local i32 @G_NUMPORTS(i32) #1

declare dso_local i32 @t4_read_reg(%struct.adapter*, i32) #1

declare dso_local i64 @chip_id(%struct.adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
