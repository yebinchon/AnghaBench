; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/hyperv/input/extr_hv_kbdc.c_hv_kbd_read_channel.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/hyperv/input/extr_hv_kbdc.c_hv_kbd_read_channel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmbus_channel = type { i32 }
%struct.TYPE_4__ = type { i64, i32, i32* }
%struct.vmbus_chanpkt_hdr = type { i32 }

@ENOBUFS = common dso_local global i32 0, align 4
@M_DEVBUF = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"expand recvbuf %d -> %d\0A\00", align 1
@EAGAIN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"vmbus_chan_recv_pkt failed: %d\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"event: 0x%x\0A\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"unhandled event: %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"unknown event: %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hv_kbd_read_channel(%struct.vmbus_channel* %0, i8* %1) #0 {
  %3 = alloca %struct.vmbus_channel*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_4__*, align 8
  %9 = alloca %struct.vmbus_chanpkt_hdr*, align 8
  %10 = alloca i64, align 8
  store %struct.vmbus_channel* %0, %struct.vmbus_channel** %3, align 8
  store i8* %1, i8** %4, align 8
  store i64 0, i64* %6, align 8
  store i32 0, i32* %7, align 4
  %11 = load i8*, i8** %4, align 8
  %12 = bitcast i8* %11 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %12, %struct.TYPE_4__** %8, align 8
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 2
  %15 = load i32*, i32** %14, align 8
  store i32* %15, i32** %5, align 8
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  store i64 %18, i64* %6, align 8
  br label %19

19:                                               ; preds = %117, %44, %2
  %20 = load i32*, i32** %5, align 8
  %21 = bitcast i32* %20 to %struct.vmbus_chanpkt_hdr*
  store %struct.vmbus_chanpkt_hdr* %21, %struct.vmbus_chanpkt_hdr** %9, align 8
  %22 = load i64, i64* %6, align 8
  store i64 %22, i64* %10, align 8
  %23 = load %struct.vmbus_channel*, %struct.vmbus_channel** %3, align 8
  %24 = load %struct.vmbus_chanpkt_hdr*, %struct.vmbus_chanpkt_hdr** %9, align 8
  %25 = call i32 @vmbus_chan_recv_pkt(%struct.vmbus_channel* %23, %struct.vmbus_chanpkt_hdr* %24, i64* %10)
  store i32 %25, i32* %7, align 4
  %26 = load i32, i32* %7, align 4
  %27 = load i32, i32* @ENOBUFS, align 4
  %28 = icmp eq i32 %26, %27
  %29 = zext i1 %28 to i32
  %30 = call i64 @__predict_false(i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %71

32:                                               ; preds = %19
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = mul nsw i64 %35, 2
  store i64 %36, i64* %6, align 8
  br label %37

37:                                               ; preds = %41, %32
  %38 = load i64, i64* %6, align 8
  %39 = load i64, i64* %10, align 8
  %40 = icmp slt i64 %38, %39
  br i1 %40, label %41, label %44

41:                                               ; preds = %37
  %42 = load i64, i64* %6, align 8
  %43 = mul nsw i64 %42, 2
  store i64 %43, i64* %6, align 8
  br label %37

44:                                               ; preds = %37
  %45 = load i64, i64* %6, align 8
  %46 = load i32, i32* @M_DEVBUF, align 4
  %47 = load i32, i32* @M_WAITOK, align 4
  %48 = load i32, i32* @M_ZERO, align 4
  %49 = or i32 %47, %48
  %50 = call i32* @malloc(i64 %45, i32 %46, i32 %49)
  store i32* %50, i32** %5, align 8
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = trunc i64 %56 to i32
  %58 = load i64, i64* %6, align 8
  %59 = call i32 (i32, i8*, i32, ...) @device_printf(i32 %53, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %57, i64 %58)
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 2
  %62 = load i32*, i32** %61, align 8
  %63 = load i32, i32* @M_DEVBUF, align 4
  %64 = call i32 @free(i32* %62, i32 %63)
  %65 = load i32*, i32** %5, align 8
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 2
  store i32* %65, i32** %67, align 8
  %68 = load i64, i64* %6, align 8
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 0
  store i64 %68, i64* %70, align 8
  br label %19

71:                                               ; preds = %19
  %72 = load i32, i32* %7, align 4
  %73 = load i32, i32* @EAGAIN, align 4
  %74 = icmp eq i32 %72, %73
  %75 = zext i1 %74 to i32
  %76 = call i64 @__predict_false(i32 %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %71
  br label %118

79:                                               ; preds = %71
  br label %80

80:                                               ; preds = %79
  %81 = load i32, i32* %7, align 4
  %82 = icmp ne i32 %81, 0
  %83 = xor i1 %82, true
  %84 = zext i1 %83 to i32
  %85 = load i32, i32* %7, align 4
  %86 = sext i32 %85 to i64
  %87 = inttoptr i64 %86 to i8*
  %88 = call i32 @KASSERT(i32 %84, i8* %87)
  %89 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %90 = load %struct.vmbus_chanpkt_hdr*, %struct.vmbus_chanpkt_hdr** %9, align 8
  %91 = getelementptr inbounds %struct.vmbus_chanpkt_hdr, %struct.vmbus_chanpkt_hdr* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @DEBUG_HVSC(%struct.TYPE_4__* %89, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 %92)
  %94 = load %struct.vmbus_chanpkt_hdr*, %struct.vmbus_chanpkt_hdr** %9, align 8
  %95 = getelementptr inbounds %struct.vmbus_chanpkt_hdr, %struct.vmbus_chanpkt_hdr* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  switch i32 %96, label %109 [
    i32 130, label %97
    i32 128, label %97
    i32 129, label %105
  ]

97:                                               ; preds = %80, %80
  %98 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 8
  %101 = load %struct.vmbus_chanpkt_hdr*, %struct.vmbus_chanpkt_hdr** %9, align 8
  %102 = getelementptr inbounds %struct.vmbus_chanpkt_hdr, %struct.vmbus_chanpkt_hdr* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = call i32 (i32, i8*, i32, ...) @device_printf(i32 %100, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i32 %103)
  br label %117

105:                                              ; preds = %80
  %106 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %107 = load %struct.vmbus_chanpkt_hdr*, %struct.vmbus_chanpkt_hdr** %9, align 8
  %108 = call i32 @hv_kbd_on_received(%struct.TYPE_4__* %106, %struct.vmbus_chanpkt_hdr* %107)
  br label %117

109:                                              ; preds = %80
  %110 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %111 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 8
  %113 = load %struct.vmbus_chanpkt_hdr*, %struct.vmbus_chanpkt_hdr** %9, align 8
  %114 = getelementptr inbounds %struct.vmbus_chanpkt_hdr, %struct.vmbus_chanpkt_hdr* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = call i32 (i32, i8*, i32, ...) @device_printf(i32 %112, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0), i32 %115)
  br label %117

117:                                              ; preds = %109, %105, %97
  br label %19

118:                                              ; preds = %78
  ret void
}

declare dso_local i32 @vmbus_chan_recv_pkt(%struct.vmbus_channel*, %struct.vmbus_chanpkt_hdr*, i64*) #1

declare dso_local i64 @__predict_false(i32) #1

declare dso_local i32* @malloc(i64, i32, i32) #1

declare dso_local i32 @device_printf(i32, i8*, i32, ...) #1

declare dso_local i32 @free(i32*, i32) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @DEBUG_HVSC(%struct.TYPE_4__*, i8*, i32) #1

declare dso_local i32 @hv_kbd_on_received(%struct.TYPE_4__*, %struct.vmbus_chanpkt_hdr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
