; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/aic7xxx/extr_aic7xxx.c_ahc_queue_lstate_event.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/aic7xxx/extr_aic7xxx.c_ahc_queue_lstate_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ahc_softc = type { i32 }
%struct.ahc_tmode_lstate = type { i64, i64, %struct.ahc_tmode_event*, i32 }
%struct.ahc_tmode_event = type { i32, i32, i64 }

@AHC_TMODE_EVENT_BUFFER_SIZE = common dso_local global i32 0, align 4
@EVENT_TYPE_BUS_RESET = common dso_local global i64 0, align 8
@MSG_BUS_DEV_RESET = common dso_local global i64 0, align 8
@FALSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"immediate event %x:%x lost\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ahc_softc*, %struct.ahc_tmode_lstate*, i64, i64, i64)* @ahc_queue_lstate_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ahc_queue_lstate_event(%struct.ahc_softc* %0, %struct.ahc_tmode_lstate* %1, i64 %2, i64 %3, i64 %4) #0 {
  %6 = alloca %struct.ahc_softc*, align 8
  %7 = alloca %struct.ahc_tmode_lstate*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.ahc_tmode_event*, align 8
  %12 = alloca i32, align 4
  store %struct.ahc_softc* %0, %struct.ahc_softc** %6, align 8
  store %struct.ahc_tmode_lstate* %1, %struct.ahc_tmode_lstate** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  store i64 %4, i64* %10, align 8
  %13 = load %struct.ahc_tmode_lstate*, %struct.ahc_tmode_lstate** %7, align 8
  %14 = getelementptr inbounds %struct.ahc_tmode_lstate, %struct.ahc_tmode_lstate* %13, i32 0, i32 3
  %15 = load i32, i32* %14, align 8
  %16 = call i32 @xpt_freeze_devq(i32 %15, i32 1)
  %17 = load %struct.ahc_tmode_lstate*, %struct.ahc_tmode_lstate** %7, align 8
  %18 = getelementptr inbounds %struct.ahc_tmode_lstate, %struct.ahc_tmode_lstate* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.ahc_tmode_lstate*, %struct.ahc_tmode_lstate** %7, align 8
  %21 = getelementptr inbounds %struct.ahc_tmode_lstate, %struct.ahc_tmode_lstate* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = icmp sge i64 %19, %22
  br i1 %23, label %24, label %33

24:                                               ; preds = %5
  %25 = load %struct.ahc_tmode_lstate*, %struct.ahc_tmode_lstate** %7, align 8
  %26 = getelementptr inbounds %struct.ahc_tmode_lstate, %struct.ahc_tmode_lstate* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load %struct.ahc_tmode_lstate*, %struct.ahc_tmode_lstate** %7, align 8
  %29 = getelementptr inbounds %struct.ahc_tmode_lstate, %struct.ahc_tmode_lstate* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = sub nsw i64 %27, %30
  %32 = trunc i64 %31 to i32
  store i32 %32, i32* %12, align 4
  br label %46

33:                                               ; preds = %5
  %34 = load i32, i32* @AHC_TMODE_EVENT_BUFFER_SIZE, align 4
  %35 = add nsw i32 %34, 1
  %36 = sext i32 %35 to i64
  %37 = load %struct.ahc_tmode_lstate*, %struct.ahc_tmode_lstate** %7, align 8
  %38 = getelementptr inbounds %struct.ahc_tmode_lstate, %struct.ahc_tmode_lstate* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.ahc_tmode_lstate*, %struct.ahc_tmode_lstate** %7, align 8
  %41 = getelementptr inbounds %struct.ahc_tmode_lstate, %struct.ahc_tmode_lstate* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = sub nsw i64 %39, %42
  %44 = sub nsw i64 %36, %43
  %45 = trunc i64 %44 to i32
  store i32 %45, i32* %12, align 4
  br label %46

46:                                               ; preds = %33, %24
  %47 = load i64, i64* %9, align 8
  %48 = load i64, i64* @EVENT_TYPE_BUS_RESET, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %54, label %50

50:                                               ; preds = %46
  %51 = load i64, i64* %9, align 8
  %52 = load i64, i64* @MSG_BUS_DEV_RESET, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %65

54:                                               ; preds = %50, %46
  %55 = load %struct.ahc_tmode_lstate*, %struct.ahc_tmode_lstate** %7, align 8
  %56 = getelementptr inbounds %struct.ahc_tmode_lstate, %struct.ahc_tmode_lstate* %55, i32 0, i32 1
  store i64 0, i64* %56, align 8
  %57 = load %struct.ahc_tmode_lstate*, %struct.ahc_tmode_lstate** %7, align 8
  %58 = getelementptr inbounds %struct.ahc_tmode_lstate, %struct.ahc_tmode_lstate* %57, i32 0, i32 0
  store i64 0, i64* %58, align 8
  %59 = load %struct.ahc_tmode_lstate*, %struct.ahc_tmode_lstate** %7, align 8
  %60 = getelementptr inbounds %struct.ahc_tmode_lstate, %struct.ahc_tmode_lstate* %59, i32 0, i32 3
  %61 = load i32, i32* %60, align 8
  %62 = load i32, i32* %12, align 4
  %63 = load i32, i32* @FALSE, align 4
  %64 = call i32 @xpt_release_devq(i32 %61, i32 %62, i32 %63)
  br label %65

65:                                               ; preds = %54, %50
  %66 = load i32, i32* %12, align 4
  %67 = load i32, i32* @AHC_TMODE_EVENT_BUFFER_SIZE, align 4
  %68 = icmp eq i32 %66, %67
  br i1 %68, label %69, label %112

69:                                               ; preds = %65
  %70 = load %struct.ahc_tmode_lstate*, %struct.ahc_tmode_lstate** %7, align 8
  %71 = getelementptr inbounds %struct.ahc_tmode_lstate, %struct.ahc_tmode_lstate* %70, i32 0, i32 3
  %72 = load i32, i32* %71, align 8
  %73 = call i32 @xpt_print_path(i32 %72)
  %74 = load %struct.ahc_tmode_lstate*, %struct.ahc_tmode_lstate** %7, align 8
  %75 = getelementptr inbounds %struct.ahc_tmode_lstate, %struct.ahc_tmode_lstate* %74, i32 0, i32 2
  %76 = load %struct.ahc_tmode_event*, %struct.ahc_tmode_event** %75, align 8
  %77 = load %struct.ahc_tmode_lstate*, %struct.ahc_tmode_lstate** %7, align 8
  %78 = getelementptr inbounds %struct.ahc_tmode_lstate, %struct.ahc_tmode_lstate* %77, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  %80 = getelementptr inbounds %struct.ahc_tmode_event, %struct.ahc_tmode_event* %76, i64 %79
  %81 = getelementptr inbounds %struct.ahc_tmode_event, %struct.ahc_tmode_event* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = load %struct.ahc_tmode_lstate*, %struct.ahc_tmode_lstate** %7, align 8
  %84 = getelementptr inbounds %struct.ahc_tmode_lstate, %struct.ahc_tmode_lstate* %83, i32 0, i32 2
  %85 = load %struct.ahc_tmode_event*, %struct.ahc_tmode_event** %84, align 8
  %86 = load %struct.ahc_tmode_lstate*, %struct.ahc_tmode_lstate** %7, align 8
  %87 = getelementptr inbounds %struct.ahc_tmode_lstate, %struct.ahc_tmode_lstate* %86, i32 0, i32 1
  %88 = load i64, i64* %87, align 8
  %89 = getelementptr inbounds %struct.ahc_tmode_event, %struct.ahc_tmode_event* %85, i64 %88
  %90 = getelementptr inbounds %struct.ahc_tmode_event, %struct.ahc_tmode_event* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %82, i32 %91)
  %93 = load %struct.ahc_tmode_lstate*, %struct.ahc_tmode_lstate** %7, align 8
  %94 = getelementptr inbounds %struct.ahc_tmode_lstate, %struct.ahc_tmode_lstate* %93, i32 0, i32 1
  %95 = load i64, i64* %94, align 8
  %96 = add nsw i64 %95, 1
  store i64 %96, i64* %94, align 8
  %97 = load %struct.ahc_tmode_lstate*, %struct.ahc_tmode_lstate** %7, align 8
  %98 = getelementptr inbounds %struct.ahc_tmode_lstate, %struct.ahc_tmode_lstate* %97, i32 0, i32 1
  %99 = load i64, i64* %98, align 8
  %100 = load i32, i32* @AHC_TMODE_EVENT_BUFFER_SIZE, align 4
  %101 = sext i32 %100 to i64
  %102 = icmp eq i64 %99, %101
  br i1 %102, label %103, label %106

103:                                              ; preds = %69
  %104 = load %struct.ahc_tmode_lstate*, %struct.ahc_tmode_lstate** %7, align 8
  %105 = getelementptr inbounds %struct.ahc_tmode_lstate, %struct.ahc_tmode_lstate* %104, i32 0, i32 1
  store i64 0, i64* %105, align 8
  br label %106

106:                                              ; preds = %103, %69
  %107 = load %struct.ahc_tmode_lstate*, %struct.ahc_tmode_lstate** %7, align 8
  %108 = getelementptr inbounds %struct.ahc_tmode_lstate, %struct.ahc_tmode_lstate* %107, i32 0, i32 3
  %109 = load i32, i32* %108, align 8
  %110 = load i32, i32* @FALSE, align 4
  %111 = call i32 @xpt_release_devq(i32 %109, i32 1, i32 %110)
  br label %112

112:                                              ; preds = %106, %65
  %113 = load %struct.ahc_tmode_lstate*, %struct.ahc_tmode_lstate** %7, align 8
  %114 = getelementptr inbounds %struct.ahc_tmode_lstate, %struct.ahc_tmode_lstate* %113, i32 0, i32 2
  %115 = load %struct.ahc_tmode_event*, %struct.ahc_tmode_event** %114, align 8
  %116 = load %struct.ahc_tmode_lstate*, %struct.ahc_tmode_lstate** %7, align 8
  %117 = getelementptr inbounds %struct.ahc_tmode_lstate, %struct.ahc_tmode_lstate* %116, i32 0, i32 0
  %118 = load i64, i64* %117, align 8
  %119 = getelementptr inbounds %struct.ahc_tmode_event, %struct.ahc_tmode_event* %115, i64 %118
  store %struct.ahc_tmode_event* %119, %struct.ahc_tmode_event** %11, align 8
  %120 = load i64, i64* %8, align 8
  %121 = load %struct.ahc_tmode_event*, %struct.ahc_tmode_event** %11, align 8
  %122 = getelementptr inbounds %struct.ahc_tmode_event, %struct.ahc_tmode_event* %121, i32 0, i32 2
  store i64 %120, i64* %122, align 8
  %123 = load i64, i64* %9, align 8
  %124 = trunc i64 %123 to i32
  %125 = load %struct.ahc_tmode_event*, %struct.ahc_tmode_event** %11, align 8
  %126 = getelementptr inbounds %struct.ahc_tmode_event, %struct.ahc_tmode_event* %125, i32 0, i32 0
  store i32 %124, i32* %126, align 8
  %127 = load i64, i64* %10, align 8
  %128 = trunc i64 %127 to i32
  %129 = load %struct.ahc_tmode_event*, %struct.ahc_tmode_event** %11, align 8
  %130 = getelementptr inbounds %struct.ahc_tmode_event, %struct.ahc_tmode_event* %129, i32 0, i32 1
  store i32 %128, i32* %130, align 4
  %131 = load %struct.ahc_tmode_lstate*, %struct.ahc_tmode_lstate** %7, align 8
  %132 = getelementptr inbounds %struct.ahc_tmode_lstate, %struct.ahc_tmode_lstate* %131, i32 0, i32 0
  %133 = load i64, i64* %132, align 8
  %134 = add nsw i64 %133, 1
  store i64 %134, i64* %132, align 8
  %135 = load %struct.ahc_tmode_lstate*, %struct.ahc_tmode_lstate** %7, align 8
  %136 = getelementptr inbounds %struct.ahc_tmode_lstate, %struct.ahc_tmode_lstate* %135, i32 0, i32 0
  %137 = load i64, i64* %136, align 8
  %138 = load i32, i32* @AHC_TMODE_EVENT_BUFFER_SIZE, align 4
  %139 = sext i32 %138 to i64
  %140 = icmp eq i64 %137, %139
  br i1 %140, label %141, label %144

141:                                              ; preds = %112
  %142 = load %struct.ahc_tmode_lstate*, %struct.ahc_tmode_lstate** %7, align 8
  %143 = getelementptr inbounds %struct.ahc_tmode_lstate, %struct.ahc_tmode_lstate* %142, i32 0, i32 0
  store i64 0, i64* %143, align 8
  br label %144

144:                                              ; preds = %141, %112
  ret void
}

declare dso_local i32 @xpt_freeze_devq(i32, i32) #1

declare dso_local i32 @xpt_release_devq(i32, i32, i32) #1

declare dso_local i32 @xpt_print_path(i32) #1

declare dso_local i32 @printf(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
