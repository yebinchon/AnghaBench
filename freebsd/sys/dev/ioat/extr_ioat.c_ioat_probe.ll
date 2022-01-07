; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ioat/extr_ioat.c_ioat_probe.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ioat/extr_ioat.c_ioat_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._pcsid = type { i64, i32 }

@pci_ids = common dso_local global %struct._pcsid* null, align 8
@ENXIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @ioat_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ioat_probe(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct._pcsid*, align 8
  %5 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = call i64 @pci_get_devid(i32 %6)
  store i64 %7, i64* %5, align 8
  %8 = load %struct._pcsid*, %struct._pcsid** @pci_ids, align 8
  store %struct._pcsid* %8, %struct._pcsid** %4, align 8
  br label %9

9:                                                ; preds = %29, %1
  %10 = load %struct._pcsid*, %struct._pcsid** %4, align 8
  %11 = load %struct._pcsid*, %struct._pcsid** @pci_ids, align 8
  %12 = load %struct._pcsid*, %struct._pcsid** @pci_ids, align 8
  %13 = call i64 @nitems(%struct._pcsid* %12)
  %14 = getelementptr inbounds %struct._pcsid, %struct._pcsid* %11, i64 %13
  %15 = icmp ult %struct._pcsid* %10, %14
  br i1 %15, label %16, label %32

16:                                               ; preds = %9
  %17 = load %struct._pcsid*, %struct._pcsid** %4, align 8
  %18 = getelementptr inbounds %struct._pcsid, %struct._pcsid* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* %5, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %28

22:                                               ; preds = %16
  %23 = load i32, i32* %3, align 4
  %24 = load %struct._pcsid*, %struct._pcsid** %4, align 8
  %25 = getelementptr inbounds %struct._pcsid, %struct._pcsid* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @device_set_desc(i32 %23, i32 %26)
  store i32 0, i32* %2, align 4
  br label %34

28:                                               ; preds = %16
  br label %29

29:                                               ; preds = %28
  %30 = load %struct._pcsid*, %struct._pcsid** %4, align 8
  %31 = getelementptr inbounds %struct._pcsid, %struct._pcsid* %30, i32 1
  store %struct._pcsid* %31, %struct._pcsid** %4, align 8
  br label %9

32:                                               ; preds = %9
  %33 = load i32, i32* @ENXIO, align 4
  store i32 %33, i32* %2, align 4
  br label %34

34:                                               ; preds = %32, %22
  %35 = load i32, i32* %2, align 4
  ret i32 %35
}

declare dso_local i64 @pci_get_devid(i32) #1

declare dso_local i64 @nitems(%struct._pcsid*) #1

declare dso_local i32 @device_set_desc(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
