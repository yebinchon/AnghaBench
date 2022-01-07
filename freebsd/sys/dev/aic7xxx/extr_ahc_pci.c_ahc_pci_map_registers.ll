; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/aic7xxx/extr_ahc_pci.c_ahc_pci_map_registers.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/aic7xxx/extr_ahc_pci.c_ahc_pci_map_registers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ahc_softc = type { %struct.TYPE_2__*, i32, i8*, i8* }
%struct.TYPE_2__ = type { i32, i32, %struct.resource* }
%struct.resource = type { i32 }

@.str = private unnamed_addr constant [12 x i8] c"allow_memio\00", align 1
@bootverbose = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [21 x i8] c"Defaulting to MEMIO \00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"off\0A\00", align 1
@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@AHC_PCI_MEMADDR = common dso_local global i32 0, align 4
@RF_ACTIVE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [60 x i8] c"PCI Device %d:%d:%d failed memory mapped test.  Using PIO.\0A\00", align 1
@SYS_RES_IOPORT = common dso_local global i32 0, align 4
@AHC_PCI_IOADDR = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [45 x i8] c"PCI Device %d:%d:%d failed I/O mapped test.\0A\00", align 1
@.str.5 = private unnamed_addr constant [35 x i8] c"can't allocate register resources\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ahc_pci_map_registers(%struct.ahc_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ahc_softc*, align 8
  %4 = alloca %struct.resource*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.ahc_softc* %0, %struct.ahc_softc** %3, align 8
  store %struct.resource* null, %struct.resource** %4, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %8 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %9 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 8
  %11 = call i32 @device_get_name(i32 %10)
  %12 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %13 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  %15 = call i32 @device_get_unit(i32 %14)
  %16 = call i64 @resource_int_value(i32 %11, i32 %15, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32* %7)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %32

18:                                               ; preds = %1
  %19 = load i64, i64* @bootverbose, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %18
  %22 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %23 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = call i32 (i32, i8*, ...) @device_printf(i32 %24, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  br label %26

26:                                               ; preds = %21, %18
  %27 = load i64, i64* @bootverbose, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %26
  %30 = call i32 @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  br label %31

31:                                               ; preds = %29, %26
  store i32 0, i32* %7, align 4
  br label %32

32:                                               ; preds = %31, %1
  %33 = load i32, i32* %7, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %84

35:                                               ; preds = %32
  %36 = load i32, i32* @SYS_RES_MEMORY, align 4
  store i32 %36, i32* %5, align 4
  %37 = load i32, i32* @AHC_PCI_MEMADDR, align 4
  store i32 %37, i32* %6, align 4
  %38 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %39 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* %5, align 4
  %42 = load i32, i32* @RF_ACTIVE, align 4
  %43 = call %struct.resource* @bus_alloc_resource_any(i32 %40, i32 %41, i32* %6, i32 %42)
  store %struct.resource* %43, %struct.resource** %4, align 8
  %44 = load %struct.resource*, %struct.resource** %4, align 8
  %45 = icmp ne %struct.resource* %44, null
  br i1 %45, label %46, label %83

46:                                               ; preds = %35
  %47 = load %struct.resource*, %struct.resource** %4, align 8
  %48 = call i8* @rman_get_bustag(%struct.resource* %47)
  %49 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %50 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %49, i32 0, i32 3
  store i8* %48, i8** %50, align 8
  %51 = load %struct.resource*, %struct.resource** %4, align 8
  %52 = call i8* @rman_get_bushandle(%struct.resource* %51)
  %53 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %54 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %53, i32 0, i32 2
  store i8* %52, i8** %54, align 8
  %55 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %56 = call i64 @ahc_pci_test_register_access(%struct.ahc_softc* %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %82

58:                                               ; preds = %46
  %59 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %60 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %63 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 8
  %65 = call i32 @aic_get_pci_bus(i32 %64)
  %66 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %67 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 8
  %69 = call i32 @aic_get_pci_slot(i32 %68)
  %70 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %71 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 8
  %73 = call i32 @aic_get_pci_function(i32 %72)
  %74 = call i32 (i32, i8*, ...) @device_printf(i32 %61, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.3, i64 0, i64 0), i32 %65, i32 %69, i32 %73)
  %75 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %76 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 8
  %78 = load i32, i32* %5, align 4
  %79 = load i32, i32* %6, align 4
  %80 = load %struct.resource*, %struct.resource** %4, align 8
  %81 = call i32 @bus_release_resource(i32 %77, i32 %78, i32 %79, %struct.resource* %80)
  store %struct.resource* null, %struct.resource** %4, align 8
  br label %82

82:                                               ; preds = %58, %46
  br label %83

83:                                               ; preds = %82, %35
  br label %84

84:                                               ; preds = %83, %32
  %85 = load %struct.resource*, %struct.resource** %4, align 8
  %86 = icmp eq %struct.resource* %85, null
  br i1 %86, label %87, label %136

87:                                               ; preds = %84
  %88 = load i32, i32* @SYS_RES_IOPORT, align 4
  store i32 %88, i32* %5, align 4
  %89 = load i32, i32* @AHC_PCI_IOADDR, align 4
  store i32 %89, i32* %6, align 4
  %90 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %91 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 8
  %93 = load i32, i32* %5, align 4
  %94 = load i32, i32* @RF_ACTIVE, align 4
  %95 = call %struct.resource* @bus_alloc_resource_any(i32 %92, i32 %93, i32* %6, i32 %94)
  store %struct.resource* %95, %struct.resource** %4, align 8
  %96 = load %struct.resource*, %struct.resource** %4, align 8
  %97 = icmp ne %struct.resource* %96, null
  br i1 %97, label %98, label %135

98:                                               ; preds = %87
  %99 = load %struct.resource*, %struct.resource** %4, align 8
  %100 = call i8* @rman_get_bustag(%struct.resource* %99)
  %101 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %102 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %101, i32 0, i32 3
  store i8* %100, i8** %102, align 8
  %103 = load %struct.resource*, %struct.resource** %4, align 8
  %104 = call i8* @rman_get_bushandle(%struct.resource* %103)
  %105 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %106 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %105, i32 0, i32 2
  store i8* %104, i8** %106, align 8
  %107 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %108 = call i64 @ahc_pci_test_register_access(%struct.ahc_softc* %107)
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %134

110:                                              ; preds = %98
  %111 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %112 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 8
  %114 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %115 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 8
  %117 = call i32 @aic_get_pci_bus(i32 %116)
  %118 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %119 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 8
  %121 = call i32 @aic_get_pci_slot(i32 %120)
  %122 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %123 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 8
  %125 = call i32 @aic_get_pci_function(i32 %124)
  %126 = call i32 (i32, i8*, ...) @device_printf(i32 %113, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.4, i64 0, i64 0), i32 %117, i32 %121, i32 %125)
  %127 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %128 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 8
  %130 = load i32, i32* %5, align 4
  %131 = load i32, i32* %6, align 4
  %132 = load %struct.resource*, %struct.resource** %4, align 8
  %133 = call i32 @bus_release_resource(i32 %129, i32 %130, i32 %131, %struct.resource* %132)
  store %struct.resource* null, %struct.resource** %4, align 8
  br label %134

134:                                              ; preds = %110, %98
  br label %135

135:                                              ; preds = %134, %87
  br label %136

136:                                              ; preds = %135, %84
  %137 = load %struct.resource*, %struct.resource** %4, align 8
  %138 = icmp eq %struct.resource* %137, null
  br i1 %138, label %139, label %145

139:                                              ; preds = %136
  %140 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %141 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 8
  %143 = call i32 (i32, i8*, ...) @device_printf(i32 %142, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.5, i64 0, i64 0))
  %144 = load i32, i32* @ENOMEM, align 4
  store i32 %144, i32* %2, align 4
  br label %161

145:                                              ; preds = %136
  %146 = load i32, i32* %5, align 4
  %147 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %148 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %147, i32 0, i32 0
  %149 = load %struct.TYPE_2__*, %struct.TYPE_2__** %148, align 8
  %150 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %149, i32 0, i32 0
  store i32 %146, i32* %150, align 8
  %151 = load i32, i32* %6, align 4
  %152 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %153 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %152, i32 0, i32 0
  %154 = load %struct.TYPE_2__*, %struct.TYPE_2__** %153, align 8
  %155 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %154, i32 0, i32 1
  store i32 %151, i32* %155, align 4
  %156 = load %struct.resource*, %struct.resource** %4, align 8
  %157 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %158 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %157, i32 0, i32 0
  %159 = load %struct.TYPE_2__*, %struct.TYPE_2__** %158, align 8
  %160 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %159, i32 0, i32 2
  store %struct.resource* %156, %struct.resource** %160, align 8
  store i32 0, i32* %2, align 4
  br label %161

161:                                              ; preds = %145, %139
  %162 = load i32, i32* %2, align 4
  ret i32 %162
}

declare dso_local i64 @resource_int_value(i32, i32, i8*, i32*) #1

declare dso_local i32 @device_get_name(i32) #1

declare dso_local i32 @device_get_unit(i32) #1

declare dso_local i32 @device_printf(i32, i8*, ...) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local %struct.resource* @bus_alloc_resource_any(i32, i32, i32*, i32) #1

declare dso_local i8* @rman_get_bustag(%struct.resource*) #1

declare dso_local i8* @rman_get_bushandle(%struct.resource*) #1

declare dso_local i64 @ahc_pci_test_register_access(%struct.ahc_softc*) #1

declare dso_local i32 @aic_get_pci_bus(i32) #1

declare dso_local i32 @aic_get_pci_slot(i32) #1

declare dso_local i32 @aic_get_pci_function(i32) #1

declare dso_local i32 @bus_release_resource(i32, i32, i32, %struct.resource*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
