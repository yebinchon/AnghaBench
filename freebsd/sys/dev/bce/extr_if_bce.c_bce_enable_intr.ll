; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bce/extr_if_bce.c_bce_enable_intr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bce/extr_if_bce.c_bce_enable_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bce_softc = type { i32, i32 }

@BCE_VERBOSE_INTR = common dso_local global i32 0, align 4
@BCE_PCICFG_INT_ACK_CMD = common dso_local global i32 0, align 4
@BCE_PCICFG_INT_ACK_CMD_INDEX_VALID = common dso_local global i32 0, align 4
@BCE_PCICFG_INT_ACK_CMD_MASK_INT = common dso_local global i32 0, align 4
@BCE_HC_COMMAND = common dso_local global i32 0, align 4
@BCE_HC_COMMAND_COAL_NOW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bce_softc*, i32)* @bce_enable_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bce_enable_intr(%struct.bce_softc* %0, i32 %1) #0 {
  %3 = alloca %struct.bce_softc*, align 8
  %4 = alloca i32, align 4
  store %struct.bce_softc* %0, %struct.bce_softc** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* @BCE_VERBOSE_INTR, align 4
  %6 = call i32 @DBENTER(i32 %5)
  %7 = load %struct.bce_softc*, %struct.bce_softc** %3, align 8
  %8 = load i32, i32* @BCE_PCICFG_INT_ACK_CMD, align 4
  %9 = load i32, i32* @BCE_PCICFG_INT_ACK_CMD_INDEX_VALID, align 4
  %10 = load i32, i32* @BCE_PCICFG_INT_ACK_CMD_MASK_INT, align 4
  %11 = or i32 %9, %10
  %12 = load %struct.bce_softc*, %struct.bce_softc** %3, align 8
  %13 = getelementptr inbounds %struct.bce_softc, %struct.bce_softc* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = or i32 %11, %14
  %16 = call i32 @REG_WR(%struct.bce_softc* %7, i32 %8, i32 %15)
  %17 = load %struct.bce_softc*, %struct.bce_softc** %3, align 8
  %18 = load i32, i32* @BCE_PCICFG_INT_ACK_CMD, align 4
  %19 = load i32, i32* @BCE_PCICFG_INT_ACK_CMD_INDEX_VALID, align 4
  %20 = load %struct.bce_softc*, %struct.bce_softc** %3, align 8
  %21 = getelementptr inbounds %struct.bce_softc, %struct.bce_softc* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = or i32 %19, %22
  %24 = call i32 @REG_WR(%struct.bce_softc* %17, i32 %18, i32 %23)
  %25 = load i32, i32* %4, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %36

27:                                               ; preds = %2
  %28 = load %struct.bce_softc*, %struct.bce_softc** %3, align 8
  %29 = load i32, i32* @BCE_HC_COMMAND, align 4
  %30 = load %struct.bce_softc*, %struct.bce_softc** %3, align 8
  %31 = getelementptr inbounds %struct.bce_softc, %struct.bce_softc* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @BCE_HC_COMMAND_COAL_NOW, align 4
  %34 = or i32 %32, %33
  %35 = call i32 @REG_WR(%struct.bce_softc* %28, i32 %29, i32 %34)
  br label %36

36:                                               ; preds = %27, %2
  %37 = load i32, i32* @BCE_VERBOSE_INTR, align 4
  %38 = call i32 @DBEXIT(i32 %37)
  ret void
}

declare dso_local i32 @DBENTER(i32) #1

declare dso_local i32 @REG_WR(%struct.bce_softc*, i32, i32) #1

declare dso_local i32 @DBEXIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
