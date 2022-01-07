; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/dc/extr_if_dc.c_dc_read_eeprom.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/dc/extr_if_dc.c_dc_read_eeprom.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dc_softc = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dc_softc*, i64, i32, i32, i32)* @dc_read_eeprom to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dc_read_eeprom(%struct.dc_softc* %0, i64 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.dc_softc*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  store %struct.dc_softc* %0, %struct.dc_softc** %6, align 8
  store i64 %1, i64* %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %11, align 4
  br label %14

14:                                               ; preds = %63, %5
  %15 = load i32, i32* %11, align 4
  %16 = load i32, i32* %9, align 4
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %18, label %66

18:                                               ; preds = %14
  %19 = load %struct.dc_softc*, %struct.dc_softc** %6, align 8
  %20 = call i64 @DC_IS_PNIC(%struct.dc_softc* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %28

22:                                               ; preds = %18
  %23 = load %struct.dc_softc*, %struct.dc_softc** %6, align 8
  %24 = load i32, i32* %8, align 4
  %25 = load i32, i32* %11, align 4
  %26 = add nsw i32 %24, %25
  %27 = call i32 @dc_eeprom_getword_pnic(%struct.dc_softc* %23, i32 %26, i32* %12)
  br label %45

28:                                               ; preds = %18
  %29 = load %struct.dc_softc*, %struct.dc_softc** %6, align 8
  %30 = call i64 @DC_IS_XIRCOM(%struct.dc_softc* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %38

32:                                               ; preds = %28
  %33 = load %struct.dc_softc*, %struct.dc_softc** %6, align 8
  %34 = load i32, i32* %8, align 4
  %35 = load i32, i32* %11, align 4
  %36 = add nsw i32 %34, %35
  %37 = call i32 @dc_eeprom_getword_xircom(%struct.dc_softc* %33, i32 %36, i32* %12)
  br label %44

38:                                               ; preds = %28
  %39 = load %struct.dc_softc*, %struct.dc_softc** %6, align 8
  %40 = load i32, i32* %8, align 4
  %41 = load i32, i32* %11, align 4
  %42 = add nsw i32 %40, %41
  %43 = call i32 @dc_eeprom_getword(%struct.dc_softc* %39, i32 %42, i32* %12)
  br label %44

44:                                               ; preds = %38, %32
  br label %45

45:                                               ; preds = %44, %22
  %46 = load i64, i64* %7, align 8
  %47 = load i32, i32* %11, align 4
  %48 = mul nsw i32 %47, 2
  %49 = sext i32 %48 to i64
  %50 = add nsw i64 %46, %49
  %51 = inttoptr i64 %50 to i32*
  store i32* %51, i32** %13, align 8
  %52 = load i32, i32* %10, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %58

54:                                               ; preds = %45
  %55 = load i32, i32* %12, align 4
  %56 = call i32 @be16toh(i32 %55)
  %57 = load i32*, i32** %13, align 8
  store i32 %56, i32* %57, align 4
  br label %62

58:                                               ; preds = %45
  %59 = load i32, i32* %12, align 4
  %60 = call i32 @le16toh(i32 %59)
  %61 = load i32*, i32** %13, align 8
  store i32 %60, i32* %61, align 4
  br label %62

62:                                               ; preds = %58, %54
  br label %63

63:                                               ; preds = %62
  %64 = load i32, i32* %11, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %11, align 4
  br label %14

66:                                               ; preds = %14
  ret void
}

declare dso_local i64 @DC_IS_PNIC(%struct.dc_softc*) #1

declare dso_local i32 @dc_eeprom_getword_pnic(%struct.dc_softc*, i32, i32*) #1

declare dso_local i64 @DC_IS_XIRCOM(%struct.dc_softc*) #1

declare dso_local i32 @dc_eeprom_getword_xircom(%struct.dc_softc*, i32, i32*) #1

declare dso_local i32 @dc_eeprom_getword(%struct.dc_softc*, i32, i32*) #1

declare dso_local i32 @be16toh(i32) #1

declare dso_local i32 @le16toh(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
