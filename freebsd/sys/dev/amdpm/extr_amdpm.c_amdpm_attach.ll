; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/amdpm/extr_amdpm.c_amdpm_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/amdpm/extr_amdpm.c_amdpm_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdpm_softc = type { i32, i32, i32*, i32 }

@AMDPCI_GEN_CONFIG_PM = common dso_local global i32 0, align 4
@AMDPCI_PMIOEN = common dso_local global i32 0, align 4
@AMDPM_VENDORID_AMD = common dso_local global i64 0, align 8
@AMDPCI_PMBASE = common dso_local global i32 0, align 4
@NFPCI_PMBASE = common dso_local global i32 0, align 4
@SYS_RES_IOPORT = common dso_local global i32 0, align 4
@RF_ACTIVE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"could not map i/o space\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"amdpm\00", align 1
@MTX_DEF = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [6 x i8] c"smbus\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @amdpm_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @amdpm_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.amdpm_softc*, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = call %struct.amdpm_softc* @device_get_softc(i32 %6)
  store %struct.amdpm_softc* %7, %struct.amdpm_softc** %4, align 8
  %8 = load i32, i32* %3, align 4
  %9 = load i32, i32* @AMDPCI_GEN_CONFIG_PM, align 4
  %10 = call i32 @pci_read_config(i32 %8, i32 %9, i32 1)
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* %3, align 4
  %12 = load i32, i32* @AMDPCI_GEN_CONFIG_PM, align 4
  %13 = load i32, i32* %5, align 4
  %14 = load i32, i32* @AMDPCI_PMIOEN, align 4
  %15 = or i32 %13, %14
  %16 = call i32 @pci_write_config(i32 %11, i32 %12, i32 %15, i32 1)
  %17 = load i32, i32* %3, align 4
  %18 = call i64 @pci_get_vendor(i32 %17)
  %19 = load i64, i64* @AMDPM_VENDORID_AMD, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %25

21:                                               ; preds = %1
  %22 = load i32, i32* @AMDPCI_PMBASE, align 4
  %23 = load %struct.amdpm_softc*, %struct.amdpm_softc** %4, align 8
  %24 = getelementptr inbounds %struct.amdpm_softc, %struct.amdpm_softc* %23, i32 0, i32 3
  store i32 %22, i32* %24, align 8
  br label %29

25:                                               ; preds = %1
  %26 = load i32, i32* @NFPCI_PMBASE, align 4
  %27 = load %struct.amdpm_softc*, %struct.amdpm_softc** %4, align 8
  %28 = getelementptr inbounds %struct.amdpm_softc, %struct.amdpm_softc* %27, i32 0, i32 3
  store i32 %26, i32* %28, align 8
  br label %29

29:                                               ; preds = %25, %21
  %30 = load i32, i32* %3, align 4
  %31 = load i32, i32* @SYS_RES_IOPORT, align 4
  %32 = load %struct.amdpm_softc*, %struct.amdpm_softc** %4, align 8
  %33 = getelementptr inbounds %struct.amdpm_softc, %struct.amdpm_softc* %32, i32 0, i32 3
  %34 = load i32, i32* @RF_ACTIVE, align 4
  %35 = call i32* @bus_alloc_resource_any(i32 %30, i32 %31, i32* %33, i32 %34)
  %36 = load %struct.amdpm_softc*, %struct.amdpm_softc** %4, align 8
  %37 = getelementptr inbounds %struct.amdpm_softc, %struct.amdpm_softc* %36, i32 0, i32 2
  store i32* %35, i32** %37, align 8
  %38 = load %struct.amdpm_softc*, %struct.amdpm_softc** %4, align 8
  %39 = getelementptr inbounds %struct.amdpm_softc, %struct.amdpm_softc* %38, i32 0, i32 2
  %40 = load i32*, i32** %39, align 8
  %41 = icmp eq i32* %40, null
  br i1 %41, label %42, label %46

42:                                               ; preds = %29
  %43 = load i32, i32* %3, align 4
  %44 = call i32 @device_printf(i32 %43, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %45 = load i32, i32* @ENXIO, align 4
  store i32 %45, i32* %2, align 4
  br label %68

46:                                               ; preds = %29
  %47 = load %struct.amdpm_softc*, %struct.amdpm_softc** %4, align 8
  %48 = getelementptr inbounds %struct.amdpm_softc, %struct.amdpm_softc* %47, i32 0, i32 1
  %49 = load i32, i32* %3, align 4
  %50 = call i32 @device_get_nameunit(i32 %49)
  %51 = load i32, i32* @MTX_DEF, align 4
  %52 = call i32 @mtx_init(i32* %48, i32 %50, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %51)
  %53 = load i32, i32* %3, align 4
  %54 = call i32 @device_add_child(i32 %53, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 -1)
  %55 = load %struct.amdpm_softc*, %struct.amdpm_softc** %4, align 8
  %56 = getelementptr inbounds %struct.amdpm_softc, %struct.amdpm_softc* %55, i32 0, i32 0
  store i32 %54, i32* %56, align 8
  %57 = load %struct.amdpm_softc*, %struct.amdpm_softc** %4, align 8
  %58 = getelementptr inbounds %struct.amdpm_softc, %struct.amdpm_softc* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %65, label %61

61:                                               ; preds = %46
  %62 = load i32, i32* %3, align 4
  %63 = call i32 @amdpm_detach(i32 %62)
  %64 = load i32, i32* @EINVAL, align 4
  store i32 %64, i32* %2, align 4
  br label %68

65:                                               ; preds = %46
  %66 = load i32, i32* %3, align 4
  %67 = call i32 @bus_generic_attach(i32 %66)
  store i32 0, i32* %2, align 4
  br label %68

68:                                               ; preds = %65, %61, %42
  %69 = load i32, i32* %2, align 4
  ret i32 %69
}

declare dso_local %struct.amdpm_softc* @device_get_softc(i32) #1

declare dso_local i32 @pci_read_config(i32, i32, i32) #1

declare dso_local i32 @pci_write_config(i32, i32, i32, i32) #1

declare dso_local i64 @pci_get_vendor(i32) #1

declare dso_local i32* @bus_alloc_resource_any(i32, i32, i32*, i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @mtx_init(i32*, i32, i8*, i32) #1

declare dso_local i32 @device_get_nameunit(i32) #1

declare dso_local i32 @device_add_child(i32, i8*, i32) #1

declare dso_local i32 @amdpm_detach(i32) #1

declare dso_local i32 @bus_generic_attach(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
