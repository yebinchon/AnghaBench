; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe.c_bxe_init_rx_rings.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe.c_bxe_init_rx_rings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bxe_softc = type { i32, %struct.bxe_fastpath* }
%struct.bxe_fastpath = type { %struct.TYPE_2__, i32, i32, i32, i64 }
%struct.TYPE_2__ = type { i32 }

@BAR_USTRORM_INTMEM = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bxe_softc*)* @bxe_init_rx_rings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bxe_init_rx_rings(%struct.bxe_softc* %0) #0 {
  %2 = alloca %struct.bxe_softc*, align 8
  %3 = alloca %struct.bxe_fastpath*, align 8
  %4 = alloca i32, align 4
  store %struct.bxe_softc* %0, %struct.bxe_softc** %2, align 8
  store i32 0, i32* %4, align 4
  br label %5

5:                                                ; preds = %66, %1
  %6 = load i32, i32* %4, align 4
  %7 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %8 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = icmp slt i32 %6, %9
  br i1 %10, label %11, label %69

11:                                               ; preds = %5
  %12 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %13 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %12, i32 0, i32 1
  %14 = load %struct.bxe_fastpath*, %struct.bxe_fastpath** %13, align 8
  %15 = load i32, i32* %4, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.bxe_fastpath, %struct.bxe_fastpath* %14, i64 %16
  store %struct.bxe_fastpath* %17, %struct.bxe_fastpath** %3, align 8
  %18 = load %struct.bxe_fastpath*, %struct.bxe_fastpath** %3, align 8
  %19 = getelementptr inbounds %struct.bxe_fastpath, %struct.bxe_fastpath* %18, i32 0, i32 4
  store i64 0, i64* %19, align 8
  %20 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %21 = load %struct.bxe_fastpath*, %struct.bxe_fastpath** %3, align 8
  %22 = load %struct.bxe_fastpath*, %struct.bxe_fastpath** %3, align 8
  %23 = getelementptr inbounds %struct.bxe_fastpath, %struct.bxe_fastpath* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.bxe_fastpath*, %struct.bxe_fastpath** %3, align 8
  %26 = getelementptr inbounds %struct.bxe_fastpath, %struct.bxe_fastpath* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.bxe_fastpath*, %struct.bxe_fastpath** %3, align 8
  %29 = getelementptr inbounds %struct.bxe_fastpath, %struct.bxe_fastpath* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @bxe_update_rx_prod(%struct.bxe_softc* %20, %struct.bxe_fastpath* %21, i32 %24, i32 %27, i32 %30)
  %32 = load i32, i32* %4, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %11
  br label %66

35:                                               ; preds = %11
  %36 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %37 = call i64 @CHIP_IS_E1(%struct.bxe_softc* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %65

39:                                               ; preds = %35
  %40 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %41 = load i64, i64* @BAR_USTRORM_INTMEM, align 8
  %42 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %43 = call i32 @SC_FUNC(%struct.bxe_softc* %42)
  %44 = call i64 @USTORM_MEM_WORKAROUND_ADDRESS_OFFSET(i32 %43)
  %45 = add nsw i64 %41, %44
  %46 = load %struct.bxe_fastpath*, %struct.bxe_fastpath** %3, align 8
  %47 = getelementptr inbounds %struct.bxe_fastpath, %struct.bxe_fastpath* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @U64_LO(i32 %49)
  %51 = call i32 @REG_WR(%struct.bxe_softc* %40, i64 %45, i32 %50)
  %52 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %53 = load i64, i64* @BAR_USTRORM_INTMEM, align 8
  %54 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %55 = call i32 @SC_FUNC(%struct.bxe_softc* %54)
  %56 = call i64 @USTORM_MEM_WORKAROUND_ADDRESS_OFFSET(i32 %55)
  %57 = add nsw i64 %53, %56
  %58 = add nsw i64 %57, 4
  %59 = load %struct.bxe_fastpath*, %struct.bxe_fastpath** %3, align 8
  %60 = getelementptr inbounds %struct.bxe_fastpath, %struct.bxe_fastpath* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = call i32 @U64_HI(i32 %62)
  %64 = call i32 @REG_WR(%struct.bxe_softc* %52, i64 %58, i32 %63)
  br label %65

65:                                               ; preds = %39, %35
  br label %66

66:                                               ; preds = %65, %34
  %67 = load i32, i32* %4, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %4, align 4
  br label %5

69:                                               ; preds = %5
  ret void
}

declare dso_local i32 @bxe_update_rx_prod(%struct.bxe_softc*, %struct.bxe_fastpath*, i32, i32, i32) #1

declare dso_local i64 @CHIP_IS_E1(%struct.bxe_softc*) #1

declare dso_local i32 @REG_WR(%struct.bxe_softc*, i64, i32) #1

declare dso_local i64 @USTORM_MEM_WORKAROUND_ADDRESS_OFFSET(i32) #1

declare dso_local i32 @SC_FUNC(%struct.bxe_softc*) #1

declare dso_local i32 @U64_LO(i32) #1

declare dso_local i32 @U64_HI(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
