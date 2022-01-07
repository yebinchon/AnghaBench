; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/controller/extr_saf1761_otg.c_saf1761_device_data_rx.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/controller/extr_saf1761_otg.c_saf1761_device_data_rx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.saf1761_otg_softc = type { i32 }
%struct.saf1761_otg_td = type { i32, i32, i32, i32, i32, i64 }

@SOTG_EP_INDEX = common dso_local global i32 0, align 4
@SOTG_EP_INDEX_EP0SETUP = common dso_local global i32 0, align 4
@SOTG_BUF_LENGTH = common dso_local global i32 0, align 4
@SOTG_BUF_LENGTH_FILLED_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"faking complete\0A\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"SETUP packet while receiving data\0A\00", align 1
@SOTG_EP_INDEX_ENDP_INDEX_SHIFT = common dso_local global i32 0, align 4
@SOTG_EP_INDEX_DIR_OUT = common dso_local global i32 0, align 4
@SOTG_CTRL_FUNC = common dso_local global i32 0, align 4
@SOTG_CTRL_FUNC_DSEN = common dso_local global i32 0, align 4
@SOTG_BUF_LENGTH_BUFLEN_MASK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [21 x i8] c"rem=%u count=0x%04x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.saf1761_otg_softc*, %struct.saf1761_otg_td*)* @saf1761_device_data_rx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @saf1761_device_data_rx(%struct.saf1761_otg_softc* %0, %struct.saf1761_otg_td* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.saf1761_otg_softc*, align 8
  %5 = alloca %struct.saf1761_otg_td*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.saf1761_otg_softc* %0, %struct.saf1761_otg_softc** %4, align 8
  store %struct.saf1761_otg_td* %1, %struct.saf1761_otg_td** %5, align 8
  store i32 0, i32* %7, align 4
  %8 = load %struct.saf1761_otg_td*, %struct.saf1761_otg_td** %5, align 8
  %9 = getelementptr inbounds %struct.saf1761_otg_td, %struct.saf1761_otg_td* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %36

12:                                               ; preds = %2
  %13 = load %struct.saf1761_otg_softc*, %struct.saf1761_otg_softc** %4, align 8
  %14 = load i32, i32* @SOTG_EP_INDEX, align 4
  %15 = load i32, i32* @SOTG_EP_INDEX_EP0SETUP, align 4
  %16 = call i32 @SAF1761_WRITE_LE_4(%struct.saf1761_otg_softc* %13, i32 %14, i32 %15)
  %17 = load %struct.saf1761_otg_softc*, %struct.saf1761_otg_softc** %4, align 8
  %18 = load i32, i32* @SOTG_BUF_LENGTH, align 4
  %19 = call i32 @SAF1761_READ_LE_4(%struct.saf1761_otg_softc* %17, i32 %18)
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* %6, align 4
  %21 = load i32, i32* @SOTG_BUF_LENGTH_FILLED_MASK, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %35

24:                                               ; preds = %12
  %25 = load %struct.saf1761_otg_td*, %struct.saf1761_otg_td** %5, align 8
  %26 = getelementptr inbounds %struct.saf1761_otg_td, %struct.saf1761_otg_td* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %24
  %30 = call i32 (i32, i8*, ...) @DPRINTFN(i32 5, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %123

31:                                               ; preds = %24
  %32 = call i32 (i32, i8*, ...) @DPRINTFN(i32 5, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  %33 = load %struct.saf1761_otg_td*, %struct.saf1761_otg_td** %5, align 8
  %34 = getelementptr inbounds %struct.saf1761_otg_td, %struct.saf1761_otg_td* %33, i32 0, i32 2
  store i32 1, i32* %34, align 8
  store i32 0, i32* %3, align 4
  br label %123

35:                                               ; preds = %12
  br label %36

36:                                               ; preds = %35, %2
  %37 = load %struct.saf1761_otg_softc*, %struct.saf1761_otg_softc** %4, align 8
  %38 = load i32, i32* @SOTG_EP_INDEX, align 4
  %39 = load %struct.saf1761_otg_td*, %struct.saf1761_otg_td** %5, align 8
  %40 = getelementptr inbounds %struct.saf1761_otg_td, %struct.saf1761_otg_td* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* @SOTG_EP_INDEX_ENDP_INDEX_SHIFT, align 4
  %43 = shl i32 %41, %42
  %44 = load i32, i32* @SOTG_EP_INDEX_DIR_OUT, align 4
  %45 = or i32 %43, %44
  %46 = call i32 @SAF1761_WRITE_LE_4(%struct.saf1761_otg_softc* %37, i32 %38, i32 %45)
  %47 = load %struct.saf1761_otg_td*, %struct.saf1761_otg_td** %5, align 8
  %48 = getelementptr inbounds %struct.saf1761_otg_td, %struct.saf1761_otg_td* %47, i32 0, i32 5
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %58

51:                                               ; preds = %36
  %52 = load %struct.saf1761_otg_td*, %struct.saf1761_otg_td** %5, align 8
  %53 = getelementptr inbounds %struct.saf1761_otg_td, %struct.saf1761_otg_td* %52, i32 0, i32 5
  store i64 0, i64* %53, align 8
  %54 = load %struct.saf1761_otg_softc*, %struct.saf1761_otg_softc** %4, align 8
  %55 = load i32, i32* @SOTG_CTRL_FUNC, align 4
  %56 = load i32, i32* @SOTG_CTRL_FUNC_DSEN, align 4
  %57 = call i32 @SAF1761_WRITE_LE_4(%struct.saf1761_otg_softc* %54, i32 %55, i32 %56)
  br label %58

58:                                               ; preds = %51, %36
  %59 = load %struct.saf1761_otg_softc*, %struct.saf1761_otg_softc** %4, align 8
  %60 = load i32, i32* @SOTG_BUF_LENGTH, align 4
  %61 = call i32 @SAF1761_READ_LE_4(%struct.saf1761_otg_softc* %59, i32 %60)
  store i32 %61, i32* %6, align 4
  %62 = load i32, i32* %6, align 4
  %63 = load i32, i32* @SOTG_BUF_LENGTH_FILLED_MASK, align 4
  %64 = and i32 %62, %63
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %58
  store i32 1, i32* %3, align 4
  br label %123

67:                                               ; preds = %58
  %68 = load i32, i32* @SOTG_BUF_LENGTH_BUFLEN_MASK, align 4
  %69 = load i32, i32* %6, align 4
  %70 = and i32 %69, %68
  store i32 %70, i32* %6, align 4
  %71 = load %struct.saf1761_otg_td*, %struct.saf1761_otg_td** %5, align 8
  %72 = getelementptr inbounds %struct.saf1761_otg_td, %struct.saf1761_otg_td* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* %6, align 4
  %75 = call i32 (i32, i8*, ...) @DPRINTFN(i32 5, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32 %73, i32 %74)
  %76 = load i32, i32* %6, align 4
  %77 = load %struct.saf1761_otg_td*, %struct.saf1761_otg_td** %5, align 8
  %78 = getelementptr inbounds %struct.saf1761_otg_td, %struct.saf1761_otg_td* %77, i32 0, i32 3
  %79 = load i32, i32* %78, align 4
  %80 = icmp ne i32 %76, %79
  br i1 %80, label %81, label %94

81:                                               ; preds = %67
  %82 = load i32, i32* %6, align 4
  %83 = load %struct.saf1761_otg_td*, %struct.saf1761_otg_td** %5, align 8
  %84 = getelementptr inbounds %struct.saf1761_otg_td, %struct.saf1761_otg_td* %83, i32 0, i32 3
  %85 = load i32, i32* %84, align 4
  %86 = icmp slt i32 %82, %85
  br i1 %86, label %87, label %90

87:                                               ; preds = %81
  %88 = load %struct.saf1761_otg_td*, %struct.saf1761_otg_td** %5, align 8
  %89 = getelementptr inbounds %struct.saf1761_otg_td, %struct.saf1761_otg_td* %88, i32 0, i32 4
  store i32 1, i32* %89, align 8
  store i32 1, i32* %7, align 4
  br label %93

90:                                               ; preds = %81
  %91 = load %struct.saf1761_otg_td*, %struct.saf1761_otg_td** %5, align 8
  %92 = getelementptr inbounds %struct.saf1761_otg_td, %struct.saf1761_otg_td* %91, i32 0, i32 2
  store i32 1, i32* %92, align 8
  store i32 0, i32* %3, align 4
  br label %123

93:                                               ; preds = %87
  br label %94

94:                                               ; preds = %93, %67
  %95 = load i32, i32* %6, align 4
  %96 = load %struct.saf1761_otg_td*, %struct.saf1761_otg_td** %5, align 8
  %97 = getelementptr inbounds %struct.saf1761_otg_td, %struct.saf1761_otg_td* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = icmp sgt i32 %95, %98
  br i1 %99, label %100, label %103

100:                                              ; preds = %94
  %101 = load %struct.saf1761_otg_td*, %struct.saf1761_otg_td** %5, align 8
  %102 = getelementptr inbounds %struct.saf1761_otg_td, %struct.saf1761_otg_td* %101, i32 0, i32 2
  store i32 1, i32* %102, align 8
  store i32 0, i32* %3, align 4
  br label %123

103:                                              ; preds = %94
  %104 = load %struct.saf1761_otg_softc*, %struct.saf1761_otg_softc** %4, align 8
  %105 = load %struct.saf1761_otg_td*, %struct.saf1761_otg_td** %5, align 8
  %106 = load i32, i32* %6, align 4
  %107 = call i32 @saf1761_read_device_fifo(%struct.saf1761_otg_softc* %104, %struct.saf1761_otg_td* %105, i32 %106)
  %108 = load %struct.saf1761_otg_td*, %struct.saf1761_otg_td** %5, align 8
  %109 = getelementptr inbounds %struct.saf1761_otg_td, %struct.saf1761_otg_td* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %115, label %112

112:                                              ; preds = %103
  %113 = load i32, i32* %7, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %122

115:                                              ; preds = %112, %103
  %116 = load %struct.saf1761_otg_td*, %struct.saf1761_otg_td** %5, align 8
  %117 = getelementptr inbounds %struct.saf1761_otg_td, %struct.saf1761_otg_td* %116, i32 0, i32 4
  %118 = load i32, i32* %117, align 8
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %121

120:                                              ; preds = %115
  store i32 0, i32* %3, align 4
  br label %123

121:                                              ; preds = %115
  br label %122

122:                                              ; preds = %121, %112
  store i32 1, i32* %3, align 4
  br label %123

123:                                              ; preds = %122, %120, %100, %90, %66, %31, %29
  %124 = load i32, i32* %3, align 4
  ret i32 %124
}

declare dso_local i32 @SAF1761_WRITE_LE_4(%struct.saf1761_otg_softc*, i32, i32) #1

declare dso_local i32 @SAF1761_READ_LE_4(%struct.saf1761_otg_softc*, i32) #1

declare dso_local i32 @DPRINTFN(i32, i8*, ...) #1

declare dso_local i32 @saf1761_read_device_fifo(%struct.saf1761_otg_softc*, %struct.saf1761_otg_td*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
