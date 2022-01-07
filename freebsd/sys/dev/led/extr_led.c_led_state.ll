; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/led/extr_led.c_led_state.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/led/extr_led.c_led_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ledsc = type { i64, i32, i32 (i32, i32)*, i32*, i32*, %struct.sbuf* }
%struct.sbuf = type { i32 }

@blinkers = common dso_local global i32 0, align 4
@led_ch = common dso_local global i32 0, align 4
@hz = common dso_local global i32 0, align 4
@led_timeout = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ledsc*, %struct.sbuf**, i32)* @led_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @led_state(%struct.ledsc* %0, %struct.sbuf** %1, i32 %2) #0 {
  %4 = alloca %struct.ledsc*, align 8
  %5 = alloca %struct.sbuf**, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.sbuf*, align 8
  store %struct.ledsc* %0, %struct.ledsc** %4, align 8
  store %struct.sbuf** %1, %struct.sbuf*** %5, align 8
  store i32 %2, i32* %6, align 4
  store %struct.sbuf* null, %struct.sbuf** %7, align 8
  %8 = load %struct.ledsc*, %struct.ledsc** %4, align 8
  %9 = getelementptr inbounds %struct.ledsc, %struct.ledsc* %8, i32 0, i32 5
  %10 = load %struct.sbuf*, %struct.sbuf** %9, align 8
  store %struct.sbuf* %10, %struct.sbuf** %7, align 8
  %11 = load %struct.sbuf**, %struct.sbuf*** %5, align 8
  %12 = load %struct.sbuf*, %struct.sbuf** %11, align 8
  %13 = load %struct.ledsc*, %struct.ledsc** %4, align 8
  %14 = getelementptr inbounds %struct.ledsc, %struct.ledsc* %13, i32 0, i32 5
  store %struct.sbuf* %12, %struct.sbuf** %14, align 8
  %15 = load %struct.sbuf**, %struct.sbuf*** %5, align 8
  %16 = load %struct.sbuf*, %struct.sbuf** %15, align 8
  %17 = icmp ne %struct.sbuf* %16, null
  br i1 %17, label %18, label %41

18:                                               ; preds = %3
  %19 = load %struct.sbuf**, %struct.sbuf*** %5, align 8
  %20 = load %struct.sbuf*, %struct.sbuf** %19, align 8
  %21 = call i32* @sbuf_data(%struct.sbuf* %20)
  %22 = load %struct.ledsc*, %struct.ledsc** %4, align 8
  %23 = getelementptr inbounds %struct.ledsc, %struct.ledsc* %22, i32 0, i32 4
  store i32* %21, i32** %23, align 8
  %24 = load %struct.ledsc*, %struct.ledsc** %4, align 8
  %25 = getelementptr inbounds %struct.ledsc, %struct.ledsc* %24, i32 0, i32 3
  %26 = load i32*, i32** %25, align 8
  %27 = icmp eq i32* %26, null
  br i1 %27, label %28, label %35

28:                                               ; preds = %18
  %29 = load i32, i32* @blinkers, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* @blinkers, align 4
  %31 = load i32, i32* @hz, align 4
  %32 = sdiv i32 %31, 10
  %33 = load i32, i32* @led_timeout, align 4
  %34 = call i32 @callout_reset(i32* @led_ch, i32 %32, i32 %33, i32* null)
  br label %35

35:                                               ; preds = %28, %18
  %36 = load %struct.ledsc*, %struct.ledsc** %4, align 8
  %37 = getelementptr inbounds %struct.ledsc, %struct.ledsc* %36, i32 0, i32 4
  %38 = load i32*, i32** %37, align 8
  %39 = load %struct.ledsc*, %struct.ledsc** %4, align 8
  %40 = getelementptr inbounds %struct.ledsc, %struct.ledsc* %39, i32 0, i32 3
  store i32* %38, i32** %40, align 8
  br label %62

41:                                               ; preds = %3
  %42 = load %struct.ledsc*, %struct.ledsc** %4, align 8
  %43 = getelementptr inbounds %struct.ledsc, %struct.ledsc* %42, i32 0, i32 4
  store i32* null, i32** %43, align 8
  %44 = load %struct.ledsc*, %struct.ledsc** %4, align 8
  %45 = getelementptr inbounds %struct.ledsc, %struct.ledsc* %44, i32 0, i32 3
  %46 = load i32*, i32** %45, align 8
  %47 = icmp ne i32* %46, null
  br i1 %47, label %48, label %51

48:                                               ; preds = %41
  %49 = load i32, i32* @blinkers, align 4
  %50 = add nsw i32 %49, -1
  store i32 %50, i32* @blinkers, align 4
  br label %51

51:                                               ; preds = %48, %41
  %52 = load %struct.ledsc*, %struct.ledsc** %4, align 8
  %53 = getelementptr inbounds %struct.ledsc, %struct.ledsc* %52, i32 0, i32 3
  store i32* null, i32** %53, align 8
  %54 = load %struct.ledsc*, %struct.ledsc** %4, align 8
  %55 = getelementptr inbounds %struct.ledsc, %struct.ledsc* %54, i32 0, i32 2
  %56 = load i32 (i32, i32)*, i32 (i32, i32)** %55, align 8
  %57 = load %struct.ledsc*, %struct.ledsc** %4, align 8
  %58 = getelementptr inbounds %struct.ledsc, %struct.ledsc* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* %6, align 4
  %61 = call i32 %56(i32 %59, i32 %60)
  br label %62

62:                                               ; preds = %51, %35
  %63 = load %struct.ledsc*, %struct.ledsc** %4, align 8
  %64 = getelementptr inbounds %struct.ledsc, %struct.ledsc* %63, i32 0, i32 0
  store i64 0, i64* %64, align 8
  %65 = load %struct.sbuf*, %struct.sbuf** %7, align 8
  %66 = load %struct.sbuf**, %struct.sbuf*** %5, align 8
  store %struct.sbuf* %65, %struct.sbuf** %66, align 8
  ret i32 0
}

declare dso_local i32* @sbuf_data(%struct.sbuf*) #1

declare dso_local i32 @callout_reset(i32*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
