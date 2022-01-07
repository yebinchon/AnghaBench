; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/controller/extr_musb_otg.c_musbotg_dev_ctrl_setup_rx.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/controller/extr_musb_otg.c_musbotg_dev_ctrl_setup_rx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.musbotg_td = type { i32, i32, i32, i32, i32 }
%struct.musbotg_softc = type { i32, i32, i64, i32, i32 }
%struct.usb_device_request = type { i64, i64, i32* }

@.str = private unnamed_addr constant [10 x i8] c"ep_no=%d\0A\00", align 1
@MUSB2_REG_EPINDEX = common dso_local global i32 0, align 4
@MUSB2_REG_TXCSRL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [12 x i8] c"csr=0x%02x\0A\00", align 1
@MUSB2_MASK_CSR0L_DATAEND = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [14 x i8] c"CSR0 DATAEND\0A\00", align 1
@MUSB2_MASK_CSR0L_SENTSTALL = common dso_local global i32 0, align 4
@MUSB2_MASK_CSR0L_SETUPEND = common dso_local global i32 0, align 4
@MUSB2_MASK_CSR0L_SETUPEND_CLR = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [10 x i8] c"EP0 BUSY\0A\00", align 1
@MUSB2_MASK_CSR0L_RXPKTRDY = common dso_local global i32 0, align 4
@MUSB2_REG_RXCOUNT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [39 x i8] c"Invalid SETUP packet length, %d bytes\0A\00", align 1
@MUSB2_MASK_CSR0L_RXPKTRDY_CLR = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [43 x i8] c"Unsupported SETUP packet length, %d bytes\0A\00", align 1
@UT_WRITE_DEVICE = common dso_local global i64 0, align 8
@UR_SET_ADDRESS = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [10 x i8] c"stalling\0A\00", align 1
@MUSB2_MASK_CSR0L_SENDSTALL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.musbotg_td*)* @musbotg_dev_ctrl_setup_rx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @musbotg_dev_ctrl_setup_rx(%struct.musbotg_td* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.musbotg_td*, align 8
  %4 = alloca %struct.musbotg_softc*, align 8
  %5 = alloca %struct.usb_device_request, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.musbotg_td* %0, %struct.musbotg_td** %3, align 8
  %8 = load %struct.musbotg_td*, %struct.musbotg_td** %3, align 8
  %9 = getelementptr inbounds %struct.musbotg_td, %struct.musbotg_td* %8, i32 0, i32 4
  %10 = load i32, i32* %9, align 4
  %11 = call %struct.musbotg_softc* @MUSBOTG_PC2SC(i32 %10)
  store %struct.musbotg_softc* %11, %struct.musbotg_softc** %4, align 8
  %12 = load %struct.musbotg_td*, %struct.musbotg_td** %3, align 8
  %13 = getelementptr inbounds %struct.musbotg_td, %struct.musbotg_td* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = icmp eq i32 %14, -1
  br i1 %15, label %16, label %22

16:                                               ; preds = %1
  %17 = load %struct.musbotg_softc*, %struct.musbotg_softc** %4, align 8
  %18 = load %struct.musbotg_td*, %struct.musbotg_td** %3, align 8
  %19 = call i32 @musbotg_channel_alloc(%struct.musbotg_softc* %17, %struct.musbotg_td* %18, i32 0)
  %20 = load %struct.musbotg_td*, %struct.musbotg_td** %3, align 8
  %21 = getelementptr inbounds %struct.musbotg_td, %struct.musbotg_td* %20, i32 0, i32 0
  store i32 %19, i32* %21, align 4
  br label %22

22:                                               ; preds = %16, %1
  %23 = load %struct.musbotg_td*, %struct.musbotg_td** %3, align 8
  %24 = getelementptr inbounds %struct.musbotg_td, %struct.musbotg_td* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = icmp eq i32 %25, -1
  br i1 %26, label %27, label %28

27:                                               ; preds = %22
  store i32 1, i32* %2, align 4
  br label %185

28:                                               ; preds = %22
  %29 = load %struct.musbotg_td*, %struct.musbotg_td** %3, align 8
  %30 = getelementptr inbounds %struct.musbotg_td, %struct.musbotg_td* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 (i32, i8*, ...) @DPRINTFN(i32 1, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %31)
  %33 = load %struct.musbotg_softc*, %struct.musbotg_softc** %4, align 8
  %34 = load i32, i32* @MUSB2_REG_EPINDEX, align 4
  %35 = call i32 @MUSB2_WRITE_1(%struct.musbotg_softc* %33, i32 %34, i64 0)
  %36 = load %struct.musbotg_softc*, %struct.musbotg_softc** %4, align 8
  %37 = load i32, i32* @MUSB2_REG_TXCSRL, align 4
  %38 = call i32 @MUSB2_READ_1(%struct.musbotg_softc* %36, i32 %37)
  store i32 %38, i32* %7, align 4
  %39 = load i32, i32* %7, align 4
  %40 = call i32 (i32, i8*, ...) @DPRINTFN(i32 4, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 %39)
  %41 = load i32, i32* %7, align 4
  %42 = load i32, i32* @MUSB2_MASK_CSR0L_DATAEND, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %28
  %46 = load %struct.musbotg_td*, %struct.musbotg_td** %3, align 8
  %47 = getelementptr inbounds %struct.musbotg_td, %struct.musbotg_td* %46, i32 0, i32 1
  store i32 1, i32* %47, align 4
  %48 = call i32 (i32, i8*, ...) @DPRINTFN(i32 1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0))
  br label %171

49:                                               ; preds = %28
  %50 = load i32, i32* %7, align 4
  %51 = load i32, i32* @MUSB2_MASK_CSR0L_SENTSTALL, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %63

54:                                               ; preds = %49
  %55 = load %struct.musbotg_softc*, %struct.musbotg_softc** %4, align 8
  %56 = load i32, i32* @MUSB2_REG_TXCSRL, align 4
  %57 = call i32 @MUSB2_WRITE_1(%struct.musbotg_softc* %55, i32 %56, i64 0)
  %58 = load %struct.musbotg_softc*, %struct.musbotg_softc** %4, align 8
  %59 = load i32, i32* @MUSB2_REG_TXCSRL, align 4
  %60 = call i32 @MUSB2_READ_1(%struct.musbotg_softc* %58, i32 %59)
  store i32 %60, i32* %7, align 4
  %61 = load %struct.musbotg_softc*, %struct.musbotg_softc** %4, align 8
  %62 = getelementptr inbounds %struct.musbotg_softc, %struct.musbotg_softc* %61, i32 0, i32 0
  store i32 0, i32* %62, align 8
  br label %63

63:                                               ; preds = %54, %49
  %64 = load i32, i32* %7, align 4
  %65 = load i32, i32* @MUSB2_MASK_CSR0L_SETUPEND, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %78

68:                                               ; preds = %63
  %69 = load %struct.musbotg_softc*, %struct.musbotg_softc** %4, align 8
  %70 = load i32, i32* @MUSB2_REG_TXCSRL, align 4
  %71 = load i64, i64* @MUSB2_MASK_CSR0L_SETUPEND_CLR, align 8
  %72 = call i32 @MUSB2_WRITE_1(%struct.musbotg_softc* %69, i32 %70, i64 %71)
  %73 = load %struct.musbotg_softc*, %struct.musbotg_softc** %4, align 8
  %74 = load i32, i32* @MUSB2_REG_TXCSRL, align 4
  %75 = call i32 @MUSB2_READ_1(%struct.musbotg_softc* %73, i32 %74)
  store i32 %75, i32* %7, align 4
  %76 = load %struct.musbotg_softc*, %struct.musbotg_softc** %4, align 8
  %77 = getelementptr inbounds %struct.musbotg_softc, %struct.musbotg_softc* %76, i32 0, i32 0
  store i32 0, i32* %77, align 8
  br label %78

78:                                               ; preds = %68, %63
  %79 = load %struct.musbotg_softc*, %struct.musbotg_softc** %4, align 8
  %80 = getelementptr inbounds %struct.musbotg_softc, %struct.musbotg_softc* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %85

83:                                               ; preds = %78
  %84 = call i32 (i32, i8*, ...) @DPRINTFN(i32 1, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0))
  br label %171

85:                                               ; preds = %78
  %86 = load i32, i32* %7, align 4
  %87 = load i32, i32* @MUSB2_MASK_CSR0L_RXPKTRDY, align 4
  %88 = and i32 %86, %87
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %91, label %90

90:                                               ; preds = %85
  br label %171

91:                                               ; preds = %85
  %92 = load %struct.musbotg_softc*, %struct.musbotg_softc** %4, align 8
  %93 = load i32, i32* @MUSB2_REG_RXCOUNT, align 4
  %94 = call i32 @MUSB2_READ_2(%struct.musbotg_softc* %92, i32 %93)
  store i32 %94, i32* %6, align 4
  %95 = load i32, i32* %6, align 4
  %96 = load %struct.musbotg_td*, %struct.musbotg_td** %3, align 8
  %97 = getelementptr inbounds %struct.musbotg_td, %struct.musbotg_td* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 4
  %99 = icmp ne i32 %95, %98
  br i1 %99, label %100, label %109

100:                                              ; preds = %91
  %101 = load i32, i32* %6, align 4
  %102 = call i32 (i32, i8*, ...) @DPRINTFN(i32 1, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i64 0, i64 0), i32 %101)
  %103 = load %struct.musbotg_softc*, %struct.musbotg_softc** %4, align 8
  %104 = load i32, i32* @MUSB2_REG_TXCSRL, align 4
  %105 = load i64, i64* @MUSB2_MASK_CSR0L_RXPKTRDY_CLR, align 8
  %106 = call i32 @MUSB2_WRITE_1(%struct.musbotg_softc* %103, i32 %104, i64 %105)
  %107 = load %struct.musbotg_td*, %struct.musbotg_td** %3, align 8
  %108 = getelementptr inbounds %struct.musbotg_td, %struct.musbotg_td* %107, i32 0, i32 1
  store i32 1, i32* %108, align 4
  br label %171

109:                                              ; preds = %91
  %110 = load i32, i32* %6, align 4
  %111 = sext i32 %110 to i64
  %112 = icmp ne i64 %111, 24
  br i1 %112, label %113, label %122

113:                                              ; preds = %109
  %114 = load i32, i32* %6, align 4
  %115 = call i32 (i32, i8*, ...) @DPRINTFN(i32 1, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.5, i64 0, i64 0), i32 %114)
  %116 = load %struct.musbotg_softc*, %struct.musbotg_softc** %4, align 8
  %117 = load i32, i32* @MUSB2_REG_TXCSRL, align 4
  %118 = load i64, i64* @MUSB2_MASK_CSR0L_RXPKTRDY_CLR, align 8
  %119 = call i32 @MUSB2_WRITE_1(%struct.musbotg_softc* %116, i32 %117, i64 %118)
  %120 = load %struct.musbotg_td*, %struct.musbotg_td** %3, align 8
  %121 = getelementptr inbounds %struct.musbotg_td, %struct.musbotg_td* %120, i32 0, i32 1
  store i32 1, i32* %121, align 4
  br label %171

122:                                              ; preds = %109
  %123 = load %struct.musbotg_td*, %struct.musbotg_td** %3, align 8
  %124 = getelementptr inbounds %struct.musbotg_td, %struct.musbotg_td* %123, i32 0, i32 1
  store i32 0, i32* %124, align 4
  %125 = load %struct.musbotg_softc*, %struct.musbotg_softc** %4, align 8
  %126 = getelementptr inbounds %struct.musbotg_softc, %struct.musbotg_softc* %125, i32 0, i32 4
  %127 = load i32, i32* %126, align 4
  %128 = load %struct.musbotg_softc*, %struct.musbotg_softc** %4, align 8
  %129 = getelementptr inbounds %struct.musbotg_softc, %struct.musbotg_softc* %128, i32 0, i32 3
  %130 = load i32, i32* %129, align 8
  %131 = call i32 @MUSB2_REG_EPFIFO(i32 0)
  %132 = bitcast %struct.usb_device_request* %5 to i8*
  %133 = call i32 @bus_space_read_multi_1(i32 %127, i32 %130, i32 %131, i8* %132, i32 24)
  %134 = load %struct.musbotg_td*, %struct.musbotg_td** %3, align 8
  %135 = getelementptr inbounds %struct.musbotg_td, %struct.musbotg_td* %134, i32 0, i32 4
  %136 = load i32, i32* %135, align 4
  %137 = call i32 @usbd_copy_in(i32 %136, i32 0, %struct.usb_device_request* %5, i32 24)
  %138 = load %struct.musbotg_td*, %struct.musbotg_td** %3, align 8
  %139 = getelementptr inbounds %struct.musbotg_td, %struct.musbotg_td* %138, i32 0, i32 3
  store i32 24, i32* %139, align 4
  %140 = load %struct.musbotg_td*, %struct.musbotg_td** %3, align 8
  %141 = getelementptr inbounds %struct.musbotg_td, %struct.musbotg_td* %140, i32 0, i32 2
  store i32 0, i32* %141, align 4
  %142 = load i64, i64* @MUSB2_MASK_CSR0L_RXPKTRDY_CLR, align 8
  %143 = load %struct.musbotg_softc*, %struct.musbotg_softc** %4, align 8
  %144 = getelementptr inbounds %struct.musbotg_softc, %struct.musbotg_softc* %143, i32 0, i32 2
  store i64 %142, i64* %144, align 8
  %145 = load %struct.musbotg_softc*, %struct.musbotg_softc** %4, align 8
  %146 = getelementptr inbounds %struct.musbotg_softc, %struct.musbotg_softc* %145, i32 0, i32 0
  store i32 1, i32* %146, align 8
  %147 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %5, i32 0, i32 0
  %148 = load i64, i64* %147, align 8
  %149 = load i64, i64* @UT_WRITE_DEVICE, align 8
  %150 = icmp eq i64 %148, %149
  br i1 %150, label %151, label %164

151:                                              ; preds = %122
  %152 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %5, i32 0, i32 1
  %153 = load i64, i64* %152, align 8
  %154 = load i64, i64* @UR_SET_ADDRESS, align 8
  %155 = icmp eq i64 %153, %154
  br i1 %155, label %156, label %164

156:                                              ; preds = %151
  %157 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %5, i32 0, i32 2
  %158 = load i32*, i32** %157, align 8
  %159 = getelementptr inbounds i32, i32* %158, i64 0
  %160 = load i32, i32* %159, align 4
  %161 = and i32 %160, 127
  %162 = load %struct.musbotg_softc*, %struct.musbotg_softc** %4, align 8
  %163 = getelementptr inbounds %struct.musbotg_softc, %struct.musbotg_softc* %162, i32 0, i32 1
  store i32 %161, i32* %163, align 4
  br label %167

164:                                              ; preds = %151, %122
  %165 = load %struct.musbotg_softc*, %struct.musbotg_softc** %4, align 8
  %166 = getelementptr inbounds %struct.musbotg_softc, %struct.musbotg_softc* %165, i32 0, i32 1
  store i32 255, i32* %166, align 4
  br label %167

167:                                              ; preds = %164, %156
  %168 = load %struct.musbotg_softc*, %struct.musbotg_softc** %4, align 8
  %169 = load %struct.musbotg_td*, %struct.musbotg_td** %3, align 8
  %170 = call i32 @musbotg_channel_free(%struct.musbotg_softc* %168, %struct.musbotg_td* %169)
  store i32 0, i32* %2, align 4
  br label %185

171:                                              ; preds = %113, %100, %90, %83, %45
  %172 = load %struct.musbotg_td*, %struct.musbotg_td** %3, align 8
  %173 = getelementptr inbounds %struct.musbotg_td, %struct.musbotg_td* %172, i32 0, i32 1
  %174 = load i32, i32* %173, align 4
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %184, label %176

176:                                              ; preds = %171
  %177 = call i32 (i32, i8*, ...) @DPRINTFN(i32 4, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0))
  %178 = load %struct.musbotg_softc*, %struct.musbotg_softc** %4, align 8
  %179 = load i32, i32* @MUSB2_REG_TXCSRL, align 4
  %180 = load i64, i64* @MUSB2_MASK_CSR0L_SENDSTALL, align 8
  %181 = call i32 @MUSB2_WRITE_1(%struct.musbotg_softc* %178, i32 %179, i64 %180)
  %182 = load %struct.musbotg_td*, %struct.musbotg_td** %3, align 8
  %183 = getelementptr inbounds %struct.musbotg_td, %struct.musbotg_td* %182, i32 0, i32 1
  store i32 1, i32* %183, align 4
  br label %184

184:                                              ; preds = %176, %171
  store i32 1, i32* %2, align 4
  br label %185

185:                                              ; preds = %184, %167, %27
  %186 = load i32, i32* %2, align 4
  ret i32 %186
}

declare dso_local %struct.musbotg_softc* @MUSBOTG_PC2SC(i32) #1

declare dso_local i32 @musbotg_channel_alloc(%struct.musbotg_softc*, %struct.musbotg_td*, i32) #1

declare dso_local i32 @DPRINTFN(i32, i8*, ...) #1

declare dso_local i32 @MUSB2_WRITE_1(%struct.musbotg_softc*, i32, i64) #1

declare dso_local i32 @MUSB2_READ_1(%struct.musbotg_softc*, i32) #1

declare dso_local i32 @MUSB2_READ_2(%struct.musbotg_softc*, i32) #1

declare dso_local i32 @bus_space_read_multi_1(i32, i32, i32, i8*, i32) #1

declare dso_local i32 @MUSB2_REG_EPFIFO(i32) #1

declare dso_local i32 @usbd_copy_in(i32, i32, %struct.usb_device_request*, i32) #1

declare dso_local i32 @musbotg_channel_free(%struct.musbotg_softc*, %struct.musbotg_td*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
