; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/nvdimm/extr_nvdimm.c_nvdimm_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/nvdimm/extr_nvdimm.c_nvdimm_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvdimm_dev = type { i32, i32, i32, i32 }
%struct.TYPE_3__ = type { i32 }

@ACPI_SIG_NFIT = common dso_local global i32 0, align 4
@bootverbose = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [17 x i8] c"cannot get NFIT\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @nvdimm_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nvdimm_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.nvdimm_dev*, align 8
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %9 = load i32, i32* %3, align 4
  %10 = call %struct.nvdimm_dev* @device_get_softc(i32 %9)
  store %struct.nvdimm_dev* %10, %struct.nvdimm_dev** %4, align 8
  %11 = load i32, i32* %3, align 4
  %12 = call i32* @nvdimm_root_get_acpi_handle(i32 %11)
  store i32* %12, i32** %6, align 8
  %13 = load i32*, i32** %6, align 8
  %14 = icmp ne i32* %13, null
  %15 = zext i1 %14 to i32
  %16 = call i32 @MPASS(i32 %15)
  %17 = load i32, i32* %3, align 4
  %18 = load %struct.nvdimm_dev*, %struct.nvdimm_dev** %4, align 8
  %19 = getelementptr inbounds %struct.nvdimm_dev, %struct.nvdimm_dev* %18, i32 0, i32 3
  store i32 %17, i32* %19, align 4
  %20 = load i32, i32* %3, align 4
  %21 = call i32 @nvdimm_root_get_device_handle(i32 %20)
  %22 = load %struct.nvdimm_dev*, %struct.nvdimm_dev** %4, align 8
  %23 = getelementptr inbounds %struct.nvdimm_dev, %struct.nvdimm_dev* %22, i32 0, i32 2
  store i32 %21, i32* %23, align 4
  %24 = load i32, i32* @ACPI_SIG_NFIT, align 4
  %25 = bitcast %struct.TYPE_3__** %5 to i32**
  %26 = call i32 @AcpiGetTable(i32 %24, i32 1, i32** %25)
  store i32 %26, i32* %7, align 4
  %27 = load i32, i32* %7, align 4
  %28 = call i64 @ACPI_FAILURE(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %38

30:                                               ; preds = %1
  %31 = load i64, i64* @bootverbose, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %30
  %34 = load i32, i32* %3, align 4
  %35 = call i32 @device_printf(i32 %34, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  br label %36

36:                                               ; preds = %33, %30
  %37 = load i32, i32* @ENXIO, align 4
  store i32 %37, i32* %2, align 4
  br label %59

38:                                               ; preds = %1
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %40 = load %struct.nvdimm_dev*, %struct.nvdimm_dev** %4, align 8
  %41 = getelementptr inbounds %struct.nvdimm_dev, %struct.nvdimm_dev* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.nvdimm_dev*, %struct.nvdimm_dev** %4, align 8
  %44 = getelementptr inbounds %struct.nvdimm_dev, %struct.nvdimm_dev* %43, i32 0, i32 1
  %45 = load %struct.nvdimm_dev*, %struct.nvdimm_dev** %4, align 8
  %46 = getelementptr inbounds %struct.nvdimm_dev, %struct.nvdimm_dev* %45, i32 0, i32 0
  %47 = call i32 @acpi_nfit_get_flush_addrs(%struct.TYPE_3__* %39, i32 %42, i32* %44, i32* %46)
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 0
  %50 = call i32 @AcpiPutTable(i32* %49)
  %51 = load %struct.nvdimm_dev*, %struct.nvdimm_dev** %4, align 8
  %52 = call i32 @read_label_area_size(%struct.nvdimm_dev* %51)
  store i32 %52, i32* %8, align 4
  %53 = load i32, i32* %8, align 4
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %38
  %56 = load %struct.nvdimm_dev*, %struct.nvdimm_dev** %4, align 8
  %57 = call i32 @read_labels(%struct.nvdimm_dev* %56)
  br label %58

58:                                               ; preds = %55, %38
  store i32 0, i32* %2, align 4
  br label %59

59:                                               ; preds = %58, %36
  %60 = load i32, i32* %2, align 4
  ret i32 %60
}

declare dso_local %struct.nvdimm_dev* @device_get_softc(i32) #1

declare dso_local i32* @nvdimm_root_get_acpi_handle(i32) #1

declare dso_local i32 @MPASS(i32) #1

declare dso_local i32 @nvdimm_root_get_device_handle(i32) #1

declare dso_local i32 @AcpiGetTable(i32, i32, i32**) #1

declare dso_local i64 @ACPI_FAILURE(i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @acpi_nfit_get_flush_addrs(%struct.TYPE_3__*, i32, i32*, i32*) #1

declare dso_local i32 @AcpiPutTable(i32*) #1

declare dso_local i32 @read_label_area_size(%struct.nvdimm_dev*) #1

declare dso_local i32 @read_labels(%struct.nvdimm_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
