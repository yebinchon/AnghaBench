; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_emu10k1.c_emu_pci_probe.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_emu10k1.c_emu_pci_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [17 x i8] c"Creative EMU10K1\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"Creative Audigy 2 (EMU10K2)\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"Creative Audigy (EMU10K2)\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"Creative Audigy 2 (EMU10K3)\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@BUS_PROBE_LOW_PRIORITY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @emu_pci_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @emu_pci_probe(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  store i32 %0, i32* %3, align 4
  store i8* null, i8** %4, align 8
  %5 = load i32, i32* %3, align 4
  %6 = call i32 @pci_get_devid(i32 %5)
  switch i32 %6, label %16 [
    i32 130, label %7
    i32 129, label %8
    i32 128, label %15
  ]

7:                                                ; preds = %1
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i8** %4, align 8
  br label %18

8:                                                ; preds = %1
  %9 = load i32, i32* %3, align 4
  %10 = call i32 @pci_get_revid(i32 %9)
  %11 = icmp eq i32 %10, 4
  br i1 %11, label %12, label %13

12:                                               ; preds = %8
  store i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i8** %4, align 8
  br label %14

13:                                               ; preds = %8
  store i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i8** %4, align 8
  br label %14

14:                                               ; preds = %13, %12
  br label %18

15:                                               ; preds = %1
  store i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), i8** %4, align 8
  br label %18

16:                                               ; preds = %1
  %17 = load i32, i32* @ENXIO, align 4
  store i32 %17, i32* %2, align 4
  br label %23

18:                                               ; preds = %15, %14, %7
  %19 = load i32, i32* %3, align 4
  %20 = load i8*, i8** %4, align 8
  %21 = call i32 @device_set_desc(i32 %19, i8* %20)
  %22 = load i32, i32* @BUS_PROBE_LOW_PRIORITY, align 4
  store i32 %22, i32* %2, align 4
  br label %23

23:                                               ; preds = %18, %16
  %24 = load i32, i32* %2, align 4
  ret i32 %24
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
