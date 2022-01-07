; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/controller/extr_dwc_otg.c_dwc_otg_host_channel_alloc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/controller/extr_dwc_otg.c_dwc_otg_host_channel_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dwc_otg_softc = type { i32, i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32, i32 }
%struct.dwc_otg_td = type { i8**, i32, i32, i32, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }

@DWC_OTG_MAX_CHANNELS = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [35 x i8] c"CH=%d HCCHAR=0x%08x HCSPLT=0x%08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dwc_otg_softc*, %struct.dwc_otg_td*, i32)* @dwc_otg_host_channel_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dwc_otg_host_channel_alloc(%struct.dwc_otg_softc* %0, %struct.dwc_otg_td* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.dwc_otg_softc*, align 8
  %6 = alloca %struct.dwc_otg_td*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.dwc_otg_softc* %0, %struct.dwc_otg_softc** %5, align 8
  store %struct.dwc_otg_td* %1, %struct.dwc_otg_td** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.dwc_otg_td*, %struct.dwc_otg_td** %6, align 8
  %12 = getelementptr inbounds %struct.dwc_otg_td, %struct.dwc_otg_td* %11, i32 0, i32 0
  %13 = load i8**, i8*** %12, align 8
  %14 = getelementptr inbounds i8*, i8** %13, i64 0
  %15 = load i8*, i8** %14, align 8
  %16 = load i8*, i8** @DWC_OTG_MAX_CHANNELS, align 8
  %17 = icmp ult i8* %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %161

19:                                               ; preds = %3
  %20 = load %struct.dwc_otg_td*, %struct.dwc_otg_td** %6, align 8
  %21 = getelementptr inbounds %struct.dwc_otg_td, %struct.dwc_otg_td* %20, i32 0, i32 4
  %22 = load i32, i32* %21, align 4
  %23 = call %struct.TYPE_6__* @DWC_OTG_PC2UDEV(i32 %22)
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %19
  store i32 1, i32* %4, align 4
  br label %161

29:                                               ; preds = %19
  %30 = load i32, i32* %7, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %39

32:                                               ; preds = %29
  %33 = load %struct.dwc_otg_softc*, %struct.dwc_otg_softc** %5, align 8
  %34 = load %struct.dwc_otg_td*, %struct.dwc_otg_td** %6, align 8
  %35 = call i64 @dwc_otg_host_check_tx_fifo_empty(%struct.dwc_otg_softc* %33, %struct.dwc_otg_td* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %32
  store i32 1, i32* %4, align 4
  br label %161

38:                                               ; preds = %32
  br label %39

39:                                               ; preds = %38, %29
  %40 = load %struct.dwc_otg_td*, %struct.dwc_otg_td** %6, align 8
  %41 = getelementptr inbounds %struct.dwc_otg_td, %struct.dwc_otg_td* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  store i32 %42, i32* %10, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %8, align 4
  br label %43

43:                                               ; preds = %87, %39
  %44 = load i32, i32* %8, align 4
  %45 = load %struct.dwc_otg_softc*, %struct.dwc_otg_softc** %5, align 8
  %46 = getelementptr inbounds %struct.dwc_otg_softc, %struct.dwc_otg_softc* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = icmp ne i32 %44, %47
  br i1 %48, label %49, label %90

49:                                               ; preds = %43
  %50 = load %struct.dwc_otg_softc*, %struct.dwc_otg_softc** %5, align 8
  %51 = getelementptr inbounds %struct.dwc_otg_softc, %struct.dwc_otg_softc* %50, i32 0, i32 2
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %51, align 8
  %53 = load i32, i32* %8, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i64 %54
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %49
  br label %87

60:                                               ; preds = %49
  %61 = load %struct.dwc_otg_softc*, %struct.dwc_otg_softc** %5, align 8
  %62 = getelementptr inbounds %struct.dwc_otg_softc, %struct.dwc_otg_softc* %61, i32 0, i32 2
  %63 = load %struct.TYPE_5__*, %struct.TYPE_5__** %62, align 8
  %64 = load i32, i32* %8, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i64 %65
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %60
  br label %87

71:                                               ; preds = %60
  %72 = load i32, i32* %8, align 4
  %73 = sext i32 %72 to i64
  %74 = inttoptr i64 %73 to i8*
  %75 = load %struct.dwc_otg_td*, %struct.dwc_otg_td** %6, align 8
  %76 = getelementptr inbounds %struct.dwc_otg_td, %struct.dwc_otg_td* %75, i32 0, i32 0
  %77 = load i8**, i8*** %76, align 8
  %78 = load i32, i32* %9, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %9, align 4
  %80 = sext i32 %78 to i64
  %81 = getelementptr inbounds i8*, i8** %77, i64 %80
  store i8* %74, i8** %81, align 8
  %82 = load i32, i32* %9, align 4
  %83 = load i32, i32* %10, align 4
  %84 = icmp eq i32 %82, %83
  br i1 %84, label %85, label %86

85:                                               ; preds = %71
  br label %90

86:                                               ; preds = %71
  br label %87

87:                                               ; preds = %86, %70, %59
  %88 = load i32, i32* %8, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %8, align 4
  br label %43

90:                                               ; preds = %85, %43
  %91 = load i32, i32* %9, align 4
  %92 = load i32, i32* %10, align 4
  %93 = icmp ne i32 %91, %92
  br i1 %93, label %94, label %112

94:                                               ; preds = %90
  %95 = load i8*, i8** @DWC_OTG_MAX_CHANNELS, align 8
  %96 = load %struct.dwc_otg_td*, %struct.dwc_otg_td** %6, align 8
  %97 = getelementptr inbounds %struct.dwc_otg_td, %struct.dwc_otg_td* %96, i32 0, i32 0
  %98 = load i8**, i8*** %97, align 8
  %99 = getelementptr inbounds i8*, i8** %98, i64 0
  store i8* %95, i8** %99, align 8
  %100 = load i8*, i8** @DWC_OTG_MAX_CHANNELS, align 8
  %101 = load %struct.dwc_otg_td*, %struct.dwc_otg_td** %6, align 8
  %102 = getelementptr inbounds %struct.dwc_otg_td, %struct.dwc_otg_td* %101, i32 0, i32 0
  %103 = load i8**, i8*** %102, align 8
  %104 = getelementptr inbounds i8*, i8** %103, i64 1
  store i8* %100, i8** %104, align 8
  %105 = load i8*, i8** @DWC_OTG_MAX_CHANNELS, align 8
  %106 = load %struct.dwc_otg_td*, %struct.dwc_otg_td** %6, align 8
  %107 = getelementptr inbounds %struct.dwc_otg_td, %struct.dwc_otg_td* %106, i32 0, i32 0
  %108 = load i8**, i8*** %107, align 8
  %109 = getelementptr inbounds i8*, i8** %108, i64 2
  store i8* %105, i8** %109, align 8
  %110 = load %struct.dwc_otg_softc*, %struct.dwc_otg_softc** %5, align 8
  %111 = call i32 @dwc_otg_enable_sof_irq(%struct.dwc_otg_softc* %110)
  store i32 1, i32* %4, align 4
  br label %161

112:                                              ; preds = %90
  store i32 0, i32* %9, align 4
  br label %113

113:                                              ; preds = %157, %112
  %114 = load i32, i32* %9, align 4
  %115 = load i32, i32* %10, align 4
  %116 = icmp ne i32 %114, %115
  br i1 %116, label %117, label %160

117:                                              ; preds = %113
  %118 = load %struct.dwc_otg_td*, %struct.dwc_otg_td** %6, align 8
  %119 = getelementptr inbounds %struct.dwc_otg_td, %struct.dwc_otg_td* %118, i32 0, i32 0
  %120 = load i8**, i8*** %119, align 8
  %121 = load i32, i32* %9, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds i8*, i8** %120, i64 %122
  %124 = load i8*, i8** %123, align 8
  %125 = ptrtoint i8* %124 to i32
  store i32 %125, i32* %8, align 4
  %126 = load %struct.dwc_otg_softc*, %struct.dwc_otg_softc** %5, align 8
  %127 = getelementptr inbounds %struct.dwc_otg_softc, %struct.dwc_otg_softc* %126, i32 0, i32 2
  %128 = load %struct.TYPE_5__*, %struct.TYPE_5__** %127, align 8
  %129 = load i32, i32* %8, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %128, i64 %130
  %132 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %131, i32 0, i32 0
  store i32 1, i32* %132, align 4
  %133 = load %struct.dwc_otg_softc*, %struct.dwc_otg_softc** %5, align 8
  %134 = getelementptr inbounds %struct.dwc_otg_softc, %struct.dwc_otg_softc* %133, i32 0, i32 2
  %135 = load %struct.TYPE_5__*, %struct.TYPE_5__** %134, align 8
  %136 = load i32, i32* %8, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %135, i64 %137
  %139 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %138, i32 0, i32 1
  store i32 1, i32* %139, align 4
  %140 = load %struct.dwc_otg_softc*, %struct.dwc_otg_softc** %5, align 8
  %141 = load i32, i32* %8, align 4
  %142 = call i32 @dwc_otg_clear_hcint(%struct.dwc_otg_softc* %140, i32 %141)
  %143 = load i32, i32* %8, align 4
  %144 = load %struct.dwc_otg_td*, %struct.dwc_otg_td** %6, align 8
  %145 = getelementptr inbounds %struct.dwc_otg_td, %struct.dwc_otg_td* %144, i32 0, i32 3
  %146 = load i32, i32* %145, align 8
  %147 = load %struct.dwc_otg_td*, %struct.dwc_otg_td** %6, align 8
  %148 = getelementptr inbounds %struct.dwc_otg_td, %struct.dwc_otg_td* %147, i32 0, i32 2
  %149 = load i32, i32* %148, align 4
  %150 = call i32 @DPRINTF(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %143, i32 %146, i32 %149)
  %151 = load i32, i32* %8, align 4
  %152 = shl i32 1, %151
  %153 = load %struct.dwc_otg_softc*, %struct.dwc_otg_softc** %5, align 8
  %154 = getelementptr inbounds %struct.dwc_otg_softc, %struct.dwc_otg_softc* %153, i32 0, i32 1
  %155 = load i32, i32* %154, align 4
  %156 = or i32 %155, %152
  store i32 %156, i32* %154, align 4
  br label %157

157:                                              ; preds = %117
  %158 = load i32, i32* %9, align 4
  %159 = add nsw i32 %158, 1
  store i32 %159, i32* %9, align 4
  br label %113

160:                                              ; preds = %113
  store i32 0, i32* %4, align 4
  br label %161

161:                                              ; preds = %160, %94, %37, %28, %18
  %162 = load i32, i32* %4, align 4
  ret i32 %162
}

declare dso_local %struct.TYPE_6__* @DWC_OTG_PC2UDEV(i32) #1

declare dso_local i64 @dwc_otg_host_check_tx_fifo_empty(%struct.dwc_otg_softc*, %struct.dwc_otg_td*) #1

declare dso_local i32 @dwc_otg_enable_sof_irq(%struct.dwc_otg_softc*) #1

declare dso_local i32 @dwc_otg_clear_hcint(%struct.dwc_otg_softc*, i32) #1

declare dso_local i32 @DPRINTF(i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
