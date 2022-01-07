; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ioat/extr_ioat.c_ioat_halted_debug.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ioat/extr_ioat.c_ioat_halted_debug.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ioat_softc = type { i64, i32 }
%union.ioat_hw_descriptor = type { i32 }

@.str = private unnamed_addr constant [21 x i8] c"Channel halted (%b)\0A\00", align 1
@IOAT_CHANERR_STR = common dso_local global i32 0, align 4
@MA_OWNED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ioat_softc*, i64)* @ioat_halted_debug to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ioat_halted_debug(%struct.ioat_softc* %0, i64 %1) #0 {
  %3 = alloca %struct.ioat_softc*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %union.ioat_hw_descriptor*, align 8
  store %struct.ioat_softc* %0, %struct.ioat_softc** %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load i64, i64* %4, align 8
  %7 = trunc i64 %6 to i32
  %8 = load i32, i32* @IOAT_CHANERR_STR, align 4
  %9 = call i32 @ioat_log_message(i32 0, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %7, i32 %8)
  %10 = load i64, i64* %4, align 8
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  br label %34

13:                                               ; preds = %2
  %14 = load %struct.ioat_softc*, %struct.ioat_softc** %3, align 8
  %15 = getelementptr inbounds %struct.ioat_softc, %struct.ioat_softc* %14, i32 0, i32 1
  %16 = load i32, i32* @MA_OWNED, align 4
  %17 = call i32 @mtx_assert(i32* %15, i32 %16)
  %18 = load %struct.ioat_softc*, %struct.ioat_softc** %3, align 8
  %19 = load %struct.ioat_softc*, %struct.ioat_softc** %3, align 8
  %20 = getelementptr inbounds %struct.ioat_softc, %struct.ioat_softc* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = add nsw i64 %21, 0
  %23 = call %union.ioat_hw_descriptor* @ioat_get_descriptor(%struct.ioat_softc* %18, i64 %22)
  store %union.ioat_hw_descriptor* %23, %union.ioat_hw_descriptor** %5, align 8
  %24 = load %union.ioat_hw_descriptor*, %union.ioat_hw_descriptor** %5, align 8
  %25 = call i32 @dump_descriptor(%union.ioat_hw_descriptor* %24)
  %26 = load %struct.ioat_softc*, %struct.ioat_softc** %3, align 8
  %27 = load %struct.ioat_softc*, %struct.ioat_softc** %3, align 8
  %28 = getelementptr inbounds %struct.ioat_softc, %struct.ioat_softc* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = add nsw i64 %29, 1
  %31 = call %union.ioat_hw_descriptor* @ioat_get_descriptor(%struct.ioat_softc* %26, i64 %30)
  store %union.ioat_hw_descriptor* %31, %union.ioat_hw_descriptor** %5, align 8
  %32 = load %union.ioat_hw_descriptor*, %union.ioat_hw_descriptor** %5, align 8
  %33 = call i32 @dump_descriptor(%union.ioat_hw_descriptor* %32)
  br label %34

34:                                               ; preds = %13, %12
  ret void
}

declare dso_local i32 @ioat_log_message(i32, i8*, i32, i32) #1

declare dso_local i32 @mtx_assert(i32*, i32) #1

declare dso_local %union.ioat_hw_descriptor* @ioat_get_descriptor(%struct.ioat_softc*, i64) #1

declare dso_local i32 @dump_descriptor(%union.ioat_hw_descriptor*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
