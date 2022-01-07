; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ena/extr_ena.c_ena_probe.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ena/extr_ena.c_ena_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i64 }

@ena_vendor_info_array = common dso_local global %struct.TYPE_3__* null, align 8
@ENA_DBG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"vendor=%x device=%x\0A\00", align 1
@DEVICE_DESC = common dso_local global i8* null, align 8
@BUS_PROBE_DEFAULT = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @ena_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ena_probe(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca [60 x i8], align 16
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  store i64 0, i64* %6, align 8
  store i64 0, i64* %7, align 8
  %8 = load i32, i32* %3, align 4
  %9 = call i64 @pci_get_vendor(i32 %8)
  store i64 %9, i64* %6, align 8
  %10 = load i32, i32* %3, align 4
  %11 = call i64 @pci_get_device(i32 %10)
  store i64 %11, i64* %7, align 8
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** @ena_vendor_info_array, align 8
  store %struct.TYPE_3__* %12, %struct.TYPE_3__** %4, align 8
  br label %13

13:                                               ; preds = %42, %1
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %45

18:                                               ; preds = %13
  %19 = load i64, i64* %6, align 8
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp eq i64 %19, %22
  br i1 %23, label %24, label %42

24:                                               ; preds = %18
  %25 = load i64, i64* %7, align 8
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = icmp eq i64 %25, %28
  br i1 %29, label %30, label %42

30:                                               ; preds = %24
  %31 = load i32, i32* @ENA_DBG, align 4
  %32 = load i64, i64* %6, align 8
  %33 = load i64, i64* %7, align 8
  %34 = call i32 @ena_trace(i32 %31, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i64 %32, i64 %33)
  %35 = getelementptr inbounds [60 x i8], [60 x i8]* %5, i64 0, i64 0
  %36 = load i8*, i8** @DEVICE_DESC, align 8
  %37 = call i32 @sprintf(i8* %35, i8* %36)
  %38 = load i32, i32* %3, align 4
  %39 = getelementptr inbounds [60 x i8], [60 x i8]* %5, i64 0, i64 0
  %40 = call i32 @device_set_desc_copy(i32 %38, i8* %39)
  %41 = load i32, i32* @BUS_PROBE_DEFAULT, align 4
  store i32 %41, i32* %2, align 4
  br label %47

42:                                               ; preds = %24, %18
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 1
  store %struct.TYPE_3__* %44, %struct.TYPE_3__** %4, align 8
  br label %13

45:                                               ; preds = %13
  %46 = load i32, i32* @ENXIO, align 4
  store i32 %46, i32* %2, align 4
  br label %47

47:                                               ; preds = %45, %30
  %48 = load i32, i32* %2, align 4
  ret i32 %48
}

declare dso_local i64 @pci_get_vendor(i32) #1

declare dso_local i64 @pci_get_device(i32) #1

declare dso_local i32 @ena_trace(i32, i8*, i64, i64) #1

declare dso_local i32 @sprintf(i8*, i8*) #1

declare dso_local i32 @device_set_desc_copy(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
