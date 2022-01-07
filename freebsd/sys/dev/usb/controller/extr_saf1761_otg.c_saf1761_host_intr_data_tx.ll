; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/controller/extr_saf1761_otg.c_saf1761_host_intr_data_tx.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/controller/extr_saf1761_otg.c_saf1761_host_intr_data_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.saf1761_otg_softc = type { i32, i32 }
%struct.saf1761_otg_td = type { i64, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i64 }

@SOTG_HOST_CHANNEL_MAX = common dso_local global i64 0, align 8
@SOTG_PTD_DW3 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"STATUS=0x%08x\0A\00", align 1
@SOTG_PTD_DW3_ACTIVE = common dso_local global i32 0, align 4
@SOTG_PTD_DW3_HALTED = common dso_local global i32 0, align 4
@SOTG_PTD_DW3_ERRORS = common dso_local global i32 0, align 4
@SOTG_PTD_DW7 = common dso_local global i32 0, align 4
@SOTG_PTD_DW6 = common dso_local global i32 0, align 4
@SOTG_PTD_DW1_ENABLE_SPLIT = common dso_local global i32 0, align 4
@SOTG_PTD_DW5 = common dso_local global i32 0, align 4
@SOTG_PTD_DW4 = common dso_local global i32 0, align 4
@SOTG_PTD_DW3_CERR_3 = common dso_local global i32 0, align 4
@SOTG_PTD_DW2 = common dso_local global i32 0, align 4
@SOTG_PTD_DW1 = common dso_local global i32 0, align 4
@SOTG_PTD_DW0_VALID = common dso_local global i32 0, align 4
@SOTG_PTD_DW0 = common dso_local global i32 0, align 4
@SOTG_INT_PTD_SKIP_PTD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.saf1761_otg_softc*, %struct.saf1761_otg_td*)* @saf1761_host_intr_data_tx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @saf1761_host_intr_data_tx(%struct.saf1761_otg_softc* %0, %struct.saf1761_otg_td* %1) #0 {
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
  br i1 %14, label %15, label %65

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
  br label %228

32:                                               ; preds = %15
  %33 = load i32, i32* %9, align 4
  %34 = load i32, i32* @SOTG_PTD_DW3_HALTED, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %48

37:                                               ; preds = %32
  %38 = load i32, i32* %9, align 4
  %39 = load i32, i32* @SOTG_PTD_DW3_ERRORS, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %45, label %42

42:                                               ; preds = %37
  %43 = load %struct.saf1761_otg_td*, %struct.saf1761_otg_td** %5, align 8
  %44 = getelementptr inbounds %struct.saf1761_otg_td, %struct.saf1761_otg_td* %43, i32 0, i32 1
  store i32 1, i32* %44, align 8
  br label %45

45:                                               ; preds = %42, %37
  %46 = load %struct.saf1761_otg_td*, %struct.saf1761_otg_td** %5, align 8
  %47 = getelementptr inbounds %struct.saf1761_otg_td, %struct.saf1761_otg_td* %46, i32 0, i32 2
  store i32 1, i32* %47, align 4
  br label %229

48:                                               ; preds = %32
  br label %49

49:                                               ; preds = %48
  %50 = load %struct.saf1761_otg_td*, %struct.saf1761_otg_td** %5, align 8
  %51 = getelementptr inbounds %struct.saf1761_otg_td, %struct.saf1761_otg_td* %50, i32 0, i32 3
  %52 = load i64, i64* %51, align 8
  %53 = icmp eq i64 %52, 0
  br i1 %53, label %54, label %61

54:                                               ; preds = %49
  %55 = load %struct.saf1761_otg_td*, %struct.saf1761_otg_td** %5, align 8
  %56 = getelementptr inbounds %struct.saf1761_otg_td, %struct.saf1761_otg_td* %55, i32 0, i32 4
  %57 = load i32, i32* %56, align 8
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %54
  br label %229

60:                                               ; preds = %54
  br label %61

61:                                               ; preds = %60, %49
  %62 = load %struct.saf1761_otg_softc*, %struct.saf1761_otg_softc** %4, align 8
  %63 = load %struct.saf1761_otg_td*, %struct.saf1761_otg_td** %5, align 8
  %64 = call i32 @saf1761_host_channel_free(%struct.saf1761_otg_softc* %62, %struct.saf1761_otg_td* %63)
  br label %65

65:                                               ; preds = %61, %2
  %66 = load %struct.saf1761_otg_softc*, %struct.saf1761_otg_softc** %4, align 8
  %67 = load %struct.saf1761_otg_td*, %struct.saf1761_otg_td** %5, align 8
  %68 = call i64 @saf1761_host_channel_alloc(%struct.saf1761_otg_softc* %66, %struct.saf1761_otg_td* %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %65
  br label %228

71:                                               ; preds = %65
  %72 = load %struct.saf1761_otg_td*, %struct.saf1761_otg_td** %5, align 8
  %73 = getelementptr inbounds %struct.saf1761_otg_td, %struct.saf1761_otg_td* %72, i32 0, i32 5
  %74 = load i32, i32* %73, align 4
  store i32 %74, i32* %8, align 4
  %75 = load %struct.saf1761_otg_td*, %struct.saf1761_otg_td** %5, align 8
  %76 = getelementptr inbounds %struct.saf1761_otg_td, %struct.saf1761_otg_td* %75, i32 0, i32 3
  %77 = load i64, i64* %76, align 8
  %78 = load i32, i32* %8, align 4
  %79 = sext i32 %78 to i64
  %80 = icmp slt i64 %77, %79
  br i1 %80, label %81, label %88

81:                                               ; preds = %71
  %82 = load %struct.saf1761_otg_td*, %struct.saf1761_otg_td** %5, align 8
  %83 = getelementptr inbounds %struct.saf1761_otg_td, %struct.saf1761_otg_td* %82, i32 0, i32 4
  store i32 1, i32* %83, align 8
  %84 = load %struct.saf1761_otg_td*, %struct.saf1761_otg_td** %5, align 8
  %85 = getelementptr inbounds %struct.saf1761_otg_td, %struct.saf1761_otg_td* %84, i32 0, i32 3
  %86 = load i64, i64* %85, align 8
  %87 = trunc i64 %86 to i32
  store i32 %87, i32* %8, align 4
  br label %88

88:                                               ; preds = %81, %71
  %89 = load %struct.saf1761_otg_softc*, %struct.saf1761_otg_softc** %4, align 8
  %90 = load %struct.saf1761_otg_td*, %struct.saf1761_otg_td** %5, align 8
  %91 = load i32, i32* %8, align 4
  %92 = call i32 @saf1761_write_host_memory(%struct.saf1761_otg_softc* %89, %struct.saf1761_otg_td* %90, i32 %91)
  %93 = load %struct.saf1761_otg_td*, %struct.saf1761_otg_td** %5, align 8
  %94 = getelementptr inbounds %struct.saf1761_otg_td, %struct.saf1761_otg_td* %93, i32 0, i32 11
  %95 = load i64, i64* %94, align 8
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %102

97:                                               ; preds = %88
  %98 = load %struct.saf1761_otg_td*, %struct.saf1761_otg_td** %5, align 8
  %99 = getelementptr inbounds %struct.saf1761_otg_td, %struct.saf1761_otg_td* %98, i32 0, i32 11
  store i64 0, i64* %99, align 8
  %100 = load %struct.saf1761_otg_td*, %struct.saf1761_otg_td** %5, align 8
  %101 = getelementptr inbounds %struct.saf1761_otg_td, %struct.saf1761_otg_td* %100, i32 0, i32 6
  store i32 1, i32* %101, align 8
  br label %102

102:                                              ; preds = %97, %88
  %103 = load %struct.saf1761_otg_td*, %struct.saf1761_otg_td** %5, align 8
  %104 = getelementptr inbounds %struct.saf1761_otg_td, %struct.saf1761_otg_td* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = call i32 @SOTG_PTD(i64 %105)
  store i32 %106, i32* %6, align 4
  %107 = load %struct.saf1761_otg_softc*, %struct.saf1761_otg_softc** %4, align 8
  %108 = load i32, i32* %6, align 4
  %109 = load i32, i32* @SOTG_PTD_DW7, align 4
  %110 = add nsw i32 %108, %109
  %111 = call i32 @SAF1761_WRITE_LE_4(%struct.saf1761_otg_softc* %107, i32 %110, i32 0)
  %112 = load %struct.saf1761_otg_softc*, %struct.saf1761_otg_softc** %4, align 8
  %113 = load i32, i32* %6, align 4
  %114 = load i32, i32* @SOTG_PTD_DW6, align 4
  %115 = add nsw i32 %113, %114
  %116 = call i32 @SAF1761_WRITE_LE_4(%struct.saf1761_otg_softc* %112, i32 %115, i32 0)
  %117 = load %struct.saf1761_otg_td*, %struct.saf1761_otg_td** %5, align 8
  %118 = getelementptr inbounds %struct.saf1761_otg_td, %struct.saf1761_otg_td* %117, i32 0, i32 7
  %119 = load i32, i32* %118, align 4
  %120 = load i32, i32* @SOTG_PTD_DW1_ENABLE_SPLIT, align 4
  %121 = and i32 %119, %120
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %129

123:                                              ; preds = %102
  %124 = load %struct.saf1761_otg_td*, %struct.saf1761_otg_td** %5, align 8
  %125 = getelementptr inbounds %struct.saf1761_otg_td, %struct.saf1761_otg_td* %124, i32 0, i32 8
  %126 = load i32, i32* %125, align 8
  %127 = shl i32 252, %126
  %128 = and i32 %127, 255
  store i32 %128, i32* %7, align 4
  br label %130

129:                                              ; preds = %102
  store i32 0, i32* %7, align 4
  br label %130

130:                                              ; preds = %129, %123
  %131 = load %struct.saf1761_otg_softc*, %struct.saf1761_otg_softc** %4, align 8
  %132 = load i32, i32* %6, align 4
  %133 = load i32, i32* @SOTG_PTD_DW5, align 4
  %134 = add nsw i32 %132, %133
  %135 = load i32, i32* %7, align 4
  %136 = call i32 @SAF1761_WRITE_LE_4(%struct.saf1761_otg_softc* %131, i32 %134, i32 %135)
  %137 = load %struct.saf1761_otg_td*, %struct.saf1761_otg_td** %5, align 8
  %138 = getelementptr inbounds %struct.saf1761_otg_td, %struct.saf1761_otg_td* %137, i32 0, i32 8
  %139 = load i32, i32* %138, align 8
  %140 = shl i32 1, %139
  store i32 %140, i32* %7, align 4
  %141 = load %struct.saf1761_otg_softc*, %struct.saf1761_otg_softc** %4, align 8
  %142 = load i32, i32* %6, align 4
  %143 = load i32, i32* @SOTG_PTD_DW4, align 4
  %144 = add nsw i32 %142, %143
  %145 = load i32, i32* %7, align 4
  %146 = call i32 @SAF1761_WRITE_LE_4(%struct.saf1761_otg_softc* %141, i32 %144, i32 %145)
  %147 = load i32, i32* @SOTG_PTD_DW3_ACTIVE, align 4
  %148 = load %struct.saf1761_otg_td*, %struct.saf1761_otg_td** %5, align 8
  %149 = getelementptr inbounds %struct.saf1761_otg_td, %struct.saf1761_otg_td* %148, i32 0, i32 6
  %150 = load i32, i32* %149, align 8
  %151 = shl i32 %150, 25
  %152 = or i32 %147, %151
  %153 = load i32, i32* @SOTG_PTD_DW3_CERR_3, align 4
  %154 = or i32 %152, %153
  store i32 %154, i32* %7, align 4
  %155 = load %struct.saf1761_otg_softc*, %struct.saf1761_otg_softc** %4, align 8
  %156 = load i32, i32* %6, align 4
  %157 = load i32, i32* @SOTG_PTD_DW3, align 4
  %158 = add nsw i32 %156, %157
  %159 = load i32, i32* %7, align 4
  %160 = call i32 @SAF1761_WRITE_LE_4(%struct.saf1761_otg_softc* %155, i32 %158, i32 %159)
  %161 = load %struct.saf1761_otg_td*, %struct.saf1761_otg_td** %5, align 8
  %162 = getelementptr inbounds %struct.saf1761_otg_td, %struct.saf1761_otg_td* %161, i32 0, i32 0
  %163 = load i64, i64* %162, align 8
  %164 = call i32 @SOTG_DATA_ADDR(i64 %163)
  %165 = call i32 @SOTG_HC_MEMORY_ADDR(i32 %164)
  %166 = shl i32 %165, 8
  %167 = load %struct.saf1761_otg_td*, %struct.saf1761_otg_td** %5, align 8
  %168 = getelementptr inbounds %struct.saf1761_otg_td, %struct.saf1761_otg_td* %167, i32 0, i32 9
  %169 = load i32, i32* %168, align 4
  %170 = and i32 %169, 248
  %171 = or i32 %166, %170
  store i32 %171, i32* %7, align 4
  %172 = load %struct.saf1761_otg_softc*, %struct.saf1761_otg_softc** %4, align 8
  %173 = load i32, i32* %6, align 4
  %174 = load i32, i32* @SOTG_PTD_DW2, align 4
  %175 = add nsw i32 %173, %174
  %176 = load i32, i32* %7, align 4
  %177 = call i32 @SAF1761_WRITE_LE_4(%struct.saf1761_otg_softc* %172, i32 %175, i32 %176)
  %178 = load %struct.saf1761_otg_td*, %struct.saf1761_otg_td** %5, align 8
  %179 = getelementptr inbounds %struct.saf1761_otg_td, %struct.saf1761_otg_td* %178, i32 0, i32 7
  %180 = load i32, i32* %179, align 4
  %181 = load %struct.saf1761_otg_td*, %struct.saf1761_otg_td** %5, align 8
  %182 = getelementptr inbounds %struct.saf1761_otg_td, %struct.saf1761_otg_td* %181, i32 0, i32 10
  %183 = load i32, i32* %182, align 8
  %184 = ashr i32 %183, 1
  %185 = or i32 %180, %184
  store i32 %185, i32* %7, align 4
  %186 = load %struct.saf1761_otg_softc*, %struct.saf1761_otg_softc** %4, align 8
  %187 = load i32, i32* %6, align 4
  %188 = load i32, i32* @SOTG_PTD_DW1, align 4
  %189 = add nsw i32 %187, %188
  %190 = load i32, i32* %7, align 4
  %191 = call i32 @SAF1761_WRITE_LE_4(%struct.saf1761_otg_softc* %186, i32 %189, i32 %190)
  %192 = load %struct.saf1761_otg_td*, %struct.saf1761_otg_td** %5, align 8
  %193 = getelementptr inbounds %struct.saf1761_otg_td, %struct.saf1761_otg_td* %192, i32 0, i32 10
  %194 = load i32, i32* %193, align 8
  %195 = shl i32 %194, 31
  %196 = or i32 %195, 536870912
  %197 = load %struct.saf1761_otg_td*, %struct.saf1761_otg_td** %5, align 8
  %198 = getelementptr inbounds %struct.saf1761_otg_td, %struct.saf1761_otg_td* %197, i32 0, i32 5
  %199 = load i32, i32* %198, align 4
  %200 = shl i32 %199, 18
  %201 = or i32 %196, %200
  %202 = load i32, i32* %8, align 4
  %203 = shl i32 %202, 3
  %204 = or i32 %201, %203
  %205 = load i32, i32* @SOTG_PTD_DW0_VALID, align 4
  %206 = or i32 %204, %205
  store i32 %206, i32* %7, align 4
  %207 = load %struct.saf1761_otg_softc*, %struct.saf1761_otg_softc** %4, align 8
  %208 = load i32, i32* %6, align 4
  %209 = load i32, i32* @SOTG_PTD_DW0, align 4
  %210 = add nsw i32 %208, %209
  %211 = load i32, i32* %7, align 4
  %212 = call i32 @SAF1761_WRITE_LE_4(%struct.saf1761_otg_softc* %207, i32 %210, i32 %211)
  %213 = load %struct.saf1761_otg_softc*, %struct.saf1761_otg_softc** %4, align 8
  %214 = load i32, i32* @SOTG_INT_PTD_SKIP_PTD, align 4
  %215 = load %struct.saf1761_otg_softc*, %struct.saf1761_otg_softc** %4, align 8
  %216 = getelementptr inbounds %struct.saf1761_otg_softc, %struct.saf1761_otg_softc* %215, i32 0, i32 0
  %217 = load i32, i32* %216, align 4
  %218 = xor i32 %217, -1
  %219 = load %struct.saf1761_otg_softc*, %struct.saf1761_otg_softc** %4, align 8
  %220 = getelementptr inbounds %struct.saf1761_otg_softc, %struct.saf1761_otg_softc* %219, i32 0, i32 1
  %221 = load i32, i32* %220, align 4
  %222 = or i32 %218, %221
  %223 = call i32 @SAF1761_WRITE_LE_4(%struct.saf1761_otg_softc* %213, i32 %214, i32 %222)
  %224 = load %struct.saf1761_otg_td*, %struct.saf1761_otg_td** %5, align 8
  %225 = getelementptr inbounds %struct.saf1761_otg_td, %struct.saf1761_otg_td* %224, i32 0, i32 6
  %226 = load i32, i32* %225, align 8
  %227 = xor i32 %226, 1
  store i32 %227, i32* %225, align 8
  br label %228

228:                                              ; preds = %130, %70, %31
  store i32 1, i32* %3, align 4
  br label %233

229:                                              ; preds = %59, %45
  %230 = load %struct.saf1761_otg_softc*, %struct.saf1761_otg_softc** %4, align 8
  %231 = load %struct.saf1761_otg_td*, %struct.saf1761_otg_td** %5, align 8
  %232 = call i32 @saf1761_host_channel_free(%struct.saf1761_otg_softc* %230, %struct.saf1761_otg_td* %231)
  store i32 0, i32* %3, align 4
  br label %233

233:                                              ; preds = %229, %228
  %234 = load i32, i32* %3, align 4
  ret i32 %234
}

declare dso_local i32 @SOTG_PTD(i64) #1

declare dso_local i32 @saf1761_peek_host_status_le_4(%struct.saf1761_otg_softc*, i32) #1

declare dso_local i32 @DPRINTFN(i32, i8*, i32) #1

declare dso_local i32 @saf1761_host_channel_free(%struct.saf1761_otg_softc*, %struct.saf1761_otg_td*) #1

declare dso_local i64 @saf1761_host_channel_alloc(%struct.saf1761_otg_softc*, %struct.saf1761_otg_td*) #1

declare dso_local i32 @saf1761_write_host_memory(%struct.saf1761_otg_softc*, %struct.saf1761_otg_td*, i32) #1

declare dso_local i32 @SAF1761_WRITE_LE_4(%struct.saf1761_otg_softc*, i32, i32) #1

declare dso_local i32 @SOTG_HC_MEMORY_ADDR(i32) #1

declare dso_local i32 @SOTG_DATA_ADDR(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
