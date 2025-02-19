; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_maestro.c_agg_probe.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_maestro.c_agg_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [25 x i8] c"ESS Technology Maestro-1\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"ESS Technology Maestro-2\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"ESS Technology Maestro-2E\00", align 1
@PCIC_MULTIMEDIA = common dso_local global i64 0, align 8
@BUS_PROBE_DEFAULT = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @agg_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @agg_probe(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  store i32 %0, i32* %3, align 4
  store i8* null, i8** %4, align 8
  %5 = load i32, i32* %3, align 4
  %6 = call i32 @pci_get_devid(i32 %5)
  switch i32 %6, label %10 [
    i32 130, label %7
    i32 128, label %8
    i32 129, label %9
  ]

7:                                                ; preds = %1
  store i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i8** %4, align 8
  br label %10

8:                                                ; preds = %1
  store i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i8** %4, align 8
  br label %10

9:                                                ; preds = %1
  store i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i8** %4, align 8
  br label %10

10:                                               ; preds = %1, %9, %8, %7
  %11 = load i8*, i8** %4, align 8
  %12 = icmp ne i8* %11, null
  br i1 %12, label %13, label %23

13:                                               ; preds = %10
  %14 = load i32, i32* %3, align 4
  %15 = call i64 @pci_get_class(i32 %14)
  %16 = load i64, i64* @PCIC_MULTIMEDIA, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %23

18:                                               ; preds = %13
  %19 = load i32, i32* %3, align 4
  %20 = load i8*, i8** %4, align 8
  %21 = call i32 @device_set_desc(i32 %19, i8* %20)
  %22 = load i32, i32* @BUS_PROBE_DEFAULT, align 4
  store i32 %22, i32* %2, align 4
  br label %25

23:                                               ; preds = %13, %10
  %24 = load i32, i32* @ENXIO, align 4
  store i32 %24, i32* %2, align 4
  br label %25

25:                                               ; preds = %23, %18
  %26 = load i32, i32* %2, align 4
  ret i32 %26
}

declare dso_local i32 @pci_get_devid(i32) #1

declare dso_local i64 @pci_get_class(i32) #1

declare dso_local i32 @device_set_desc(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
