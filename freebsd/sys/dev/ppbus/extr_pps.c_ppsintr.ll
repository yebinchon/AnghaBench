; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ppbus/extr_pps.c_ppsintr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ppbus/extr_pps.c_ppsintr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pps_data = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@nACK = common dso_local global i32 0, align 4
@PPS_ECHOASSERT = common dso_local global i32 0, align 4
@IRQENABLE = common dso_local global i32 0, align 4
@AUTOFEED = common dso_local global i32 0, align 4
@PPS_CAPTUREASSERT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @ppsintr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ppsintr(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.pps_data*, align 8
  store i8* %0, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = bitcast i8* %4 to %struct.pps_data*
  store %struct.pps_data* %5, %struct.pps_data** %3, align 8
  %6 = load %struct.pps_data*, %struct.pps_data** %3, align 8
  %7 = getelementptr inbounds %struct.pps_data, %struct.pps_data* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = call i32 @ppb_assert_locked(i32 %8)
  %10 = load %struct.pps_data*, %struct.pps_data** %3, align 8
  %11 = getelementptr inbounds %struct.pps_data, %struct.pps_data* %10, i32 0, i32 1
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i64 0
  %14 = call i32 @pps_capture(%struct.TYPE_5__* %13)
  %15 = load %struct.pps_data*, %struct.pps_data** %3, align 8
  %16 = getelementptr inbounds %struct.pps_data, %struct.pps_data* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @ppb_rstr(i32 %17)
  %19 = load i32, i32* @nACK, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %1
  br label %65

23:                                               ; preds = %1
  %24 = load %struct.pps_data*, %struct.pps_data** %3, align 8
  %25 = getelementptr inbounds %struct.pps_data, %struct.pps_data* %24, i32 0, i32 1
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i64 0
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @PPS_ECHOASSERT, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %42

34:                                               ; preds = %23
  %35 = load %struct.pps_data*, %struct.pps_data** %3, align 8
  %36 = getelementptr inbounds %struct.pps_data, %struct.pps_data* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* @IRQENABLE, align 4
  %39 = load i32, i32* @AUTOFEED, align 4
  %40 = or i32 %38, %39
  %41 = call i32 @ppb_wctr(i32 %37, i32 %40)
  br label %42

42:                                               ; preds = %34, %23
  %43 = load %struct.pps_data*, %struct.pps_data** %3, align 8
  %44 = getelementptr inbounds %struct.pps_data, %struct.pps_data* %43, i32 0, i32 1
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i64 0
  %47 = load i32, i32* @PPS_CAPTUREASSERT, align 4
  %48 = call i32 @pps_event(%struct.TYPE_5__* %46, i32 %47)
  %49 = load %struct.pps_data*, %struct.pps_data** %3, align 8
  %50 = getelementptr inbounds %struct.pps_data, %struct.pps_data* %49, i32 0, i32 1
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i64 0
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @PPS_ECHOASSERT, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %65

59:                                               ; preds = %42
  %60 = load %struct.pps_data*, %struct.pps_data** %3, align 8
  %61 = getelementptr inbounds %struct.pps_data, %struct.pps_data* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = load i32, i32* @IRQENABLE, align 4
  %64 = call i32 @ppb_wctr(i32 %62, i32 %63)
  br label %65

65:                                               ; preds = %22, %59, %42
  ret void
}

declare dso_local i32 @ppb_assert_locked(i32) #1

declare dso_local i32 @pps_capture(%struct.TYPE_5__*) #1

declare dso_local i32 @ppb_rstr(i32) #1

declare dso_local i32 @ppb_wctr(i32, i32) #1

declare dso_local i32 @pps_event(%struct.TYPE_5__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
