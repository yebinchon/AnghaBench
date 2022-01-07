; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/fxp/extr_if_fxp.c_fxp_load_eeprom.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/fxp/extr_if_fxp.c_fxp_load_eeprom.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fxp_softc = type { i64*, i32, i32 }

@.str = private unnamed_addr constant [46 x i8] c"EEPROM checksum mismatch! (0x%04x -> 0x%04x)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fxp_softc*)* @fxp_load_eeprom to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fxp_load_eeprom(%struct.fxp_softc* %0) #0 {
  %2 = alloca %struct.fxp_softc*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  store %struct.fxp_softc* %0, %struct.fxp_softc** %2, align 8
  %5 = load %struct.fxp_softc*, %struct.fxp_softc** %2, align 8
  %6 = load %struct.fxp_softc*, %struct.fxp_softc** %2, align 8
  %7 = getelementptr inbounds %struct.fxp_softc, %struct.fxp_softc* %6, i32 0, i32 0
  %8 = load i64*, i64** %7, align 8
  %9 = load %struct.fxp_softc*, %struct.fxp_softc** %2, align 8
  %10 = getelementptr inbounds %struct.fxp_softc, %struct.fxp_softc* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 8
  %12 = shl i32 1, %11
  %13 = call i32 @fxp_read_eeprom(%struct.fxp_softc* %5, i64* %8, i32 0, i32 %12)
  store i64 0, i64* %4, align 8
  store i32 0, i32* %3, align 4
  br label %14

14:                                               ; preds = %32, %1
  %15 = load i32, i32* %3, align 4
  %16 = load %struct.fxp_softc*, %struct.fxp_softc** %2, align 8
  %17 = getelementptr inbounds %struct.fxp_softc, %struct.fxp_softc* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = shl i32 1, %18
  %20 = sub nsw i32 %19, 1
  %21 = icmp slt i32 %15, %20
  br i1 %21, label %22, label %35

22:                                               ; preds = %14
  %23 = load %struct.fxp_softc*, %struct.fxp_softc** %2, align 8
  %24 = getelementptr inbounds %struct.fxp_softc, %struct.fxp_softc* %23, i32 0, i32 0
  %25 = load i64*, i64** %24, align 8
  %26 = load i32, i32* %3, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i64, i64* %25, i64 %27
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* %4, align 8
  %31 = add nsw i64 %30, %29
  store i64 %31, i64* %4, align 8
  br label %32

32:                                               ; preds = %22
  %33 = load i32, i32* %3, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %3, align 4
  br label %14

35:                                               ; preds = %14
  %36 = load i64, i64* %4, align 8
  %37 = sub nsw i64 47802, %36
  store i64 %37, i64* %4, align 8
  %38 = load i64, i64* %4, align 8
  %39 = load %struct.fxp_softc*, %struct.fxp_softc** %2, align 8
  %40 = getelementptr inbounds %struct.fxp_softc, %struct.fxp_softc* %39, i32 0, i32 0
  %41 = load i64*, i64** %40, align 8
  %42 = load %struct.fxp_softc*, %struct.fxp_softc** %2, align 8
  %43 = getelementptr inbounds %struct.fxp_softc, %struct.fxp_softc* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = shl i32 1, %44
  %46 = sub nsw i32 %45, 1
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i64, i64* %41, i64 %47
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %38, %49
  br i1 %50, label %51, label %68

51:                                               ; preds = %35
  %52 = load %struct.fxp_softc*, %struct.fxp_softc** %2, align 8
  %53 = getelementptr inbounds %struct.fxp_softc, %struct.fxp_softc* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  %55 = load i64, i64* %4, align 8
  %56 = load %struct.fxp_softc*, %struct.fxp_softc** %2, align 8
  %57 = getelementptr inbounds %struct.fxp_softc, %struct.fxp_softc* %56, i32 0, i32 0
  %58 = load i64*, i64** %57, align 8
  %59 = load %struct.fxp_softc*, %struct.fxp_softc** %2, align 8
  %60 = getelementptr inbounds %struct.fxp_softc, %struct.fxp_softc* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = shl i32 1, %61
  %63 = sub nsw i32 %62, 1
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i64, i64* %58, i64 %64
  %66 = load i64, i64* %65, align 8
  %67 = call i32 @device_printf(i32 %54, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i64 %55, i64 %66)
  br label %68

68:                                               ; preds = %51, %35
  ret void
}

declare dso_local i32 @fxp_read_eeprom(%struct.fxp_softc*, i64*, i32, i32) #1

declare dso_local i32 @device_printf(i32, i8*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
