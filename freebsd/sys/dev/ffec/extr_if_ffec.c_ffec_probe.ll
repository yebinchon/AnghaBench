; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ffec/extr_if_ffec.c_ffec_probe.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ffec/extr_if_ffec.c_ffec_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }

@ENXIO = common dso_local global i32 0, align 4
@compat_data = common dso_local global i32 0, align 4
@FECTYPE_NONE = common dso_local global i64 0, align 8
@FECFLAG_GBE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [38 x i8] c"Freescale Gigabit Ethernet Controller\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"Freescale Fast Ethernet Controller\00", align 1
@BUS_PROBE_DEFAULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @ffec_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ffec_probe(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* %3, align 4
  %6 = call i32 @ofw_bus_status_okay(i32 %5)
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %1
  %9 = load i32, i32* @ENXIO, align 4
  store i32 %9, i32* %2, align 4
  br label %31

10:                                               ; preds = %1
  %11 = load i32, i32* %3, align 4
  %12 = load i32, i32* @compat_data, align 4
  %13 = call %struct.TYPE_2__* @ofw_bus_search_compatible(i32 %11, i32 %12)
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  store i64 %15, i64* %4, align 8
  %16 = load i64, i64* %4, align 8
  %17 = load i64, i64* @FECTYPE_NONE, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %21

19:                                               ; preds = %10
  %20 = load i32, i32* @ENXIO, align 4
  store i32 %20, i32* %2, align 4
  br label %31

21:                                               ; preds = %10
  %22 = load i32, i32* %3, align 4
  %23 = load i64, i64* %4, align 8
  %24 = load i64, i64* @FECFLAG_GBE, align 8
  %25 = and i64 %23, %24
  %26 = icmp ne i64 %25, 0
  %27 = zext i1 %26 to i64
  %28 = select i1 %26, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0)
  %29 = call i32 @device_set_desc(i32 %22, i8* %28)
  %30 = load i32, i32* @BUS_PROBE_DEFAULT, align 4
  store i32 %30, i32* %2, align 4
  br label %31

31:                                               ; preds = %21, %19, %8
  %32 = load i32, i32* %2, align 4
  ret i32 %32
}

declare dso_local i32 @ofw_bus_status_okay(i32) #1

declare dso_local %struct.TYPE_2__* @ofw_bus_search_compatible(i32, i32) #1

declare dso_local i32 @device_set_desc(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
