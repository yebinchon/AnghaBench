; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe_elink.c_elink_read_sfp_module_eeprom.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe_elink.c_elink_read_sfp_module_eeprom.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.elink_phy = type { i32 }
%struct.elink_params = type { %struct.bxe_softc* }
%struct.bxe_softc = type { i32 }

@.str = private unnamed_addr constant [23 x i8] c"invalid dev_addr 0x%x\0A\00", align 1
@ELINK_STATUS_ERROR = common dso_local global i64 0, align 8
@ELINK_OP_NOT_SUPPORTED = common dso_local global i64 0, align 8
@ELINK_SFP_EEPROM_PAGE_SIZE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @elink_read_sfp_module_eeprom(%struct.elink_phy* %0, %struct.elink_params* %1, i32 %2, i64 %3, i64 %4, i32* %5) #0 {
  %7 = alloca i64, align 8
  %8 = alloca %struct.elink_phy*, align 8
  %9 = alloca %struct.elink_params*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i64, align 8
  %15 = alloca %struct.bxe_softc*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  %18 = alloca i64 (%struct.elink_phy*, %struct.elink_params*, i32, i64, i32, i32*, i32)*, align 8
  store %struct.elink_phy* %0, %struct.elink_phy** %8, align 8
  store %struct.elink_params* %1, %struct.elink_params** %9, align 8
  store i32 %2, i32* %10, align 4
  store i64 %3, i64* %11, align 8
  store i64 %4, i64* %12, align 8
  store i32* %5, i32** %13, align 8
  store i64 0, i64* %14, align 8
  %19 = load %struct.elink_params*, %struct.elink_params** %9, align 8
  %20 = getelementptr inbounds %struct.elink_params, %struct.elink_params* %19, i32 0, i32 0
  %21 = load %struct.bxe_softc*, %struct.bxe_softc** %20, align 8
  store %struct.bxe_softc* %21, %struct.bxe_softc** %15, align 8
  %22 = load i32*, i32** %13, align 8
  store i32* %22, i32** %17, align 8
  %23 = load i32, i32* %10, align 4
  %24 = icmp ne i32 %23, 160
  br i1 %24, label %25, label %33

25:                                               ; preds = %6
  %26 = load i32, i32* %10, align 4
  %27 = icmp ne i32 %26, 162
  br i1 %27, label %28, label %33

28:                                               ; preds = %25
  %29 = load %struct.bxe_softc*, %struct.bxe_softc** %15, align 8
  %30 = load i32, i32* %10, align 4
  %31 = call i32 @ELINK_DEBUG_P1(%struct.bxe_softc* %29, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %30)
  %32 = load i64, i64* @ELINK_STATUS_ERROR, align 8
  store i64 %32, i64* %7, align 8
  br label %84

33:                                               ; preds = %25, %6
  %34 = load %struct.elink_phy*, %struct.elink_phy** %8, align 8
  %35 = getelementptr inbounds %struct.elink_phy, %struct.elink_phy* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  switch i32 %36, label %40 [
    i32 130, label %37
    i32 129, label %38
    i32 131, label %38
    i32 128, label %39
  ]

37:                                               ; preds = %33
  store i64 (%struct.elink_phy*, %struct.elink_params*, i32, i64, i32, i32*, i32)* @elink_8726_read_sfp_module_eeprom, i64 (%struct.elink_phy*, %struct.elink_params*, i32, i64, i32, i32*, i32)** %18, align 8
  br label %42

38:                                               ; preds = %33, %33
  store i64 (%struct.elink_phy*, %struct.elink_params*, i32, i64, i32, i32*, i32)* @elink_8727_read_sfp_module_eeprom, i64 (%struct.elink_phy*, %struct.elink_params*, i32, i64, i32, i32*, i32)** %18, align 8
  br label %42

39:                                               ; preds = %33
  store i64 (%struct.elink_phy*, %struct.elink_params*, i32, i64, i32, i32*, i32)* @elink_warpcore_read_sfp_module_eeprom, i64 (%struct.elink_phy*, %struct.elink_params*, i32, i64, i32, i32*, i32)** %18, align 8
  br label %42

40:                                               ; preds = %33
  %41 = load i64, i64* @ELINK_OP_NOT_SUPPORTED, align 8
  store i64 %41, i64* %7, align 8
  br label %84

42:                                               ; preds = %39, %38, %37
  br label %43

43:                                               ; preds = %59, %42
  %44 = load i64, i64* %14, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %49, label %46

46:                                               ; preds = %43
  %47 = load i64, i64* %12, align 8
  %48 = icmp sgt i64 %47, 0
  br label %49

49:                                               ; preds = %46, %43
  %50 = phi i1 [ false, %43 ], [ %48, %46 ]
  br i1 %50, label %51, label %82

51:                                               ; preds = %49
  %52 = load i64, i64* %12, align 8
  %53 = load i64, i64* @ELINK_SFP_EEPROM_PAGE_SIZE, align 8
  %54 = icmp sgt i64 %52, %53
  br i1 %54, label %55, label %57

55:                                               ; preds = %51
  %56 = load i64, i64* @ELINK_SFP_EEPROM_PAGE_SIZE, align 8
  br label %59

57:                                               ; preds = %51
  %58 = load i64, i64* %12, align 8
  br label %59

59:                                               ; preds = %57, %55
  %60 = phi i64 [ %56, %55 ], [ %58, %57 ]
  %61 = trunc i64 %60 to i32
  store i32 %61, i32* %16, align 4
  %62 = load i64 (%struct.elink_phy*, %struct.elink_params*, i32, i64, i32, i32*, i32)*, i64 (%struct.elink_phy*, %struct.elink_params*, i32, i64, i32, i32*, i32)** %18, align 8
  %63 = load %struct.elink_phy*, %struct.elink_phy** %8, align 8
  %64 = load %struct.elink_params*, %struct.elink_params** %9, align 8
  %65 = load i32, i32* %10, align 4
  %66 = load i64, i64* %11, align 8
  %67 = load i32, i32* %16, align 4
  %68 = load i32*, i32** %17, align 8
  %69 = call i64 %62(%struct.elink_phy* %63, %struct.elink_params* %64, i32 %65, i64 %66, i32 %67, i32* %68, i32 0)
  store i64 %69, i64* %14, align 8
  %70 = load i32, i32* %16, align 4
  %71 = sext i32 %70 to i64
  %72 = load i64, i64* %12, align 8
  %73 = sub nsw i64 %72, %71
  store i64 %73, i64* %12, align 8
  %74 = load i32, i32* %16, align 4
  %75 = load i32*, i32** %17, align 8
  %76 = sext i32 %74 to i64
  %77 = getelementptr inbounds i32, i32* %75, i64 %76
  store i32* %77, i32** %17, align 8
  %78 = load i32, i32* %16, align 4
  %79 = sext i32 %78 to i64
  %80 = load i64, i64* %11, align 8
  %81 = add nsw i64 %80, %79
  store i64 %81, i64* %11, align 8
  br label %43

82:                                               ; preds = %49
  %83 = load i64, i64* %14, align 8
  store i64 %83, i64* %7, align 8
  br label %84

84:                                               ; preds = %82, %40, %28
  %85 = load i64, i64* %7, align 8
  ret i64 %85
}

declare dso_local i32 @ELINK_DEBUG_P1(%struct.bxe_softc*, i8*, i32) #1

declare dso_local i64 @elink_8726_read_sfp_module_eeprom(%struct.elink_phy*, %struct.elink_params*, i32, i64, i32, i32*, i32) #1

declare dso_local i64 @elink_8727_read_sfp_module_eeprom(%struct.elink_phy*, %struct.elink_params*, i32, i64, i32, i32*, i32) #1

declare dso_local i64 @elink_warpcore_read_sfp_module_eeprom(%struct.elink_phy*, %struct.elink_params*, i32, i64, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
