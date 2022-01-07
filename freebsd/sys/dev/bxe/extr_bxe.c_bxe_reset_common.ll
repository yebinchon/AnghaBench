; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe.c_bxe_reset_common.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe.c_bxe_reset_common.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bxe_softc = type { i32 }

@GRCBASE_MISC = common dso_local global i64 0, align 8
@MISC_REGISTERS_RESET_REG_1_CLEAR = common dso_local global i64 0, align 8
@MISC_REGISTERS_RESET_REG_2_MSTAT0 = common dso_local global i32 0, align 4
@MISC_REGISTERS_RESET_REG_2_MSTAT1 = common dso_local global i32 0, align 4
@MISC_REGISTERS_RESET_REG_2_CLEAR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bxe_softc*)* @bxe_reset_common to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bxe_reset_common(%struct.bxe_softc* %0) #0 {
  %2 = alloca %struct.bxe_softc*, align 8
  %3 = alloca i32, align 4
  store %struct.bxe_softc* %0, %struct.bxe_softc** %2, align 8
  store i32 5120, i32* %3, align 4
  %4 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %5 = load i64, i64* @GRCBASE_MISC, align 8
  %6 = load i64, i64* @MISC_REGISTERS_RESET_REG_1_CLEAR, align 8
  %7 = add nsw i64 %5, %6
  %8 = call i32 @REG_WR(%struct.bxe_softc* %4, i64 %7, i32 -738197633)
  %9 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %10 = call i64 @CHIP_IS_E3(%struct.bxe_softc* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %19

12:                                               ; preds = %1
  %13 = load i32, i32* @MISC_REGISTERS_RESET_REG_2_MSTAT0, align 4
  %14 = load i32, i32* %3, align 4
  %15 = or i32 %14, %13
  store i32 %15, i32* %3, align 4
  %16 = load i32, i32* @MISC_REGISTERS_RESET_REG_2_MSTAT1, align 4
  %17 = load i32, i32* %3, align 4
  %18 = or i32 %17, %16
  store i32 %18, i32* %3, align 4
  br label %19

19:                                               ; preds = %12, %1
  %20 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %21 = load i64, i64* @GRCBASE_MISC, align 8
  %22 = load i64, i64* @MISC_REGISTERS_RESET_REG_2_CLEAR, align 8
  %23 = add nsw i64 %21, %22
  %24 = load i32, i32* %3, align 4
  %25 = call i32 @REG_WR(%struct.bxe_softc* %20, i64 %23, i32 %24)
  ret void
}

declare dso_local i32 @REG_WR(%struct.bxe_softc*, i64, i32) #1

declare dso_local i64 @CHIP_IS_E3(%struct.bxe_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
