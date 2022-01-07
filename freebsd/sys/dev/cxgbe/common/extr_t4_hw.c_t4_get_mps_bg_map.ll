; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/common/extr_t4_hw.c_t4_get_mps_bg_map.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/common/extr_t4_hw.c_t4_get_mps_bg_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@A_MPS_CMN_CTL = common dso_local global i32 0, align 4
@CHELSIO_T5 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.adapter*, i32)* @t4_get_mps_bg_map to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @t4_get_mps_bg_map(%struct.adapter* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.adapter*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.adapter* %0, %struct.adapter** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.adapter*, %struct.adapter** %4, align 8
  %8 = getelementptr inbounds %struct.adapter, %struct.adapter* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %21

12:                                               ; preds = %2
  %13 = load %struct.adapter*, %struct.adapter** %4, align 8
  %14 = getelementptr inbounds %struct.adapter, %struct.adapter* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* %5, align 4
  %18 = shl i32 %17, 3
  %19 = ashr i32 %16, %18
  %20 = and i32 %19, 255
  store i32 %20, i32* %3, align 4
  br label %54

21:                                               ; preds = %2
  %22 = load %struct.adapter*, %struct.adapter** %4, align 8
  %23 = load i32, i32* @A_MPS_CMN_CTL, align 4
  %24 = call i32 @t4_read_reg(%struct.adapter* %22, i32 %23)
  %25 = call i32 @G_NUMPORTS(i32 %24)
  store i32 %25, i32* %6, align 4
  %26 = load i32, i32* %6, align 4
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %21
  %29 = load i32, i32* %5, align 4
  %30 = icmp eq i32 %29, 0
  %31 = zext i1 %30 to i64
  %32 = select i1 %30, i32 15, i32 0
  store i32 %32, i32* %3, align 4
  br label %54

33:                                               ; preds = %21
  %34 = load i32, i32* %6, align 4
  %35 = icmp eq i32 %34, 1
  br i1 %35, label %36, label %51

36:                                               ; preds = %33
  %37 = load %struct.adapter*, %struct.adapter** %4, align 8
  %38 = call i64 @chip_id(%struct.adapter* %37)
  %39 = load i64, i64* @CHELSIO_T5, align 8
  %40 = icmp sle i64 %38, %39
  br i1 %40, label %41, label %51

41:                                               ; preds = %36
  %42 = load i32, i32* %5, align 4
  %43 = icmp slt i32 %42, 2
  br i1 %43, label %44, label %48

44:                                               ; preds = %41
  %45 = load i32, i32* %5, align 4
  %46 = mul nsw i32 2, %45
  %47 = shl i32 3, %46
  br label %49

48:                                               ; preds = %41
  br label %49

49:                                               ; preds = %48, %44
  %50 = phi i32 [ %47, %44 ], [ 0, %48 ]
  store i32 %50, i32* %3, align 4
  br label %54

51:                                               ; preds = %36, %33
  %52 = load i32, i32* %5, align 4
  %53 = shl i32 1, %52
  store i32 %53, i32* %3, align 4
  br label %54

54:                                               ; preds = %51, %49, %28, %12
  %55 = load i32, i32* %3, align 4
  ret i32 %55
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
