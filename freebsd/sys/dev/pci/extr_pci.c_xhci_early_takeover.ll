; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/pci/extr_pci.c_xhci_early_takeover.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/pci/extr_pci.c_xhci_early_takeover.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.resource = type { i32 }

@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@RF_ACTIVE = common dso_local global i32 0, align 4
@XHCI_HCSPARAMS0 = common dso_local global i32 0, align 4
@XHCI_ID_USB_LEGACY = common dso_local global i64 0, align 8
@XHCI_XECP_BIOS_SEM = common dso_local global i64 0, align 8
@bootverbose = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [46 x i8] c"xhci early: SMM active, request owner change\0A\00", align 1
@XHCI_XECP_OS_SEM = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [34 x i8] c"xhci early: SMM does not respond\0A\00", align 1
@XHCI_CAPLENGTH = common dso_local global i64 0, align 8
@XHCI_USBCMD = common dso_local global i64 0, align 8
@XHCI_USBSTS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @xhci_early_takeover to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xhci_early_takeover(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.resource*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
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
  br label %121

19:                                               ; preds = %1
  %20 = load %struct.resource*, %struct.resource** %3, align 8
  %21 = load i32, i32* @XHCI_HCSPARAMS0, align 4
  %22 = call i32 @bus_read_4(%struct.resource* %20, i32 %21)
  store i32 %22, i32* %4, align 4
  store i32 -1, i32* %5, align 4
  %23 = load i32, i32* %4, align 4
  %24 = call i32 @XHCI_HCS0_XECP(i32 %23)
  %25 = shl i32 %24, 2
  store i32 %25, i32* %6, align 4
  br label %26

26:                                               ; preds = %109, %19
  %27 = load i32, i32* %6, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %26
  %30 = load i32, i32* %5, align 4
  %31 = call i32 @XHCI_XECP_NEXT(i32 %30)
  %32 = icmp ne i32 %31, 0
  br label %33

33:                                               ; preds = %29, %26
  %34 = phi i1 [ false, %26 ], [ %32, %29 ]
  br i1 %34, label %35, label %115

35:                                               ; preds = %33
  %36 = load %struct.resource*, %struct.resource** %3, align 8
  %37 = load i32, i32* %6, align 4
  %38 = call i32 @bus_read_4(%struct.resource* %36, i32 %37)
  store i32 %38, i32* %5, align 4
  %39 = load i32, i32* %5, align 4
  %40 = call i64 @XHCI_XECP_ID(i32 %39)
  %41 = load i64, i64* @XHCI_ID_USB_LEGACY, align 8
  %42 = icmp ne i64 %40, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %35
  br label %109

44:                                               ; preds = %35
  %45 = load %struct.resource*, %struct.resource** %3, align 8
  %46 = load i32, i32* %6, align 4
  %47 = sext i32 %46 to i64
  %48 = load i64, i64* @XHCI_XECP_BIOS_SEM, align 8
  %49 = add nsw i64 %47, %48
  %50 = call i32 @bus_read_1(%struct.resource* %45, i64 %49)
  store i32 %50, i32* %7, align 4
  %51 = load i32, i32* %7, align 4
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %44
  br label %109

54:                                               ; preds = %44
  %55 = load i64, i64* @bootverbose, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %54
  %58 = call i32 @printf(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0))
  br label %59

59:                                               ; preds = %57, %54
  %60 = load %struct.resource*, %struct.resource** %3, align 8
  %61 = load i32, i32* %6, align 4
  %62 = sext i32 %61 to i64
  %63 = load i64, i64* @XHCI_XECP_OS_SEM, align 8
  %64 = add nsw i64 %62, %63
  %65 = call i32 @bus_write_1(%struct.resource* %60, i64 %64, i32 1)
  store i32 0, i32* %10, align 4
  br label %66

66:                                               ; preds = %82, %59
  %67 = load i32, i32* %10, align 4
  %68 = icmp slt i32 %67, 5000
  br i1 %68, label %69, label %72

69:                                               ; preds = %66
  %70 = load i32, i32* %7, align 4
  %71 = icmp ne i32 %70, 0
  br label %72

72:                                               ; preds = %69, %66
  %73 = phi i1 [ false, %66 ], [ %71, %69 ]
  br i1 %73, label %74, label %85

74:                                               ; preds = %72
  %75 = call i32 @DELAY(i32 1000)
  %76 = load %struct.resource*, %struct.resource** %3, align 8
  %77 = load i32, i32* %6, align 4
  %78 = sext i32 %77 to i64
  %79 = load i64, i64* @XHCI_XECP_BIOS_SEM, align 8
  %80 = add nsw i64 %78, %79
  %81 = call i32 @bus_read_1(%struct.resource* %76, i64 %80)
  store i32 %81, i32* %7, align 4
  br label %82

82:                                               ; preds = %74
  %83 = load i32, i32* %10, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %10, align 4
  br label %66

85:                                               ; preds = %72
  %86 = load i32, i32* %7, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %94

88:                                               ; preds = %85
  %89 = load i64, i64* @bootverbose, align 8
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %93

91:                                               ; preds = %88
  %92 = call i32 @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  br label %93

93:                                               ; preds = %91, %88
  br label %94

94:                                               ; preds = %93, %85
  %95 = load %struct.resource*, %struct.resource** %3, align 8
  %96 = load i64, i64* @XHCI_CAPLENGTH, align 8
  %97 = call i32 @bus_read_1(%struct.resource* %95, i64 %96)
  store i32 %97, i32* %8, align 4
  %98 = load %struct.resource*, %struct.resource** %3, align 8
  %99 = load i32, i32* %8, align 4
  %100 = sext i32 %99 to i64
  %101 = load i64, i64* @XHCI_USBCMD, align 8
  %102 = add nsw i64 %100, %101
  %103 = call i32 @bus_write_4(%struct.resource* %98, i64 %102, i32 0)
  %104 = load %struct.resource*, %struct.resource** %3, align 8
  %105 = load i32, i32* %8, align 4
  %106 = load i32, i32* @XHCI_USBSTS, align 4
  %107 = add nsw i32 %105, %106
  %108 = call i32 @bus_read_4(%struct.resource* %104, i32 %107)
  br label %109

109:                                              ; preds = %94, %53, %43
  %110 = load i32, i32* %5, align 4
  %111 = call i32 @XHCI_XECP_NEXT(i32 %110)
  %112 = shl i32 %111, 2
  %113 = load i32, i32* %6, align 4
  %114 = add nsw i32 %113, %112
  store i32 %114, i32* %6, align 4
  br label %26

115:                                              ; preds = %33
  %116 = load i32, i32* %2, align 4
  %117 = load i32, i32* @SYS_RES_MEMORY, align 4
  %118 = load i32, i32* %9, align 4
  %119 = load %struct.resource*, %struct.resource** %3, align 8
  %120 = call i32 @bus_release_resource(i32 %116, i32 %117, i32 %118, %struct.resource* %119)
  br label %121

121:                                              ; preds = %115, %18
  ret void
}

declare dso_local i32 @PCIR_BAR(i32) #1

declare dso_local %struct.resource* @bus_alloc_resource_any(i32, i32, i32*, i32) #1

declare dso_local i32 @bus_read_4(%struct.resource*, i32) #1

declare dso_local i32 @XHCI_HCS0_XECP(i32) #1

declare dso_local i32 @XHCI_XECP_NEXT(i32) #1

declare dso_local i64 @XHCI_XECP_ID(i32) #1

declare dso_local i32 @bus_read_1(%struct.resource*, i64) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @bus_write_1(%struct.resource*, i64, i32) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @bus_write_4(%struct.resource*, i64, i32) #1

declare dso_local i32 @bus_release_resource(i32, i32, i32, %struct.resource*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
