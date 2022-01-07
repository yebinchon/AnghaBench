; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/hyperv/storvsc/extr_hv_storvsc_drv_freebsd.c_storvsc_probe.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/hyperv/storvsc/extr_hv_storvsc_drv_freebsd.c_storvsc_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@ENXIO = common dso_local global i32 0, align 4
@bootverbose = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Enlightened ATA/IDE detected\0A\00", align 1
@g_drv_props_table = common dso_local global %struct.TYPE_2__* null, align 8
@BUS_PROBE_DEFAULT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"Enlightened SCSI device detected\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @storvsc_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @storvsc_probe(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* @ENXIO, align 4
  store i32 %4, i32* %3, align 4
  %5 = load i32, i32* %2, align 4
  %6 = call i32 @storvsc_get_storage_type(i32 %5)
  switch i32 %6, label %35 [
    i32 129, label %7
    i32 128, label %21
  ]

7:                                                ; preds = %1
  %8 = load i32, i32* @bootverbose, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %7
  %11 = load i32, i32* %2, align 4
  %12 = call i32 @device_printf(i32 %11, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  br label %13

13:                                               ; preds = %10, %7
  %14 = load i32, i32* %2, align 4
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** @g_drv_props_table, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i64 129
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @device_set_desc(i32 %14, i32 %18)
  %20 = load i32, i32* @BUS_PROBE_DEFAULT, align 4
  store i32 %20, i32* %3, align 4
  br label %37

21:                                               ; preds = %1
  %22 = load i32, i32* @bootverbose, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %21
  %25 = load i32, i32* %2, align 4
  %26 = call i32 @device_printf(i32 %25, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  br label %27

27:                                               ; preds = %24, %21
  %28 = load i32, i32* %2, align 4
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** @g_drv_props_table, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i64 128
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @device_set_desc(i32 %28, i32 %32)
  %34 = load i32, i32* @BUS_PROBE_DEFAULT, align 4
  store i32 %34, i32* %3, align 4
  br label %37

35:                                               ; preds = %1
  %36 = load i32, i32* @ENXIO, align 4
  store i32 %36, i32* %3, align 4
  br label %37

37:                                               ; preds = %35, %27, %13
  %38 = load i32, i32* %3, align 4
  ret i32 %38
}

declare dso_local i32 @storvsc_get_storage_type(i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @device_set_desc(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
