; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ipmi/extr_ipmi_smbus.c_ipmi_smbus_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ipmi/extr_ipmi_smbus.c_ipmi_smbus_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipmi_softc = type { i64, i32, i32 }
%struct.ipmi_get_info = type { i64, i64, i64 }

@ENXIO = common dso_local global i32 0, align 4
@SSIF_MODE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [30 x i8] c"No SSIF IPMI interface found\0A\00", align 1
@SYS_RES_IRQ = common dso_local global i32 0, align 4
@RF_SHAREABLE = common dso_local global i32 0, align 4
@RF_ACTIVE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"SSIF mode found at address 0x%llx on %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @ipmi_smbus_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipmi_smbus_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.ipmi_softc*, align 8
  %5 = alloca %struct.ipmi_get_info, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  %8 = call %struct.ipmi_softc* @device_get_softc(i32 %7)
  store %struct.ipmi_softc* %8, %struct.ipmi_softc** %4, align 8
  %9 = call i32 @ipmi_smbios_identify(%struct.ipmi_get_info* %5)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %13, label %11

11:                                               ; preds = %1
  %12 = load i32, i32* @ENXIO, align 4
  store i32 %12, i32* %2, align 4
  br label %74

13:                                               ; preds = %1
  %14 = getelementptr inbounds %struct.ipmi_get_info, %struct.ipmi_get_info* %5, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @SSIF_MODE, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %18, label %22

18:                                               ; preds = %13
  %19 = load i32, i32* %3, align 4
  %20 = call i32 (i32, i8*, ...) @device_printf(i32 %19, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %21 = load i32, i32* @ENXIO, align 4
  store i32 %21, i32* %2, align 4
  br label %74

22:                                               ; preds = %13
  %23 = load i32, i32* %3, align 4
  %24 = load %struct.ipmi_softc*, %struct.ipmi_softc** %4, align 8
  %25 = getelementptr inbounds %struct.ipmi_softc, %struct.ipmi_softc* %24, i32 0, i32 2
  store i32 %23, i32* %25, align 4
  %26 = getelementptr inbounds %struct.ipmi_get_info, %struct.ipmi_get_info* %5, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %46

29:                                               ; preds = %22
  %30 = load %struct.ipmi_softc*, %struct.ipmi_softc** %4, align 8
  %31 = getelementptr inbounds %struct.ipmi_softc, %struct.ipmi_softc* %30, i32 0, i32 0
  store i64 0, i64* %31, align 8
  %32 = load i32, i32* %3, align 4
  %33 = load i32, i32* @SYS_RES_IRQ, align 4
  %34 = load %struct.ipmi_softc*, %struct.ipmi_softc** %4, align 8
  %35 = getelementptr inbounds %struct.ipmi_softc, %struct.ipmi_softc* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.ipmi_get_info, %struct.ipmi_get_info* %5, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = getelementptr inbounds %struct.ipmi_get_info, %struct.ipmi_get_info* %5, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = load i32, i32* @RF_SHAREABLE, align 4
  %41 = load i32, i32* @RF_ACTIVE, align 4
  %42 = or i32 %40, %41
  %43 = call i32 @bus_alloc_resource(i32 %32, i32 %33, i64* %35, i64 %37, i64 %39, i32 1, i32 %42)
  %44 = load %struct.ipmi_softc*, %struct.ipmi_softc** %4, align 8
  %45 = getelementptr inbounds %struct.ipmi_softc, %struct.ipmi_softc* %44, i32 0, i32 1
  store i32 %43, i32* %45, align 8
  br label %46

46:                                               ; preds = %29, %22
  %47 = load i32, i32* %3, align 4
  %48 = getelementptr inbounds %struct.ipmi_get_info, %struct.ipmi_get_info* %5, i32 0, i32 2
  %49 = load i64, i64* %48, align 8
  %50 = load i32, i32* %3, align 4
  %51 = call i32 @device_get_parent(i32 %50)
  %52 = call i32 @device_get_name(i32 %51)
  %53 = call i32 (i32, i8*, ...) @device_printf(i32 %47, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i64 %49, i32 %52)
  %54 = load %struct.ipmi_softc*, %struct.ipmi_softc** %4, align 8
  %55 = load i32, i32* %3, align 4
  %56 = call i32 @device_get_parent(i32 %55)
  %57 = getelementptr inbounds %struct.ipmi_get_info, %struct.ipmi_get_info* %5, i32 0, i32 2
  %58 = load i64, i64* %57, align 8
  %59 = call i32 @ipmi_ssif_attach(%struct.ipmi_softc* %54, i32 %56, i64 %58)
  store i32 %59, i32* %6, align 4
  %60 = load i32, i32* %6, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %46
  br label %70

63:                                               ; preds = %46
  %64 = load i32, i32* %3, align 4
  %65 = call i32 @ipmi_attach(i32 %64)
  store i32 %65, i32* %6, align 4
  %66 = load i32, i32* %6, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %63
  br label %70

69:                                               ; preds = %63
  store i32 0, i32* %2, align 4
  br label %74

70:                                               ; preds = %68, %62
  %71 = load i32, i32* %3, align 4
  %72 = call i32 @ipmi_release_resources(i32 %71)
  %73 = load i32, i32* %6, align 4
  store i32 %73, i32* %2, align 4
  br label %74

74:                                               ; preds = %70, %69, %18, %11
  %75 = load i32, i32* %2, align 4
  ret i32 %75
}

declare dso_local %struct.ipmi_softc* @device_get_softc(i32) #1

declare dso_local i32 @ipmi_smbios_identify(%struct.ipmi_get_info*) #1

declare dso_local i32 @device_printf(i32, i8*, ...) #1

declare dso_local i32 @bus_alloc_resource(i32, i32, i64*, i64, i64, i32, i32) #1

declare dso_local i32 @device_get_name(i32) #1

declare dso_local i32 @device_get_parent(i32) #1

declare dso_local i32 @ipmi_ssif_attach(%struct.ipmi_softc*, i32, i64) #1

declare dso_local i32 @ipmi_attach(i32) #1

declare dso_local i32 @ipmi_release_resources(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
