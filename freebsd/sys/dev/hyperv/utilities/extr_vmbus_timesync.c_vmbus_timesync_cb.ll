; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/hyperv/utilities/extr_vmbus_timesync.c_vmbus_timesync_cb.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/hyperv/utilities/extr_vmbus_timesync.c_vmbus_timesync_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmbus_channel = type { i32 }
%struct.vmbus_ic_softc = type { i32, i32, i8* }
%struct.vmbus_icmsg_hdr = type { i32 }
%struct.vmbus_icmsg_timesync4 = type { i32, i32, i32 }
%struct.vmbus_icmsg_timesync = type { i32, i32 }

@ENOBUFS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"icbuf is not large enough\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"invalid data len %d\0A\00", align 1
@VMBUS_TIMESYNC_FWVER = common dso_local global i32 0, align 4
@VMBUS_TIMESYNC_MSGVER = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"RTT\0A\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"invalid timesync4 len %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"invalid timesync len %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"got 0x%08x icmsg\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vmbus_channel*, i8*)* @vmbus_timesync_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vmbus_timesync_cb(%struct.vmbus_channel* %0, i8* %1) #0 {
  %3 = alloca %struct.vmbus_channel*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.vmbus_ic_softc*, align 8
  %6 = alloca %struct.vmbus_icmsg_hdr*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca %struct.vmbus_icmsg_timesync4*, align 8
  %12 = alloca %struct.vmbus_icmsg_timesync*, align 8
  store %struct.vmbus_channel* %0, %struct.vmbus_channel** %3, align 8
  store i8* %1, i8** %4, align 8
  %13 = load i8*, i8** %4, align 8
  %14 = bitcast i8* %13 to %struct.vmbus_ic_softc*
  store %struct.vmbus_ic_softc* %14, %struct.vmbus_ic_softc** %5, align 8
  %15 = load %struct.vmbus_ic_softc*, %struct.vmbus_ic_softc** %5, align 8
  %16 = getelementptr inbounds %struct.vmbus_ic_softc, %struct.vmbus_ic_softc* %15, i32 0, i32 2
  %17 = load i8*, i8** %16, align 8
  store i8* %17, i8** %10, align 8
  %18 = load %struct.vmbus_ic_softc*, %struct.vmbus_ic_softc** %5, align 8
  %19 = getelementptr inbounds %struct.vmbus_ic_softc, %struct.vmbus_ic_softc* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  store i32 %20, i32* %7, align 4
  %21 = load %struct.vmbus_channel*, %struct.vmbus_channel** %3, align 8
  %22 = load i8*, i8** %10, align 8
  %23 = call i32 @vmbus_chan_recv(%struct.vmbus_channel* %21, i8* %22, i32* %7, i32* %9)
  store i32 %23, i32* %8, align 4
  %24 = load i32, i32* %8, align 4
  %25 = load i32, i32* @ENOBUFS, align 4
  %26 = icmp ne i32 %24, %25
  %27 = zext i1 %26 to i32
  %28 = call i32 @KASSERT(i32 %27, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %29 = load i32, i32* %8, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %2
  br label %132

32:                                               ; preds = %2
  %33 = load i32, i32* %7, align 4
  %34 = sext i32 %33 to i64
  %35 = icmp ult i64 %34, 4
  br i1 %35, label %36, label %42

36:                                               ; preds = %32
  %37 = load %struct.vmbus_ic_softc*, %struct.vmbus_ic_softc** %5, align 8
  %38 = getelementptr inbounds %struct.vmbus_ic_softc, %struct.vmbus_ic_softc* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* %7, align 4
  %41 = call i32 (i32, i8*, ...) @device_printf(i32 %39, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 %40)
  br label %132

42:                                               ; preds = %32
  %43 = load i8*, i8** %10, align 8
  %44 = bitcast i8* %43 to %struct.vmbus_icmsg_hdr*
  store %struct.vmbus_icmsg_hdr* %44, %struct.vmbus_icmsg_hdr** %6, align 8
  %45 = load %struct.vmbus_icmsg_hdr*, %struct.vmbus_icmsg_hdr** %6, align 8
  %46 = getelementptr inbounds %struct.vmbus_icmsg_hdr, %struct.vmbus_icmsg_hdr* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  switch i32 %47, label %117 [
    i32 129, label %48
    i32 128, label %67
  ]

48:                                               ; preds = %42
  %49 = load %struct.vmbus_ic_softc*, %struct.vmbus_ic_softc** %5, align 8
  %50 = load i8*, i8** %10, align 8
  %51 = load i32, i32* @VMBUS_TIMESYNC_FWVER, align 4
  %52 = load i32, i32* @VMBUS_TIMESYNC_MSGVER, align 4
  %53 = call i32 @vmbus_ic_negomsg(%struct.vmbus_ic_softc* %49, i8* %50, i32* %7, i32 %51, i32 %52)
  store i32 %53, i32* %8, align 4
  %54 = load i32, i32* %8, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %48
  br label %132

57:                                               ; preds = %48
  %58 = load %struct.vmbus_ic_softc*, %struct.vmbus_ic_softc** %5, align 8
  %59 = call i32 @VMBUS_TIMESYNC_DORTT(%struct.vmbus_ic_softc* %58)
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %66

61:                                               ; preds = %57
  %62 = load %struct.vmbus_ic_softc*, %struct.vmbus_ic_softc** %5, align 8
  %63 = getelementptr inbounds %struct.vmbus_ic_softc, %struct.vmbus_ic_softc* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = call i32 (i32, i8*, ...) @device_printf(i32 %64, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  br label %66

66:                                               ; preds = %61, %57
  br label %125

67:                                               ; preds = %42
  %68 = load %struct.vmbus_ic_softc*, %struct.vmbus_ic_softc** %5, align 8
  %69 = call i32 @VMBUS_TIMESYNC_MSGVER4(%struct.vmbus_ic_softc* %68)
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %95

71:                                               ; preds = %67
  %72 = load i32, i32* %7, align 4
  %73 = sext i32 %72 to i64
  %74 = icmp ult i64 %73, 12
  br i1 %74, label %75, label %81

75:                                               ; preds = %71
  %76 = load %struct.vmbus_ic_softc*, %struct.vmbus_ic_softc** %5, align 8
  %77 = getelementptr inbounds %struct.vmbus_ic_softc, %struct.vmbus_ic_softc* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* %7, align 4
  %80 = call i32 (i32, i8*, ...) @device_printf(i32 %78, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i32 %79)
  br label %132

81:                                               ; preds = %71
  %82 = load i8*, i8** %10, align 8
  %83 = bitcast i8* %82 to %struct.vmbus_icmsg_timesync4*
  store %struct.vmbus_icmsg_timesync4* %83, %struct.vmbus_icmsg_timesync4** %11, align 8
  %84 = load %struct.vmbus_ic_softc*, %struct.vmbus_ic_softc** %5, align 8
  %85 = load %struct.vmbus_icmsg_timesync4*, %struct.vmbus_icmsg_timesync4** %11, align 8
  %86 = getelementptr inbounds %struct.vmbus_icmsg_timesync4, %struct.vmbus_icmsg_timesync4* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.vmbus_icmsg_timesync4*, %struct.vmbus_icmsg_timesync4** %11, align 8
  %89 = getelementptr inbounds %struct.vmbus_icmsg_timesync4, %struct.vmbus_icmsg_timesync4* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.vmbus_icmsg_timesync4*, %struct.vmbus_icmsg_timesync4** %11, align 8
  %92 = getelementptr inbounds %struct.vmbus_icmsg_timesync4, %struct.vmbus_icmsg_timesync4* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @vmbus_timesync(%struct.vmbus_ic_softc* %84, i32 %87, i32 %90, i32 %93)
  br label %116

95:                                               ; preds = %67
  %96 = load i32, i32* %7, align 4
  %97 = sext i32 %96 to i64
  %98 = icmp ult i64 %97, 8
  br i1 %98, label %99, label %105

99:                                               ; preds = %95
  %100 = load %struct.vmbus_ic_softc*, %struct.vmbus_ic_softc** %5, align 8
  %101 = getelementptr inbounds %struct.vmbus_ic_softc, %struct.vmbus_ic_softc* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = load i32, i32* %7, align 4
  %104 = call i32 (i32, i8*, ...) @device_printf(i32 %102, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0), i32 %103)
  br label %132

105:                                              ; preds = %95
  %106 = load i8*, i8** %10, align 8
  %107 = bitcast i8* %106 to %struct.vmbus_icmsg_timesync*
  store %struct.vmbus_icmsg_timesync* %107, %struct.vmbus_icmsg_timesync** %12, align 8
  %108 = load %struct.vmbus_ic_softc*, %struct.vmbus_ic_softc** %5, align 8
  %109 = load %struct.vmbus_icmsg_timesync*, %struct.vmbus_icmsg_timesync** %12, align 8
  %110 = getelementptr inbounds %struct.vmbus_icmsg_timesync, %struct.vmbus_icmsg_timesync* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = load %struct.vmbus_icmsg_timesync*, %struct.vmbus_icmsg_timesync** %12, align 8
  %113 = getelementptr inbounds %struct.vmbus_icmsg_timesync, %struct.vmbus_icmsg_timesync* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = call i32 @vmbus_timesync(%struct.vmbus_ic_softc* %108, i32 %111, i32 0, i32 %114)
  br label %116

116:                                              ; preds = %105, %81
  br label %125

117:                                              ; preds = %42
  %118 = load %struct.vmbus_ic_softc*, %struct.vmbus_ic_softc** %5, align 8
  %119 = getelementptr inbounds %struct.vmbus_ic_softc, %struct.vmbus_ic_softc* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 4
  %121 = load %struct.vmbus_icmsg_hdr*, %struct.vmbus_icmsg_hdr** %6, align 8
  %122 = getelementptr inbounds %struct.vmbus_icmsg_hdr, %struct.vmbus_icmsg_hdr* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = call i32 (i32, i8*, ...) @device_printf(i32 %120, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0), i32 %123)
  br label %125

125:                                              ; preds = %117, %116, %66
  %126 = load %struct.vmbus_ic_softc*, %struct.vmbus_ic_softc** %5, align 8
  %127 = load %struct.vmbus_channel*, %struct.vmbus_channel** %3, align 8
  %128 = load i8*, i8** %10, align 8
  %129 = load i32, i32* %7, align 4
  %130 = load i32, i32* %9, align 4
  %131 = call i32 @vmbus_ic_sendresp(%struct.vmbus_ic_softc* %126, %struct.vmbus_channel* %127, i8* %128, i32 %129, i32 %130)
  br label %132

132:                                              ; preds = %125, %99, %75, %56, %36, %31
  ret void
}

declare dso_local i32 @vmbus_chan_recv(%struct.vmbus_channel*, i8*, i32*, i32*) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @device_printf(i32, i8*, ...) #1

declare dso_local i32 @vmbus_ic_negomsg(%struct.vmbus_ic_softc*, i8*, i32*, i32, i32) #1

declare dso_local i32 @VMBUS_TIMESYNC_DORTT(%struct.vmbus_ic_softc*) #1

declare dso_local i32 @VMBUS_TIMESYNC_MSGVER4(%struct.vmbus_ic_softc*) #1

declare dso_local i32 @vmbus_timesync(%struct.vmbus_ic_softc*, i32, i32, i32) #1

declare dso_local i32 @vmbus_ic_sendresp(%struct.vmbus_ic_softc*, %struct.vmbus_channel*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
