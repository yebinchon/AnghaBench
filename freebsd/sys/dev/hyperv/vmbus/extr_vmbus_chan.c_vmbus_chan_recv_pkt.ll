; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/hyperv/vmbus/extr_vmbus_chan.c_vmbus_chan_recv_pkt.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/hyperv/vmbus/extr_vmbus_chan.c_vmbus_chan_recv_pkt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmbus_channel = type { i32 }
%struct.vmbus_chanpkt_hdr = type { i64, i64 }

@VMBUS_CHANPKT_HLEN_MIN = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [17 x i8] c"invalid hlen %u\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"invalid hlen %u and tlen %u\0A\00", align 1
@ENOBUFS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [23 x i8] c"vmbus_rxbr_read failed\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vmbus_chan_recv_pkt(%struct.vmbus_channel* %0, %struct.vmbus_chanpkt_hdr* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.vmbus_channel*, align 8
  %6 = alloca %struct.vmbus_chanpkt_hdr*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.vmbus_channel* %0, %struct.vmbus_channel** %5, align 8
  store %struct.vmbus_chanpkt_hdr* %1, %struct.vmbus_chanpkt_hdr** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 16, i32* %10, align 4
  %11 = load %struct.vmbus_channel*, %struct.vmbus_channel** %5, align 8
  %12 = getelementptr inbounds %struct.vmbus_channel, %struct.vmbus_channel* %11, i32 0, i32 0
  %13 = load %struct.vmbus_chanpkt_hdr*, %struct.vmbus_chanpkt_hdr** %6, align 8
  %14 = load i32, i32* %10, align 4
  %15 = call i32 @vmbus_rxbr_peek(i32* %12, %struct.vmbus_chanpkt_hdr* %13, i32 %14)
  store i32 %15, i32* %8, align 4
  %16 = load i32, i32* %8, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %3
  %19 = load i32, i32* %8, align 4
  store i32 %19, i32* %4, align 4
  br label %87

20:                                               ; preds = %3
  %21 = load %struct.vmbus_chanpkt_hdr*, %struct.vmbus_chanpkt_hdr** %6, align 8
  %22 = getelementptr inbounds %struct.vmbus_chanpkt_hdr, %struct.vmbus_chanpkt_hdr* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @VMBUS_CHANPKT_HLEN_MIN, align 8
  %25 = icmp slt i64 %23, %24
  %26 = zext i1 %25 to i32
  %27 = call i64 @__predict_false(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %36

29:                                               ; preds = %20
  %30 = load %struct.vmbus_channel*, %struct.vmbus_channel** %5, align 8
  %31 = load %struct.vmbus_chanpkt_hdr*, %struct.vmbus_chanpkt_hdr** %6, align 8
  %32 = getelementptr inbounds %struct.vmbus_chanpkt_hdr, %struct.vmbus_chanpkt_hdr* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = call i32 (%struct.vmbus_channel*, i8*, i64, ...) @vmbus_chan_printf(%struct.vmbus_channel* %30, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i64 %33)
  %35 = load i32, i32* @EIO, align 4
  store i32 %35, i32* %4, align 4
  br label %87

36:                                               ; preds = %20
  %37 = load %struct.vmbus_chanpkt_hdr*, %struct.vmbus_chanpkt_hdr** %6, align 8
  %38 = getelementptr inbounds %struct.vmbus_chanpkt_hdr, %struct.vmbus_chanpkt_hdr* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.vmbus_chanpkt_hdr*, %struct.vmbus_chanpkt_hdr** %6, align 8
  %41 = getelementptr inbounds %struct.vmbus_chanpkt_hdr, %struct.vmbus_chanpkt_hdr* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = icmp sgt i64 %39, %42
  %44 = zext i1 %43 to i32
  %45 = call i64 @__predict_false(i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %57

47:                                               ; preds = %36
  %48 = load %struct.vmbus_channel*, %struct.vmbus_channel** %5, align 8
  %49 = load %struct.vmbus_chanpkt_hdr*, %struct.vmbus_chanpkt_hdr** %6, align 8
  %50 = getelementptr inbounds %struct.vmbus_chanpkt_hdr, %struct.vmbus_chanpkt_hdr* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load %struct.vmbus_chanpkt_hdr*, %struct.vmbus_chanpkt_hdr** %6, align 8
  %53 = getelementptr inbounds %struct.vmbus_chanpkt_hdr, %struct.vmbus_chanpkt_hdr* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = call i32 (%struct.vmbus_channel*, i8*, i64, ...) @vmbus_chan_printf(%struct.vmbus_channel* %48, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i64 %51, i64 %54)
  %56 = load i32, i32* @EIO, align 4
  store i32 %56, i32* %4, align 4
  br label %87

57:                                               ; preds = %36
  %58 = load %struct.vmbus_chanpkt_hdr*, %struct.vmbus_chanpkt_hdr** %6, align 8
  %59 = getelementptr inbounds %struct.vmbus_chanpkt_hdr, %struct.vmbus_chanpkt_hdr* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = call i32 @VMBUS_CHANPKT_GETLEN(i64 %60)
  store i32 %61, i32* %9, align 4
  %62 = load i32*, i32** %7, align 8
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* %9, align 4
  %65 = icmp slt i32 %63, %64
  br i1 %65, label %66, label %70

66:                                               ; preds = %57
  %67 = load i32, i32* %9, align 4
  %68 = load i32*, i32** %7, align 8
  store i32 %67, i32* %68, align 4
  %69 = load i32, i32* @ENOBUFS, align 4
  store i32 %69, i32* %4, align 4
  br label %87

70:                                               ; preds = %57
  %71 = load i32, i32* %9, align 4
  %72 = load i32*, i32** %7, align 8
  store i32 %71, i32* %72, align 4
  %73 = load %struct.vmbus_channel*, %struct.vmbus_channel** %5, align 8
  %74 = getelementptr inbounds %struct.vmbus_channel, %struct.vmbus_channel* %73, i32 0, i32 0
  %75 = load %struct.vmbus_chanpkt_hdr*, %struct.vmbus_chanpkt_hdr** %6, align 8
  %76 = getelementptr inbounds %struct.vmbus_chanpkt_hdr, %struct.vmbus_chanpkt_hdr* %75, i64 1
  %77 = load i32, i32* %9, align 4
  %78 = load i32, i32* %10, align 4
  %79 = sub nsw i32 %77, %78
  %80 = load i32, i32* %10, align 4
  %81 = call i32 @vmbus_rxbr_read(i32* %74, %struct.vmbus_chanpkt_hdr* %76, i32 %79, i32 %80)
  store i32 %81, i32* %8, align 4
  %82 = load i32, i32* %8, align 4
  %83 = icmp ne i32 %82, 0
  %84 = xor i1 %83, true
  %85 = zext i1 %84 to i32
  %86 = call i32 @KASSERT(i32 %85, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %87

87:                                               ; preds = %70, %66, %47, %29, %18
  %88 = load i32, i32* %4, align 4
  ret i32 %88
}

declare dso_local i32 @vmbus_rxbr_peek(i32*, %struct.vmbus_chanpkt_hdr*, i32) #1

declare dso_local i64 @__predict_false(i32) #1

declare dso_local i32 @vmbus_chan_printf(%struct.vmbus_channel*, i8*, i64, ...) #1

declare dso_local i32 @VMBUS_CHANPKT_GETLEN(i64) #1

declare dso_local i32 @vmbus_rxbr_read(i32*, %struct.vmbus_chanpkt_hdr*, i32, i32) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
