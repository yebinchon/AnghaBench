; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/fdc/extr_fdc_acpi.c_fdc_acpi_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/fdc/extr_fdc_acpi.c_fdc_acpi_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fdc_data = type { i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__*, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }

@ENXIO = common dso_local global i32 0, align 4
@ACPI_FDC_BUFLEN = common dso_local global i32 0, align 4
@M_TEMP = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"_FDE\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @fdc_acpi_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fdc_acpi_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.fdc_data*, align 8
  %4 = alloca %struct.TYPE_9__, align 8
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %8 = load i32, i32* %2, align 4
  %9 = call %struct.fdc_data* @device_get_softc(i32 %8)
  store %struct.fdc_data* %9, %struct.fdc_data** %3, align 8
  %10 = load i32, i32* %2, align 4
  %11 = load %struct.fdc_data*, %struct.fdc_data** %3, align 8
  %12 = getelementptr inbounds %struct.fdc_data, %struct.fdc_data* %11, i32 0, i32 0
  store i32 %10, i32* %12, align 4
  %13 = load i32, i32* @ENXIO, align 4
  store i32 %13, i32* %7, align 4
  %14 = load i32, i32* @ACPI_FDC_BUFLEN, align 4
  %15 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %4, i32 0, i32 1
  store i32 %14, i32* %15, align 8
  %16 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %4, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @M_TEMP, align 4
  %19 = load i32, i32* @M_NOWAIT, align 4
  %20 = load i32, i32* @M_ZERO, align 4
  %21 = or i32 %19, %20
  %22 = call %struct.TYPE_8__* @malloc(i32 %17, i32 %18, i32 %21)
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %4, i32 0, i32 0
  store %struct.TYPE_8__* %22, %struct.TYPE_8__** %23, align 8
  %24 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %4, i32 0, i32 0
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %24, align 8
  %26 = icmp eq %struct.TYPE_8__* %25, null
  br i1 %26, label %27, label %28

27:                                               ; preds = %1
  br label %62

28:                                               ; preds = %1
  %29 = load i32, i32* %2, align 4
  %30 = load %struct.fdc_data*, %struct.fdc_data** %3, align 8
  %31 = call i32 @fdc_isa_alloc_resources(i32 %29, %struct.fdc_data* %30)
  store i32 %31, i32* %7, align 4
  %32 = load i32, i32* %7, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %28
  br label %62

35:                                               ; preds = %28
  %36 = load i32, i32* %2, align 4
  %37 = call i32 @fdc_attach(i32 %36)
  store i32 %37, i32* %7, align 4
  %38 = load i32, i32* %7, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %35
  br label %62

41:                                               ; preds = %35
  %42 = load i32, i32* %2, align 4
  %43 = call i32 @device_get_parent(i32 %42)
  store i32 %43, i32* %6, align 4
  %44 = load i32, i32* %6, align 4
  %45 = load i32, i32* %2, align 4
  %46 = call i32 @ACPI_EVALUATE_OBJECT(i32 %44, i32 %45, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32* null, %struct.TYPE_9__* %4)
  %47 = call i64 @ACPI_FAILURE(i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %41
  %50 = load i32, i32* %2, align 4
  %51 = call i32 @fdc_hints_probe(i32 %50)
  store i32 %51, i32* %7, align 4
  br label %62

52:                                               ; preds = %41
  %53 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %4, i32 0, i32 0
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** %53, align 8
  store %struct.TYPE_8__* %54, %struct.TYPE_8__** %5, align 8
  %55 = load i32, i32* %6, align 4
  %56 = load i32, i32* %2, align 4
  %57 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @fdc_acpi_probe_children(i32 %55, i32 %56, i32 %60)
  store i32 %61, i32* %7, align 4
  br label %62

62:                                               ; preds = %52, %49, %40, %34, %27
  %63 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %4, i32 0, i32 0
  %64 = load %struct.TYPE_8__*, %struct.TYPE_8__** %63, align 8
  %65 = icmp ne %struct.TYPE_8__* %64, null
  br i1 %65, label %66, label %71

66:                                               ; preds = %62
  %67 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %4, i32 0, i32 0
  %68 = load %struct.TYPE_8__*, %struct.TYPE_8__** %67, align 8
  %69 = load i32, i32* @M_TEMP, align 4
  %70 = call i32 @free(%struct.TYPE_8__* %68, i32 %69)
  br label %71

71:                                               ; preds = %66, %62
  %72 = load i32, i32* %7, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %77

74:                                               ; preds = %71
  %75 = load %struct.fdc_data*, %struct.fdc_data** %3, align 8
  %76 = call i32 @fdc_release_resources(%struct.fdc_data* %75)
  br label %80

77:                                               ; preds = %71
  %78 = load i32, i32* %2, align 4
  %79 = call i32 @fdc_start_worker(i32 %78)
  br label %80

80:                                               ; preds = %77, %74
  %81 = load i32, i32* %7, align 4
  ret i32 %81
}

declare dso_local %struct.fdc_data* @device_get_softc(i32) #1

declare dso_local %struct.TYPE_8__* @malloc(i32, i32, i32) #1

declare dso_local i32 @fdc_isa_alloc_resources(i32, %struct.fdc_data*) #1

declare dso_local i32 @fdc_attach(i32) #1

declare dso_local i32 @device_get_parent(i32) #1

declare dso_local i64 @ACPI_FAILURE(i32) #1

declare dso_local i32 @ACPI_EVALUATE_OBJECT(i32, i32, i8*, i32*, %struct.TYPE_9__*) #1

declare dso_local i32 @fdc_hints_probe(i32) #1

declare dso_local i32 @fdc_acpi_probe_children(i32, i32, i32) #1

declare dso_local i32 @free(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @fdc_release_resources(%struct.fdc_data*) #1

declare dso_local i32 @fdc_start_worker(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
