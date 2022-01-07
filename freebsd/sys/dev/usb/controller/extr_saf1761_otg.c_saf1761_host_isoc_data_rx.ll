; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/controller/extr_saf1761_otg.c_saf1761_host_isoc_data_rx.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/controller/extr_saf1761_otg.c_saf1761_host_isoc_data_rx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.saf1761_otg_softc = type { i32, i32 }
%struct.saf1761_otg_td = type { i64, i32, i32, i32, i32, i32, i32, i32 }

@SOTG_HOST_CHANNEL_MAX = common dso_local global i64 0, align 8
@SOTG_PTD_DW3 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"STATUS=0x%08x\0A\00", align 1
@SOTG_PTD_DW3_ACTIVE = common dso_local global i32 0, align 4
@SOTG_PTD_DW3_HALTED = common dso_local global i32 0, align 4
@SOTG_PTD_DW1_ENABLE_SPLIT = common dso_local global i32 0, align 4
@SOTG_PTD_DW3_XFER_COUNT_SPLIT = common dso_local global i32 0, align 4
@SOTG_PTD_DW3_XFER_COUNT_HS = common dso_local global i32 0, align 4
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
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.saf1761_otg_softc*, %struct.saf1761_otg_td*)* @saf1761_host_isoc_data_rx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @saf1761_host_isoc_data_rx(%struct.saf1761_otg_softc* %0, %struct.saf1761_otg_td* %1) #0 {
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
  br i1 %14, label %15, label %87

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
  store i32 %24, i32* %8, align 4
  %25 = load i32, i32* %8, align 4
  %26 = call i32 @DPRINTFN(i32 5, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %25)
  %27 = load i32, i32* %8, align 4
  %28 = load i32, i32* @SOTG_PTD_DW3_ACTIVE, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %15
  br label %215

32:                                               ; preds = %15
  %33 = load i32, i32* %8, align 4
  %34 = load i32, i32* @SOTG_PTD_DW3_HALTED, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %32
  br label %216

38:                                               ; preds = %32
  br label %39

39:                                               ; preds = %38
  %40 = load %struct.saf1761_otg_td*, %struct.saf1761_otg_td** %5, align 8
  %41 = getelementptr inbounds %struct.saf1761_otg_td, %struct.saf1761_otg_td* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* @SOTG_PTD_DW1_ENABLE_SPLIT, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %39
  %47 = load i32, i32* %8, align 4
  %48 = load i32, i32* @SOTG_PTD_DW3_XFER_COUNT_SPLIT, align 4
  %49 = and i32 %47, %48
  store i32 %49, i32* %9, align 4
  br label %54

50:                                               ; preds = %39
  %51 = load i32, i32* %8, align 4
  %52 = load i32, i32* @SOTG_PTD_DW3_XFER_COUNT_HS, align 4
  %53 = and i32 %51, %52
  store i32 %53, i32* %9, align 4
  br label %54

54:                                               ; preds = %50, %46
  %55 = load i32, i32* %9, align 4
  %56 = load %struct.saf1761_otg_td*, %struct.saf1761_otg_td** %5, align 8
  %57 = getelementptr inbounds %struct.saf1761_otg_td, %struct.saf1761_otg_td* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 4
  %59 = icmp ne i32 %55, %58
  br i1 %59, label %60, label %73

60:                                               ; preds = %54
  %61 = load i32, i32* %9, align 4
  %62 = load %struct.saf1761_otg_td*, %struct.saf1761_otg_td** %5, align 8
  %63 = getelementptr inbounds %struct.saf1761_otg_td, %struct.saf1761_otg_td* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 4
  %65 = icmp slt i32 %61, %64
  br i1 %65, label %66, label %69

66:                                               ; preds = %60
  %67 = load %struct.saf1761_otg_td*, %struct.saf1761_otg_td** %5, align 8
  %68 = getelementptr inbounds %struct.saf1761_otg_td, %struct.saf1761_otg_td* %67, i32 0, i32 3
  store i32 1, i32* %68, align 8
  br label %72

69:                                               ; preds = %60
  %70 = load %struct.saf1761_otg_td*, %struct.saf1761_otg_td** %5, align 8
  %71 = getelementptr inbounds %struct.saf1761_otg_td, %struct.saf1761_otg_td* %70, i32 0, i32 4
  store i32 1, i32* %71, align 4
  br label %216

72:                                               ; preds = %66
  br label %73

73:                                               ; preds = %72, %54
  %74 = load i32, i32* %9, align 4
  %75 = load %struct.saf1761_otg_td*, %struct.saf1761_otg_td** %5, align 8
  %76 = getelementptr inbounds %struct.saf1761_otg_td, %struct.saf1761_otg_td* %75, i32 0, i32 5
  %77 = load i32, i32* %76, align 8
  %78 = icmp sgt i32 %74, %77
  br i1 %78, label %79, label %82

79:                                               ; preds = %73
  %80 = load %struct.saf1761_otg_td*, %struct.saf1761_otg_td** %5, align 8
  %81 = getelementptr inbounds %struct.saf1761_otg_td, %struct.saf1761_otg_td* %80, i32 0, i32 4
  store i32 1, i32* %81, align 4
  br label %216

82:                                               ; preds = %73
  %83 = load %struct.saf1761_otg_softc*, %struct.saf1761_otg_softc** %4, align 8
  %84 = load %struct.saf1761_otg_td*, %struct.saf1761_otg_td** %5, align 8
  %85 = load i32, i32* %9, align 4
  %86 = call i32 @saf1761_read_host_memory(%struct.saf1761_otg_softc* %83, %struct.saf1761_otg_td* %84, i32 %85)
  br label %216

87:                                               ; preds = %2
  %88 = load %struct.saf1761_otg_softc*, %struct.saf1761_otg_softc** %4, align 8
  %89 = load %struct.saf1761_otg_td*, %struct.saf1761_otg_td** %5, align 8
  %90 = call i64 @saf1761_host_channel_alloc(%struct.saf1761_otg_softc* %88, %struct.saf1761_otg_td* %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %93

92:                                               ; preds = %87
  br label %215

93:                                               ; preds = %87
  %94 = load %struct.saf1761_otg_td*, %struct.saf1761_otg_td** %5, align 8
  %95 = getelementptr inbounds %struct.saf1761_otg_td, %struct.saf1761_otg_td* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = call i32 @SOTG_PTD(i64 %96)
  store i32 %97, i32* %6, align 4
  %98 = load %struct.saf1761_otg_softc*, %struct.saf1761_otg_softc** %4, align 8
  %99 = load i32, i32* %6, align 4
  %100 = load i32, i32* @SOTG_PTD_DW7, align 4
  %101 = add nsw i32 %99, %100
  %102 = call i32 @SAF1761_WRITE_LE_4(%struct.saf1761_otg_softc* %98, i32 %101, i32 0)
  %103 = load %struct.saf1761_otg_softc*, %struct.saf1761_otg_softc** %4, align 8
  %104 = load i32, i32* %6, align 4
  %105 = load i32, i32* @SOTG_PTD_DW6, align 4
  %106 = add nsw i32 %104, %105
  %107 = call i32 @SAF1761_WRITE_LE_4(%struct.saf1761_otg_softc* %103, i32 %106, i32 0)
  %108 = load %struct.saf1761_otg_td*, %struct.saf1761_otg_td** %5, align 8
  %109 = getelementptr inbounds %struct.saf1761_otg_td, %struct.saf1761_otg_td* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 8
  %111 = load i32, i32* @SOTG_PTD_DW1_ENABLE_SPLIT, align 4
  %112 = and i32 %110, %111
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %121

114:                                              ; preds = %93
  %115 = load %struct.saf1761_otg_td*, %struct.saf1761_otg_td** %5, align 8
  %116 = getelementptr inbounds %struct.saf1761_otg_td, %struct.saf1761_otg_td* %115, i32 0, i32 6
  %117 = load i32, i32* %116, align 4
  %118 = and i32 %117, 7
  %119 = shl i32 252, %118
  %120 = and i32 %119, 255
  store i32 %120, i32* %7, align 4
  br label %122

121:                                              ; preds = %93
  store i32 0, i32* %7, align 4
  br label %122

122:                                              ; preds = %121, %114
  %123 = load %struct.saf1761_otg_softc*, %struct.saf1761_otg_softc** %4, align 8
  %124 = load i32, i32* %6, align 4
  %125 = load i32, i32* @SOTG_PTD_DW5, align 4
  %126 = add nsw i32 %124, %125
  %127 = load i32, i32* %7, align 4
  %128 = call i32 @SAF1761_WRITE_LE_4(%struct.saf1761_otg_softc* %123, i32 %126, i32 %127)
  %129 = load %struct.saf1761_otg_td*, %struct.saf1761_otg_td** %5, align 8
  %130 = getelementptr inbounds %struct.saf1761_otg_td, %struct.saf1761_otg_td* %129, i32 0, i32 6
  %131 = load i32, i32* %130, align 4
  %132 = and i32 %131, 7
  %133 = shl i32 1, %132
  store i32 %133, i32* %7, align 4
  %134 = load %struct.saf1761_otg_softc*, %struct.saf1761_otg_softc** %4, align 8
  %135 = load i32, i32* %6, align 4
  %136 = load i32, i32* @SOTG_PTD_DW4, align 4
  %137 = add nsw i32 %135, %136
  %138 = load i32, i32* %7, align 4
  %139 = call i32 @SAF1761_WRITE_LE_4(%struct.saf1761_otg_softc* %134, i32 %137, i32 %138)
  %140 = load i32, i32* @SOTG_PTD_DW3_ACTIVE, align 4
  %141 = load i32, i32* @SOTG_PTD_DW3_CERR_3, align 4
  %142 = or i32 %140, %141
  store i32 %142, i32* %7, align 4
  %143 = load %struct.saf1761_otg_softc*, %struct.saf1761_otg_softc** %4, align 8
  %144 = load i32, i32* %6, align 4
  %145 = load i32, i32* @SOTG_PTD_DW3, align 4
  %146 = add nsw i32 %144, %145
  %147 = load i32, i32* %7, align 4
  %148 = call i32 @SAF1761_WRITE_LE_4(%struct.saf1761_otg_softc* %143, i32 %146, i32 %147)
  %149 = load %struct.saf1761_otg_td*, %struct.saf1761_otg_td** %5, align 8
  %150 = getelementptr inbounds %struct.saf1761_otg_td, %struct.saf1761_otg_td* %149, i32 0, i32 0
  %151 = load i64, i64* %150, align 8
  %152 = call i32 @SOTG_DATA_ADDR(i64 %151)
  %153 = call i32 @SOTG_HC_MEMORY_ADDR(i32 %152)
  %154 = shl i32 %153, 8
  %155 = load %struct.saf1761_otg_td*, %struct.saf1761_otg_td** %5, align 8
  %156 = getelementptr inbounds %struct.saf1761_otg_td, %struct.saf1761_otg_td* %155, i32 0, i32 6
  %157 = load i32, i32* %156, align 4
  %158 = and i32 %157, 248
  %159 = or i32 %154, %158
  store i32 %159, i32* %7, align 4
  %160 = load %struct.saf1761_otg_softc*, %struct.saf1761_otg_softc** %4, align 8
  %161 = load i32, i32* %6, align 4
  %162 = load i32, i32* @SOTG_PTD_DW2, align 4
  %163 = add nsw i32 %161, %162
  %164 = load i32, i32* %7, align 4
  %165 = call i32 @SAF1761_WRITE_LE_4(%struct.saf1761_otg_softc* %160, i32 %163, i32 %164)
  %166 = load %struct.saf1761_otg_td*, %struct.saf1761_otg_td** %5, align 8
  %167 = getelementptr inbounds %struct.saf1761_otg_td, %struct.saf1761_otg_td* %166, i32 0, i32 1
  %168 = load i32, i32* %167, align 8
  %169 = or i32 %168, 1024
  %170 = load %struct.saf1761_otg_td*, %struct.saf1761_otg_td** %5, align 8
  %171 = getelementptr inbounds %struct.saf1761_otg_td, %struct.saf1761_otg_td* %170, i32 0, i32 7
  %172 = load i32, i32* %171, align 8
  %173 = ashr i32 %172, 1
  %174 = or i32 %169, %173
  store i32 %174, i32* %7, align 4
  %175 = load %struct.saf1761_otg_softc*, %struct.saf1761_otg_softc** %4, align 8
  %176 = load i32, i32* %6, align 4
  %177 = load i32, i32* @SOTG_PTD_DW1, align 4
  %178 = add nsw i32 %176, %177
  %179 = load i32, i32* %7, align 4
  %180 = call i32 @SAF1761_WRITE_LE_4(%struct.saf1761_otg_softc* %175, i32 %178, i32 %179)
  %181 = load %struct.saf1761_otg_td*, %struct.saf1761_otg_td** %5, align 8
  %182 = getelementptr inbounds %struct.saf1761_otg_td, %struct.saf1761_otg_td* %181, i32 0, i32 7
  %183 = load i32, i32* %182, align 8
  %184 = shl i32 %183, 31
  %185 = or i32 %184, 536870912
  %186 = load %struct.saf1761_otg_td*, %struct.saf1761_otg_td** %5, align 8
  %187 = getelementptr inbounds %struct.saf1761_otg_td, %struct.saf1761_otg_td* %186, i32 0, i32 2
  %188 = load i32, i32* %187, align 4
  %189 = shl i32 %188, 18
  %190 = or i32 %185, %189
  %191 = load %struct.saf1761_otg_td*, %struct.saf1761_otg_td** %5, align 8
  %192 = getelementptr inbounds %struct.saf1761_otg_td, %struct.saf1761_otg_td* %191, i32 0, i32 2
  %193 = load i32, i32* %192, align 4
  %194 = shl i32 %193, 3
  %195 = or i32 %190, %194
  %196 = load i32, i32* @SOTG_PTD_DW0_VALID, align 4
  %197 = or i32 %195, %196
  store i32 %197, i32* %7, align 4
  %198 = load %struct.saf1761_otg_softc*, %struct.saf1761_otg_softc** %4, align 8
  %199 = load i32, i32* %6, align 4
  %200 = load i32, i32* @SOTG_PTD_DW0, align 4
  %201 = add nsw i32 %199, %200
  %202 = load i32, i32* %7, align 4
  %203 = call i32 @SAF1761_WRITE_LE_4(%struct.saf1761_otg_softc* %198, i32 %201, i32 %202)
  %204 = load %struct.saf1761_otg_softc*, %struct.saf1761_otg_softc** %4, align 8
  %205 = load i32, i32* @SOTG_ISO_PTD_SKIP_PTD, align 4
  %206 = load %struct.saf1761_otg_softc*, %struct.saf1761_otg_softc** %4, align 8
  %207 = getelementptr inbounds %struct.saf1761_otg_softc, %struct.saf1761_otg_softc* %206, i32 0, i32 0
  %208 = load i32, i32* %207, align 4
  %209 = xor i32 %208, -1
  %210 = load %struct.saf1761_otg_softc*, %struct.saf1761_otg_softc** %4, align 8
  %211 = getelementptr inbounds %struct.saf1761_otg_softc, %struct.saf1761_otg_softc* %210, i32 0, i32 1
  %212 = load i32, i32* %211, align 4
  %213 = or i32 %209, %212
  %214 = call i32 @SAF1761_WRITE_LE_4(%struct.saf1761_otg_softc* %204, i32 %205, i32 %213)
  br label %215

215:                                              ; preds = %122, %92, %31
  store i32 1, i32* %3, align 4
  br label %220

216:                                              ; preds = %82, %79, %69, %37
  %217 = load %struct.saf1761_otg_softc*, %struct.saf1761_otg_softc** %4, align 8
  %218 = load %struct.saf1761_otg_td*, %struct.saf1761_otg_td** %5, align 8
  %219 = call i32 @saf1761_host_channel_free(%struct.saf1761_otg_softc* %217, %struct.saf1761_otg_td* %218)
  store i32 0, i32* %3, align 4
  br label %220

220:                                              ; preds = %216, %215
  %221 = load i32, i32* %3, align 4
  ret i32 %221
}

declare dso_local i32 @SOTG_PTD(i64) #1

declare dso_local i32 @saf1761_peek_host_status_le_4(%struct.saf1761_otg_softc*, i32) #1

declare dso_local i32 @DPRINTFN(i32, i8*, i32) #1

declare dso_local i32 @saf1761_read_host_memory(%struct.saf1761_otg_softc*, %struct.saf1761_otg_td*, i32) #1

declare dso_local i64 @saf1761_host_channel_alloc(%struct.saf1761_otg_softc*, %struct.saf1761_otg_td*) #1

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
