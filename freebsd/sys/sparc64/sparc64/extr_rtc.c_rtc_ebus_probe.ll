; ModuleID = '/home/carl/AnghaBench/freebsd/sys/sparc64/sparc64/extr_rtc.c_rtc_ebus_probe.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/sparc64/sparc64/extr_rtc.c_rtc_ebus_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"rtc\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"bq4802\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@RTC_DESC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @rtc_ebus_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtc_ebus_probe(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  %5 = call i32* @ofw_bus_get_name(i32 %4)
  %6 = call i64 @strcmp(i32* %5, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %7 = icmp eq i64 %6, 0
  br i1 %7, label %8, label %23

8:                                                ; preds = %1
  %9 = load i32, i32* %3, align 4
  %10 = call i32* @ofw_bus_get_compat(i32 %9)
  %11 = icmp ne i32* %10, null
  br i1 %11, label %12, label %19

12:                                               ; preds = %8
  %13 = load i32, i32* %3, align 4
  %14 = call i32* @ofw_bus_get_compat(i32 %13)
  %15 = call i64 @strcmp(i32* %14, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %12
  %18 = load i32, i32* @ENXIO, align 4
  store i32 %18, i32* %2, align 4
  br label %25

19:                                               ; preds = %12, %8
  %20 = load i32, i32* %3, align 4
  %21 = load i32, i32* @RTC_DESC, align 4
  %22 = call i32 @device_set_desc(i32 %20, i32 %21)
  store i32 0, i32* %2, align 4
  br label %25

23:                                               ; preds = %1
  %24 = load i32, i32* @ENXIO, align 4
  store i32 %24, i32* %2, align 4
  br label %25

25:                                               ; preds = %23, %19, %17
  %26 = load i32, i32* %2, align 4
  ret i32 %26
}

declare dso_local i64 @strcmp(i32*, i8*) #1

declare dso_local i32* @ofw_bus_get_name(i32) #1

declare dso_local i32* @ofw_bus_get_compat(i32) #1

declare dso_local i32 @device_set_desc(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
