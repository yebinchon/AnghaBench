; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe.c_bxe_disable_close_the_gate.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe.c_bxe_disable_close_the_gate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bxe_softc = type { i32 }

@DBG_LOAD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Disabling 'close the gates'\0A\00", align 1
@MISC_REG_AEU_MASK_ATTN_FUNC_1 = common dso_local global i32 0, align 4
@MISC_REG_AEU_MASK_ATTN_FUNC_0 = common dso_local global i32 0, align 4
@MISC_REG_AEU_GENERAL_MASK = common dso_local global i32 0, align 4
@MISC_AEU_GENERAL_MASK_REG_AEU_PXP_CLOSE_MASK = common dso_local global i32 0, align 4
@MISC_AEU_GENERAL_MASK_REG_AEU_NIG_CLOSE_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bxe_softc*)* @bxe_disable_close_the_gate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bxe_disable_close_the_gate(%struct.bxe_softc* %0) #0 {
  %2 = alloca %struct.bxe_softc*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.bxe_softc* %0, %struct.bxe_softc** %2, align 8
  %6 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %7 = call i32 @SC_PORT(%struct.bxe_softc* %6)
  store i32 %7, i32* %4, align 4
  %8 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %9 = load i32, i32* @DBG_LOAD, align 4
  %10 = call i32 @BLOGD(%struct.bxe_softc* %8, i32 %9, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %11 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %12 = call i64 @CHIP_IS_E1(%struct.bxe_softc* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %32

14:                                               ; preds = %1
  %15 = load i32, i32* %4, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %14
  %18 = load i32, i32* @MISC_REG_AEU_MASK_ATTN_FUNC_1, align 4
  br label %21

19:                                               ; preds = %14
  %20 = load i32, i32* @MISC_REG_AEU_MASK_ATTN_FUNC_0, align 4
  br label %21

21:                                               ; preds = %19, %17
  %22 = phi i32 [ %18, %17 ], [ %20, %19 ]
  store i32 %22, i32* %5, align 4
  %23 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %24 = load i32, i32* %5, align 4
  %25 = call i32 @REG_RD(%struct.bxe_softc* %23, i32 %24)
  store i32 %25, i32* %3, align 4
  %26 = load i32, i32* %3, align 4
  %27 = and i32 %26, -769
  store i32 %27, i32* %3, align 4
  %28 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %29 = load i32, i32* %5, align 4
  %30 = load i32, i32* %3, align 4
  %31 = call i32 @REG_WR(%struct.bxe_softc* %28, i32 %29, i32 %30)
  br label %46

32:                                               ; preds = %1
  %33 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %34 = load i32, i32* @MISC_REG_AEU_GENERAL_MASK, align 4
  %35 = call i32 @REG_RD(%struct.bxe_softc* %33, i32 %34)
  store i32 %35, i32* %3, align 4
  %36 = load i32, i32* @MISC_AEU_GENERAL_MASK_REG_AEU_PXP_CLOSE_MASK, align 4
  %37 = load i32, i32* @MISC_AEU_GENERAL_MASK_REG_AEU_NIG_CLOSE_MASK, align 4
  %38 = or i32 %36, %37
  %39 = xor i32 %38, -1
  %40 = load i32, i32* %3, align 4
  %41 = and i32 %40, %39
  store i32 %41, i32* %3, align 4
  %42 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %43 = load i32, i32* @MISC_REG_AEU_GENERAL_MASK, align 4
  %44 = load i32, i32* %3, align 4
  %45 = call i32 @REG_WR(%struct.bxe_softc* %42, i32 %43, i32 %44)
  br label %46

46:                                               ; preds = %32, %21
  ret void
}

declare dso_local i32 @SC_PORT(%struct.bxe_softc*) #1

declare dso_local i32 @BLOGD(%struct.bxe_softc*, i32, i8*) #1

declare dso_local i64 @CHIP_IS_E1(%struct.bxe_softc*) #1

declare dso_local i32 @REG_RD(%struct.bxe_softc*, i32) #1

declare dso_local i32 @REG_WR(%struct.bxe_softc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
