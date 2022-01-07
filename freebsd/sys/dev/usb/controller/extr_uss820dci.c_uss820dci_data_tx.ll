; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/controller/extr_uss820dci.c_uss820dci_data_tx.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/controller/extr_uss820dci.c_uss820dci_data_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uss820dci_softc = type { i32, i32 }
%struct.uss820dci_td = type { i64, i64, i32, i64, i32, i32, i32, i32, i32 }
%struct.usb_page_search = type { i64, i32 }

@USS820_EPINDEX = common dso_local global i32 0, align 4
@USS820_TXFLG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"tx_flag=0x%02x rem=%u\0A\00", align 1
@USS820_RXSTAT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"rx_stat=0x%02x\0A\00", align 1
@USS820_RXSTAT_RXSETUP = common dso_local global i32 0, align 4
@USS820_RXSTAT_RXSOVW = common dso_local global i32 0, align 4
@USS820_RXSTAT_EDOVW = common dso_local global i32 0, align 4
@USS820_TXFLG_TXOVF = common dso_local global i32 0, align 4
@USS820_TXFLG_TXURF = common dso_local global i32 0, align 4
@USS820_TXFLG_TXFIF0 = common dso_local global i32 0, align 4
@USS820_TXFLG_TXFIF1 = common dso_local global i32 0, align 4
@USS820_TXDAT = common dso_local global i32 0, align 4
@USS820_REG_STRIDE = common dso_local global i32 0, align 4
@USS820_TXCNTH = common dso_local global i32 0, align 4
@USS820_TXCNTL = common dso_local global i32 0, align 4
@USS820_EPCON = common dso_local global i32 0, align 4
@USS820_EPCON_TXOE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uss820dci_softc*, %struct.uss820dci_td*)* @uss820dci_data_tx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uss820dci_data_tx(%struct.uss820dci_softc* %0, %struct.uss820dci_td* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.uss820dci_softc*, align 8
  %5 = alloca %struct.uss820dci_td*, align 8
  %6 = alloca %struct.usb_page_search, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.uss820dci_softc* %0, %struct.uss820dci_softc** %4, align 8
  store %struct.uss820dci_td* %1, %struct.uss820dci_td** %5, align 8
  %12 = load %struct.uss820dci_softc*, %struct.uss820dci_softc** %4, align 8
  %13 = load i32, i32* @USS820_EPINDEX, align 4
  %14 = load %struct.uss820dci_td*, %struct.uss820dci_td** %5, align 8
  %15 = getelementptr inbounds %struct.uss820dci_td, %struct.uss820dci_td* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = call i32 @USS820_WRITE_1(%struct.uss820dci_softc* %12, i32 %13, i64 %16)
  store i32 2, i32* %11, align 4
  br label %18

18:                                               ; preds = %192, %2
  %19 = load %struct.uss820dci_softc*, %struct.uss820dci_softc** %4, align 8
  %20 = load i32, i32* @USS820_TXFLG, align 4
  %21 = call i32 @USS820_READ_1(%struct.uss820dci_softc* %19, i32 %20)
  store i32 %21, i32* %10, align 4
  %22 = load i32, i32* %10, align 4
  %23 = load %struct.uss820dci_td*, %struct.uss820dci_td** %5, align 8
  %24 = getelementptr inbounds %struct.uss820dci_td, %struct.uss820dci_td* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = call i32 (i32, i8*, i32, ...) @DPRINTFN(i32 5, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %22, i64 %25)
  %27 = load %struct.uss820dci_td*, %struct.uss820dci_td** %5, align 8
  %28 = getelementptr inbounds %struct.uss820dci_td, %struct.uss820dci_td* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %31, label %49

31:                                               ; preds = %18
  %32 = load %struct.uss820dci_softc*, %struct.uss820dci_softc** %4, align 8
  %33 = load i32, i32* @USS820_RXSTAT, align 4
  %34 = call i32 @USS820_READ_1(%struct.uss820dci_softc* %32, i32 %33)
  store i32 %34, i32* %9, align 4
  %35 = load i32, i32* %9, align 4
  %36 = call i32 (i32, i8*, i32, ...) @DPRINTFN(i32 5, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 %35)
  %37 = load i32, i32* %9, align 4
  %38 = load i32, i32* @USS820_RXSTAT_RXSETUP, align 4
  %39 = load i32, i32* @USS820_RXSTAT_RXSOVW, align 4
  %40 = or i32 %38, %39
  %41 = load i32, i32* @USS820_RXSTAT_EDOVW, align 4
  %42 = or i32 %40, %41
  %43 = and i32 %37, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %31
  %46 = load %struct.uss820dci_td*, %struct.uss820dci_td** %5, align 8
  %47 = getelementptr inbounds %struct.uss820dci_td, %struct.uss820dci_td* %46, i32 0, i32 2
  store i32 1, i32* %47, align 8
  store i32 0, i32* %3, align 4
  br label %194

48:                                               ; preds = %31
  br label %49

49:                                               ; preds = %48, %18
  %50 = load i32, i32* %10, align 4
  %51 = load i32, i32* @USS820_TXFLG_TXOVF, align 4
  %52 = load i32, i32* @USS820_TXFLG_TXURF, align 4
  %53 = or i32 %51, %52
  %54 = and i32 %50, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %49
  %57 = load %struct.uss820dci_td*, %struct.uss820dci_td** %5, align 8
  %58 = getelementptr inbounds %struct.uss820dci_td, %struct.uss820dci_td* %57, i32 0, i32 2
  store i32 1, i32* %58, align 8
  store i32 0, i32* %3, align 4
  br label %194

59:                                               ; preds = %49
  %60 = load i32, i32* %10, align 4
  %61 = load i32, i32* @USS820_TXFLG_TXFIF0, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %71

64:                                               ; preds = %59
  %65 = load i32, i32* %10, align 4
  %66 = load i32, i32* @USS820_TXFLG_TXFIF1, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %64
  store i32 1, i32* %3, align 4
  br label %194

70:                                               ; preds = %64
  br label %71

71:                                               ; preds = %70, %59
  %72 = load %struct.uss820dci_td*, %struct.uss820dci_td** %5, align 8
  %73 = getelementptr inbounds %struct.uss820dci_td, %struct.uss820dci_td* %72, i32 0, i32 8
  %74 = load i32, i32* %73, align 8
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %84, label %76

76:                                               ; preds = %71
  %77 = load i32, i32* %10, align 4
  %78 = load i32, i32* @USS820_TXFLG_TXFIF0, align 4
  %79 = load i32, i32* @USS820_TXFLG_TXFIF1, align 4
  %80 = or i32 %78, %79
  %81 = and i32 %77, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %76
  store i32 1, i32* %3, align 4
  br label %194

84:                                               ; preds = %76, %71
  %85 = load %struct.uss820dci_td*, %struct.uss820dci_td** %5, align 8
  %86 = getelementptr inbounds %struct.uss820dci_td, %struct.uss820dci_td* %85, i32 0, i32 3
  %87 = load i64, i64* %86, align 8
  store i64 %87, i64* %7, align 8
  %88 = load %struct.uss820dci_td*, %struct.uss820dci_td** %5, align 8
  %89 = getelementptr inbounds %struct.uss820dci_td, %struct.uss820dci_td* %88, i32 0, i32 1
  %90 = load i64, i64* %89, align 8
  %91 = load i64, i64* %7, align 8
  %92 = icmp slt i64 %90, %91
  br i1 %92, label %93, label %99

93:                                               ; preds = %84
  %94 = load %struct.uss820dci_td*, %struct.uss820dci_td** %5, align 8
  %95 = getelementptr inbounds %struct.uss820dci_td, %struct.uss820dci_td* %94, i32 0, i32 4
  store i32 1, i32* %95, align 8
  %96 = load %struct.uss820dci_td*, %struct.uss820dci_td** %5, align 8
  %97 = getelementptr inbounds %struct.uss820dci_td, %struct.uss820dci_td* %96, i32 0, i32 1
  %98 = load i64, i64* %97, align 8
  store i64 %98, i64* %7, align 8
  br label %99

99:                                               ; preds = %93, %84
  %100 = load i64, i64* %7, align 8
  store i64 %100, i64* %8, align 8
  br label %101

101:                                              ; preds = %119, %99
  %102 = load i64, i64* %7, align 8
  %103 = icmp sgt i64 %102, 0
  br i1 %103, label %104, label %152

104:                                              ; preds = %101
  %105 = load %struct.uss820dci_td*, %struct.uss820dci_td** %5, align 8
  %106 = getelementptr inbounds %struct.uss820dci_td, %struct.uss820dci_td* %105, i32 0, i32 6
  %107 = load i32, i32* %106, align 8
  %108 = load %struct.uss820dci_td*, %struct.uss820dci_td** %5, align 8
  %109 = getelementptr inbounds %struct.uss820dci_td, %struct.uss820dci_td* %108, i32 0, i32 7
  %110 = load i32, i32* %109, align 4
  %111 = call i32 @usbd_get_page(i32 %107, i32 %110, %struct.usb_page_search* %6)
  %112 = getelementptr inbounds %struct.usb_page_search, %struct.usb_page_search* %6, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = load i64, i64* %7, align 8
  %115 = icmp sgt i64 %113, %114
  br i1 %115, label %116, label %119

116:                                              ; preds = %104
  %117 = load i64, i64* %7, align 8
  %118 = getelementptr inbounds %struct.usb_page_search, %struct.usb_page_search* %6, i32 0, i32 0
  store i64 %117, i64* %118, align 8
  br label %119

119:                                              ; preds = %116, %104
  %120 = load %struct.uss820dci_softc*, %struct.uss820dci_softc** %4, align 8
  %121 = getelementptr inbounds %struct.uss820dci_softc, %struct.uss820dci_softc* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 4
  %123 = load %struct.uss820dci_softc*, %struct.uss820dci_softc** %4, align 8
  %124 = getelementptr inbounds %struct.uss820dci_softc, %struct.uss820dci_softc* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = load i32, i32* @USS820_TXDAT, align 4
  %127 = load i32, i32* @USS820_REG_STRIDE, align 4
  %128 = mul nsw i32 %126, %127
  %129 = getelementptr inbounds %struct.usb_page_search, %struct.usb_page_search* %6, i32 0, i32 1
  %130 = load i32, i32* %129, align 8
  %131 = getelementptr inbounds %struct.usb_page_search, %struct.usb_page_search* %6, i32 0, i32 0
  %132 = load i64, i64* %131, align 8
  %133 = call i32 @bus_space_write_multi_1(i32 %122, i32 %125, i32 %128, i32 %130, i64 %132)
  %134 = getelementptr inbounds %struct.usb_page_search, %struct.usb_page_search* %6, i32 0, i32 0
  %135 = load i64, i64* %134, align 8
  %136 = load i64, i64* %7, align 8
  %137 = sub nsw i64 %136, %135
  store i64 %137, i64* %7, align 8
  %138 = getelementptr inbounds %struct.usb_page_search, %struct.usb_page_search* %6, i32 0, i32 0
  %139 = load i64, i64* %138, align 8
  %140 = load %struct.uss820dci_td*, %struct.uss820dci_td** %5, align 8
  %141 = getelementptr inbounds %struct.uss820dci_td, %struct.uss820dci_td* %140, i32 0, i32 7
  %142 = load i32, i32* %141, align 4
  %143 = sext i32 %142 to i64
  %144 = add nsw i64 %143, %139
  %145 = trunc i64 %144 to i32
  store i32 %145, i32* %141, align 4
  %146 = getelementptr inbounds %struct.usb_page_search, %struct.usb_page_search* %6, i32 0, i32 0
  %147 = load i64, i64* %146, align 8
  %148 = load %struct.uss820dci_td*, %struct.uss820dci_td** %5, align 8
  %149 = getelementptr inbounds %struct.uss820dci_td, %struct.uss820dci_td* %148, i32 0, i32 1
  %150 = load i64, i64* %149, align 8
  %151 = sub nsw i64 %150, %147
  store i64 %151, i64* %149, align 8
  br label %101

152:                                              ; preds = %101
  %153 = load %struct.uss820dci_softc*, %struct.uss820dci_softc** %4, align 8
  %154 = load i32, i32* @USS820_TXCNTH, align 4
  %155 = load i64, i64* %8, align 8
  %156 = ashr i64 %155, 8
  %157 = call i32 @USS820_WRITE_1(%struct.uss820dci_softc* %153, i32 %154, i64 %156)
  %158 = load %struct.uss820dci_softc*, %struct.uss820dci_softc** %4, align 8
  %159 = load i32, i32* @USS820_TXCNTL, align 4
  %160 = load i64, i64* %8, align 8
  %161 = call i32 @USS820_WRITE_1(%struct.uss820dci_softc* %158, i32 %159, i64 %160)
  %162 = load %struct.uss820dci_td*, %struct.uss820dci_td** %5, align 8
  %163 = getelementptr inbounds %struct.uss820dci_td, %struct.uss820dci_td* %162, i32 0, i32 5
  %164 = load i32, i32* %163, align 4
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %176, label %166

166:                                              ; preds = %152
  %167 = load %struct.uss820dci_td*, %struct.uss820dci_td** %5, align 8
  %168 = getelementptr inbounds %struct.uss820dci_td, %struct.uss820dci_td* %167, i32 0, i32 6
  %169 = load i32, i32* %168, align 8
  %170 = call i32 @USS820_DCI_PC2SC(i32 %169)
  %171 = load i32, i32* @USS820_EPCON, align 4
  %172 = load i32, i32* @USS820_EPCON_TXOE, align 4
  %173 = call i32 @uss820dci_update_shared_1(i32 %170, i32 %171, i32 255, i32 %172)
  %174 = load %struct.uss820dci_td*, %struct.uss820dci_td** %5, align 8
  %175 = getelementptr inbounds %struct.uss820dci_td, %struct.uss820dci_td* %174, i32 0, i32 5
  store i32 1, i32* %175, align 4
  br label %176

176:                                              ; preds = %166, %152
  %177 = load %struct.uss820dci_td*, %struct.uss820dci_td** %5, align 8
  %178 = getelementptr inbounds %struct.uss820dci_td, %struct.uss820dci_td* %177, i32 0, i32 1
  %179 = load i64, i64* %178, align 8
  %180 = icmp eq i64 %179, 0
  br i1 %180, label %181, label %188

181:                                              ; preds = %176
  %182 = load %struct.uss820dci_td*, %struct.uss820dci_td** %5, align 8
  %183 = getelementptr inbounds %struct.uss820dci_td, %struct.uss820dci_td* %182, i32 0, i32 4
  %184 = load i32, i32* %183, align 8
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %186, label %187

186:                                              ; preds = %181
  store i32 0, i32* %3, align 4
  br label %194

187:                                              ; preds = %181
  br label %188

188:                                              ; preds = %187, %176
  %189 = load i32, i32* %11, align 4
  %190 = add nsw i32 %189, -1
  store i32 %190, i32* %11, align 4
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %192, label %193

192:                                              ; preds = %188
  br label %18

193:                                              ; preds = %188
  store i32 1, i32* %3, align 4
  br label %194

194:                                              ; preds = %193, %186, %83, %69, %56, %45
  %195 = load i32, i32* %3, align 4
  ret i32 %195
}

declare dso_local i32 @USS820_WRITE_1(%struct.uss820dci_softc*, i32, i64) #1

declare dso_local i32 @USS820_READ_1(%struct.uss820dci_softc*, i32) #1

declare dso_local i32 @DPRINTFN(i32, i8*, i32, ...) #1

declare dso_local i32 @usbd_get_page(i32, i32, %struct.usb_page_search*) #1

declare dso_local i32 @bus_space_write_multi_1(i32, i32, i32, i32, i64) #1

declare dso_local i32 @uss820dci_update_shared_1(i32, i32, i32, i32) #1

declare dso_local i32 @USS820_DCI_PC2SC(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
