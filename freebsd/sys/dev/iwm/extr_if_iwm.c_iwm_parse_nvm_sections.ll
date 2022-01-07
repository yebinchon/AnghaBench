; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/iwm/extr_if_iwm.c_iwm_parse_nvm_sections.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/iwm/extr_if_iwm.c_iwm_parse_nvm_sections.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwm_nvm_data = type { i32 }
%struct.iwm_softc = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i64, i64, i64 }
%struct.iwm_nvm_section = type { i64 }

@IWM_DEVICE_FAMILY_7000 = common dso_local global i64 0, align 8
@IWM_NVM_SECTION_TYPE_SW = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [36 x i8] c"Can't parse empty OTP/NVM sections\0A\00", align 1
@IWM_DEVICE_FAMILY_8000 = common dso_local global i64 0, align 8
@IWM_NVM_SECTION_TYPE_REGULATORY = common dso_local global i64 0, align 8
@IWM_NVM_SECTION_TYPE_MAC_OVERRIDE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [41 x i8] c"Can't parse mac_address, empty sections\0A\00", align 1
@IWM_NVM_SECTION_TYPE_PHY_SKU = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [43 x i8] c"Can't parse phy_sku in B0, empty sections\0A\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"unknown device family %d\0A\00", align 1
@IWM_NVM_SECTION_TYPE_CALIBRATION = common dso_local global i64 0, align 8
@IWM_NVM_SDP = common dso_local global i64 0, align 8
@IWM_NVM_SECTION_TYPE_REGULATORY_SDP = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.iwm_nvm_data* (%struct.iwm_softc*, %struct.iwm_nvm_section*)* @iwm_parse_nvm_sections to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.iwm_nvm_data* @iwm_parse_nvm_sections(%struct.iwm_softc* %0, %struct.iwm_nvm_section* %1) #0 {
  %3 = alloca %struct.iwm_nvm_data*, align 8
  %4 = alloca %struct.iwm_softc*, align 8
  %5 = alloca %struct.iwm_nvm_section*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  store %struct.iwm_softc* %0, %struct.iwm_softc** %4, align 8
  store %struct.iwm_nvm_section* %1, %struct.iwm_nvm_section** %5, align 8
  %12 = load %struct.iwm_softc*, %struct.iwm_softc** %4, align 8
  %13 = getelementptr inbounds %struct.iwm_softc, %struct.iwm_softc* %12, i32 0, i32 0
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @IWM_DEVICE_FAMILY_7000, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %43

19:                                               ; preds = %2
  %20 = load %struct.iwm_nvm_section*, %struct.iwm_nvm_section** %5, align 8
  %21 = load i64, i64* @IWM_NVM_SECTION_TYPE_SW, align 8
  %22 = getelementptr inbounds %struct.iwm_nvm_section, %struct.iwm_nvm_section* %20, i64 %21
  %23 = getelementptr inbounds %struct.iwm_nvm_section, %struct.iwm_nvm_section* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %37

26:                                               ; preds = %19
  %27 = load %struct.iwm_nvm_section*, %struct.iwm_nvm_section** %5, align 8
  %28 = load %struct.iwm_softc*, %struct.iwm_softc** %4, align 8
  %29 = getelementptr inbounds %struct.iwm_softc, %struct.iwm_softc* %28, i32 0, i32 0
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = getelementptr inbounds %struct.iwm_nvm_section, %struct.iwm_nvm_section* %27, i64 %32
  %34 = getelementptr inbounds %struct.iwm_nvm_section, %struct.iwm_nvm_section* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %42, label %37

37:                                               ; preds = %26, %19
  %38 = load %struct.iwm_softc*, %struct.iwm_softc** %4, align 8
  %39 = getelementptr inbounds %struct.iwm_softc, %struct.iwm_softc* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @device_printf(i32 %40, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  store %struct.iwm_nvm_data* null, %struct.iwm_nvm_data** %3, align 8
  br label %180

42:                                               ; preds = %26
  br label %114

43:                                               ; preds = %2
  %44 = load %struct.iwm_softc*, %struct.iwm_softc** %4, align 8
  %45 = getelementptr inbounds %struct.iwm_softc, %struct.iwm_softc* %44, i32 0, i32 0
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @IWM_DEVICE_FAMILY_8000, align 8
  %50 = icmp sge i64 %48, %49
  br i1 %50, label %51, label %106

51:                                               ; preds = %43
  %52 = load %struct.iwm_nvm_section*, %struct.iwm_nvm_section** %5, align 8
  %53 = load i64, i64* @IWM_NVM_SECTION_TYPE_SW, align 8
  %54 = getelementptr inbounds %struct.iwm_nvm_section, %struct.iwm_nvm_section* %52, i64 %53
  %55 = getelementptr inbounds %struct.iwm_nvm_section, %struct.iwm_nvm_section* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %65

58:                                               ; preds = %51
  %59 = load %struct.iwm_nvm_section*, %struct.iwm_nvm_section** %5, align 8
  %60 = load i64, i64* @IWM_NVM_SECTION_TYPE_REGULATORY, align 8
  %61 = getelementptr inbounds %struct.iwm_nvm_section, %struct.iwm_nvm_section* %59, i64 %60
  %62 = getelementptr inbounds %struct.iwm_nvm_section, %struct.iwm_nvm_section* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %70, label %65

65:                                               ; preds = %58, %51
  %66 = load %struct.iwm_softc*, %struct.iwm_softc** %4, align 8
  %67 = getelementptr inbounds %struct.iwm_softc, %struct.iwm_softc* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 8
  %69 = call i32 @device_printf(i32 %68, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  store %struct.iwm_nvm_data* null, %struct.iwm_nvm_data** %3, align 8
  br label %180

70:                                               ; preds = %58
  %71 = load %struct.iwm_nvm_section*, %struct.iwm_nvm_section** %5, align 8
  %72 = load %struct.iwm_softc*, %struct.iwm_softc** %4, align 8
  %73 = getelementptr inbounds %struct.iwm_softc, %struct.iwm_softc* %72, i32 0, i32 0
  %74 = load %struct.TYPE_2__*, %struct.TYPE_2__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = getelementptr inbounds %struct.iwm_nvm_section, %struct.iwm_nvm_section* %71, i64 %76
  %78 = getelementptr inbounds %struct.iwm_nvm_section, %struct.iwm_nvm_section* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %93, label %81

81:                                               ; preds = %70
  %82 = load %struct.iwm_nvm_section*, %struct.iwm_nvm_section** %5, align 8
  %83 = load i64, i64* @IWM_NVM_SECTION_TYPE_MAC_OVERRIDE, align 8
  %84 = getelementptr inbounds %struct.iwm_nvm_section, %struct.iwm_nvm_section* %82, i64 %83
  %85 = getelementptr inbounds %struct.iwm_nvm_section, %struct.iwm_nvm_section* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %93, label %88

88:                                               ; preds = %81
  %89 = load %struct.iwm_softc*, %struct.iwm_softc** %4, align 8
  %90 = getelementptr inbounds %struct.iwm_softc, %struct.iwm_softc* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 8
  %92 = call i32 @device_printf(i32 %91, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  store %struct.iwm_nvm_data* null, %struct.iwm_nvm_data** %3, align 8
  br label %180

93:                                               ; preds = %81, %70
  %94 = load %struct.iwm_nvm_section*, %struct.iwm_nvm_section** %5, align 8
  %95 = load i64, i64* @IWM_NVM_SECTION_TYPE_PHY_SKU, align 8
  %96 = getelementptr inbounds %struct.iwm_nvm_section, %struct.iwm_nvm_section* %94, i64 %95
  %97 = getelementptr inbounds %struct.iwm_nvm_section, %struct.iwm_nvm_section* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %105, label %100

100:                                              ; preds = %93
  %101 = load %struct.iwm_softc*, %struct.iwm_softc** %4, align 8
  %102 = getelementptr inbounds %struct.iwm_softc, %struct.iwm_softc* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 8
  %104 = call i32 @device_printf(i32 %103, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0))
  store %struct.iwm_nvm_data* null, %struct.iwm_nvm_data** %3, align 8
  br label %180

105:                                              ; preds = %93
  br label %113

106:                                              ; preds = %43
  %107 = load %struct.iwm_softc*, %struct.iwm_softc** %4, align 8
  %108 = getelementptr inbounds %struct.iwm_softc, %struct.iwm_softc* %107, i32 0, i32 0
  %109 = load %struct.TYPE_2__*, %struct.TYPE_2__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = call i32 @panic(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i64 %111)
  br label %113

113:                                              ; preds = %106, %105
  br label %114

114:                                              ; preds = %113, %42
  %115 = load %struct.iwm_nvm_section*, %struct.iwm_nvm_section** %5, align 8
  %116 = load %struct.iwm_softc*, %struct.iwm_softc** %4, align 8
  %117 = getelementptr inbounds %struct.iwm_softc, %struct.iwm_softc* %116, i32 0, i32 0
  %118 = load %struct.TYPE_2__*, %struct.TYPE_2__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %118, i32 0, i32 1
  %120 = load i64, i64* %119, align 8
  %121 = getelementptr inbounds %struct.iwm_nvm_section, %struct.iwm_nvm_section* %115, i64 %120
  %122 = getelementptr inbounds %struct.iwm_nvm_section, %struct.iwm_nvm_section* %121, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = inttoptr i64 %123 to i32*
  store i32* %124, i32** %6, align 8
  %125 = load %struct.iwm_nvm_section*, %struct.iwm_nvm_section** %5, align 8
  %126 = load i64, i64* @IWM_NVM_SECTION_TYPE_SW, align 8
  %127 = getelementptr inbounds %struct.iwm_nvm_section, %struct.iwm_nvm_section* %125, i64 %126
  %128 = getelementptr inbounds %struct.iwm_nvm_section, %struct.iwm_nvm_section* %127, i32 0, i32 0
  %129 = load i64, i64* %128, align 8
  %130 = inttoptr i64 %129 to i32*
  store i32* %130, i32** %7, align 8
  %131 = load %struct.iwm_nvm_section*, %struct.iwm_nvm_section** %5, align 8
  %132 = load i64, i64* @IWM_NVM_SECTION_TYPE_CALIBRATION, align 8
  %133 = getelementptr inbounds %struct.iwm_nvm_section, %struct.iwm_nvm_section* %131, i64 %132
  %134 = getelementptr inbounds %struct.iwm_nvm_section, %struct.iwm_nvm_section* %133, i32 0, i32 0
  %135 = load i64, i64* %134, align 8
  %136 = inttoptr i64 %135 to i32*
  store i32* %136, i32** %8, align 8
  %137 = load %struct.iwm_softc*, %struct.iwm_softc** %4, align 8
  %138 = getelementptr inbounds %struct.iwm_softc, %struct.iwm_softc* %137, i32 0, i32 0
  %139 = load %struct.TYPE_2__*, %struct.TYPE_2__** %138, align 8
  %140 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %139, i32 0, i32 2
  %141 = load i64, i64* %140, align 8
  %142 = load i64, i64* @IWM_NVM_SDP, align 8
  %143 = icmp eq i64 %141, %142
  br i1 %143, label %144, label %151

144:                                              ; preds = %114
  %145 = load %struct.iwm_nvm_section*, %struct.iwm_nvm_section** %5, align 8
  %146 = load i64, i64* @IWM_NVM_SECTION_TYPE_REGULATORY_SDP, align 8
  %147 = getelementptr inbounds %struct.iwm_nvm_section, %struct.iwm_nvm_section* %145, i64 %146
  %148 = getelementptr inbounds %struct.iwm_nvm_section, %struct.iwm_nvm_section* %147, i32 0, i32 0
  %149 = load i64, i64* %148, align 8
  %150 = inttoptr i64 %149 to i32*
  br label %158

151:                                              ; preds = %114
  %152 = load %struct.iwm_nvm_section*, %struct.iwm_nvm_section** %5, align 8
  %153 = load i64, i64* @IWM_NVM_SECTION_TYPE_REGULATORY, align 8
  %154 = getelementptr inbounds %struct.iwm_nvm_section, %struct.iwm_nvm_section* %152, i64 %153
  %155 = getelementptr inbounds %struct.iwm_nvm_section, %struct.iwm_nvm_section* %154, i32 0, i32 0
  %156 = load i64, i64* %155, align 8
  %157 = inttoptr i64 %156 to i32*
  br label %158

158:                                              ; preds = %151, %144
  %159 = phi i32* [ %150, %144 ], [ %157, %151 ]
  store i32* %159, i32** %9, align 8
  %160 = load %struct.iwm_nvm_section*, %struct.iwm_nvm_section** %5, align 8
  %161 = load i64, i64* @IWM_NVM_SECTION_TYPE_MAC_OVERRIDE, align 8
  %162 = getelementptr inbounds %struct.iwm_nvm_section, %struct.iwm_nvm_section* %160, i64 %161
  %163 = getelementptr inbounds %struct.iwm_nvm_section, %struct.iwm_nvm_section* %162, i32 0, i32 0
  %164 = load i64, i64* %163, align 8
  %165 = inttoptr i64 %164 to i32*
  store i32* %165, i32** %10, align 8
  %166 = load %struct.iwm_nvm_section*, %struct.iwm_nvm_section** %5, align 8
  %167 = load i64, i64* @IWM_NVM_SECTION_TYPE_PHY_SKU, align 8
  %168 = getelementptr inbounds %struct.iwm_nvm_section, %struct.iwm_nvm_section* %166, i64 %167
  %169 = getelementptr inbounds %struct.iwm_nvm_section, %struct.iwm_nvm_section* %168, i32 0, i32 0
  %170 = load i64, i64* %169, align 8
  %171 = inttoptr i64 %170 to i32*
  store i32* %171, i32** %11, align 8
  %172 = load %struct.iwm_softc*, %struct.iwm_softc** %4, align 8
  %173 = load i32*, i32** %6, align 8
  %174 = load i32*, i32** %7, align 8
  %175 = load i32*, i32** %8, align 8
  %176 = load i32*, i32** %10, align 8
  %177 = load i32*, i32** %11, align 8
  %178 = load i32*, i32** %9, align 8
  %179 = call %struct.iwm_nvm_data* @iwm_parse_nvm_data(%struct.iwm_softc* %172, i32* %173, i32* %174, i32* %175, i32* %176, i32* %177, i32* %178)
  store %struct.iwm_nvm_data* %179, %struct.iwm_nvm_data** %3, align 8
  br label %180

180:                                              ; preds = %158, %100, %88, %65, %37
  %181 = load %struct.iwm_nvm_data*, %struct.iwm_nvm_data** %3, align 8
  ret %struct.iwm_nvm_data* %181
}

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @panic(i8*, i64) #1

declare dso_local %struct.iwm_nvm_data* @iwm_parse_nvm_data(%struct.iwm_softc*, i32*, i32*, i32*, i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
