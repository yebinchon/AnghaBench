; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/nctgpio/extr_nctgpio.c_nct_probe.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/nctgpio/extr_nctgpio.c_nct_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64 }

@SUPERIO_VENDOR_NUVOTON = common dso_local global i64 0, align 8
@ENXIO = common dso_local global i32 0, align 4
@SUPERIO_DEV_GPIO = common dso_local global i64 0, align 8
@NCT_LDN_GPIO = common dso_local global i64 0, align 8
@nct_devs = common dso_local global %struct.TYPE_3__* null, align 8
@.str = private unnamed_addr constant [24 x i8] c"Nuvoton GPIO controller\00", align 1
@BUS_PROBE_DEFAULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @nct_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nct_probe(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = call i64 @superio_vendor(i32 %6)
  %8 = load i64, i64* @SUPERIO_VENDOR_NUVOTON, align 8
  %9 = icmp ne i64 %7, %8
  br i1 %9, label %10, label %12

10:                                               ; preds = %1
  %11 = load i32, i32* @ENXIO, align 4
  store i32 %11, i32* %2, align 4
  br label %53

12:                                               ; preds = %1
  %13 = load i32, i32* %3, align 4
  %14 = call i64 @superio_get_type(i32 %13)
  %15 = load i64, i64* @SUPERIO_DEV_GPIO, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %17, label %19

17:                                               ; preds = %12
  %18 = load i32, i32* @ENXIO, align 4
  store i32 %18, i32* %2, align 4
  br label %53

19:                                               ; preds = %12
  %20 = load i32, i32* %3, align 4
  %21 = call i64 @superio_get_ldn(i32 %20)
  %22 = load i64, i64* @NCT_LDN_GPIO, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %24, label %26

24:                                               ; preds = %19
  %25 = load i32, i32* @ENXIO, align 4
  store i32 %25, i32* %2, align 4
  br label %53

26:                                               ; preds = %19
  %27 = load i32, i32* %3, align 4
  %28 = call i64 @superio_devid(i32 %27)
  store i64 %28, i64* %5, align 8
  store i32 0, i32* %4, align 4
  br label %29

29:                                               ; preds = %48, %26
  %30 = load i32, i32* %4, align 4
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** @nct_devs, align 8
  %32 = call i32 @nitems(%struct.TYPE_3__* %31)
  %33 = icmp slt i32 %30, %32
  br i1 %33, label %34, label %51

34:                                               ; preds = %29
  %35 = load i64, i64* %5, align 8
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** @nct_devs, align 8
  %37 = load i32, i32* %4, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp eq i64 %35, %41
  br i1 %42, label %43, label %47

43:                                               ; preds = %34
  %44 = load i32, i32* %3, align 4
  %45 = call i32 @device_set_desc(i32 %44, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %46 = load i32, i32* @BUS_PROBE_DEFAULT, align 4
  store i32 %46, i32* %2, align 4
  br label %53

47:                                               ; preds = %34
  br label %48

48:                                               ; preds = %47
  %49 = load i32, i32* %4, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %4, align 4
  br label %29

51:                                               ; preds = %29
  %52 = load i32, i32* @ENXIO, align 4
  store i32 %52, i32* %2, align 4
  br label %53

53:                                               ; preds = %51, %43, %24, %17, %10
  %54 = load i32, i32* %2, align 4
  ret i32 %54
}

declare dso_local i64 @superio_vendor(i32) #1

declare dso_local i64 @superio_get_type(i32) #1

declare dso_local i64 @superio_get_ldn(i32) #1

declare dso_local i64 @superio_devid(i32) #1

declare dso_local i32 @nitems(%struct.TYPE_3__*) #1

declare dso_local i32 @device_set_desc(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
