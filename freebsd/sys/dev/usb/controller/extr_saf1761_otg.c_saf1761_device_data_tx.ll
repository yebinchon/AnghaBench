; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/controller/extr_saf1761_otg.c_saf1761_device_data_tx.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/controller/extr_saf1761_otg.c_saf1761_device_data_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.saf1761_otg_softc = type { i32 }
%struct.saf1761_otg_td = type { i32, i32, i32, i32, i32, i64 }

@SOTG_EP_INDEX = common dso_local global i32 0, align 4
@SOTG_EP_INDEX_EP0SETUP = common dso_local global i32 0, align 4
@SOTG_BUF_LENGTH = common dso_local global i32 0, align 4
@SOTG_BUF_LENGTH_FILLED_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"SETUP abort\0A\00", align 1
@SOTG_EP_INDEX_ENDP_INDEX_SHIFT = common dso_local global i32 0, align 4
@SOTG_EP_INDEX_DIR_IN = common dso_local global i32 0, align 4
@SOTG_CTRL_FUNC = common dso_local global i32 0, align 4
@SOTG_CTRL_FUNC_DSEN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"rem=%u\0A\00", align 1
@SOTG_FS_MAX_PACKET_SIZE = common dso_local global i32 0, align 4
@SOTG_CTRL_FUNC_VENDP = common dso_local global i32 0, align 4
@SOTG_HS_MAX_PACKET_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.saf1761_otg_softc*, %struct.saf1761_otg_td*)* @saf1761_device_data_tx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @saf1761_device_data_tx(%struct.saf1761_otg_softc* %0, %struct.saf1761_otg_td* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.saf1761_otg_softc*, align 8
  %5 = alloca %struct.saf1761_otg_td*, align 8
  %6 = alloca i32, align 4
  store %struct.saf1761_otg_softc* %0, %struct.saf1761_otg_softc** %4, align 8
  store %struct.saf1761_otg_td* %1, %struct.saf1761_otg_td** %5, align 8
  %7 = load %struct.saf1761_otg_td*, %struct.saf1761_otg_td** %5, align 8
  %8 = getelementptr inbounds %struct.saf1761_otg_td, %struct.saf1761_otg_td* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %28

11:                                               ; preds = %2
  %12 = load %struct.saf1761_otg_softc*, %struct.saf1761_otg_softc** %4, align 8
  %13 = load i32, i32* @SOTG_EP_INDEX, align 4
  %14 = load i32, i32* @SOTG_EP_INDEX_EP0SETUP, align 4
  %15 = call i32 @SAF1761_WRITE_LE_4(%struct.saf1761_otg_softc* %12, i32 %13, i32 %14)
  %16 = load %struct.saf1761_otg_softc*, %struct.saf1761_otg_softc** %4, align 8
  %17 = load i32, i32* @SOTG_BUF_LENGTH, align 4
  %18 = call i32 @SAF1761_READ_LE_4(%struct.saf1761_otg_softc* %16, i32 %17)
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* %6, align 4
  %20 = load i32, i32* @SOTG_BUF_LENGTH_FILLED_MASK, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %11
  %24 = call i32 (i32, i8*, ...) @DPRINTFN(i32 5, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %25 = load %struct.saf1761_otg_td*, %struct.saf1761_otg_td** %5, align 8
  %26 = getelementptr inbounds %struct.saf1761_otg_td, %struct.saf1761_otg_td* %25, i32 0, i32 1
  store i32 1, i32* %26, align 4
  store i32 0, i32* %3, align 4
  br label %120

27:                                               ; preds = %11
  br label %28

28:                                               ; preds = %27, %2
  %29 = load %struct.saf1761_otg_softc*, %struct.saf1761_otg_softc** %4, align 8
  %30 = load i32, i32* @SOTG_EP_INDEX, align 4
  %31 = load %struct.saf1761_otg_td*, %struct.saf1761_otg_td** %5, align 8
  %32 = getelementptr inbounds %struct.saf1761_otg_td, %struct.saf1761_otg_td* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* @SOTG_EP_INDEX_ENDP_INDEX_SHIFT, align 4
  %35 = shl i32 %33, %34
  %36 = load i32, i32* @SOTG_EP_INDEX_DIR_IN, align 4
  %37 = or i32 %35, %36
  %38 = call i32 @SAF1761_WRITE_LE_4(%struct.saf1761_otg_softc* %29, i32 %30, i32 %37)
  %39 = load %struct.saf1761_otg_softc*, %struct.saf1761_otg_softc** %4, align 8
  %40 = load i32, i32* @SOTG_BUF_LENGTH, align 4
  %41 = call i32 @SAF1761_READ_LE_4(%struct.saf1761_otg_softc* %39, i32 %40)
  store i32 %41, i32* %6, align 4
  %42 = load i32, i32* %6, align 4
  %43 = load i32, i32* @SOTG_BUF_LENGTH_FILLED_MASK, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %28
  store i32 1, i32* %3, align 4
  br label %120

47:                                               ; preds = %28
  %48 = load %struct.saf1761_otg_td*, %struct.saf1761_otg_td** %5, align 8
  %49 = getelementptr inbounds %struct.saf1761_otg_td, %struct.saf1761_otg_td* %48, i32 0, i32 5
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %59

52:                                               ; preds = %47
  %53 = load %struct.saf1761_otg_td*, %struct.saf1761_otg_td** %5, align 8
  %54 = getelementptr inbounds %struct.saf1761_otg_td, %struct.saf1761_otg_td* %53, i32 0, i32 5
  store i64 0, i64* %54, align 8
  %55 = load %struct.saf1761_otg_softc*, %struct.saf1761_otg_softc** %4, align 8
  %56 = load i32, i32* @SOTG_CTRL_FUNC, align 4
  %57 = load i32, i32* @SOTG_CTRL_FUNC_DSEN, align 4
  %58 = call i32 @SAF1761_WRITE_LE_4(%struct.saf1761_otg_softc* %55, i32 %56, i32 %57)
  br label %59

59:                                               ; preds = %52, %47
  %60 = load %struct.saf1761_otg_td*, %struct.saf1761_otg_td** %5, align 8
  %61 = getelementptr inbounds %struct.saf1761_otg_td, %struct.saf1761_otg_td* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 8
  %63 = call i32 (i32, i8*, ...) @DPRINTFN(i32 5, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 %62)
  %64 = load %struct.saf1761_otg_td*, %struct.saf1761_otg_td** %5, align 8
  %65 = getelementptr inbounds %struct.saf1761_otg_td, %struct.saf1761_otg_td* %64, i32 0, i32 3
  %66 = load i32, i32* %65, align 4
  store i32 %66, i32* %6, align 4
  %67 = load %struct.saf1761_otg_td*, %struct.saf1761_otg_td** %5, align 8
  %68 = getelementptr inbounds %struct.saf1761_otg_td, %struct.saf1761_otg_td* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 8
  %70 = load i32, i32* %6, align 4
  %71 = icmp slt i32 %69, %70
  br i1 %71, label %72, label %78

72:                                               ; preds = %59
  %73 = load %struct.saf1761_otg_td*, %struct.saf1761_otg_td** %5, align 8
  %74 = getelementptr inbounds %struct.saf1761_otg_td, %struct.saf1761_otg_td* %73, i32 0, i32 4
  store i32 1, i32* %74, align 8
  %75 = load %struct.saf1761_otg_td*, %struct.saf1761_otg_td** %5, align 8
  %76 = getelementptr inbounds %struct.saf1761_otg_td, %struct.saf1761_otg_td* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 8
  store i32 %77, i32* %6, align 4
  br label %78

78:                                               ; preds = %72, %59
  %79 = load %struct.saf1761_otg_softc*, %struct.saf1761_otg_softc** %4, align 8
  %80 = load %struct.saf1761_otg_td*, %struct.saf1761_otg_td** %5, align 8
  %81 = load i32, i32* %6, align 4
  %82 = call i32 @saf1761_write_device_fifo(%struct.saf1761_otg_softc* %79, %struct.saf1761_otg_td* %80, i32 %81)
  %83 = load %struct.saf1761_otg_td*, %struct.saf1761_otg_td** %5, align 8
  %84 = getelementptr inbounds %struct.saf1761_otg_td, %struct.saf1761_otg_td* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %87, label %97

87:                                               ; preds = %78
  %88 = load i32, i32* %6, align 4
  %89 = load i32, i32* @SOTG_FS_MAX_PACKET_SIZE, align 4
  %90 = icmp slt i32 %88, %89
  br i1 %90, label %91, label %96

91:                                               ; preds = %87
  %92 = load %struct.saf1761_otg_softc*, %struct.saf1761_otg_softc** %4, align 8
  %93 = load i32, i32* @SOTG_CTRL_FUNC, align 4
  %94 = load i32, i32* @SOTG_CTRL_FUNC_VENDP, align 4
  %95 = call i32 @SAF1761_WRITE_LE_4(%struct.saf1761_otg_softc* %92, i32 %93, i32 %94)
  br label %96

96:                                               ; preds = %91, %87
  br label %107

97:                                               ; preds = %78
  %98 = load i32, i32* %6, align 4
  %99 = load i32, i32* @SOTG_HS_MAX_PACKET_SIZE, align 4
  %100 = icmp slt i32 %98, %99
  br i1 %100, label %101, label %106

101:                                              ; preds = %97
  %102 = load %struct.saf1761_otg_softc*, %struct.saf1761_otg_softc** %4, align 8
  %103 = load i32, i32* @SOTG_CTRL_FUNC, align 4
  %104 = load i32, i32* @SOTG_CTRL_FUNC_VENDP, align 4
  %105 = call i32 @SAF1761_WRITE_LE_4(%struct.saf1761_otg_softc* %102, i32 %103, i32 %104)
  br label %106

106:                                              ; preds = %101, %97
  br label %107

107:                                              ; preds = %106, %96
  %108 = load %struct.saf1761_otg_td*, %struct.saf1761_otg_td** %5, align 8
  %109 = getelementptr inbounds %struct.saf1761_otg_td, %struct.saf1761_otg_td* %108, i32 0, i32 2
  %110 = load i32, i32* %109, align 8
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %112, label %119

112:                                              ; preds = %107
  %113 = load %struct.saf1761_otg_td*, %struct.saf1761_otg_td** %5, align 8
  %114 = getelementptr inbounds %struct.saf1761_otg_td, %struct.saf1761_otg_td* %113, i32 0, i32 4
  %115 = load i32, i32* %114, align 8
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %118

117:                                              ; preds = %112
  store i32 0, i32* %3, align 4
  br label %120

118:                                              ; preds = %112
  br label %119

119:                                              ; preds = %118, %107
  store i32 1, i32* %3, align 4
  br label %120

120:                                              ; preds = %119, %117, %46, %23
  %121 = load i32, i32* %3, align 4
  ret i32 %121
}

declare dso_local i32 @SAF1761_WRITE_LE_4(%struct.saf1761_otg_softc*, i32, i32) #1

declare dso_local i32 @SAF1761_READ_LE_4(%struct.saf1761_otg_softc*, i32) #1

declare dso_local i32 @DPRINTFN(i32, i8*, ...) #1

declare dso_local i32 @saf1761_write_device_fifo(%struct.saf1761_otg_softc*, %struct.saf1761_otg_td*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
