; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/extr_usb_hub.c_uhub_child_pnpinfo_string.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/extr_usb_hub.c_uhub_child_pnpinfo_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uhub_softc = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.usb_hub* }
%struct.usb_hub = type { i32 }
%struct.usb_interface = type { i8*, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32, i32, i32 }
%struct.hub_result = type { %struct.TYPE_11__*, i32 }
%struct.TYPE_11__ = type { %struct.TYPE_9__, %struct.TYPE_8__ }
%struct.TYPE_9__ = type { i64 }
%struct.TYPE_8__ = type { i32, i32, i32, i32, i32, i32 }

@Giant = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"device not on hub\0A\00", align 1
@.str.1 = private unnamed_addr constant [173 x i8] c"vendor=0x%04x product=0x%04x devclass=0x%02x devsubclass=0x%02x devproto=0x%02x sernum=\22%s\22 release=0x%04x mode=%s intclass=0x%02x intsubclass=0x%02x intprotocol=0x%02x%s%s\00", align 1
@USB_MODE_HOST = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [5 x i8] c"host\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"device\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.5 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i8*, i64)* @uhub_child_pnpinfo_string to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uhub_child_pnpinfo_string(i32 %0, i32 %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.uhub_softc*, align 8
  %11 = alloca %struct.usb_hub*, align 8
  %12 = alloca %struct.usb_interface*, align 8
  %13 = alloca %struct.hub_result, align 8
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %14 = load i32, i32* %6, align 4
  %15 = call i32 @device_is_attached(i32 %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %24, label %17

17:                                               ; preds = %4
  %18 = load i64, i64* %9, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %17
  %21 = load i8*, i8** %8, align 8
  %22 = getelementptr inbounds i8, i8* %21, i64 0
  store i8 0, i8* %22, align 1
  br label %23

23:                                               ; preds = %20, %17
  store i32 0, i32* %5, align 4
  br label %151

24:                                               ; preds = %4
  %25 = load i32, i32* %6, align 4
  %26 = call %struct.uhub_softc* @device_get_softc(i32 %25)
  store %struct.uhub_softc* %26, %struct.uhub_softc** %10, align 8
  %27 = load %struct.uhub_softc*, %struct.uhub_softc** %10, align 8
  %28 = getelementptr inbounds %struct.uhub_softc, %struct.uhub_softc* %27, i32 0, i32 0
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 0
  %31 = load %struct.usb_hub*, %struct.usb_hub** %30, align 8
  store %struct.usb_hub* %31, %struct.usb_hub** %11, align 8
  %32 = call i32 @mtx_lock(i32* @Giant)
  %33 = load %struct.usb_hub*, %struct.usb_hub** %11, align 8
  %34 = load i32, i32* %7, align 4
  %35 = call i32 @uhub_find_iface_index(%struct.usb_hub* %33, i32 %34, %struct.hub_result* %13)
  %36 = getelementptr inbounds %struct.hub_result, %struct.hub_result* %13, i32 0, i32 0
  %37 = load %struct.TYPE_11__*, %struct.TYPE_11__** %36, align 8
  %38 = icmp ne %struct.TYPE_11__* %37, null
  br i1 %38, label %47, label %39

39:                                               ; preds = %24
  %40 = call i32 @DPRINTF(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %41 = load i64, i64* %9, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %39
  %44 = load i8*, i8** %8, align 8
  %45 = getelementptr inbounds i8, i8* %44, i64 0
  store i8 0, i8* %45, align 1
  br label %46

46:                                               ; preds = %43, %39
  br label %149

47:                                               ; preds = %24
  %48 = getelementptr inbounds %struct.hub_result, %struct.hub_result* %13, i32 0, i32 0
  %49 = load %struct.TYPE_11__*, %struct.TYPE_11__** %48, align 8
  %50 = getelementptr inbounds %struct.hub_result, %struct.hub_result* %13, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = call %struct.usb_interface* @usbd_get_iface(%struct.TYPE_11__* %49, i32 %51)
  store %struct.usb_interface* %52, %struct.usb_interface** %12, align 8
  %53 = load %struct.usb_interface*, %struct.usb_interface** %12, align 8
  %54 = icmp ne %struct.usb_interface* %53, null
  br i1 %54, label %55, label %141

55:                                               ; preds = %47
  %56 = load %struct.usb_interface*, %struct.usb_interface** %12, align 8
  %57 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %56, i32 0, i32 1
  %58 = load %struct.TYPE_10__*, %struct.TYPE_10__** %57, align 8
  %59 = icmp ne %struct.TYPE_10__* %58, null
  br i1 %59, label %60, label %141

60:                                               ; preds = %55
  %61 = load i8*, i8** %8, align 8
  %62 = load i64, i64* %9, align 8
  %63 = getelementptr inbounds %struct.hub_result, %struct.hub_result* %13, i32 0, i32 0
  %64 = load %struct.TYPE_11__*, %struct.TYPE_11__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 5
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @UGETW(i32 %67)
  %69 = getelementptr inbounds %struct.hub_result, %struct.hub_result* %13, i32 0, i32 0
  %70 = load %struct.TYPE_11__*, %struct.TYPE_11__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %71, i32 0, i32 4
  %73 = load i32, i32* %72, align 8
  %74 = call i32 @UGETW(i32 %73)
  %75 = getelementptr inbounds %struct.hub_result, %struct.hub_result* %13, i32 0, i32 0
  %76 = load %struct.TYPE_11__*, %struct.TYPE_11__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = getelementptr inbounds %struct.hub_result, %struct.hub_result* %13, i32 0, i32 0
  %81 = load %struct.TYPE_11__*, %struct.TYPE_11__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %81, i32 0, i32 1
  %83 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = getelementptr inbounds %struct.hub_result, %struct.hub_result* %13, i32 0, i32 0
  %86 = load %struct.TYPE_11__*, %struct.TYPE_11__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %86, i32 0, i32 1
  %88 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 8
  %90 = getelementptr inbounds %struct.hub_result, %struct.hub_result* %13, i32 0, i32 0
  %91 = load %struct.TYPE_11__*, %struct.TYPE_11__** %90, align 8
  %92 = call i8* @usb_get_serial(%struct.TYPE_11__* %91)
  %93 = getelementptr inbounds %struct.hub_result, %struct.hub_result* %13, i32 0, i32 0
  %94 = load %struct.TYPE_11__*, %struct.TYPE_11__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %94, i32 0, i32 1
  %96 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %95, i32 0, i32 3
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @UGETW(i32 %97)
  %99 = getelementptr inbounds %struct.hub_result, %struct.hub_result* %13, i32 0, i32 0
  %100 = load %struct.TYPE_11__*, %struct.TYPE_11__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = load i64, i64* @USB_MODE_HOST, align 8
  %105 = icmp eq i64 %103, %104
  %106 = zext i1 %105 to i64
  %107 = select i1 %105, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0)
  %108 = load %struct.usb_interface*, %struct.usb_interface** %12, align 8
  %109 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %108, i32 0, i32 1
  %110 = load %struct.TYPE_10__*, %struct.TYPE_10__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = load %struct.usb_interface*, %struct.usb_interface** %12, align 8
  %114 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %113, i32 0, i32 1
  %115 = load %struct.TYPE_10__*, %struct.TYPE_10__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  %118 = load %struct.usb_interface*, %struct.usb_interface** %12, align 8
  %119 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %118, i32 0, i32 1
  %120 = load %struct.TYPE_10__*, %struct.TYPE_10__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %120, i32 0, i32 2
  %122 = load i32, i32* %121, align 4
  %123 = load %struct.usb_interface*, %struct.usb_interface** %12, align 8
  %124 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %123, i32 0, i32 0
  %125 = load i8*, i8** %124, align 8
  %126 = icmp ne i8* %125, null
  %127 = zext i1 %126 to i64
  %128 = select i1 %126, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i64 0, i64 0)
  %129 = load %struct.usb_interface*, %struct.usb_interface** %12, align 8
  %130 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %129, i32 0, i32 0
  %131 = load i8*, i8** %130, align 8
  %132 = icmp ne i8* %131, null
  br i1 %132, label %133, label %137

133:                                              ; preds = %60
  %134 = load %struct.usb_interface*, %struct.usb_interface** %12, align 8
  %135 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %134, i32 0, i32 0
  %136 = load i8*, i8** %135, align 8
  br label %138

137:                                              ; preds = %60
  br label %138

138:                                              ; preds = %137, %133
  %139 = phi i8* [ %136, %133 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i64 0, i64 0), %137 ]
  %140 = call i32 @snprintf(i8* %61, i64 %62, i8* getelementptr inbounds ([173 x i8], [173 x i8]* @.str.1, i64 0, i64 0), i32 %68, i32 %74, i32 %79, i32 %84, i32 %89, i8* %92, i32 %98, i8* %107, i32 %112, i32 %117, i32 %122, i8* %128, i8* %139)
  br label %148

141:                                              ; preds = %55, %47
  %142 = load i64, i64* %9, align 8
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %144, label %147

144:                                              ; preds = %141
  %145 = load i8*, i8** %8, align 8
  %146 = getelementptr inbounds i8, i8* %145, i64 0
  store i8 0, i8* %146, align 1
  br label %147

147:                                              ; preds = %144, %141
  br label %149

148:                                              ; preds = %138
  br label %149

149:                                              ; preds = %148, %147, %46
  %150 = call i32 @mtx_unlock(i32* @Giant)
  store i32 0, i32* %5, align 4
  br label %151

151:                                              ; preds = %149, %23
  %152 = load i32, i32* %5, align 4
  ret i32 %152
}

declare dso_local i32 @device_is_attached(i32) #1

declare dso_local %struct.uhub_softc* @device_get_softc(i32) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @uhub_find_iface_index(%struct.usb_hub*, i32, %struct.hub_result*) #1

declare dso_local i32 @DPRINTF(i8*) #1

declare dso_local %struct.usb_interface* @usbd_get_iface(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @snprintf(i8*, i64, i8*, i32, i32, i32, i32, i32, i8*, i32, i8*, i32, i32, i32, i8*, i8*) #1

declare dso_local i32 @UGETW(i32) #1

declare dso_local i8* @usb_get_serial(%struct.TYPE_11__*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
