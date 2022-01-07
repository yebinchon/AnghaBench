; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_maestro.c_agg_stopclock.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_maestro.c_agg_stopclock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.agg_info = type { i32 }

@CONF_ACPI_STOPCLOCK = common dso_local global i32 0, align 4
@PCI_POWERSTATE_D1 = common dso_local global i32 0, align 4
@PCI_POWERSTATE_D2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.agg_info*, i32, i32)* @agg_stopclock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @agg_stopclock(%struct.agg_info* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.agg_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.agg_info* %0, %struct.agg_info** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load %struct.agg_info*, %struct.agg_info** %4, align 8
  %9 = getelementptr inbounds %struct.agg_info, %struct.agg_info* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @CONF_ACPI_STOPCLOCK, align 4
  %12 = call i32 @pci_read_config(i32 %10, i32 %11, i32 4)
  store i32 %12, i32* %7, align 4
  %13 = load i32, i32* %5, align 4
  %14 = icmp slt i32 %13, 16
  br i1 %14, label %15, label %56

15:                                               ; preds = %3
  %16 = load i32, i32* %6, align 4
  %17 = load i32, i32* @PCI_POWERSTATE_D1, align 4
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %19, label %25

19:                                               ; preds = %15
  %20 = load i32, i32* %5, align 4
  %21 = shl i32 1, %20
  %22 = xor i32 %21, -1
  %23 = load i32, i32* %7, align 4
  %24 = and i32 %23, %22
  store i32 %24, i32* %7, align 4
  br label %30

25:                                               ; preds = %15
  %26 = load i32, i32* %5, align 4
  %27 = shl i32 1, %26
  %28 = load i32, i32* %7, align 4
  %29 = or i32 %28, %27
  store i32 %29, i32* %7, align 4
  br label %30

30:                                               ; preds = %25, %19
  %31 = load i32, i32* %6, align 4
  %32 = load i32, i32* @PCI_POWERSTATE_D1, align 4
  %33 = icmp eq i32 %31, %32
  br i1 %33, label %38, label %34

34:                                               ; preds = %30
  %35 = load i32, i32* %6, align 4
  %36 = load i32, i32* @PCI_POWERSTATE_D2, align 4
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %38, label %43

38:                                               ; preds = %34, %30
  %39 = load i32, i32* %5, align 4
  %40 = shl i32 65536, %39
  %41 = load i32, i32* %7, align 4
  %42 = or i32 %41, %40
  store i32 %42, i32* %7, align 4
  br label %49

43:                                               ; preds = %34
  %44 = load i32, i32* %5, align 4
  %45 = shl i32 65536, %44
  %46 = xor i32 %45, -1
  %47 = load i32, i32* %7, align 4
  %48 = and i32 %47, %46
  store i32 %48, i32* %7, align 4
  br label %49

49:                                               ; preds = %43, %38
  %50 = load %struct.agg_info*, %struct.agg_info** %4, align 8
  %51 = getelementptr inbounds %struct.agg_info, %struct.agg_info* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @CONF_ACPI_STOPCLOCK, align 4
  %54 = load i32, i32* %7, align 4
  %55 = call i32 @pci_write_config(i32 %52, i32 %53, i32 %54, i32 4)
  br label %56

56:                                               ; preds = %49, %3
  ret void
}

declare dso_local i32 @pci_read_config(i32, i32, i32) #1

declare dso_local i32 @pci_write_config(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
