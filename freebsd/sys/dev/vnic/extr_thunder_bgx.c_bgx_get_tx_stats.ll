; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/vnic/extr_thunder_bgx.c_bgx_get_tx_stats.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/vnic/extr_thunder_bgx.c_bgx_get_tx_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bgx = type { i32 }

@bgx_vnic = common dso_local global %struct.bgx** null, align 8
@MAX_BGX_PER_CN88XX = common dso_local global i32 0, align 4
@BGX_CMRX_TX_STAT0 = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bgx_get_tx_stats(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
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
  br label %32

23:                                               ; preds = %4
  %24 = load %struct.bgx*, %struct.bgx** %10, align 8
  %25 = load i32, i32* %8, align 4
  %26 = load i64, i64* @BGX_CMRX_TX_STAT0, align 8
  %27 = load i32, i32* %9, align 4
  %28 = mul nsw i32 %27, 8
  %29 = sext i32 %28 to i64
  %30 = add nsw i64 %26, %29
  %31 = call i32 @bgx_reg_read(%struct.bgx* %24, i32 %25, i64 %30)
  store i32 %31, i32* %5, align 4
  br label %32

32:                                               ; preds = %23, %22
  %33 = load i32, i32* %5, align 4
  ret i32 %33
}

declare dso_local i32 @bgx_reg_read(%struct.bgx*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
