; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/controller/extr_uhci.c_uhci_non_isoc_done.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/controller/extr_uhci.c_uhci_non_isoc_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_xfer = type { i32, i32, %struct.TYPE_2__, i32*, i32*, i32 }
%struct.TYPE_2__ = type { i32, i64, i64 }

@.str = private unnamed_addr constant [35 x i8] c"xfer=%p endpoint=%p transfer done\0A\00", align 1
@uhcidebug = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_xfer*)* @uhci_non_isoc_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @uhci_non_isoc_done(%struct.usb_xfer* %0) #0 {
  %2 = alloca %struct.usb_xfer*, align 8
  %3 = alloca i32, align 4
  store %struct.usb_xfer* %0, %struct.usb_xfer** %2, align 8
  store i32 0, i32* %3, align 4
  %4 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %5 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %6 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %5, i32 0, i32 5
  %7 = load i32, i32* %6, align 8
  %8 = call i32 @DPRINTFN(i32 13, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), %struct.usb_xfer* %4, i32 %7)
  %9 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %10 = call i32 @usb_bdma_post_sync(%struct.usb_xfer* %9)
  %11 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %12 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %11, i32 0, i32 4
  %13 = load i32*, i32** %12, align 8
  %14 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %15 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %14, i32 0, i32 3
  store i32* %13, i32** %15, align 8
  %16 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %17 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %16, i32 0, i32 2
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %39

21:                                               ; preds = %1
  %22 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %23 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %22, i32 0, i32 2
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 2
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %21
  %28 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %29 = call i32 @uhci_non_isoc_done_sub(%struct.usb_xfer* %28)
  store i32 %29, i32* %3, align 4
  br label %30

30:                                               ; preds = %27, %21
  %31 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %32 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %31, i32 0, i32 0
  store i32 1, i32* %32, align 8
  %33 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %34 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %33, i32 0, i32 3
  %35 = load i32*, i32** %34, align 8
  %36 = icmp eq i32* %35, null
  br i1 %36, label %37, label %38

37:                                               ; preds = %30
  br label %77

38:                                               ; preds = %30
  br label %39

39:                                               ; preds = %38, %1
  br label %40

40:                                               ; preds = %60, %39
  %41 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %42 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %45 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = icmp ne i32 %43, %46
  br i1 %47, label %48, label %61

48:                                               ; preds = %40
  %49 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %50 = call i32 @uhci_non_isoc_done_sub(%struct.usb_xfer* %49)
  store i32 %50, i32* %3, align 4
  %51 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %52 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %52, align 8
  %55 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %56 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %55, i32 0, i32 3
  %57 = load i32*, i32** %56, align 8
  %58 = icmp eq i32* %57, null
  br i1 %58, label %59, label %60

59:                                               ; preds = %48
  br label %77

60:                                               ; preds = %48
  br label %40

61:                                               ; preds = %40
  %62 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %63 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %62, i32 0, i32 2
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %76

67:                                               ; preds = %61
  %68 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %69 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %68, i32 0, i32 2
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %76, label %73

73:                                               ; preds = %67
  %74 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %75 = call i32 @uhci_non_isoc_done_sub(%struct.usb_xfer* %74)
  store i32 %75, i32* %3, align 4
  br label %76

76:                                               ; preds = %73, %67, %61
  br label %77

77:                                               ; preds = %76, %59, %37
  %78 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %79 = load i32, i32* %3, align 4
  %80 = call i32 @uhci_device_done(%struct.usb_xfer* %78, i32 %79)
  ret void
}

declare dso_local i32 @DPRINTFN(i32, i8*, %struct.usb_xfer*, i32) #1

declare dso_local i32 @usb_bdma_post_sync(%struct.usb_xfer*) #1

declare dso_local i32 @uhci_non_isoc_done_sub(%struct.usb_xfer*) #1

declare dso_local i32 @uhci_device_done(%struct.usb_xfer*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
