; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe.c_bxe_prep_dmae_with_comp.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe.c_bxe_prep_dmae_with_comp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bxe_softc = type { i32 }
%struct.dmae_cmd = type { i32, i32, i32, i32 }

@TRUE = common dso_local global i32 0, align 4
@DMAE_COMP_PCI = common dso_local global i32 0, align 4
@wb_comp = common dso_local global i32 0, align 4
@DMAE_COMP_VAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bxe_softc*, %struct.dmae_cmd*, i32, i32)* @bxe_prep_dmae_with_comp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bxe_prep_dmae_with_comp(%struct.bxe_softc* %0, %struct.dmae_cmd* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.bxe_softc*, align 8
  %6 = alloca %struct.dmae_cmd*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.bxe_softc* %0, %struct.bxe_softc** %5, align 8
  store %struct.dmae_cmd* %1, %struct.dmae_cmd** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %9 = load %struct.dmae_cmd*, %struct.dmae_cmd** %6, align 8
  %10 = call i32 @memset(%struct.dmae_cmd* %9, i32 0, i32 16)
  %11 = load %struct.bxe_softc*, %struct.bxe_softc** %5, align 8
  %12 = load i32, i32* %7, align 4
  %13 = load i32, i32* %8, align 4
  %14 = load i32, i32* @TRUE, align 4
  %15 = load i32, i32* @DMAE_COMP_PCI, align 4
  %16 = call i32 @bxe_dmae_opcode(%struct.bxe_softc* %11, i32 %12, i32 %13, i32 %14, i32 %15)
  %17 = load %struct.dmae_cmd*, %struct.dmae_cmd** %6, align 8
  %18 = getelementptr inbounds %struct.dmae_cmd, %struct.dmae_cmd* %17, i32 0, i32 3
  store i32 %16, i32* %18, align 4
  %19 = load %struct.bxe_softc*, %struct.bxe_softc** %5, align 8
  %20 = load i32, i32* @wb_comp, align 4
  %21 = call i32 @BXE_SP_MAPPING(%struct.bxe_softc* %19, i32 %20)
  %22 = call i32 @U64_LO(i32 %21)
  %23 = load %struct.dmae_cmd*, %struct.dmae_cmd** %6, align 8
  %24 = getelementptr inbounds %struct.dmae_cmd, %struct.dmae_cmd* %23, i32 0, i32 2
  store i32 %22, i32* %24, align 4
  %25 = load %struct.bxe_softc*, %struct.bxe_softc** %5, align 8
  %26 = load i32, i32* @wb_comp, align 4
  %27 = call i32 @BXE_SP_MAPPING(%struct.bxe_softc* %25, i32 %26)
  %28 = call i32 @U64_HI(i32 %27)
  %29 = load %struct.dmae_cmd*, %struct.dmae_cmd** %6, align 8
  %30 = getelementptr inbounds %struct.dmae_cmd, %struct.dmae_cmd* %29, i32 0, i32 1
  store i32 %28, i32* %30, align 4
  %31 = load i32, i32* @DMAE_COMP_VAL, align 4
  %32 = load %struct.dmae_cmd*, %struct.dmae_cmd** %6, align 8
  %33 = getelementptr inbounds %struct.dmae_cmd, %struct.dmae_cmd* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 4
  ret void
}

declare dso_local i32 @memset(%struct.dmae_cmd*, i32, i32) #1

declare dso_local i32 @bxe_dmae_opcode(%struct.bxe_softc*, i32, i32, i32, i32) #1

declare dso_local i32 @U64_LO(i32) #1

declare dso_local i32 @BXE_SP_MAPPING(%struct.bxe_softc*, i32) #1

declare dso_local i32 @U64_HI(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
