; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/pci/extr_pci.c_ohci_early_takeover.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/pci/extr_pci.c_ohci_early_takeover.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.resource = type { i32 }

@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@RF_ACTIVE = common dso_local global i32 0, align 4
@OHCI_CONTROL = common dso_local global i32 0, align 4
@OHCI_IR = common dso_local global i32 0, align 4
@bootverbose = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [46 x i8] c"ohci early: SMM active, request owner change\0A\00", align 1
@OHCI_COMMAND_STATUS = common dso_local global i32 0, align 4
@OHCI_OCR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [45 x i8] c"ohci early: SMM does not respond, resetting\0A\00", align 1
@OHCI_HCFS_RESET = common dso_local global i32 0, align 4
@OHCI_INTERRUPT_DISABLE = common dso_local global i32 0, align 4
@OHCI_ALL_INTRS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @ohci_early_takeover to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ohci_early_takeover(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.resource*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %7 = call i32 @PCIR_BAR(i32 0)
  store i32 %7, i32* %5, align 4
  %8 = load i32, i32* %2, align 4
  %9 = load i32, i32* @SYS_RES_MEMORY, align 4
  %10 = load i32, i32* @RF_ACTIVE, align 4
  %11 = call %struct.resource* @bus_alloc_resource_any(i32 %8, i32 %9, i32* %5, i32 %10)
  store %struct.resource* %11, %struct.resource** %3, align 8
  %12 = load %struct.resource*, %struct.resource** %3, align 8
  %13 = icmp eq %struct.resource* %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  br label %77

15:                                               ; preds = %1
  %16 = load %struct.resource*, %struct.resource** %3, align 8
  %17 = load i32, i32* @OHCI_CONTROL, align 4
  %18 = call i32 @bus_read_4(%struct.resource* %16, i32 %17)
  store i32 %18, i32* %4, align 4
  %19 = load i32, i32* %4, align 4
  %20 = load i32, i32* @OHCI_IR, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %71

23:                                               ; preds = %15
  %24 = load i64, i64* @bootverbose, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %23
  %27 = call i32 @printf(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0))
  br label %28

28:                                               ; preds = %26, %23
  %29 = load %struct.resource*, %struct.resource** %3, align 8
  %30 = load i32, i32* @OHCI_COMMAND_STATUS, align 4
  %31 = load i32, i32* @OHCI_OCR, align 4
  %32 = call i32 @bus_write_4(%struct.resource* %29, i32 %30, i32 %31)
  store i32 0, i32* %6, align 4
  br label %33

33:                                               ; preds = %48, %28
  %34 = load i32, i32* %6, align 4
  %35 = icmp slt i32 %34, 100
  br i1 %35, label %36, label %41

36:                                               ; preds = %33
  %37 = load i32, i32* %4, align 4
  %38 = load i32, i32* @OHCI_IR, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br label %41

41:                                               ; preds = %36, %33
  %42 = phi i1 [ false, %33 ], [ %40, %36 ]
  br i1 %42, label %43, label %51

43:                                               ; preds = %41
  %44 = call i32 @DELAY(i32 1000)
  %45 = load %struct.resource*, %struct.resource** %3, align 8
  %46 = load i32, i32* @OHCI_CONTROL, align 4
  %47 = call i32 @bus_read_4(%struct.resource* %45, i32 %46)
  store i32 %47, i32* %4, align 4
  br label %48

48:                                               ; preds = %43
  %49 = load i32, i32* %6, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %6, align 4
  br label %33

51:                                               ; preds = %41
  %52 = load i32, i32* %4, align 4
  %53 = load i32, i32* @OHCI_IR, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %66

56:                                               ; preds = %51
  %57 = load i64, i64* @bootverbose, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %56
  %60 = call i32 @printf(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0))
  br label %61

61:                                               ; preds = %59, %56
  %62 = load %struct.resource*, %struct.resource** %3, align 8
  %63 = load i32, i32* @OHCI_CONTROL, align 4
  %64 = load i32, i32* @OHCI_HCFS_RESET, align 4
  %65 = call i32 @bus_write_4(%struct.resource* %62, i32 %63, i32 %64)
  br label %66

66:                                               ; preds = %61, %51
  %67 = load %struct.resource*, %struct.resource** %3, align 8
  %68 = load i32, i32* @OHCI_INTERRUPT_DISABLE, align 4
  %69 = load i32, i32* @OHCI_ALL_INTRS, align 4
  %70 = call i32 @bus_write_4(%struct.resource* %67, i32 %68, i32 %69)
  br label %71

71:                                               ; preds = %66, %15
  %72 = load i32, i32* %2, align 4
  %73 = load i32, i32* @SYS_RES_MEMORY, align 4
  %74 = load i32, i32* %5, align 4
  %75 = load %struct.resource*, %struct.resource** %3, align 8
  %76 = call i32 @bus_release_resource(i32 %72, i32 %73, i32 %74, %struct.resource* %75)
  br label %77

77:                                               ; preds = %71, %14
  ret void
}

declare dso_local i32 @PCIR_BAR(i32) #1

declare dso_local %struct.resource* @bus_alloc_resource_any(i32, i32, i32*, i32) #1

declare dso_local i32 @bus_read_4(%struct.resource*, i32) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @bus_write_4(%struct.resource*, i32, i32) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @bus_release_resource(i32, i32, i32, %struct.resource*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
