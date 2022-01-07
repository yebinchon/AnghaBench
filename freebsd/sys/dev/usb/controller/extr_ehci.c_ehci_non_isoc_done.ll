; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/controller/extr_ehci.c_ehci_non_isoc_done.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/controller/extr_ehci.c_ehci_non_isoc_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_xfer = type { i32, i32, %struct.TYPE_5__, i32*, i32*, %struct.TYPE_6__**, %struct.TYPE_4__*, i32 }
%struct.TYPE_5__ = type { i64, i32, i64, i64 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [35 x i8] c"xfer=%p endpoint=%p transfer done\0A\00", align 1
@ehcidebug = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_xfer*)* @ehci_non_isoc_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ehci_non_isoc_done(%struct.usb_xfer* %0) #0 {
  %2 = alloca %struct.usb_xfer*, align 8
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca i32, align 4
  store %struct.usb_xfer* %0, %struct.usb_xfer** %2, align 8
  store i32 0, i32* %4, align 4
  %5 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %6 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %7 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %6, i32 0, i32 7
  %8 = load i32, i32* %7, align 8
  %9 = call i32 @DPRINTFN(i32 13, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), %struct.usb_xfer* %5, i32 %8)
  %10 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %11 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %10, i32 0, i32 5
  %12 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %11, align 8
  %13 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %14 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %13, i32 0, i32 2
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %12, i64 %16
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  store %struct.TYPE_6__* %18, %struct.TYPE_6__** %3, align 8
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @usb_pc_cpu_invalidate(i32 %21)
  %23 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %24 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %23, i32 0, i32 4
  %25 = load i32*, i32** %24, align 8
  %26 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %27 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %26, i32 0, i32 3
  store i32* %25, i32** %27, align 8
  %28 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %29 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %28, i32 0, i32 2
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 2
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %51

33:                                               ; preds = %1
  %34 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %35 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %34, i32 0, i32 2
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 3
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %33
  %40 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %41 = call i32 @ehci_non_isoc_done_sub(%struct.usb_xfer* %40)
  store i32 %41, i32* %4, align 4
  br label %42

42:                                               ; preds = %39, %33
  %43 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %44 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %43, i32 0, i32 0
  store i32 1, i32* %44, align 8
  %45 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %46 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %45, i32 0, i32 3
  %47 = load i32*, i32** %46, align 8
  %48 = icmp eq i32* %47, null
  br i1 %48, label %49, label %50

49:                                               ; preds = %42
  br label %89

50:                                               ; preds = %42
  br label %51

51:                                               ; preds = %50, %1
  br label %52

52:                                               ; preds = %72, %51
  %53 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %54 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %57 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = icmp ne i32 %55, %58
  br i1 %59, label %60, label %73

60:                                               ; preds = %52
  %61 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %62 = call i32 @ehci_non_isoc_done_sub(%struct.usb_xfer* %61)
  store i32 %62, i32* %4, align 4
  %63 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %64 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %64, align 8
  %67 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %68 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %67, i32 0, i32 3
  %69 = load i32*, i32** %68, align 8
  %70 = icmp eq i32* %69, null
  br i1 %70, label %71, label %72

71:                                               ; preds = %60
  br label %89

72:                                               ; preds = %60
  br label %52

73:                                               ; preds = %52
  %74 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %75 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %74, i32 0, i32 2
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 2
  %77 = load i64, i64* %76, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %88

79:                                               ; preds = %73
  %80 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %81 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %80, i32 0, i32 2
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 8
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %88, label %85

85:                                               ; preds = %79
  %86 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %87 = call i32 @ehci_non_isoc_done_sub(%struct.usb_xfer* %86)
  store i32 %87, i32* %4, align 4
  br label %88

88:                                               ; preds = %85, %79, %73
  br label %89

89:                                               ; preds = %88, %71, %49
  %90 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %91 = load i32, i32* %4, align 4
  %92 = call i32 @ehci_device_done(%struct.usb_xfer* %90, i32 %91)
  ret void
}

declare dso_local i32 @DPRINTFN(i32, i8*, %struct.usb_xfer*, i32) #1

declare dso_local i32 @usb_pc_cpu_invalidate(i32) #1

declare dso_local i32 @ehci_non_isoc_done_sub(%struct.usb_xfer*) #1

declare dso_local i32 @ehci_device_done(%struct.usb_xfer*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
