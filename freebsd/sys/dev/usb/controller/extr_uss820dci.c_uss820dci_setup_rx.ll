; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/controller/extr_uss820dci.c_uss820dci_setup_rx.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/controller/extr_uss820dci.c_uss820dci_setup_rx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uss820dci_softc = type { i32, i32, i32 }
%struct.uss820dci_td = type { i32, i32, i32, i32, i32 }
%struct.usb_device_request = type { i64, i64, i32* }

@USS820_EPINDEX = common dso_local global i32 0, align 4
@USS820_RXSTAT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"rx_stat=0x%02x rem=%u\0A\00", align 1
@USS820_RXSTAT_RXSETUP = common dso_local global i32 0, align 4
@USS820_EPCON = common dso_local global i32 0, align 4
@USS820_EPCON_TXSTL = common dso_local global i32 0, align 4
@USS820_EPCON_RXSTL = common dso_local global i32 0, align 4
@USS820_EPCON_RXIE = common dso_local global i32 0, align 4
@USS820_EPCON_TXOE = common dso_local global i32 0, align 4
@USS820_RXSTAT_EDOVW = common dso_local global i32 0, align 4
@USS820_RXCNTL = common dso_local global i32 0, align 4
@USS820_RXCNTH = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"Invalid SETUP packet length, %d bytes\0A\00", align 1
@.str.2 = private unnamed_addr constant [43 x i8] c"Unsupported SETUP packet length, %d bytes\0A\00", align 1
@USS820_RXDAT = common dso_local global i32 0, align 4
@USS820_REG_STRIDE = common dso_local global i32 0, align 4
@USS820_RXSTAT_STOVW = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [27 x i8] c"new SETUP packet received\0A\00", align 1
@USS820_RXCON = common dso_local global i32 0, align 4
@USS820_RXCON_RXFFRC = common dso_local global i32 0, align 4
@UT_WRITE_DEVICE = common dso_local global i64 0, align 8
@UR_SET_ADDRESS = common dso_local global i64 0, align 8
@USS820_TXCON = common dso_local global i32 0, align 4
@USS820_TXCON_TXCLR = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [10 x i8] c"stalling\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uss820dci_softc*, %struct.uss820dci_td*)* @uss820dci_setup_rx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uss820dci_setup_rx(%struct.uss820dci_softc* %0, %struct.uss820dci_td* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.uss820dci_softc*, align 8
  %5 = alloca %struct.uss820dci_td*, align 8
  %6 = alloca %struct.usb_device_request, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.uss820dci_softc* %0, %struct.uss820dci_softc** %4, align 8
  store %struct.uss820dci_td* %1, %struct.uss820dci_td** %5, align 8
  %10 = load %struct.uss820dci_softc*, %struct.uss820dci_softc** %4, align 8
  %11 = load i32, i32* @USS820_EPINDEX, align 4
  %12 = load %struct.uss820dci_td*, %struct.uss820dci_td** %5, align 8
  %13 = getelementptr inbounds %struct.uss820dci_td, %struct.uss820dci_td* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @USS820_WRITE_1(%struct.uss820dci_softc* %10, i32 %11, i32 %14)
  %16 = load %struct.uss820dci_softc*, %struct.uss820dci_softc** %4, align 8
  %17 = load i32, i32* @USS820_RXSTAT, align 4
  %18 = call i32 @USS820_READ_1(%struct.uss820dci_softc* %16, i32 %17)
  store i32 %18, i32* %8, align 4
  %19 = load i32, i32* %8, align 4
  %20 = load %struct.uss820dci_td*, %struct.uss820dci_td** %5, align 8
  %21 = getelementptr inbounds %struct.uss820dci_td, %struct.uss820dci_td* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = call i32 (i32, i8*, ...) @DPRINTFN(i32 5, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %19, i32 %22)
  %24 = load i32, i32* %8, align 4
  %25 = load i32, i32* @USS820_RXSTAT_RXSETUP, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %2
  br label %175

29:                                               ; preds = %2
  %30 = load %struct.uss820dci_td*, %struct.uss820dci_td** %5, align 8
  %31 = getelementptr inbounds %struct.uss820dci_td, %struct.uss820dci_td* %30, i32 0, i32 2
  store i32 0, i32* %31, align 4
  %32 = load %struct.uss820dci_softc*, %struct.uss820dci_softc** %4, align 8
  %33 = load i32, i32* @USS820_EPCON, align 4
  %34 = load i32, i32* @USS820_EPCON_TXSTL, align 4
  %35 = load i32, i32* @USS820_EPCON_RXSTL, align 4
  %36 = or i32 %34, %35
  %37 = load i32, i32* @USS820_EPCON_RXIE, align 4
  %38 = or i32 %36, %37
  %39 = load i32, i32* @USS820_EPCON_TXOE, align 4
  %40 = or i32 %38, %39
  %41 = xor i32 255, %40
  %42 = call i32 @uss820dci_update_shared_1(%struct.uss820dci_softc* %32, i32 %33, i32 %41, i32 0)
  %43 = load %struct.uss820dci_softc*, %struct.uss820dci_softc** %4, align 8
  %44 = load i32, i32* @USS820_RXSTAT, align 4
  %45 = load i32, i32* @USS820_RXSTAT_EDOVW, align 4
  %46 = xor i32 255, %45
  %47 = call i32 @uss820dci_update_shared_1(%struct.uss820dci_softc* %43, i32 %44, i32 %46, i32 0)
  %48 = load %struct.uss820dci_softc*, %struct.uss820dci_softc** %4, align 8
  %49 = load i32, i32* @USS820_RXCNTL, align 4
  %50 = call i32 @USS820_READ_1(%struct.uss820dci_softc* %48, i32 %49)
  store i32 %50, i32* %7, align 4
  %51 = load %struct.uss820dci_softc*, %struct.uss820dci_softc** %4, align 8
  %52 = load i32, i32* @USS820_RXCNTH, align 4
  %53 = call i32 @USS820_READ_1(%struct.uss820dci_softc* %51, i32 %52)
  %54 = shl i32 %53, 8
  %55 = load i32, i32* %7, align 4
  %56 = or i32 %55, %54
  store i32 %56, i32* %7, align 4
  %57 = load i32, i32* %7, align 4
  %58 = and i32 %57, 1023
  store i32 %58, i32* %7, align 4
  %59 = load i32, i32* %7, align 4
  %60 = load %struct.uss820dci_td*, %struct.uss820dci_td** %5, align 8
  %61 = getelementptr inbounds %struct.uss820dci_td, %struct.uss820dci_td* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = icmp ne i32 %59, %62
  br i1 %63, label %64, label %67

64:                                               ; preds = %29
  %65 = load i32, i32* %7, align 4
  %66 = call i32 (i32, i8*, ...) @DPRINTFN(i32 0, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %65)
  br label %164

67:                                               ; preds = %29
  %68 = load i32, i32* %7, align 4
  %69 = sext i32 %68 to i64
  %70 = icmp ne i64 %69, 24
  br i1 %70, label %71, label %74

71:                                               ; preds = %67
  %72 = load i32, i32* %7, align 4
  %73 = call i32 (i32, i8*, ...) @DPRINTFN(i32 0, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0), i32 %72)
  br label %164

74:                                               ; preds = %67
  %75 = load %struct.uss820dci_softc*, %struct.uss820dci_softc** %4, align 8
  %76 = getelementptr inbounds %struct.uss820dci_softc, %struct.uss820dci_softc* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.uss820dci_softc*, %struct.uss820dci_softc** %4, align 8
  %79 = getelementptr inbounds %struct.uss820dci_softc, %struct.uss820dci_softc* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* @USS820_RXDAT, align 4
  %82 = load i32, i32* @USS820_REG_STRIDE, align 4
  %83 = mul nsw i32 %81, %82
  %84 = bitcast %struct.usb_device_request* %6 to i8*
  %85 = call i32 @bus_space_read_multi_1(i32 %77, i32 %80, i32 %83, i8* %84, i32 24)
  %86 = load %struct.uss820dci_softc*, %struct.uss820dci_softc** %4, align 8
  %87 = load i32, i32* @USS820_RXSTAT, align 4
  %88 = call i32 @USS820_READ_1(%struct.uss820dci_softc* %86, i32 %87)
  store i32 %88, i32* %8, align 4
  %89 = load i32, i32* %8, align 4
  %90 = load i32, i32* @USS820_RXSTAT_EDOVW, align 4
  %91 = load i32, i32* @USS820_RXSTAT_STOVW, align 4
  %92 = or i32 %90, %91
  %93 = and i32 %89, %92
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %97

95:                                               ; preds = %74
  %96 = call i32 @DPRINTF(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %206

97:                                               ; preds = %74
  %98 = load %struct.uss820dci_softc*, %struct.uss820dci_softc** %4, align 8
  %99 = load i32, i32* @USS820_RXSTAT, align 4
  %100 = load i32, i32* @USS820_RXSTAT_RXSETUP, align 4
  %101 = load i32, i32* @USS820_RXSTAT_EDOVW, align 4
  %102 = or i32 %100, %101
  %103 = load i32, i32* @USS820_RXSTAT_STOVW, align 4
  %104 = or i32 %102, %103
  %105 = xor i32 255, %104
  %106 = call i32 @uss820dci_update_shared_1(%struct.uss820dci_softc* %98, i32 %99, i32 %105, i32 0)
  %107 = load %struct.uss820dci_softc*, %struct.uss820dci_softc** %4, align 8
  %108 = load i32, i32* @USS820_RXCON, align 4
  %109 = call i32 @USS820_READ_1(%struct.uss820dci_softc* %107, i32 %108)
  store i32 %109, i32* %9, align 4
  %110 = load i32, i32* @USS820_RXCON_RXFFRC, align 4
  %111 = load i32, i32* %9, align 4
  %112 = or i32 %111, %110
  store i32 %112, i32* %9, align 4
  %113 = load %struct.uss820dci_softc*, %struct.uss820dci_softc** %4, align 8
  %114 = load i32, i32* @USS820_RXCON, align 4
  %115 = load i32, i32* %9, align 4
  %116 = call i32 @USS820_WRITE_1(%struct.uss820dci_softc* %113, i32 %114, i32 %115)
  %117 = load %struct.uss820dci_td*, %struct.uss820dci_td** %5, align 8
  %118 = getelementptr inbounds %struct.uss820dci_td, %struct.uss820dci_td* %117, i32 0, i32 4
  %119 = load i32, i32* %118, align 4
  %120 = call i32 @usbd_copy_in(i32 %119, i32 0, %struct.usb_device_request* %6, i32 24)
  %121 = load %struct.uss820dci_td*, %struct.uss820dci_td** %5, align 8
  %122 = getelementptr inbounds %struct.uss820dci_td, %struct.uss820dci_td* %121, i32 0, i32 3
  store i32 24, i32* %122, align 4
  %123 = load %struct.uss820dci_td*, %struct.uss820dci_td** %5, align 8
  %124 = getelementptr inbounds %struct.uss820dci_td, %struct.uss820dci_td* %123, i32 0, i32 1
  store i32 0, i32* %124, align 4
  %125 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %6, i32 0, i32 0
  %126 = load i64, i64* %125, align 8
  %127 = load i64, i64* @UT_WRITE_DEVICE, align 8
  %128 = icmp eq i64 %126, %127
  br i1 %128, label %129, label %142

129:                                              ; preds = %97
  %130 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %6, i32 0, i32 1
  %131 = load i64, i64* %130, align 8
  %132 = load i64, i64* @UR_SET_ADDRESS, align 8
  %133 = icmp eq i64 %131, %132
  br i1 %133, label %134, label %142

134:                                              ; preds = %129
  %135 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %6, i32 0, i32 2
  %136 = load i32*, i32** %135, align 8
  %137 = getelementptr inbounds i32, i32* %136, i64 0
  %138 = load i32, i32* %137, align 4
  %139 = and i32 %138, 127
  %140 = load %struct.uss820dci_softc*, %struct.uss820dci_softc** %4, align 8
  %141 = getelementptr inbounds %struct.uss820dci_softc, %struct.uss820dci_softc* %140, i32 0, i32 0
  store i32 %139, i32* %141, align 4
  br label %145

142:                                              ; preds = %129, %97
  %143 = load %struct.uss820dci_softc*, %struct.uss820dci_softc** %4, align 8
  %144 = getelementptr inbounds %struct.uss820dci_softc, %struct.uss820dci_softc* %143, i32 0, i32 0
  store i32 255, i32* %144, align 4
  br label %145

145:                                              ; preds = %142, %134
  %146 = load %struct.uss820dci_softc*, %struct.uss820dci_softc** %4, align 8
  %147 = load i32, i32* @USS820_TXCON, align 4
  %148 = call i32 @USS820_READ_1(%struct.uss820dci_softc* %146, i32 %147)
  store i32 %148, i32* %9, align 4
  %149 = load i32, i32* @USS820_TXCON_TXCLR, align 4
  %150 = load i32, i32* %9, align 4
  %151 = or i32 %150, %149
  store i32 %151, i32* %9, align 4
  %152 = load %struct.uss820dci_softc*, %struct.uss820dci_softc** %4, align 8
  %153 = load i32, i32* @USS820_TXCON, align 4
  %154 = load i32, i32* %9, align 4
  %155 = call i32 @USS820_WRITE_1(%struct.uss820dci_softc* %152, i32 %153, i32 %154)
  %156 = load i32, i32* @USS820_TXCON_TXCLR, align 4
  %157 = xor i32 %156, -1
  %158 = load i32, i32* %9, align 4
  %159 = and i32 %158, %157
  store i32 %159, i32* %9, align 4
  %160 = load %struct.uss820dci_softc*, %struct.uss820dci_softc** %4, align 8
  %161 = load i32, i32* @USS820_TXCON, align 4
  %162 = load i32, i32* %9, align 4
  %163 = call i32 @USS820_WRITE_1(%struct.uss820dci_softc* %160, i32 %161, i32 %162)
  store i32 0, i32* %3, align 4
  br label %206

164:                                              ; preds = %71, %64
  %165 = load %struct.uss820dci_softc*, %struct.uss820dci_softc** %4, align 8
  %166 = load i32, i32* @USS820_RXCON, align 4
  %167 = call i32 @USS820_READ_1(%struct.uss820dci_softc* %165, i32 %166)
  store i32 %167, i32* %9, align 4
  %168 = load i32, i32* @USS820_RXCON_RXFFRC, align 4
  %169 = load i32, i32* %9, align 4
  %170 = or i32 %169, %168
  store i32 %170, i32* %9, align 4
  %171 = load %struct.uss820dci_softc*, %struct.uss820dci_softc** %4, align 8
  %172 = load i32, i32* @USS820_RXCON, align 4
  %173 = load i32, i32* %9, align 4
  %174 = call i32 @USS820_WRITE_1(%struct.uss820dci_softc* %171, i32 %172, i32 %173)
  br label %175

175:                                              ; preds = %164, %28
  %176 = load %struct.uss820dci_td*, %struct.uss820dci_td** %5, align 8
  %177 = getelementptr inbounds %struct.uss820dci_td, %struct.uss820dci_td* %176, i32 0, i32 2
  %178 = load i32, i32* %177, align 4
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %190, label %180

180:                                              ; preds = %175
  %181 = call i32 (i32, i8*, ...) @DPRINTFN(i32 5, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0))
  %182 = load %struct.uss820dci_softc*, %struct.uss820dci_softc** %4, align 8
  %183 = load i32, i32* @USS820_EPCON, align 4
  %184 = load i32, i32* @USS820_EPCON_TXSTL, align 4
  %185 = load i32, i32* @USS820_EPCON_RXSTL, align 4
  %186 = or i32 %184, %185
  %187 = call i32 @uss820dci_update_shared_1(%struct.uss820dci_softc* %182, i32 %183, i32 255, i32 %186)
  %188 = load %struct.uss820dci_td*, %struct.uss820dci_td** %5, align 8
  %189 = getelementptr inbounds %struct.uss820dci_td, %struct.uss820dci_td* %188, i32 0, i32 2
  store i32 1, i32* %189, align 4
  br label %190

190:                                              ; preds = %180, %175
  %191 = load i32, i32* %8, align 4
  %192 = load i32, i32* @USS820_RXSTAT_RXSETUP, align 4
  %193 = and i32 %191, %192
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %195, label %205

195:                                              ; preds = %190
  %196 = load %struct.uss820dci_softc*, %struct.uss820dci_softc** %4, align 8
  %197 = load i32, i32* @USS820_RXSTAT, align 4
  %198 = load i32, i32* @USS820_RXSTAT_EDOVW, align 4
  %199 = load i32, i32* @USS820_RXSTAT_STOVW, align 4
  %200 = or i32 %198, %199
  %201 = load i32, i32* @USS820_RXSTAT_RXSETUP, align 4
  %202 = or i32 %200, %201
  %203 = xor i32 255, %202
  %204 = call i32 @uss820dci_update_shared_1(%struct.uss820dci_softc* %196, i32 %197, i32 %203, i32 0)
  br label %205

205:                                              ; preds = %195, %190
  store i32 1, i32* %3, align 4
  br label %206

206:                                              ; preds = %205, %145, %95
  %207 = load i32, i32* %3, align 4
  ret i32 %207
}

declare dso_local i32 @USS820_WRITE_1(%struct.uss820dci_softc*, i32, i32) #1

declare dso_local i32 @USS820_READ_1(%struct.uss820dci_softc*, i32) #1

declare dso_local i32 @DPRINTFN(i32, i8*, ...) #1

declare dso_local i32 @uss820dci_update_shared_1(%struct.uss820dci_softc*, i32, i32, i32) #1

declare dso_local i32 @bus_space_read_multi_1(i32, i32, i32, i8*, i32) #1

declare dso_local i32 @DPRINTF(i8*) #1

declare dso_local i32 @usbd_copy_in(i32, i32, %struct.usb_device_request*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
