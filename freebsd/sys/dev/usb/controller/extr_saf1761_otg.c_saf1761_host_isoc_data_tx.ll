; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/controller/extr_saf1761_otg.c_saf1761_host_isoc_data_tx.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/controller/extr_saf1761_otg.c_saf1761_host_isoc_data_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.saf1761_otg_softc = type { i32, i32 }
%struct.saf1761_otg_td = type { i64, i32, i32, i32, i32, i32, i32 }

@SOTG_HOST_CHANNEL_MAX = common dso_local global i64 0, align 8
@SOTG_PTD_DW3 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"STATUS=0x%08x\0A\00", align 1
@SOTG_PTD_DW3_ACTIVE = common dso_local global i32 0, align 4
@SOTG_PTD_DW3_HALTED = common dso_local global i32 0, align 4
@SOTG_PTD_DW7 = common dso_local global i32 0, align 4
@SOTG_PTD_DW6 = common dso_local global i32 0, align 4
@SOTG_PTD_DW5 = common dso_local global i32 0, align 4
@SOTG_PTD_DW4 = common dso_local global i32 0, align 4
@SOTG_PTD_DW3_CERR_3 = common dso_local global i32 0, align 4
@SOTG_PTD_DW2 = common dso_local global i32 0, align 4
@SOTG_PTD_DW1 = common dso_local global i32 0, align 4
@SOTG_PTD_DW0_VALID = common dso_local global i32 0, align 4
@SOTG_PTD_DW0 = common dso_local global i32 0, align 4
@SOTG_ISO_PTD_SKIP_PTD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.saf1761_otg_softc*, %struct.saf1761_otg_td*)* @saf1761_host_isoc_data_tx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @saf1761_host_isoc_data_tx(%struct.saf1761_otg_softc* %0, %struct.saf1761_otg_td* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.saf1761_otg_softc*, align 8
  %5 = alloca %struct.saf1761_otg_td*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.saf1761_otg_softc* %0, %struct.saf1761_otg_softc** %4, align 8
  store %struct.saf1761_otg_td* %1, %struct.saf1761_otg_td** %5, align 8
  %10 = load %struct.saf1761_otg_td*, %struct.saf1761_otg_td** %5, align 8
  %11 = getelementptr inbounds %struct.saf1761_otg_td, %struct.saf1761_otg_td* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @SOTG_HOST_CHANNEL_MAX, align 8
  %14 = icmp slt i64 %12, %13
  br i1 %14, label %15, label %40

15:                                               ; preds = %2
  %16 = load %struct.saf1761_otg_td*, %struct.saf1761_otg_td** %5, align 8
  %17 = getelementptr inbounds %struct.saf1761_otg_td, %struct.saf1761_otg_td* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = call i32 @SOTG_PTD(i64 %18)
  store i32 %19, i32* %6, align 4
  %20 = load %struct.saf1761_otg_softc*, %struct.saf1761_otg_softc** %4, align 8
  %21 = load i32, i32* %6, align 4
  %22 = load i32, i32* @SOTG_PTD_DW3, align 4
  %23 = add nsw i32 %21, %22
  %24 = call i32 @saf1761_peek_host_status_le_4(%struct.saf1761_otg_softc* %20, i32 %23)
  store i32 %24, i32* %9, align 4
  %25 = load i32, i32* %9, align 4
  %26 = call i32 @DPRINTFN(i32 5, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %25)
  %27 = load i32, i32* %9, align 4
  %28 = load i32, i32* @SOTG_PTD_DW3_ACTIVE, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %15
  br label %166

32:                                               ; preds = %15
  %33 = load i32, i32* %9, align 4
  %34 = load i32, i32* @SOTG_PTD_DW3_HALTED, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %32
  br label %167

38:                                               ; preds = %32
  br label %39

39:                                               ; preds = %38
  br label %167

40:                                               ; preds = %2
  %41 = load %struct.saf1761_otg_softc*, %struct.saf1761_otg_softc** %4, align 8
  %42 = load %struct.saf1761_otg_td*, %struct.saf1761_otg_td** %5, align 8
  %43 = call i64 @saf1761_host_channel_alloc(%struct.saf1761_otg_softc* %41, %struct.saf1761_otg_td* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %40
  br label %166

46:                                               ; preds = %40
  %47 = load %struct.saf1761_otg_td*, %struct.saf1761_otg_td** %5, align 8
  %48 = getelementptr inbounds %struct.saf1761_otg_td, %struct.saf1761_otg_td* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  store i32 %49, i32* %8, align 4
  %50 = load %struct.saf1761_otg_td*, %struct.saf1761_otg_td** %5, align 8
  %51 = getelementptr inbounds %struct.saf1761_otg_td, %struct.saf1761_otg_td* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* %8, align 4
  %54 = icmp slt i32 %52, %53
  br i1 %54, label %55, label %61

55:                                               ; preds = %46
  %56 = load %struct.saf1761_otg_td*, %struct.saf1761_otg_td** %5, align 8
  %57 = getelementptr inbounds %struct.saf1761_otg_td, %struct.saf1761_otg_td* %56, i32 0, i32 3
  store i32 1, i32* %57, align 8
  %58 = load %struct.saf1761_otg_td*, %struct.saf1761_otg_td** %5, align 8
  %59 = getelementptr inbounds %struct.saf1761_otg_td, %struct.saf1761_otg_td* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 4
  store i32 %60, i32* %8, align 4
  br label %61

61:                                               ; preds = %55, %46
  %62 = load %struct.saf1761_otg_softc*, %struct.saf1761_otg_softc** %4, align 8
  %63 = load %struct.saf1761_otg_td*, %struct.saf1761_otg_td** %5, align 8
  %64 = load i32, i32* %8, align 4
  %65 = call i32 @saf1761_write_host_memory(%struct.saf1761_otg_softc* %62, %struct.saf1761_otg_td* %63, i32 %64)
  %66 = load %struct.saf1761_otg_td*, %struct.saf1761_otg_td** %5, align 8
  %67 = getelementptr inbounds %struct.saf1761_otg_td, %struct.saf1761_otg_td* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = call i32 @SOTG_PTD(i64 %68)
  store i32 %69, i32* %6, align 4
  %70 = load %struct.saf1761_otg_softc*, %struct.saf1761_otg_softc** %4, align 8
  %71 = load i32, i32* %6, align 4
  %72 = load i32, i32* @SOTG_PTD_DW7, align 4
  %73 = add nsw i32 %71, %72
  %74 = call i32 @SAF1761_WRITE_LE_4(%struct.saf1761_otg_softc* %70, i32 %73, i32 0)
  %75 = load %struct.saf1761_otg_softc*, %struct.saf1761_otg_softc** %4, align 8
  %76 = load i32, i32* %6, align 4
  %77 = load i32, i32* @SOTG_PTD_DW6, align 4
  %78 = add nsw i32 %76, %77
  %79 = call i32 @SAF1761_WRITE_LE_4(%struct.saf1761_otg_softc* %75, i32 %78, i32 0)
  %80 = load %struct.saf1761_otg_softc*, %struct.saf1761_otg_softc** %4, align 8
  %81 = load i32, i32* %6, align 4
  %82 = load i32, i32* @SOTG_PTD_DW5, align 4
  %83 = add nsw i32 %81, %82
  %84 = call i32 @SAF1761_WRITE_LE_4(%struct.saf1761_otg_softc* %80, i32 %83, i32 0)
  %85 = load %struct.saf1761_otg_td*, %struct.saf1761_otg_td** %5, align 8
  %86 = getelementptr inbounds %struct.saf1761_otg_td, %struct.saf1761_otg_td* %85, i32 0, i32 4
  %87 = load i32, i32* %86, align 4
  %88 = and i32 %87, 7
  %89 = shl i32 1, %88
  store i32 %89, i32* %7, align 4
  %90 = load %struct.saf1761_otg_softc*, %struct.saf1761_otg_softc** %4, align 8
  %91 = load i32, i32* %6, align 4
  %92 = load i32, i32* @SOTG_PTD_DW4, align 4
  %93 = add nsw i32 %91, %92
  %94 = load i32, i32* %7, align 4
  %95 = call i32 @SAF1761_WRITE_LE_4(%struct.saf1761_otg_softc* %90, i32 %93, i32 %94)
  %96 = load i32, i32* @SOTG_PTD_DW3_ACTIVE, align 4
  %97 = load i32, i32* @SOTG_PTD_DW3_CERR_3, align 4
  %98 = or i32 %96, %97
  store i32 %98, i32* %7, align 4
  %99 = load %struct.saf1761_otg_softc*, %struct.saf1761_otg_softc** %4, align 8
  %100 = load i32, i32* %6, align 4
  %101 = load i32, i32* @SOTG_PTD_DW3, align 4
  %102 = add nsw i32 %100, %101
  %103 = load i32, i32* %7, align 4
  %104 = call i32 @SAF1761_WRITE_LE_4(%struct.saf1761_otg_softc* %99, i32 %102, i32 %103)
  %105 = load %struct.saf1761_otg_td*, %struct.saf1761_otg_td** %5, align 8
  %106 = getelementptr inbounds %struct.saf1761_otg_td, %struct.saf1761_otg_td* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = call i32 @SOTG_DATA_ADDR(i64 %107)
  %109 = call i32 @SOTG_HC_MEMORY_ADDR(i32 %108)
  %110 = shl i32 %109, 8
  %111 = load %struct.saf1761_otg_td*, %struct.saf1761_otg_td** %5, align 8
  %112 = getelementptr inbounds %struct.saf1761_otg_td, %struct.saf1761_otg_td* %111, i32 0, i32 4
  %113 = load i32, i32* %112, align 4
  %114 = and i32 %113, 248
  %115 = or i32 %110, %114
  store i32 %115, i32* %7, align 4
  %116 = load %struct.saf1761_otg_softc*, %struct.saf1761_otg_softc** %4, align 8
  %117 = load i32, i32* %6, align 4
  %118 = load i32, i32* @SOTG_PTD_DW2, align 4
  %119 = add nsw i32 %117, %118
  %120 = load i32, i32* %7, align 4
  %121 = call i32 @SAF1761_WRITE_LE_4(%struct.saf1761_otg_softc* %116, i32 %119, i32 %120)
  %122 = load %struct.saf1761_otg_td*, %struct.saf1761_otg_td** %5, align 8
  %123 = getelementptr inbounds %struct.saf1761_otg_td, %struct.saf1761_otg_td* %122, i32 0, i32 5
  %124 = load i32, i32* %123, align 8
  %125 = load %struct.saf1761_otg_td*, %struct.saf1761_otg_td** %5, align 8
  %126 = getelementptr inbounds %struct.saf1761_otg_td, %struct.saf1761_otg_td* %125, i32 0, i32 6
  %127 = load i32, i32* %126, align 4
  %128 = ashr i32 %127, 1
  %129 = or i32 %124, %128
  store i32 %129, i32* %7, align 4
  %130 = load %struct.saf1761_otg_softc*, %struct.saf1761_otg_softc** %4, align 8
  %131 = load i32, i32* %6, align 4
  %132 = load i32, i32* @SOTG_PTD_DW1, align 4
  %133 = add nsw i32 %131, %132
  %134 = load i32, i32* %7, align 4
  %135 = call i32 @SAF1761_WRITE_LE_4(%struct.saf1761_otg_softc* %130, i32 %133, i32 %134)
  %136 = load %struct.saf1761_otg_td*, %struct.saf1761_otg_td** %5, align 8
  %137 = getelementptr inbounds %struct.saf1761_otg_td, %struct.saf1761_otg_td* %136, i32 0, i32 6
  %138 = load i32, i32* %137, align 4
  %139 = shl i32 %138, 31
  %140 = or i32 %139, 536870912
  %141 = load i32, i32* %8, align 4
  %142 = shl i32 %141, 18
  %143 = or i32 %140, %142
  %144 = load i32, i32* %8, align 4
  %145 = shl i32 %144, 3
  %146 = or i32 %143, %145
  %147 = load i32, i32* @SOTG_PTD_DW0_VALID, align 4
  %148 = or i32 %146, %147
  store i32 %148, i32* %7, align 4
  %149 = load %struct.saf1761_otg_softc*, %struct.saf1761_otg_softc** %4, align 8
  %150 = load i32, i32* %6, align 4
  %151 = load i32, i32* @SOTG_PTD_DW0, align 4
  %152 = add nsw i32 %150, %151
  %153 = load i32, i32* %7, align 4
  %154 = call i32 @SAF1761_WRITE_LE_4(%struct.saf1761_otg_softc* %149, i32 %152, i32 %153)
  %155 = load %struct.saf1761_otg_softc*, %struct.saf1761_otg_softc** %4, align 8
  %156 = load i32, i32* @SOTG_ISO_PTD_SKIP_PTD, align 4
  %157 = load %struct.saf1761_otg_softc*, %struct.saf1761_otg_softc** %4, align 8
  %158 = getelementptr inbounds %struct.saf1761_otg_softc, %struct.saf1761_otg_softc* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 4
  %160 = xor i32 %159, -1
  %161 = load %struct.saf1761_otg_softc*, %struct.saf1761_otg_softc** %4, align 8
  %162 = getelementptr inbounds %struct.saf1761_otg_softc, %struct.saf1761_otg_softc* %161, i32 0, i32 1
  %163 = load i32, i32* %162, align 4
  %164 = or i32 %160, %163
  %165 = call i32 @SAF1761_WRITE_LE_4(%struct.saf1761_otg_softc* %155, i32 %156, i32 %164)
  br label %166

166:                                              ; preds = %61, %45, %31
  store i32 1, i32* %3, align 4
  br label %171

167:                                              ; preds = %39, %37
  %168 = load %struct.saf1761_otg_softc*, %struct.saf1761_otg_softc** %4, align 8
  %169 = load %struct.saf1761_otg_td*, %struct.saf1761_otg_td** %5, align 8
  %170 = call i32 @saf1761_host_channel_free(%struct.saf1761_otg_softc* %168, %struct.saf1761_otg_td* %169)
  store i32 0, i32* %3, align 4
  br label %171

171:                                              ; preds = %167, %166
  %172 = load i32, i32* %3, align 4
  ret i32 %172
}

declare dso_local i32 @SOTG_PTD(i64) #1

declare dso_local i32 @saf1761_peek_host_status_le_4(%struct.saf1761_otg_softc*, i32) #1

declare dso_local i32 @DPRINTFN(i32, i8*, i32) #1

declare dso_local i64 @saf1761_host_channel_alloc(%struct.saf1761_otg_softc*, %struct.saf1761_otg_td*) #1

declare dso_local i32 @saf1761_write_host_memory(%struct.saf1761_otg_softc*, %struct.saf1761_otg_td*, i32) #1

declare dso_local i32 @SAF1761_WRITE_LE_4(%struct.saf1761_otg_softc*, i32, i32) #1

declare dso_local i32 @SOTG_HC_MEMORY_ADDR(i32) #1

declare dso_local i32 @SOTG_DATA_ADDR(i64) #1

declare dso_local i32 @saf1761_host_channel_free(%struct.saf1761_otg_softc*, %struct.saf1761_otg_td*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
