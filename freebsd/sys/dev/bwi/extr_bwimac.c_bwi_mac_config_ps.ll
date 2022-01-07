; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bwi/extr_bwimac.c_bwi_mac_config_ps.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bwi/extr_bwimac.c_bwi_mac_config_ps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bwi_mac = type { i32, %struct.bwi_softc* }
%struct.bwi_softc = type { i32 }

@BWI_MAC_STATUS = common dso_local global i32 0, align 4
@BWI_MAC_STATUS_HW_PS = common dso_local global i32 0, align 4
@BWI_MAC_STATUS_WAKEUP = common dso_local global i32 0, align 4
@BWI_COMM_MOBJ = common dso_local global i32 0, align 4
@BWI_COMM_MOBJ_UCODE_STATE = common dso_local global i32 0, align 4
@BWI_UCODE_STATE_PS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [18 x i8] c"config PS failed\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@NRETRY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bwi_mac_config_ps(%struct.bwi_mac* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bwi_mac*, align 8
  %4 = alloca %struct.bwi_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.bwi_mac* %0, %struct.bwi_mac** %3, align 8
  %7 = load %struct.bwi_mac*, %struct.bwi_mac** %3, align 8
  %8 = getelementptr inbounds %struct.bwi_mac, %struct.bwi_mac* %7, i32 0, i32 1
  %9 = load %struct.bwi_softc*, %struct.bwi_softc** %8, align 8
  store %struct.bwi_softc* %9, %struct.bwi_softc** %4, align 8
  %10 = load %struct.bwi_softc*, %struct.bwi_softc** %4, align 8
  %11 = load i32, i32* @BWI_MAC_STATUS, align 4
  %12 = call i32 @CSR_READ_4(%struct.bwi_softc* %10, i32 %11)
  store i32 %12, i32* %5, align 4
  %13 = load i32, i32* @BWI_MAC_STATUS_HW_PS, align 4
  %14 = xor i32 %13, -1
  %15 = load i32, i32* %5, align 4
  %16 = and i32 %15, %14
  store i32 %16, i32* %5, align 4
  %17 = load i32, i32* @BWI_MAC_STATUS_WAKEUP, align 4
  %18 = load i32, i32* %5, align 4
  %19 = or i32 %18, %17
  store i32 %19, i32* %5, align 4
  %20 = load %struct.bwi_softc*, %struct.bwi_softc** %4, align 8
  %21 = load i32, i32* @BWI_MAC_STATUS, align 4
  %22 = load i32, i32* %5, align 4
  %23 = call i32 @CSR_WRITE_4(%struct.bwi_softc* %20, i32 %21, i32 %22)
  %24 = load %struct.bwi_softc*, %struct.bwi_softc** %4, align 8
  %25 = load i32, i32* @BWI_MAC_STATUS, align 4
  %26 = call i32 @CSR_READ_4(%struct.bwi_softc* %24, i32 %25)
  %27 = load %struct.bwi_mac*, %struct.bwi_mac** %3, align 8
  %28 = getelementptr inbounds %struct.bwi_mac, %struct.bwi_mac* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = icmp sge i32 %29, 5
  br i1 %30, label %31, label %58

31:                                               ; preds = %1
  store i32 0, i32* %6, align 4
  br label %32

32:                                               ; preds = %45, %31
  %33 = load i32, i32* %6, align 4
  %34 = icmp slt i32 %33, 100
  br i1 %34, label %35, label %48

35:                                               ; preds = %32
  %36 = load %struct.bwi_mac*, %struct.bwi_mac** %3, align 8
  %37 = load i32, i32* @BWI_COMM_MOBJ, align 4
  %38 = load i32, i32* @BWI_COMM_MOBJ_UCODE_STATE, align 4
  %39 = call i64 @MOBJ_READ_2(%struct.bwi_mac* %36, i32 %37, i32 %38)
  %40 = load i64, i64* @BWI_UCODE_STATE_PS, align 8
  %41 = icmp ne i64 %39, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %35
  br label %48

43:                                               ; preds = %35
  %44 = call i32 @DELAY(i32 10)
  br label %45

45:                                               ; preds = %43
  %46 = load i32, i32* %6, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %6, align 4
  br label %32

48:                                               ; preds = %42, %32
  %49 = load i32, i32* %6, align 4
  %50 = icmp eq i32 %49, 100
  br i1 %50, label %51, label %57

51:                                               ; preds = %48
  %52 = load %struct.bwi_softc*, %struct.bwi_softc** %4, align 8
  %53 = getelementptr inbounds %struct.bwi_softc, %struct.bwi_softc* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @device_printf(i32 %54, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %56 = load i32, i32* @ETIMEDOUT, align 4
  store i32 %56, i32* %2, align 4
  br label %59

57:                                               ; preds = %48
  br label %58

58:                                               ; preds = %57, %1
  store i32 0, i32* %2, align 4
  br label %59

59:                                               ; preds = %58, %51
  %60 = load i32, i32* %2, align 4
  ret i32 %60
}

declare dso_local i32 @CSR_READ_4(%struct.bwi_softc*, i32) #1

declare dso_local i32 @CSR_WRITE_4(%struct.bwi_softc*, i32, i32) #1

declare dso_local i64 @MOBJ_READ_2(%struct.bwi_mac*, i32, i32) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
