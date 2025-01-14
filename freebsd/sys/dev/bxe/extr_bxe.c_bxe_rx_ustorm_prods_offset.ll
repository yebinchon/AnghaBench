; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe.c_bxe_rx_ustorm_prods_offset.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe.c_bxe_rx_ustorm_prods_offset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bxe_softc = type { i32 }
%struct.bxe_fastpath = type { i32, i32 }

@BAR_USTRORM_INTMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bxe_softc*, %struct.bxe_fastpath*)* @bxe_rx_ustorm_prods_offset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bxe_rx_ustorm_prods_offset(%struct.bxe_softc* %0, %struct.bxe_fastpath* %1) #0 {
  %3 = alloca %struct.bxe_softc*, align 8
  %4 = alloca %struct.bxe_fastpath*, align 8
  %5 = alloca i32, align 4
  store %struct.bxe_softc* %0, %struct.bxe_softc** %3, align 8
  store %struct.bxe_fastpath* %1, %struct.bxe_fastpath** %4, align 8
  %6 = load i32, i32* @BAR_USTRORM_INTMEM, align 4
  store i32 %6, i32* %5, align 4
  %7 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %8 = call i32 @CHIP_IS_E1x(%struct.bxe_softc* %7)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %19, label %10

10:                                               ; preds = %2
  %11 = load %struct.bxe_fastpath*, %struct.bxe_fastpath** %4, align 8
  %12 = getelementptr inbounds %struct.bxe_fastpath, %struct.bxe_fastpath* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = call i64 @USTORM_RX_PRODS_E2_OFFSET(i32 %13)
  %15 = load i32, i32* %5, align 4
  %16 = sext i32 %15 to i64
  %17 = add nsw i64 %16, %14
  %18 = trunc i64 %17 to i32
  store i32 %18, i32* %5, align 4
  br label %30

19:                                               ; preds = %2
  %20 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %21 = call i32 @SC_PORT(%struct.bxe_softc* %20)
  %22 = load %struct.bxe_fastpath*, %struct.bxe_fastpath** %4, align 8
  %23 = getelementptr inbounds %struct.bxe_fastpath, %struct.bxe_fastpath* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i64 @USTORM_RX_PRODS_E1X_OFFSET(i32 %21, i32 %24)
  %26 = load i32, i32* %5, align 4
  %27 = sext i32 %26 to i64
  %28 = add nsw i64 %27, %25
  %29 = trunc i64 %28 to i32
  store i32 %29, i32* %5, align 4
  br label %30

30:                                               ; preds = %19, %10
  %31 = load i32, i32* %5, align 4
  ret i32 %31
}

declare dso_local i32 @CHIP_IS_E1x(%struct.bxe_softc*) #1

declare dso_local i64 @USTORM_RX_PRODS_E2_OFFSET(i32) #1

declare dso_local i64 @USTORM_RX_PRODS_E1X_OFFSET(i32, i32) #1

declare dso_local i32 @SC_PORT(%struct.bxe_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
