; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ipmi/extr_ipmi_pci.c_ipmi_pci_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ipmi/extr_ipmi_pci.c_ipmi_pci_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipmi_softc = type { i32, i64, i8*, i32**, i32, i64, i32 }
%struct.ipmi_get_info = type { i32, i32, i64, i64 }

@ENXIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"KCS\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"SMIC\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"BT mode is unsupported\0A\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"No IPMI interface found\0A\00", align 1
@.str.4 = private unnamed_addr constant [48 x i8] c"%s mode found at %s 0x%jx alignment 0x%x on %s\0A\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"io\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"mem\00", align 1
@SYS_RES_IOPORT = common dso_local global i32 0, align 4
@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@RF_ACTIVE = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [31 x i8] c"couldn't configure pci io res\0A\00", align 1
@SYS_RES_IRQ = common dso_local global i32 0, align 4
@RF_SHAREABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @ipmi_pci_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipmi_pci_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.ipmi_softc*, align 8
  %5 = alloca %struct.ipmi_get_info, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %9 = load i32, i32* %3, align 4
  %10 = call %struct.ipmi_softc* @device_get_softc(i32 %9)
  store %struct.ipmi_softc* %10, %struct.ipmi_softc** %4, align 8
  %11 = call i32 @ipmi_smbios_identify(%struct.ipmi_get_info* %5)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %15, label %13

13:                                               ; preds = %1
  %14 = load i32, i32* @ENXIO, align 4
  store i32 %14, i32* %2, align 4
  br label %127

15:                                               ; preds = %1
  %16 = load i32, i32* %3, align 4
  %17 = load %struct.ipmi_softc*, %struct.ipmi_softc** %4, align 8
  %18 = getelementptr inbounds %struct.ipmi_softc, %struct.ipmi_softc* %17, i32 0, i32 6
  store i32 %16, i32* %18, align 8
  %19 = getelementptr inbounds %struct.ipmi_get_info, %struct.ipmi_get_info* %5, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  switch i32 %20, label %27 [
    i32 129, label %21
    i32 128, label %22
    i32 130, label %23
  ]

21:                                               ; preds = %15
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8** %6, align 8
  br label %31

22:                                               ; preds = %15
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8** %6, align 8
  br label %31

23:                                               ; preds = %15
  %24 = load i32, i32* %3, align 4
  %25 = call i32 (i32, i8*, ...) @device_printf(i32 %24, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  %26 = load i32, i32* @ENXIO, align 4
  store i32 %26, i32* %2, align 4
  br label %127

27:                                               ; preds = %15
  %28 = load i32, i32* %3, align 4
  %29 = call i32 (i32, i8*, ...) @device_printf(i32 %28, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0))
  %30 = load i32, i32* @ENXIO, align 4
  store i32 %30, i32* %2, align 4
  br label %127

31:                                               ; preds = %22, %21
  %32 = load i32, i32* %3, align 4
  %33 = load i8*, i8** %6, align 8
  %34 = getelementptr inbounds %struct.ipmi_get_info, %struct.ipmi_get_info* %5, i32 0, i32 2
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  %37 = zext i1 %36 to i64
  %38 = select i1 %36, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0)
  %39 = getelementptr inbounds %struct.ipmi_get_info, %struct.ipmi_get_info* %5, i32 0, i32 3
  %40 = load i64, i64* %39, align 8
  %41 = trunc i64 %40 to i32
  %42 = getelementptr inbounds %struct.ipmi_get_info, %struct.ipmi_get_info* %5, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* %3, align 4
  %45 = call i32 @device_get_parent(i32 %44)
  %46 = call i32 @device_get_name(i32 %45)
  %47 = call i32 (i32, i8*, ...) @device_printf(i32 %32, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.4, i64 0, i64 0), i8* %33, i8* %38, i32 %41, i32 %43, i32 %46)
  %48 = getelementptr inbounds %struct.ipmi_get_info, %struct.ipmi_get_info* %5, i32 0, i32 2
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %31
  %52 = load i32, i32* @SYS_RES_IOPORT, align 4
  store i32 %52, i32* %8, align 4
  br label %55

53:                                               ; preds = %31
  %54 = load i32, i32* @SYS_RES_MEMORY, align 4
  store i32 %54, i32* %8, align 4
  br label %55

55:                                               ; preds = %53, %51
  %56 = call i64 @PCIR_BAR(i32 0)
  %57 = load %struct.ipmi_softc*, %struct.ipmi_softc** %4, align 8
  %58 = getelementptr inbounds %struct.ipmi_softc, %struct.ipmi_softc* %57, i32 0, i32 5
  store i64 %56, i64* %58, align 8
  %59 = load i32, i32* %3, align 4
  %60 = load i32, i32* %8, align 4
  %61 = load %struct.ipmi_softc*, %struct.ipmi_softc** %4, align 8
  %62 = getelementptr inbounds %struct.ipmi_softc, %struct.ipmi_softc* %61, i32 0, i32 5
  %63 = load i32, i32* @RF_ACTIVE, align 4
  %64 = call i8* @bus_alloc_resource_any(i32 %59, i32 %60, i64* %62, i32 %63)
  %65 = bitcast i8* %64 to i32*
  %66 = load %struct.ipmi_softc*, %struct.ipmi_softc** %4, align 8
  %67 = getelementptr inbounds %struct.ipmi_softc, %struct.ipmi_softc* %66, i32 0, i32 3
  %68 = load i32**, i32*** %67, align 8
  %69 = getelementptr inbounds i32*, i32** %68, i64 0
  store i32* %65, i32** %69, align 8
  %70 = load i32, i32* %8, align 4
  %71 = load %struct.ipmi_softc*, %struct.ipmi_softc** %4, align 8
  %72 = getelementptr inbounds %struct.ipmi_softc, %struct.ipmi_softc* %71, i32 0, i32 0
  store i32 %70, i32* %72, align 8
  %73 = getelementptr inbounds %struct.ipmi_get_info, %struct.ipmi_get_info* %5, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.ipmi_softc*, %struct.ipmi_softc** %4, align 8
  %76 = getelementptr inbounds %struct.ipmi_softc, %struct.ipmi_softc* %75, i32 0, i32 4
  store i32 %74, i32* %76, align 8
  %77 = load %struct.ipmi_softc*, %struct.ipmi_softc** %4, align 8
  %78 = getelementptr inbounds %struct.ipmi_softc, %struct.ipmi_softc* %77, i32 0, i32 3
  %79 = load i32**, i32*** %78, align 8
  %80 = getelementptr inbounds i32*, i32** %79, i64 0
  %81 = load i32*, i32** %80, align 8
  %82 = icmp eq i32* %81, null
  br i1 %82, label %83, label %87

83:                                               ; preds = %55
  %84 = load i32, i32* %3, align 4
  %85 = call i32 (i32, i8*, ...) @device_printf(i32 %84, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.7, i64 0, i64 0))
  %86 = load i32, i32* @ENXIO, align 4
  store i32 %86, i32* %2, align 4
  br label %127

87:                                               ; preds = %55
  %88 = load %struct.ipmi_softc*, %struct.ipmi_softc** %4, align 8
  %89 = getelementptr inbounds %struct.ipmi_softc, %struct.ipmi_softc* %88, i32 0, i32 1
  store i64 0, i64* %89, align 8
  %90 = load i32, i32* %3, align 4
  %91 = load i32, i32* @SYS_RES_IRQ, align 4
  %92 = load %struct.ipmi_softc*, %struct.ipmi_softc** %4, align 8
  %93 = getelementptr inbounds %struct.ipmi_softc, %struct.ipmi_softc* %92, i32 0, i32 1
  %94 = load i32, i32* @RF_SHAREABLE, align 4
  %95 = load i32, i32* @RF_ACTIVE, align 4
  %96 = or i32 %94, %95
  %97 = call i8* @bus_alloc_resource_any(i32 %90, i32 %91, i64* %93, i32 %96)
  %98 = load %struct.ipmi_softc*, %struct.ipmi_softc** %4, align 8
  %99 = getelementptr inbounds %struct.ipmi_softc, %struct.ipmi_softc* %98, i32 0, i32 2
  store i8* %97, i8** %99, align 8
  %100 = getelementptr inbounds %struct.ipmi_get_info, %struct.ipmi_get_info* %5, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  switch i32 %101, label %116 [
    i32 129, label %102
    i32 128, label %109
  ]

102:                                              ; preds = %87
  %103 = load %struct.ipmi_softc*, %struct.ipmi_softc** %4, align 8
  %104 = call i32 @ipmi_kcs_attach(%struct.ipmi_softc* %103)
  store i32 %104, i32* %7, align 4
  %105 = load i32, i32* %7, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %108

107:                                              ; preds = %102
  br label %123

108:                                              ; preds = %102
  br label %116

109:                                              ; preds = %87
  %110 = load %struct.ipmi_softc*, %struct.ipmi_softc** %4, align 8
  %111 = call i32 @ipmi_smic_attach(%struct.ipmi_softc* %110)
  store i32 %111, i32* %7, align 4
  %112 = load i32, i32* %7, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %115

114:                                              ; preds = %109
  br label %123

115:                                              ; preds = %109
  br label %116

116:                                              ; preds = %87, %115, %108
  %117 = load i32, i32* %3, align 4
  %118 = call i32 @ipmi_attach(i32 %117)
  store i32 %118, i32* %7, align 4
  %119 = load i32, i32* %7, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %122

121:                                              ; preds = %116
  br label %123

122:                                              ; preds = %116
  store i32 0, i32* %2, align 4
  br label %127

123:                                              ; preds = %121, %114, %107
  %124 = load i32, i32* %3, align 4
  %125 = call i32 @ipmi_release_resources(i32 %124)
  %126 = load i32, i32* %7, align 4
  store i32 %126, i32* %2, align 4
  br label %127

127:                                              ; preds = %123, %122, %83, %27, %23, %13
  %128 = load i32, i32* %2, align 4
  ret i32 %128
}

declare dso_local %struct.ipmi_softc* @device_get_softc(i32) #1

declare dso_local i32 @ipmi_smbios_identify(%struct.ipmi_get_info*) #1

declare dso_local i32 @device_printf(i32, i8*, ...) #1

declare dso_local i32 @device_get_name(i32) #1

declare dso_local i32 @device_get_parent(i32) #1

declare dso_local i64 @PCIR_BAR(i32) #1

declare dso_local i8* @bus_alloc_resource_any(i32, i32, i64*, i32) #1

declare dso_local i32 @ipmi_kcs_attach(%struct.ipmi_softc*) #1

declare dso_local i32 @ipmi_smic_attach(%struct.ipmi_softc*) #1

declare dso_local i32 @ipmi_attach(i32) #1

declare dso_local i32 @ipmi_release_resources(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
