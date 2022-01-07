; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/controller/extr_uhci.c_uhci_check_transfer_sub.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/controller/extr_uhci.c_uhci_check_transfer_sub.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_xfer = type { %struct.TYPE_5__*, %struct.TYPE_4__, %struct.TYPE_5__*, %struct.TYPE_6__** }
%struct.TYPE_4__ = type { i64, i64 }
%struct.TYPE_5__ = type { i32, i32, %struct.TYPE_5__*, %struct.TYPE_5__*, i32 }
%struct.TYPE_6__ = type { i32, i32 }

@.str = private unnamed_addr constant [28 x i8] c"xfer=%p following alt next\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_xfer*)* @uhci_check_transfer_sub to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @uhci_check_transfer_sub(%struct.usb_xfer* %0) #0 {
  %2 = alloca %struct.usb_xfer*, align 8
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.usb_xfer* %0, %struct.usb_xfer** %2, align 8
  %8 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %9 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %8, i32 0, i32 2
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  store %struct.TYPE_5__* %10, %struct.TYPE_5__** %4, align 8
  %11 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %12 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %11, i32 0, i32 3
  %13 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %12, align 8
  %14 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %15 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %13, i64 %17
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %18, align 8
  store %struct.TYPE_6__* %19, %struct.TYPE_6__** %3, align 8
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 3
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  store i32 %24, i32* %6, align 4
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 2
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %26, align 8
  store %struct.TYPE_5__* %27, %struct.TYPE_5__** %4, align 8
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %29 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %30 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %29, i32 0, i32 2
  store %struct.TYPE_5__* %28, %struct.TYPE_5__** %30, align 8
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  store i32 %33, i32* %7, align 4
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 2
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %35, align 8
  store %struct.TYPE_5__* %36, %struct.TYPE_5__** %5, align 8
  %37 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %38 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %1
  br label %84

43:                                               ; preds = %1
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* %6, align 4
  %48 = xor i32 %46, %47
  %49 = call i32 @UHCI_TD_SET_DT(i32 1)
  %50 = call i32 @htole32(i32 %49)
  %51 = and i32 %48, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %54, label %53

53:                                               ; preds = %43
  br label %84

54:                                               ; preds = %43
  br label %55

55:                                               ; preds = %54, %82
  %56 = call i32 @UHCI_TD_SET_DT(i32 1)
  %57 = call i32 @htole32(i32 %56)
  %58 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = xor i32 %60, %57
  store i32 %61, i32* %59, align 8
  %62 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 4
  %64 = load i32, i32* %63, align 8
  %65 = call i32 @usb_pc_cpu_flush(i32 %64)
  %66 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %67 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %68 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %67, i32 0, i32 0
  %69 = load %struct.TYPE_5__*, %struct.TYPE_5__** %68, align 8
  %70 = icmp eq %struct.TYPE_5__* %66, %69
  br i1 %70, label %71, label %72

71:                                               ; preds = %55
  br label %83

72:                                               ; preds = %55
  %73 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 3
  %75 = load %struct.TYPE_5__*, %struct.TYPE_5__** %74, align 8
  store %struct.TYPE_5__* %75, %struct.TYPE_5__** %4, align 8
  %76 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i32 0, i32 2
  %78 = load %struct.TYPE_5__*, %struct.TYPE_5__** %77, align 8
  %79 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %80 = icmp ne %struct.TYPE_5__* %78, %79
  br i1 %80, label %81, label %82

81:                                               ; preds = %72
  br label %83

82:                                               ; preds = %72
  br label %55

83:                                               ; preds = %81, %71
  br label %84

84:                                               ; preds = %83, %53, %42
  %85 = load i32, i32* %7, align 4
  %86 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i32 0, i32 0
  store i32 %85, i32* %87, align 4
  %88 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @usb_pc_cpu_flush(i32 %90)
  %92 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %93 = call i32 @DPRINTFN(i32 13, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), %struct.usb_xfer* %92)
  ret void
}

declare dso_local i32 @htole32(i32) #1

declare dso_local i32 @UHCI_TD_SET_DT(i32) #1

declare dso_local i32 @usb_pc_cpu_flush(i32) #1

declare dso_local i32 @DPRINTFN(i32, i8*, %struct.usb_xfer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
