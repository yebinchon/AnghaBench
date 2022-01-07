; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ahci/extr_ahci.c_ahci_ctlr_reset.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ahci/extr_ahci.c_ahci_ctlr_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ahci_controller = type { i32, i32, i32 }

@AHCI_GHC = common dso_local global i32 0, align 4
@AHCI_GHC_AE = common dso_local global i32 0, align 4
@AHCI_GHC_HR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"AHCI controller reset failure\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@AHCI_Q_RESTORE_CAP = common dso_local global i32 0, align 4
@AHCI_CAP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ahci_ctlr_reset(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.ahci_controller*, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = call %struct.ahci_controller* @device_get_softc(i32 %6)
  store %struct.ahci_controller* %7, %struct.ahci_controller** %4, align 8
  %8 = load %struct.ahci_controller*, %struct.ahci_controller** %4, align 8
  %9 = getelementptr inbounds %struct.ahci_controller, %struct.ahci_controller* %8, i32 0, i32 2
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @AHCI_GHC, align 4
  %12 = load i32, i32* @AHCI_GHC_AE, align 4
  %13 = call i32 @ATA_OUTL(i32 %10, i32 %11, i32 %12)
  %14 = load %struct.ahci_controller*, %struct.ahci_controller** %4, align 8
  %15 = getelementptr inbounds %struct.ahci_controller, %struct.ahci_controller* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @AHCI_GHC, align 4
  %18 = load i32, i32* @AHCI_GHC_AE, align 4
  %19 = load i32, i32* @AHCI_GHC_HR, align 4
  %20 = or i32 %18, %19
  %21 = call i32 @ATA_OUTL(i32 %16, i32 %17, i32 %20)
  store i32 1000, i32* %5, align 4
  br label %22

22:                                               ; preds = %37, %1
  %23 = load i32, i32* %5, align 4
  %24 = icmp sgt i32 %23, 0
  br i1 %24, label %25, label %40

25:                                               ; preds = %22
  %26 = call i32 @DELAY(i32 1000)
  %27 = load %struct.ahci_controller*, %struct.ahci_controller** %4, align 8
  %28 = getelementptr inbounds %struct.ahci_controller, %struct.ahci_controller* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @AHCI_GHC, align 4
  %31 = call i32 @ATA_INL(i32 %29, i32 %30)
  %32 = load i32, i32* @AHCI_GHC_HR, align 4
  %33 = and i32 %31, %32
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %25
  br label %40

36:                                               ; preds = %25
  br label %37

37:                                               ; preds = %36
  %38 = load i32, i32* %5, align 4
  %39 = add nsw i32 %38, -1
  store i32 %39, i32* %5, align 4
  br label %22

40:                                               ; preds = %35, %22
  %41 = load i32, i32* %5, align 4
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %40
  %44 = load i32, i32* %3, align 4
  %45 = call i32 @device_printf(i32 %44, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %46 = load i32, i32* @ENXIO, align 4
  store i32 %46, i32* %2, align 4
  br label %70

47:                                               ; preds = %40
  %48 = load %struct.ahci_controller*, %struct.ahci_controller** %4, align 8
  %49 = getelementptr inbounds %struct.ahci_controller, %struct.ahci_controller* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @AHCI_GHC, align 4
  %52 = load i32, i32* @AHCI_GHC_AE, align 4
  %53 = call i32 @ATA_OUTL(i32 %50, i32 %51, i32 %52)
  %54 = load %struct.ahci_controller*, %struct.ahci_controller** %4, align 8
  %55 = getelementptr inbounds %struct.ahci_controller, %struct.ahci_controller* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @AHCI_Q_RESTORE_CAP, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %69

60:                                               ; preds = %47
  %61 = load %struct.ahci_controller*, %struct.ahci_controller** %4, align 8
  %62 = getelementptr inbounds %struct.ahci_controller, %struct.ahci_controller* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @AHCI_CAP, align 4
  %65 = load %struct.ahci_controller*, %struct.ahci_controller** %4, align 8
  %66 = getelementptr inbounds %struct.ahci_controller, %struct.ahci_controller* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @ATA_OUTL(i32 %63, i32 %64, i32 %67)
  br label %69

69:                                               ; preds = %60, %47
  store i32 0, i32* %2, align 4
  br label %70

70:                                               ; preds = %69, %43
  %71 = load i32, i32* %2, align 4
  ret i32 %71
}

declare dso_local %struct.ahci_controller* @device_get_softc(i32) #1

declare dso_local i32 @ATA_OUTL(i32, i32, i32) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @ATA_INL(i32, i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
