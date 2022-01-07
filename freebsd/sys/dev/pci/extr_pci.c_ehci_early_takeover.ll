; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/pci/extr_pci.c_ehci_early_takeover.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/pci/extr_pci.c_ehci_early_takeover.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.resource = type { i32 }

@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@RF_ACTIVE = common dso_local global i32 0, align 4
@EHCI_HCCPARAMS = common dso_local global i32 0, align 4
@EHCI_EC_LEGSUP = common dso_local global i64 0, align 8
@EHCI_LEGSUP_BIOS_SEM = common dso_local global i64 0, align 8
@bootverbose = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [46 x i8] c"ehci early: SMM active, request owner change\0A\00", align 1
@EHCI_LEGSUP_OS_SEM = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [34 x i8] c"ehci early: SMM does not respond\0A\00", align 1
@EHCI_CAPLEN_HCIVERSION = common dso_local global i32 0, align 4
@EHCI_USBINTR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @ehci_early_takeover to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ehci_early_takeover(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.resource*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %11 = call i32 @PCIR_BAR(i32 0)
  store i32 %11, i32* %9, align 4
  %12 = load i32, i32* %2, align 4
  %13 = load i32, i32* @SYS_RES_MEMORY, align 4
  %14 = load i32, i32* @RF_ACTIVE, align 4
  %15 = call %struct.resource* @bus_alloc_resource_any(i32 %12, i32 %13, i32* %9, i32 %14)
  store %struct.resource* %15, %struct.resource** %3, align 8
  %16 = load %struct.resource*, %struct.resource** %3, align 8
  %17 = icmp eq %struct.resource* %16, null
  br i1 %17, label %18, label %19

18:                                               ; preds = %1
  br label %105

19:                                               ; preds = %1
  %20 = load %struct.resource*, %struct.resource** %3, align 8
  %21 = load i32, i32* @EHCI_HCCPARAMS, align 4
  %22 = call i8* @bus_read_4(%struct.resource* %20, i32 %21)
  store i8* %22, i8** %4, align 8
  %23 = load i8*, i8** %4, align 8
  %24 = call i64 @EHCI_HCC_EECP(i8* %23)
  store i64 %24, i64* %6, align 8
  br label %25

25:                                               ; preds = %96, %19
  %26 = load i64, i64* %6, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %99

28:                                               ; preds = %25
  %29 = load i32, i32* %2, align 4
  %30 = load i64, i64* %6, align 8
  %31 = call i8* @pci_read_config(i32 %29, i64 %30, i32 4)
  store i8* %31, i8** %5, align 8
  %32 = load i8*, i8** %5, align 8
  %33 = call i64 @EHCI_EECP_ID(i8* %32)
  %34 = load i64, i64* @EHCI_EC_LEGSUP, align 8
  %35 = icmp ne i64 %33, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %28
  br label %96

37:                                               ; preds = %28
  %38 = load i32, i32* %2, align 4
  %39 = load i64, i64* %6, align 8
  %40 = load i64, i64* @EHCI_LEGSUP_BIOS_SEM, align 8
  %41 = add nsw i64 %39, %40
  %42 = call i8* @pci_read_config(i32 %38, i64 %41, i32 1)
  %43 = ptrtoint i8* %42 to i64
  store i64 %43, i64* %7, align 8
  %44 = load i64, i64* %7, align 8
  %45 = icmp eq i64 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %37
  br label %96

47:                                               ; preds = %37
  %48 = load i64, i64* @bootverbose, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %47
  %51 = call i32 @printf(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0))
  br label %52

52:                                               ; preds = %50, %47
  %53 = load i32, i32* %2, align 4
  %54 = load i64, i64* %6, align 8
  %55 = load i64, i64* @EHCI_LEGSUP_OS_SEM, align 8
  %56 = add nsw i64 %54, %55
  %57 = call i32 @pci_write_config(i32 %53, i64 %56, i32 1, i32 1)
  store i32 0, i32* %10, align 4
  br label %58

58:                                               ; preds = %74, %52
  %59 = load i32, i32* %10, align 4
  %60 = icmp slt i32 %59, 100
  br i1 %60, label %61, label %64

61:                                               ; preds = %58
  %62 = load i64, i64* %7, align 8
  %63 = icmp ne i64 %62, 0
  br label %64

64:                                               ; preds = %61, %58
  %65 = phi i1 [ false, %58 ], [ %63, %61 ]
  br i1 %65, label %66, label %77

66:                                               ; preds = %64
  %67 = call i32 @DELAY(i32 1000)
  %68 = load i32, i32* %2, align 4
  %69 = load i64, i64* %6, align 8
  %70 = load i64, i64* @EHCI_LEGSUP_BIOS_SEM, align 8
  %71 = add nsw i64 %69, %70
  %72 = call i8* @pci_read_config(i32 %68, i64 %71, i32 1)
  %73 = ptrtoint i8* %72 to i64
  store i64 %73, i64* %7, align 8
  br label %74

74:                                               ; preds = %66
  %75 = load i32, i32* %10, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %10, align 4
  br label %58

77:                                               ; preds = %64
  %78 = load i64, i64* %7, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %86

80:                                               ; preds = %77
  %81 = load i64, i64* @bootverbose, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %85

83:                                               ; preds = %80
  %84 = call i32 @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  br label %85

85:                                               ; preds = %83, %80
  br label %86

86:                                               ; preds = %85, %77
  %87 = load %struct.resource*, %struct.resource** %3, align 8
  %88 = load i32, i32* @EHCI_CAPLEN_HCIVERSION, align 4
  %89 = call i8* @bus_read_4(%struct.resource* %87, i32 %88)
  %90 = call i64 @EHCI_CAPLENGTH(i8* %89)
  store i64 %90, i64* %8, align 8
  %91 = load %struct.resource*, %struct.resource** %3, align 8
  %92 = load i64, i64* %8, align 8
  %93 = load i64, i64* @EHCI_USBINTR, align 8
  %94 = add nsw i64 %92, %93
  %95 = call i32 @bus_write_4(%struct.resource* %91, i64 %94, i32 0)
  br label %96

96:                                               ; preds = %86, %46, %36
  %97 = load i8*, i8** %5, align 8
  %98 = call i64 @EHCI_EECP_NEXT(i8* %97)
  store i64 %98, i64* %6, align 8
  br label %25

99:                                               ; preds = %25
  %100 = load i32, i32* %2, align 4
  %101 = load i32, i32* @SYS_RES_MEMORY, align 4
  %102 = load i32, i32* %9, align 4
  %103 = load %struct.resource*, %struct.resource** %3, align 8
  %104 = call i32 @bus_release_resource(i32 %100, i32 %101, i32 %102, %struct.resource* %103)
  br label %105

105:                                              ; preds = %99, %18
  ret void
}

declare dso_local i32 @PCIR_BAR(i32) #1

declare dso_local %struct.resource* @bus_alloc_resource_any(i32, i32, i32*, i32) #1

declare dso_local i8* @bus_read_4(%struct.resource*, i32) #1

declare dso_local i64 @EHCI_HCC_EECP(i8*) #1

declare dso_local i8* @pci_read_config(i32, i64, i32) #1

declare dso_local i64 @EHCI_EECP_ID(i8*) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @pci_write_config(i32, i64, i32, i32) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i64 @EHCI_CAPLENGTH(i8*) #1

declare dso_local i32 @bus_write_4(%struct.resource*, i64, i32) #1

declare dso_local i64 @EHCI_EECP_NEXT(i8*) #1

declare dso_local i32 @bus_release_resource(i32, i32, i32, %struct.resource*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
