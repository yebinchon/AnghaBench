; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ste/extr_if_ste.c_ste_read_eeprom.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ste/extr_if_ste.c_ste_read_eeprom.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ste_softc = type { i32 }

@STE_EEPROM_CTL = common dso_local global i32 0, align 4
@STE_EEOPCODE_READ = common dso_local global i32 0, align 4
@STE_EEPROM_DATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ste_softc*, i32*, i32, i32)* @ste_read_eeprom to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ste_read_eeprom(%struct.ste_softc* %0, i32* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ste_softc*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.ste_softc* %0, %struct.ste_softc** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %12 = load %struct.ste_softc*, %struct.ste_softc** %6, align 8
  %13 = call i32 @ste_eeprom_wait(%struct.ste_softc* %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %4
  store i32 1, i32* %5, align 4
  br label %51

16:                                               ; preds = %4
  store i32 0, i32* %11, align 4
  br label %17

17:                                               ; preds = %43, %16
  %18 = load i32, i32* %11, align 4
  %19 = load i32, i32* %9, align 4
  %20 = icmp slt i32 %18, %19
  br i1 %20, label %21, label %46

21:                                               ; preds = %17
  %22 = load %struct.ste_softc*, %struct.ste_softc** %6, align 8
  %23 = load i32, i32* @STE_EEPROM_CTL, align 4
  %24 = load i32, i32* @STE_EEOPCODE_READ, align 4
  %25 = load i32, i32* %8, align 4
  %26 = load i32, i32* %11, align 4
  %27 = add nsw i32 %25, %26
  %28 = or i32 %24, %27
  %29 = call i32 @CSR_WRITE_2(%struct.ste_softc* %22, i32 %23, i32 %28)
  %30 = load %struct.ste_softc*, %struct.ste_softc** %6, align 8
  %31 = call i32 @ste_eeprom_wait(%struct.ste_softc* %30)
  store i32 %31, i32* %10, align 4
  %32 = load i32, i32* %10, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %21
  br label %46

35:                                               ; preds = %21
  %36 = load %struct.ste_softc*, %struct.ste_softc** %6, align 8
  %37 = load i32, i32* @STE_EEPROM_DATA, align 4
  %38 = call i32 @CSR_READ_2(%struct.ste_softc* %36, i32 %37)
  %39 = call i32 @le16toh(i32 %38)
  %40 = load i32*, i32** %7, align 8
  store i32 %39, i32* %40, align 4
  %41 = load i32*, i32** %7, align 8
  %42 = getelementptr inbounds i32, i32* %41, i32 1
  store i32* %42, i32** %7, align 8
  br label %43

43:                                               ; preds = %35
  %44 = load i32, i32* %11, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %11, align 4
  br label %17

46:                                               ; preds = %34, %17
  %47 = load i32, i32* %10, align 4
  %48 = icmp ne i32 %47, 0
  %49 = zext i1 %48 to i64
  %50 = select i1 %48, i32 1, i32 0
  store i32 %50, i32* %5, align 4
  br label %51

51:                                               ; preds = %46, %15
  %52 = load i32, i32* %5, align 4
  ret i32 %52
}

declare dso_local i32 @ste_eeprom_wait(%struct.ste_softc*) #1

declare dso_local i32 @CSR_WRITE_2(%struct.ste_softc*, i32, i32) #1

declare dso_local i32 @le16toh(i32) #1

declare dso_local i32 @CSR_READ_2(%struct.ste_softc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
