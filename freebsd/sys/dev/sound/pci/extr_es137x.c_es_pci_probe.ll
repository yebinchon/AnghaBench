; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_es137x.c_es_pci_probe.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_es137x.c_es_pci_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [16 x i8] c"AudioPCI ES1370\00", align 1
@BUS_PROBE_DEFAULT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"AudioPCI ES1371-A\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"AudioPCI ES1371-B\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"AudioPCI ES1373-A\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"AudioPCI ES1373-B\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"AudioPCI ES1373-8\00", align 1
@.str.6 = private unnamed_addr constant [18 x i8] c"Creative CT5880-A\00", align 1
@.str.7 = private unnamed_addr constant [18 x i8] c"AudioPCI ES1371-?\00", align 1
@.str.8 = private unnamed_addr constant [72 x i8] c"unknown revision %d -- please report to freebsd-multimedia@freebsd.org\0A\00", align 1
@.str.9 = private unnamed_addr constant [37 x i8] c"Strange AudioPCI ES1371-? (vid=3274)\00", align 1
@.str.10 = private unnamed_addr constant [35 x i8] c"Creative SB AudioPCI CT4730/EV1938\00", align 1
@.str.11 = private unnamed_addr constant [30 x i8] c"Creative SB AudioPCI CT4730-?\00", align 1
@.str.12 = private unnamed_addr constant [18 x i8] c"Creative CT5880-C\00", align 1
@.str.13 = private unnamed_addr constant [18 x i8] c"Creative CT5880-D\00", align 1
@.str.14 = private unnamed_addr constant [18 x i8] c"Creative CT5880-E\00", align 1
@.str.15 = private unnamed_addr constant [18 x i8] c"Creative CT5880-?\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @es_pci_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @es_pci_probe(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  %5 = call i32 @pci_get_devid(i32 %4)
  switch i32 %5, label %91 [
    i32 136, label %6
    i32 129, label %10
    i32 128, label %45
    i32 141, label %53
    i32 137, label %68
  ]

6:                                                ; preds = %1
  %7 = load i32, i32* %3, align 4
  %8 = call i32 @device_set_desc(i32 %7, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %9 = load i32, i32* @BUS_PROBE_DEFAULT, align 4
  store i32 %9, i32* %2, align 4
  br label %93

10:                                               ; preds = %1
  %11 = load i32, i32* %3, align 4
  %12 = call i32 @pci_get_revid(i32 %11)
  switch i32 %12, label %37 [
    i32 134, label %13
    i32 133, label %17
    i32 131, label %21
    i32 130, label %25
    i32 132, label %29
    i32 135, label %33
  ]

13:                                               ; preds = %10
  %14 = load i32, i32* %3, align 4
  %15 = call i32 @device_set_desc(i32 %14, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  %16 = load i32, i32* @BUS_PROBE_DEFAULT, align 4
  store i32 %16, i32* %2, align 4
  br label %93

17:                                               ; preds = %10
  %18 = load i32, i32* %3, align 4
  %19 = call i32 @device_set_desc(i32 %18, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  %20 = load i32, i32* @BUS_PROBE_DEFAULT, align 4
  store i32 %20, i32* %2, align 4
  br label %93

21:                                               ; preds = %10
  %22 = load i32, i32* %3, align 4
  %23 = call i32 @device_set_desc(i32 %22, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0))
  %24 = load i32, i32* @BUS_PROBE_DEFAULT, align 4
  store i32 %24, i32* %2, align 4
  br label %93

25:                                               ; preds = %10
  %26 = load i32, i32* %3, align 4
  %27 = call i32 @device_set_desc(i32 %26, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0))
  %28 = load i32, i32* @BUS_PROBE_DEFAULT, align 4
  store i32 %28, i32* %2, align 4
  br label %93

29:                                               ; preds = %10
  %30 = load i32, i32* %3, align 4
  %31 = call i32 @device_set_desc(i32 %30, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0))
  %32 = load i32, i32* @BUS_PROBE_DEFAULT, align 4
  store i32 %32, i32* %2, align 4
  br label %93

33:                                               ; preds = %10
  %34 = load i32, i32* %3, align 4
  %35 = call i32 @device_set_desc(i32 %34, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i64 0, i64 0))
  %36 = load i32, i32* @BUS_PROBE_DEFAULT, align 4
  store i32 %36, i32* %2, align 4
  br label %93

37:                                               ; preds = %10
  %38 = load i32, i32* %3, align 4
  %39 = call i32 @device_set_desc(i32 %38, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.7, i64 0, i64 0))
  %40 = load i32, i32* %3, align 4
  %41 = load i32, i32* %3, align 4
  %42 = call i32 @pci_get_revid(i32 %41)
  %43 = call i32 @device_printf(i32 %40, i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.8, i64 0, i64 0), i32 %42)
  %44 = load i32, i32* @BUS_PROBE_DEFAULT, align 4
  store i32 %44, i32* %2, align 4
  br label %93

45:                                               ; preds = %1
  %46 = load i32, i32* %3, align 4
  %47 = call i32 @device_set_desc(i32 %46, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.9, i64 0, i64 0))
  %48 = load i32, i32* %3, align 4
  %49 = load i32, i32* %3, align 4
  %50 = call i32 @pci_get_revid(i32 %49)
  %51 = call i32 @device_printf(i32 %48, i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.8, i64 0, i64 0), i32 %50)
  %52 = load i32, i32* @BUS_PROBE_DEFAULT, align 4
  store i32 %52, i32* %2, align 4
  br label %93

53:                                               ; preds = %1
  %54 = load i32, i32* %3, align 4
  %55 = call i32 @pci_get_revid(i32 %54)
  switch i32 %55, label %60 [
    i32 142, label %56
  ]

56:                                               ; preds = %53
  %57 = load i32, i32* %3, align 4
  %58 = call i32 @device_set_desc(i32 %57, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.10, i64 0, i64 0))
  %59 = load i32, i32* @BUS_PROBE_DEFAULT, align 4
  store i32 %59, i32* %2, align 4
  br label %93

60:                                               ; preds = %53
  %61 = load i32, i32* %3, align 4
  %62 = call i32 @device_set_desc(i32 %61, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.11, i64 0, i64 0))
  %63 = load i32, i32* %3, align 4
  %64 = load i32, i32* %3, align 4
  %65 = call i32 @pci_get_revid(i32 %64)
  %66 = call i32 @device_printf(i32 %63, i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.8, i64 0, i64 0), i32 %65)
  %67 = load i32, i32* @BUS_PROBE_DEFAULT, align 4
  store i32 %67, i32* %2, align 4
  br label %93

68:                                               ; preds = %1
  %69 = load i32, i32* %3, align 4
  %70 = call i32 @pci_get_revid(i32 %69)
  switch i32 %70, label %83 [
    i32 140, label %71
    i32 139, label %75
    i32 138, label %79
  ]

71:                                               ; preds = %68
  %72 = load i32, i32* %3, align 4
  %73 = call i32 @device_set_desc(i32 %72, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.12, i64 0, i64 0))
  %74 = load i32, i32* @BUS_PROBE_DEFAULT, align 4
  store i32 %74, i32* %2, align 4
  br label %93

75:                                               ; preds = %68
  %76 = load i32, i32* %3, align 4
  %77 = call i32 @device_set_desc(i32 %76, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.13, i64 0, i64 0))
  %78 = load i32, i32* @BUS_PROBE_DEFAULT, align 4
  store i32 %78, i32* %2, align 4
  br label %93

79:                                               ; preds = %68
  %80 = load i32, i32* %3, align 4
  %81 = call i32 @device_set_desc(i32 %80, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.14, i64 0, i64 0))
  %82 = load i32, i32* @BUS_PROBE_DEFAULT, align 4
  store i32 %82, i32* %2, align 4
  br label %93

83:                                               ; preds = %68
  %84 = load i32, i32* %3, align 4
  %85 = call i32 @device_set_desc(i32 %84, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.15, i64 0, i64 0))
  %86 = load i32, i32* %3, align 4
  %87 = load i32, i32* %3, align 4
  %88 = call i32 @pci_get_revid(i32 %87)
  %89 = call i32 @device_printf(i32 %86, i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.8, i64 0, i64 0), i32 %88)
  %90 = load i32, i32* @BUS_PROBE_DEFAULT, align 4
  store i32 %90, i32* %2, align 4
  br label %93

91:                                               ; preds = %1
  %92 = load i32, i32* @ENXIO, align 4
  store i32 %92, i32* %2, align 4
  br label %93

93:                                               ; preds = %91, %83, %79, %75, %71, %60, %56, %45, %37, %33, %29, %25, %21, %17, %13, %6
  %94 = load i32, i32* %2, align 4
  ret i32 %94
}

declare dso_local i32 @pci_get_devid(i32) #1

declare dso_local i32 @device_set_desc(i32, i8*) #1

declare dso_local i32 @pci_get_revid(i32) #1

declare dso_local i32 @device_printf(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
