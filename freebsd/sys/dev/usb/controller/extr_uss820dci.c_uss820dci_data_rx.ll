; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/controller/extr_uss820dci.c_uss820dci_data_rx.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/controller/extr_uss820dci.c_uss820dci_data_rx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uss820dci_softc = type { i32, i32 }
%struct.uss820dci_td = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.usb_page_search = type { i32, i32 }

@USS820_EPINDEX = common dso_local global i32 0, align 4
@USS820_RXFLG = common dso_local global i32 0, align 4
@USS820_RXSTAT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"rx_stat=0x%02x rx_flag=0x%02x rem=%u\0A\00", align 1
@USS820_RXSTAT_RXSETUP = common dso_local global i32 0, align 4
@USS820_RXSTAT_RXSOVW = common dso_local global i32 0, align 4
@USS820_RXSTAT_EDOVW = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"faking complete\0A\00", align 1
@USS820_RXFLG_RXOVF = common dso_local global i32 0, align 4
@USS820_RXFLG_RXURF = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [23 x i8] c"overflow or underflow\0A\00", align 1
@USS820_RXFLG_RXFIF0 = common dso_local global i32 0, align 4
@USS820_RXFLG_RXFIF1 = common dso_local global i32 0, align 4
@USS820_EPCON = common dso_local global i32 0, align 4
@USS820_EPCON_RXIE = common dso_local global i32 0, align 4
@USS820_RXCNTL = common dso_local global i32 0, align 4
@USS820_RXCNTH = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [14 x i8] c"count=0x%04x\0A\00", align 1
@USS820_RXDAT = common dso_local global i32 0, align 4
@USS820_REG_STRIDE = common dso_local global i32 0, align 4
@USS820_RXCON = common dso_local global i32 0, align 4
@USS820_RXCON_RXFFRC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uss820dci_softc*, %struct.uss820dci_td*)* @uss820dci_data_rx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uss820dci_data_rx(%struct.uss820dci_softc* %0, %struct.uss820dci_td* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.uss820dci_softc*, align 8
  %5 = alloca %struct.uss820dci_td*, align 8
  %6 = alloca %struct.usb_page_search, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.uss820dci_softc* %0, %struct.uss820dci_softc** %4, align 8
  store %struct.uss820dci_td* %1, %struct.uss820dci_td** %5, align 8
  store i32 2, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %13 = load %struct.uss820dci_softc*, %struct.uss820dci_softc** %4, align 8
  %14 = load i32, i32* @USS820_EPINDEX, align 4
  %15 = load %struct.uss820dci_td*, %struct.uss820dci_td** %5, align 8
  %16 = getelementptr inbounds %struct.uss820dci_td, %struct.uss820dci_td* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @USS820_WRITE_1(%struct.uss820dci_softc* %13, i32 %14, i32 %17)
  br label %19

19:                                               ; preds = %209, %2
  %20 = load %struct.uss820dci_softc*, %struct.uss820dci_softc** %4, align 8
  %21 = load i32, i32* @USS820_RXFLG, align 4
  %22 = call i32 @USS820_READ_1(%struct.uss820dci_softc* %20, i32 %21)
  store i32 %22, i32* %8, align 4
  %23 = load %struct.uss820dci_softc*, %struct.uss820dci_softc** %4, align 8
  %24 = load i32, i32* @USS820_RXSTAT, align 4
  %25 = call i32 @USS820_READ_1(%struct.uss820dci_softc* %23, i32 %24)
  store i32 %25, i32* %9, align 4
  %26 = load i32, i32* %9, align 4
  %27 = load i32, i32* %8, align 4
  %28 = load %struct.uss820dci_td*, %struct.uss820dci_td** %5, align 8
  %29 = getelementptr inbounds %struct.uss820dci_td, %struct.uss820dci_td* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = call i32 (i32, i8*, ...) @DPRINTFN(i32 5, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %26, i32 %27, i32 %30)
  %32 = load i32, i32* %9, align 4
  %33 = load i32, i32* @USS820_RXSTAT_RXSETUP, align 4
  %34 = load i32, i32* @USS820_RXSTAT_RXSOVW, align 4
  %35 = or i32 %33, %34
  %36 = load i32, i32* @USS820_RXSTAT_EDOVW, align 4
  %37 = or i32 %35, %36
  %38 = and i32 %32, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %55

40:                                               ; preds = %19
  %41 = load %struct.uss820dci_td*, %struct.uss820dci_td** %5, align 8
  %42 = getelementptr inbounds %struct.uss820dci_td, %struct.uss820dci_td* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %52

45:                                               ; preds = %40
  %46 = load %struct.uss820dci_td*, %struct.uss820dci_td** %5, align 8
  %47 = getelementptr inbounds %struct.uss820dci_td, %struct.uss820dci_td* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %45
  %51 = call i32 (i32, i8*, ...) @DPRINTFN(i32 5, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %211

52:                                               ; preds = %45, %40
  %53 = load %struct.uss820dci_td*, %struct.uss820dci_td** %5, align 8
  %54 = getelementptr inbounds %struct.uss820dci_td, %struct.uss820dci_td* %53, i32 0, i32 2
  store i32 1, i32* %54, align 4
  store i32 0, i32* %3, align 4
  br label %211

55:                                               ; preds = %19
  %56 = load i32, i32* %8, align 4
  %57 = load i32, i32* @USS820_RXFLG_RXOVF, align 4
  %58 = load i32, i32* @USS820_RXFLG_RXURF, align 4
  %59 = or i32 %57, %58
  %60 = and i32 %56, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %66

62:                                               ; preds = %55
  %63 = call i32 (i32, i8*, ...) @DPRINTFN(i32 5, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  %64 = load %struct.uss820dci_td*, %struct.uss820dci_td** %5, align 8
  %65 = getelementptr inbounds %struct.uss820dci_td, %struct.uss820dci_td* %64, i32 0, i32 2
  store i32 1, i32* %65, align 4
  store i32 0, i32* %3, align 4
  br label %211

66:                                               ; preds = %55
  %67 = load i32, i32* %8, align 4
  %68 = load i32, i32* @USS820_RXFLG_RXFIF0, align 4
  %69 = load i32, i32* @USS820_RXFLG_RXFIF1, align 4
  %70 = or i32 %68, %69
  %71 = and i32 %67, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %89, label %73

73:                                               ; preds = %66
  %74 = load %struct.uss820dci_td*, %struct.uss820dci_td** %5, align 8
  %75 = getelementptr inbounds %struct.uss820dci_td, %struct.uss820dci_td* %74, i32 0, i32 3
  %76 = load i32, i32* %75, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %88, label %78

78:                                               ; preds = %73
  %79 = load %struct.uss820dci_td*, %struct.uss820dci_td** %5, align 8
  %80 = getelementptr inbounds %struct.uss820dci_td, %struct.uss820dci_td* %79, i32 0, i32 7
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @USS820_DCI_PC2SC(i32 %81)
  %83 = load i32, i32* @USS820_EPCON, align 4
  %84 = load i32, i32* @USS820_EPCON_RXIE, align 4
  %85 = call i32 @uss820dci_update_shared_1(i32 %82, i32 %83, i32 255, i32 %84)
  %86 = load %struct.uss820dci_td*, %struct.uss820dci_td** %5, align 8
  %87 = getelementptr inbounds %struct.uss820dci_td, %struct.uss820dci_td* %86, i32 0, i32 3
  store i32 1, i32* %87, align 4
  br label %88

88:                                               ; preds = %78, %73
  store i32 1, i32* %3, align 4
  br label %211

89:                                               ; preds = %66
  %90 = load %struct.uss820dci_softc*, %struct.uss820dci_softc** %4, align 8
  %91 = load i32, i32* @USS820_RXCNTL, align 4
  %92 = call i32 @USS820_READ_1(%struct.uss820dci_softc* %90, i32 %91)
  store i32 %92, i32* %7, align 4
  %93 = load %struct.uss820dci_softc*, %struct.uss820dci_softc** %4, align 8
  %94 = load i32, i32* @USS820_RXCNTH, align 4
  %95 = call i32 @USS820_READ_1(%struct.uss820dci_softc* %93, i32 %94)
  %96 = shl i32 %95, 8
  %97 = load i32, i32* %7, align 4
  %98 = or i32 %97, %96
  store i32 %98, i32* %7, align 4
  %99 = load i32, i32* %7, align 4
  %100 = and i32 %99, 1023
  store i32 %100, i32* %7, align 4
  %101 = load i32, i32* %7, align 4
  %102 = call i32 (i32, i8*, ...) @DPRINTFN(i32 5, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i32 %101)
  %103 = load i32, i32* %7, align 4
  %104 = load %struct.uss820dci_td*, %struct.uss820dci_td** %5, align 8
  %105 = getelementptr inbounds %struct.uss820dci_td, %struct.uss820dci_td* %104, i32 0, i32 4
  %106 = load i32, i32* %105, align 4
  %107 = icmp ne i32 %103, %106
  br i1 %107, label %108, label %121

108:                                              ; preds = %89
  %109 = load i32, i32* %7, align 4
  %110 = load %struct.uss820dci_td*, %struct.uss820dci_td** %5, align 8
  %111 = getelementptr inbounds %struct.uss820dci_td, %struct.uss820dci_td* %110, i32 0, i32 4
  %112 = load i32, i32* %111, align 4
  %113 = icmp slt i32 %109, %112
  br i1 %113, label %114, label %117

114:                                              ; preds = %108
  %115 = load %struct.uss820dci_td*, %struct.uss820dci_td** %5, align 8
  %116 = getelementptr inbounds %struct.uss820dci_td, %struct.uss820dci_td* %115, i32 0, i32 5
  store i32 1, i32* %116, align 4
  store i32 1, i32* %12, align 4
  br label %120

117:                                              ; preds = %108
  %118 = load %struct.uss820dci_td*, %struct.uss820dci_td** %5, align 8
  %119 = getelementptr inbounds %struct.uss820dci_td, %struct.uss820dci_td* %118, i32 0, i32 2
  store i32 1, i32* %119, align 4
  store i32 0, i32* %3, align 4
  br label %211

120:                                              ; preds = %114
  br label %121

121:                                              ; preds = %120, %89
  %122 = load i32, i32* %7, align 4
  %123 = load %struct.uss820dci_td*, %struct.uss820dci_td** %5, align 8
  %124 = getelementptr inbounds %struct.uss820dci_td, %struct.uss820dci_td* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 4
  %126 = icmp sgt i32 %122, %125
  br i1 %126, label %127, label %130

127:                                              ; preds = %121
  %128 = load %struct.uss820dci_td*, %struct.uss820dci_td** %5, align 8
  %129 = getelementptr inbounds %struct.uss820dci_td, %struct.uss820dci_td* %128, i32 0, i32 2
  store i32 1, i32* %129, align 4
  store i32 0, i32* %3, align 4
  br label %211

130:                                              ; preds = %121
  br label %131

131:                                              ; preds = %149, %130
  %132 = load i32, i32* %7, align 4
  %133 = icmp sgt i32 %132, 0
  br i1 %133, label %134, label %180

134:                                              ; preds = %131
  %135 = load %struct.uss820dci_td*, %struct.uss820dci_td** %5, align 8
  %136 = getelementptr inbounds %struct.uss820dci_td, %struct.uss820dci_td* %135, i32 0, i32 7
  %137 = load i32, i32* %136, align 4
  %138 = load %struct.uss820dci_td*, %struct.uss820dci_td** %5, align 8
  %139 = getelementptr inbounds %struct.uss820dci_td, %struct.uss820dci_td* %138, i32 0, i32 6
  %140 = load i32, i32* %139, align 4
  %141 = call i32 @usbd_get_page(i32 %137, i32 %140, %struct.usb_page_search* %6)
  %142 = getelementptr inbounds %struct.usb_page_search, %struct.usb_page_search* %6, i32 0, i32 0
  %143 = load i32, i32* %142, align 4
  %144 = load i32, i32* %7, align 4
  %145 = icmp sgt i32 %143, %144
  br i1 %145, label %146, label %149

146:                                              ; preds = %134
  %147 = load i32, i32* %7, align 4
  %148 = getelementptr inbounds %struct.usb_page_search, %struct.usb_page_search* %6, i32 0, i32 0
  store i32 %147, i32* %148, align 4
  br label %149

149:                                              ; preds = %146, %134
  %150 = load %struct.uss820dci_softc*, %struct.uss820dci_softc** %4, align 8
  %151 = getelementptr inbounds %struct.uss820dci_softc, %struct.uss820dci_softc* %150, i32 0, i32 1
  %152 = load i32, i32* %151, align 4
  %153 = load %struct.uss820dci_softc*, %struct.uss820dci_softc** %4, align 8
  %154 = getelementptr inbounds %struct.uss820dci_softc, %struct.uss820dci_softc* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 4
  %156 = load i32, i32* @USS820_RXDAT, align 4
  %157 = load i32, i32* @USS820_REG_STRIDE, align 4
  %158 = mul nsw i32 %156, %157
  %159 = getelementptr inbounds %struct.usb_page_search, %struct.usb_page_search* %6, i32 0, i32 1
  %160 = load i32, i32* %159, align 4
  %161 = getelementptr inbounds %struct.usb_page_search, %struct.usb_page_search* %6, i32 0, i32 0
  %162 = load i32, i32* %161, align 4
  %163 = call i32 @bus_space_read_multi_1(i32 %152, i32 %155, i32 %158, i32 %160, i32 %162)
  %164 = getelementptr inbounds %struct.usb_page_search, %struct.usb_page_search* %6, i32 0, i32 0
  %165 = load i32, i32* %164, align 4
  %166 = load i32, i32* %7, align 4
  %167 = sub nsw i32 %166, %165
  store i32 %167, i32* %7, align 4
  %168 = getelementptr inbounds %struct.usb_page_search, %struct.usb_page_search* %6, i32 0, i32 0
  %169 = load i32, i32* %168, align 4
  %170 = load %struct.uss820dci_td*, %struct.uss820dci_td** %5, align 8
  %171 = getelementptr inbounds %struct.uss820dci_td, %struct.uss820dci_td* %170, i32 0, i32 6
  %172 = load i32, i32* %171, align 4
  %173 = add nsw i32 %172, %169
  store i32 %173, i32* %171, align 4
  %174 = getelementptr inbounds %struct.usb_page_search, %struct.usb_page_search* %6, i32 0, i32 0
  %175 = load i32, i32* %174, align 4
  %176 = load %struct.uss820dci_td*, %struct.uss820dci_td** %5, align 8
  %177 = getelementptr inbounds %struct.uss820dci_td, %struct.uss820dci_td* %176, i32 0, i32 1
  %178 = load i32, i32* %177, align 4
  %179 = sub nsw i32 %178, %175
  store i32 %179, i32* %177, align 4
  br label %131

180:                                              ; preds = %131
  %181 = load %struct.uss820dci_softc*, %struct.uss820dci_softc** %4, align 8
  %182 = load i32, i32* @USS820_RXCON, align 4
  %183 = call i32 @USS820_READ_1(%struct.uss820dci_softc* %181, i32 %182)
  store i32 %183, i32* %10, align 4
  %184 = load i32, i32* @USS820_RXCON_RXFFRC, align 4
  %185 = load i32, i32* %10, align 4
  %186 = or i32 %185, %184
  store i32 %186, i32* %10, align 4
  %187 = load %struct.uss820dci_softc*, %struct.uss820dci_softc** %4, align 8
  %188 = load i32, i32* @USS820_RXCON, align 4
  %189 = load i32, i32* %10, align 4
  %190 = call i32 @USS820_WRITE_1(%struct.uss820dci_softc* %187, i32 %188, i32 %189)
  %191 = load %struct.uss820dci_td*, %struct.uss820dci_td** %5, align 8
  %192 = getelementptr inbounds %struct.uss820dci_td, %struct.uss820dci_td* %191, i32 0, i32 1
  %193 = load i32, i32* %192, align 4
  %194 = icmp eq i32 %193, 0
  br i1 %194, label %198, label %195

195:                                              ; preds = %180
  %196 = load i32, i32* %12, align 4
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %198, label %205

198:                                              ; preds = %195, %180
  %199 = load %struct.uss820dci_td*, %struct.uss820dci_td** %5, align 8
  %200 = getelementptr inbounds %struct.uss820dci_td, %struct.uss820dci_td* %199, i32 0, i32 5
  %201 = load i32, i32* %200, align 4
  %202 = icmp ne i32 %201, 0
  br i1 %202, label %203, label %204

203:                                              ; preds = %198
  store i32 0, i32* %3, align 4
  br label %211

204:                                              ; preds = %198
  br label %205

205:                                              ; preds = %204, %195
  %206 = load i32, i32* %11, align 4
  %207 = add nsw i32 %206, -1
  store i32 %207, i32* %11, align 4
  %208 = icmp ne i32 %207, 0
  br i1 %208, label %209, label %210

209:                                              ; preds = %205
  br label %19

210:                                              ; preds = %205
  store i32 1, i32* %3, align 4
  br label %211

211:                                              ; preds = %210, %203, %127, %117, %88, %62, %52, %50
  %212 = load i32, i32* %3, align 4
  ret i32 %212
}

declare dso_local i32 @USS820_WRITE_1(%struct.uss820dci_softc*, i32, i32) #1

declare dso_local i32 @USS820_READ_1(%struct.uss820dci_softc*, i32) #1

declare dso_local i32 @DPRINTFN(i32, i8*, ...) #1

declare dso_local i32 @uss820dci_update_shared_1(i32, i32, i32, i32) #1

declare dso_local i32 @USS820_DCI_PC2SC(i32) #1

declare dso_local i32 @usbd_get_page(i32, i32, %struct.usb_page_search*) #1

declare dso_local i32 @bus_space_read_multi_1(i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
