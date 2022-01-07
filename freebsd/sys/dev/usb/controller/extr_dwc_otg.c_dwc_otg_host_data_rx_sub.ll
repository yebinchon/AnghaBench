; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/controller/extr_dwc_otg.c_dwc_otg_host_data_rx_sub.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/controller/extr_dwc_otg.c_dwc_otg_host_data_rx_sub.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dwc_otg_softc = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.dwc_otg_td = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64 }

@DWC_OTG_MAX_CHANNELS = common dso_local global i64 0, align 8
@GRXSTSRD_PKTSTS_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"DATA ST=%d STATUS=0x%08x\0A\00", align 1
@HCINT_SOFTWARE_ONLY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"Data already received\0A\00", align 1
@UE_ISOCHRONOUS = common dso_local global i32 0, align 4
@GRXSTSRD_DPID_MASK = common dso_local global i32 0, align 4
@GRXSTSRD_DPID_DATA0 = common dso_local global i32 0, align 4
@HCSPLT_XACTPOS_MIDDLE = common dso_local global i32 0, align 4
@HCSPLT_XACTPOS_BEGIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.dwc_otg_softc*, %struct.dwc_otg_td*, i64)* @dwc_otg_host_data_rx_sub to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @dwc_otg_host_data_rx_sub(%struct.dwc_otg_softc* %0, %struct.dwc_otg_td* %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.dwc_otg_softc*, align 8
  %6 = alloca %struct.dwc_otg_td*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.dwc_otg_softc* %0, %struct.dwc_otg_softc** %5, align 8
  store %struct.dwc_otg_td* %1, %struct.dwc_otg_td** %6, align 8
  store i64 %2, i64* %7, align 8
  %9 = load %struct.dwc_otg_softc*, %struct.dwc_otg_softc** %5, align 8
  %10 = getelementptr inbounds %struct.dwc_otg_softc, %struct.dwc_otg_softc* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %3
  br label %166

14:                                               ; preds = %3
  %15 = load i64, i64* %7, align 8
  %16 = load i64, i64* @DWC_OTG_MAX_CHANNELS, align 8
  %17 = icmp sge i64 %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %14
  br label %166

19:                                               ; preds = %14
  %20 = load %struct.dwc_otg_softc*, %struct.dwc_otg_softc** %5, align 8
  %21 = getelementptr inbounds %struct.dwc_otg_softc, %struct.dwc_otg_softc* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = call i64 @GRXSTSRD_CHNUM_GET(i32 %22)
  %24 = load i64, i64* %7, align 8
  %25 = icmp ne i64 %23, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %19
  br label %166

27:                                               ; preds = %19
  %28 = load %struct.dwc_otg_softc*, %struct.dwc_otg_softc** %5, align 8
  %29 = getelementptr inbounds %struct.dwc_otg_softc, %struct.dwc_otg_softc* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @GRXSTSRD_PKTSTS_MASK, align 4
  %32 = and i32 %30, %31
  switch i32 %32, label %162 [
    i32 128, label %33
  ]

33:                                               ; preds = %27
  %34 = load %struct.dwc_otg_td*, %struct.dwc_otg_td** %6, align 8
  %35 = getelementptr inbounds %struct.dwc_otg_td, %struct.dwc_otg_td* %34, i32 0, i32 11
  %36 = load i64, i64* %35, align 8
  %37 = trunc i64 %36 to i32
  %38 = load %struct.dwc_otg_softc*, %struct.dwc_otg_softc** %5, align 8
  %39 = getelementptr inbounds %struct.dwc_otg_softc, %struct.dwc_otg_softc* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = call i32 (i8*, ...) @DPRINTF(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %37, i32 %40)
  %42 = load %struct.dwc_otg_softc*, %struct.dwc_otg_softc** %5, align 8
  %43 = getelementptr inbounds %struct.dwc_otg_softc, %struct.dwc_otg_softc* %42, i32 0, i32 1
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = load i64, i64* %7, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @HCINT_SOFTWARE_ONLY, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %33
  %53 = call i32 (i8*, ...) @DPRINTF(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  br label %163

54:                                               ; preds = %33
  %55 = load %struct.dwc_otg_softc*, %struct.dwc_otg_softc** %5, align 8
  %56 = getelementptr inbounds %struct.dwc_otg_softc, %struct.dwc_otg_softc* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = call i32 @GRXSTSRD_BCNT_GET(i32 %57)
  store i32 %58, i32* %8, align 4
  %59 = load %struct.dwc_otg_td*, %struct.dwc_otg_td** %6, align 8
  %60 = getelementptr inbounds %struct.dwc_otg_td, %struct.dwc_otg_td* %59, i32 0, i32 10
  %61 = load i32, i32* %60, align 8
  %62 = load i32, i32* @UE_ISOCHRONOUS, align 4
  %63 = icmp eq i32 %61, %62
  br i1 %63, label %64, label %92

64:                                               ; preds = %54
  %65 = load %struct.dwc_otg_softc*, %struct.dwc_otg_softc** %5, align 8
  %66 = getelementptr inbounds %struct.dwc_otg_softc, %struct.dwc_otg_softc* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = load i32, i32* @GRXSTSRD_DPID_MASK, align 4
  %69 = and i32 %67, %68
  %70 = load i32, i32* @GRXSTSRD_DPID_DATA0, align 4
  %71 = icmp ne i32 %69, %70
  br i1 %71, label %72, label %76

72:                                               ; preds = %64
  %73 = load i32, i32* @HCSPLT_XACTPOS_MIDDLE, align 4
  %74 = load %struct.dwc_otg_td*, %struct.dwc_otg_td** %6, align 8
  %75 = getelementptr inbounds %struct.dwc_otg_td, %struct.dwc_otg_td* %74, i32 0, i32 9
  store i32 %73, i32* %75, align 4
  br label %91

76:                                               ; preds = %64
  %77 = load i32, i32* @HCSPLT_XACTPOS_BEGIN, align 4
  %78 = load %struct.dwc_otg_td*, %struct.dwc_otg_td** %6, align 8
  %79 = getelementptr inbounds %struct.dwc_otg_td, %struct.dwc_otg_td* %78, i32 0, i32 9
  store i32 %77, i32* %79, align 4
  %80 = load i32, i32* %8, align 4
  %81 = load %struct.dwc_otg_td*, %struct.dwc_otg_td** %6, align 8
  %82 = getelementptr inbounds %struct.dwc_otg_td, %struct.dwc_otg_td* %81, i32 0, i32 5
  %83 = load i32, i32* %82, align 4
  %84 = icmp ne i32 %80, %83
  br i1 %84, label %85, label %90

85:                                               ; preds = %76
  %86 = load %struct.dwc_otg_td*, %struct.dwc_otg_td** %6, align 8
  %87 = getelementptr inbounds %struct.dwc_otg_td, %struct.dwc_otg_td* %86, i32 0, i32 0
  store i32 1, i32* %87, align 8
  %88 = load %struct.dwc_otg_td*, %struct.dwc_otg_td** %6, align 8
  %89 = getelementptr inbounds %struct.dwc_otg_td, %struct.dwc_otg_td* %88, i32 0, i32 1
  store i32 1, i32* %89, align 4
  br label %90

90:                                               ; preds = %85, %76
  br label %91

91:                                               ; preds = %90, %72
  br label %122

92:                                               ; preds = %54
  %93 = load i32, i32* %8, align 4
  %94 = load %struct.dwc_otg_td*, %struct.dwc_otg_td** %6, align 8
  %95 = getelementptr inbounds %struct.dwc_otg_td, %struct.dwc_otg_td* %94, i32 0, i32 8
  %96 = load i32, i32* %95, align 8
  %97 = icmp ne i32 %93, %96
  br i1 %97, label %98, label %115

98:                                               ; preds = %92
  %99 = load i32, i32* %8, align 4
  %100 = load %struct.dwc_otg_td*, %struct.dwc_otg_td** %6, align 8
  %101 = getelementptr inbounds %struct.dwc_otg_td, %struct.dwc_otg_td* %100, i32 0, i32 8
  %102 = load i32, i32* %101, align 8
  %103 = icmp slt i32 %99, %102
  br i1 %103, label %104, label %109

104:                                              ; preds = %98
  %105 = load %struct.dwc_otg_td*, %struct.dwc_otg_td** %6, align 8
  %106 = getelementptr inbounds %struct.dwc_otg_td, %struct.dwc_otg_td* %105, i32 0, i32 0
  store i32 1, i32* %106, align 8
  %107 = load %struct.dwc_otg_td*, %struct.dwc_otg_td** %6, align 8
  %108 = getelementptr inbounds %struct.dwc_otg_td, %struct.dwc_otg_td* %107, i32 0, i32 1
  store i32 1, i32* %108, align 4
  br label %114

109:                                              ; preds = %98
  %110 = load %struct.dwc_otg_td*, %struct.dwc_otg_td** %6, align 8
  %111 = getelementptr inbounds %struct.dwc_otg_td, %struct.dwc_otg_td* %110, i32 0, i32 2
  store i32 1, i32* %111, align 8
  %112 = load %struct.dwc_otg_softc*, %struct.dwc_otg_softc** %5, align 8
  %113 = call i32 @dwc_otg_common_rx_ack(%struct.dwc_otg_softc* %112)
  br label %167

114:                                              ; preds = %104
  br label %115

115:                                              ; preds = %114, %92
  %116 = load %struct.dwc_otg_td*, %struct.dwc_otg_td** %6, align 8
  %117 = getelementptr inbounds %struct.dwc_otg_td, %struct.dwc_otg_td* %116, i32 0, i32 3
  %118 = load i32, i32* %117, align 4
  %119 = xor i32 %118, 1
  store i32 %119, i32* %117, align 4
  %120 = load %struct.dwc_otg_td*, %struct.dwc_otg_td** %6, align 8
  %121 = getelementptr inbounds %struct.dwc_otg_td, %struct.dwc_otg_td* %120, i32 0, i32 7
  store i32 0, i32* %121, align 4
  br label %122

122:                                              ; preds = %115, %91
  %123 = load i32, i32* %8, align 4
  %124 = load %struct.dwc_otg_td*, %struct.dwc_otg_td** %6, align 8
  %125 = getelementptr inbounds %struct.dwc_otg_td, %struct.dwc_otg_td* %124, i32 0, i32 5
  %126 = load i32, i32* %125, align 4
  %127 = icmp sgt i32 %123, %126
  br i1 %127, label %128, label %133

128:                                              ; preds = %122
  %129 = load %struct.dwc_otg_td*, %struct.dwc_otg_td** %6, align 8
  %130 = getelementptr inbounds %struct.dwc_otg_td, %struct.dwc_otg_td* %129, i32 0, i32 2
  store i32 1, i32* %130, align 8
  %131 = load %struct.dwc_otg_softc*, %struct.dwc_otg_softc** %5, align 8
  %132 = call i32 @dwc_otg_common_rx_ack(%struct.dwc_otg_softc* %131)
  br label %167

133:                                              ; preds = %122
  %134 = load %struct.dwc_otg_softc*, %struct.dwc_otg_softc** %5, align 8
  %135 = load %struct.dwc_otg_td*, %struct.dwc_otg_td** %6, align 8
  %136 = getelementptr inbounds %struct.dwc_otg_td, %struct.dwc_otg_td* %135, i32 0, i32 6
  %137 = load i32, i32* %136, align 8
  %138 = load %struct.dwc_otg_td*, %struct.dwc_otg_td** %6, align 8
  %139 = getelementptr inbounds %struct.dwc_otg_td, %struct.dwc_otg_td* %138, i32 0, i32 4
  %140 = load i32, i32* %139, align 8
  %141 = load i32, i32* %8, align 4
  %142 = call i32 @dwc_otg_read_fifo(%struct.dwc_otg_softc* %134, i32 %137, i32 %140, i32 %141)
  %143 = load i32, i32* %8, align 4
  %144 = load %struct.dwc_otg_td*, %struct.dwc_otg_td** %6, align 8
  %145 = getelementptr inbounds %struct.dwc_otg_td, %struct.dwc_otg_td* %144, i32 0, i32 5
  %146 = load i32, i32* %145, align 4
  %147 = sub nsw i32 %146, %143
  store i32 %147, i32* %145, align 4
  %148 = load i32, i32* %8, align 4
  %149 = load %struct.dwc_otg_td*, %struct.dwc_otg_td** %6, align 8
  %150 = getelementptr inbounds %struct.dwc_otg_td, %struct.dwc_otg_td* %149, i32 0, i32 4
  %151 = load i32, i32* %150, align 8
  %152 = add nsw i32 %151, %148
  store i32 %152, i32* %150, align 8
  %153 = load i32, i32* @HCINT_SOFTWARE_ONLY, align 4
  %154 = load %struct.dwc_otg_softc*, %struct.dwc_otg_softc** %5, align 8
  %155 = getelementptr inbounds %struct.dwc_otg_softc, %struct.dwc_otg_softc* %154, i32 0, i32 1
  %156 = load %struct.TYPE_2__*, %struct.TYPE_2__** %155, align 8
  %157 = load i64, i64* %7, align 8
  %158 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %156, i64 %157
  %159 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 4
  %161 = or i32 %160, %153
  store i32 %161, i32* %159, align 4
  br label %163

162:                                              ; preds = %27
  br label %163

163:                                              ; preds = %162, %133, %52
  %164 = load %struct.dwc_otg_softc*, %struct.dwc_otg_softc** %5, align 8
  %165 = call i32 @dwc_otg_common_rx_ack(%struct.dwc_otg_softc* %164)
  br label %166

166:                                              ; preds = %163, %26, %18, %13
  store i64 0, i64* %4, align 8
  br label %168

167:                                              ; preds = %128, %109
  store i64 1, i64* %4, align 8
  br label %168

168:                                              ; preds = %167, %166
  %169 = load i64, i64* %4, align 8
  ret i64 %169
}

declare dso_local i64 @GRXSTSRD_CHNUM_GET(i32) #1

declare dso_local i32 @DPRINTF(i8*, ...) #1

declare dso_local i32 @GRXSTSRD_BCNT_GET(i32) #1

declare dso_local i32 @dwc_otg_common_rx_ack(%struct.dwc_otg_softc*) #1

declare dso_local i32 @dwc_otg_read_fifo(%struct.dwc_otg_softc*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
