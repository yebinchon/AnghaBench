; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/controller/extr_saf1761_otg.c_saf1761_host_bulk_data_tx.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/controller/extr_saf1761_otg.c_saf1761_host_bulk_data_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.saf1761_otg_softc = type { i32, i32 }
%struct.saf1761_otg_td = type { i64, i32, i32, i64, i32, i32, i32, i32, i32, i64 }

@SOTG_HOST_CHANNEL_MAX = common dso_local global i64 0, align 8
@SOTG_PTD_DW3 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"STATUS=0x%08x\0A\00", align 1
@SOTG_PTD_DW3_ACTIVE = common dso_local global i32 0, align 4
@SOTG_PTD_DW3_HALTED = common dso_local global i32 0, align 4
@SOTG_PTD_DW3_ERRORS = common dso_local global i32 0, align 4
@SOTG_PTD_DW7 = common dso_local global i32 0, align 4
@SOTG_PTD_DW6 = common dso_local global i32 0, align 4
@SOTG_PTD_DW5 = common dso_local global i32 0, align 4
@SOTG_PTD_DW4 = common dso_local global i32 0, align 4
@SOTG_PTD_DW3_CERR_2 = common dso_local global i32 0, align 4
@SOTG_PTD_DW2 = common dso_local global i32 0, align 4
@SOTG_PTD_DW1 = common dso_local global i32 0, align 4
@SOTG_PTD_DW0_VALID = common dso_local global i32 0, align 4
@SOTG_PTD_DW0 = common dso_local global i32 0, align 4
@SOTG_ATL_PTD_SKIP_PTD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.saf1761_otg_softc*, %struct.saf1761_otg_td*)* @saf1761_host_bulk_data_tx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @saf1761_host_bulk_data_tx(%struct.saf1761_otg_softc* %0, %struct.saf1761_otg_td* %1) #0 {
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
  br label %203

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
  br label %204

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
  br label %204

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
  br label %203

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
  %94 = getelementptr inbounds %struct.saf1761_otg_td, %struct.saf1761_otg_td* %93, i32 0, i32 9
  %95 = load i64, i64* %94, align 8
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %102

97:                                               ; preds = %88
  %98 = load %struct.saf1761_otg_td*, %struct.saf1761_otg_td** %5, align 8
  %99 = getelementptr inbounds %struct.saf1761_otg_td, %struct.saf1761_otg_td* %98, i32 0, i32 9
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
  %117 = load %struct.saf1761_otg_softc*, %struct.saf1761_otg_softc** %4, align 8
  %118 = load i32, i32* %6, align 4
  %119 = load i32, i32* @SOTG_PTD_DW5, align 4
  %120 = add nsw i32 %118, %119
  %121 = call i32 @SAF1761_WRITE_LE_4(%struct.saf1761_otg_softc* %117, i32 %120, i32 0)
  %122 = load %struct.saf1761_otg_softc*, %struct.saf1761_otg_softc** %4, align 8
  %123 = load i32, i32* %6, align 4
  %124 = load i32, i32* @SOTG_PTD_DW4, align 4
  %125 = add nsw i32 %123, %124
  %126 = call i32 @SAF1761_WRITE_LE_4(%struct.saf1761_otg_softc* %122, i32 %125, i32 0)
  %127 = load i32, i32* @SOTG_PTD_DW3_ACTIVE, align 4
  %128 = load %struct.saf1761_otg_td*, %struct.saf1761_otg_td** %5, align 8
  %129 = getelementptr inbounds %struct.saf1761_otg_td, %struct.saf1761_otg_td* %128, i32 0, i32 6
  %130 = load i32, i32* %129, align 8
  %131 = shl i32 %130, 25
  %132 = or i32 %127, %131
  %133 = load i32, i32* @SOTG_PTD_DW3_CERR_2, align 4
  %134 = or i32 %132, %133
  store i32 %134, i32* %7, align 4
  %135 = load %struct.saf1761_otg_softc*, %struct.saf1761_otg_softc** %4, align 8
  %136 = load i32, i32* %6, align 4
  %137 = load i32, i32* @SOTG_PTD_DW3, align 4
  %138 = add nsw i32 %136, %137
  %139 = load i32, i32* %7, align 4
  %140 = call i32 @SAF1761_WRITE_LE_4(%struct.saf1761_otg_softc* %135, i32 %138, i32 %139)
  %141 = load %struct.saf1761_otg_td*, %struct.saf1761_otg_td** %5, align 8
  %142 = getelementptr inbounds %struct.saf1761_otg_td, %struct.saf1761_otg_td* %141, i32 0, i32 0
  %143 = load i64, i64* %142, align 8
  %144 = call i32 @SOTG_DATA_ADDR(i64 %143)
  %145 = call i32 @SOTG_HC_MEMORY_ADDR(i32 %144)
  %146 = shl i32 %145, 8
  store i32 %146, i32* %7, align 4
  %147 = load %struct.saf1761_otg_softc*, %struct.saf1761_otg_softc** %4, align 8
  %148 = load i32, i32* %6, align 4
  %149 = load i32, i32* @SOTG_PTD_DW2, align 4
  %150 = add nsw i32 %148, %149
  %151 = load i32, i32* %7, align 4
  %152 = call i32 @SAF1761_WRITE_LE_4(%struct.saf1761_otg_softc* %147, i32 %150, i32 %151)
  %153 = load %struct.saf1761_otg_td*, %struct.saf1761_otg_td** %5, align 8
  %154 = getelementptr inbounds %struct.saf1761_otg_td, %struct.saf1761_otg_td* %153, i32 0, i32 7
  %155 = load i32, i32* %154, align 4
  %156 = load %struct.saf1761_otg_td*, %struct.saf1761_otg_td** %5, align 8
  %157 = getelementptr inbounds %struct.saf1761_otg_td, %struct.saf1761_otg_td* %156, i32 0, i32 8
  %158 = load i32, i32* %157, align 8
  %159 = ashr i32 %158, 1
  %160 = or i32 %155, %159
  store i32 %160, i32* %7, align 4
  %161 = load %struct.saf1761_otg_softc*, %struct.saf1761_otg_softc** %4, align 8
  %162 = load i32, i32* %6, align 4
  %163 = load i32, i32* @SOTG_PTD_DW1, align 4
  %164 = add nsw i32 %162, %163
  %165 = load i32, i32* %7, align 4
  %166 = call i32 @SAF1761_WRITE_LE_4(%struct.saf1761_otg_softc* %161, i32 %164, i32 %165)
  %167 = load %struct.saf1761_otg_td*, %struct.saf1761_otg_td** %5, align 8
  %168 = getelementptr inbounds %struct.saf1761_otg_td, %struct.saf1761_otg_td* %167, i32 0, i32 8
  %169 = load i32, i32* %168, align 8
  %170 = shl i32 %169, 31
  %171 = or i32 %170, 536870912
  %172 = load %struct.saf1761_otg_td*, %struct.saf1761_otg_td** %5, align 8
  %173 = getelementptr inbounds %struct.saf1761_otg_td, %struct.saf1761_otg_td* %172, i32 0, i32 5
  %174 = load i32, i32* %173, align 4
  %175 = shl i32 %174, 18
  %176 = or i32 %171, %175
  %177 = load i32, i32* %8, align 4
  %178 = shl i32 %177, 3
  %179 = or i32 %176, %178
  %180 = load i32, i32* @SOTG_PTD_DW0_VALID, align 4
  %181 = or i32 %179, %180
  store i32 %181, i32* %7, align 4
  %182 = load %struct.saf1761_otg_softc*, %struct.saf1761_otg_softc** %4, align 8
  %183 = load i32, i32* %6, align 4
  %184 = load i32, i32* @SOTG_PTD_DW0, align 4
  %185 = add nsw i32 %183, %184
  %186 = load i32, i32* %7, align 4
  %187 = call i32 @SAF1761_WRITE_LE_4(%struct.saf1761_otg_softc* %182, i32 %185, i32 %186)
  %188 = load %struct.saf1761_otg_softc*, %struct.saf1761_otg_softc** %4, align 8
  %189 = load i32, i32* @SOTG_ATL_PTD_SKIP_PTD, align 4
  %190 = load %struct.saf1761_otg_softc*, %struct.saf1761_otg_softc** %4, align 8
  %191 = getelementptr inbounds %struct.saf1761_otg_softc, %struct.saf1761_otg_softc* %190, i32 0, i32 0
  %192 = load i32, i32* %191, align 4
  %193 = xor i32 %192, -1
  %194 = load %struct.saf1761_otg_softc*, %struct.saf1761_otg_softc** %4, align 8
  %195 = getelementptr inbounds %struct.saf1761_otg_softc, %struct.saf1761_otg_softc* %194, i32 0, i32 1
  %196 = load i32, i32* %195, align 4
  %197 = or i32 %193, %196
  %198 = call i32 @SAF1761_WRITE_LE_4(%struct.saf1761_otg_softc* %188, i32 %189, i32 %197)
  %199 = load %struct.saf1761_otg_td*, %struct.saf1761_otg_td** %5, align 8
  %200 = getelementptr inbounds %struct.saf1761_otg_td, %struct.saf1761_otg_td* %199, i32 0, i32 6
  %201 = load i32, i32* %200, align 8
  %202 = xor i32 %201, 1
  store i32 %202, i32* %200, align 8
  br label %203

203:                                              ; preds = %102, %70, %31
  store i32 1, i32* %3, align 4
  br label %208

204:                                              ; preds = %59, %45
  %205 = load %struct.saf1761_otg_softc*, %struct.saf1761_otg_softc** %4, align 8
  %206 = load %struct.saf1761_otg_td*, %struct.saf1761_otg_td** %5, align 8
  %207 = call i32 @saf1761_host_channel_free(%struct.saf1761_otg_softc* %205, %struct.saf1761_otg_td* %206)
  store i32 0, i32* %3, align 4
  br label %208

208:                                              ; preds = %204, %203
  %209 = load i32, i32* %3, align 4
  ret i32 %209
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
