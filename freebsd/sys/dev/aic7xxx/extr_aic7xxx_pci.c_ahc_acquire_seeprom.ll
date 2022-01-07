; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/aic7xxx/extr_aic7xxx_pci.c_ahc_acquire_seeprom.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/aic7xxx/extr_aic7xxx_pci.c_ahc_acquire_seeprom.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ahc_softc = type { i32 }
%struct.seeprom_descriptor = type { i32, i32 }

@AHC_SPIOCAP = common dso_local global i32 0, align 4
@SPIOCAP = common dso_local global i32 0, align 4
@SEEPROM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ahc_acquire_seeprom(%struct.ahc_softc* %0, %struct.seeprom_descriptor* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ahc_softc*, align 8
  %5 = alloca %struct.seeprom_descriptor*, align 8
  %6 = alloca i32, align 4
  store %struct.ahc_softc* %0, %struct.ahc_softc** %4, align 8
  store %struct.seeprom_descriptor* %1, %struct.seeprom_descriptor** %5, align 8
  %7 = load %struct.ahc_softc*, %struct.ahc_softc** %4, align 8
  %8 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @AHC_SPIOCAP, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %21

13:                                               ; preds = %2
  %14 = load %struct.ahc_softc*, %struct.ahc_softc** %4, align 8
  %15 = load i32, i32* @SPIOCAP, align 4
  %16 = call i32 @ahc_inb(%struct.ahc_softc* %14, i32 %15)
  %17 = load i32, i32* @SEEPROM, align 4
  %18 = and i32 %16, %17
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %13
  store i32 0, i32* %3, align 4
  br label %55

21:                                               ; preds = %13, %2
  %22 = load %struct.seeprom_descriptor*, %struct.seeprom_descriptor** %5, align 8
  %23 = load %struct.seeprom_descriptor*, %struct.seeprom_descriptor** %5, align 8
  %24 = getelementptr inbounds %struct.seeprom_descriptor, %struct.seeprom_descriptor* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @SEEPROM_OUTB(%struct.seeprom_descriptor* %22, i32 %25)
  store i32 1000, i32* %6, align 4
  br label %27

27:                                               ; preds = %41, %21
  %28 = load i32, i32* %6, align 4
  %29 = add nsw i32 %28, -1
  store i32 %29, i32* %6, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %39

31:                                               ; preds = %27
  %32 = load %struct.seeprom_descriptor*, %struct.seeprom_descriptor** %5, align 8
  %33 = call i32 @SEEPROM_STATUS_INB(%struct.seeprom_descriptor* %32)
  %34 = load %struct.seeprom_descriptor*, %struct.seeprom_descriptor** %5, align 8
  %35 = getelementptr inbounds %struct.seeprom_descriptor, %struct.seeprom_descriptor* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = and i32 %33, %36
  %38 = icmp eq i32 %37, 0
  br label %39

39:                                               ; preds = %31, %27
  %40 = phi i1 [ false, %27 ], [ %38, %31 ]
  br i1 %40, label %41, label %43

41:                                               ; preds = %39
  %42 = call i32 @aic_delay(i32 1000)
  br label %27

43:                                               ; preds = %39
  %44 = load %struct.seeprom_descriptor*, %struct.seeprom_descriptor** %5, align 8
  %45 = call i32 @SEEPROM_STATUS_INB(%struct.seeprom_descriptor* %44)
  %46 = load %struct.seeprom_descriptor*, %struct.seeprom_descriptor** %5, align 8
  %47 = getelementptr inbounds %struct.seeprom_descriptor, %struct.seeprom_descriptor* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = and i32 %45, %48
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %43
  %52 = load %struct.seeprom_descriptor*, %struct.seeprom_descriptor** %5, align 8
  %53 = call i32 @SEEPROM_OUTB(%struct.seeprom_descriptor* %52, i32 0)
  store i32 0, i32* %3, align 4
  br label %55

54:                                               ; preds = %43
  store i32 1, i32* %3, align 4
  br label %55

55:                                               ; preds = %54, %51, %20
  %56 = load i32, i32* %3, align 4
  ret i32 %56
}

declare dso_local i32 @ahc_inb(%struct.ahc_softc*, i32) #1

declare dso_local i32 @SEEPROM_OUTB(%struct.seeprom_descriptor*, i32) #1

declare dso_local i32 @SEEPROM_STATUS_INB(%struct.seeprom_descriptor*) #1

declare dso_local i32 @aic_delay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
