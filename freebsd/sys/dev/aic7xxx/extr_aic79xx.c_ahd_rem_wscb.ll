; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/aic7xxx/extr_aic79xx.c_ahd_rem_wscb.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/aic7xxx/extr_aic79xx.c_ahd_rem_wscb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ahd_softc = type { i32 }

@AHD_MODE_SCSI_MSK = common dso_local global i32 0, align 4
@SCB_NEXT = common dso_local global i32 0, align 4
@WAITING_SCB_TAILS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ahd_softc*, i32, i32, i32, i32)* @ahd_rem_wscb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ahd_rem_wscb(%struct.ahd_softc* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.ahd_softc*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.ahd_softc* %0, %struct.ahd_softc** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %12 = load %struct.ahd_softc*, %struct.ahd_softc** %6, align 8
  %13 = load i32, i32* @AHD_MODE_SCSI_MSK, align 4
  %14 = load i32, i32* @AHD_MODE_SCSI_MSK, align 4
  %15 = call i32 @AHD_ASSERT_MODES(%struct.ahd_softc* %12, i32 %13, i32 %14)
  %16 = load i32, i32* %8, align 4
  %17 = call i64 @SCBID_IS_NULL(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %27, label %19

19:                                               ; preds = %5
  %20 = load %struct.ahd_softc*, %struct.ahd_softc** %6, align 8
  %21 = load i32, i32* %8, align 4
  %22 = call i32 @ahd_set_scbptr(%struct.ahd_softc* %20, i32 %21)
  %23 = load %struct.ahd_softc*, %struct.ahd_softc** %6, align 8
  %24 = load i32, i32* @SCB_NEXT, align 4
  %25 = load i32, i32* %9, align 4
  %26 = call i32 @ahd_outw(%struct.ahd_softc* %23, i32 %24, i32 %25)
  br label %27

27:                                               ; preds = %19, %5
  %28 = load i32, i32* @WAITING_SCB_TAILS, align 4
  %29 = load i32, i32* %10, align 4
  %30 = mul nsw i32 2, %29
  %31 = add nsw i32 %28, %30
  store i32 %31, i32* %11, align 4
  %32 = load i32, i32* %9, align 4
  %33 = call i64 @SCBID_IS_NULL(i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %46

35:                                               ; preds = %27
  %36 = load %struct.ahd_softc*, %struct.ahd_softc** %6, align 8
  %37 = load i32, i32* %11, align 4
  %38 = call i32 @ahd_inw(%struct.ahd_softc* %36, i32 %37)
  %39 = load i32, i32* %7, align 4
  %40 = icmp eq i32 %38, %39
  br i1 %40, label %41, label %46

41:                                               ; preds = %35
  %42 = load %struct.ahd_softc*, %struct.ahd_softc** %6, align 8
  %43 = load i32, i32* %11, align 4
  %44 = load i32, i32* %8, align 4
  %45 = call i32 @ahd_outw(%struct.ahd_softc* %42, i32 %43, i32 %44)
  br label %46

46:                                               ; preds = %41, %35, %27
  %47 = load %struct.ahd_softc*, %struct.ahd_softc** %6, align 8
  %48 = load i32, i32* %7, align 4
  %49 = call i32 @ahd_add_scb_to_free_list(%struct.ahd_softc* %47, i32 %48)
  %50 = load i32, i32* %9, align 4
  ret i32 %50
}

declare dso_local i32 @AHD_ASSERT_MODES(%struct.ahd_softc*, i32, i32) #1

declare dso_local i64 @SCBID_IS_NULL(i32) #1

declare dso_local i32 @ahd_set_scbptr(%struct.ahd_softc*, i32) #1

declare dso_local i32 @ahd_outw(%struct.ahd_softc*, i32, i32) #1

declare dso_local i32 @ahd_inw(%struct.ahd_softc*, i32) #1

declare dso_local i32 @ahd_add_scb_to_free_list(%struct.ahd_softc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
