; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/nvdimm/extr_nvdimm_acpi.c_nvdimm_root_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/nvdimm/extr_nvdimm_acpi.c_nvdimm_root_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvdimm_root_dev = type { i32 }
%struct.TYPE_4__ = type { i32 }

@ACPI_SIG_NFIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"cannot get NFIT\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @nvdimm_root_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nvdimm_root_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.nvdimm_root_dev*, align 8
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %8 = load i32, i32* @ACPI_SIG_NFIT, align 4
  %9 = bitcast %struct.TYPE_4__** %5 to i32**
  %10 = call i32 @AcpiGetTable(i32 %8, i32 1, i32** %9)
  store i32 %10, i32* %6, align 4
  %11 = load i32, i32* %6, align 4
  %12 = call i64 @ACPI_FAILURE(i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %1
  %15 = load i32, i32* %3, align 4
  %16 = call i32 @device_printf(i32 %15, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %17 = load i32, i32* @ENXIO, align 4
  store i32 %17, i32* %2, align 4
  br label %43

18:                                               ; preds = %1
  %19 = load i32, i32* %3, align 4
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %21 = call i32 @nvdimm_root_create_devs(i32 %19, %struct.TYPE_4__* %20)
  store i32 %21, i32* %7, align 4
  %22 = load i32, i32* %7, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %18
  %25 = load i32, i32* %7, align 4
  store i32 %25, i32* %2, align 4
  br label %43

26:                                               ; preds = %18
  %27 = load i32, i32* %3, align 4
  %28 = call i32 @bus_generic_attach(i32 %27)
  store i32 %28, i32* %7, align 4
  %29 = load i32, i32* %7, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %26
  %32 = load i32, i32* %7, align 4
  store i32 %32, i32* %2, align 4
  br label %43

33:                                               ; preds = %26
  %34 = load i32, i32* %3, align 4
  %35 = call %struct.nvdimm_root_dev* @device_get_softc(i32 %34)
  store %struct.nvdimm_root_dev* %35, %struct.nvdimm_root_dev** %4, align 8
  %36 = load %struct.nvdimm_root_dev*, %struct.nvdimm_root_dev** %4, align 8
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %38 = call i32 @nvdimm_root_create_spas(%struct.nvdimm_root_dev* %36, %struct.TYPE_4__* %37)
  store i32 %38, i32* %7, align 4
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = call i32 @AcpiPutTable(i32* %40)
  %42 = load i32, i32* %7, align 4
  store i32 %42, i32* %2, align 4
  br label %43

43:                                               ; preds = %33, %31, %24, %14
  %44 = load i32, i32* %2, align 4
  ret i32 %44
}

declare dso_local i32 @AcpiGetTable(i32, i32, i32**) #1

declare dso_local i64 @ACPI_FAILURE(i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @nvdimm_root_create_devs(i32, %struct.TYPE_4__*) #1

declare dso_local i32 @bus_generic_attach(i32) #1

declare dso_local %struct.nvdimm_root_dev* @device_get_softc(i32) #1

declare dso_local i32 @nvdimm_root_create_spas(%struct.nvdimm_root_dev*, %struct.TYPE_4__*) #1

declare dso_local i32 @AcpiPutTable(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
