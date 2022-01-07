; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ahci/extr_ahci.c_ahci_ctlr_setup.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ahci/extr_ahci.c_ahci_ctlr_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ahci_controller = type { i32, i32, i32 }

@AHCI_IS = common dso_local global i32 0, align 4
@AHCI_CCCP = common dso_local global i32 0, align 4
@AHCI_PI = common dso_local global i32 0, align 4
@AHCI_CCCC = common dso_local global i32 0, align 4
@AHCI_CCCC_TV_SHIFT = common dso_local global i32 0, align 4
@AHCI_CCCC_CC_SHIFT = common dso_local global i32 0, align 4
@AHCI_CCCC_EN = common dso_local global i32 0, align 4
@AHCI_CCCC_INT_MASK = common dso_local global i32 0, align 4
@AHCI_CCCC_INT_SHIFT = common dso_local global i32 0, align 4
@bootverbose = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [41 x i8] c"CCC with %dms/4cmd enabled on vector %d\0A\00", align 1
@AHCI_GHC = common dso_local global i32 0, align 4
@AHCI_GHC_IE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ahci_ctlr_setup(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ahci_controller*, align 8
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = call %struct.ahci_controller* @device_get_softc(i32 %4)
  store %struct.ahci_controller* %5, %struct.ahci_controller** %3, align 8
  %6 = load %struct.ahci_controller*, %struct.ahci_controller** %3, align 8
  %7 = getelementptr inbounds %struct.ahci_controller, %struct.ahci_controller* %6, i32 0, i32 2
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @AHCI_IS, align 4
  %10 = load %struct.ahci_controller*, %struct.ahci_controller** %3, align 8
  %11 = getelementptr inbounds %struct.ahci_controller, %struct.ahci_controller* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @AHCI_IS, align 4
  %14 = call i32 @ATA_INL(i32 %12, i32 %13)
  %15 = call i32 @ATA_OUTL(i32 %8, i32 %9, i32 %14)
  %16 = load %struct.ahci_controller*, %struct.ahci_controller** %3, align 8
  %17 = getelementptr inbounds %struct.ahci_controller, %struct.ahci_controller* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %69

20:                                               ; preds = %1
  %21 = load %struct.ahci_controller*, %struct.ahci_controller** %3, align 8
  %22 = getelementptr inbounds %struct.ahci_controller, %struct.ahci_controller* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @AHCI_CCCP, align 4
  %25 = load %struct.ahci_controller*, %struct.ahci_controller** %3, align 8
  %26 = getelementptr inbounds %struct.ahci_controller, %struct.ahci_controller* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @AHCI_PI, align 4
  %29 = call i32 @ATA_INL(i32 %27, i32 %28)
  %30 = call i32 @ATA_OUTL(i32 %23, i32 %24, i32 %29)
  %31 = load %struct.ahci_controller*, %struct.ahci_controller** %3, align 8
  %32 = getelementptr inbounds %struct.ahci_controller, %struct.ahci_controller* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @AHCI_CCCC, align 4
  %35 = load %struct.ahci_controller*, %struct.ahci_controller** %3, align 8
  %36 = getelementptr inbounds %struct.ahci_controller, %struct.ahci_controller* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @AHCI_CCCC_TV_SHIFT, align 4
  %39 = shl i32 %37, %38
  %40 = load i32, i32* @AHCI_CCCC_CC_SHIFT, align 4
  %41 = shl i32 4, %40
  %42 = or i32 %39, %41
  %43 = load i32, i32* @AHCI_CCCC_EN, align 4
  %44 = or i32 %42, %43
  %45 = call i32 @ATA_OUTL(i32 %33, i32 %34, i32 %44)
  %46 = load %struct.ahci_controller*, %struct.ahci_controller** %3, align 8
  %47 = getelementptr inbounds %struct.ahci_controller, %struct.ahci_controller* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @AHCI_CCCC, align 4
  %50 = call i32 @ATA_INL(i32 %48, i32 %49)
  %51 = load i32, i32* @AHCI_CCCC_INT_MASK, align 4
  %52 = and i32 %50, %51
  %53 = load i32, i32* @AHCI_CCCC_INT_SHIFT, align 4
  %54 = ashr i32 %52, %53
  %55 = load %struct.ahci_controller*, %struct.ahci_controller** %3, align 8
  %56 = getelementptr inbounds %struct.ahci_controller, %struct.ahci_controller* %55, i32 0, i32 1
  store i32 %54, i32* %56, align 4
  %57 = load i64, i64* @bootverbose, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %68

59:                                               ; preds = %20
  %60 = load i32, i32* %2, align 4
  %61 = load %struct.ahci_controller*, %struct.ahci_controller** %3, align 8
  %62 = getelementptr inbounds %struct.ahci_controller, %struct.ahci_controller* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.ahci_controller*, %struct.ahci_controller** %3, align 8
  %65 = getelementptr inbounds %struct.ahci_controller, %struct.ahci_controller* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @device_printf(i32 %60, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %63, i32 %66)
  br label %68

68:                                               ; preds = %59, %20
  br label %69

69:                                               ; preds = %68, %1
  %70 = load %struct.ahci_controller*, %struct.ahci_controller** %3, align 8
  %71 = getelementptr inbounds %struct.ahci_controller, %struct.ahci_controller* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* @AHCI_GHC, align 4
  %74 = load %struct.ahci_controller*, %struct.ahci_controller** %3, align 8
  %75 = getelementptr inbounds %struct.ahci_controller, %struct.ahci_controller* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* @AHCI_GHC, align 4
  %78 = call i32 @ATA_INL(i32 %76, i32 %77)
  %79 = load i32, i32* @AHCI_GHC_IE, align 4
  %80 = or i32 %78, %79
  %81 = call i32 @ATA_OUTL(i32 %72, i32 %73, i32 %80)
  ret i32 0
}

declare dso_local %struct.ahci_controller* @device_get_softc(i32) #1

declare dso_local i32 @ATA_OUTL(i32, i32, i32) #1

declare dso_local i32 @ATA_INL(i32, i32) #1

declare dso_local i32 @device_printf(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
