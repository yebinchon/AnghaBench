; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/asmc/extr_asmc.c_asmc_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/asmc/extr_asmc.c_asmc_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.asmc_softc = type { i32, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32* }

@.str = private unnamed_addr constant [11 x i8] c"intok key\0A\00", align 1
@ASMC_KEY_INTOK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"low int key\0A\00", align 1
@ASMC_KEY_SMS_LOW_INT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [14 x i8] c"high int key\0A\00", align 1
@ASMC_KEY_SMS_HIGH_INT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [13 x i8] c"sms low key\0A\00", align 1
@ASMC_KEY_SMS_LOW = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [14 x i8] c"sms high key\0A\00", align 1
@ASMC_KEY_SMS_HIGH = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [14 x i8] c"sms flag key\0A\00", align 1
@ASMC_KEY_SMS_FLAG = common dso_local global i32 0, align 4
@ASMC_KEY_SMS = common dso_local global i32 0, align 4
@ASMC_SMS_INIT1 = common dso_local global i32 0, align 4
@ASMC_SMS_INIT2 = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [9 x i8] c"sms key\0A\00", align 1
@.str.7 = private unnamed_addr constant [48 x i8] c"WARNING: Sudden Motion Sensor not initialized!\0A\00", align 1
@ASMC_MAXFANS = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [54 x i8] c"more than %d fans were detected. Please report this.\0A\00", align 1
@bootverbose = common dso_local global i64 0, align 8
@ASMC_NKEYS = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [20 x i8] c"number of keys: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @asmc_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @asmc_init(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.asmc_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca [4 x i32], align 16
  store i32 %0, i32* %2, align 4
  %7 = load i32, i32* %2, align 4
  %8 = call %struct.asmc_softc* @device_get_softc(i32 %7)
  store %struct.asmc_softc* %8, %struct.asmc_softc** %3, align 8
  store i32 1, i32* %5, align 4
  %9 = load %struct.asmc_softc*, %struct.asmc_softc** %3, align 8
  %10 = getelementptr inbounds %struct.asmc_softc, %struct.asmc_softc* %9, i32 0, i32 2
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32*, i32** %12, align 8
  %14 = icmp eq i32* %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %1
  br label %105

16:                                               ; preds = %1
  %17 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 0
  store i32 1, i32* %17, align 16
  %18 = call i32 @ASMC_DPRINTF(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %19 = load i32, i32* %2, align 4
  %20 = load i32, i32* @ASMC_KEY_INTOK, align 4
  %21 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 0
  %22 = call i32 @asmc_key_write(i32 %19, i32 %20, i32* %21, i32 1)
  %23 = call i32 @DELAY(i32 50)
  %24 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 0
  store i32 20, i32* %24, align 16
  %25 = call i32 @ASMC_DPRINTF(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  %26 = load i32, i32* %2, align 4
  %27 = load i32, i32* @ASMC_KEY_SMS_LOW_INT, align 4
  %28 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 0
  %29 = call i32 @asmc_key_write(i32 %26, i32 %27, i32* %28, i32 1)
  %30 = call i32 @DELAY(i32 200)
  %31 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 0
  store i32 20, i32* %31, align 16
  %32 = call i32 @ASMC_DPRINTF(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0))
  %33 = load i32, i32* %2, align 4
  %34 = load i32, i32* @ASMC_KEY_SMS_HIGH_INT, align 4
  %35 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 0
  %36 = call i32 @asmc_key_write(i32 %33, i32 %34, i32* %35, i32 1)
  %37 = call i32 @DELAY(i32 200)
  %38 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 0
  store i32 0, i32* %38, align 16
  %39 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 1
  store i32 96, i32* %39, align 4
  %40 = call i32 @ASMC_DPRINTF(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0))
  %41 = load i32, i32* %2, align 4
  %42 = load i32, i32* @ASMC_KEY_SMS_LOW, align 4
  %43 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 0
  %44 = call i32 @asmc_key_write(i32 %41, i32 %42, i32* %43, i32 2)
  %45 = call i32 @DELAY(i32 200)
  %46 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 0
  store i32 1, i32* %46, align 16
  %47 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 1
  store i32 192, i32* %47, align 4
  %48 = call i32 @ASMC_DPRINTF(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0))
  %49 = load i32, i32* %2, align 4
  %50 = load i32, i32* @ASMC_KEY_SMS_HIGH, align 4
  %51 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 0
  %52 = call i32 @asmc_key_write(i32 %49, i32 %50, i32* %51, i32 2)
  %53 = call i32 @DELAY(i32 200)
  %54 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 0
  store i32 1, i32* %54, align 16
  %55 = call i32 @ASMC_DPRINTF(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0))
  %56 = load i32, i32* %2, align 4
  %57 = load i32, i32* @ASMC_KEY_SMS_FLAG, align 4
  %58 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 0
  %59 = call i32 @asmc_key_write(i32 %56, i32 %57, i32* %58, i32 1)
  %60 = call i32 @DELAY(i32 100)
  %61 = load %struct.asmc_softc*, %struct.asmc_softc** %3, align 8
  %62 = getelementptr inbounds %struct.asmc_softc, %struct.asmc_softc* %61, i32 0, i32 0
  store i32 0, i32* %62, align 8
  store i32 0, i32* %4, align 4
  br label %63

63:                                               ; preds = %96, %16
  %64 = load i32, i32* %4, align 4
  %65 = icmp slt i32 %64, 1000
  br i1 %65, label %66, label %99

66:                                               ; preds = %63
  %67 = load i32, i32* %2, align 4
  %68 = load i32, i32* @ASMC_KEY_SMS, align 4
  %69 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 0
  %70 = call i64 @asmc_key_read(i32 %67, i32 %68, i32* %69, i32 2)
  %71 = icmp eq i64 %70, 0
  br i1 %71, label %72, label %85

72:                                               ; preds = %66
  %73 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 0
  %74 = load i32, i32* %73, align 16
  %75 = load i32, i32* @ASMC_SMS_INIT1, align 4
  %76 = icmp eq i32 %74, %75
  br i1 %76, label %77, label %85

77:                                               ; preds = %72
  %78 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 1
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* @ASMC_SMS_INIT2, align 4
  %81 = icmp eq i32 %79, %80
  br i1 %81, label %82, label %85

82:                                               ; preds = %77
  store i32 0, i32* %5, align 4
  %83 = load %struct.asmc_softc*, %struct.asmc_softc** %3, align 8
  %84 = getelementptr inbounds %struct.asmc_softc, %struct.asmc_softc* %83, i32 0, i32 0
  store i32 1, i32* %84, align 8
  br label %102

85:                                               ; preds = %77, %72, %66
  %86 = load i32, i32* @ASMC_SMS_INIT1, align 4
  %87 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 0
  store i32 %86, i32* %87, align 16
  %88 = load i32, i32* @ASMC_SMS_INIT2, align 4
  %89 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 1
  store i32 %88, i32* %89, align 4
  %90 = call i32 @ASMC_DPRINTF(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0))
  %91 = load i32, i32* %2, align 4
  %92 = load i32, i32* @ASMC_KEY_SMS, align 4
  %93 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 0
  %94 = call i32 @asmc_key_write(i32 %91, i32 %92, i32* %93, i32 2)
  %95 = call i32 @DELAY(i32 50)
  br label %96

96:                                               ; preds = %85
  %97 = load i32, i32* %4, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %4, align 4
  br label %63

99:                                               ; preds = %63
  %100 = load i32, i32* %2, align 4
  %101 = call i32 (i32, i8*, ...) @device_printf(i32 %100, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.7, i64 0, i64 0))
  br label %102

102:                                              ; preds = %99, %82
  %103 = load i32, i32* %2, align 4
  %104 = call i32 @asmc_sms_calibrate(i32 %103)
  br label %105

105:                                              ; preds = %102, %15
  %106 = load i32, i32* %2, align 4
  %107 = call i64 @asmc_fan_count(i32 %106)
  %108 = load %struct.asmc_softc*, %struct.asmc_softc** %3, align 8
  %109 = getelementptr inbounds %struct.asmc_softc, %struct.asmc_softc* %108, i32 0, i32 1
  store i64 %107, i64* %109, align 8
  %110 = load %struct.asmc_softc*, %struct.asmc_softc** %3, align 8
  %111 = getelementptr inbounds %struct.asmc_softc, %struct.asmc_softc* %110, i32 0, i32 1
  %112 = load i64, i64* %111, align 8
  %113 = load i64, i64* @ASMC_MAXFANS, align 8
  %114 = icmp sgt i64 %112, %113
  br i1 %114, label %115, label %122

115:                                              ; preds = %105
  %116 = load i32, i32* %2, align 4
  %117 = load i64, i64* @ASMC_MAXFANS, align 8
  %118 = call i32 (i32, i8*, ...) @device_printf(i32 %116, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.8, i64 0, i64 0), i64 %117)
  %119 = load i64, i64* @ASMC_MAXFANS, align 8
  %120 = load %struct.asmc_softc*, %struct.asmc_softc** %3, align 8
  %121 = getelementptr inbounds %struct.asmc_softc, %struct.asmc_softc* %120, i32 0, i32 1
  store i64 %119, i64* %121, align 8
  br label %122

122:                                              ; preds = %115, %105
  %123 = load i64, i64* @bootverbose, align 8
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %135

125:                                              ; preds = %122
  %126 = load i32, i32* %2, align 4
  %127 = load i32, i32* @ASMC_NKEYS, align 4
  %128 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 0
  %129 = call i64 @asmc_key_read(i32 %126, i32 %127, i32* %128, i32 4)
  %130 = load i32, i32* %2, align 4
  %131 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 0
  %132 = load i32, i32* %131, align 16
  %133 = call i64 @ntohl(i32 %132)
  %134 = call i32 (i32, i8*, ...) @device_printf(i32 %130, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.9, i64 0, i64 0), i64 %133)
  br label %135

135:                                              ; preds = %125, %122
  %136 = load i32, i32* %5, align 4
  ret i32 %136
}

declare dso_local %struct.asmc_softc* @device_get_softc(i32) #1

declare dso_local i32 @ASMC_DPRINTF(i8*) #1

declare dso_local i32 @asmc_key_write(i32, i32, i32*, i32) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i64 @asmc_key_read(i32, i32, i32*, i32) #1

declare dso_local i32 @device_printf(i32, i8*, ...) #1

declare dso_local i32 @asmc_sms_calibrate(i32) #1

declare dso_local i64 @asmc_fan_count(i32) #1

declare dso_local i64 @ntohl(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
