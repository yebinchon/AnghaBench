; ModuleID = '/home/carl/AnghaBench/freebsd/sys/x86/x86/extr_io_apic.c_ioapic_pci_probe.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/x86/x86/extr_io_apic.c_ioapic_pci_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PCIC_BASEPERIPH = common dso_local global i64 0, align 8
@PCIS_BASEPERIPH_PIC = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [8 x i8] c"IO APIC\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"IO(x) APIC\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @ioapic_pci_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ioapic_pci_probe(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  %5 = call i64 @pci_get_class(i32 %4)
  %6 = load i64, i64* @PCIC_BASEPERIPH, align 8
  %7 = icmp eq i64 %5, %6
  br i1 %7, label %8, label %27

8:                                                ; preds = %1
  %9 = load i32, i32* %3, align 4
  %10 = call i64 @pci_get_subclass(i32 %9)
  %11 = load i64, i64* @PCIS_BASEPERIPH_PIC, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %27

13:                                               ; preds = %8
  %14 = load i32, i32* %3, align 4
  %15 = call i32 @pci_get_progif(i32 %14)
  switch i32 %15, label %22 [
    i32 128, label %16
    i32 129, label %19
  ]

16:                                               ; preds = %13
  %17 = load i32, i32* %3, align 4
  %18 = call i32 @device_set_desc(i32 %17, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  br label %24

19:                                               ; preds = %13
  %20 = load i32, i32* %3, align 4
  %21 = call i32 @device_set_desc(i32 %20, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  br label %24

22:                                               ; preds = %13
  %23 = load i32, i32* @ENXIO, align 4
  store i32 %23, i32* %2, align 4
  br label %29

24:                                               ; preds = %19, %16
  %25 = load i32, i32* %3, align 4
  %26 = call i32 @device_quiet(i32 %25)
  store i32 -10000, i32* %2, align 4
  br label %29

27:                                               ; preds = %8, %1
  %28 = load i32, i32* @ENXIO, align 4
  store i32 %28, i32* %2, align 4
  br label %29

29:                                               ; preds = %27, %24, %22
  %30 = load i32, i32* %2, align 4
  ret i32 %30
}

declare dso_local i64 @pci_get_class(i32) #1

declare dso_local i64 @pci_get_subclass(i32) #1

declare dso_local i32 @pci_get_progif(i32) #1

declare dso_local i32 @device_set_desc(i32, i8*) #1

declare dso_local i32 @device_quiet(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
