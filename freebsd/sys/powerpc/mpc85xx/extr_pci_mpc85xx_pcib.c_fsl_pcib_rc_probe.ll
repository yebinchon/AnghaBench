; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/mpc85xx/extr_pci_mpc85xx_pcib.c_fsl_pcib_rc_probe.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/mpc85xx/extr_pci_mpc85xx_pcib.c_fsl_pcib_rc_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ENXIO = common dso_local global i32 0, align 4
@PCIC_PROCESSOR = common dso_local global i64 0, align 8
@PCIS_PROCESSOR_POWERPC = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [28 x i8] c"MPC85xx Root Complex bridge\00", align 1
@BUS_PROBE_DEFAULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @fsl_pcib_rc_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fsl_pcib_rc_probe(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  %5 = call i32 @pci_get_vendor(i32 %4)
  %6 = icmp ne i32 %5, 6487
  br i1 %6, label %7, label %9

7:                                                ; preds = %1
  %8 = load i32, i32* @ENXIO, align 4
  store i32 %8, i32* %2, align 4
  br label %33

9:                                                ; preds = %1
  %10 = load i32, i32* %3, align 4
  %11 = call i64 @pci_get_progif(i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %9
  %14 = load i32, i32* @ENXIO, align 4
  store i32 %14, i32* %2, align 4
  br label %33

15:                                               ; preds = %9
  %16 = load i32, i32* %3, align 4
  %17 = call i64 @pci_get_class(i32 %16)
  %18 = load i64, i64* @PCIC_PROCESSOR, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %20, label %22

20:                                               ; preds = %15
  %21 = load i32, i32* @ENXIO, align 4
  store i32 %21, i32* %2, align 4
  br label %33

22:                                               ; preds = %15
  %23 = load i32, i32* %3, align 4
  %24 = call i64 @pci_get_subclass(i32 %23)
  %25 = load i64, i64* @PCIS_PROCESSOR_POWERPC, align 8
  %26 = icmp ne i64 %24, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %22
  %28 = load i32, i32* @ENXIO, align 4
  store i32 %28, i32* %2, align 4
  br label %33

29:                                               ; preds = %22
  %30 = load i32, i32* %3, align 4
  %31 = call i32 @device_set_desc(i32 %30, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %32 = load i32, i32* @BUS_PROBE_DEFAULT, align 4
  store i32 %32, i32* %2, align 4
  br label %33

33:                                               ; preds = %29, %27, %20, %13, %7
  %34 = load i32, i32* %2, align 4
  ret i32 %34
}

declare dso_local i32 @pci_get_vendor(i32) #1

declare dso_local i64 @pci_get_progif(i32) #1

declare dso_local i64 @pci_get_class(i32) #1

declare dso_local i64 @pci_get_subclass(i32) #1

declare dso_local i32 @device_set_desc(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
