; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/extr_usb_transfer.c_usbd_transfer_stop.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/extr_usb_transfer.c_usbd_transfer_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_xfer = type { i64, %struct.TYPE_7__*, %struct.usb_endpoint*, %struct.TYPE_5__, i32 }
%struct.TYPE_7__ = type { i32 }
%struct.usb_endpoint = type { %struct.TYPE_8__*, %struct.TYPE_6__* }
%struct.TYPE_8__ = type { %struct.usb_xfer* }
%struct.TYPE_6__ = type { i32 (%struct.usb_xfer*)* }
%struct.TYPE_5__ = type { i32, i64, i64, i64, i64 }

@MA_OWNED = common dso_local global i32 0, align 4
@USB_ERR_CANCELLED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"close\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @usbd_transfer_stop(%struct.usb_xfer* %0) #0 {
  %2 = alloca %struct.usb_xfer*, align 8
  %3 = alloca %struct.usb_endpoint*, align 8
  store %struct.usb_xfer* %0, %struct.usb_xfer** %2, align 8
  %4 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %5 = icmp eq %struct.usb_xfer* %4, null
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  br label %130

7:                                                ; preds = %1
  %8 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %9 = load i32, i32* @MA_OWNED, align 4
  %10 = call i32 @USB_XFER_LOCK_ASSERT(%struct.usb_xfer* %8, i32 %9)
  %11 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %12 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %11, i32 0, i32 3
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 4
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %39, label %16

16:                                               ; preds = %7
  %17 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %18 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %17, i32 0, i32 3
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 3
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %38

22:                                               ; preds = %16
  %23 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %24 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %23, i32 0, i32 1
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @USB_BUS_LOCK(i32 %27)
  %29 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %30 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %29, i32 0, i32 3
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 3
  store i64 0, i64* %31, align 8
  %32 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %33 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %32, i32 0, i32 1
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @USB_BUS_UNLOCK(i32 %36)
  br label %38

38:                                               ; preds = %22, %16
  br label %130

39:                                               ; preds = %7
  %40 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %41 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %40, i32 0, i32 1
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @USB_BUS_LOCK(i32 %44)
  %46 = load i32, i32* @USB_ERR_CANCELLED, align 4
  %47 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %48 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %47, i32 0, i32 4
  store i32 %46, i32* %48, align 8
  %49 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %50 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %49, i32 0, i32 3
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 4
  store i64 0, i64* %51, align 8
  %52 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %53 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %52, i32 0, i32 3
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 3
  store i64 0, i64* %54, align 8
  %55 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %56 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %55, i32 0, i32 3
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 2
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %88

60:                                               ; preds = %39
  %61 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %62 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %61, i32 0, i32 3
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %86

66:                                               ; preds = %60
  %67 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %68 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %67, i32 0, i32 3
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %86, label %72

72:                                               ; preds = %66
  %73 = call i32 @DPRINTF(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %74 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %75 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %74, i32 0, i32 2
  %76 = load %struct.usb_endpoint*, %struct.usb_endpoint** %75, align 8
  %77 = getelementptr inbounds %struct.usb_endpoint, %struct.usb_endpoint* %76, i32 0, i32 1
  %78 = load %struct.TYPE_6__*, %struct.TYPE_6__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 0
  %80 = load i32 (%struct.usb_xfer*)*, i32 (%struct.usb_xfer*)** %79, align 8
  %81 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %82 = call i32 %80(%struct.usb_xfer* %81)
  %83 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %84 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %83, i32 0, i32 3
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i32 0, i32 0
  store i32 1, i32* %85, align 8
  br label %87

86:                                               ; preds = %66, %60
  br label %87

87:                                               ; preds = %86, %72
  br label %123

88:                                               ; preds = %39
  %89 = call i32 @DPRINTF(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %90 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %91 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %90, i32 0, i32 2
  %92 = load %struct.usb_endpoint*, %struct.usb_endpoint** %91, align 8
  %93 = getelementptr inbounds %struct.usb_endpoint, %struct.usb_endpoint* %92, i32 0, i32 1
  %94 = load %struct.TYPE_6__*, %struct.TYPE_6__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %94, i32 0, i32 0
  %96 = load i32 (%struct.usb_xfer*)*, i32 (%struct.usb_xfer*)** %95, align 8
  %97 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %98 = call i32 %96(%struct.usb_xfer* %97)
  %99 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %100 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %99, i32 0, i32 2
  %101 = load %struct.usb_endpoint*, %struct.usb_endpoint** %100, align 8
  store %struct.usb_endpoint* %101, %struct.usb_endpoint** %3, align 8
  %102 = load %struct.usb_endpoint*, %struct.usb_endpoint** %3, align 8
  %103 = getelementptr inbounds %struct.usb_endpoint, %struct.usb_endpoint* %102, i32 0, i32 0
  %104 = load %struct.TYPE_8__*, %struct.TYPE_8__** %103, align 8
  %105 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %106 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %104, i64 %107
  %109 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %108, i32 0, i32 0
  %110 = load %struct.usb_xfer*, %struct.usb_xfer** %109, align 8
  %111 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %112 = icmp eq %struct.usb_xfer* %110, %111
  br i1 %112, label %113, label %122

113:                                              ; preds = %88
  %114 = load %struct.usb_endpoint*, %struct.usb_endpoint** %3, align 8
  %115 = getelementptr inbounds %struct.usb_endpoint, %struct.usb_endpoint* %114, i32 0, i32 0
  %116 = load %struct.TYPE_8__*, %struct.TYPE_8__** %115, align 8
  %117 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %118 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %116, i64 %119
  %121 = call i32 @usb_command_wrapper(%struct.TYPE_8__* %120, i32* null)
  br label %122

122:                                              ; preds = %113, %88
  br label %123

123:                                              ; preds = %122, %87
  %124 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %125 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %124, i32 0, i32 1
  %126 = load %struct.TYPE_7__*, %struct.TYPE_7__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 4
  %129 = call i32 @USB_BUS_UNLOCK(i32 %128)
  br label %130

130:                                              ; preds = %123, %38, %6
  ret void
}

declare dso_local i32 @USB_XFER_LOCK_ASSERT(%struct.usb_xfer*, i32) #1

declare dso_local i32 @USB_BUS_LOCK(i32) #1

declare dso_local i32 @USB_BUS_UNLOCK(i32) #1

declare dso_local i32 @DPRINTF(i8*) #1

declare dso_local i32 @usb_command_wrapper(%struct.TYPE_8__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
