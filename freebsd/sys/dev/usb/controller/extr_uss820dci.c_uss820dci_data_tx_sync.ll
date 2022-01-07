; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/controller/extr_uss820dci.c_uss820dci_data_tx_sync.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/controller/extr_uss820dci.c_uss820dci_data_tx_sync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uss820dci_softc = type { i32 }
%struct.uss820dci_td = type { i64, i32, i32 }

@USS820_EPINDEX = common dso_local global i32 0, align 4
@USS820_TXFLG = common dso_local global i32 0, align 4
@USS820_RXSTAT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"rx_stat=0x%02x rem=%u\0A\00", align 1
@USS820_RXSTAT_RXSETUP = common dso_local global i32 0, align 4
@USS820_RXSTAT_RXSOVW = common dso_local global i32 0, align 4
@USS820_RXSTAT_EDOVW = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"faking complete\0A\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"tx_flag=0x%02x rem=%u\0A\00", align 1
@USS820_TXFLG_TXOVF = common dso_local global i32 0, align 4
@USS820_TXFLG_TXURF = common dso_local global i32 0, align 4
@USS820_TXFLG_TXFIF0 = common dso_local global i32 0, align 4
@USS820_TXFLG_TXFIF1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uss820dci_softc*, %struct.uss820dci_td*)* @uss820dci_data_tx_sync to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uss820dci_data_tx_sync(%struct.uss820dci_softc* %0, %struct.uss820dci_td* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.uss820dci_softc*, align 8
  %5 = alloca %struct.uss820dci_td*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.uss820dci_softc* %0, %struct.uss820dci_softc** %4, align 8
  store %struct.uss820dci_td* %1, %struct.uss820dci_td** %5, align 8
  %8 = load %struct.uss820dci_softc*, %struct.uss820dci_softc** %4, align 8
  %9 = load i32, i32* @USS820_EPINDEX, align 4
  %10 = load %struct.uss820dci_td*, %struct.uss820dci_td** %5, align 8
  %11 = getelementptr inbounds %struct.uss820dci_td, %struct.uss820dci_td* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = call i32 @USS820_WRITE_1(%struct.uss820dci_softc* %8, i32 %9, i64 %12)
  %14 = load %struct.uss820dci_softc*, %struct.uss820dci_softc** %4, align 8
  %15 = load i32, i32* @USS820_TXFLG, align 4
  %16 = call i32 @USS820_READ_1(%struct.uss820dci_softc* %14, i32 %15)
  store i32 %16, i32* %7, align 4
  %17 = load %struct.uss820dci_td*, %struct.uss820dci_td** %5, align 8
  %18 = getelementptr inbounds %struct.uss820dci_td, %struct.uss820dci_td* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %41

21:                                               ; preds = %2
  %22 = load %struct.uss820dci_softc*, %struct.uss820dci_softc** %4, align 8
  %23 = load i32, i32* @USS820_RXSTAT, align 4
  %24 = call i32 @USS820_READ_1(%struct.uss820dci_softc* %22, i32 %23)
  store i32 %24, i32* %6, align 4
  %25 = load i32, i32* %6, align 4
  %26 = load %struct.uss820dci_td*, %struct.uss820dci_td** %5, align 8
  %27 = getelementptr inbounds %struct.uss820dci_td, %struct.uss820dci_td* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = call i32 (i32, i8*, ...) @DPRINTFN(i32 5, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %25, i32 %28)
  %30 = load i32, i32* %6, align 4
  %31 = load i32, i32* @USS820_RXSTAT_RXSETUP, align 4
  %32 = load i32, i32* @USS820_RXSTAT_RXSOVW, align 4
  %33 = or i32 %31, %32
  %34 = load i32, i32* @USS820_RXSTAT_EDOVW, align 4
  %35 = or i32 %33, %34
  %36 = and i32 %30, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %21
  %39 = call i32 (i32, i8*, ...) @DPRINTFN(i32 5, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %81

40:                                               ; preds = %21
  br label %41

41:                                               ; preds = %40, %2
  %42 = load i32, i32* %7, align 4
  %43 = load %struct.uss820dci_td*, %struct.uss820dci_td** %5, align 8
  %44 = getelementptr inbounds %struct.uss820dci_td, %struct.uss820dci_td* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  %46 = call i32 (i32, i8*, ...) @DPRINTFN(i32 5, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i32 %42, i32 %45)
  %47 = load i32, i32* %7, align 4
  %48 = load i32, i32* @USS820_TXFLG_TXOVF, align 4
  %49 = load i32, i32* @USS820_TXFLG_TXURF, align 4
  %50 = or i32 %48, %49
  %51 = and i32 %47, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %41
  %54 = load %struct.uss820dci_td*, %struct.uss820dci_td** %5, align 8
  %55 = getelementptr inbounds %struct.uss820dci_td, %struct.uss820dci_td* %54, i32 0, i32 1
  store i32 1, i32* %55, align 8
  store i32 0, i32* %3, align 4
  br label %81

56:                                               ; preds = %41
  %57 = load i32, i32* %7, align 4
  %58 = load i32, i32* @USS820_TXFLG_TXFIF0, align 4
  %59 = load i32, i32* @USS820_TXFLG_TXFIF1, align 4
  %60 = or i32 %58, %59
  %61 = and i32 %57, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %56
  store i32 1, i32* %3, align 4
  br label %81

64:                                               ; preds = %56
  %65 = load %struct.uss820dci_td*, %struct.uss820dci_td** %5, align 8
  %66 = getelementptr inbounds %struct.uss820dci_td, %struct.uss820dci_td* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = icmp eq i64 %67, 0
  br i1 %68, label %69, label %80

69:                                               ; preds = %64
  %70 = load %struct.uss820dci_softc*, %struct.uss820dci_softc** %4, align 8
  %71 = getelementptr inbounds %struct.uss820dci_softc, %struct.uss820dci_softc* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = icmp ne i32 %72, 255
  br i1 %73, label %74, label %80

74:                                               ; preds = %69
  %75 = load %struct.uss820dci_softc*, %struct.uss820dci_softc** %4, align 8
  %76 = load %struct.uss820dci_softc*, %struct.uss820dci_softc** %4, align 8
  %77 = getelementptr inbounds %struct.uss820dci_softc, %struct.uss820dci_softc* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @uss820dci_set_address(%struct.uss820dci_softc* %75, i32 %78)
  br label %80

80:                                               ; preds = %74, %69, %64
  store i32 0, i32* %3, align 4
  br label %81

81:                                               ; preds = %80, %63, %53, %38
  %82 = load i32, i32* %3, align 4
  ret i32 %82
}

declare dso_local i32 @USS820_WRITE_1(%struct.uss820dci_softc*, i32, i64) #1

declare dso_local i32 @USS820_READ_1(%struct.uss820dci_softc*, i32) #1

declare dso_local i32 @DPRINTFN(i32, i8*, ...) #1

declare dso_local i32 @uss820dci_set_address(%struct.uss820dci_softc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
