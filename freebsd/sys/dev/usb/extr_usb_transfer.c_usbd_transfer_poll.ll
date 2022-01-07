; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/extr_usb_transfer.c_usbd_transfer_poll.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/extr_usb_transfer.c_usbd_transfer_poll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_xfer = type { %struct.usb_xfer_root* }
%struct.usb_xfer_root = type { i32*, i32, %struct.TYPE_19__*, %struct.usb_device* }
%struct.TYPE_19__ = type { %struct.usb_proc_msg }
%struct.usb_proc_msg = type { i32 (%struct.usb_proc_msg*)* }
%struct.usb_device = type { %struct.TYPE_18__**, %struct.TYPE_15__*, %struct.usb_bus* }
%struct.TYPE_18__ = type { %struct.TYPE_17__* }
%struct.TYPE_17__ = type { %struct.TYPE_16__* }
%struct.TYPE_16__ = type { %struct.usb_proc_msg }
%struct.TYPE_15__ = type { %struct.usb_proc_msg }
%struct.usb_bus = type { i32, i32, %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i32 (%struct.usb_bus*)* }
%struct.TYPE_13__ = type { i64 }
%struct.TYPE_12__ = type { i64 }
%struct.TYPE_22__ = type { i64 }
%struct.TYPE_20__ = type { i64 }
%struct.TYPE_21__ = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @usbd_transfer_poll(%struct.usb_xfer** %0, i64 %1) #0 {
  %3 = alloca %struct.usb_xfer**, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.usb_xfer*, align 8
  %6 = alloca %struct.usb_xfer_root*, align 8
  %7 = alloca %struct.usb_device*, align 8
  %8 = alloca %struct.usb_proc_msg*, align 8
  %9 = alloca %struct.usb_bus*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store %struct.usb_xfer** %0, %struct.usb_xfer*** %3, align 8
  store i64 %1, i64* %4, align 8
  store i64 0, i64* %10, align 8
  br label %14

14:                                               ; preds = %206, %2
  %15 = load i64, i64* %10, align 8
  %16 = load i64, i64* %4, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %18, label %209

18:                                               ; preds = %14
  %19 = load %struct.usb_xfer**, %struct.usb_xfer*** %3, align 8
  %20 = load i64, i64* %10, align 8
  %21 = getelementptr inbounds %struct.usb_xfer*, %struct.usb_xfer** %19, i64 %20
  %22 = load %struct.usb_xfer*, %struct.usb_xfer** %21, align 8
  store %struct.usb_xfer* %22, %struct.usb_xfer** %5, align 8
  %23 = load %struct.usb_xfer*, %struct.usb_xfer** %5, align 8
  %24 = icmp eq %struct.usb_xfer* %23, null
  br i1 %24, label %25, label %26

25:                                               ; preds = %18
  br label %206

26:                                               ; preds = %18
  %27 = load %struct.usb_xfer*, %struct.usb_xfer** %5, align 8
  %28 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %27, i32 0, i32 0
  %29 = load %struct.usb_xfer_root*, %struct.usb_xfer_root** %28, align 8
  store %struct.usb_xfer_root* %29, %struct.usb_xfer_root** %6, align 8
  %30 = load %struct.usb_xfer_root*, %struct.usb_xfer_root** %6, align 8
  %31 = icmp eq %struct.usb_xfer_root* %30, null
  br i1 %31, label %32, label %33

32:                                               ; preds = %26
  br label %206

33:                                               ; preds = %26
  %34 = load %struct.usb_xfer_root*, %struct.usb_xfer_root** %6, align 8
  %35 = getelementptr inbounds %struct.usb_xfer_root, %struct.usb_xfer_root* %34, i32 0, i32 3
  %36 = load %struct.usb_device*, %struct.usb_device** %35, align 8
  store %struct.usb_device* %36, %struct.usb_device** %7, align 8
  %37 = load %struct.usb_device*, %struct.usb_device** %7, align 8
  %38 = icmp eq %struct.usb_device* %37, null
  br i1 %38, label %39, label %40

39:                                               ; preds = %33
  br label %206

40:                                               ; preds = %33
  %41 = load %struct.usb_device*, %struct.usb_device** %7, align 8
  %42 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %41, i32 0, i32 2
  %43 = load %struct.usb_bus*, %struct.usb_bus** %42, align 8
  store %struct.usb_bus* %43, %struct.usb_bus** %9, align 8
  %44 = load %struct.usb_bus*, %struct.usb_bus** %9, align 8
  %45 = icmp eq %struct.usb_bus* %44, null
  br i1 %45, label %46, label %47

46:                                               ; preds = %40
  br label %206

47:                                               ; preds = %40
  %48 = load %struct.usb_bus*, %struct.usb_bus** %9, align 8
  %49 = getelementptr inbounds %struct.usb_bus, %struct.usb_bus* %48, i32 0, i32 2
  %50 = load %struct.TYPE_14__*, %struct.TYPE_14__** %49, align 8
  %51 = icmp eq %struct.TYPE_14__* %50, null
  br i1 %51, label %52, label %53

52:                                               ; preds = %47
  br label %206

53:                                               ; preds = %47
  %54 = load %struct.usb_bus*, %struct.usb_bus** %9, align 8
  %55 = getelementptr inbounds %struct.usb_bus, %struct.usb_bus* %54, i32 0, i32 2
  %56 = load %struct.TYPE_14__*, %struct.TYPE_14__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %56, i32 0, i32 0
  %58 = load i32 (%struct.usb_bus*)*, i32 (%struct.usb_bus*)** %57, align 8
  %59 = icmp eq i32 (%struct.usb_bus*)* %58, null
  br i1 %59, label %60, label %61

60:                                               ; preds = %53
  br label %206

61:                                               ; preds = %53
  store i64 0, i64* %11, align 8
  store i64 0, i64* %12, align 8
  store i64 0, i64* %13, align 8
  %62 = call i64 (...) @USB_IN_POLLING_MODE_FUNC()
  %63 = icmp eq i64 %62, 0
  br i1 %63, label %64, label %103

64:                                               ; preds = %61
  br label %65

65:                                               ; preds = %70, %64
  %66 = load %struct.usb_bus*, %struct.usb_bus** %9, align 8
  %67 = getelementptr inbounds %struct.usb_bus, %struct.usb_bus* %66, i32 0, i32 0
  %68 = call i64 @mtx_owned(i32* %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %76

70:                                               ; preds = %65
  %71 = load %struct.usb_bus*, %struct.usb_bus** %9, align 8
  %72 = getelementptr inbounds %struct.usb_bus, %struct.usb_bus* %71, i32 0, i32 0
  %73 = call i32 @mtx_unlock_spin(i32* %72)
  %74 = load i64, i64* %11, align 8
  %75 = add i64 %74, 1
  store i64 %75, i64* %11, align 8
  br label %65

76:                                               ; preds = %65
  br label %77

77:                                               ; preds = %82, %76
  %78 = load %struct.usb_bus*, %struct.usb_bus** %9, align 8
  %79 = getelementptr inbounds %struct.usb_bus, %struct.usb_bus* %78, i32 0, i32 1
  %80 = call i64 @mtx_owned(i32* %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %88

82:                                               ; preds = %77
  %83 = load %struct.usb_bus*, %struct.usb_bus** %9, align 8
  %84 = getelementptr inbounds %struct.usb_bus, %struct.usb_bus* %83, i32 0, i32 1
  %85 = call i32 @mtx_unlock(i32* %84)
  %86 = load i64, i64* %12, align 8
  %87 = add i64 %86, 1
  store i64 %87, i64* %12, align 8
  br label %77

88:                                               ; preds = %77
  br label %89

89:                                               ; preds = %95, %88
  %90 = load %struct.usb_xfer_root*, %struct.usb_xfer_root** %6, align 8
  %91 = getelementptr inbounds %struct.usb_xfer_root, %struct.usb_xfer_root* %90, i32 0, i32 0
  %92 = load i32*, i32** %91, align 8
  %93 = call i64 @mtx_owned(i32* %92)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %102

95:                                               ; preds = %89
  %96 = load %struct.usb_xfer_root*, %struct.usb_xfer_root** %6, align 8
  %97 = getelementptr inbounds %struct.usb_xfer_root, %struct.usb_xfer_root* %96, i32 0, i32 0
  %98 = load i32*, i32** %97, align 8
  %99 = call i32 @mtx_unlock(i32* %98)
  %100 = load i64, i64* %13, align 8
  %101 = add i64 %100, 1
  store i64 %101, i64* %13, align 8
  br label %89

102:                                              ; preds = %89
  br label %103

103:                                              ; preds = %102, %61
  %104 = load %struct.usb_bus*, %struct.usb_bus** %9, align 8
  %105 = call %struct.TYPE_13__* @USB_BUS_CONTROL_XFER_PROC(%struct.usb_bus* %104)
  %106 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %105, i32 0, i32 0
  store i64 0, i64* %106, align 8
  %107 = load %struct.usb_bus*, %struct.usb_bus** %9, align 8
  %108 = call %struct.TYPE_12__* @USB_BUS_EXPLORE_PROC(%struct.usb_bus* %107)
  %109 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %108, i32 0, i32 0
  store i64 0, i64* %109, align 8
  %110 = load %struct.usb_bus*, %struct.usb_bus** %9, align 8
  %111 = call %struct.TYPE_22__* @USB_BUS_GIANT_PROC(%struct.usb_bus* %110)
  %112 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %111, i32 0, i32 0
  store i64 0, i64* %112, align 8
  %113 = load %struct.usb_bus*, %struct.usb_bus** %9, align 8
  %114 = call %struct.TYPE_20__* @USB_BUS_NON_GIANT_ISOC_PROC(%struct.usb_bus* %113)
  %115 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %114, i32 0, i32 0
  store i64 0, i64* %115, align 8
  %116 = load %struct.usb_bus*, %struct.usb_bus** %9, align 8
  %117 = call %struct.TYPE_21__* @USB_BUS_NON_GIANT_BULK_PROC(%struct.usb_bus* %116)
  %118 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %117, i32 0, i32 0
  store i64 0, i64* %118, align 8
  %119 = load %struct.usb_bus*, %struct.usb_bus** %9, align 8
  %120 = getelementptr inbounds %struct.usb_bus, %struct.usb_bus* %119, i32 0, i32 2
  %121 = load %struct.TYPE_14__*, %struct.TYPE_14__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %121, i32 0, i32 0
  %123 = load i32 (%struct.usb_bus*)*, i32 (%struct.usb_bus*)** %122, align 8
  %124 = load %struct.usb_bus*, %struct.usb_bus** %9, align 8
  %125 = call i32 %123(%struct.usb_bus* %124)
  %126 = load %struct.usb_xfer_root*, %struct.usb_xfer_root** %6, align 8
  %127 = getelementptr inbounds %struct.usb_xfer_root, %struct.usb_xfer_root* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 8
  %129 = call i32 @USB_BUS_LOCK(i32 %128)
  %130 = load %struct.usb_device*, %struct.usb_device** %7, align 8
  %131 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %130, i32 0, i32 0
  %132 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %131, align 8
  %133 = getelementptr inbounds %struct.TYPE_18__*, %struct.TYPE_18__** %132, i64 1
  %134 = load %struct.TYPE_18__*, %struct.TYPE_18__** %133, align 8
  %135 = icmp ne %struct.TYPE_18__* %134, null
  br i1 %135, label %136, label %163

136:                                              ; preds = %103
  %137 = load %struct.usb_device*, %struct.usb_device** %7, align 8
  %138 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %137, i32 0, i32 1
  %139 = load %struct.TYPE_15__*, %struct.TYPE_15__** %138, align 8
  %140 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %139, i64 0
  %141 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %140, i32 0, i32 0
  store %struct.usb_proc_msg* %141, %struct.usb_proc_msg** %8, align 8
  %142 = load %struct.usb_proc_msg*, %struct.usb_proc_msg** %8, align 8
  %143 = getelementptr inbounds %struct.usb_proc_msg, %struct.usb_proc_msg* %142, i32 0, i32 0
  %144 = load i32 (%struct.usb_proc_msg*)*, i32 (%struct.usb_proc_msg*)** %143, align 8
  %145 = load %struct.usb_proc_msg*, %struct.usb_proc_msg** %8, align 8
  %146 = call i32 %144(%struct.usb_proc_msg* %145)
  %147 = load %struct.usb_device*, %struct.usb_device** %7, align 8
  %148 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %147, i32 0, i32 0
  %149 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %148, align 8
  %150 = getelementptr inbounds %struct.TYPE_18__*, %struct.TYPE_18__** %149, i64 1
  %151 = load %struct.TYPE_18__*, %struct.TYPE_18__** %150, align 8
  %152 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %151, i32 0, i32 0
  %153 = load %struct.TYPE_17__*, %struct.TYPE_17__** %152, align 8
  %154 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %153, i32 0, i32 0
  %155 = load %struct.TYPE_16__*, %struct.TYPE_16__** %154, align 8
  %156 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %155, i64 0
  %157 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %156, i32 0, i32 0
  store %struct.usb_proc_msg* %157, %struct.usb_proc_msg** %8, align 8
  %158 = load %struct.usb_proc_msg*, %struct.usb_proc_msg** %8, align 8
  %159 = getelementptr inbounds %struct.usb_proc_msg, %struct.usb_proc_msg* %158, i32 0, i32 0
  %160 = load i32 (%struct.usb_proc_msg*)*, i32 (%struct.usb_proc_msg*)** %159, align 8
  %161 = load %struct.usb_proc_msg*, %struct.usb_proc_msg** %8, align 8
  %162 = call i32 %160(%struct.usb_proc_msg* %161)
  br label %163

163:                                              ; preds = %136, %103
  %164 = load %struct.usb_xfer_root*, %struct.usb_xfer_root** %6, align 8
  %165 = getelementptr inbounds %struct.usb_xfer_root, %struct.usb_xfer_root* %164, i32 0, i32 2
  %166 = load %struct.TYPE_19__*, %struct.TYPE_19__** %165, align 8
  %167 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %166, i64 0
  %168 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %167, i32 0, i32 0
  store %struct.usb_proc_msg* %168, %struct.usb_proc_msg** %8, align 8
  %169 = load %struct.usb_proc_msg*, %struct.usb_proc_msg** %8, align 8
  %170 = getelementptr inbounds %struct.usb_proc_msg, %struct.usb_proc_msg* %169, i32 0, i32 0
  %171 = load i32 (%struct.usb_proc_msg*)*, i32 (%struct.usb_proc_msg*)** %170, align 8
  %172 = load %struct.usb_proc_msg*, %struct.usb_proc_msg** %8, align 8
  %173 = call i32 %171(%struct.usb_proc_msg* %172)
  %174 = load %struct.usb_xfer_root*, %struct.usb_xfer_root** %6, align 8
  %175 = getelementptr inbounds %struct.usb_xfer_root, %struct.usb_xfer_root* %174, i32 0, i32 1
  %176 = load i32, i32* %175, align 8
  %177 = call i32 @USB_BUS_UNLOCK(i32 %176)
  br label %178

178:                                              ; preds = %182, %163
  %179 = load i64, i64* %13, align 8
  %180 = add i64 %179, -1
  store i64 %180, i64* %13, align 8
  %181 = icmp ne i64 %179, 0
  br i1 %181, label %182, label %187

182:                                              ; preds = %178
  %183 = load %struct.usb_xfer_root*, %struct.usb_xfer_root** %6, align 8
  %184 = getelementptr inbounds %struct.usb_xfer_root, %struct.usb_xfer_root* %183, i32 0, i32 0
  %185 = load i32*, i32** %184, align 8
  %186 = call i32 @mtx_lock(i32* %185)
  br label %178

187:                                              ; preds = %178
  br label %188

188:                                              ; preds = %192, %187
  %189 = load i64, i64* %12, align 8
  %190 = add i64 %189, -1
  store i64 %190, i64* %12, align 8
  %191 = icmp ne i64 %189, 0
  br i1 %191, label %192, label %196

192:                                              ; preds = %188
  %193 = load %struct.usb_bus*, %struct.usb_bus** %9, align 8
  %194 = getelementptr inbounds %struct.usb_bus, %struct.usb_bus* %193, i32 0, i32 1
  %195 = call i32 @mtx_lock(i32* %194)
  br label %188

196:                                              ; preds = %188
  br label %197

197:                                              ; preds = %201, %196
  %198 = load i64, i64* %11, align 8
  %199 = add i64 %198, -1
  store i64 %199, i64* %11, align 8
  %200 = icmp ne i64 %198, 0
  br i1 %200, label %201, label %205

201:                                              ; preds = %197
  %202 = load %struct.usb_bus*, %struct.usb_bus** %9, align 8
  %203 = getelementptr inbounds %struct.usb_bus, %struct.usb_bus* %202, i32 0, i32 0
  %204 = call i32 @mtx_lock_spin(i32* %203)
  br label %197

205:                                              ; preds = %197
  br label %206

206:                                              ; preds = %205, %60, %52, %46, %39, %32, %25
  %207 = load i64, i64* %10, align 8
  %208 = add i64 %207, 1
  store i64 %208, i64* %10, align 8
  br label %14

209:                                              ; preds = %14
  ret void
}

declare dso_local i64 @USB_IN_POLLING_MODE_FUNC(...) #1

declare dso_local i64 @mtx_owned(i32*) #1

declare dso_local i32 @mtx_unlock_spin(i32*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local %struct.TYPE_13__* @USB_BUS_CONTROL_XFER_PROC(%struct.usb_bus*) #1

declare dso_local %struct.TYPE_12__* @USB_BUS_EXPLORE_PROC(%struct.usb_bus*) #1

declare dso_local %struct.TYPE_22__* @USB_BUS_GIANT_PROC(%struct.usb_bus*) #1

declare dso_local %struct.TYPE_20__* @USB_BUS_NON_GIANT_ISOC_PROC(%struct.usb_bus*) #1

declare dso_local %struct.TYPE_21__* @USB_BUS_NON_GIANT_BULK_PROC(%struct.usb_bus*) #1

declare dso_local i32 @USB_BUS_LOCK(i32) #1

declare dso_local i32 @USB_BUS_UNLOCK(i32) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @mtx_lock_spin(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
