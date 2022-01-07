; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_pci_e82545.c_e82545_init_eeprom.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_pci_e82545.c_e82545_init_eeprom.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e82545_softc = type { i32*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64* }

@NVM_MAC_ADDR = common dso_local global i64 0, align 8
@E82545_SUBDEV_ID = common dso_local global i32 0, align 4
@NVM_SUB_DEV_ID = common dso_local global i64 0, align 8
@E82545_VENDOR_ID_INTEL = common dso_local global i8* null, align 8
@NVM_SUB_VEN_ID = common dso_local global i64 0, align 8
@E82545_DEV_ID_82545EM_COPPER = common dso_local global i32 0, align 4
@NVM_DEV_ID = common dso_local global i64 0, align 8
@NVM_VEN_ID = common dso_local global i64 0, align 8
@NVM_CHECKSUM_REG = common dso_local global i32 0, align 4
@NVM_SUM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"eeprom checksum: 0x%x\0D\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.e82545_softc*)* @e82545_init_eeprom to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @e82545_init_eeprom(%struct.e82545_softc* %0) #0 {
  %2 = alloca %struct.e82545_softc*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.e82545_softc* %0, %struct.e82545_softc** %2, align 8
  %5 = load %struct.e82545_softc*, %struct.e82545_softc** %2, align 8
  %6 = getelementptr inbounds %struct.e82545_softc, %struct.e82545_softc* %5, i32 0, i32 1
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load i64*, i64** %7, align 8
  %9 = getelementptr inbounds i64, i64* %8, i64 0
  %10 = load i64, i64* %9, align 8
  %11 = trunc i64 %10 to i32
  %12 = load %struct.e82545_softc*, %struct.e82545_softc** %2, align 8
  %13 = getelementptr inbounds %struct.e82545_softc, %struct.e82545_softc* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i64*, i64** %14, align 8
  %16 = getelementptr inbounds i64, i64* %15, i64 1
  %17 = load i64, i64* %16, align 8
  %18 = trunc i64 %17 to i32
  %19 = shl i32 %18, 8
  %20 = or i32 %11, %19
  %21 = load %struct.e82545_softc*, %struct.e82545_softc** %2, align 8
  %22 = getelementptr inbounds %struct.e82545_softc, %struct.e82545_softc* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = load i64, i64* @NVM_MAC_ADDR, align 8
  %25 = getelementptr inbounds i32, i32* %23, i64 %24
  store i32 %20, i32* %25, align 4
  %26 = load %struct.e82545_softc*, %struct.e82545_softc** %2, align 8
  %27 = getelementptr inbounds %struct.e82545_softc, %struct.e82545_softc* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i64*, i64** %28, align 8
  %30 = getelementptr inbounds i64, i64* %29, i64 2
  %31 = load i64, i64* %30, align 8
  %32 = trunc i64 %31 to i32
  %33 = load %struct.e82545_softc*, %struct.e82545_softc** %2, align 8
  %34 = getelementptr inbounds %struct.e82545_softc, %struct.e82545_softc* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i64*, i64** %35, align 8
  %37 = getelementptr inbounds i64, i64* %36, i64 3
  %38 = load i64, i64* %37, align 8
  %39 = trunc i64 %38 to i32
  %40 = shl i32 %39, 8
  %41 = or i32 %32, %40
  %42 = load %struct.e82545_softc*, %struct.e82545_softc** %2, align 8
  %43 = getelementptr inbounds %struct.e82545_softc, %struct.e82545_softc* %42, i32 0, i32 0
  %44 = load i32*, i32** %43, align 8
  %45 = load i64, i64* @NVM_MAC_ADDR, align 8
  %46 = add i64 %45, 1
  %47 = getelementptr inbounds i32, i32* %44, i64 %46
  store i32 %41, i32* %47, align 4
  %48 = load %struct.e82545_softc*, %struct.e82545_softc** %2, align 8
  %49 = getelementptr inbounds %struct.e82545_softc, %struct.e82545_softc* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load i64*, i64** %50, align 8
  %52 = getelementptr inbounds i64, i64* %51, i64 4
  %53 = load i64, i64* %52, align 8
  %54 = trunc i64 %53 to i32
  %55 = load %struct.e82545_softc*, %struct.e82545_softc** %2, align 8
  %56 = getelementptr inbounds %struct.e82545_softc, %struct.e82545_softc* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  %58 = load i64*, i64** %57, align 8
  %59 = getelementptr inbounds i64, i64* %58, i64 5
  %60 = load i64, i64* %59, align 8
  %61 = trunc i64 %60 to i32
  %62 = shl i32 %61, 8
  %63 = or i32 %54, %62
  %64 = load %struct.e82545_softc*, %struct.e82545_softc** %2, align 8
  %65 = getelementptr inbounds %struct.e82545_softc, %struct.e82545_softc* %64, i32 0, i32 0
  %66 = load i32*, i32** %65, align 8
  %67 = load i64, i64* @NVM_MAC_ADDR, align 8
  %68 = add i64 %67, 2
  %69 = getelementptr inbounds i32, i32* %66, i64 %68
  store i32 %63, i32* %69, align 4
  %70 = load i32, i32* @E82545_SUBDEV_ID, align 4
  %71 = load %struct.e82545_softc*, %struct.e82545_softc** %2, align 8
  %72 = getelementptr inbounds %struct.e82545_softc, %struct.e82545_softc* %71, i32 0, i32 0
  %73 = load i32*, i32** %72, align 8
  %74 = load i64, i64* @NVM_SUB_DEV_ID, align 8
  %75 = getelementptr inbounds i32, i32* %73, i64 %74
  store i32 %70, i32* %75, align 4
  %76 = load i8*, i8** @E82545_VENDOR_ID_INTEL, align 8
  %77 = ptrtoint i8* %76 to i32
  %78 = load %struct.e82545_softc*, %struct.e82545_softc** %2, align 8
  %79 = getelementptr inbounds %struct.e82545_softc, %struct.e82545_softc* %78, i32 0, i32 0
  %80 = load i32*, i32** %79, align 8
  %81 = load i64, i64* @NVM_SUB_VEN_ID, align 8
  %82 = getelementptr inbounds i32, i32* %80, i64 %81
  store i32 %77, i32* %82, align 4
  %83 = load i32, i32* @E82545_DEV_ID_82545EM_COPPER, align 4
  %84 = load %struct.e82545_softc*, %struct.e82545_softc** %2, align 8
  %85 = getelementptr inbounds %struct.e82545_softc, %struct.e82545_softc* %84, i32 0, i32 0
  %86 = load i32*, i32** %85, align 8
  %87 = load i64, i64* @NVM_DEV_ID, align 8
  %88 = getelementptr inbounds i32, i32* %86, i64 %87
  store i32 %83, i32* %88, align 4
  %89 = load i8*, i8** @E82545_VENDOR_ID_INTEL, align 8
  %90 = ptrtoint i8* %89 to i32
  %91 = load %struct.e82545_softc*, %struct.e82545_softc** %2, align 8
  %92 = getelementptr inbounds %struct.e82545_softc, %struct.e82545_softc* %91, i32 0, i32 0
  %93 = load i32*, i32** %92, align 8
  %94 = load i64, i64* @NVM_VEN_ID, align 8
  %95 = getelementptr inbounds i32, i32* %93, i64 %94
  store i32 %90, i32* %95, align 4
  store i32 0, i32* %3, align 4
  store i32 0, i32* %4, align 4
  br label %96

96:                                               ; preds = %110, %1
  %97 = load i32, i32* %4, align 4
  %98 = load i32, i32* @NVM_CHECKSUM_REG, align 4
  %99 = icmp slt i32 %97, %98
  br i1 %99, label %100, label %113

100:                                              ; preds = %96
  %101 = load %struct.e82545_softc*, %struct.e82545_softc** %2, align 8
  %102 = getelementptr inbounds %struct.e82545_softc, %struct.e82545_softc* %101, i32 0, i32 0
  %103 = load i32*, i32** %102, align 8
  %104 = load i32, i32* %4, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i32, i32* %103, i64 %105
  %107 = load i32, i32* %106, align 4
  %108 = load i32, i32* %3, align 4
  %109 = add nsw i32 %108, %107
  store i32 %109, i32* %3, align 4
  br label %110

110:                                              ; preds = %100
  %111 = load i32, i32* %4, align 4
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %4, align 4
  br label %96

113:                                              ; preds = %96
  %114 = load i32, i32* @NVM_SUM, align 4
  %115 = load i32, i32* %3, align 4
  %116 = sub nsw i32 %114, %115
  store i32 %116, i32* %3, align 4
  %117 = load i32, i32* %3, align 4
  %118 = load %struct.e82545_softc*, %struct.e82545_softc** %2, align 8
  %119 = getelementptr inbounds %struct.e82545_softc, %struct.e82545_softc* %118, i32 0, i32 0
  %120 = load i32*, i32** %119, align 8
  %121 = load i32, i32* @NVM_CHECKSUM_REG, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds i32, i32* %120, i64 %122
  store i32 %117, i32* %123, align 4
  %124 = load i32, i32* %3, align 4
  %125 = call i32 @DPRINTF(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %124)
  ret void
}

declare dso_local i32 @DPRINTF(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
