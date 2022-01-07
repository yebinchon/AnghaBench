; ModuleID = '/home/carl/AnghaBench/freebsd/sys/sparc64/pci/extr_schizo.c_schizo_get_intrmap.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/sparc64/pci/extr_schizo.c_schizo_get_intrmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.schizo_softc = type { i32 }

@STX_MAX_INO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"out of range INO %d requested\0A\00", align 1
@STX_PCI_IMAP_BASE = common dso_local global i64 0, align 8
@STX_PCI_ICLR_BASE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [51 x i8] c"interrupt map entry does not match INO (%d != %d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.schizo_softc*, i32, i64*, i64*)* @schizo_get_intrmap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @schizo_get_intrmap(%struct.schizo_softc* %0, i32 %1, i64* %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.schizo_softc*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.schizo_softc* %0, %struct.schizo_softc** %6, align 8
  store i32 %1, i32* %7, align 4
  store i64* %2, i64** %8, align 8
  store i64* %3, i64** %9, align 8
  %13 = load i32, i32* %7, align 4
  %14 = load i32, i32* @STX_MAX_INO, align 4
  %15 = icmp sgt i32 %13, %14
  br i1 %15, label %16, label %22

16:                                               ; preds = %4
  %17 = load %struct.schizo_softc*, %struct.schizo_softc** %6, align 8
  %18 = getelementptr inbounds %struct.schizo_softc, %struct.schizo_softc* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* %7, align 4
  %21 = call i32 (i32, i8*, i32, ...) @device_printf(i32 %19, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %20)
  store i32 0, i32* %5, align 4
  br label %61

22:                                               ; preds = %4
  %23 = load i64, i64* @STX_PCI_IMAP_BASE, align 8
  %24 = load i32, i32* %7, align 4
  %25 = shl i32 %24, 3
  %26 = sext i32 %25 to i64
  %27 = add nsw i64 %23, %26
  store i64 %27, i64* %11, align 8
  %28 = load i64, i64* @STX_PCI_ICLR_BASE, align 8
  %29 = load i32, i32* %7, align 4
  %30 = shl i32 %29, 3
  %31 = sext i32 %30 to i64
  %32 = add nsw i64 %28, %31
  store i64 %32, i64* %10, align 8
  %33 = load %struct.schizo_softc*, %struct.schizo_softc** %6, align 8
  %34 = load i64, i64* %11, align 8
  %35 = call i32 @SCHIZO_PCI_READ_8(%struct.schizo_softc* %33, i64 %34)
  store i32 %35, i32* %12, align 4
  %36 = load i32, i32* %12, align 4
  %37 = call i32 @INTINO(i32 %36)
  %38 = load i32, i32* %7, align 4
  %39 = icmp ne i32 %37, %38
  br i1 %39, label %40, label %48

40:                                               ; preds = %22
  %41 = load %struct.schizo_softc*, %struct.schizo_softc** %6, align 8
  %42 = getelementptr inbounds %struct.schizo_softc, %struct.schizo_softc* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* %12, align 4
  %45 = call i32 @INTINO(i32 %44)
  %46 = load i32, i32* %7, align 4
  %47 = call i32 (i32, i8*, i32, ...) @device_printf(i32 %43, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0), i32 %45, i32 %46)
  store i32 0, i32* %5, align 4
  br label %61

48:                                               ; preds = %22
  %49 = load i64*, i64** %8, align 8
  %50 = icmp ne i64* %49, null
  br i1 %50, label %51, label %54

51:                                               ; preds = %48
  %52 = load i64, i64* %11, align 8
  %53 = load i64*, i64** %8, align 8
  store i64 %52, i64* %53, align 8
  br label %54

54:                                               ; preds = %51, %48
  %55 = load i64*, i64** %9, align 8
  %56 = icmp ne i64* %55, null
  br i1 %56, label %57, label %60

57:                                               ; preds = %54
  %58 = load i64, i64* %10, align 8
  %59 = load i64*, i64** %9, align 8
  store i64 %58, i64* %59, align 8
  br label %60

60:                                               ; preds = %57, %54
  store i32 1, i32* %5, align 4
  br label %61

61:                                               ; preds = %60, %40, %16
  %62 = load i32, i32* %5, align 4
  ret i32 %62
}

declare dso_local i32 @device_printf(i32, i8*, i32, ...) #1

declare dso_local i32 @SCHIZO_PCI_READ_8(%struct.schizo_softc*, i64) #1

declare dso_local i32 @INTINO(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
