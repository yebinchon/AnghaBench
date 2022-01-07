; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/iwm/extr_if_iwm.c_iwm_nvm_read_section.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/iwm/extr_if_iwm.c_iwm_nvm_read_section.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwm_softc = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@IWM_NVM_DEFAULT_CHUNK_SIZE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [34 x i8] c"EEPROM size is too small for NVM\0A\00", align 1
@ENOBUFS = common dso_local global i32 0, align 4
@IWM_DEBUG_EEPROM = common dso_local global i32 0, align 4
@IWM_DEBUG_RESET = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [54 x i8] c"Cannot read NVM from section %d offset %d, length %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"NVM section %d read completed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iwm_softc*, i64, i32*, i64*, i64)* @iwm_nvm_read_section to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iwm_nvm_read_section(%struct.iwm_softc* %0, i64 %1, i32* %2, i64* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.iwm_softc*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  store %struct.iwm_softc* %0, %struct.iwm_softc** %7, align 8
  store i64 %1, i64* %8, align 8
  store i32* %2, i32** %9, align 8
  store i64* %3, i64** %10, align 8
  store i64 %4, i64* %11, align 8
  store i64 0, i64* %14, align 8
  %16 = load i64, i64* @IWM_NVM_DEFAULT_CHUNK_SIZE, align 8
  store i64 %16, i64* %13, align 8
  %17 = load i64, i64* %13, align 8
  store i64 %17, i64* %12, align 8
  br label %18

18:                                               ; preds = %59, %5
  %19 = load i64, i64* %12, align 8
  %20 = load i64, i64* %13, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %63

22:                                               ; preds = %18
  %23 = load i64, i64* %11, align 8
  %24 = load i64, i64* %14, align 8
  %25 = add nsw i64 %23, %24
  %26 = load i64, i64* %13, align 8
  %27 = add nsw i64 %25, %26
  %28 = load %struct.iwm_softc*, %struct.iwm_softc** %7, align 8
  %29 = getelementptr inbounds %struct.iwm_softc, %struct.iwm_softc* %28, i32 0, i32 1
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp sgt i64 %27, %32
  br i1 %33, label %34, label %40

34:                                               ; preds = %22
  %35 = load %struct.iwm_softc*, %struct.iwm_softc** %7, align 8
  %36 = getelementptr inbounds %struct.iwm_softc, %struct.iwm_softc* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @device_printf(i32 %37, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %39 = load i32, i32* @ENOBUFS, align 4
  store i32 %39, i32* %6, align 4
  br label %72

40:                                               ; preds = %22
  %41 = load %struct.iwm_softc*, %struct.iwm_softc** %7, align 8
  %42 = load i64, i64* %8, align 8
  %43 = load i64, i64* %14, align 8
  %44 = load i64, i64* %13, align 8
  %45 = load i32*, i32** %9, align 8
  %46 = call i32 @iwm_nvm_read_chunk(%struct.iwm_softc* %41, i64 %42, i64 %43, i64 %44, i32* %45, i64* %12)
  store i32 %46, i32* %15, align 4
  %47 = load i32, i32* %15, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %59

49:                                               ; preds = %40
  %50 = load %struct.iwm_softc*, %struct.iwm_softc** %7, align 8
  %51 = load i32, i32* @IWM_DEBUG_EEPROM, align 4
  %52 = load i32, i32* @IWM_DEBUG_RESET, align 4
  %53 = or i32 %51, %52
  %54 = load i64, i64* %8, align 8
  %55 = load i64, i64* %14, align 8
  %56 = load i64, i64* %13, align 8
  %57 = call i32 (%struct.iwm_softc*, i32, i8*, i64, ...) @IWM_DPRINTF(%struct.iwm_softc* %50, i32 %53, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.1, i64 0, i64 0), i64 %54, i64 %55, i64 %56)
  %58 = load i32, i32* %15, align 4
  store i32 %58, i32* %6, align 4
  br label %72

59:                                               ; preds = %40
  %60 = load i64, i64* %12, align 8
  %61 = load i64, i64* %14, align 8
  %62 = add nsw i64 %61, %60
  store i64 %62, i64* %14, align 8
  br label %18

63:                                               ; preds = %18
  %64 = load %struct.iwm_softc*, %struct.iwm_softc** %7, align 8
  %65 = load i32, i32* @IWM_DEBUG_EEPROM, align 4
  %66 = load i32, i32* @IWM_DEBUG_RESET, align 4
  %67 = or i32 %65, %66
  %68 = load i64, i64* %8, align 8
  %69 = call i32 (%struct.iwm_softc*, i32, i8*, i64, ...) @IWM_DPRINTF(%struct.iwm_softc* %64, i32 %67, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i64 %68)
  %70 = load i64, i64* %14, align 8
  %71 = load i64*, i64** %10, align 8
  store i64 %70, i64* %71, align 8
  store i32 0, i32* %6, align 4
  br label %72

72:                                               ; preds = %63, %49, %34
  %73 = load i32, i32* %6, align 4
  ret i32 %73
}

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @iwm_nvm_read_chunk(%struct.iwm_softc*, i64, i64, i64, i32*, i64*) #1

declare dso_local i32 @IWM_DPRINTF(%struct.iwm_softc*, i32, i8*, i64, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
