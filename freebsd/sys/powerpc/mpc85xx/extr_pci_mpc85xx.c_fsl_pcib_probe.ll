; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/mpc85xx/extr_pci_mpc85xx.c_fsl_pcib_probe.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/mpc85xx/extr_pci_mpc85xx.c_fsl_pcib_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"pci\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"fsl,mpc8540-pci\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"fsl,mpc8540-pcie\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"fsl,mpc8548-pcie\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"fsl,p5020-pcie\00", align 1
@.str.5 = private unnamed_addr constant [20 x i8] c"fsl,qoriq-pcie-v2.2\00", align 1
@.str.6 = private unnamed_addr constant [15 x i8] c"fsl,qoriq-pcie\00", align 1
@.str.7 = private unnamed_addr constant [42 x i8] c"Freescale Integrated PCI/PCI-E Controller\00", align 1
@BUS_PROBE_DEFAULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @fsl_pcib_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fsl_pcib_probe(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  %5 = call i32* @ofw_bus_get_type(i32 %4)
  %6 = icmp eq i32* %5, null
  br i1 %6, label %12, label %7

7:                                                ; preds = %1
  %8 = load i32, i32* %3, align 4
  %9 = call i32* @ofw_bus_get_type(i32 %8)
  %10 = call i64 @strcmp(i32* %9, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %7, %1
  %13 = load i32, i32* @ENXIO, align 4
  store i32 %13, i32* %2, align 4
  br label %44

14:                                               ; preds = %7
  %15 = load i32, i32* %3, align 4
  %16 = call i64 @ofw_bus_is_compatible(i32 %15, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %40, label %18

18:                                               ; preds = %14
  %19 = load i32, i32* %3, align 4
  %20 = call i64 @ofw_bus_is_compatible(i32 %19, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %40, label %22

22:                                               ; preds = %18
  %23 = load i32, i32* %3, align 4
  %24 = call i64 @ofw_bus_is_compatible(i32 %23, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0))
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %40, label %26

26:                                               ; preds = %22
  %27 = load i32, i32* %3, align 4
  %28 = call i64 @ofw_bus_is_compatible(i32 %27, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0))
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %40, label %30

30:                                               ; preds = %26
  %31 = load i32, i32* %3, align 4
  %32 = call i64 @ofw_bus_is_compatible(i32 %31, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0))
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %40, label %34

34:                                               ; preds = %30
  %35 = load i32, i32* %3, align 4
  %36 = call i64 @ofw_bus_is_compatible(i32 %35, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0))
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %40, label %38

38:                                               ; preds = %34
  %39 = load i32, i32* @ENXIO, align 4
  store i32 %39, i32* %2, align 4
  br label %44

40:                                               ; preds = %34, %30, %26, %22, %18, %14
  %41 = load i32, i32* %3, align 4
  %42 = call i32 @device_set_desc(i32 %41, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.7, i64 0, i64 0))
  %43 = load i32, i32* @BUS_PROBE_DEFAULT, align 4
  store i32 %43, i32* %2, align 4
  br label %44

44:                                               ; preds = %40, %38, %12
  %45 = load i32, i32* %2, align 4
  ret i32 %45
}

declare dso_local i32* @ofw_bus_get_type(i32) #1

declare dso_local i64 @strcmp(i32*, i8*) #1

declare dso_local i64 @ofw_bus_is_compatible(i32, i8*) #1

declare dso_local i32 @device_set_desc(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
