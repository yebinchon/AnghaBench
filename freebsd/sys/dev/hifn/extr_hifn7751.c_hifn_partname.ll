; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/hifn/extr_hifn7751.c_hifn_partname.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/hifn/extr_hifn7751.c_hifn_partname.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hifn_softc = type { i32 }

@.str = private unnamed_addr constant [10 x i8] c"Hifn 6500\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"Hifn 7751\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"Hifn 7811\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"Hifn 7951\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"Hifn 7955\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"Hifn 7956\00", align 1
@.str.6 = private unnamed_addr constant [18 x i8] c"Hifn unknown-part\00", align 1
@.str.7 = private unnamed_addr constant [14 x i8] c"Invertex AEON\00", align 1
@.str.8 = private unnamed_addr constant [22 x i8] c"Invertex unknown-part\00", align 1
@.str.9 = private unnamed_addr constant [12 x i8] c"NetSec 7751\00", align 1
@.str.10 = private unnamed_addr constant [20 x i8] c"NetSec unknown-part\00", align 1
@.str.11 = private unnamed_addr constant [28 x i8] c"Unknown-vendor unknown-part\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.hifn_softc*)* @hifn_partname to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @hifn_partname(%struct.hifn_softc* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.hifn_softc*, align 8
  store %struct.hifn_softc* %0, %struct.hifn_softc** %3, align 8
  %4 = load %struct.hifn_softc*, %struct.hifn_softc** %3, align 8
  %5 = getelementptr inbounds %struct.hifn_softc, %struct.hifn_softc* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = call i32 @pci_get_vendor(i32 %6)
  switch i32 %7, label %34 [
    i32 130, label %8
    i32 129, label %20
    i32 128, label %27
  ]

8:                                                ; preds = %1
  %9 = load %struct.hifn_softc*, %struct.hifn_softc** %3, align 8
  %10 = getelementptr inbounds %struct.hifn_softc, %struct.hifn_softc* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @pci_get_device(i32 %11)
  switch i32 %12, label %19 [
    i32 138, label %13
    i32 137, label %14
    i32 136, label %15
    i32 135, label %16
    i32 134, label %17
    i32 133, label %18
  ]

13:                                               ; preds = %8
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8** %2, align 8
  br label %35

14:                                               ; preds = %8
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i8** %2, align 8
  br label %35

15:                                               ; preds = %8
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i8** %2, align 8
  br label %35

16:                                               ; preds = %8
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i8** %2, align 8
  br label %35

17:                                               ; preds = %8
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i8** %2, align 8
  br label %35

18:                                               ; preds = %8
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0), i8** %2, align 8
  br label %35

19:                                               ; preds = %8
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i64 0, i64 0), i8** %2, align 8
  br label %35

20:                                               ; preds = %1
  %21 = load %struct.hifn_softc*, %struct.hifn_softc** %3, align 8
  %22 = getelementptr inbounds %struct.hifn_softc, %struct.hifn_softc* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @pci_get_device(i32 %23)
  switch i32 %24, label %26 [
    i32 132, label %25
  ]

25:                                               ; preds = %20
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0), i8** %2, align 8
  br label %35

26:                                               ; preds = %20
  store i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.8, i64 0, i64 0), i8** %2, align 8
  br label %35

27:                                               ; preds = %1
  %28 = load %struct.hifn_softc*, %struct.hifn_softc** %3, align 8
  %29 = getelementptr inbounds %struct.hifn_softc, %struct.hifn_softc* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @pci_get_device(i32 %30)
  switch i32 %31, label %33 [
    i32 131, label %32
  ]

32:                                               ; preds = %27
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i64 0, i64 0), i8** %2, align 8
  br label %35

33:                                               ; preds = %27
  store i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.10, i64 0, i64 0), i8** %2, align 8
  br label %35

34:                                               ; preds = %1
  store i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.11, i64 0, i64 0), i8** %2, align 8
  br label %35

35:                                               ; preds = %34, %33, %32, %26, %25, %19, %18, %17, %16, %15, %14, %13
  %36 = load i8*, i8** %2, align 8
  ret i8* %36
}

declare dso_local i32 @pci_get_vendor(i32) #1

declare dso_local i32 @pci_get_device(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
