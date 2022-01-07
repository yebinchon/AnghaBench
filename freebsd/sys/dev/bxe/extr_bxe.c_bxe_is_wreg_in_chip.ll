; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe.c_bxe_is_wreg_in_chip.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe.c_bxe_is_wreg_in_chip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bxe_softc = type { i32 }
%struct.wreg_addr = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bxe_softc*, %struct.wreg_addr*)* @bxe_is_wreg_in_chip to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bxe_is_wreg_in_chip(%struct.bxe_softc* %0, %struct.wreg_addr* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bxe_softc*, align 8
  %5 = alloca %struct.wreg_addr*, align 8
  store %struct.bxe_softc* %0, %struct.bxe_softc** %4, align 8
  store %struct.wreg_addr* %1, %struct.wreg_addr** %5, align 8
  %6 = load %struct.bxe_softc*, %struct.bxe_softc** %4, align 8
  %7 = call i64 @CHIP_IS_E1(%struct.bxe_softc* %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %14

9:                                                ; preds = %2
  %10 = load %struct.wreg_addr*, %struct.wreg_addr** %5, align 8
  %11 = getelementptr inbounds %struct.wreg_addr, %struct.wreg_addr* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @IS_E1_REG(i32 %12)
  store i32 %13, i32* %3, align 4
  br label %51

14:                                               ; preds = %2
  %15 = load %struct.bxe_softc*, %struct.bxe_softc** %4, align 8
  %16 = call i64 @CHIP_IS_E1H(%struct.bxe_softc* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %14
  %19 = load %struct.wreg_addr*, %struct.wreg_addr** %5, align 8
  %20 = getelementptr inbounds %struct.wreg_addr, %struct.wreg_addr* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @IS_E1H_REG(i32 %21)
  store i32 %22, i32* %3, align 4
  br label %51

23:                                               ; preds = %14
  %24 = load %struct.bxe_softc*, %struct.bxe_softc** %4, align 8
  %25 = call i64 @CHIP_IS_E2(%struct.bxe_softc* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %23
  %28 = load %struct.wreg_addr*, %struct.wreg_addr** %5, align 8
  %29 = getelementptr inbounds %struct.wreg_addr, %struct.wreg_addr* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @IS_E2_REG(i32 %30)
  store i32 %31, i32* %3, align 4
  br label %51

32:                                               ; preds = %23
  %33 = load %struct.bxe_softc*, %struct.bxe_softc** %4, align 8
  %34 = call i64 @CHIP_IS_E3A0(%struct.bxe_softc* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %32
  %37 = load %struct.wreg_addr*, %struct.wreg_addr** %5, align 8
  %38 = getelementptr inbounds %struct.wreg_addr, %struct.wreg_addr* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @IS_E3A0_REG(i32 %39)
  store i32 %40, i32* %3, align 4
  br label %51

41:                                               ; preds = %32
  %42 = load %struct.bxe_softc*, %struct.bxe_softc** %4, align 8
  %43 = call i64 @CHIP_IS_E3B0(%struct.bxe_softc* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %50

45:                                               ; preds = %41
  %46 = load %struct.wreg_addr*, %struct.wreg_addr** %5, align 8
  %47 = getelementptr inbounds %struct.wreg_addr, %struct.wreg_addr* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @IS_E3B0_REG(i32 %48)
  store i32 %49, i32* %3, align 4
  br label %51

50:                                               ; preds = %41
  store i32 0, i32* %3, align 4
  br label %51

51:                                               ; preds = %50, %45, %36, %27, %18, %9
  %52 = load i32, i32* %3, align 4
  ret i32 %52
}

declare dso_local i64 @CHIP_IS_E1(%struct.bxe_softc*) #1

declare dso_local i32 @IS_E1_REG(i32) #1

declare dso_local i64 @CHIP_IS_E1H(%struct.bxe_softc*) #1

declare dso_local i32 @IS_E1H_REG(i32) #1

declare dso_local i64 @CHIP_IS_E2(%struct.bxe_softc*) #1

declare dso_local i32 @IS_E2_REG(i32) #1

declare dso_local i64 @CHIP_IS_E3A0(%struct.bxe_softc*) #1

declare dso_local i32 @IS_E3A0_REG(i32) #1

declare dso_local i64 @CHIP_IS_E3B0(%struct.bxe_softc*) #1

declare dso_local i32 @IS_E3B0_REG(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
