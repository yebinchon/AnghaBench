; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/controller/extr_musb_otg.c_musbotg_host_ctrl_status_tx.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/controller/extr_musb_otg.c_musbotg_host_ctrl_status_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.musbotg_td = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.musbotg_softc = type { i32 }

@.str = private unnamed_addr constant [29 x i8] c"ep_no=%d/%d [%d@%d.%d/%02x]\0A\00", align 1
@MUSB2_REG_EPINDEX = common dso_local global i32 0, align 4
@MUSB2_REG_TXCSRL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [12 x i8] c"csr=0x%02x\0A\00", align 1
@MUSB2_MASK_CSR0L_TXPKTRDY = common dso_local global i32 0, align 4
@MUSB2_MASK_CSR0L_RXSTALL = common dso_local global i32 0, align 4
@MUSB2_MASK_CSR0L_ERROR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"error bit set, csr=0x%02x\0A\00", align 1
@MUSB2_REG_RXCSRH = common dso_local global i32 0, align 4
@MUSB2_MASK_CSR0H_PING_DIS = common dso_local global i32 0, align 4
@MUSB2_REG_TXTI = common dso_local global i32 0, align 4
@MUSB2_REG_TXNAKLIMIT = common dso_local global i32 0, align 4
@MAX_NAK_TO = common dso_local global i32 0, align 4
@MUSB2_MASK_CSR0L_STATUSPKT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.musbotg_td*)* @musbotg_host_ctrl_status_tx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @musbotg_host_ctrl_status_tx(%struct.musbotg_td* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.musbotg_td*, align 8
  %4 = alloca %struct.musbotg_softc*, align 8
  %5 = alloca i32, align 4
  store %struct.musbotg_td* %0, %struct.musbotg_td** %3, align 8
  %6 = load %struct.musbotg_td*, %struct.musbotg_td** %3, align 8
  %7 = getelementptr inbounds %struct.musbotg_td, %struct.musbotg_td* %6, i32 0, i32 7
  %8 = load i32, i32* %7, align 4
  %9 = call %struct.musbotg_softc* @MUSBOTG_PC2SC(i32 %8)
  store %struct.musbotg_softc* %9, %struct.musbotg_softc** %4, align 8
  %10 = load %struct.musbotg_td*, %struct.musbotg_td** %3, align 8
  %11 = getelementptr inbounds %struct.musbotg_td, %struct.musbotg_td* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = icmp eq i32 %12, -1
  br i1 %13, label %14, label %20

14:                                               ; preds = %1
  %15 = load %struct.musbotg_softc*, %struct.musbotg_softc** %4, align 8
  %16 = load %struct.musbotg_td*, %struct.musbotg_td** %3, align 8
  %17 = call i32 @musbotg_channel_alloc(%struct.musbotg_softc* %15, %struct.musbotg_td* %16, i32 1)
  %18 = load %struct.musbotg_td*, %struct.musbotg_td** %3, align 8
  %19 = getelementptr inbounds %struct.musbotg_td, %struct.musbotg_td* %18, i32 0, i32 0
  store i32 %17, i32* %19, align 4
  br label %20

20:                                               ; preds = %14, %1
  %21 = load %struct.musbotg_td*, %struct.musbotg_td** %3, align 8
  %22 = getelementptr inbounds %struct.musbotg_td, %struct.musbotg_td* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = icmp eq i32 %23, -1
  br i1 %24, label %25, label %26

25:                                               ; preds = %20
  store i32 1, i32* %2, align 4
  br label %127

26:                                               ; preds = %20
  %27 = load %struct.musbotg_td*, %struct.musbotg_td** %3, align 8
  %28 = getelementptr inbounds %struct.musbotg_td, %struct.musbotg_td* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.musbotg_td*, %struct.musbotg_td** %3, align 8
  %31 = getelementptr inbounds %struct.musbotg_td, %struct.musbotg_td* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.musbotg_td*, %struct.musbotg_td** %3, align 8
  %34 = getelementptr inbounds %struct.musbotg_td, %struct.musbotg_td* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.musbotg_td*, %struct.musbotg_td** %3, align 8
  %37 = getelementptr inbounds %struct.musbotg_td, %struct.musbotg_td* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.musbotg_td*, %struct.musbotg_td** %3, align 8
  %40 = getelementptr inbounds %struct.musbotg_td, %struct.musbotg_td* %39, i32 0, i32 4
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.musbotg_td*, %struct.musbotg_td** %3, align 8
  %43 = getelementptr inbounds %struct.musbotg_td, %struct.musbotg_td* %42, i32 0, i32 5
  %44 = load i32, i32* %43, align 4
  %45 = call i32 (i32, i8*, i32, ...) @DPRINTFN(i32 1, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %29, i32 %32, i32 %35, i32 %38, i32 %41, i32 %44)
  %46 = load %struct.musbotg_softc*, %struct.musbotg_softc** %4, align 8
  %47 = load i32, i32* @MUSB2_REG_EPINDEX, align 4
  %48 = call i32 @MUSB2_WRITE_1(%struct.musbotg_softc* %46, i32 %47, i32 0)
  %49 = load %struct.musbotg_softc*, %struct.musbotg_softc** %4, align 8
  %50 = load i32, i32* @MUSB2_REG_TXCSRL, align 4
  %51 = call i32 @MUSB2_READ_1(%struct.musbotg_softc* %49, i32 %50)
  store i32 %51, i32* %5, align 4
  %52 = load i32, i32* %5, align 4
  %53 = call i32 (i32, i8*, i32, ...) @DPRINTFN(i32 4, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 %52)
  %54 = load i32, i32* %5, align 4
  %55 = load i32, i32* @MUSB2_MASK_CSR0L_TXPKTRDY, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %26
  store i32 1, i32* %2, align 4
  br label %127

59:                                               ; preds = %26
  %60 = load i32, i32* %5, align 4
  %61 = load i32, i32* @MUSB2_MASK_CSR0L_RXSTALL, align 4
  %62 = load i32, i32* @MUSB2_MASK_CSR0L_ERROR, align 4
  %63 = or i32 %61, %62
  %64 = and i32 %60, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %77

66:                                               ; preds = %59
  %67 = load %struct.musbotg_softc*, %struct.musbotg_softc** %4, align 8
  %68 = load i32, i32* @MUSB2_REG_TXCSRL, align 4
  %69 = call i32 @MUSB2_WRITE_1(%struct.musbotg_softc* %67, i32 %68, i32 0)
  %70 = load i32, i32* %5, align 4
  %71 = call i32 (i32, i8*, i32, ...) @DPRINTFN(i32 1, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i32 %70)
  %72 = load %struct.musbotg_td*, %struct.musbotg_td** %3, align 8
  %73 = getelementptr inbounds %struct.musbotg_td, %struct.musbotg_td* %72, i32 0, i32 6
  store i32 1, i32* %73, align 4
  %74 = load %struct.musbotg_softc*, %struct.musbotg_softc** %4, align 8
  %75 = load %struct.musbotg_td*, %struct.musbotg_td** %3, align 8
  %76 = call i32 @musbotg_channel_free(%struct.musbotg_softc* %74, %struct.musbotg_td* %75)
  store i32 0, i32* %2, align 4
  br label %127

77:                                               ; preds = %59
  %78 = load %struct.musbotg_td*, %struct.musbotg_td** %3, align 8
  %79 = getelementptr inbounds %struct.musbotg_td, %struct.musbotg_td* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %86

82:                                               ; preds = %77
  %83 = load %struct.musbotg_softc*, %struct.musbotg_softc** %4, align 8
  %84 = load %struct.musbotg_td*, %struct.musbotg_td** %3, align 8
  %85 = call i32 @musbotg_channel_free(%struct.musbotg_softc* %83, %struct.musbotg_td* %84)
  store i32 0, i32* %2, align 4
  br label %127

86:                                               ; preds = %77
  %87 = load %struct.musbotg_softc*, %struct.musbotg_softc** %4, align 8
  %88 = load i32, i32* @MUSB2_REG_RXCSRH, align 4
  %89 = load i32, i32* @MUSB2_MASK_CSR0H_PING_DIS, align 4
  %90 = call i32 @MUSB2_WRITE_1(%struct.musbotg_softc* %87, i32 %88, i32 %89)
  %91 = load %struct.musbotg_softc*, %struct.musbotg_softc** %4, align 8
  %92 = call i32 @MUSB2_REG_TXFADDR(i32 0)
  %93 = load %struct.musbotg_td*, %struct.musbotg_td** %3, align 8
  %94 = getelementptr inbounds %struct.musbotg_td, %struct.musbotg_td* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @MUSB2_WRITE_1(%struct.musbotg_softc* %91, i32 %92, i32 %95)
  %97 = load %struct.musbotg_softc*, %struct.musbotg_softc** %4, align 8
  %98 = call i32 @MUSB2_REG_TXHADDR(i32 0)
  %99 = load %struct.musbotg_td*, %struct.musbotg_td** %3, align 8
  %100 = getelementptr inbounds %struct.musbotg_td, %struct.musbotg_td* %99, i32 0, i32 3
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @MUSB2_WRITE_1(%struct.musbotg_softc* %97, i32 %98, i32 %101)
  %103 = load %struct.musbotg_softc*, %struct.musbotg_softc** %4, align 8
  %104 = call i32 @MUSB2_REG_TXHUBPORT(i32 0)
  %105 = load %struct.musbotg_td*, %struct.musbotg_td** %3, align 8
  %106 = getelementptr inbounds %struct.musbotg_td, %struct.musbotg_td* %105, i32 0, i32 4
  %107 = load i32, i32* %106, align 4
  %108 = call i32 @MUSB2_WRITE_1(%struct.musbotg_softc* %103, i32 %104, i32 %107)
  %109 = load %struct.musbotg_softc*, %struct.musbotg_softc** %4, align 8
  %110 = load i32, i32* @MUSB2_REG_TXTI, align 4
  %111 = load %struct.musbotg_td*, %struct.musbotg_td** %3, align 8
  %112 = getelementptr inbounds %struct.musbotg_td, %struct.musbotg_td* %111, i32 0, i32 5
  %113 = load i32, i32* %112, align 4
  %114 = call i32 @MUSB2_WRITE_1(%struct.musbotg_softc* %109, i32 %110, i32 %113)
  %115 = load %struct.musbotg_softc*, %struct.musbotg_softc** %4, align 8
  %116 = load i32, i32* @MUSB2_REG_TXNAKLIMIT, align 4
  %117 = load i32, i32* @MAX_NAK_TO, align 4
  %118 = call i32 @MUSB2_WRITE_1(%struct.musbotg_softc* %115, i32 %116, i32 %117)
  %119 = load %struct.musbotg_td*, %struct.musbotg_td** %3, align 8
  %120 = getelementptr inbounds %struct.musbotg_td, %struct.musbotg_td* %119, i32 0, i32 1
  store i32 1, i32* %120, align 4
  %121 = load %struct.musbotg_softc*, %struct.musbotg_softc** %4, align 8
  %122 = load i32, i32* @MUSB2_REG_TXCSRL, align 4
  %123 = load i32, i32* @MUSB2_MASK_CSR0L_STATUSPKT, align 4
  %124 = load i32, i32* @MUSB2_MASK_CSR0L_TXPKTRDY, align 4
  %125 = or i32 %123, %124
  %126 = call i32 @MUSB2_WRITE_1(%struct.musbotg_softc* %121, i32 %122, i32 %125)
  store i32 1, i32* %2, align 4
  br label %127

127:                                              ; preds = %86, %82, %66, %58, %25
  %128 = load i32, i32* %2, align 4
  ret i32 %128
}

declare dso_local %struct.musbotg_softc* @MUSBOTG_PC2SC(i32) #1

declare dso_local i32 @musbotg_channel_alloc(%struct.musbotg_softc*, %struct.musbotg_td*, i32) #1

declare dso_local i32 @DPRINTFN(i32, i8*, i32, ...) #1

declare dso_local i32 @MUSB2_WRITE_1(%struct.musbotg_softc*, i32, i32) #1

declare dso_local i32 @MUSB2_READ_1(%struct.musbotg_softc*, i32) #1

declare dso_local i32 @musbotg_channel_free(%struct.musbotg_softc*, %struct.musbotg_td*) #1

declare dso_local i32 @MUSB2_REG_TXFADDR(i32) #1

declare dso_local i32 @MUSB2_REG_TXHADDR(i32) #1

declare dso_local i32 @MUSB2_REG_TXHUBPORT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
