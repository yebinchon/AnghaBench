; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mgb/extr_if_mgb.c_mgb_dmac_control.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mgb/extr_if_mgb.c_mgb_dmac_control.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mgb_softc = type { i32 }

@MGB_DMAC_CMD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mgb_softc*, i32, i32, i32)* @mgb_dmac_control to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mgb_dmac_control(%struct.mgb_softc* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.mgb_softc*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.mgb_softc* %0, %struct.mgb_softc** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %11 = load i32, i32* %9, align 4
  switch i32 %11, label %57 [
    i32 130, label %12
    i32 129, label %25
    i32 128, label %41
  ]

12:                                               ; preds = %4
  %13 = load %struct.mgb_softc*, %struct.mgb_softc** %6, align 8
  %14 = load i32, i32* @MGB_DMAC_CMD, align 4
  %15 = load i32, i32* %7, align 4
  %16 = load i32, i32* %8, align 4
  %17 = call i32 @MGB_DMAC_CMD_RESET(i32 %15, i32 %16)
  %18 = call i32 @CSR_WRITE_REG(%struct.mgb_softc* %13, i32 %14, i32 %17)
  %19 = load %struct.mgb_softc*, %struct.mgb_softc** %6, align 8
  %20 = load i32, i32* @MGB_DMAC_CMD, align 4
  %21 = load i32, i32* %7, align 4
  %22 = load i32, i32* %8, align 4
  %23 = call i32 @MGB_DMAC_CMD_RESET(i32 %21, i32 %22)
  %24 = call i32 @mgb_wait_for_bits(%struct.mgb_softc* %19, i32 %20, i32 0, i32 %23)
  store i32 %24, i32* %10, align 4
  br label %57

25:                                               ; preds = %4
  %26 = load %struct.mgb_softc*, %struct.mgb_softc** %6, align 8
  %27 = load i32, i32* %7, align 4
  %28 = load i32, i32* %8, align 4
  %29 = call i32 @mgb_dmac_control(%struct.mgb_softc* %26, i32 %27, i32 %28, i32 128)
  store i32 %29, i32* %10, align 4
  %30 = load i32, i32* %10, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %25
  %33 = load i32, i32* %10, align 4
  store i32 %33, i32* %5, align 4
  br label %59

34:                                               ; preds = %25
  %35 = load %struct.mgb_softc*, %struct.mgb_softc** %6, align 8
  %36 = load i32, i32* @MGB_DMAC_CMD, align 4
  %37 = load i32, i32* %7, align 4
  %38 = load i32, i32* %8, align 4
  %39 = call i32 @MGB_DMAC_CMD_START(i32 %37, i32 %38)
  %40 = call i32 @CSR_WRITE_REG(%struct.mgb_softc* %35, i32 %36, i32 %39)
  br label %57

41:                                               ; preds = %4
  %42 = load %struct.mgb_softc*, %struct.mgb_softc** %6, align 8
  %43 = load i32, i32* @MGB_DMAC_CMD, align 4
  %44 = load i32, i32* %7, align 4
  %45 = load i32, i32* %8, align 4
  %46 = call i32 @MGB_DMAC_CMD_STOP(i32 %44, i32 %45)
  %47 = call i32 @CSR_WRITE_REG(%struct.mgb_softc* %42, i32 %43, i32 %46)
  %48 = load %struct.mgb_softc*, %struct.mgb_softc** %6, align 8
  %49 = load i32, i32* @MGB_DMAC_CMD, align 4
  %50 = load i32, i32* %7, align 4
  %51 = load i32, i32* %8, align 4
  %52 = call i32 @MGB_DMAC_CMD_STOP(i32 %50, i32 %51)
  %53 = load i32, i32* %7, align 4
  %54 = load i32, i32* %8, align 4
  %55 = call i32 @MGB_DMAC_CMD_START(i32 %53, i32 %54)
  %56 = call i32 @mgb_wait_for_bits(%struct.mgb_softc* %48, i32 %49, i32 %52, i32 %55)
  store i32 %56, i32* %10, align 4
  br label %57

57:                                               ; preds = %4, %41, %34, %12
  %58 = load i32, i32* %10, align 4
  store i32 %58, i32* %5, align 4
  br label %59

59:                                               ; preds = %57, %32
  %60 = load i32, i32* %5, align 4
  ret i32 %60
}

declare dso_local i32 @CSR_WRITE_REG(%struct.mgb_softc*, i32, i32) #1

declare dso_local i32 @MGB_DMAC_CMD_RESET(i32, i32) #1

declare dso_local i32 @mgb_wait_for_bits(%struct.mgb_softc*, i32, i32, i32) #1

declare dso_local i32 @MGB_DMAC_CMD_START(i32, i32) #1

declare dso_local i32 @MGB_DMAC_CMD_STOP(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
