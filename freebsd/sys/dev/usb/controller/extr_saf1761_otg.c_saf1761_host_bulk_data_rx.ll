; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/controller/extr_saf1761_otg.c_saf1761_host_bulk_data_rx.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/controller/extr_saf1761_otg.c_saf1761_host_bulk_data_rx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.saf1761_otg_softc = type { i32, i32 }
%struct.saf1761_otg_td = type { i64, i32, i32, i32, i32, i32, i32, i32, i32, i64 }

@SOTG_HOST_CHANNEL_MAX = common dso_local global i64 0, align 8
@SOTG_PTD_DW3 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"STATUS=0x%08x\0A\00", align 1
@SOTG_PTD_DW3_ACTIVE = common dso_local global i32 0, align 4
@SOTG_PTD_DW0 = common dso_local global i32 0, align 4
@SOTG_PTD_DW0_VALID = common dso_local global i32 0, align 4
@SOTG_PTD_DW3_HALTED = common dso_local global i32 0, align 4
@SOTG_PTD_DW3_ERRORS = common dso_local global i32 0, align 4
@SOTG_PTD_DW1_ENABLE_SPLIT = common dso_local global i32 0, align 4
@SOTG_PTD_DW3_XFER_COUNT_SPLIT = common dso_local global i32 0, align 4
@SOTG_PTD_DW3_XFER_COUNT_HS = common dso_local global i32 0, align 4
@SOTG_PTD_DW7 = common dso_local global i32 0, align 4
@SOTG_PTD_DW6 = common dso_local global i32 0, align 4
@SOTG_PTD_DW5 = common dso_local global i32 0, align 4
@SOTG_PTD_DW4 = common dso_local global i32 0, align 4
@SOTG_PTD_DW3_CERR_2 = common dso_local global i32 0, align 4
@SOTG_PTD_DW2 = common dso_local global i32 0, align 4
@SOTG_PTD_DW1 = common dso_local global i32 0, align 4
@SOTG_ATL_PTD_SKIP_PTD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.saf1761_otg_softc*, %struct.saf1761_otg_td*)* @saf1761_host_bulk_data_rx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @saf1761_host_bulk_data_rx(%struct.saf1761_otg_softc* %0, %struct.saf1761_otg_td* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.saf1761_otg_softc*, align 8
  %5 = alloca %struct.saf1761_otg_td*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.saf1761_otg_softc* %0, %struct.saf1761_otg_softc** %4, align 8
  store %struct.saf1761_otg_td* %1, %struct.saf1761_otg_td** %5, align 8
  %11 = load %struct.saf1761_otg_td*, %struct.saf1761_otg_td** %5, align 8
  %12 = getelementptr inbounds %struct.saf1761_otg_td, %struct.saf1761_otg_td* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @SOTG_HOST_CHANNEL_MAX, align 8
  %15 = icmp slt i64 %13, %14
  br i1 %15, label %16, label %163

16:                                               ; preds = %2
  %17 = load %struct.saf1761_otg_td*, %struct.saf1761_otg_td** %5, align 8
  %18 = getelementptr inbounds %struct.saf1761_otg_td, %struct.saf1761_otg_td* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = call i32 @SOTG_PTD(i64 %19)
  store i32 %20, i32* %6, align 4
  %21 = load %struct.saf1761_otg_softc*, %struct.saf1761_otg_softc** %4, align 8
  %22 = load i32, i32* %6, align 4
  %23 = load i32, i32* @SOTG_PTD_DW3, align 4
  %24 = add nsw i32 %22, %23
  %25 = call i32 @saf1761_peek_host_status_le_4(%struct.saf1761_otg_softc* %21, i32 %24)
  store i32 %25, i32* %8, align 4
  %26 = load i32, i32* %8, align 4
  %27 = call i32 @DPRINTFN(i32 5, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %26)
  %28 = load i32, i32* %8, align 4
  %29 = load i32, i32* @SOTG_PTD_DW3_ACTIVE, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %76

32:                                               ; preds = %16
  %33 = load %struct.saf1761_otg_softc*, %struct.saf1761_otg_softc** %4, align 8
  %34 = load i32, i32* %6, align 4
  %35 = load i32, i32* @SOTG_PTD_DW0, align 4
  %36 = add nsw i32 %34, %35
  %37 = call i32 @saf1761_peek_host_status_le_4(%struct.saf1761_otg_softc* %33, i32 %36)
  store i32 %37, i32* %7, align 4
  %38 = load i32, i32* %7, align 4
  %39 = load i32, i32* @SOTG_PTD_DW0_VALID, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %32
  br label %280

43:                                               ; preds = %32
  %44 = load %struct.saf1761_otg_softc*, %struct.saf1761_otg_softc** %4, align 8
  %45 = load i32, i32* %6, align 4
  %46 = load i32, i32* @SOTG_PTD_DW3, align 4
  %47 = add nsw i32 %45, %46
  %48 = call i32 @saf1761_peek_host_status_le_4(%struct.saf1761_otg_softc* %44, i32 %47)
  store i32 %48, i32* %8, align 4
  %49 = load i32, i32* %8, align 4
  %50 = load i32, i32* @SOTG_PTD_DW3_ACTIVE, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %43
  %54 = load %struct.saf1761_otg_softc*, %struct.saf1761_otg_softc** %4, align 8
  %55 = load %struct.saf1761_otg_td*, %struct.saf1761_otg_td** %5, align 8
  %56 = call i32 @saf1761_host_channel_free(%struct.saf1761_otg_softc* %54, %struct.saf1761_otg_td* %55)
  br label %164

57:                                               ; preds = %43
  %58 = load i32, i32* %8, align 4
  %59 = load i32, i32* @SOTG_PTD_DW3_HALTED, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %73

62:                                               ; preds = %57
  %63 = load i32, i32* %8, align 4
  %64 = load i32, i32* @SOTG_PTD_DW3_ERRORS, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %70, label %67

67:                                               ; preds = %62
  %68 = load %struct.saf1761_otg_td*, %struct.saf1761_otg_td** %5, align 8
  %69 = getelementptr inbounds %struct.saf1761_otg_td, %struct.saf1761_otg_td* %68, i32 0, i32 1
  store i32 1, i32* %69, align 8
  br label %70

70:                                               ; preds = %67, %62
  %71 = load %struct.saf1761_otg_td*, %struct.saf1761_otg_td** %5, align 8
  %72 = getelementptr inbounds %struct.saf1761_otg_td, %struct.saf1761_otg_td* %71, i32 0, i32 2
  store i32 1, i32* %72, align 4
  br label %281

73:                                               ; preds = %57
  br label %74

74:                                               ; preds = %73
  br label %75

75:                                               ; preds = %74
  br label %93

76:                                               ; preds = %16
  %77 = load i32, i32* %8, align 4
  %78 = load i32, i32* @SOTG_PTD_DW3_HALTED, align 4
  %79 = and i32 %77, %78
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %92

81:                                               ; preds = %76
  %82 = load i32, i32* %8, align 4
  %83 = load i32, i32* @SOTG_PTD_DW3_ERRORS, align 4
  %84 = and i32 %82, %83
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %89, label %86

86:                                               ; preds = %81
  %87 = load %struct.saf1761_otg_td*, %struct.saf1761_otg_td** %5, align 8
  %88 = getelementptr inbounds %struct.saf1761_otg_td, %struct.saf1761_otg_td* %87, i32 0, i32 1
  store i32 1, i32* %88, align 8
  br label %89

89:                                               ; preds = %86, %81
  %90 = load %struct.saf1761_otg_td*, %struct.saf1761_otg_td** %5, align 8
  %91 = getelementptr inbounds %struct.saf1761_otg_td, %struct.saf1761_otg_td* %90, i32 0, i32 2
  store i32 1, i32* %91, align 4
  br label %281

92:                                               ; preds = %76
  br label %93

93:                                               ; preds = %92, %75
  %94 = load %struct.saf1761_otg_td*, %struct.saf1761_otg_td** %5, align 8
  %95 = getelementptr inbounds %struct.saf1761_otg_td, %struct.saf1761_otg_td* %94, i32 0, i32 3
  %96 = load i32, i32* %95, align 8
  %97 = load i32, i32* @SOTG_PTD_DW1_ENABLE_SPLIT, align 4
  %98 = and i32 %96, %97
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %104

100:                                              ; preds = %93
  %101 = load i32, i32* %8, align 4
  %102 = load i32, i32* @SOTG_PTD_DW3_XFER_COUNT_SPLIT, align 4
  %103 = and i32 %101, %102
  store i32 %103, i32* %9, align 4
  br label %108

104:                                              ; preds = %93
  %105 = load i32, i32* %8, align 4
  %106 = load i32, i32* @SOTG_PTD_DW3_XFER_COUNT_HS, align 4
  %107 = and i32 %105, %106
  store i32 %107, i32* %9, align 4
  br label %108

108:                                              ; preds = %104, %100
  store i32 0, i32* %10, align 4
  %109 = load i32, i32* %9, align 4
  %110 = load %struct.saf1761_otg_td*, %struct.saf1761_otg_td** %5, align 8
  %111 = getelementptr inbounds %struct.saf1761_otg_td, %struct.saf1761_otg_td* %110, i32 0, i32 4
  %112 = load i32, i32* %111, align 4
  %113 = icmp ne i32 %109, %112
  br i1 %113, label %114, label %127

114:                                              ; preds = %108
  %115 = load i32, i32* %9, align 4
  %116 = load %struct.saf1761_otg_td*, %struct.saf1761_otg_td** %5, align 8
  %117 = getelementptr inbounds %struct.saf1761_otg_td, %struct.saf1761_otg_td* %116, i32 0, i32 4
  %118 = load i32, i32* %117, align 4
  %119 = icmp slt i32 %115, %118
  br i1 %119, label %120, label %123

120:                                              ; preds = %114
  %121 = load %struct.saf1761_otg_td*, %struct.saf1761_otg_td** %5, align 8
  %122 = getelementptr inbounds %struct.saf1761_otg_td, %struct.saf1761_otg_td* %121, i32 0, i32 5
  store i32 1, i32* %122, align 8
  store i32 1, i32* %10, align 4
  br label %126

123:                                              ; preds = %114
  %124 = load %struct.saf1761_otg_td*, %struct.saf1761_otg_td** %5, align 8
  %125 = getelementptr inbounds %struct.saf1761_otg_td, %struct.saf1761_otg_td* %124, i32 0, i32 2
  store i32 1, i32* %125, align 4
  br label %281

126:                                              ; preds = %120
  br label %127

127:                                              ; preds = %126, %108
  %128 = load %struct.saf1761_otg_td*, %struct.saf1761_otg_td** %5, align 8
  %129 = getelementptr inbounds %struct.saf1761_otg_td, %struct.saf1761_otg_td* %128, i32 0, i32 6
  %130 = load i32, i32* %129, align 4
  %131 = xor i32 %130, 1
  store i32 %131, i32* %129, align 4
  %132 = load i32, i32* %9, align 4
  %133 = load %struct.saf1761_otg_td*, %struct.saf1761_otg_td** %5, align 8
  %134 = getelementptr inbounds %struct.saf1761_otg_td, %struct.saf1761_otg_td* %133, i32 0, i32 7
  %135 = load i32, i32* %134, align 8
  %136 = icmp sgt i32 %132, %135
  br i1 %136, label %137, label %140

137:                                              ; preds = %127
  %138 = load %struct.saf1761_otg_td*, %struct.saf1761_otg_td** %5, align 8
  %139 = getelementptr inbounds %struct.saf1761_otg_td, %struct.saf1761_otg_td* %138, i32 0, i32 2
  store i32 1, i32* %139, align 4
  br label %281

140:                                              ; preds = %127
  %141 = load %struct.saf1761_otg_softc*, %struct.saf1761_otg_softc** %4, align 8
  %142 = load %struct.saf1761_otg_td*, %struct.saf1761_otg_td** %5, align 8
  %143 = load i32, i32* %9, align 4
  %144 = call i32 @saf1761_read_host_memory(%struct.saf1761_otg_softc* %141, %struct.saf1761_otg_td* %142, i32 %143)
  %145 = load %struct.saf1761_otg_td*, %struct.saf1761_otg_td** %5, align 8
  %146 = getelementptr inbounds %struct.saf1761_otg_td, %struct.saf1761_otg_td* %145, i32 0, i32 7
  %147 = load i32, i32* %146, align 8
  %148 = icmp eq i32 %147, 0
  br i1 %148, label %152, label %149

149:                                              ; preds = %140
  %150 = load i32, i32* %10, align 4
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %159

152:                                              ; preds = %149, %140
  %153 = load %struct.saf1761_otg_td*, %struct.saf1761_otg_td** %5, align 8
  %154 = getelementptr inbounds %struct.saf1761_otg_td, %struct.saf1761_otg_td* %153, i32 0, i32 5
  %155 = load i32, i32* %154, align 8
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %158

157:                                              ; preds = %152
  br label %281

158:                                              ; preds = %152
  br label %159

159:                                              ; preds = %158, %149
  %160 = load %struct.saf1761_otg_softc*, %struct.saf1761_otg_softc** %4, align 8
  %161 = load %struct.saf1761_otg_td*, %struct.saf1761_otg_td** %5, align 8
  %162 = call i32 @saf1761_host_channel_free(%struct.saf1761_otg_softc* %160, %struct.saf1761_otg_td* %161)
  br label %163

163:                                              ; preds = %159, %2
  br label %164

164:                                              ; preds = %163, %53
  %165 = load %struct.saf1761_otg_softc*, %struct.saf1761_otg_softc** %4, align 8
  %166 = load %struct.saf1761_otg_td*, %struct.saf1761_otg_td** %5, align 8
  %167 = call i64 @saf1761_host_channel_alloc(%struct.saf1761_otg_softc* %165, %struct.saf1761_otg_td* %166)
  %168 = icmp ne i64 %167, 0
  br i1 %168, label %169, label %170

169:                                              ; preds = %164
  br label %280

170:                                              ; preds = %164
  %171 = load %struct.saf1761_otg_td*, %struct.saf1761_otg_td** %5, align 8
  %172 = getelementptr inbounds %struct.saf1761_otg_td, %struct.saf1761_otg_td* %171, i32 0, i32 9
  %173 = load i64, i64* %172, align 8
  %174 = icmp ne i64 %173, 0
  br i1 %174, label %175, label %180

175:                                              ; preds = %170
  %176 = load %struct.saf1761_otg_td*, %struct.saf1761_otg_td** %5, align 8
  %177 = getelementptr inbounds %struct.saf1761_otg_td, %struct.saf1761_otg_td* %176, i32 0, i32 9
  store i64 0, i64* %177, align 8
  %178 = load %struct.saf1761_otg_td*, %struct.saf1761_otg_td** %5, align 8
  %179 = getelementptr inbounds %struct.saf1761_otg_td, %struct.saf1761_otg_td* %178, i32 0, i32 6
  store i32 1, i32* %179, align 4
  br label %180

180:                                              ; preds = %175, %170
  %181 = load %struct.saf1761_otg_td*, %struct.saf1761_otg_td** %5, align 8
  %182 = getelementptr inbounds %struct.saf1761_otg_td, %struct.saf1761_otg_td* %181, i32 0, i32 0
  %183 = load i64, i64* %182, align 8
  %184 = call i32 @SOTG_PTD(i64 %183)
  store i32 %184, i32* %6, align 4
  %185 = load %struct.saf1761_otg_softc*, %struct.saf1761_otg_softc** %4, align 8
  %186 = load i32, i32* %6, align 4
  %187 = load i32, i32* @SOTG_PTD_DW7, align 4
  %188 = add nsw i32 %186, %187
  %189 = call i32 @SAF1761_WRITE_LE_4(%struct.saf1761_otg_softc* %185, i32 %188, i32 0)
  %190 = load %struct.saf1761_otg_softc*, %struct.saf1761_otg_softc** %4, align 8
  %191 = load i32, i32* %6, align 4
  %192 = load i32, i32* @SOTG_PTD_DW6, align 4
  %193 = add nsw i32 %191, %192
  %194 = call i32 @SAF1761_WRITE_LE_4(%struct.saf1761_otg_softc* %190, i32 %193, i32 0)
  %195 = load %struct.saf1761_otg_softc*, %struct.saf1761_otg_softc** %4, align 8
  %196 = load i32, i32* %6, align 4
  %197 = load i32, i32* @SOTG_PTD_DW5, align 4
  %198 = add nsw i32 %196, %197
  %199 = call i32 @SAF1761_WRITE_LE_4(%struct.saf1761_otg_softc* %195, i32 %198, i32 0)
  %200 = load %struct.saf1761_otg_softc*, %struct.saf1761_otg_softc** %4, align 8
  %201 = load i32, i32* %6, align 4
  %202 = load i32, i32* @SOTG_PTD_DW4, align 4
  %203 = add nsw i32 %201, %202
  %204 = call i32 @SAF1761_WRITE_LE_4(%struct.saf1761_otg_softc* %200, i32 %203, i32 0)
  %205 = load i32, i32* @SOTG_PTD_DW3_ACTIVE, align 4
  %206 = load %struct.saf1761_otg_td*, %struct.saf1761_otg_td** %5, align 8
  %207 = getelementptr inbounds %struct.saf1761_otg_td, %struct.saf1761_otg_td* %206, i32 0, i32 6
  %208 = load i32, i32* %207, align 4
  %209 = shl i32 %208, 25
  %210 = or i32 %205, %209
  %211 = load i32, i32* @SOTG_PTD_DW3_CERR_2, align 4
  %212 = or i32 %210, %211
  store i32 %212, i32* %7, align 4
  %213 = load %struct.saf1761_otg_softc*, %struct.saf1761_otg_softc** %4, align 8
  %214 = load i32, i32* %6, align 4
  %215 = load i32, i32* @SOTG_PTD_DW3, align 4
  %216 = add nsw i32 %214, %215
  %217 = load i32, i32* %7, align 4
  %218 = call i32 @SAF1761_WRITE_LE_4(%struct.saf1761_otg_softc* %213, i32 %216, i32 %217)
  %219 = load %struct.saf1761_otg_td*, %struct.saf1761_otg_td** %5, align 8
  %220 = getelementptr inbounds %struct.saf1761_otg_td, %struct.saf1761_otg_td* %219, i32 0, i32 0
  %221 = load i64, i64* %220, align 8
  %222 = call i32 @SOTG_DATA_ADDR(i64 %221)
  %223 = call i32 @SOTG_HC_MEMORY_ADDR(i32 %222)
  %224 = shl i32 %223, 8
  store i32 %224, i32* %7, align 4
  %225 = load %struct.saf1761_otg_softc*, %struct.saf1761_otg_softc** %4, align 8
  %226 = load i32, i32* %6, align 4
  %227 = load i32, i32* @SOTG_PTD_DW2, align 4
  %228 = add nsw i32 %226, %227
  %229 = load i32, i32* %7, align 4
  %230 = call i32 @SAF1761_WRITE_LE_4(%struct.saf1761_otg_softc* %225, i32 %228, i32 %229)
  %231 = load %struct.saf1761_otg_td*, %struct.saf1761_otg_td** %5, align 8
  %232 = getelementptr inbounds %struct.saf1761_otg_td, %struct.saf1761_otg_td* %231, i32 0, i32 3
  %233 = load i32, i32* %232, align 8
  %234 = or i32 %233, 1024
  %235 = load %struct.saf1761_otg_td*, %struct.saf1761_otg_td** %5, align 8
  %236 = getelementptr inbounds %struct.saf1761_otg_td, %struct.saf1761_otg_td* %235, i32 0, i32 8
  %237 = load i32, i32* %236, align 4
  %238 = ashr i32 %237, 1
  %239 = or i32 %234, %238
  store i32 %239, i32* %7, align 4
  %240 = load %struct.saf1761_otg_softc*, %struct.saf1761_otg_softc** %4, align 8
  %241 = load i32, i32* %6, align 4
  %242 = load i32, i32* @SOTG_PTD_DW1, align 4
  %243 = add nsw i32 %241, %242
  %244 = load i32, i32* %7, align 4
  %245 = call i32 @SAF1761_WRITE_LE_4(%struct.saf1761_otg_softc* %240, i32 %243, i32 %244)
  %246 = load %struct.saf1761_otg_td*, %struct.saf1761_otg_td** %5, align 8
  %247 = getelementptr inbounds %struct.saf1761_otg_td, %struct.saf1761_otg_td* %246, i32 0, i32 8
  %248 = load i32, i32* %247, align 4
  %249 = shl i32 %248, 31
  %250 = or i32 %249, 536870912
  %251 = load %struct.saf1761_otg_td*, %struct.saf1761_otg_td** %5, align 8
  %252 = getelementptr inbounds %struct.saf1761_otg_td, %struct.saf1761_otg_td* %251, i32 0, i32 4
  %253 = load i32, i32* %252, align 4
  %254 = shl i32 %253, 18
  %255 = or i32 %250, %254
  %256 = load %struct.saf1761_otg_td*, %struct.saf1761_otg_td** %5, align 8
  %257 = getelementptr inbounds %struct.saf1761_otg_td, %struct.saf1761_otg_td* %256, i32 0, i32 4
  %258 = load i32, i32* %257, align 4
  %259 = shl i32 %258, 3
  %260 = or i32 %255, %259
  %261 = load i32, i32* @SOTG_PTD_DW0_VALID, align 4
  %262 = or i32 %260, %261
  store i32 %262, i32* %7, align 4
  %263 = load %struct.saf1761_otg_softc*, %struct.saf1761_otg_softc** %4, align 8
  %264 = load i32, i32* %6, align 4
  %265 = load i32, i32* @SOTG_PTD_DW0, align 4
  %266 = add nsw i32 %264, %265
  %267 = load i32, i32* %7, align 4
  %268 = call i32 @SAF1761_WRITE_LE_4(%struct.saf1761_otg_softc* %263, i32 %266, i32 %267)
  %269 = load %struct.saf1761_otg_softc*, %struct.saf1761_otg_softc** %4, align 8
  %270 = load i32, i32* @SOTG_ATL_PTD_SKIP_PTD, align 4
  %271 = load %struct.saf1761_otg_softc*, %struct.saf1761_otg_softc** %4, align 8
  %272 = getelementptr inbounds %struct.saf1761_otg_softc, %struct.saf1761_otg_softc* %271, i32 0, i32 0
  %273 = load i32, i32* %272, align 4
  %274 = xor i32 %273, -1
  %275 = load %struct.saf1761_otg_softc*, %struct.saf1761_otg_softc** %4, align 8
  %276 = getelementptr inbounds %struct.saf1761_otg_softc, %struct.saf1761_otg_softc* %275, i32 0, i32 1
  %277 = load i32, i32* %276, align 4
  %278 = or i32 %274, %277
  %279 = call i32 @SAF1761_WRITE_LE_4(%struct.saf1761_otg_softc* %269, i32 %270, i32 %278)
  br label %280

280:                                              ; preds = %180, %169, %42
  store i32 1, i32* %3, align 4
  br label %285

281:                                              ; preds = %157, %137, %123, %89, %70
  %282 = load %struct.saf1761_otg_softc*, %struct.saf1761_otg_softc** %4, align 8
  %283 = load %struct.saf1761_otg_td*, %struct.saf1761_otg_td** %5, align 8
  %284 = call i32 @saf1761_host_channel_free(%struct.saf1761_otg_softc* %282, %struct.saf1761_otg_td* %283)
  store i32 0, i32* %3, align 4
  br label %285

285:                                              ; preds = %281, %280
  %286 = load i32, i32* %3, align 4
  ret i32 %286
}

declare dso_local i32 @SOTG_PTD(i64) #1

declare dso_local i32 @saf1761_peek_host_status_le_4(%struct.saf1761_otg_softc*, i32) #1

declare dso_local i32 @DPRINTFN(i32, i8*, i32) #1

declare dso_local i32 @saf1761_host_channel_free(%struct.saf1761_otg_softc*, %struct.saf1761_otg_td*) #1

declare dso_local i32 @saf1761_read_host_memory(%struct.saf1761_otg_softc*, %struct.saf1761_otg_td*, i32) #1

declare dso_local i64 @saf1761_host_channel_alloc(%struct.saf1761_otg_softc*, %struct.saf1761_otg_td*) #1

declare dso_local i32 @SAF1761_WRITE_LE_4(%struct.saf1761_otg_softc*, i32, i32) #1

declare dso_local i32 @SOTG_HC_MEMORY_ADDR(i32) #1

declare dso_local i32 @SOTG_DATA_ADDR(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
