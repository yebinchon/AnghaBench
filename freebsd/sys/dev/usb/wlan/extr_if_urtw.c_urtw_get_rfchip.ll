; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/wlan/extr_if_urtw.c_urtw_get_rfchip.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/wlan/extr_if_urtw.c_urtw_get_rfchip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.urtw_softc = type { i32, i32, i8*, i8*, i8*, i32, i32, i32 }

@URTW_RTL8187B = common dso_local global i32 0, align 4
@URTW_RTL8187B_REV_B = common dso_local global i32 0, align 4
@URTW_RTL8187B_REV_D = common dso_local global i32 0, align 4
@URTW_RTL8187B_REV_E = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"unknown type: %#x\0A\00", align 1
@URTW_TX_CONF = common dso_local global i32 0, align 4
@URTW_TX_HWMASK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"unknown RTL8187L type: %#x\0A\00", align 1
@URTW_EPROM_RFCHIPID = common dso_local global i32 0, align 4
@urtw_8225_rf_init = common dso_local global i32 0, align 4
@urtw_8225_rf_set_sens = common dso_local global i32 0, align 4
@urtw_8225_rf_set_chan = common dso_local global i32 0, align 4
@urtw_8225_rf_stop = common dso_local global i8* null, align 8
@urtw_8225v2_rf_init = common dso_local global i32 0, align 4
@urtw_8225v2_rf_set_chan = common dso_local global i32 0, align 4
@URTW_8225_RF_MAX_SENS = common dso_local global i8* null, align 8
@URTW_8225_RF_DEF_SENS = common dso_local global i8* null, align 8
@urtw_8225v2b_rf_init = common dso_local global i32 0, align 4
@urtw_8225v2b_rf_set_chan = common dso_local global i32 0, align 4
@URTW_DEBUG_STATE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [24 x i8] c"unsupported RF chip %d\0A\00", align 1
@USB_ERR_INVAL = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [19 x i8] c"%s rf %s hwrev %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"rtl8187b\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"rtl8187l\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"rtl8225u\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"rtl8225z2\00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c"b\00", align 1
@.str.9 = private unnamed_addr constant [2 x i8] c"d\00", align 1
@.str.10 = private unnamed_addr constant [2 x i8] c"e\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"none\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.urtw_softc*)* @urtw_get_rfchip to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @urtw_get_rfchip(%struct.urtw_softc* %0) #0 {
  %2 = alloca %struct.urtw_softc*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store %struct.urtw_softc* %0, %struct.urtw_softc** %2, align 8
  %7 = load %struct.urtw_softc*, %struct.urtw_softc** %2, align 8
  %8 = getelementptr inbounds %struct.urtw_softc, %struct.urtw_softc* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = load i32, i32* @URTW_RTL8187B, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %47

13:                                               ; preds = %1
  %14 = load %struct.urtw_softc*, %struct.urtw_softc** %2, align 8
  %15 = call i32 @urtw_read8_m(%struct.urtw_softc* %14, i32 225, i32* %4)
  %16 = load i32, i32* %4, align 4
  switch i32 %16, label %35 [
    i32 0, label %17
    i32 1, label %23
    i32 2, label %29
  ]

17:                                               ; preds = %13
  %18 = load i32, i32* @URTW_RTL8187B_REV_B, align 4
  %19 = load %struct.urtw_softc*, %struct.urtw_softc** %2, align 8
  %20 = getelementptr inbounds %struct.urtw_softc, %struct.urtw_softc* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = or i32 %21, %18
  store i32 %22, i32* %20, align 8
  br label %46

23:                                               ; preds = %13
  %24 = load i32, i32* @URTW_RTL8187B_REV_D, align 4
  %25 = load %struct.urtw_softc*, %struct.urtw_softc** %2, align 8
  %26 = getelementptr inbounds %struct.urtw_softc, %struct.urtw_softc* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = or i32 %27, %24
  store i32 %28, i32* %26, align 8
  br label %46

29:                                               ; preds = %13
  %30 = load i32, i32* @URTW_RTL8187B_REV_E, align 4
  %31 = load %struct.urtw_softc*, %struct.urtw_softc** %2, align 8
  %32 = getelementptr inbounds %struct.urtw_softc, %struct.urtw_softc* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = or i32 %33, %30
  store i32 %34, i32* %32, align 8
  br label %46

35:                                               ; preds = %13
  %36 = load %struct.urtw_softc*, %struct.urtw_softc** %2, align 8
  %37 = getelementptr inbounds %struct.urtw_softc, %struct.urtw_softc* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* %4, align 4
  %40 = call i32 (i32, i8*, ...) @device_printf(i32 %38, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %39)
  %41 = load i32, i32* @URTW_RTL8187B_REV_B, align 4
  %42 = load %struct.urtw_softc*, %struct.urtw_softc** %2, align 8
  %43 = getelementptr inbounds %struct.urtw_softc, %struct.urtw_softc* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = or i32 %44, %41
  store i32 %45, i32* %43, align 8
  br label %46

46:                                               ; preds = %35, %29, %23, %17
  br label %70

47:                                               ; preds = %1
  %48 = load %struct.urtw_softc*, %struct.urtw_softc** %2, align 8
  %49 = load i32, i32* @URTW_TX_CONF, align 4
  %50 = call i32 @urtw_read32_m(%struct.urtw_softc* %48, i32 %49, i32* %5)
  %51 = load i32, i32* %5, align 4
  %52 = load i32, i32* @URTW_TX_HWMASK, align 4
  %53 = and i32 %51, %52
  switch i32 %53, label %61 [
    i32 128, label %54
    i32 129, label %60
  ]

54:                                               ; preds = %47
  %55 = load i32, i32* @URTW_RTL8187B, align 4
  %56 = load %struct.urtw_softc*, %struct.urtw_softc** %2, align 8
  %57 = getelementptr inbounds %struct.urtw_softc, %struct.urtw_softc* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = or i32 %58, %55
  store i32 %59, i32* %57, align 8
  br label %69

60:                                               ; preds = %47
  br label %69

61:                                               ; preds = %47
  %62 = load %struct.urtw_softc*, %struct.urtw_softc** %2, align 8
  %63 = getelementptr inbounds %struct.urtw_softc, %struct.urtw_softc* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* %5, align 4
  %66 = load i32, i32* @URTW_TX_HWMASK, align 4
  %67 = and i32 %65, %66
  %68 = call i32 (i32, i8*, ...) @device_printf(i32 %64, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %67)
  br label %69

69:                                               ; preds = %61, %60, %54
  br label %70

70:                                               ; preds = %69, %46
  %71 = load %struct.urtw_softc*, %struct.urtw_softc** %2, align 8
  %72 = load i32, i32* @URTW_EPROM_RFCHIPID, align 4
  %73 = call i64 @urtw_eprom_read32(%struct.urtw_softc* %71, i32 %72, i32* %5)
  store i64 %73, i64* %6, align 8
  %74 = load i64, i64* %6, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %70
  br label %180

77:                                               ; preds = %70
  %78 = load i32, i32* %5, align 4
  %79 = and i32 %78, 255
  switch i32 %79, label %135 [
    i32 131, label %80
    i32 130, label %119
  ]

80:                                               ; preds = %77
  %81 = load %struct.urtw_softc*, %struct.urtw_softc** %2, align 8
  %82 = call i64 @urtw_8225_isv2(%struct.urtw_softc* %81, i32* %3)
  store i64 %82, i64* %6, align 8
  %83 = load i64, i64* %6, align 8
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %80
  br label %180

86:                                               ; preds = %80
  %87 = load i32, i32* %3, align 4
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %89, label %102

89:                                               ; preds = %86
  %90 = load i32, i32* @urtw_8225_rf_init, align 4
  %91 = load %struct.urtw_softc*, %struct.urtw_softc** %2, align 8
  %92 = getelementptr inbounds %struct.urtw_softc, %struct.urtw_softc* %91, i32 0, i32 6
  store i32 %90, i32* %92, align 4
  %93 = load i32, i32* @urtw_8225_rf_set_sens, align 4
  %94 = load %struct.urtw_softc*, %struct.urtw_softc** %2, align 8
  %95 = getelementptr inbounds %struct.urtw_softc, %struct.urtw_softc* %94, i32 0, i32 7
  store i32 %93, i32* %95, align 8
  %96 = load i32, i32* @urtw_8225_rf_set_chan, align 4
  %97 = load %struct.urtw_softc*, %struct.urtw_softc** %2, align 8
  %98 = getelementptr inbounds %struct.urtw_softc, %struct.urtw_softc* %97, i32 0, i32 5
  store i32 %96, i32* %98, align 8
  %99 = load i8*, i8** @urtw_8225_rf_stop, align 8
  %100 = load %struct.urtw_softc*, %struct.urtw_softc** %2, align 8
  %101 = getelementptr inbounds %struct.urtw_softc, %struct.urtw_softc* %100, i32 0, i32 2
  store i8* %99, i8** %101, align 8
  br label %112

102:                                              ; preds = %86
  %103 = load i32, i32* @urtw_8225v2_rf_init, align 4
  %104 = load %struct.urtw_softc*, %struct.urtw_softc** %2, align 8
  %105 = getelementptr inbounds %struct.urtw_softc, %struct.urtw_softc* %104, i32 0, i32 6
  store i32 %103, i32* %105, align 4
  %106 = load i32, i32* @urtw_8225v2_rf_set_chan, align 4
  %107 = load %struct.urtw_softc*, %struct.urtw_softc** %2, align 8
  %108 = getelementptr inbounds %struct.urtw_softc, %struct.urtw_softc* %107, i32 0, i32 5
  store i32 %106, i32* %108, align 8
  %109 = load i8*, i8** @urtw_8225_rf_stop, align 8
  %110 = load %struct.urtw_softc*, %struct.urtw_softc** %2, align 8
  %111 = getelementptr inbounds %struct.urtw_softc, %struct.urtw_softc* %110, i32 0, i32 2
  store i8* %109, i8** %111, align 8
  br label %112

112:                                              ; preds = %102, %89
  %113 = load i8*, i8** @URTW_8225_RF_MAX_SENS, align 8
  %114 = load %struct.urtw_softc*, %struct.urtw_softc** %2, align 8
  %115 = getelementptr inbounds %struct.urtw_softc, %struct.urtw_softc* %114, i32 0, i32 4
  store i8* %113, i8** %115, align 8
  %116 = load i8*, i8** @URTW_8225_RF_DEF_SENS, align 8
  %117 = load %struct.urtw_softc*, %struct.urtw_softc** %2, align 8
  %118 = getelementptr inbounds %struct.urtw_softc, %struct.urtw_softc* %117, i32 0, i32 3
  store i8* %116, i8** %118, align 8
  br label %142

119:                                              ; preds = %77
  %120 = load i32, i32* @urtw_8225v2b_rf_init, align 4
  %121 = load %struct.urtw_softc*, %struct.urtw_softc** %2, align 8
  %122 = getelementptr inbounds %struct.urtw_softc, %struct.urtw_softc* %121, i32 0, i32 6
  store i32 %120, i32* %122, align 4
  %123 = load i32, i32* @urtw_8225v2b_rf_set_chan, align 4
  %124 = load %struct.urtw_softc*, %struct.urtw_softc** %2, align 8
  %125 = getelementptr inbounds %struct.urtw_softc, %struct.urtw_softc* %124, i32 0, i32 5
  store i32 %123, i32* %125, align 8
  %126 = load i8*, i8** @URTW_8225_RF_MAX_SENS, align 8
  %127 = load %struct.urtw_softc*, %struct.urtw_softc** %2, align 8
  %128 = getelementptr inbounds %struct.urtw_softc, %struct.urtw_softc* %127, i32 0, i32 4
  store i8* %126, i8** %128, align 8
  %129 = load i8*, i8** @URTW_8225_RF_DEF_SENS, align 8
  %130 = load %struct.urtw_softc*, %struct.urtw_softc** %2, align 8
  %131 = getelementptr inbounds %struct.urtw_softc, %struct.urtw_softc* %130, i32 0, i32 3
  store i8* %129, i8** %131, align 8
  %132 = load i8*, i8** @urtw_8225_rf_stop, align 8
  %133 = load %struct.urtw_softc*, %struct.urtw_softc** %2, align 8
  %134 = getelementptr inbounds %struct.urtw_softc, %struct.urtw_softc* %133, i32 0, i32 2
  store i8* %132, i8** %134, align 8
  br label %142

135:                                              ; preds = %77
  %136 = load %struct.urtw_softc*, %struct.urtw_softc** %2, align 8
  %137 = load i32, i32* @URTW_DEBUG_STATE, align 4
  %138 = load i32, i32* %5, align 4
  %139 = and i32 %138, 255
  %140 = call i32 @DPRINTF(%struct.urtw_softc* %136, i32 %137, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i32 %139)
  %141 = load i64, i64* @USB_ERR_INVAL, align 8
  store i64 %141, i64* %6, align 8
  br label %180

142:                                              ; preds = %119, %112
  %143 = load %struct.urtw_softc*, %struct.urtw_softc** %2, align 8
  %144 = getelementptr inbounds %struct.urtw_softc, %struct.urtw_softc* %143, i32 0, i32 1
  %145 = load i32, i32* %144, align 4
  %146 = load %struct.urtw_softc*, %struct.urtw_softc** %2, align 8
  %147 = getelementptr inbounds %struct.urtw_softc, %struct.urtw_softc* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 8
  %149 = load i32, i32* @URTW_RTL8187B, align 4
  %150 = and i32 %148, %149
  %151 = icmp ne i32 %150, 0
  %152 = zext i1 %151 to i64
  %153 = select i1 %151, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0)
  %154 = load i32, i32* %5, align 4
  %155 = and i32 %154, 255
  %156 = icmp eq i32 %155, 131
  %157 = zext i1 %156 to i64
  %158 = select i1 %156, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0)
  %159 = load %struct.urtw_softc*, %struct.urtw_softc** %2, align 8
  %160 = getelementptr inbounds %struct.urtw_softc, %struct.urtw_softc* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 8
  %162 = load i32, i32* @URTW_RTL8187B, align 4
  %163 = and i32 %161, %162
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %176

165:                                              ; preds = %142
  %166 = load i32, i32* %4, align 4
  %167 = icmp eq i32 %166, 0
  br i1 %167, label %168, label %169

168:                                              ; preds = %165
  br label %174

169:                                              ; preds = %165
  %170 = load i32, i32* %4, align 4
  %171 = icmp eq i32 %170, 1
  %172 = zext i1 %171 to i64
  %173 = select i1 %171, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i64 0, i64 0)
  br label %174

174:                                              ; preds = %169, %168
  %175 = phi i8* [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0), %168 ], [ %173, %169 ]
  br label %177

176:                                              ; preds = %142
  br label %177

177:                                              ; preds = %176, %174
  %178 = phi i8* [ %175, %174 ], [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0), %176 ]
  %179 = call i32 (i32, i8*, ...) @device_printf(i32 %145, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i8* %153, i8* %158, i8* %178)
  br label %180

180:                                              ; preds = %177, %135, %85, %76
  %181 = load i64, i64* %6, align 8
  ret i64 %181
}

declare dso_local i32 @urtw_read8_m(%struct.urtw_softc*, i32, i32*) #1

declare dso_local i32 @device_printf(i32, i8*, ...) #1

declare dso_local i32 @urtw_read32_m(%struct.urtw_softc*, i32, i32*) #1

declare dso_local i64 @urtw_eprom_read32(%struct.urtw_softc*, i32, i32*) #1

declare dso_local i64 @urtw_8225_isv2(%struct.urtw_softc*, i32*) #1

declare dso_local i32 @DPRINTF(%struct.urtw_softc*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
