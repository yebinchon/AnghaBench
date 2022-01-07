; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/iwi/extr_if_iwi.c_iwi_setup_ofw.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/iwi/extr_if_iwi.c_iwi_setup_ofw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwi_firmware_ohdr = type { i32 }
%struct.iwi_softc = type { i32 }
%struct.iwi_fw = type { i8*, i32, i32, %struct.firmware* }
%struct.firmware = type { i32, i32, i64 }

@.str = private unnamed_addr constant [22 x i8] c"image '%s' too small\0A\00", align 1
@IWI_FW_REQ_MAJOR = common dso_local global i64 0, align 8
@IWI_FW_REQ_MINOR = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [33 x i8] c"version for '%s' %d.%d != %d.%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.iwi_firmware_ohdr* (%struct.iwi_softc*, %struct.iwi_fw*)* @iwi_setup_ofw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.iwi_firmware_ohdr* @iwi_setup_ofw(%struct.iwi_softc* %0, %struct.iwi_fw* %1) #0 {
  %3 = alloca %struct.iwi_firmware_ohdr*, align 8
  %4 = alloca %struct.iwi_softc*, align 8
  %5 = alloca %struct.iwi_fw*, align 8
  %6 = alloca %struct.firmware*, align 8
  %7 = alloca %struct.iwi_firmware_ohdr*, align 8
  store %struct.iwi_softc* %0, %struct.iwi_softc** %4, align 8
  store %struct.iwi_fw* %1, %struct.iwi_fw** %5, align 8
  %8 = load %struct.iwi_fw*, %struct.iwi_fw** %5, align 8
  %9 = getelementptr inbounds %struct.iwi_fw, %struct.iwi_fw* %8, i32 0, i32 3
  %10 = load %struct.firmware*, %struct.firmware** %9, align 8
  store %struct.firmware* %10, %struct.firmware** %6, align 8
  %11 = load %struct.firmware*, %struct.firmware** %6, align 8
  %12 = getelementptr inbounds %struct.firmware, %struct.firmware* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = sext i32 %13 to i64
  %15 = icmp ult i64 %14, 4
  br i1 %15, label %16, label %24

16:                                               ; preds = %2
  %17 = load %struct.iwi_softc*, %struct.iwi_softc** %4, align 8
  %18 = getelementptr inbounds %struct.iwi_softc, %struct.iwi_softc* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.firmware*, %struct.firmware** %6, align 8
  %21 = getelementptr inbounds %struct.firmware, %struct.firmware* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = call i32 (i32, i8*, i32, ...) @device_printf(i32 %19, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %22)
  store %struct.iwi_firmware_ohdr* null, %struct.iwi_firmware_ohdr** %3, align 8
  br label %86

24:                                               ; preds = %2
  %25 = load %struct.firmware*, %struct.firmware** %6, align 8
  %26 = getelementptr inbounds %struct.firmware, %struct.firmware* %25, i32 0, i32 2
  %27 = load i64, i64* %26, align 8
  %28 = inttoptr i64 %27 to %struct.iwi_firmware_ohdr*
  store %struct.iwi_firmware_ohdr* %28, %struct.iwi_firmware_ohdr** %7, align 8
  %29 = load %struct.iwi_firmware_ohdr*, %struct.iwi_firmware_ohdr** %7, align 8
  %30 = getelementptr inbounds %struct.iwi_firmware_ohdr, %struct.iwi_firmware_ohdr* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @le32toh(i32 %31)
  %33 = call i64 @IWI_FW_GET_MAJOR(i32 %32)
  %34 = load i64, i64* @IWI_FW_REQ_MAJOR, align 8
  %35 = icmp ne i64 %33, %34
  br i1 %35, label %44, label %36

36:                                               ; preds = %24
  %37 = load %struct.iwi_firmware_ohdr*, %struct.iwi_firmware_ohdr** %7, align 8
  %38 = getelementptr inbounds %struct.iwi_firmware_ohdr, %struct.iwi_firmware_ohdr* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @le32toh(i32 %39)
  %41 = call i64 @IWI_FW_GET_MINOR(i32 %40)
  %42 = load i64, i64* @IWI_FW_REQ_MINOR, align 8
  %43 = icmp ne i64 %41, %42
  br i1 %43, label %44, label %64

44:                                               ; preds = %36, %24
  %45 = load %struct.iwi_softc*, %struct.iwi_softc** %4, align 8
  %46 = getelementptr inbounds %struct.iwi_softc, %struct.iwi_softc* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.firmware*, %struct.firmware** %6, align 8
  %49 = getelementptr inbounds %struct.firmware, %struct.firmware* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.iwi_firmware_ohdr*, %struct.iwi_firmware_ohdr** %7, align 8
  %52 = getelementptr inbounds %struct.iwi_firmware_ohdr, %struct.iwi_firmware_ohdr* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @le32toh(i32 %53)
  %55 = call i64 @IWI_FW_GET_MAJOR(i32 %54)
  %56 = load %struct.iwi_firmware_ohdr*, %struct.iwi_firmware_ohdr** %7, align 8
  %57 = getelementptr inbounds %struct.iwi_firmware_ohdr, %struct.iwi_firmware_ohdr* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @le32toh(i32 %58)
  %60 = call i64 @IWI_FW_GET_MINOR(i32 %59)
  %61 = load i64, i64* @IWI_FW_REQ_MAJOR, align 8
  %62 = load i64, i64* @IWI_FW_REQ_MINOR, align 8
  %63 = call i32 (i32, i8*, i32, ...) @device_printf(i32 %47, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %50, i64 %55, i64 %60, i64 %61, i64 %62)
  store %struct.iwi_firmware_ohdr* null, %struct.iwi_firmware_ohdr** %3, align 8
  br label %86

64:                                               ; preds = %36
  %65 = load %struct.firmware*, %struct.firmware** %6, align 8
  %66 = getelementptr inbounds %struct.firmware, %struct.firmware* %65, i32 0, i32 2
  %67 = load i64, i64* %66, align 8
  %68 = inttoptr i64 %67 to i8*
  %69 = getelementptr inbounds i8, i8* %68, i64 4
  %70 = load %struct.iwi_fw*, %struct.iwi_fw** %5, align 8
  %71 = getelementptr inbounds %struct.iwi_fw, %struct.iwi_fw* %70, i32 0, i32 0
  store i8* %69, i8** %71, align 8
  %72 = load %struct.firmware*, %struct.firmware** %6, align 8
  %73 = getelementptr inbounds %struct.firmware, %struct.firmware* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = sext i32 %74 to i64
  %76 = sub i64 %75, 4
  %77 = trunc i64 %76 to i32
  %78 = load %struct.iwi_fw*, %struct.iwi_fw** %5, align 8
  %79 = getelementptr inbounds %struct.iwi_fw, %struct.iwi_fw* %78, i32 0, i32 1
  store i32 %77, i32* %79, align 8
  %80 = load %struct.firmware*, %struct.firmware** %6, align 8
  %81 = getelementptr inbounds %struct.firmware, %struct.firmware* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.iwi_fw*, %struct.iwi_fw** %5, align 8
  %84 = getelementptr inbounds %struct.iwi_fw, %struct.iwi_fw* %83, i32 0, i32 2
  store i32 %82, i32* %84, align 4
  %85 = load %struct.iwi_firmware_ohdr*, %struct.iwi_firmware_ohdr** %7, align 8
  store %struct.iwi_firmware_ohdr* %85, %struct.iwi_firmware_ohdr** %3, align 8
  br label %86

86:                                               ; preds = %64, %44, %16
  %87 = load %struct.iwi_firmware_ohdr*, %struct.iwi_firmware_ohdr** %3, align 8
  ret %struct.iwi_firmware_ohdr* %87
}

declare dso_local i32 @device_printf(i32, i8*, i32, ...) #1

declare dso_local i64 @IWI_FW_GET_MAJOR(i32) #1

declare dso_local i32 @le32toh(i32) #1

declare dso_local i64 @IWI_FW_GET_MINOR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
