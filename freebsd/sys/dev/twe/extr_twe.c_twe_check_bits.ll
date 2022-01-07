; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/twe/extr_twe.c_twe_check_bits.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/twe/extr_twe.c_twe_check_bits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.twe_softc = type { i32 }

@twe_check_bits.lastwarn = internal global [2 x i64] zeroinitializer, align 16
@TWE_STATUS_PANIC_BITS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"FATAL STATUS BIT(S) %b\0A\00", align 1
@TWE_STATUS_BITS_DESCRIPTION = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"fatal status bits\00", align 1
@TWE_STATUS_EXPECTED_BITS = common dso_local global i32 0, align 4
@time_second = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [35 x i8] c"missing expected status bit(s) %b\0A\00", align 1
@TWE_STATUS_UNEXPECTED_BITS = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [29 x i8] c"unexpected status bit(s) %b\0A\00", align 1
@TWE_STATUS_PCI_PARITY_ERROR = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [67 x i8] c"PCI parity error: Reseat card, move card or buggy device present.\0A\00", align 1
@TWE_STATUS_PCI_ABORT = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [22 x i8] c"PCI abort, clearing.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.twe_softc*, i32)* @twe_check_bits to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @twe_check_bits(%struct.twe_softc* %0, i32 %1) #0 {
  %3 = alloca %struct.twe_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.twe_softc* %0, %struct.twe_softc** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  %7 = load i32, i32* @TWE_STATUS_PANIC_BITS, align 4
  %8 = and i32 %6, %7
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %19

10:                                               ; preds = %2
  %11 = load %struct.twe_softc*, %struct.twe_softc** %3, align 8
  %12 = load i32, i32* %4, align 4
  %13 = load i32, i32* @TWE_STATUS_PANIC_BITS, align 4
  %14 = and i32 %12, %13
  %15 = load i32, i32* @TWE_STATUS_BITS_DESCRIPTION, align 4
  %16 = call i32 (%struct.twe_softc*, i8*, ...) @twe_printf(%struct.twe_softc* %11, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %14, i32 %15)
  %17 = load %struct.twe_softc*, %struct.twe_softc** %3, align 8
  %18 = call i32 @twe_panic(%struct.twe_softc* %17, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  br label %19

19:                                               ; preds = %10, %2
  store i32 0, i32* %5, align 4
  %20 = load i32, i32* %4, align 4
  %21 = load i32, i32* @TWE_STATUS_EXPECTED_BITS, align 4
  %22 = and i32 %20, %21
  %23 = load i32, i32* @TWE_STATUS_EXPECTED_BITS, align 4
  %24 = icmp ne i32 %22, %23
  br i1 %24, label %25, label %40

25:                                               ; preds = %19
  %26 = load i64, i64* @time_second, align 8
  %27 = load i64, i64* getelementptr inbounds ([2 x i64], [2 x i64]* @twe_check_bits.lastwarn, i64 0, i64 0), align 16
  %28 = add nsw i64 %27, 5
  %29 = icmp sgt i64 %26, %28
  br i1 %29, label %30, label %39

30:                                               ; preds = %25
  %31 = load %struct.twe_softc*, %struct.twe_softc** %3, align 8
  %32 = load i32, i32* %4, align 4
  %33 = xor i32 %32, -1
  %34 = load i32, i32* @TWE_STATUS_EXPECTED_BITS, align 4
  %35 = and i32 %33, %34
  %36 = load i32, i32* @TWE_STATUS_BITS_DESCRIPTION, align 4
  %37 = call i32 (%struct.twe_softc*, i8*, ...) @twe_printf(%struct.twe_softc* %31, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i32 %35, i32 %36)
  %38 = load i64, i64* @time_second, align 8
  store i64 %38, i64* getelementptr inbounds ([2 x i64], [2 x i64]* @twe_check_bits.lastwarn, i64 0, i64 0), align 16
  br label %39

39:                                               ; preds = %30, %25
  store i32 1, i32* %5, align 4
  br label %40

40:                                               ; preds = %39, %19
  %41 = load i32, i32* %4, align 4
  %42 = load i32, i32* @TWE_STATUS_UNEXPECTED_BITS, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %79

45:                                               ; preds = %40
  %46 = load i64, i64* @time_second, align 8
  %47 = load i64, i64* getelementptr inbounds ([2 x i64], [2 x i64]* @twe_check_bits.lastwarn, i64 0, i64 1), align 8
  %48 = add nsw i64 %47, 5
  %49 = icmp sgt i64 %46, %48
  br i1 %49, label %50, label %58

50:                                               ; preds = %45
  %51 = load %struct.twe_softc*, %struct.twe_softc** %3, align 8
  %52 = load i32, i32* %4, align 4
  %53 = load i32, i32* @TWE_STATUS_UNEXPECTED_BITS, align 4
  %54 = and i32 %52, %53
  %55 = load i32, i32* @TWE_STATUS_BITS_DESCRIPTION, align 4
  %56 = call i32 (%struct.twe_softc*, i8*, ...) @twe_printf(%struct.twe_softc* %51, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0), i32 %54, i32 %55)
  %57 = load i64, i64* @time_second, align 8
  store i64 %57, i64* getelementptr inbounds ([2 x i64], [2 x i64]* @twe_check_bits.lastwarn, i64 0, i64 1), align 8
  br label %58

58:                                               ; preds = %50, %45
  store i32 1, i32* %5, align 4
  %59 = load i32, i32* %4, align 4
  %60 = load i32, i32* @TWE_STATUS_PCI_PARITY_ERROR, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %68

63:                                               ; preds = %58
  %64 = load %struct.twe_softc*, %struct.twe_softc** %3, align 8
  %65 = call i32 (%struct.twe_softc*, i8*, ...) @twe_printf(%struct.twe_softc* %64, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.4, i64 0, i64 0))
  %66 = load %struct.twe_softc*, %struct.twe_softc** %3, align 8
  %67 = call i32 @twe_clear_pci_parity_error(%struct.twe_softc* %66)
  br label %68

68:                                               ; preds = %63, %58
  %69 = load i32, i32* %4, align 4
  %70 = load i32, i32* @TWE_STATUS_PCI_ABORT, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %78

73:                                               ; preds = %68
  %74 = load %struct.twe_softc*, %struct.twe_softc** %3, align 8
  %75 = call i32 (%struct.twe_softc*, i8*, ...) @twe_printf(%struct.twe_softc* %74, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0))
  %76 = load %struct.twe_softc*, %struct.twe_softc** %3, align 8
  %77 = call i32 @twe_clear_pci_abort(%struct.twe_softc* %76)
  br label %78

78:                                               ; preds = %73, %68
  br label %79

79:                                               ; preds = %78, %40
  %80 = load i32, i32* %5, align 4
  ret i32 %80
}

declare dso_local i32 @twe_printf(%struct.twe_softc*, i8*, ...) #1

declare dso_local i32 @twe_panic(%struct.twe_softc*, i8*) #1

declare dso_local i32 @twe_clear_pci_parity_error(%struct.twe_softc*) #1

declare dso_local i32 @twe_clear_pci_abort(%struct.twe_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
