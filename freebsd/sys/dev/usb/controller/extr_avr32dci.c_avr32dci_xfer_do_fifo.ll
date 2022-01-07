; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/controller/extr_avr32dci.c_avr32dci_xfer_do_fifo.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/controller/extr_avr32dci.c_avr32dci_xfer_do_fifo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_xfer = type { i8*, %struct.avr32dci_td* }
%struct.avr32dci_td = type { i64, %struct.avr32dci_td*, i32, i64, i64 (%struct.avr32dci_td*)* }

@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_xfer*)* @avr32dci_xfer_do_fifo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @avr32dci_xfer_do_fifo(%struct.usb_xfer* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.usb_xfer*, align 8
  %4 = alloca %struct.avr32dci_td*, align 8
  store %struct.usb_xfer* %0, %struct.usb_xfer** %3, align 8
  %5 = call i32 @DPRINTFN(i32 9, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %6 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %7 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %6, i32 0, i32 1
  %8 = load %struct.avr32dci_td*, %struct.avr32dci_td** %7, align 8
  store %struct.avr32dci_td* %8, %struct.avr32dci_td** %4, align 8
  br label %9

9:                                                ; preds = %1, %44
  %10 = load %struct.avr32dci_td*, %struct.avr32dci_td** %4, align 8
  %11 = getelementptr inbounds %struct.avr32dci_td, %struct.avr32dci_td* %10, i32 0, i32 4
  %12 = load i64 (%struct.avr32dci_td*)*, i64 (%struct.avr32dci_td*)** %11, align 8
  %13 = load %struct.avr32dci_td*, %struct.avr32dci_td** %4, align 8
  %14 = call i64 %12(%struct.avr32dci_td* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %9
  br label %51

17:                                               ; preds = %9
  %18 = load %struct.avr32dci_td*, %struct.avr32dci_td** %4, align 8
  %19 = bitcast %struct.avr32dci_td* %18 to i8*
  %20 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %21 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %20, i32 0, i32 0
  %22 = load i8*, i8** %21, align 8
  %23 = icmp eq i8* %19, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %17
  br label %52

25:                                               ; preds = %17
  %26 = load %struct.avr32dci_td*, %struct.avr32dci_td** %4, align 8
  %27 = getelementptr inbounds %struct.avr32dci_td, %struct.avr32dci_td* %26, i32 0, i32 3
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %25
  br label %52

31:                                               ; preds = %25
  %32 = load %struct.avr32dci_td*, %struct.avr32dci_td** %4, align 8
  %33 = getelementptr inbounds %struct.avr32dci_td, %struct.avr32dci_td* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp sgt i64 %34, 0
  br i1 %35, label %36, label %43

36:                                               ; preds = %31
  %37 = load %struct.avr32dci_td*, %struct.avr32dci_td** %4, align 8
  %38 = getelementptr inbounds %struct.avr32dci_td, %struct.avr32dci_td* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 8
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %42, label %41

41:                                               ; preds = %36
  br label %52

42:                                               ; preds = %36
  br label %43

43:                                               ; preds = %42, %31
  br label %44

44:                                               ; preds = %43
  %45 = load %struct.avr32dci_td*, %struct.avr32dci_td** %4, align 8
  %46 = getelementptr inbounds %struct.avr32dci_td, %struct.avr32dci_td* %45, i32 0, i32 1
  %47 = load %struct.avr32dci_td*, %struct.avr32dci_td** %46, align 8
  store %struct.avr32dci_td* %47, %struct.avr32dci_td** %4, align 8
  %48 = load %struct.avr32dci_td*, %struct.avr32dci_td** %4, align 8
  %49 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %50 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %49, i32 0, i32 1
  store %struct.avr32dci_td* %48, %struct.avr32dci_td** %50, align 8
  br label %9

51:                                               ; preds = %16
  store i32 1, i32* %2, align 4
  br label %55

52:                                               ; preds = %41, %30, %24
  %53 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %54 = call i32 @avr32dci_standard_done(%struct.usb_xfer* %53)
  store i32 0, i32* %2, align 4
  br label %55

55:                                               ; preds = %52, %51
  %56 = load i32, i32* %2, align 4
  ret i32 %56
}

declare dso_local i32 @DPRINTFN(i32, i8*) #1

declare dso_local i32 @avr32dci_standard_done(%struct.usb_xfer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
