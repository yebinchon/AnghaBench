; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/extr_t4_main.c_t5_attribute_workaround.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/extr_t4_main.c_t5_attribute_workaround.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [33 x i8] c"Unable to find parent root port\0A\00", align 1
@PCIER_DEVICE_CTL = common dso_local global i32 0, align 4
@PCIEM_CTL_RELAXED_ORD_ENABLE = common dso_local global i32 0, align 4
@PCIEM_CTL_NOSNOOP_ENABLE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"Disabled No Snoop/Relaxed Ordering on %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @t5_attribute_workaround to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @t5_attribute_workaround(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  %5 = load i32*, i32** %2, align 8
  %6 = call i32* @pci_find_pcie_root_port(i32* %5)
  store i32* %6, i32** %3, align 8
  %7 = load i32*, i32** %3, align 8
  %8 = icmp eq i32* %7, null
  br i1 %8, label %9, label %12

9:                                                ; preds = %1
  %10 = load i32*, i32** %2, align 8
  %11 = call i32 (i32*, i8*, ...) @device_printf(i32* %10, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  br label %30

12:                                               ; preds = %1
  %13 = load i32*, i32** %3, align 8
  %14 = load i32, i32* @PCIER_DEVICE_CTL, align 4
  %15 = load i32, i32* @PCIEM_CTL_RELAXED_ORD_ENABLE, align 4
  %16 = load i32, i32* @PCIEM_CTL_NOSNOOP_ENABLE, align 4
  %17 = or i32 %15, %16
  %18 = call i32 @pcie_adjust_config(i32* %13, i32 %14, i32 %17, i32 0, i32 2)
  store i32 %18, i32* %4, align 4
  %19 = load i32, i32* %4, align 4
  %20 = load i32, i32* @PCIEM_CTL_RELAXED_ORD_ENABLE, align 4
  %21 = load i32, i32* @PCIEM_CTL_NOSNOOP_ENABLE, align 4
  %22 = or i32 %20, %21
  %23 = and i32 %19, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %12
  %26 = load i32*, i32** %2, align 8
  %27 = load i32*, i32** %3, align 8
  %28 = call i32 @device_get_nameunit(i32* %27)
  %29 = call i32 (i32*, i8*, ...) @device_printf(i32* %26, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i32 %28)
  br label %30

30:                                               ; preds = %9, %25, %12
  ret void
}

declare dso_local i32* @pci_find_pcie_root_port(i32*) #1

declare dso_local i32 @device_printf(i32*, i8*, ...) #1

declare dso_local i32 @pcie_adjust_config(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @device_get_nameunit(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
