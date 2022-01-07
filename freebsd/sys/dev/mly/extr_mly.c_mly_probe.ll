; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mly/extr_mly.c_mly_probe.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mly/extr_mly.c_mly_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mly_ident = type { i64, i64, i64, i64, i32 }

@mly_identifiers = common dso_local global %struct.mly_ident* null, align 8
@BUS_PROBE_DEFAULT = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @mly_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mly_probe(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.mly_ident*, align 8
  store i32 %0, i32* %3, align 4
  %5 = call i32 @debug_called(i32 1)
  %6 = load %struct.mly_ident*, %struct.mly_ident** @mly_identifiers, align 8
  store %struct.mly_ident* %6, %struct.mly_ident** %4, align 8
  br label %7

7:                                                ; preds = %53, %1
  %8 = load %struct.mly_ident*, %struct.mly_ident** %4, align 8
  %9 = getelementptr inbounds %struct.mly_ident, %struct.mly_ident* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %56

12:                                               ; preds = %7
  %13 = load %struct.mly_ident*, %struct.mly_ident** %4, align 8
  %14 = getelementptr inbounds %struct.mly_ident, %struct.mly_ident* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i32, i32* %3, align 4
  %17 = call i64 @pci_get_vendor(i32 %16)
  %18 = icmp eq i64 %15, %17
  br i1 %18, label %19, label %52

19:                                               ; preds = %12
  %20 = load %struct.mly_ident*, %struct.mly_ident** %4, align 8
  %21 = getelementptr inbounds %struct.mly_ident, %struct.mly_ident* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = load i32, i32* %3, align 4
  %24 = call i64 @pci_get_device(i32 %23)
  %25 = icmp eq i64 %22, %24
  br i1 %25, label %26, label %52

26:                                               ; preds = %19
  %27 = load %struct.mly_ident*, %struct.mly_ident** %4, align 8
  %28 = getelementptr inbounds %struct.mly_ident, %struct.mly_ident* %27, i32 0, i32 2
  %29 = load i64, i64* %28, align 8
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %45, label %31

31:                                               ; preds = %26
  %32 = load %struct.mly_ident*, %struct.mly_ident** %4, align 8
  %33 = getelementptr inbounds %struct.mly_ident, %struct.mly_ident* %32, i32 0, i32 2
  %34 = load i64, i64* %33, align 8
  %35 = load i32, i32* %3, align 4
  %36 = call i64 @pci_get_subvendor(i32 %35)
  %37 = icmp eq i64 %34, %36
  br i1 %37, label %38, label %52

38:                                               ; preds = %31
  %39 = load %struct.mly_ident*, %struct.mly_ident** %4, align 8
  %40 = getelementptr inbounds %struct.mly_ident, %struct.mly_ident* %39, i32 0, i32 3
  %41 = load i64, i64* %40, align 8
  %42 = load i32, i32* %3, align 4
  %43 = call i64 @pci_get_subdevice(i32 %42)
  %44 = icmp eq i64 %41, %43
  br i1 %44, label %45, label %52

45:                                               ; preds = %38, %26
  %46 = load i32, i32* %3, align 4
  %47 = load %struct.mly_ident*, %struct.mly_ident** %4, align 8
  %48 = getelementptr inbounds %struct.mly_ident, %struct.mly_ident* %47, i32 0, i32 4
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @device_set_desc(i32 %46, i32 %49)
  %51 = load i32, i32* @BUS_PROBE_DEFAULT, align 4
  store i32 %51, i32* %2, align 4
  br label %58

52:                                               ; preds = %38, %31, %19, %12
  br label %53

53:                                               ; preds = %52
  %54 = load %struct.mly_ident*, %struct.mly_ident** %4, align 8
  %55 = getelementptr inbounds %struct.mly_ident, %struct.mly_ident* %54, i32 1
  store %struct.mly_ident* %55, %struct.mly_ident** %4, align 8
  br label %7

56:                                               ; preds = %7
  %57 = load i32, i32* @ENXIO, align 4
  store i32 %57, i32* %2, align 4
  br label %58

58:                                               ; preds = %56, %45
  %59 = load i32, i32* %2, align 4
  ret i32 %59
}

declare dso_local i32 @debug_called(i32) #1

declare dso_local i64 @pci_get_vendor(i32) #1

declare dso_local i64 @pci_get_device(i32) #1

declare dso_local i64 @pci_get_subvendor(i32) #1

declare dso_local i64 @pci_get_subdevice(i32) #1

declare dso_local i32 @device_set_desc(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
