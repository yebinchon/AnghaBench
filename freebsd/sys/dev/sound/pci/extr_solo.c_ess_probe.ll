; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_solo.c_ess_probe.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_solo.c_ess_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [12 x i8] c"ESS Solo-1E\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"ESS Solo-1\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"ESS Solo-1 (unknown vendor)\00", align 1
@BUS_PROBE_DEFAULT = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @ess_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ess_probe(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store i8* null, i8** %3, align 8
  %5 = load i32, i32* %2, align 4
  %6 = call i32 @pci_get_subdevice(i32 %5)
  %7 = shl i32 %6, 16
  %8 = load i32, i32* %2, align 4
  %9 = call i32 @pci_get_subvendor(i32 %8)
  %10 = or i32 %7, %9
  store i32 %10, i32* %4, align 4
  %11 = load i32, i32* %2, align 4
  %12 = call i32 @pci_get_devid(i32 %11)
  switch i32 %12, label %24 [
    i32 426316381, label %13
  ]

13:                                               ; preds = %1
  %14 = load i32, i32* %4, align 4
  %15 = icmp eq i32 %14, -2004348323
  br i1 %15, label %16, label %17

16:                                               ; preds = %13
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8** %3, align 8
  br label %23

17:                                               ; preds = %13
  %18 = load i32, i32* %4, align 4
  %19 = icmp eq i32 %18, 404230749
  br i1 %19, label %20, label %21

20:                                               ; preds = %17
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i8** %3, align 8
  br label %22

21:                                               ; preds = %17
  store i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i8** %3, align 8
  br label %22

22:                                               ; preds = %21, %20
  br label %23

23:                                               ; preds = %22, %16
  br label %24

24:                                               ; preds = %1, %23
  %25 = load i8*, i8** %3, align 8
  %26 = icmp ne i8* %25, null
  br i1 %26, label %27, label %31

27:                                               ; preds = %24
  %28 = load i32, i32* %2, align 4
  %29 = load i8*, i8** %3, align 8
  %30 = call i32 @device_set_desc(i32 %28, i8* %29)
  br label %31

31:                                               ; preds = %27, %24
  %32 = load i8*, i8** %3, align 8
  %33 = icmp ne i8* %32, null
  br i1 %33, label %34, label %36

34:                                               ; preds = %31
  %35 = load i32, i32* @BUS_PROBE_DEFAULT, align 4
  br label %38

36:                                               ; preds = %31
  %37 = load i32, i32* @ENXIO, align 4
  br label %38

38:                                               ; preds = %36, %34
  %39 = phi i32 [ %35, %34 ], [ %37, %36 ]
  ret i32 %39
}

declare dso_local i32 @pci_get_subdevice(i32) #1

declare dso_local i32 @pci_get_subvendor(i32) #1

declare dso_local i32 @pci_get_devid(i32) #1

declare dso_local i32 @device_set_desc(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
