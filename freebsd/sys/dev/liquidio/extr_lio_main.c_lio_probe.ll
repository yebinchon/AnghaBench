; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/liquidio/extr_lio_main.c_lio_probe.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/liquidio/extr_lio_main.c_lio_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lio_vendor_info = type { i64, i64, i64, i64, i64 }

@PCI_VENDOR_ID_CAVIUM = common dso_local global i64 0, align 8
@ENXIO = common dso_local global i32 0, align 4
@lio_pci_tbl = common dso_local global %struct.lio_vendor_info* null, align 8
@.str = private unnamed_addr constant [17 x i8] c"%s, Version - %s\00", align 1
@lio_strings = common dso_local global i8** null, align 8
@LIO_VERSION = common dso_local global i8* null, align 8
@BUS_PROBE_DEFAULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @lio_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lio_probe(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.lio_vendor_info*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca [256 x i8], align 16
  store i32 %0, i32* %3, align 4
  %10 = load i32, i32* %3, align 4
  %11 = call i64 @pci_get_vendor(i32 %10)
  store i64 %11, i64* %5, align 8
  %12 = load i64, i64* %5, align 8
  %13 = load i64, i64* @PCI_VENDOR_ID_CAVIUM, align 8
  %14 = icmp ne i64 %12, %13
  br i1 %14, label %15, label %17

15:                                               ; preds = %1
  %16 = load i32, i32* @ENXIO, align 4
  store i32 %16, i32* %2, align 4
  br label %73

17:                                               ; preds = %1
  %18 = load i32, i32* %3, align 4
  %19 = call i64 @pci_get_device(i32 %18)
  store i64 %19, i64* %6, align 8
  %20 = load i32, i32* %3, align 4
  %21 = call i64 @pci_get_subdevice(i32 %20)
  store i64 %21, i64* %7, align 8
  %22 = load i32, i32* %3, align 4
  %23 = call i64 @pci_get_revid(i32 %22)
  store i64 %23, i64* %8, align 8
  %24 = load %struct.lio_vendor_info*, %struct.lio_vendor_info** @lio_pci_tbl, align 8
  store %struct.lio_vendor_info* %24, %struct.lio_vendor_info** %4, align 8
  br label %25

25:                                               ; preds = %68, %17
  %26 = load %struct.lio_vendor_info*, %struct.lio_vendor_info** %4, align 8
  %27 = getelementptr inbounds %struct.lio_vendor_info, %struct.lio_vendor_info* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %71

30:                                               ; preds = %25
  %31 = load i64, i64* %5, align 8
  %32 = load %struct.lio_vendor_info*, %struct.lio_vendor_info** %4, align 8
  %33 = getelementptr inbounds %struct.lio_vendor_info, %struct.lio_vendor_info* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp eq i64 %31, %34
  br i1 %35, label %36, label %68

36:                                               ; preds = %30
  %37 = load i64, i64* %6, align 8
  %38 = load %struct.lio_vendor_info*, %struct.lio_vendor_info** %4, align 8
  %39 = getelementptr inbounds %struct.lio_vendor_info, %struct.lio_vendor_info* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = icmp eq i64 %37, %40
  br i1 %41, label %42, label %68

42:                                               ; preds = %36
  %43 = load i64, i64* %7, align 8
  %44 = load %struct.lio_vendor_info*, %struct.lio_vendor_info** %4, align 8
  %45 = getelementptr inbounds %struct.lio_vendor_info, %struct.lio_vendor_info* %44, i32 0, i32 2
  %46 = load i64, i64* %45, align 8
  %47 = icmp eq i64 %43, %46
  br i1 %47, label %48, label %68

48:                                               ; preds = %42
  %49 = load i64, i64* %8, align 8
  %50 = load %struct.lio_vendor_info*, %struct.lio_vendor_info** %4, align 8
  %51 = getelementptr inbounds %struct.lio_vendor_info, %struct.lio_vendor_info* %50, i32 0, i32 3
  %52 = load i64, i64* %51, align 8
  %53 = icmp eq i64 %49, %52
  br i1 %53, label %54, label %68

54:                                               ; preds = %48
  %55 = getelementptr inbounds [256 x i8], [256 x i8]* %9, i64 0, i64 0
  %56 = load i8**, i8*** @lio_strings, align 8
  %57 = load %struct.lio_vendor_info*, %struct.lio_vendor_info** %4, align 8
  %58 = getelementptr inbounds %struct.lio_vendor_info, %struct.lio_vendor_info* %57, i32 0, i32 4
  %59 = load i64, i64* %58, align 8
  %60 = getelementptr inbounds i8*, i8** %56, i64 %59
  %61 = load i8*, i8** %60, align 8
  %62 = load i8*, i8** @LIO_VERSION, align 8
  %63 = call i32 @sprintf(i8* %55, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i8* %61, i8* %62)
  %64 = load i32, i32* %3, align 4
  %65 = getelementptr inbounds [256 x i8], [256 x i8]* %9, i64 0, i64 0
  %66 = call i32 @device_set_desc_copy(i32 %64, i8* %65)
  %67 = load i32, i32* @BUS_PROBE_DEFAULT, align 4
  store i32 %67, i32* %2, align 4
  br label %73

68:                                               ; preds = %48, %42, %36, %30
  %69 = load %struct.lio_vendor_info*, %struct.lio_vendor_info** %4, align 8
  %70 = getelementptr inbounds %struct.lio_vendor_info, %struct.lio_vendor_info* %69, i32 1
  store %struct.lio_vendor_info* %70, %struct.lio_vendor_info** %4, align 8
  br label %25

71:                                               ; preds = %25
  %72 = load i32, i32* @ENXIO, align 4
  store i32 %72, i32* %2, align 4
  br label %73

73:                                               ; preds = %71, %54, %15
  %74 = load i32, i32* %2, align 4
  ret i32 %74
}

declare dso_local i64 @pci_get_vendor(i32) #1

declare dso_local i64 @pci_get_device(i32) #1

declare dso_local i64 @pci_get_subdevice(i32) #1

declare dso_local i64 @pci_get_revid(i32) #1

declare dso_local i32 @sprintf(i8*, i8*, i8*, i8*) #1

declare dso_local i32 @device_set_desc_copy(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
