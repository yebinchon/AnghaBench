; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/alpm/extr_alpm.c_alpm_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/alpm/extr_alpm.c_alpm_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.alpm_softc = type { i32*, i32, i32*, i32, i32 }

@ATPC = common dso_local global i32 0, align 4
@ATPC_SMBCTRL = common dso_local global i32 0, align 4
@bootverbose = common dso_local global i64 0, align 8
@alpm_debug = common dso_local global i64 0, align 8
@SMBHSI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"%s/%s\00", align 1
@SMBHSI_HOST = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"host\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"nohost\00", align 1
@SMBHSI_SLAVE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [6 x i8] c"slave\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"noslave\00", align 1
@SMBHCBC = common dso_local global i32 0, align 4
@SMBHCBC_CLOCK = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [6 x i8] c" 149K\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c" 74K\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c" 37K\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c" 223K\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c" 111K\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c" 55K\00", align 1
@.str.11 = private unnamed_addr constant [8 x i8] c"unknown\00", align 1
@.str.12 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@SMBBA = common dso_local global i32 0, align 4
@SYS_RES_IOPORT = common dso_local global i32 0, align 4
@RF_ACTIVE = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [30 x i8] c"Could not allocate Bus space\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [5 x i8] c"alpm\00", align 1
@MTX_DEF = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [6 x i8] c"smbus\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @alpm_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @alpm_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.alpm_softc*, align 8
  store i32 %0, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  %8 = call %struct.alpm_softc* @device_get_softc(i32 %7)
  store %struct.alpm_softc* %8, %struct.alpm_softc** %6, align 8
  %9 = load i32, i32* %3, align 4
  %10 = load i32, i32* @ATPC, align 4
  %11 = call i32 @pci_read_config(i32 %9, i32 %10, i32 1)
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* %3, align 4
  %13 = load i32, i32* @ATPC, align 4
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* @ATPC_SMBCTRL, align 4
  %16 = xor i32 %15, -1
  %17 = and i32 %14, %16
  %18 = call i32 @pci_write_config(i32 %12, i32 %13, i32 %17, i32 1)
  %19 = load i64, i64* @bootverbose, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %1
  %22 = load i64, i64* @alpm_debug, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %64

24:                                               ; preds = %21, %1
  %25 = load i32, i32* %3, align 4
  %26 = load i32, i32* @SMBHSI, align 4
  %27 = call i32 @pci_read_config(i32 %25, i32 %26, i32 1)
  store i32 %27, i32* %5, align 4
  %28 = load i32, i32* %3, align 4
  %29 = load i32, i32* %5, align 4
  %30 = load i32, i32* @SMBHSI_HOST, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  %33 = zext i1 %32 to i64
  %34 = select i1 %32, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0)
  %35 = load i32, i32* %5, align 4
  %36 = load i32, i32* @SMBHSI_SLAVE, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  %39 = zext i1 %38 to i64
  %40 = select i1 %38, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0)
  %41 = call i32 (i32, i8*, ...) @device_printf(i32 %28, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %34, i8* %40)
  %42 = load i32, i32* %3, align 4
  %43 = load i32, i32* @SMBHCBC, align 4
  %44 = call i32 @pci_read_config(i32 %42, i32 %43, i32 1)
  store i32 %44, i32* %5, align 4
  %45 = load i32, i32* %5, align 4
  %46 = load i32, i32* @SMBHCBC_CLOCK, align 4
  %47 = and i32 %45, %46
  switch i32 %47, label %60 [
    i32 132, label %48
    i32 128, label %50
    i32 130, label %52
    i32 131, label %54
    i32 133, label %56
    i32 129, label %58
  ]

48:                                               ; preds = %24
  %49 = call i32 @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0))
  br label %62

50:                                               ; preds = %24
  %51 = call i32 @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0))
  br label %62

52:                                               ; preds = %24
  %53 = call i32 @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0))
  br label %62

54:                                               ; preds = %24
  %55 = call i32 @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0))
  br label %62

56:                                               ; preds = %24
  %57 = call i32 @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0))
  br label %62

58:                                               ; preds = %24
  %59 = call i32 @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0))
  br label %62

60:                                               ; preds = %24
  %61 = call i32 @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i64 0, i64 0))
  br label %62

62:                                               ; preds = %60, %58, %56, %54, %52, %50, %48
  %63 = call i32 @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i64 0, i64 0))
  br label %64

64:                                               ; preds = %62, %21
  %65 = load i32, i32* @SMBBA, align 4
  store i32 %65, i32* %4, align 4
  %66 = load i32, i32* %3, align 4
  %67 = load i32, i32* @SYS_RES_IOPORT, align 4
  %68 = load i32, i32* @RF_ACTIVE, align 4
  %69 = call i32* @bus_alloc_resource_any(i32 %66, i32 %67, i32* %4, i32 %68)
  %70 = load %struct.alpm_softc*, %struct.alpm_softc** %6, align 8
  %71 = getelementptr inbounds %struct.alpm_softc, %struct.alpm_softc* %70, i32 0, i32 2
  store i32* %69, i32** %71, align 8
  %72 = load %struct.alpm_softc*, %struct.alpm_softc** %6, align 8
  %73 = getelementptr inbounds %struct.alpm_softc, %struct.alpm_softc* %72, i32 0, i32 2
  %74 = load i32*, i32** %73, align 8
  %75 = icmp eq i32* %74, null
  br i1 %75, label %76, label %80

76:                                               ; preds = %64
  %77 = load i32, i32* %3, align 4
  %78 = call i32 (i32, i8*, ...) @device_printf(i32 %77, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.13, i64 0, i64 0))
  %79 = load i32, i32* @ENXIO, align 4
  store i32 %79, i32* %2, align 4
  br label %114

80:                                               ; preds = %64
  %81 = load %struct.alpm_softc*, %struct.alpm_softc** %6, align 8
  %82 = getelementptr inbounds %struct.alpm_softc, %struct.alpm_softc* %81, i32 0, i32 2
  %83 = load i32*, i32** %82, align 8
  %84 = call i32 @rman_get_bustag(i32* %83)
  %85 = load %struct.alpm_softc*, %struct.alpm_softc** %6, align 8
  %86 = getelementptr inbounds %struct.alpm_softc, %struct.alpm_softc* %85, i32 0, i32 4
  store i32 %84, i32* %86, align 4
  %87 = load %struct.alpm_softc*, %struct.alpm_softc** %6, align 8
  %88 = getelementptr inbounds %struct.alpm_softc, %struct.alpm_softc* %87, i32 0, i32 2
  %89 = load i32*, i32** %88, align 8
  %90 = call i32 @rman_get_bushandle(i32* %89)
  %91 = load %struct.alpm_softc*, %struct.alpm_softc** %6, align 8
  %92 = getelementptr inbounds %struct.alpm_softc, %struct.alpm_softc* %91, i32 0, i32 3
  store i32 %90, i32* %92, align 8
  %93 = load %struct.alpm_softc*, %struct.alpm_softc** %6, align 8
  %94 = getelementptr inbounds %struct.alpm_softc, %struct.alpm_softc* %93, i32 0, i32 1
  %95 = load i32, i32* %3, align 4
  %96 = call i32 @device_get_nameunit(i32 %95)
  %97 = load i32, i32* @MTX_DEF, align 4
  %98 = call i32 @mtx_init(i32* %94, i32 %96, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32 %97)
  %99 = load i32, i32* %3, align 4
  %100 = call i32* @device_add_child(i32 %99, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i64 0, i64 0), i32 -1)
  %101 = load %struct.alpm_softc*, %struct.alpm_softc** %6, align 8
  %102 = getelementptr inbounds %struct.alpm_softc, %struct.alpm_softc* %101, i32 0, i32 0
  store i32* %100, i32** %102, align 8
  %103 = load %struct.alpm_softc*, %struct.alpm_softc** %6, align 8
  %104 = getelementptr inbounds %struct.alpm_softc, %struct.alpm_softc* %103, i32 0, i32 0
  %105 = load i32*, i32** %104, align 8
  %106 = icmp eq i32* %105, null
  br i1 %106, label %107, label %111

107:                                              ; preds = %80
  %108 = load i32, i32* %3, align 4
  %109 = call i32 @alpm_detach(i32 %108)
  %110 = load i32, i32* @EINVAL, align 4
  store i32 %110, i32* %2, align 4
  br label %114

111:                                              ; preds = %80
  %112 = load i32, i32* %3, align 4
  %113 = call i32 @bus_generic_attach(i32 %112)
  store i32 0, i32* %2, align 4
  br label %114

114:                                              ; preds = %111, %107, %76
  %115 = load i32, i32* %2, align 4
  ret i32 %115
}

declare dso_local %struct.alpm_softc* @device_get_softc(i32) #1

declare dso_local i32 @pci_read_config(i32, i32, i32) #1

declare dso_local i32 @pci_write_config(i32, i32, i32, i32) #1

declare dso_local i32 @device_printf(i32, i8*, ...) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i32* @bus_alloc_resource_any(i32, i32, i32*, i32) #1

declare dso_local i32 @rman_get_bustag(i32*) #1

declare dso_local i32 @rman_get_bushandle(i32*) #1

declare dso_local i32 @mtx_init(i32*, i32, i8*, i32) #1

declare dso_local i32 @device_get_nameunit(i32) #1

declare dso_local i32* @device_add_child(i32, i8*, i32) #1

declare dso_local i32 @alpm_detach(i32) #1

declare dso_local i32 @bus_generic_attach(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
