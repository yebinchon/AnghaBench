; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/hyperv/vmbus/extr_vmbus_chan.c_vmbus_chan_recv.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/hyperv/vmbus/extr_vmbus_chan.c_vmbus_chan_recv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmbus_channel = type { i32 }
%struct.vmbus_chanpkt_hdr = type { i64, i64, i32 }

@VMBUS_CHANPKT_HLEN_MIN = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [17 x i8] c"invalid hlen %u\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"invalid hlen %u and tlen %u\0A\00", align 1
@ENOBUFS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [23 x i8] c"vmbus_rxbr_read failed\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vmbus_chan_recv(%struct.vmbus_channel* %0, i8* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.vmbus_channel*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.vmbus_chanpkt_hdr, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.vmbus_channel* %0, %struct.vmbus_channel** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %14 = load %struct.vmbus_channel*, %struct.vmbus_channel** %6, align 8
  %15 = getelementptr inbounds %struct.vmbus_channel, %struct.vmbus_channel* %14, i32 0, i32 0
  %16 = call i32 @vmbus_rxbr_peek(i32* %15, %struct.vmbus_chanpkt_hdr* %10, i32 24)
  store i32 %16, i32* %11, align 4
  %17 = load i32, i32* %11, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %4
  %20 = load i32, i32* %11, align 4
  store i32 %20, i32* %5, align 4
  br label %86

21:                                               ; preds = %4
  %22 = getelementptr inbounds %struct.vmbus_chanpkt_hdr, %struct.vmbus_chanpkt_hdr* %10, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @VMBUS_CHANPKT_HLEN_MIN, align 8
  %25 = icmp slt i64 %23, %24
  %26 = zext i1 %25 to i32
  %27 = call i64 @__predict_false(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %35

29:                                               ; preds = %21
  %30 = load %struct.vmbus_channel*, %struct.vmbus_channel** %6, align 8
  %31 = getelementptr inbounds %struct.vmbus_chanpkt_hdr, %struct.vmbus_chanpkt_hdr* %10, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = call i32 (%struct.vmbus_channel*, i8*, i64, ...) @vmbus_chan_printf(%struct.vmbus_channel* %30, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i64 %32)
  %34 = load i32, i32* @EIO, align 4
  store i32 %34, i32* %5, align 4
  br label %86

35:                                               ; preds = %21
  %36 = getelementptr inbounds %struct.vmbus_chanpkt_hdr, %struct.vmbus_chanpkt_hdr* %10, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = getelementptr inbounds %struct.vmbus_chanpkt_hdr, %struct.vmbus_chanpkt_hdr* %10, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = icmp sgt i64 %37, %39
  %41 = zext i1 %40 to i32
  %42 = call i64 @__predict_false(i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %52

44:                                               ; preds = %35
  %45 = load %struct.vmbus_channel*, %struct.vmbus_channel** %6, align 8
  %46 = getelementptr inbounds %struct.vmbus_chanpkt_hdr, %struct.vmbus_chanpkt_hdr* %10, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = getelementptr inbounds %struct.vmbus_chanpkt_hdr, %struct.vmbus_chanpkt_hdr* %10, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = call i32 (%struct.vmbus_channel*, i8*, i64, ...) @vmbus_chan_printf(%struct.vmbus_channel* %45, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i64 %47, i64 %49)
  %51 = load i32, i32* @EIO, align 4
  store i32 %51, i32* %5, align 4
  br label %86

52:                                               ; preds = %35
  %53 = getelementptr inbounds %struct.vmbus_chanpkt_hdr, %struct.vmbus_chanpkt_hdr* %10, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = call i32 @VMBUS_CHANPKT_GETLEN(i64 %54)
  store i32 %55, i32* %13, align 4
  %56 = getelementptr inbounds %struct.vmbus_chanpkt_hdr, %struct.vmbus_chanpkt_hdr* %10, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = call i32 @VMBUS_CHANPKT_GETLEN(i64 %57)
  %59 = load i32, i32* %13, align 4
  %60 = sub nsw i32 %58, %59
  store i32 %60, i32* %12, align 4
  %61 = load i32*, i32** %8, align 8
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* %12, align 4
  %64 = icmp slt i32 %62, %63
  br i1 %64, label %65, label %69

65:                                               ; preds = %52
  %66 = load i32, i32* %12, align 4
  %67 = load i32*, i32** %8, align 8
  store i32 %66, i32* %67, align 4
  %68 = load i32, i32* @ENOBUFS, align 4
  store i32 %68, i32* %5, align 4
  br label %86

69:                                               ; preds = %52
  %70 = getelementptr inbounds %struct.vmbus_chanpkt_hdr, %struct.vmbus_chanpkt_hdr* %10, i32 0, i32 2
  %71 = load i32, i32* %70, align 8
  %72 = load i32*, i32** %9, align 8
  store i32 %71, i32* %72, align 4
  %73 = load i32, i32* %12, align 4
  %74 = load i32*, i32** %8, align 8
  store i32 %73, i32* %74, align 4
  %75 = load %struct.vmbus_channel*, %struct.vmbus_channel** %6, align 8
  %76 = getelementptr inbounds %struct.vmbus_channel, %struct.vmbus_channel* %75, i32 0, i32 0
  %77 = load i8*, i8** %7, align 8
  %78 = load i32, i32* %12, align 4
  %79 = load i32, i32* %13, align 4
  %80 = call i32 @vmbus_rxbr_read(i32* %76, i8* %77, i32 %78, i32 %79)
  store i32 %80, i32* %11, align 4
  %81 = load i32, i32* %11, align 4
  %82 = icmp ne i32 %81, 0
  %83 = xor i1 %82, true
  %84 = zext i1 %83 to i32
  %85 = call i32 @KASSERT(i32 %84, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  br label %86

86:                                               ; preds = %69, %65, %44, %29, %19
  %87 = load i32, i32* %5, align 4
  ret i32 %87
}

declare dso_local i32 @vmbus_rxbr_peek(i32*, %struct.vmbus_chanpkt_hdr*, i32) #1

declare dso_local i64 @__predict_false(i32) #1

declare dso_local i32 @vmbus_chan_printf(%struct.vmbus_channel*, i8*, i64, ...) #1

declare dso_local i32 @VMBUS_CHANPKT_GETLEN(i64) #1

declare dso_local i32 @vmbus_rxbr_read(i32*, i8*, i32, i32) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
