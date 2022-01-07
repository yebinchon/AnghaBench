; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe_elink.c_elink_pfc_nig_rx_priority_mask.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe_elink.c_elink_pfc_nig_rx_priority_mask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bxe_softc = type { i32 }

@NIG_REG_P1_RX_COS0_PRIORITY_MASK = common dso_local global i32 0, align 4
@NIG_REG_P0_RX_COS0_PRIORITY_MASK = common dso_local global i32 0, align 4
@NIG_REG_P1_RX_COS1_PRIORITY_MASK = common dso_local global i32 0, align 4
@NIG_REG_P0_RX_COS1_PRIORITY_MASK = common dso_local global i32 0, align 4
@NIG_REG_P1_RX_COS2_PRIORITY_MASK = common dso_local global i32 0, align 4
@NIG_REG_P0_RX_COS2_PRIORITY_MASK = common dso_local global i32 0, align 4
@ELINK_STATUS_ERROR = common dso_local global i32 0, align 4
@NIG_REG_P0_RX_COS3_PRIORITY_MASK = common dso_local global i32 0, align 4
@NIG_REG_P0_RX_COS4_PRIORITY_MASK = common dso_local global i32 0, align 4
@NIG_REG_P0_RX_COS5_PRIORITY_MASK = common dso_local global i32 0, align 4
@ELINK_STATUS_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bxe_softc*, i32, i32, i32)* @elink_pfc_nig_rx_priority_mask to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @elink_pfc_nig_rx_priority_mask(%struct.bxe_softc* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.bxe_softc*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.bxe_softc* %0, %struct.bxe_softc** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %11 = load i32, i32* %7, align 4
  switch i32 %11, label %60 [
    i32 0, label %12
    i32 1, label %21
    i32 2, label %30
    i32 3, label %39
    i32 4, label %46
    i32 5, label %53
  ]

12:                                               ; preds = %4
  %13 = load i32, i32* %9, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %12
  %16 = load i32, i32* @NIG_REG_P1_RX_COS0_PRIORITY_MASK, align 4
  br label %19

17:                                               ; preds = %12
  %18 = load i32, i32* @NIG_REG_P0_RX_COS0_PRIORITY_MASK, align 4
  br label %19

19:                                               ; preds = %17, %15
  %20 = phi i32 [ %16, %15 ], [ %18, %17 ]
  store i32 %20, i32* %10, align 4
  br label %60

21:                                               ; preds = %4
  %22 = load i32, i32* %9, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %21
  %25 = load i32, i32* @NIG_REG_P1_RX_COS1_PRIORITY_MASK, align 4
  br label %28

26:                                               ; preds = %21
  %27 = load i32, i32* @NIG_REG_P0_RX_COS1_PRIORITY_MASK, align 4
  br label %28

28:                                               ; preds = %26, %24
  %29 = phi i32 [ %25, %24 ], [ %27, %26 ]
  store i32 %29, i32* %10, align 4
  br label %60

30:                                               ; preds = %4
  %31 = load i32, i32* %9, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %30
  %34 = load i32, i32* @NIG_REG_P1_RX_COS2_PRIORITY_MASK, align 4
  br label %37

35:                                               ; preds = %30
  %36 = load i32, i32* @NIG_REG_P0_RX_COS2_PRIORITY_MASK, align 4
  br label %37

37:                                               ; preds = %35, %33
  %38 = phi i32 [ %34, %33 ], [ %36, %35 ]
  store i32 %38, i32* %10, align 4
  br label %60

39:                                               ; preds = %4
  %40 = load i32, i32* %9, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %39
  %43 = load i32, i32* @ELINK_STATUS_ERROR, align 4
  store i32 %43, i32* %5, align 4
  br label %66

44:                                               ; preds = %39
  %45 = load i32, i32* @NIG_REG_P0_RX_COS3_PRIORITY_MASK, align 4
  store i32 %45, i32* %10, align 4
  br label %60

46:                                               ; preds = %4
  %47 = load i32, i32* %9, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %46
  %50 = load i32, i32* @ELINK_STATUS_ERROR, align 4
  store i32 %50, i32* %5, align 4
  br label %66

51:                                               ; preds = %46
  %52 = load i32, i32* @NIG_REG_P0_RX_COS4_PRIORITY_MASK, align 4
  store i32 %52, i32* %10, align 4
  br label %60

53:                                               ; preds = %4
  %54 = load i32, i32* %9, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %53
  %57 = load i32, i32* @ELINK_STATUS_ERROR, align 4
  store i32 %57, i32* %5, align 4
  br label %66

58:                                               ; preds = %53
  %59 = load i32, i32* @NIG_REG_P0_RX_COS5_PRIORITY_MASK, align 4
  store i32 %59, i32* %10, align 4
  br label %60

60:                                               ; preds = %4, %58, %51, %44, %37, %28, %19
  %61 = load %struct.bxe_softc*, %struct.bxe_softc** %6, align 8
  %62 = load i32, i32* %10, align 4
  %63 = load i32, i32* %8, align 4
  %64 = call i32 @REG_WR(%struct.bxe_softc* %61, i32 %62, i32 %63)
  %65 = load i32, i32* @ELINK_STATUS_OK, align 4
  store i32 %65, i32* %5, align 4
  br label %66

66:                                               ; preds = %60, %56, %49, %42
  %67 = load i32, i32* %5, align 4
  ret i32 %67
}

declare dso_local i32 @REG_WR(%struct.bxe_softc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
