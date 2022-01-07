; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_via8233.c_via_probe.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_via8233.c_via_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [17 x i8] c"VIA VT8233 (pre)\00", align 1
@BUS_PROBE_DEFAULT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [12 x i8] c"VIA VT8233C\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"VIA VT8233\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"VIA VT8233A\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"VIA VT8235\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"VIA VT8237\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"VIA VT8251\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"VIA VT8233X\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @via_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @via_probe(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  %5 = call i32 @pci_get_devid(i32 %4)
  switch i32 %5, label %41 [
    i32 135, label %6
  ]

6:                                                ; preds = %1
  %7 = load i32, i32* %3, align 4
  %8 = call i32 @pci_get_revid(i32 %7)
  switch i32 %8, label %37 [
    i32 131, label %9
    i32 132, label %13
    i32 134, label %17
    i32 133, label %21
    i32 130, label %25
    i32 129, label %29
    i32 128, label %33
  ]

9:                                                ; preds = %6
  %10 = load i32, i32* %3, align 4
  %11 = call i32 @device_set_desc(i32 %10, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %12 = load i32, i32* @BUS_PROBE_DEFAULT, align 4
  store i32 %12, i32* %2, align 4
  br label %43

13:                                               ; preds = %6
  %14 = load i32, i32* %3, align 4
  %15 = call i32 @device_set_desc(i32 %14, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  %16 = load i32, i32* @BUS_PROBE_DEFAULT, align 4
  store i32 %16, i32* %2, align 4
  br label %43

17:                                               ; preds = %6
  %18 = load i32, i32* %3, align 4
  %19 = call i32 @device_set_desc(i32 %18, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  %20 = load i32, i32* @BUS_PROBE_DEFAULT, align 4
  store i32 %20, i32* %2, align 4
  br label %43

21:                                               ; preds = %6
  %22 = load i32, i32* %3, align 4
  %23 = call i32 @device_set_desc(i32 %22, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0))
  %24 = load i32, i32* @BUS_PROBE_DEFAULT, align 4
  store i32 %24, i32* %2, align 4
  br label %43

25:                                               ; preds = %6
  %26 = load i32, i32* %3, align 4
  %27 = call i32 @device_set_desc(i32 %26, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0))
  %28 = load i32, i32* @BUS_PROBE_DEFAULT, align 4
  store i32 %28, i32* %2, align 4
  br label %43

29:                                               ; preds = %6
  %30 = load i32, i32* %3, align 4
  %31 = call i32 @device_set_desc(i32 %30, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0))
  %32 = load i32, i32* @BUS_PROBE_DEFAULT, align 4
  store i32 %32, i32* %2, align 4
  br label %43

33:                                               ; preds = %6
  %34 = load i32, i32* %3, align 4
  %35 = call i32 @device_set_desc(i32 %34, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0))
  %36 = load i32, i32* @BUS_PROBE_DEFAULT, align 4
  store i32 %36, i32* %2, align 4
  br label %43

37:                                               ; preds = %6
  %38 = load i32, i32* %3, align 4
  %39 = call i32 @device_set_desc(i32 %38, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i64 0, i64 0))
  %40 = load i32, i32* @BUS_PROBE_DEFAULT, align 4
  store i32 %40, i32* %2, align 4
  br label %43

41:                                               ; preds = %1
  %42 = load i32, i32* @ENXIO, align 4
  store i32 %42, i32* %2, align 4
  br label %43

43:                                               ; preds = %41, %37, %33, %29, %25, %21, %17, %13, %9
  %44 = load i32, i32* %2, align 4
  ret i32 %44
}

declare dso_local i32 @pci_get_devid(i32) #1

declare dso_local i32 @pci_get_revid(i32) #1

declare dso_local i32 @device_set_desc(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
