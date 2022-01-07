; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/controller/extr_saf1761_otg.c_saf1761_host_setup_tx.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/controller/extr_saf1761_otg.c_saf1761_host_setup_tx.c"
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
@SOTG_ATL_PTD_SKIP_PTD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.saf1761_otg_softc*, %struct.saf1761_otg_td*)* @saf1761_host_setup_tx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @saf1761_host_setup_tx(%struct.saf1761_otg_softc* %0, %struct.saf1761_otg_td* %1) #0 {
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
  br i1 %14, label %15, label %42

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
  store i32 %24, i32* %7, align 4
  %25 = load i32, i32* %7, align 4
  %26 = call i32 @DPRINTFN(i32 5, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %25)
  %27 = load i32, i32* %7, align 4
  %28 = load i32, i32* @SOTG_PTD_DW3_ACTIVE, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %15
  br label %161

32:                                               ; preds = %15
  %33 = load i32, i32* %7, align 4
  %34 = load i32, i32* @SOTG_PTD_DW3_HALTED, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %32
  %38 = load %struct.saf1761_otg_td*, %struct.saf1761_otg_td** %5, align 8
  %39 = getelementptr inbounds %struct.saf1761_otg_td, %struct.saf1761_otg_td* %38, i32 0, i32 1
  store i32 1, i32* %39, align 8
  br label %40

40:                                               ; preds = %37, %32
  br label %41

41:                                               ; preds = %40
  br label %162

42:                                               ; preds = %2
  %43 = load %struct.saf1761_otg_softc*, %struct.saf1761_otg_softc** %4, align 8
  %44 = load %struct.saf1761_otg_td*, %struct.saf1761_otg_td** %5, align 8
  %45 = call i64 @saf1761_host_channel_alloc(%struct.saf1761_otg_softc* %43, %struct.saf1761_otg_td* %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %42
  br label %161

48:                                               ; preds = %42
  store i32 8, i32* %8, align 4
  %49 = load i32, i32* %8, align 4
  %50 = load %struct.saf1761_otg_td*, %struct.saf1761_otg_td** %5, align 8
  %51 = getelementptr inbounds %struct.saf1761_otg_td, %struct.saf1761_otg_td* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  %53 = icmp ne i32 %49, %52
  br i1 %53, label %54, label %57

54:                                               ; preds = %48
  %55 = load %struct.saf1761_otg_td*, %struct.saf1761_otg_td** %5, align 8
  %56 = getelementptr inbounds %struct.saf1761_otg_td, %struct.saf1761_otg_td* %55, i32 0, i32 1
  store i32 1, i32* %56, align 8
  br label %162

57:                                               ; preds = %48
  %58 = load %struct.saf1761_otg_softc*, %struct.saf1761_otg_softc** %4, align 8
  %59 = load %struct.saf1761_otg_td*, %struct.saf1761_otg_td** %5, align 8
  %60 = load i32, i32* %8, align 4
  %61 = call i32 @saf1761_write_host_memory(%struct.saf1761_otg_softc* %58, %struct.saf1761_otg_td* %59, i32 %60)
  %62 = load %struct.saf1761_otg_td*, %struct.saf1761_otg_td** %5, align 8
  %63 = getelementptr inbounds %struct.saf1761_otg_td, %struct.saf1761_otg_td* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = call i32 @SOTG_PTD(i64 %64)
  store i32 %65, i32* %6, align 4
  %66 = load %struct.saf1761_otg_softc*, %struct.saf1761_otg_softc** %4, align 8
  %67 = load i32, i32* %6, align 4
  %68 = load i32, i32* @SOTG_PTD_DW7, align 4
  %69 = add nsw i32 %67, %68
  %70 = call i32 @SAF1761_WRITE_LE_4(%struct.saf1761_otg_softc* %66, i32 %69, i32 0)
  %71 = load %struct.saf1761_otg_softc*, %struct.saf1761_otg_softc** %4, align 8
  %72 = load i32, i32* %6, align 4
  %73 = load i32, i32* @SOTG_PTD_DW6, align 4
  %74 = add nsw i32 %72, %73
  %75 = call i32 @SAF1761_WRITE_LE_4(%struct.saf1761_otg_softc* %71, i32 %74, i32 0)
  %76 = load %struct.saf1761_otg_softc*, %struct.saf1761_otg_softc** %4, align 8
  %77 = load i32, i32* %6, align 4
  %78 = load i32, i32* @SOTG_PTD_DW5, align 4
  %79 = add nsw i32 %77, %78
  %80 = call i32 @SAF1761_WRITE_LE_4(%struct.saf1761_otg_softc* %76, i32 %79, i32 0)
  %81 = load %struct.saf1761_otg_softc*, %struct.saf1761_otg_softc** %4, align 8
  %82 = load i32, i32* %6, align 4
  %83 = load i32, i32* @SOTG_PTD_DW4, align 4
  %84 = add nsw i32 %82, %83
  %85 = call i32 @SAF1761_WRITE_LE_4(%struct.saf1761_otg_softc* %81, i32 %84, i32 0)
  %86 = load i32, i32* @SOTG_PTD_DW3_ACTIVE, align 4
  %87 = load %struct.saf1761_otg_td*, %struct.saf1761_otg_td** %5, align 8
  %88 = getelementptr inbounds %struct.saf1761_otg_td, %struct.saf1761_otg_td* %87, i32 0, i32 3
  %89 = load i32, i32* %88, align 8
  %90 = shl i32 %89, 25
  %91 = or i32 %86, %90
  %92 = load i32, i32* @SOTG_PTD_DW3_CERR_3, align 4
  %93 = or i32 %91, %92
  store i32 %93, i32* %9, align 4
  %94 = load %struct.saf1761_otg_softc*, %struct.saf1761_otg_softc** %4, align 8
  %95 = load i32, i32* %6, align 4
  %96 = load i32, i32* @SOTG_PTD_DW3, align 4
  %97 = add nsw i32 %95, %96
  %98 = load i32, i32* %9, align 4
  %99 = call i32 @SAF1761_WRITE_LE_4(%struct.saf1761_otg_softc* %94, i32 %97, i32 %98)
  %100 = load %struct.saf1761_otg_td*, %struct.saf1761_otg_td** %5, align 8
  %101 = getelementptr inbounds %struct.saf1761_otg_td, %struct.saf1761_otg_td* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = call i32 @SOTG_DATA_ADDR(i64 %102)
  %104 = call i32 @SOTG_HC_MEMORY_ADDR(i32 %103)
  %105 = shl i32 %104, 8
  store i32 %105, i32* %9, align 4
  %106 = load %struct.saf1761_otg_softc*, %struct.saf1761_otg_softc** %4, align 8
  %107 = load i32, i32* %6, align 4
  %108 = load i32, i32* @SOTG_PTD_DW2, align 4
  %109 = add nsw i32 %107, %108
  %110 = load i32, i32* %9, align 4
  %111 = call i32 @SAF1761_WRITE_LE_4(%struct.saf1761_otg_softc* %106, i32 %109, i32 %110)
  %112 = load %struct.saf1761_otg_td*, %struct.saf1761_otg_td** %5, align 8
  %113 = getelementptr inbounds %struct.saf1761_otg_td, %struct.saf1761_otg_td* %112, i32 0, i32 4
  %114 = load i32, i32* %113, align 4
  %115 = or i32 %114, 2048
  %116 = load %struct.saf1761_otg_td*, %struct.saf1761_otg_td** %5, align 8
  %117 = getelementptr inbounds %struct.saf1761_otg_td, %struct.saf1761_otg_td* %116, i32 0, i32 5
  %118 = load i32, i32* %117, align 8
  %119 = ashr i32 %118, 1
  %120 = or i32 %115, %119
  store i32 %120, i32* %9, align 4
  %121 = load %struct.saf1761_otg_softc*, %struct.saf1761_otg_softc** %4, align 8
  %122 = load i32, i32* %6, align 4
  %123 = load i32, i32* @SOTG_PTD_DW1, align 4
  %124 = add nsw i32 %122, %123
  %125 = load i32, i32* %9, align 4
  %126 = call i32 @SAF1761_WRITE_LE_4(%struct.saf1761_otg_softc* %121, i32 %124, i32 %125)
  %127 = load %struct.saf1761_otg_td*, %struct.saf1761_otg_td** %5, align 8
  %128 = getelementptr inbounds %struct.saf1761_otg_td, %struct.saf1761_otg_td* %127, i32 0, i32 5
  %129 = load i32, i32* %128, align 8
  %130 = shl i32 %129, 31
  %131 = or i32 %130, 536870912
  %132 = load %struct.saf1761_otg_td*, %struct.saf1761_otg_td** %5, align 8
  %133 = getelementptr inbounds %struct.saf1761_otg_td, %struct.saf1761_otg_td* %132, i32 0, i32 6
  %134 = load i32, i32* %133, align 4
  %135 = shl i32 %134, 18
  %136 = or i32 %131, %135
  %137 = load i32, i32* %8, align 4
  %138 = shl i32 %137, 3
  %139 = or i32 %136, %138
  %140 = load i32, i32* @SOTG_PTD_DW0_VALID, align 4
  %141 = or i32 %139, %140
  store i32 %141, i32* %9, align 4
  %142 = load %struct.saf1761_otg_softc*, %struct.saf1761_otg_softc** %4, align 8
  %143 = load i32, i32* %6, align 4
  %144 = load i32, i32* @SOTG_PTD_DW0, align 4
  %145 = add nsw i32 %143, %144
  %146 = load i32, i32* %9, align 4
  %147 = call i32 @SAF1761_WRITE_LE_4(%struct.saf1761_otg_softc* %142, i32 %145, i32 %146)
  %148 = load %struct.saf1761_otg_softc*, %struct.saf1761_otg_softc** %4, align 8
  %149 = load i32, i32* @SOTG_ATL_PTD_SKIP_PTD, align 4
  %150 = load %struct.saf1761_otg_softc*, %struct.saf1761_otg_softc** %4, align 8
  %151 = getelementptr inbounds %struct.saf1761_otg_softc, %struct.saf1761_otg_softc* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 4
  %153 = xor i32 %152, -1
  %154 = load %struct.saf1761_otg_softc*, %struct.saf1761_otg_softc** %4, align 8
  %155 = getelementptr inbounds %struct.saf1761_otg_softc, %struct.saf1761_otg_softc* %154, i32 0, i32 1
  %156 = load i32, i32* %155, align 4
  %157 = or i32 %153, %156
  %158 = call i32 @SAF1761_WRITE_LE_4(%struct.saf1761_otg_softc* %148, i32 %149, i32 %157)
  %159 = load %struct.saf1761_otg_td*, %struct.saf1761_otg_td** %5, align 8
  %160 = getelementptr inbounds %struct.saf1761_otg_td, %struct.saf1761_otg_td* %159, i32 0, i32 3
  store i32 1, i32* %160, align 8
  br label %161

161:                                              ; preds = %57, %47, %31
  store i32 1, i32* %3, align 4
  br label %166

162:                                              ; preds = %54, %41
  %163 = load %struct.saf1761_otg_softc*, %struct.saf1761_otg_softc** %4, align 8
  %164 = load %struct.saf1761_otg_td*, %struct.saf1761_otg_td** %5, align 8
  %165 = call i32 @saf1761_host_channel_free(%struct.saf1761_otg_softc* %163, %struct.saf1761_otg_td* %164)
  store i32 0, i32* %3, align 4
  br label %166

166:                                              ; preds = %162, %161
  %167 = load i32, i32* %3, align 4
  ret i32 %167
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
