; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bwi/extr_if_bwi.c_bwi_set_addr_filter.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bwi/extr_if_bwi.c_bwi_set_addr_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bwi_softc = type { i32 }

@BWI_ADDR_FILTER_CTRL = common dso_local global i32 0, align 4
@BWI_ADDR_FILTER_CTRL_SET = common dso_local global i32 0, align 4
@IEEE80211_ADDR_LEN = common dso_local global i32 0, align 4
@BWI_ADDR_FILTER_DATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bwi_softc*, i32, i64*)* @bwi_set_addr_filter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bwi_set_addr_filter(%struct.bwi_softc* %0, i32 %1, i64* %2) #0 {
  %4 = alloca %struct.bwi_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.bwi_softc* %0, %struct.bwi_softc** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64* %2, i64** %6, align 8
  %9 = load %struct.bwi_softc*, %struct.bwi_softc** %4, align 8
  %10 = load i32, i32* @BWI_ADDR_FILTER_CTRL, align 4
  %11 = load i32, i32* @BWI_ADDR_FILTER_CTRL_SET, align 4
  %12 = load i32, i32* %5, align 4
  %13 = or i32 %11, %12
  %14 = call i32 @CSR_WRITE_2(%struct.bwi_softc* %9, i32 %10, i32 %13)
  store i32 0, i32* %7, align 4
  br label %15

15:                                               ; preds = %42, %3
  %16 = load i32, i32* %7, align 4
  %17 = load i32, i32* @IEEE80211_ADDR_LEN, align 4
  %18 = sdiv i32 %17, 2
  %19 = icmp slt i32 %16, %18
  br i1 %19, label %20, label %45

20:                                               ; preds = %15
  %21 = load i64*, i64** %6, align 8
  %22 = load i32, i32* %7, align 4
  %23 = mul nsw i32 %22, 2
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i64, i64* %21, i64 %24
  %26 = load i64, i64* %25, align 8
  %27 = trunc i64 %26 to i32
  %28 = load i64*, i64** %6, align 8
  %29 = load i32, i32* %7, align 4
  %30 = mul nsw i32 %29, 2
  %31 = add nsw i32 %30, 1
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i64, i64* %28, i64 %32
  %34 = load i64, i64* %33, align 8
  %35 = trunc i64 %34 to i32
  %36 = shl i32 %35, 8
  %37 = or i32 %27, %36
  store i32 %37, i32* %8, align 4
  %38 = load %struct.bwi_softc*, %struct.bwi_softc** %4, align 8
  %39 = load i32, i32* @BWI_ADDR_FILTER_DATA, align 4
  %40 = load i32, i32* %8, align 4
  %41 = call i32 @CSR_WRITE_2(%struct.bwi_softc* %38, i32 %39, i32 %40)
  br label %42

42:                                               ; preds = %20
  %43 = load i32, i32* %7, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %7, align 4
  br label %15

45:                                               ; preds = %15
  ret void
}

declare dso_local i32 @CSR_WRITE_2(%struct.bwi_softc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
