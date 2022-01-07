; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/controller/extr_musb_otg.c_musbotg_host_ctrl_status_rx.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/controller/extr_musb_otg.c_musbotg_host_ctrl_status_rx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.musbotg_td = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.musbotg_softc = type { i32 }

@.str = private unnamed_addr constant [10 x i8] c"ep_no=%d\0A\00", align 1
@MUSB2_REG_EPINDEX = common dso_local global i32 0, align 4
@MUSB2_REG_RXTI = common dso_local global i32 0, align 4
@MUSB2_REG_RXNAKLIMIT = common dso_local global i32 0, align 4
@MAX_NAK_TO = common dso_local global i32 0, align 4
@MUSB2_REG_RXCSRH = common dso_local global i32 0, align 4
@MUSB2_MASK_CSR0H_PING_DIS = common dso_local global i32 0, align 4
@MUSB2_REG_TXCSRL = common dso_local global i32 0, align 4
@MUSB2_MASK_CSR0L_STATUSPKT = common dso_local global i32 0, align 4
@MUSB2_MASK_CSR0L_REQPKT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"IN STATUS csr=0x%02x\0A\00", align 1
@MUSB2_MASK_CSR0L_RXPKTRDY = common dso_local global i32 0, align 4
@MUSB2_MASK_CSR0L_RXPKTRDY_CLR = common dso_local global i32 0, align 4
@MUSB2_MASK_CSR0L_NAKTIMO = common dso_local global i32 0, align 4
@MUSB2_MASK_CSR0L_RXSTALL = common dso_local global i32 0, align 4
@MUSB2_MASK_CSR0L_ERROR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"error bit set, csr=0x%02x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.musbotg_td*)* @musbotg_host_ctrl_status_rx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @musbotg_host_ctrl_status_rx(%struct.musbotg_td* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.musbotg_td*, align 8
  %4 = alloca %struct.musbotg_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.musbotg_td* %0, %struct.musbotg_td** %3, align 8
  %7 = load %struct.musbotg_td*, %struct.musbotg_td** %3, align 8
  %8 = getelementptr inbounds %struct.musbotg_td, %struct.musbotg_td* %7, i32 0, i32 7
  %9 = load i32, i32* %8, align 4
  %10 = call %struct.musbotg_softc* @MUSBOTG_PC2SC(i32 %9)
  store %struct.musbotg_softc* %10, %struct.musbotg_softc** %4, align 8
  %11 = load %struct.musbotg_td*, %struct.musbotg_td** %3, align 8
  %12 = getelementptr inbounds %struct.musbotg_td, %struct.musbotg_td* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = icmp eq i32 %13, -1
  br i1 %14, label %15, label %21

15:                                               ; preds = %1
  %16 = load %struct.musbotg_softc*, %struct.musbotg_softc** %4, align 8
  %17 = load %struct.musbotg_td*, %struct.musbotg_td** %3, align 8
  %18 = call i32 @musbotg_channel_alloc(%struct.musbotg_softc* %16, %struct.musbotg_td* %17, i32 0)
  %19 = load %struct.musbotg_td*, %struct.musbotg_td** %3, align 8
  %20 = getelementptr inbounds %struct.musbotg_td, %struct.musbotg_td* %19, i32 0, i32 0
  store i32 %18, i32* %20, align 4
  br label %21

21:                                               ; preds = %15, %1
  %22 = load %struct.musbotg_td*, %struct.musbotg_td** %3, align 8
  %23 = getelementptr inbounds %struct.musbotg_td, %struct.musbotg_td* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = icmp eq i32 %24, -1
  br i1 %25, label %26, label %27

26:                                               ; preds = %21
  store i32 1, i32* %2, align 4
  br label %155

27:                                               ; preds = %21
  %28 = load %struct.musbotg_td*, %struct.musbotg_td** %3, align 8
  %29 = getelementptr inbounds %struct.musbotg_td, %struct.musbotg_td* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @DPRINTFN(i32 1, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %30)
  %32 = load %struct.musbotg_softc*, %struct.musbotg_softc** %4, align 8
  %33 = load i32, i32* @MUSB2_REG_EPINDEX, align 4
  %34 = call i32 @MUSB2_WRITE_1(%struct.musbotg_softc* %32, i32 %33, i32 0)
  %35 = load %struct.musbotg_td*, %struct.musbotg_td** %3, align 8
  %36 = getelementptr inbounds %struct.musbotg_td, %struct.musbotg_td* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %86, label %39

39:                                               ; preds = %27
  %40 = load %struct.musbotg_softc*, %struct.musbotg_softc** %4, align 8
  %41 = call i32 @MUSB2_REG_RXFADDR(i32 0)
  %42 = load %struct.musbotg_td*, %struct.musbotg_td** %3, align 8
  %43 = getelementptr inbounds %struct.musbotg_td, %struct.musbotg_td* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @MUSB2_WRITE_1(%struct.musbotg_softc* %40, i32 %41, i32 %44)
  %46 = load %struct.musbotg_softc*, %struct.musbotg_softc** %4, align 8
  %47 = call i32 @MUSB2_REG_RXHADDR(i32 0)
  %48 = load %struct.musbotg_td*, %struct.musbotg_td** %3, align 8
  %49 = getelementptr inbounds %struct.musbotg_td, %struct.musbotg_td* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @MUSB2_WRITE_1(%struct.musbotg_softc* %46, i32 %47, i32 %50)
  %52 = load %struct.musbotg_softc*, %struct.musbotg_softc** %4, align 8
  %53 = call i32 @MUSB2_REG_RXHUBPORT(i32 0)
  %54 = load %struct.musbotg_td*, %struct.musbotg_td** %3, align 8
  %55 = getelementptr inbounds %struct.musbotg_td, %struct.musbotg_td* %54, i32 0, i32 4
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @MUSB2_WRITE_1(%struct.musbotg_softc* %52, i32 %53, i32 %56)
  %58 = load %struct.musbotg_softc*, %struct.musbotg_softc** %4, align 8
  %59 = load i32, i32* @MUSB2_REG_RXTI, align 4
  %60 = load %struct.musbotg_td*, %struct.musbotg_td** %3, align 8
  %61 = getelementptr inbounds %struct.musbotg_td, %struct.musbotg_td* %60, i32 0, i32 5
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @MUSB2_WRITE_1(%struct.musbotg_softc* %58, i32 %59, i32 %62)
  %64 = load %struct.musbotg_softc*, %struct.musbotg_softc** %4, align 8
  %65 = load i32, i32* @MUSB2_REG_RXNAKLIMIT, align 4
  %66 = load i32, i32* @MAX_NAK_TO, align 4
  %67 = call i32 @MUSB2_WRITE_1(%struct.musbotg_softc* %64, i32 %65, i32 %66)
  %68 = load %struct.musbotg_td*, %struct.musbotg_td** %3, align 8
  %69 = getelementptr inbounds %struct.musbotg_td, %struct.musbotg_td* %68, i32 0, i32 1
  store i32 1, i32* %69, align 4
  %70 = load %struct.musbotg_softc*, %struct.musbotg_softc** %4, align 8
  %71 = load i32, i32* @MUSB2_REG_RXCSRH, align 4
  %72 = call i32 @MUSB2_READ_1(%struct.musbotg_softc* %70, i32 %71)
  store i32 %72, i32* %6, align 4
  %73 = load i32, i32* @MUSB2_MASK_CSR0H_PING_DIS, align 4
  %74 = load i32, i32* %6, align 4
  %75 = or i32 %74, %73
  store i32 %75, i32* %6, align 4
  %76 = load %struct.musbotg_softc*, %struct.musbotg_softc** %4, align 8
  %77 = load i32, i32* @MUSB2_REG_RXCSRH, align 4
  %78 = load i32, i32* %6, align 4
  %79 = call i32 @MUSB2_WRITE_1(%struct.musbotg_softc* %76, i32 %77, i32 %78)
  %80 = load %struct.musbotg_softc*, %struct.musbotg_softc** %4, align 8
  %81 = load i32, i32* @MUSB2_REG_TXCSRL, align 4
  %82 = load i32, i32* @MUSB2_MASK_CSR0L_STATUSPKT, align 4
  %83 = load i32, i32* @MUSB2_MASK_CSR0L_REQPKT, align 4
  %84 = or i32 %82, %83
  %85 = call i32 @MUSB2_WRITE_1(%struct.musbotg_softc* %80, i32 %81, i32 %84)
  store i32 1, i32* %2, align 4
  br label %155

86:                                               ; preds = %27
  %87 = load %struct.musbotg_softc*, %struct.musbotg_softc** %4, align 8
  %88 = load i32, i32* @MUSB2_REG_TXCSRL, align 4
  %89 = call i32 @MUSB2_READ_1(%struct.musbotg_softc* %87, i32 %88)
  store i32 %89, i32* %5, align 4
  %90 = load i32, i32* %5, align 4
  %91 = call i32 @DPRINTFN(i32 4, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 %90)
  %92 = load i32, i32* %5, align 4
  %93 = load i32, i32* @MUSB2_MASK_CSR0L_RXPKTRDY, align 4
  %94 = and i32 %92, %93
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %104

96:                                               ; preds = %86
  %97 = load %struct.musbotg_softc*, %struct.musbotg_softc** %4, align 8
  %98 = load i32, i32* @MUSB2_REG_TXCSRL, align 4
  %99 = load i32, i32* @MUSB2_MASK_CSR0L_RXPKTRDY_CLR, align 4
  %100 = call i32 @MUSB2_WRITE_1(%struct.musbotg_softc* %97, i32 %98, i32 %99)
  %101 = load %struct.musbotg_softc*, %struct.musbotg_softc** %4, align 8
  %102 = load %struct.musbotg_td*, %struct.musbotg_td** %3, align 8
  %103 = call i32 @musbotg_channel_free(%struct.musbotg_softc* %101, %struct.musbotg_td* %102)
  store i32 0, i32* %2, align 4
  br label %155

104:                                              ; preds = %86
  %105 = load i32, i32* %5, align 4
  %106 = load i32, i32* @MUSB2_MASK_CSR0L_NAKTIMO, align 4
  %107 = and i32 %105, %106
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %130

109:                                              ; preds = %104
  %110 = load i32, i32* @MUSB2_MASK_CSR0L_STATUSPKT, align 4
  %111 = load i32, i32* @MUSB2_MASK_CSR0L_REQPKT, align 4
  %112 = or i32 %110, %111
  %113 = xor i32 %112, -1
  %114 = load i32, i32* %5, align 4
  %115 = and i32 %114, %113
  store i32 %115, i32* %5, align 4
  %116 = load %struct.musbotg_softc*, %struct.musbotg_softc** %4, align 8
  %117 = load i32, i32* @MUSB2_REG_TXCSRL, align 4
  %118 = load i32, i32* %5, align 4
  %119 = call i32 @MUSB2_WRITE_1(%struct.musbotg_softc* %116, i32 %117, i32 %118)
  %120 = load i32, i32* @MUSB2_MASK_CSR0L_NAKTIMO, align 4
  %121 = xor i32 %120, -1
  %122 = load i32, i32* %5, align 4
  %123 = and i32 %122, %121
  store i32 %123, i32* %5, align 4
  %124 = load %struct.musbotg_softc*, %struct.musbotg_softc** %4, align 8
  %125 = load i32, i32* @MUSB2_REG_TXCSRL, align 4
  %126 = load i32, i32* %5, align 4
  %127 = call i32 @MUSB2_WRITE_1(%struct.musbotg_softc* %124, i32 %125, i32 %126)
  %128 = load %struct.musbotg_td*, %struct.musbotg_td** %3, align 8
  %129 = getelementptr inbounds %struct.musbotg_td, %struct.musbotg_td* %128, i32 0, i32 6
  store i32 1, i32* %129, align 4
  br label %130

130:                                              ; preds = %109, %104
  %131 = load i32, i32* %5, align 4
  %132 = load i32, i32* @MUSB2_MASK_CSR0L_RXSTALL, align 4
  %133 = load i32, i32* @MUSB2_MASK_CSR0L_ERROR, align 4
  %134 = or i32 %132, %133
  %135 = and i32 %131, %134
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %145

137:                                              ; preds = %130
  %138 = load %struct.musbotg_softc*, %struct.musbotg_softc** %4, align 8
  %139 = load i32, i32* @MUSB2_REG_TXCSRL, align 4
  %140 = call i32 @MUSB2_WRITE_1(%struct.musbotg_softc* %138, i32 %139, i32 0)
  %141 = load i32, i32* %5, align 4
  %142 = call i32 @DPRINTFN(i32 1, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i32 %141)
  %143 = load %struct.musbotg_td*, %struct.musbotg_td** %3, align 8
  %144 = getelementptr inbounds %struct.musbotg_td, %struct.musbotg_td* %143, i32 0, i32 6
  store i32 1, i32* %144, align 4
  br label %145

145:                                              ; preds = %137, %130
  %146 = load %struct.musbotg_td*, %struct.musbotg_td** %3, align 8
  %147 = getelementptr inbounds %struct.musbotg_td, %struct.musbotg_td* %146, i32 0, i32 6
  %148 = load i32, i32* %147, align 4
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %154

150:                                              ; preds = %145
  %151 = load %struct.musbotg_softc*, %struct.musbotg_softc** %4, align 8
  %152 = load %struct.musbotg_td*, %struct.musbotg_td** %3, align 8
  %153 = call i32 @musbotg_channel_free(%struct.musbotg_softc* %151, %struct.musbotg_td* %152)
  store i32 0, i32* %2, align 4
  br label %155

154:                                              ; preds = %145
  store i32 1, i32* %2, align 4
  br label %155

155:                                              ; preds = %154, %150, %96, %39, %26
  %156 = load i32, i32* %2, align 4
  ret i32 %156
}

declare dso_local %struct.musbotg_softc* @MUSBOTG_PC2SC(i32) #1

declare dso_local i32 @musbotg_channel_alloc(%struct.musbotg_softc*, %struct.musbotg_td*, i32) #1

declare dso_local i32 @DPRINTFN(i32, i8*, i32) #1

declare dso_local i32 @MUSB2_WRITE_1(%struct.musbotg_softc*, i32, i32) #1

declare dso_local i32 @MUSB2_REG_RXFADDR(i32) #1

declare dso_local i32 @MUSB2_REG_RXHADDR(i32) #1

declare dso_local i32 @MUSB2_REG_RXHUBPORT(i32) #1

declare dso_local i32 @MUSB2_READ_1(%struct.musbotg_softc*, i32) #1

declare dso_local i32 @musbotg_channel_free(%struct.musbotg_softc*, %struct.musbotg_td*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
