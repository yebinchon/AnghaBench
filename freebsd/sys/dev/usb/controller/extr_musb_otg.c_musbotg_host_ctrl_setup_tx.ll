; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/controller/extr_musb_otg.c_musbotg_host_ctrl_setup_tx.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/controller/extr_musb_otg.c_musbotg_host_ctrl_setup_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.musbotg_td = type { i32, i32, i64, i32, i32, i32, i32, i32, i32, i32 }
%struct.musbotg_softc = type { i32, i32 }
%struct.usb_device_request = type { i32 }

@.str = private unnamed_addr constant [10 x i8] c"ep_no=%d\0A\00", align 1
@MUSB2_REG_EPINDEX = common dso_local global i32 0, align 4
@MUSB2_REG_TXCSRL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [12 x i8] c"csr=0x%02x\0A\00", align 1
@MUSB2_MASK_CSR0L_TXPKTRDY = common dso_local global i32 0, align 4
@MUSB2_MASK_CSR0L_RXSTALL = common dso_local global i32 0, align 4
@MUSB2_MASK_CSR0L_ERROR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"error bit set, csr=0x%02x\0A\00", align 1
@MUSB2_MASK_CSR0L_NAKTIMO = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [13 x i8] c"NAK timeout\0A\00", align 1
@MUSB2_MASK_CSR0L_TXFIFONEMPTY = common dso_local global i32 0, align 4
@MUSB2_REG_TXCSRH = common dso_local global i32 0, align 4
@MUSB2_MASK_CSR0H_FFLUSH = common dso_local global i32 0, align 4
@MUSB2_REG_TXNAKLIMIT = common dso_local global i32 0, align 4
@MAX_NAK_TO = common dso_local global i32 0, align 4
@MUSB2_REG_TXTI = common dso_local global i32 0, align 4
@MUSB2_MASK_CSR0L_SETUPPKT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.musbotg_td*)* @musbotg_host_ctrl_setup_tx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @musbotg_host_ctrl_setup_tx(%struct.musbotg_td* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.musbotg_td*, align 8
  %4 = alloca %struct.musbotg_softc*, align 8
  %5 = alloca %struct.usb_device_request, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.musbotg_td* %0, %struct.musbotg_td** %3, align 8
  %8 = load %struct.musbotg_td*, %struct.musbotg_td** %3, align 8
  %9 = getelementptr inbounds %struct.musbotg_td, %struct.musbotg_td* %8, i32 0, i32 9
  %10 = load i32, i32* %9, align 8
  %11 = call %struct.musbotg_softc* @MUSBOTG_PC2SC(i32 %10)
  store %struct.musbotg_softc* %11, %struct.musbotg_softc** %4, align 8
  %12 = load %struct.musbotg_td*, %struct.musbotg_td** %3, align 8
  %13 = getelementptr inbounds %struct.musbotg_td, %struct.musbotg_td* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp eq i32 %14, -1
  br i1 %15, label %16, label %22

16:                                               ; preds = %1
  %17 = load %struct.musbotg_softc*, %struct.musbotg_softc** %4, align 8
  %18 = load %struct.musbotg_td*, %struct.musbotg_td** %3, align 8
  %19 = call i32 @musbotg_channel_alloc(%struct.musbotg_softc* %17, %struct.musbotg_td* %18, i32 1)
  %20 = load %struct.musbotg_td*, %struct.musbotg_td** %3, align 8
  %21 = getelementptr inbounds %struct.musbotg_td, %struct.musbotg_td* %20, i32 0, i32 0
  store i32 %19, i32* %21, align 8
  br label %22

22:                                               ; preds = %16, %1
  %23 = load %struct.musbotg_td*, %struct.musbotg_td** %3, align 8
  %24 = getelementptr inbounds %struct.musbotg_td, %struct.musbotg_td* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp eq i32 %25, -1
  br i1 %26, label %27, label %28

27:                                               ; preds = %22
  store i32 1, i32* %2, align 4
  br label %200

28:                                               ; preds = %22
  %29 = load %struct.musbotg_td*, %struct.musbotg_td** %3, align 8
  %30 = getelementptr inbounds %struct.musbotg_td, %struct.musbotg_td* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = call i32 (i32, i8*, ...) @DPRINTFN(i32 1, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %31)
  %33 = load %struct.musbotg_softc*, %struct.musbotg_softc** %4, align 8
  %34 = load i32, i32* @MUSB2_REG_EPINDEX, align 4
  %35 = call i32 @MUSB2_WRITE_1(%struct.musbotg_softc* %33, i32 %34, i32 0)
  %36 = load %struct.musbotg_softc*, %struct.musbotg_softc** %4, align 8
  %37 = load i32, i32* @MUSB2_REG_TXCSRL, align 4
  %38 = call i32 @MUSB2_READ_1(%struct.musbotg_softc* %36, i32 %37)
  store i32 %38, i32* %6, align 4
  %39 = load i32, i32* %6, align 4
  %40 = call i32 (i32, i8*, ...) @DPRINTFN(i32 4, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 %39)
  %41 = load i32, i32* %6, align 4
  %42 = load i32, i32* @MUSB2_MASK_CSR0L_TXPKTRDY, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %28
  store i32 1, i32* %2, align 4
  br label %200

46:                                               ; preds = %28
  %47 = load i32, i32* %6, align 4
  %48 = load i32, i32* @MUSB2_MASK_CSR0L_RXSTALL, align 4
  %49 = load i32, i32* @MUSB2_MASK_CSR0L_ERROR, align 4
  %50 = or i32 %48, %49
  %51 = and i32 %47, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %61

53:                                               ; preds = %46
  %54 = load %struct.musbotg_softc*, %struct.musbotg_softc** %4, align 8
  %55 = load i32, i32* @MUSB2_REG_TXCSRL, align 4
  %56 = call i32 @MUSB2_WRITE_1(%struct.musbotg_softc* %54, i32 %55, i32 0)
  %57 = load i32, i32* %6, align 4
  %58 = call i32 (i32, i8*, ...) @DPRINTFN(i32 1, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i32 %57)
  %59 = load %struct.musbotg_td*, %struct.musbotg_td** %3, align 8
  %60 = getelementptr inbounds %struct.musbotg_td, %struct.musbotg_td* %59, i32 0, i32 1
  store i32 1, i32* %60, align 4
  br label %61

61:                                               ; preds = %53, %46
  %62 = load i32, i32* %6, align 4
  %63 = load i32, i32* @MUSB2_MASK_CSR0L_NAKTIMO, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %116

66:                                               ; preds = %61
  %67 = call i32 (i32, i8*, ...) @DPRINTFN(i32 1, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0))
  %68 = load i32, i32* %6, align 4
  %69 = load i32, i32* @MUSB2_MASK_CSR0L_TXFIFONEMPTY, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %105

72:                                               ; preds = %66
  %73 = load %struct.musbotg_softc*, %struct.musbotg_softc** %4, align 8
  %74 = load i32, i32* @MUSB2_REG_TXCSRH, align 4
  %75 = call i32 @MUSB2_READ_1(%struct.musbotg_softc* %73, i32 %74)
  store i32 %75, i32* %7, align 4
  %76 = load i32, i32* @MUSB2_MASK_CSR0H_FFLUSH, align 4
  %77 = load i32, i32* %7, align 4
  %78 = or i32 %77, %76
  store i32 %78, i32* %7, align 4
  %79 = load %struct.musbotg_softc*, %struct.musbotg_softc** %4, align 8
  %80 = load i32, i32* @MUSB2_REG_TXCSRH, align 4
  %81 = load i32, i32* %7, align 4
  %82 = call i32 @MUSB2_WRITE_1(%struct.musbotg_softc* %79, i32 %80, i32 %81)
  %83 = load %struct.musbotg_softc*, %struct.musbotg_softc** %4, align 8
  %84 = load i32, i32* @MUSB2_REG_TXCSRL, align 4
  %85 = call i32 @MUSB2_READ_1(%struct.musbotg_softc* %83, i32 %84)
  store i32 %85, i32* %6, align 4
  %86 = load i32, i32* %6, align 4
  %87 = load i32, i32* @MUSB2_MASK_CSR0L_TXFIFONEMPTY, align 4
  %88 = and i32 %86, %87
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %104

90:                                               ; preds = %72
  %91 = load %struct.musbotg_softc*, %struct.musbotg_softc** %4, align 8
  %92 = load i32, i32* @MUSB2_REG_TXCSRH, align 4
  %93 = call i32 @MUSB2_READ_1(%struct.musbotg_softc* %91, i32 %92)
  store i32 %93, i32* %7, align 4
  %94 = load i32, i32* @MUSB2_MASK_CSR0H_FFLUSH, align 4
  %95 = load i32, i32* %7, align 4
  %96 = or i32 %95, %94
  store i32 %96, i32* %7, align 4
  %97 = load %struct.musbotg_softc*, %struct.musbotg_softc** %4, align 8
  %98 = load i32, i32* @MUSB2_REG_TXCSRH, align 4
  %99 = load i32, i32* %7, align 4
  %100 = call i32 @MUSB2_WRITE_1(%struct.musbotg_softc* %97, i32 %98, i32 %99)
  %101 = load %struct.musbotg_softc*, %struct.musbotg_softc** %4, align 8
  %102 = load i32, i32* @MUSB2_REG_TXCSRL, align 4
  %103 = call i32 @MUSB2_READ_1(%struct.musbotg_softc* %101, i32 %102)
  store i32 %103, i32* %6, align 4
  br label %104

104:                                              ; preds = %90, %72
  br label %105

105:                                              ; preds = %104, %66
  %106 = load i32, i32* @MUSB2_MASK_CSR0L_NAKTIMO, align 4
  %107 = xor i32 %106, -1
  %108 = load i32, i32* %6, align 4
  %109 = and i32 %108, %107
  store i32 %109, i32* %6, align 4
  %110 = load %struct.musbotg_softc*, %struct.musbotg_softc** %4, align 8
  %111 = load i32, i32* @MUSB2_REG_TXCSRL, align 4
  %112 = load i32, i32* %6, align 4
  %113 = call i32 @MUSB2_WRITE_1(%struct.musbotg_softc* %110, i32 %111, i32 %112)
  %114 = load %struct.musbotg_td*, %struct.musbotg_td** %3, align 8
  %115 = getelementptr inbounds %struct.musbotg_td, %struct.musbotg_td* %114, i32 0, i32 1
  store i32 1, i32* %115, align 4
  br label %116

116:                                              ; preds = %105, %61
  %117 = load %struct.musbotg_td*, %struct.musbotg_td** %3, align 8
  %118 = getelementptr inbounds %struct.musbotg_td, %struct.musbotg_td* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %125

121:                                              ; preds = %116
  %122 = load %struct.musbotg_softc*, %struct.musbotg_softc** %4, align 8
  %123 = load %struct.musbotg_td*, %struct.musbotg_td** %3, align 8
  %124 = call i32 @musbotg_channel_free(%struct.musbotg_softc* %122, %struct.musbotg_td* %123)
  store i32 0, i32* %2, align 4
  br label %200

125:                                              ; preds = %116
  %126 = load i32, i32* %6, align 4
  %127 = load i32, i32* @MUSB2_MASK_CSR0L_TXPKTRDY, align 4
  %128 = and i32 %126, %127
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %131

130:                                              ; preds = %125
  store i32 1, i32* %2, align 4
  br label %200

131:                                              ; preds = %125
  %132 = load %struct.musbotg_td*, %struct.musbotg_td** %3, align 8
  %133 = getelementptr inbounds %struct.musbotg_td, %struct.musbotg_td* %132, i32 0, i32 2
  %134 = load i64, i64* %133, align 8
  %135 = icmp eq i64 %134, 0
  br i1 %135, label %136, label %140

136:                                              ; preds = %131
  %137 = load %struct.musbotg_softc*, %struct.musbotg_softc** %4, align 8
  %138 = load %struct.musbotg_td*, %struct.musbotg_td** %3, align 8
  %139 = call i32 @musbotg_channel_free(%struct.musbotg_softc* %137, %struct.musbotg_td* %138)
  store i32 0, i32* %2, align 4
  br label %200

140:                                              ; preds = %131
  %141 = load %struct.musbotg_td*, %struct.musbotg_td** %3, align 8
  %142 = getelementptr inbounds %struct.musbotg_td, %struct.musbotg_td* %141, i32 0, i32 9
  %143 = load i32, i32* %142, align 8
  %144 = call i32 @usbd_copy_out(i32 %143, i32 0, %struct.usb_device_request* %5, i32 4)
  %145 = load %struct.musbotg_softc*, %struct.musbotg_softc** %4, align 8
  %146 = getelementptr inbounds %struct.musbotg_softc, %struct.musbotg_softc* %145, i32 0, i32 1
  %147 = load i32, i32* %146, align 4
  %148 = load %struct.musbotg_softc*, %struct.musbotg_softc** %4, align 8
  %149 = getelementptr inbounds %struct.musbotg_softc, %struct.musbotg_softc* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 4
  %151 = call i32 @MUSB2_REG_EPFIFO(i32 0)
  %152 = bitcast %struct.usb_device_request* %5 to i8*
  %153 = call i32 @bus_space_write_multi_1(i32 %147, i32 %150, i32 %151, i8* %152, i32 4)
  %154 = load %struct.musbotg_td*, %struct.musbotg_td** %3, align 8
  %155 = getelementptr inbounds %struct.musbotg_td, %struct.musbotg_td* %154, i32 0, i32 3
  %156 = load i32, i32* %155, align 8
  %157 = sext i32 %156 to i64
  %158 = add i64 %157, 4
  %159 = trunc i64 %158 to i32
  store i32 %159, i32* %155, align 8
  %160 = load %struct.musbotg_td*, %struct.musbotg_td** %3, align 8
  %161 = getelementptr inbounds %struct.musbotg_td, %struct.musbotg_td* %160, i32 0, i32 2
  %162 = load i64, i64* %161, align 8
  %163 = sub i64 %162, 4
  store i64 %163, i64* %161, align 8
  %164 = load %struct.musbotg_softc*, %struct.musbotg_softc** %4, align 8
  %165 = load i32, i32* @MUSB2_REG_TXNAKLIMIT, align 4
  %166 = load i32, i32* @MAX_NAK_TO, align 4
  %167 = call i32 @MUSB2_WRITE_1(%struct.musbotg_softc* %164, i32 %165, i32 %166)
  %168 = load %struct.musbotg_softc*, %struct.musbotg_softc** %4, align 8
  %169 = call i32 @MUSB2_REG_TXFADDR(i32 0)
  %170 = load %struct.musbotg_td*, %struct.musbotg_td** %3, align 8
  %171 = getelementptr inbounds %struct.musbotg_td, %struct.musbotg_td* %170, i32 0, i32 4
  %172 = load i32, i32* %171, align 4
  %173 = call i32 @MUSB2_WRITE_1(%struct.musbotg_softc* %168, i32 %169, i32 %172)
  %174 = load %struct.musbotg_softc*, %struct.musbotg_softc** %4, align 8
  %175 = call i32 @MUSB2_REG_TXHADDR(i32 0)
  %176 = load %struct.musbotg_td*, %struct.musbotg_td** %3, align 8
  %177 = getelementptr inbounds %struct.musbotg_td, %struct.musbotg_td* %176, i32 0, i32 5
  %178 = load i32, i32* %177, align 8
  %179 = call i32 @MUSB2_WRITE_1(%struct.musbotg_softc* %174, i32 %175, i32 %178)
  %180 = load %struct.musbotg_softc*, %struct.musbotg_softc** %4, align 8
  %181 = call i32 @MUSB2_REG_TXHUBPORT(i32 0)
  %182 = load %struct.musbotg_td*, %struct.musbotg_td** %3, align 8
  %183 = getelementptr inbounds %struct.musbotg_td, %struct.musbotg_td* %182, i32 0, i32 6
  %184 = load i32, i32* %183, align 4
  %185 = call i32 @MUSB2_WRITE_1(%struct.musbotg_softc* %180, i32 %181, i32 %184)
  %186 = load %struct.musbotg_softc*, %struct.musbotg_softc** %4, align 8
  %187 = load i32, i32* @MUSB2_REG_TXTI, align 4
  %188 = load %struct.musbotg_td*, %struct.musbotg_td** %3, align 8
  %189 = getelementptr inbounds %struct.musbotg_td, %struct.musbotg_td* %188, i32 0, i32 7
  %190 = load i32, i32* %189, align 8
  %191 = call i32 @MUSB2_WRITE_1(%struct.musbotg_softc* %186, i32 %187, i32 %190)
  %192 = load %struct.musbotg_softc*, %struct.musbotg_softc** %4, align 8
  %193 = load i32, i32* @MUSB2_REG_TXCSRL, align 4
  %194 = load i32, i32* @MUSB2_MASK_CSR0L_TXPKTRDY, align 4
  %195 = load i32, i32* @MUSB2_MASK_CSR0L_SETUPPKT, align 4
  %196 = or i32 %194, %195
  %197 = call i32 @MUSB2_WRITE_1(%struct.musbotg_softc* %192, i32 %193, i32 %196)
  %198 = load %struct.musbotg_td*, %struct.musbotg_td** %3, align 8
  %199 = getelementptr inbounds %struct.musbotg_td, %struct.musbotg_td* %198, i32 0, i32 8
  store i32 1, i32* %199, align 4
  store i32 1, i32* %2, align 4
  br label %200

200:                                              ; preds = %140, %136, %130, %121, %45, %27
  %201 = load i32, i32* %2, align 4
  ret i32 %201
}

declare dso_local %struct.musbotg_softc* @MUSBOTG_PC2SC(i32) #1

declare dso_local i32 @musbotg_channel_alloc(%struct.musbotg_softc*, %struct.musbotg_td*, i32) #1

declare dso_local i32 @DPRINTFN(i32, i8*, ...) #1

declare dso_local i32 @MUSB2_WRITE_1(%struct.musbotg_softc*, i32, i32) #1

declare dso_local i32 @MUSB2_READ_1(%struct.musbotg_softc*, i32) #1

declare dso_local i32 @musbotg_channel_free(%struct.musbotg_softc*, %struct.musbotg_td*) #1

declare dso_local i32 @usbd_copy_out(i32, i32, %struct.usb_device_request*, i32) #1

declare dso_local i32 @bus_space_write_multi_1(i32, i32, i32, i8*, i32) #1

declare dso_local i32 @MUSB2_REG_EPFIFO(i32) #1

declare dso_local i32 @MUSB2_REG_TXFADDR(i32) #1

declare dso_local i32 @MUSB2_REG_TXHADDR(i32) #1

declare dso_local i32 @MUSB2_REG_TXHUBPORT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
