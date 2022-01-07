; ModuleID = '/home/carl/AnghaBench/freebsd/sys/sparc64/pci/extr_sbbc.c_sbbc_pci_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/sparc64/pci/extr_sbbc.c_sbbc_pci_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sbbc_softc = type { i32* }
%struct.timespec = type { i32, i64 }

@.str = private unnamed_addr constant [8 x i8] c"/chosen\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"failed to find /chosen\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"iosram\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"failed to get iosram\0A\00", align 1
@SBBC_PCI_BAR = common dso_local global i32 0, align 4
@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@RF_ACTIVE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [30 x i8] c"failed to allocate resources\0A\00", align 1
@sbbc_console = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [27 x i8] c"failed to add UART device\0A\00", align 1
@.str.6 = private unnamed_addr constant [30 x i8] c"failed to attach UART device\0A\00", align 1
@.str.7 = private unnamed_addr constant [21 x i8] c"failed to parse TOC\0A\00", align 1
@sbbc_toddata = common dso_local global i64 0, align 8
@tod_magic = common dso_local global i32 0, align 4
@SBBC_TOD_MAGIC = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [23 x i8] c"invalid TOD magic %#x\0A\00", align 1
@tod_version = common dso_local global i32 0, align 4
@SBBC_TOD_VERSION = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [25 x i8] c"invalid TOD version %#x\0A\00", align 1
@bootverbose = common dso_local global i64 0, align 8
@.str.10 = private unnamed_addr constant [25 x i8] c"current time: %ld.%09ld\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @sbbc_pci_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sbbc_pci_attach(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca %struct.sbbc_softc*, align 8
  %5 = alloca %struct.timespec, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  %13 = call i32 @OF_finddevice(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  store i32 %13, i32* %9, align 4
  %14 = icmp eq i32 %13, -1
  br i1 %14, label %15, label %19

15:                                               ; preds = %1
  %16 = load i32*, i32** %3, align 8
  %17 = call i32 (i32*, i8*, ...) @device_printf(i32* %16, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %18 = load i32, i32* @ENXIO, align 4
  store i32 %18, i32* %2, align 4
  br label %153

19:                                               ; preds = %1
  %20 = load i32, i32* %9, align 4
  %21 = call i32 @OF_getprop(i32 %20, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32* %9, i32 4)
  %22 = icmp eq i32 %21, -1
  br i1 %22, label %23, label %27

23:                                               ; preds = %19
  %24 = load i32*, i32** %3, align 8
  %25 = call i32 (i32*, i8*, ...) @device_printf(i32* %24, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0))
  %26 = load i32, i32* @ENXIO, align 4
  store i32 %26, i32* %2, align 4
  br label %153

27:                                               ; preds = %19
  %28 = load i32, i32* %9, align 4
  %29 = load i32*, i32** %3, align 8
  %30 = call i32 @ofw_bus_get_node(i32* %29)
  %31 = icmp ne i32 %28, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %27
  store i32 0, i32* %2, align 4
  br label %153

33:                                               ; preds = %27
  %34 = load i32*, i32** %3, align 8
  %35 = call %struct.sbbc_softc* @device_get_softc(i32* %34)
  store %struct.sbbc_softc* %35, %struct.sbbc_softc** %4, align 8
  %36 = load i32, i32* @SBBC_PCI_BAR, align 4
  store i32 %36, i32* %11, align 4
  %37 = load i32*, i32** %3, align 8
  %38 = load i32, i32* @SYS_RES_MEMORY, align 4
  %39 = load i32, i32* @RF_ACTIVE, align 4
  %40 = call i32* @bus_alloc_resource_any(i32* %37, i32 %38, i32* %11, i32 %39)
  %41 = load %struct.sbbc_softc*, %struct.sbbc_softc** %4, align 8
  %42 = getelementptr inbounds %struct.sbbc_softc, %struct.sbbc_softc* %41, i32 0, i32 0
  store i32* %40, i32** %42, align 8
  %43 = load %struct.sbbc_softc*, %struct.sbbc_softc** %4, align 8
  %44 = getelementptr inbounds %struct.sbbc_softc, %struct.sbbc_softc* %43, i32 0, i32 0
  %45 = load i32*, i32** %44, align 8
  %46 = icmp eq i32* %45, null
  br i1 %46, label %47, label %51

47:                                               ; preds = %33
  %48 = load i32*, i32** %3, align 8
  %49 = call i32 (i32*, i8*, ...) @device_printf(i32* %48, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0))
  %50 = load i32, i32* @ENXIO, align 4
  store i32 %50, i32* %2, align 4
  br label %153

51:                                               ; preds = %33
  %52 = load %struct.sbbc_softc*, %struct.sbbc_softc** %4, align 8
  %53 = getelementptr inbounds %struct.sbbc_softc, %struct.sbbc_softc* %52, i32 0, i32 0
  %54 = load i32*, i32** %53, align 8
  %55 = call i32 @rman_get_bustag(i32* %54)
  store i32 %55, i32* %7, align 4
  %56 = load %struct.sbbc_softc*, %struct.sbbc_softc** %4, align 8
  %57 = getelementptr inbounds %struct.sbbc_softc, %struct.sbbc_softc* %56, i32 0, i32 0
  %58 = load i32*, i32** %57, align 8
  %59 = call i32 @rman_get_bushandle(i32* %58)
  store i32 %59, i32* %8, align 4
  %60 = load i64, i64* @sbbc_console, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %86

62:                                               ; preds = %51
  %63 = load i32*, i32** %3, align 8
  %64 = call i64 @pci_get_intpin(i32* %63)
  %65 = icmp eq i64 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %62
  %67 = load i32*, i32** %3, align 8
  %68 = call i32 @pci_set_intpin(i32* %67, i32 1)
  br label %69

69:                                               ; preds = %66, %62
  %70 = load i32*, i32** %3, align 8
  %71 = call i32* @device_add_child(i32* %70, i32* null, i32 -1)
  store i32* %71, i32** %6, align 8
  %72 = load i32*, i32** %6, align 8
  %73 = icmp eq i32* %72, null
  br i1 %73, label %74, label %77

74:                                               ; preds = %69
  %75 = load i32*, i32** %3, align 8
  %76 = call i32 (i32*, i8*, ...) @device_printf(i32* %75, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0))
  br label %77

77:                                               ; preds = %74, %69
  %78 = load i32*, i32** %3, align 8
  %79 = call i32 @bus_generic_attach(i32* %78)
  store i32 %79, i32* %10, align 4
  %80 = load i32, i32* %10, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %85

82:                                               ; preds = %77
  %83 = load i32*, i32** %3, align 8
  %84 = call i32 (i32*, i8*, ...) @device_printf(i32* %83, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.6, i64 0, i64 0))
  br label %85

85:                                               ; preds = %82, %77
  br label %108

86:                                               ; preds = %51
  %87 = load i32, i32* %7, align 4
  %88 = load i32, i32* %8, align 4
  %89 = call i32 @sbbc_parse_toc(i32 %87, i32 %88)
  store i32 %89, i32* %10, align 4
  %90 = load i32, i32* %10, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %107

92:                                               ; preds = %86
  %93 = load i32*, i32** %3, align 8
  %94 = call i32 (i32*, i8*, ...) @device_printf(i32* %93, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i64 0, i64 0))
  %95 = load i64, i64* @sbbc_console, align 8
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %106

97:                                               ; preds = %92
  %98 = load i32*, i32** %3, align 8
  %99 = load i32, i32* @SYS_RES_MEMORY, align 4
  %100 = load i32, i32* %11, align 4
  %101 = load %struct.sbbc_softc*, %struct.sbbc_softc** %4, align 8
  %102 = getelementptr inbounds %struct.sbbc_softc, %struct.sbbc_softc* %101, i32 0, i32 0
  %103 = load i32*, i32** %102, align 8
  %104 = call i32 @bus_release_resource(i32* %98, i32 %99, i32 %100, i32* %103)
  %105 = load i32, i32* %10, align 4
  store i32 %105, i32* %2, align 4
  br label %153

106:                                              ; preds = %92
  br label %107

107:                                              ; preds = %106, %86
  br label %108

108:                                              ; preds = %107, %85
  %109 = load i64, i64* @sbbc_toddata, align 8
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %152

111:                                              ; preds = %108
  %112 = load i64, i64* @sbbc_toddata, align 8
  %113 = load i32, i32* @tod_magic, align 4
  %114 = call i64 @SBBC_TOD_OFF(i32 %113)
  %115 = add nsw i64 %112, %114
  %116 = call i32 @SBBC_SRAM_READ_4(i64 %115)
  store i32 %116, i32* %12, align 4
  %117 = load i32, i32* @SBBC_TOD_MAGIC, align 4
  %118 = icmp ne i32 %116, %117
  br i1 %118, label %119, label %123

119:                                              ; preds = %111
  %120 = load i32*, i32** %3, align 8
  %121 = load i32, i32* %12, align 4
  %122 = call i32 (i32*, i8*, ...) @device_printf(i32* %120, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.8, i64 0, i64 0), i32 %121)
  br label %151

123:                                              ; preds = %111
  %124 = load i64, i64* @sbbc_toddata, align 8
  %125 = load i32, i32* @tod_version, align 4
  %126 = call i64 @SBBC_TOD_OFF(i32 %125)
  %127 = add nsw i64 %124, %126
  %128 = call i32 @SBBC_SRAM_READ_4(i64 %127)
  store i32 %128, i32* %12, align 4
  %129 = load i32, i32* @SBBC_TOD_VERSION, align 4
  %130 = icmp slt i32 %128, %129
  br i1 %130, label %131, label %135

131:                                              ; preds = %123
  %132 = load i32*, i32** %3, align 8
  %133 = load i32, i32* %12, align 4
  %134 = call i32 (i32*, i8*, ...) @device_printf(i32* %132, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.9, i64 0, i64 0), i32 %133)
  br label %150

135:                                              ; preds = %123
  %136 = load i32*, i32** %3, align 8
  %137 = call i32 @clock_register(i32* %136, i32 1000000)
  %138 = load i64, i64* @bootverbose, align 8
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %149

140:                                              ; preds = %135
  %141 = load i32*, i32** %3, align 8
  %142 = call i32 @sbbc_tod_gettime(i32* %141, %struct.timespec* %5)
  %143 = load i32*, i32** %3, align 8
  %144 = getelementptr inbounds %struct.timespec, %struct.timespec* %5, i32 0, i32 1
  %145 = load i64, i64* %144, align 8
  %146 = getelementptr inbounds %struct.timespec, %struct.timespec* %5, i32 0, i32 0
  %147 = load i32, i32* %146, align 8
  %148 = call i32 (i32*, i8*, ...) @device_printf(i32* %143, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.10, i64 0, i64 0), i64 %145, i32 %147)
  br label %149

149:                                              ; preds = %140, %135
  br label %150

150:                                              ; preds = %149, %131
  br label %151

151:                                              ; preds = %150, %119
  br label %152

152:                                              ; preds = %151, %108
  store i32 0, i32* %2, align 4
  br label %153

153:                                              ; preds = %152, %97, %47, %32, %23, %15
  %154 = load i32, i32* %2, align 4
  ret i32 %154
}

declare dso_local i32 @OF_finddevice(i8*) #1

declare dso_local i32 @device_printf(i32*, i8*, ...) #1

declare dso_local i32 @OF_getprop(i32, i8*, i32*, i32) #1

declare dso_local i32 @ofw_bus_get_node(i32*) #1

declare dso_local %struct.sbbc_softc* @device_get_softc(i32*) #1

declare dso_local i32* @bus_alloc_resource_any(i32*, i32, i32*, i32) #1

declare dso_local i32 @rman_get_bustag(i32*) #1

declare dso_local i32 @rman_get_bushandle(i32*) #1

declare dso_local i64 @pci_get_intpin(i32*) #1

declare dso_local i32 @pci_set_intpin(i32*, i32) #1

declare dso_local i32* @device_add_child(i32*, i32*, i32) #1

declare dso_local i32 @bus_generic_attach(i32*) #1

declare dso_local i32 @sbbc_parse_toc(i32, i32) #1

declare dso_local i32 @bus_release_resource(i32*, i32, i32, i32*) #1

declare dso_local i32 @SBBC_SRAM_READ_4(i64) #1

declare dso_local i64 @SBBC_TOD_OFF(i32) #1

declare dso_local i32 @clock_register(i32*, i32) #1

declare dso_local i32 @sbbc_tod_gettime(i32*, %struct.timespec*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
