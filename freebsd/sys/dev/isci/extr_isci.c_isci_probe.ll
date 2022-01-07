; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/isci/extr_isci.c_isci_probe.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/isci/extr_isci.c_isci_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._pcsid = type { i64, i64 }

@pci_ids = common dso_local global %struct._pcsid* null, align 8
@BUS_PROBE_DEFAULT = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @isci_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @isci_probe(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca %struct._pcsid*, align 8
  store i32 %0, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = call i64 @pci_get_devid(i32 %6)
  store i64 %7, i64* %4, align 8
  %8 = load %struct._pcsid*, %struct._pcsid** @pci_ids, align 8
  store %struct._pcsid* %8, %struct._pcsid** %5, align 8
  br label %9

9:                                                ; preds = %22, %1
  %10 = load %struct._pcsid*, %struct._pcsid** %5, align 8
  %11 = getelementptr inbounds %struct._pcsid, %struct._pcsid* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %20

14:                                               ; preds = %9
  %15 = load %struct._pcsid*, %struct._pcsid** %5, align 8
  %16 = getelementptr inbounds %struct._pcsid, %struct._pcsid* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* %4, align 8
  %19 = icmp ne i64 %17, %18
  br label %20

20:                                               ; preds = %14, %9
  %21 = phi i1 [ false, %9 ], [ %19, %14 ]
  br i1 %21, label %22, label %25

22:                                               ; preds = %20
  %23 = load %struct._pcsid*, %struct._pcsid** %5, align 8
  %24 = getelementptr inbounds %struct._pcsid, %struct._pcsid* %23, i32 1
  store %struct._pcsid* %24, %struct._pcsid** %5, align 8
  br label %9

25:                                               ; preds = %20
  %26 = load %struct._pcsid*, %struct._pcsid** %5, align 8
  %27 = getelementptr inbounds %struct._pcsid, %struct._pcsid* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %37

30:                                               ; preds = %25
  %31 = load i32, i32* %3, align 4
  %32 = load %struct._pcsid*, %struct._pcsid** %5, align 8
  %33 = getelementptr inbounds %struct._pcsid, %struct._pcsid* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = call i32 @device_set_desc(i32 %31, i64 %34)
  %36 = load i32, i32* @BUS_PROBE_DEFAULT, align 4
  store i32 %36, i32* %2, align 4
  br label %39

37:                                               ; preds = %25
  %38 = load i32, i32* @ENXIO, align 4
  store i32 %38, i32* %2, align 4
  br label %39

39:                                               ; preds = %37, %30
  %40 = load i32, i32* %2, align 4
  ret i32 %40
}

declare dso_local i64 @pci_get_devid(i32) #1

declare dso_local i32 @device_set_desc(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
