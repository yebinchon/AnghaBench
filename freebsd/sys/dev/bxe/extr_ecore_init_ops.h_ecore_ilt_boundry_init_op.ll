; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_ecore_init_ops.h_ecore_ilt_boundry_init_op.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_ecore_init_ops.h_ecore_ilt_boundry_init_op.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bxe_softc = type { i32 }
%struct.ilt_client_info = type { i32, i64, i64 }

@PXP2_REG_PSWRQ_CDU0_L2P = common dso_local global i64 0, align 8
@PXP2_REG_PSWRQ_QM0_L2P = common dso_local global i64 0, align 8
@PXP2_REG_PSWRQ_SRC0_L2P = common dso_local global i64 0, align 8
@PXP2_REG_PSWRQ_TM0_L2P = common dso_local global i64 0, align 8
@PXP2_REG_RQ_CDU_FIRST_ILT = common dso_local global i64 0, align 8
@PXP2_REG_RQ_CDU_LAST_ILT = common dso_local global i64 0, align 8
@PXP2_REG_RQ_QM_FIRST_ILT = common dso_local global i64 0, align 8
@PXP2_REG_RQ_QM_LAST_ILT = common dso_local global i64 0, align 8
@PXP2_REG_RQ_SRC_FIRST_ILT = common dso_local global i64 0, align 8
@PXP2_REG_RQ_SRC_LAST_ILT = common dso_local global i64 0, align 8
@PXP2_REG_RQ_TM_FIRST_ILT = common dso_local global i64 0, align 8
@PXP2_REG_RQ_TM_LAST_ILT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bxe_softc*, %struct.ilt_client_info*, i64, i32)* @ecore_ilt_boundry_init_op to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ecore_ilt_boundry_init_op(%struct.bxe_softc* %0, %struct.ilt_client_info* %1, i64 %2, i32 %3) #0 {
  %5 = alloca %struct.bxe_softc*, align 8
  %6 = alloca %struct.ilt_client_info*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.bxe_softc* %0, %struct.bxe_softc** %5, align 8
  store %struct.ilt_client_info* %1, %struct.ilt_client_info** %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 %3, i32* %8, align 4
  store i64 0, i64* %9, align 8
  store i64 0, i64* %10, align 8
  %11 = load %struct.bxe_softc*, %struct.bxe_softc** %5, align 8
  %12 = call i64 @CHIP_IS_E1(%struct.bxe_softc* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %46

14:                                               ; preds = %4
  %15 = load %struct.ilt_client_info*, %struct.ilt_client_info** %6, align 8
  %16 = getelementptr inbounds %struct.ilt_client_info, %struct.ilt_client_info* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  switch i32 %17, label %26 [
    i32 131, label %18
    i32 130, label %20
    i32 129, label %22
    i32 128, label %24
  ]

18:                                               ; preds = %14
  %19 = load i64, i64* @PXP2_REG_PSWRQ_CDU0_L2P, align 8
  store i64 %19, i64* %9, align 8
  br label %26

20:                                               ; preds = %14
  %21 = load i64, i64* @PXP2_REG_PSWRQ_QM0_L2P, align 8
  store i64 %21, i64* %9, align 8
  br label %26

22:                                               ; preds = %14
  %23 = load i64, i64* @PXP2_REG_PSWRQ_SRC0_L2P, align 8
  store i64 %23, i64* %9, align 8
  br label %26

24:                                               ; preds = %14
  %25 = load i64, i64* @PXP2_REG_PSWRQ_TM0_L2P, align 8
  store i64 %25, i64* %9, align 8
  br label %26

26:                                               ; preds = %14, %24, %22, %20, %18
  %27 = load %struct.bxe_softc*, %struct.bxe_softc** %5, align 8
  %28 = load i64, i64* %9, align 8
  %29 = load %struct.bxe_softc*, %struct.bxe_softc** %5, align 8
  %30 = call i32 @SC_FUNC(%struct.bxe_softc* %29)
  %31 = mul nsw i32 %30, 4
  %32 = sext i32 %31 to i64
  %33 = add nsw i64 %28, %32
  %34 = load i64, i64* %7, align 8
  %35 = load %struct.ilt_client_info*, %struct.ilt_client_info** %6, align 8
  %36 = getelementptr inbounds %struct.ilt_client_info, %struct.ilt_client_info* %35, i32 0, i32 2
  %37 = load i64, i64* %36, align 8
  %38 = add nsw i64 %34, %37
  %39 = load i64, i64* %7, align 8
  %40 = load %struct.ilt_client_info*, %struct.ilt_client_info** %6, align 8
  %41 = getelementptr inbounds %struct.ilt_client_info, %struct.ilt_client_info* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = add nsw i64 %39, %42
  %44 = call i64 @ILT_RANGE(i64 %38, i64 %43)
  %45 = call i32 @REG_WR(%struct.bxe_softc* %27, i64 %33, i64 %44)
  br label %79

46:                                               ; preds = %4
  %47 = load %struct.ilt_client_info*, %struct.ilt_client_info** %6, align 8
  %48 = getelementptr inbounds %struct.ilt_client_info, %struct.ilt_client_info* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  switch i32 %49, label %62 [
    i32 131, label %50
    i32 130, label %53
    i32 129, label %56
    i32 128, label %59
  ]

50:                                               ; preds = %46
  %51 = load i64, i64* @PXP2_REG_RQ_CDU_FIRST_ILT, align 8
  store i64 %51, i64* %9, align 8
  %52 = load i64, i64* @PXP2_REG_RQ_CDU_LAST_ILT, align 8
  store i64 %52, i64* %10, align 8
  br label %62

53:                                               ; preds = %46
  %54 = load i64, i64* @PXP2_REG_RQ_QM_FIRST_ILT, align 8
  store i64 %54, i64* %9, align 8
  %55 = load i64, i64* @PXP2_REG_RQ_QM_LAST_ILT, align 8
  store i64 %55, i64* %10, align 8
  br label %62

56:                                               ; preds = %46
  %57 = load i64, i64* @PXP2_REG_RQ_SRC_FIRST_ILT, align 8
  store i64 %57, i64* %9, align 8
  %58 = load i64, i64* @PXP2_REG_RQ_SRC_LAST_ILT, align 8
  store i64 %58, i64* %10, align 8
  br label %62

59:                                               ; preds = %46
  %60 = load i64, i64* @PXP2_REG_RQ_TM_FIRST_ILT, align 8
  store i64 %60, i64* %9, align 8
  %61 = load i64, i64* @PXP2_REG_RQ_TM_LAST_ILT, align 8
  store i64 %61, i64* %10, align 8
  br label %62

62:                                               ; preds = %46, %59, %56, %53, %50
  %63 = load %struct.bxe_softc*, %struct.bxe_softc** %5, align 8
  %64 = load i64, i64* %9, align 8
  %65 = load i64, i64* %7, align 8
  %66 = load %struct.ilt_client_info*, %struct.ilt_client_info** %6, align 8
  %67 = getelementptr inbounds %struct.ilt_client_info, %struct.ilt_client_info* %66, i32 0, i32 2
  %68 = load i64, i64* %67, align 8
  %69 = add nsw i64 %65, %68
  %70 = call i32 @REG_WR(%struct.bxe_softc* %63, i64 %64, i64 %69)
  %71 = load %struct.bxe_softc*, %struct.bxe_softc** %5, align 8
  %72 = load i64, i64* %10, align 8
  %73 = load i64, i64* %7, align 8
  %74 = load %struct.ilt_client_info*, %struct.ilt_client_info** %6, align 8
  %75 = getelementptr inbounds %struct.ilt_client_info, %struct.ilt_client_info* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = add nsw i64 %73, %76
  %78 = call i32 @REG_WR(%struct.bxe_softc* %71, i64 %72, i64 %77)
  br label %79

79:                                               ; preds = %62, %26
  ret void
}

declare dso_local i64 @CHIP_IS_E1(%struct.bxe_softc*) #1

declare dso_local i32 @REG_WR(%struct.bxe_softc*, i64, i64) #1

declare dso_local i32 @SC_FUNC(%struct.bxe_softc*) #1

declare dso_local i64 @ILT_RANGE(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
