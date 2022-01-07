; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/controller/extr_saf1761_otg.c_saf1761_host_intr_data_rx.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/controller/extr_saf1761_otg.c_saf1761_host_intr_data_rx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.saf1761_otg_softc = type { i32, i32 }
%struct.saf1761_otg_td = type { i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64 }

@SOTG_HOST_CHANNEL_MAX = common dso_local global i64 0, align 8
@SOTG_PTD_DW3 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"STATUS=0x%08x\0A\00", align 1
@SOTG_PTD_DW3_ACTIVE = common dso_local global i32 0, align 4
@SOTG_PTD_DW3_HALTED = common dso_local global i32 0, align 4
@SOTG_PTD_DW3_ERRORS = common dso_local global i32 0, align 4
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
@SOTG_INT_PTD_SKIP_PTD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.saf1761_otg_softc*, %struct.saf1761_otg_td*)* @saf1761_host_intr_data_rx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @saf1761_host_intr_data_rx(%struct.saf1761_otg_softc* %0, %struct.saf1761_otg_td* %1) #0 {
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
  br i1 %15, label %16, label %120

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
  br i1 %31, label %32, label %33

32:                                               ; preds = %16
  br label %261

33:                                               ; preds = %16
  %34 = load i32, i32* %8, align 4
  %35 = load i32, i32* @SOTG_PTD_DW3_HALTED, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %49

38:                                               ; preds = %33
  %39 = load i32, i32* %8, align 4
  %40 = load i32, i32* @SOTG_PTD_DW3_ERRORS, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %46, label %43

43:                                               ; preds = %38
  %44 = load %struct.saf1761_otg_td*, %struct.saf1761_otg_td** %5, align 8
  %45 = getelementptr inbounds %struct.saf1761_otg_td, %struct.saf1761_otg_td* %44, i32 0, i32 1
  store i32 1, i32* %45, align 8
  br label %46

46:                                               ; preds = %43, %38
  %47 = load %struct.saf1761_otg_td*, %struct.saf1761_otg_td** %5, align 8
  %48 = getelementptr inbounds %struct.saf1761_otg_td, %struct.saf1761_otg_td* %47, i32 0, i32 2
  store i32 1, i32* %48, align 4
  br label %262

49:                                               ; preds = %33
  br label %50

50:                                               ; preds = %49
  %51 = load %struct.saf1761_otg_td*, %struct.saf1761_otg_td** %5, align 8
  %52 = getelementptr inbounds %struct.saf1761_otg_td, %struct.saf1761_otg_td* %51, i32 0, i32 3
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* @SOTG_PTD_DW1_ENABLE_SPLIT, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %50
  %58 = load i32, i32* %8, align 4
  %59 = load i32, i32* @SOTG_PTD_DW3_XFER_COUNT_SPLIT, align 4
  %60 = and i32 %58, %59
  store i32 %60, i32* %9, align 4
  br label %65

61:                                               ; preds = %50
  %62 = load i32, i32* %8, align 4
  %63 = load i32, i32* @SOTG_PTD_DW3_XFER_COUNT_HS, align 4
  %64 = and i32 %62, %63
  store i32 %64, i32* %9, align 4
  br label %65

65:                                               ; preds = %61, %57
  store i32 0, i32* %10, align 4
  %66 = load i32, i32* %9, align 4
  %67 = load %struct.saf1761_otg_td*, %struct.saf1761_otg_td** %5, align 8
  %68 = getelementptr inbounds %struct.saf1761_otg_td, %struct.saf1761_otg_td* %67, i32 0, i32 4
  %69 = load i32, i32* %68, align 4
  %70 = icmp ne i32 %66, %69
  br i1 %70, label %71, label %84

71:                                               ; preds = %65
  %72 = load i32, i32* %9, align 4
  %73 = load %struct.saf1761_otg_td*, %struct.saf1761_otg_td** %5, align 8
  %74 = getelementptr inbounds %struct.saf1761_otg_td, %struct.saf1761_otg_td* %73, i32 0, i32 4
  %75 = load i32, i32* %74, align 4
  %76 = icmp slt i32 %72, %75
  br i1 %76, label %77, label %80

77:                                               ; preds = %71
  %78 = load %struct.saf1761_otg_td*, %struct.saf1761_otg_td** %5, align 8
  %79 = getelementptr inbounds %struct.saf1761_otg_td, %struct.saf1761_otg_td* %78, i32 0, i32 5
  store i32 1, i32* %79, align 8
  store i32 1, i32* %10, align 4
  br label %83

80:                                               ; preds = %71
  %81 = load %struct.saf1761_otg_td*, %struct.saf1761_otg_td** %5, align 8
  %82 = getelementptr inbounds %struct.saf1761_otg_td, %struct.saf1761_otg_td* %81, i32 0, i32 2
  store i32 1, i32* %82, align 4
  br label %262

83:                                               ; preds = %77
  br label %84

84:                                               ; preds = %83, %65
  %85 = load %struct.saf1761_otg_td*, %struct.saf1761_otg_td** %5, align 8
  %86 = getelementptr inbounds %struct.saf1761_otg_td, %struct.saf1761_otg_td* %85, i32 0, i32 6
  %87 = load i32, i32* %86, align 4
  %88 = xor i32 %87, 1
  store i32 %88, i32* %86, align 4
  %89 = load i32, i32* %9, align 4
  %90 = load %struct.saf1761_otg_td*, %struct.saf1761_otg_td** %5, align 8
  %91 = getelementptr inbounds %struct.saf1761_otg_td, %struct.saf1761_otg_td* %90, i32 0, i32 7
  %92 = load i32, i32* %91, align 8
  %93 = icmp sgt i32 %89, %92
  br i1 %93, label %94, label %97

94:                                               ; preds = %84
  %95 = load %struct.saf1761_otg_td*, %struct.saf1761_otg_td** %5, align 8
  %96 = getelementptr inbounds %struct.saf1761_otg_td, %struct.saf1761_otg_td* %95, i32 0, i32 2
  store i32 1, i32* %96, align 4
  br label %262

97:                                               ; preds = %84
  %98 = load %struct.saf1761_otg_softc*, %struct.saf1761_otg_softc** %4, align 8
  %99 = load %struct.saf1761_otg_td*, %struct.saf1761_otg_td** %5, align 8
  %100 = load i32, i32* %9, align 4
  %101 = call i32 @saf1761_read_host_memory(%struct.saf1761_otg_softc* %98, %struct.saf1761_otg_td* %99, i32 %100)
  %102 = load %struct.saf1761_otg_td*, %struct.saf1761_otg_td** %5, align 8
  %103 = getelementptr inbounds %struct.saf1761_otg_td, %struct.saf1761_otg_td* %102, i32 0, i32 7
  %104 = load i32, i32* %103, align 8
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %109, label %106

106:                                              ; preds = %97
  %107 = load i32, i32* %10, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %116

109:                                              ; preds = %106, %97
  %110 = load %struct.saf1761_otg_td*, %struct.saf1761_otg_td** %5, align 8
  %111 = getelementptr inbounds %struct.saf1761_otg_td, %struct.saf1761_otg_td* %110, i32 0, i32 5
  %112 = load i32, i32* %111, align 8
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %115

114:                                              ; preds = %109
  br label %262

115:                                              ; preds = %109
  br label %116

116:                                              ; preds = %115, %106
  %117 = load %struct.saf1761_otg_softc*, %struct.saf1761_otg_softc** %4, align 8
  %118 = load %struct.saf1761_otg_td*, %struct.saf1761_otg_td** %5, align 8
  %119 = call i32 @saf1761_host_channel_free(%struct.saf1761_otg_softc* %117, %struct.saf1761_otg_td* %118)
  br label %120

120:                                              ; preds = %116, %2
  %121 = load %struct.saf1761_otg_softc*, %struct.saf1761_otg_softc** %4, align 8
  %122 = load %struct.saf1761_otg_td*, %struct.saf1761_otg_td** %5, align 8
  %123 = call i64 @saf1761_host_channel_alloc(%struct.saf1761_otg_softc* %121, %struct.saf1761_otg_td* %122)
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %126

125:                                              ; preds = %120
  br label %261

126:                                              ; preds = %120
  %127 = load %struct.saf1761_otg_td*, %struct.saf1761_otg_td** %5, align 8
  %128 = getelementptr inbounds %struct.saf1761_otg_td, %struct.saf1761_otg_td* %127, i32 0, i32 11
  %129 = load i64, i64* %128, align 8
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %136

131:                                              ; preds = %126
  %132 = load %struct.saf1761_otg_td*, %struct.saf1761_otg_td** %5, align 8
  %133 = getelementptr inbounds %struct.saf1761_otg_td, %struct.saf1761_otg_td* %132, i32 0, i32 11
  store i64 0, i64* %133, align 8
  %134 = load %struct.saf1761_otg_td*, %struct.saf1761_otg_td** %5, align 8
  %135 = getelementptr inbounds %struct.saf1761_otg_td, %struct.saf1761_otg_td* %134, i32 0, i32 6
  store i32 1, i32* %135, align 4
  br label %136

136:                                              ; preds = %131, %126
  %137 = load %struct.saf1761_otg_td*, %struct.saf1761_otg_td** %5, align 8
  %138 = getelementptr inbounds %struct.saf1761_otg_td, %struct.saf1761_otg_td* %137, i32 0, i32 0
  %139 = load i64, i64* %138, align 8
  %140 = call i32 @SOTG_PTD(i64 %139)
  store i32 %140, i32* %6, align 4
  %141 = load %struct.saf1761_otg_softc*, %struct.saf1761_otg_softc** %4, align 8
  %142 = load i32, i32* %6, align 4
  %143 = load i32, i32* @SOTG_PTD_DW7, align 4
  %144 = add nsw i32 %142, %143
  %145 = call i32 @SAF1761_WRITE_LE_4(%struct.saf1761_otg_softc* %141, i32 %144, i32 0)
  %146 = load %struct.saf1761_otg_softc*, %struct.saf1761_otg_softc** %4, align 8
  %147 = load i32, i32* %6, align 4
  %148 = load i32, i32* @SOTG_PTD_DW6, align 4
  %149 = add nsw i32 %147, %148
  %150 = call i32 @SAF1761_WRITE_LE_4(%struct.saf1761_otg_softc* %146, i32 %149, i32 0)
  %151 = load %struct.saf1761_otg_td*, %struct.saf1761_otg_td** %5, align 8
  %152 = getelementptr inbounds %struct.saf1761_otg_td, %struct.saf1761_otg_td* %151, i32 0, i32 3
  %153 = load i32, i32* %152, align 8
  %154 = load i32, i32* @SOTG_PTD_DW1_ENABLE_SPLIT, align 4
  %155 = and i32 %153, %154
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %163

157:                                              ; preds = %136
  %158 = load %struct.saf1761_otg_td*, %struct.saf1761_otg_td** %5, align 8
  %159 = getelementptr inbounds %struct.saf1761_otg_td, %struct.saf1761_otg_td* %158, i32 0, i32 8
  %160 = load i32, i32* %159, align 4
  %161 = shl i32 252, %160
  %162 = and i32 %161, 255
  store i32 %162, i32* %7, align 4
  br label %164

163:                                              ; preds = %136
  store i32 0, i32* %7, align 4
  br label %164

164:                                              ; preds = %163, %157
  %165 = load %struct.saf1761_otg_softc*, %struct.saf1761_otg_softc** %4, align 8
  %166 = load i32, i32* %6, align 4
  %167 = load i32, i32* @SOTG_PTD_DW5, align 4
  %168 = add nsw i32 %166, %167
  %169 = load i32, i32* %7, align 4
  %170 = call i32 @SAF1761_WRITE_LE_4(%struct.saf1761_otg_softc* %165, i32 %168, i32 %169)
  %171 = load %struct.saf1761_otg_td*, %struct.saf1761_otg_td** %5, align 8
  %172 = getelementptr inbounds %struct.saf1761_otg_td, %struct.saf1761_otg_td* %171, i32 0, i32 8
  %173 = load i32, i32* %172, align 4
  %174 = shl i32 1, %173
  store i32 %174, i32* %7, align 4
  %175 = load %struct.saf1761_otg_softc*, %struct.saf1761_otg_softc** %4, align 8
  %176 = load i32, i32* %6, align 4
  %177 = load i32, i32* @SOTG_PTD_DW4, align 4
  %178 = add nsw i32 %176, %177
  %179 = load i32, i32* %7, align 4
  %180 = call i32 @SAF1761_WRITE_LE_4(%struct.saf1761_otg_softc* %175, i32 %178, i32 %179)
  %181 = load i32, i32* @SOTG_PTD_DW3_ACTIVE, align 4
  %182 = load %struct.saf1761_otg_td*, %struct.saf1761_otg_td** %5, align 8
  %183 = getelementptr inbounds %struct.saf1761_otg_td, %struct.saf1761_otg_td* %182, i32 0, i32 6
  %184 = load i32, i32* %183, align 4
  %185 = shl i32 %184, 25
  %186 = or i32 %181, %185
  %187 = load i32, i32* @SOTG_PTD_DW3_CERR_3, align 4
  %188 = or i32 %186, %187
  store i32 %188, i32* %7, align 4
  %189 = load %struct.saf1761_otg_softc*, %struct.saf1761_otg_softc** %4, align 8
  %190 = load i32, i32* %6, align 4
  %191 = load i32, i32* @SOTG_PTD_DW3, align 4
  %192 = add nsw i32 %190, %191
  %193 = load i32, i32* %7, align 4
  %194 = call i32 @SAF1761_WRITE_LE_4(%struct.saf1761_otg_softc* %189, i32 %192, i32 %193)
  %195 = load %struct.saf1761_otg_td*, %struct.saf1761_otg_td** %5, align 8
  %196 = getelementptr inbounds %struct.saf1761_otg_td, %struct.saf1761_otg_td* %195, i32 0, i32 0
  %197 = load i64, i64* %196, align 8
  %198 = call i32 @SOTG_DATA_ADDR(i64 %197)
  %199 = call i32 @SOTG_HC_MEMORY_ADDR(i32 %198)
  %200 = shl i32 %199, 8
  %201 = load %struct.saf1761_otg_td*, %struct.saf1761_otg_td** %5, align 8
  %202 = getelementptr inbounds %struct.saf1761_otg_td, %struct.saf1761_otg_td* %201, i32 0, i32 9
  %203 = load i32, i32* %202, align 8
  %204 = and i32 %203, 248
  %205 = or i32 %200, %204
  store i32 %205, i32* %7, align 4
  %206 = load %struct.saf1761_otg_softc*, %struct.saf1761_otg_softc** %4, align 8
  %207 = load i32, i32* %6, align 4
  %208 = load i32, i32* @SOTG_PTD_DW2, align 4
  %209 = add nsw i32 %207, %208
  %210 = load i32, i32* %7, align 4
  %211 = call i32 @SAF1761_WRITE_LE_4(%struct.saf1761_otg_softc* %206, i32 %209, i32 %210)
  %212 = load %struct.saf1761_otg_td*, %struct.saf1761_otg_td** %5, align 8
  %213 = getelementptr inbounds %struct.saf1761_otg_td, %struct.saf1761_otg_td* %212, i32 0, i32 3
  %214 = load i32, i32* %213, align 8
  %215 = or i32 %214, 1024
  %216 = load %struct.saf1761_otg_td*, %struct.saf1761_otg_td** %5, align 8
  %217 = getelementptr inbounds %struct.saf1761_otg_td, %struct.saf1761_otg_td* %216, i32 0, i32 10
  %218 = load i32, i32* %217, align 4
  %219 = ashr i32 %218, 1
  %220 = or i32 %215, %219
  store i32 %220, i32* %7, align 4
  %221 = load %struct.saf1761_otg_softc*, %struct.saf1761_otg_softc** %4, align 8
  %222 = load i32, i32* %6, align 4
  %223 = load i32, i32* @SOTG_PTD_DW1, align 4
  %224 = add nsw i32 %222, %223
  %225 = load i32, i32* %7, align 4
  %226 = call i32 @SAF1761_WRITE_LE_4(%struct.saf1761_otg_softc* %221, i32 %224, i32 %225)
  %227 = load %struct.saf1761_otg_td*, %struct.saf1761_otg_td** %5, align 8
  %228 = getelementptr inbounds %struct.saf1761_otg_td, %struct.saf1761_otg_td* %227, i32 0, i32 10
  %229 = load i32, i32* %228, align 4
  %230 = shl i32 %229, 31
  %231 = or i32 %230, 536870912
  %232 = load %struct.saf1761_otg_td*, %struct.saf1761_otg_td** %5, align 8
  %233 = getelementptr inbounds %struct.saf1761_otg_td, %struct.saf1761_otg_td* %232, i32 0, i32 4
  %234 = load i32, i32* %233, align 4
  %235 = shl i32 %234, 18
  %236 = or i32 %231, %235
  %237 = load %struct.saf1761_otg_td*, %struct.saf1761_otg_td** %5, align 8
  %238 = getelementptr inbounds %struct.saf1761_otg_td, %struct.saf1761_otg_td* %237, i32 0, i32 4
  %239 = load i32, i32* %238, align 4
  %240 = shl i32 %239, 3
  %241 = or i32 %236, %240
  %242 = load i32, i32* @SOTG_PTD_DW0_VALID, align 4
  %243 = or i32 %241, %242
  store i32 %243, i32* %7, align 4
  %244 = load %struct.saf1761_otg_softc*, %struct.saf1761_otg_softc** %4, align 8
  %245 = load i32, i32* %6, align 4
  %246 = load i32, i32* @SOTG_PTD_DW0, align 4
  %247 = add nsw i32 %245, %246
  %248 = load i32, i32* %7, align 4
  %249 = call i32 @SAF1761_WRITE_LE_4(%struct.saf1761_otg_softc* %244, i32 %247, i32 %248)
  %250 = load %struct.saf1761_otg_softc*, %struct.saf1761_otg_softc** %4, align 8
  %251 = load i32, i32* @SOTG_INT_PTD_SKIP_PTD, align 4
  %252 = load %struct.saf1761_otg_softc*, %struct.saf1761_otg_softc** %4, align 8
  %253 = getelementptr inbounds %struct.saf1761_otg_softc, %struct.saf1761_otg_softc* %252, i32 0, i32 0
  %254 = load i32, i32* %253, align 4
  %255 = xor i32 %254, -1
  %256 = load %struct.saf1761_otg_softc*, %struct.saf1761_otg_softc** %4, align 8
  %257 = getelementptr inbounds %struct.saf1761_otg_softc, %struct.saf1761_otg_softc* %256, i32 0, i32 1
  %258 = load i32, i32* %257, align 4
  %259 = or i32 %255, %258
  %260 = call i32 @SAF1761_WRITE_LE_4(%struct.saf1761_otg_softc* %250, i32 %251, i32 %259)
  br label %261

261:                                              ; preds = %164, %125, %32
  store i32 1, i32* %3, align 4
  br label %266

262:                                              ; preds = %114, %94, %80, %46
  %263 = load %struct.saf1761_otg_softc*, %struct.saf1761_otg_softc** %4, align 8
  %264 = load %struct.saf1761_otg_td*, %struct.saf1761_otg_td** %5, align 8
  %265 = call i32 @saf1761_host_channel_free(%struct.saf1761_otg_softc* %263, %struct.saf1761_otg_td* %264)
  store i32 0, i32* %3, align 4
  br label %266

266:                                              ; preds = %262, %261
  %267 = load i32, i32* %3, align 4
  ret i32 %267
}

declare dso_local i32 @SOTG_PTD(i64) #1

declare dso_local i32 @saf1761_peek_host_status_le_4(%struct.saf1761_otg_softc*, i32) #1

declare dso_local i32 @DPRINTFN(i32, i8*, i32) #1

declare dso_local i32 @saf1761_read_host_memory(%struct.saf1761_otg_softc*, %struct.saf1761_otg_td*, i32) #1

declare dso_local i32 @saf1761_host_channel_free(%struct.saf1761_otg_softc*, %struct.saf1761_otg_td*) #1

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
