; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/age/extr_if_age.c_age_probe.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/age/extr_if_age.c_age_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.age_dev = type { i64, i64, i32 }

@age_devs = common dso_local global %struct.age_dev* null, align 8
@BUS_PROBE_DEFAULT = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @age_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @age_probe(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.age_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  %8 = load i32, i32* %3, align 4
  %9 = call i64 @pci_get_vendor(i32 %8)
  store i64 %9, i64* %6, align 8
  %10 = load i32, i32* %3, align 4
  %11 = call i64 @pci_get_device(i32 %10)
  store i64 %11, i64* %7, align 8
  %12 = load %struct.age_dev*, %struct.age_dev** @age_devs, align 8
  store %struct.age_dev* %12, %struct.age_dev** %4, align 8
  store i32 0, i32* %5, align 4
  br label %13

13:                                               ; preds = %38, %1
  %14 = load i32, i32* %5, align 4
  %15 = load %struct.age_dev*, %struct.age_dev** @age_devs, align 8
  %16 = call i32 @nitems(%struct.age_dev* %15)
  %17 = icmp slt i32 %14, %16
  br i1 %17, label %18, label %43

18:                                               ; preds = %13
  %19 = load i64, i64* %6, align 8
  %20 = load %struct.age_dev*, %struct.age_dev** %4, align 8
  %21 = getelementptr inbounds %struct.age_dev, %struct.age_dev* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp eq i64 %19, %22
  br i1 %23, label %24, label %37

24:                                               ; preds = %18
  %25 = load i64, i64* %7, align 8
  %26 = load %struct.age_dev*, %struct.age_dev** %4, align 8
  %27 = getelementptr inbounds %struct.age_dev, %struct.age_dev* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = icmp eq i64 %25, %28
  br i1 %29, label %30, label %37

30:                                               ; preds = %24
  %31 = load i32, i32* %3, align 4
  %32 = load %struct.age_dev*, %struct.age_dev** %4, align 8
  %33 = getelementptr inbounds %struct.age_dev, %struct.age_dev* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @device_set_desc(i32 %31, i32 %34)
  %36 = load i32, i32* @BUS_PROBE_DEFAULT, align 4
  store i32 %36, i32* %2, align 4
  br label %45

37:                                               ; preds = %24, %18
  br label %38

38:                                               ; preds = %37
  %39 = load i32, i32* %5, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %5, align 4
  %41 = load %struct.age_dev*, %struct.age_dev** %4, align 8
  %42 = getelementptr inbounds %struct.age_dev, %struct.age_dev* %41, i32 1
  store %struct.age_dev* %42, %struct.age_dev** %4, align 8
  br label %13

43:                                               ; preds = %13
  %44 = load i32, i32* @ENXIO, align 4
  store i32 %44, i32* %2, align 4
  br label %45

45:                                               ; preds = %43, %30
  %46 = load i32, i32* %2, align 4
  ret i32 %46
}

declare dso_local i64 @pci_get_vendor(i32) #1

declare dso_local i64 @pci_get_device(i32) #1

declare dso_local i32 @nitems(%struct.age_dev*) #1

declare dso_local i32 @device_set_desc(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
