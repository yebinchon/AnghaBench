; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/vnic/extr_thunder_bgx.c_bgx_get_rx_stats.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/vnic/extr_thunder_bgx.c_bgx_get_rx_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bgx = type { i32 }

@bgx_vnic = common dso_local global %struct.bgx** null, align 8
@MAX_BGX_PER_CN88XX = common dso_local global i32 0, align 4
@BGX_CMRX_RX_STAT0 = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bgx_get_rx_stats(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.bgx*, align 8
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %11 = load %struct.bgx**, %struct.bgx*** @bgx_vnic, align 8
  %12 = load i32, i32* %6, align 4
  %13 = load i32, i32* @MAX_BGX_PER_CN88XX, align 4
  %14 = mul nsw i32 %12, %13
  %15 = load i32, i32* %7, align 4
  %16 = add nsw i32 %14, %15
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.bgx*, %struct.bgx** %11, i64 %17
  %19 = load %struct.bgx*, %struct.bgx** %18, align 8
  store %struct.bgx* %19, %struct.bgx** %10, align 8
  %20 = load %struct.bgx*, %struct.bgx** %10, align 8
  %21 = icmp eq %struct.bgx* %20, null
  br i1 %21, label %22, label %23

22:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %36

23:                                               ; preds = %4
  %24 = load i32, i32* %9, align 4
  %25 = icmp sgt i32 %24, 8
  br i1 %25, label %26, label %27

26:                                               ; preds = %23
  store i32 0, i32* %8, align 4
  br label %27

27:                                               ; preds = %26, %23
  %28 = load %struct.bgx*, %struct.bgx** %10, align 8
  %29 = load i32, i32* %8, align 4
  %30 = load i64, i64* @BGX_CMRX_RX_STAT0, align 8
  %31 = load i32, i32* %9, align 4
  %32 = mul nsw i32 %31, 8
  %33 = sext i32 %32 to i64
  %34 = add nsw i64 %30, %33
  %35 = call i32 @bgx_reg_read(%struct.bgx* %28, i32 %29, i64 %34)
  store i32 %35, i32* %5, align 4
  br label %36

36:                                               ; preds = %27, %22
  %37 = load i32, i32* %5, align 4
  ret i32 %37
}

declare dso_local i32 @bgx_reg_read(%struct.bgx*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
