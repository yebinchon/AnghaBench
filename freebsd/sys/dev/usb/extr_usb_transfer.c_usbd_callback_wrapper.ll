; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/extr_usb_transfer.c_usbd_callback_wrapper.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/extr_usb_transfer.c_usbd_callback_wrapper.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_xfer_queue = type { i64, %struct.usb_xfer* }
%struct.usb_xfer = type { i64, %struct.TYPE_3__, i64, i32 (%struct.usb_xfer*, i64)*, %struct.usb_xfer_root* }
%struct.TYPE_3__ = type { i32, i64, i64, i64, i32, i32, i64 }
%struct.usb_xfer_root = type { %struct.TYPE_4__, i32, i32, i32*, i32, i32 }
%struct.TYPE_4__ = type { %struct.usb_xfer* }

@MA_OWNED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"case 5 and 6\0A\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"case 1-4\0A\00", align 1
@MA_NOTOWNED = common dso_local global i32 0, align 4
@USB_ST_SETUP = common dso_local global i64 0, align 8
@USB_ST_ERROR = common dso_local global i64 0, align 8
@USB_ST_TRANSFERRED = common dso_local global i64 0, align 8
@USBPF_XFERTAP_DONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_xfer_queue*)* @usbd_callback_wrapper to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @usbd_callback_wrapper(%struct.usb_xfer_queue* %0) #0 {
  %2 = alloca %struct.usb_xfer_queue*, align 8
  %3 = alloca %struct.usb_xfer*, align 8
  %4 = alloca %struct.usb_xfer_root*, align 8
  store %struct.usb_xfer_queue* %0, %struct.usb_xfer_queue** %2, align 8
  %5 = load %struct.usb_xfer_queue*, %struct.usb_xfer_queue** %2, align 8
  %6 = getelementptr inbounds %struct.usb_xfer_queue, %struct.usb_xfer_queue* %5, i32 0, i32 1
  %7 = load %struct.usb_xfer*, %struct.usb_xfer** %6, align 8
  store %struct.usb_xfer* %7, %struct.usb_xfer** %3, align 8
  %8 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %9 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %8, i32 0, i32 4
  %10 = load %struct.usb_xfer_root*, %struct.usb_xfer_root** %9, align 8
  store %struct.usb_xfer_root* %10, %struct.usb_xfer_root** %4, align 8
  %11 = load %struct.usb_xfer_root*, %struct.usb_xfer_root** %4, align 8
  %12 = getelementptr inbounds %struct.usb_xfer_root, %struct.usb_xfer_root* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @MA_OWNED, align 4
  %15 = call i32 @USB_BUS_LOCK_ASSERT(i32 %13, i32 %14)
  %16 = load %struct.usb_xfer_queue*, %struct.usb_xfer_queue** %2, align 8
  %17 = getelementptr inbounds %struct.usb_xfer_queue, %struct.usb_xfer_queue* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %26, label %20

20:                                               ; preds = %1
  %21 = load %struct.usb_xfer_root*, %struct.usb_xfer_root** %4, align 8
  %22 = getelementptr inbounds %struct.usb_xfer_root, %struct.usb_xfer_root* %21, i32 0, i32 5
  %23 = load i32, i32* %22, align 4
  %24 = call i64 @mtx_owned(i32 %23)
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %26, label %43

26:                                               ; preds = %20, %1
  %27 = call i64 (...) @USB_IN_POLLING_MODE_FUNC()
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %29, label %43

29:                                               ; preds = %26
  %30 = call i32 @DPRINTFN(i32 3, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %31 = load %struct.usb_xfer_root*, %struct.usb_xfer_root** %4, align 8
  %32 = getelementptr inbounds %struct.usb_xfer_root, %struct.usb_xfer_root* %31, i32 0, i32 4
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.usb_xfer_root*, %struct.usb_xfer_root** %4, align 8
  %35 = getelementptr inbounds %struct.usb_xfer_root, %struct.usb_xfer_root* %34, i32 0, i32 3
  %36 = load i32*, i32** %35, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 0
  %38 = load %struct.usb_xfer_root*, %struct.usb_xfer_root** %4, align 8
  %39 = getelementptr inbounds %struct.usb_xfer_root, %struct.usb_xfer_root* %38, i32 0, i32 3
  %40 = load i32*, i32** %39, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 1
  %42 = call i32 @usb_proc_msignal(i32 %33, i32* %37, i32* %41)
  br label %175

43:                                               ; preds = %26, %20
  %44 = call i32 @DPRINTFN(i32 3, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  %45 = load %struct.usb_xfer_root*, %struct.usb_xfer_root** %4, align 8
  %46 = getelementptr inbounds %struct.usb_xfer_root, %struct.usb_xfer_root* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  store %struct.usb_xfer* null, %struct.usb_xfer** %47, align 8
  %48 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %49 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 0
  store i32 1, i32* %50, align 8
  %51 = load %struct.usb_xfer_root*, %struct.usb_xfer_root** %4, align 8
  %52 = getelementptr inbounds %struct.usb_xfer_root, %struct.usb_xfer_root* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @USB_BUS_UNLOCK(i32 %53)
  %55 = load %struct.usb_xfer_root*, %struct.usb_xfer_root** %4, align 8
  %56 = getelementptr inbounds %struct.usb_xfer_root, %struct.usb_xfer_root* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @MA_NOTOWNED, align 4
  %59 = call i32 @USB_BUS_LOCK_ASSERT(i32 %57, i32 %58)
  %60 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %61 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 2
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %80, label %65

65:                                               ; preds = %43
  %66 = load i64, i64* @USB_ST_SETUP, align 8
  %67 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %68 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %67, i32 0, i32 0
  store i64 %66, i64* %68, align 8
  %69 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %70 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 3
  %72 = load i64, i64* %71, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %79, label %74

74:                                               ; preds = %65
  %75 = load %struct.usb_xfer_root*, %struct.usb_xfer_root** %4, align 8
  %76 = getelementptr inbounds %struct.usb_xfer_root, %struct.usb_xfer_root* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @USB_BUS_LOCK(i32 %77)
  br label %145

79:                                               ; preds = %65
  br label %106

80:                                               ; preds = %43
  %81 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %82 = call i64 @usbd_callback_wrapper_sub(%struct.usb_xfer* %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %89

84:                                               ; preds = %80
  %85 = load %struct.usb_xfer_root*, %struct.usb_xfer_root** %4, align 8
  %86 = getelementptr inbounds %struct.usb_xfer_root, %struct.usb_xfer_root* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @USB_BUS_LOCK(i32 %87)
  br label %145

89:                                               ; preds = %80
  %90 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %91 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %90, i32 0, i32 1
  %92 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %91, i32 0, i32 2
  store i64 0, i64* %92, align 8
  %93 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %94 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %93, i32 0, i32 2
  %95 = load i64, i64* %94, align 8
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %101

97:                                               ; preds = %89
  %98 = load i64, i64* @USB_ST_ERROR, align 8
  %99 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %100 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %99, i32 0, i32 0
  store i64 %98, i64* %100, align 8
  br label %105

101:                                              ; preds = %89
  %102 = load i64, i64* @USB_ST_TRANSFERRED, align 8
  %103 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %104 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %103, i32 0, i32 0
  store i64 %102, i64* %104, align 8
  br label %105

105:                                              ; preds = %101, %97
  br label %106

106:                                              ; preds = %105, %79
  %107 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %108 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %107, i32 0, i32 3
  %109 = load i32 (%struct.usb_xfer*, i64)*, i32 (%struct.usb_xfer*, i64)** %108, align 8
  %110 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %111 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %112 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %111, i32 0, i32 2
  %113 = load i64, i64* %112, align 8
  %114 = call i32 %109(%struct.usb_xfer* %110, i64 %113)
  %115 = load %struct.usb_xfer_root*, %struct.usb_xfer_root** %4, align 8
  %116 = getelementptr inbounds %struct.usb_xfer_root, %struct.usb_xfer_root* %115, i32 0, i32 2
  %117 = load i32, i32* %116, align 4
  %118 = call i32 @USB_BUS_LOCK(i32 %117)
  %119 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %120 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %119, i32 0, i32 1
  %121 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %120, i32 0, i32 4
  %122 = load i32, i32* %121, align 8
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %144, label %124

124:                                              ; preds = %106
  %125 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %126 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %125, i32 0, i32 1
  %127 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %126, i32 0, i32 3
  %128 = load i64, i64* %127, align 8
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %144

130:                                              ; preds = %124
  %131 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %132 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %131, i32 0, i32 0
  %133 = load i64, i64* %132, align 8
  %134 = load i64, i64* @USB_ST_ERROR, align 8
  %135 = icmp eq i64 %133, %134
  br i1 %135, label %136, label %144

136:                                              ; preds = %130
  %137 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %138 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %137, i32 0, i32 1
  %139 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %138, i32 0, i32 0
  store i32 0, i32* %139, align 8
  %140 = load %struct.usb_xfer_root*, %struct.usb_xfer_root** %4, align 8
  %141 = getelementptr inbounds %struct.usb_xfer_root, %struct.usb_xfer_root* %140, i32 0, i32 0
  %142 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %143 = call i32 @usb_command_wrapper(%struct.TYPE_4__* %141, %struct.usb_xfer* %142)
  br label %175

144:                                              ; preds = %130, %124, %106
  br label %145

145:                                              ; preds = %144, %84, %74
  %146 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %147 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %146, i32 0, i32 1
  %148 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %147, i32 0, i32 0
  store i32 0, i32* %148, align 8
  %149 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %150 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %149, i32 0, i32 1
  %151 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %150, i32 0, i32 1
  %152 = load i64, i64* %151, align 8
  %153 = icmp ne i64 %152, 0
  br i1 %153, label %154, label %167

154:                                              ; preds = %145
  %155 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %156 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %155, i32 0, i32 1
  %157 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %156, i32 0, i32 2
  %158 = load i64, i64* %157, align 8
  %159 = icmp ne i64 %158, 0
  br i1 %159, label %167, label %160

160:                                              ; preds = %154
  %161 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %162 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %161, i32 0, i32 1
  %163 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %162, i32 0, i32 1
  store i64 0, i64* %163, align 8
  %164 = load %struct.usb_xfer_root*, %struct.usb_xfer_root** %4, align 8
  %165 = getelementptr inbounds %struct.usb_xfer_root, %struct.usb_xfer_root* %164, i32 0, i32 1
  %166 = call i32 @cv_broadcast(i32* %165)
  br label %167

167:                                              ; preds = %160, %154, %145
  %168 = load %struct.usb_xfer_root*, %struct.usb_xfer_root** %4, align 8
  %169 = getelementptr inbounds %struct.usb_xfer_root, %struct.usb_xfer_root* %168, i32 0, i32 0
  %170 = load %struct.usb_xfer_root*, %struct.usb_xfer_root** %4, align 8
  %171 = getelementptr inbounds %struct.usb_xfer_root, %struct.usb_xfer_root* %170, i32 0, i32 0
  %172 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %171, i32 0, i32 0
  %173 = load %struct.usb_xfer*, %struct.usb_xfer** %172, align 8
  %174 = call i32 @usb_command_wrapper(%struct.TYPE_4__* %169, %struct.usb_xfer* %173)
  br label %175

175:                                              ; preds = %167, %136, %29
  ret void
}

declare dso_local i32 @USB_BUS_LOCK_ASSERT(i32, i32) #1

declare dso_local i64 @mtx_owned(i32) #1

declare dso_local i64 @USB_IN_POLLING_MODE_FUNC(...) #1

declare dso_local i32 @DPRINTFN(i32, i8*) #1

declare dso_local i32 @usb_proc_msignal(i32, i32*, i32*) #1

declare dso_local i32 @USB_BUS_UNLOCK(i32) #1

declare dso_local i32 @USB_BUS_LOCK(i32) #1

declare dso_local i64 @usbd_callback_wrapper_sub(%struct.usb_xfer*) #1

declare dso_local i32 @usb_command_wrapper(%struct.TYPE_4__*, %struct.usb_xfer*) #1

declare dso_local i32 @cv_broadcast(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
