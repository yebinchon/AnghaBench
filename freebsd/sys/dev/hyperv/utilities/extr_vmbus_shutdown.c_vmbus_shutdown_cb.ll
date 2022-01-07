; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/hyperv/utilities/extr_vmbus_shutdown.c_vmbus_shutdown_cb.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/hyperv/utilities/extr_vmbus_shutdown.c_vmbus_shutdown_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmbus_channel = type { i32 }
%struct.vmbus_ic_softc = type { i32, i32, i8* }
%struct.vmbus_icmsg_hdr = type { i32, i32 }
%struct.vmbus_icmsg_shutdown = type { i32 }

@ENOBUFS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"icbuf is not large enough\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"invalid data len %d\0A\00", align 1
@VMBUS_SHUTDOWN_FWVER = common dso_local global i32 0, align 4
@VMBUS_SHUTDOWN_MSGVER = common dso_local global i32 0, align 4
@VMBUS_ICMSG_SHUTDOWN_SIZE_MIN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [25 x i8] c"invalid shutdown len %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"shutdown requested\0A\00", align 1
@VMBUS_ICMSG_STATUS_OK = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [31 x i8] c"unknown shutdown flags 0x%08x\0A\00", align 1
@VMBUS_ICMSG_STATUS_FAIL = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [18 x i8] c"got 0x%08x icmsg\0A\00", align 1
@RB_POWEROFF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vmbus_channel*, i8*)* @vmbus_shutdown_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vmbus_shutdown_cb(%struct.vmbus_channel* %0, i8* %1) #0 {
  %3 = alloca %struct.vmbus_channel*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.vmbus_ic_softc*, align 8
  %6 = alloca %struct.vmbus_icmsg_hdr*, align 8
  %7 = alloca %struct.vmbus_icmsg_shutdown*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  store %struct.vmbus_channel* %0, %struct.vmbus_channel** %3, align 8
  store i8* %1, i8** %4, align 8
  %13 = load i8*, i8** %4, align 8
  %14 = bitcast i8* %13 to %struct.vmbus_ic_softc*
  store %struct.vmbus_ic_softc* %14, %struct.vmbus_ic_softc** %5, align 8
  store i32 0, i32* %10, align 4
  %15 = load %struct.vmbus_ic_softc*, %struct.vmbus_ic_softc** %5, align 8
  %16 = getelementptr inbounds %struct.vmbus_ic_softc, %struct.vmbus_ic_softc* %15, i32 0, i32 2
  %17 = load i8*, i8** %16, align 8
  store i8* %17, i8** %12, align 8
  %18 = load %struct.vmbus_ic_softc*, %struct.vmbus_ic_softc** %5, align 8
  %19 = getelementptr inbounds %struct.vmbus_ic_softc, %struct.vmbus_ic_softc* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  store i32 %20, i32* %8, align 4
  %21 = load %struct.vmbus_channel*, %struct.vmbus_channel** %3, align 8
  %22 = load i8*, i8** %12, align 8
  %23 = call i32 @vmbus_chan_recv(%struct.vmbus_channel* %21, i8* %22, i32* %8, i32* %11)
  store i32 %23, i32* %9, align 4
  %24 = load i32, i32* %9, align 4
  %25 = load i32, i32* @ENOBUFS, align 4
  %26 = icmp ne i32 %24, %25
  %27 = zext i1 %26 to i32
  %28 = call i32 @KASSERT(i32 %27, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %29 = load i32, i32* %9, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %2
  br label %120

32:                                               ; preds = %2
  %33 = load i32, i32* %8, align 4
  %34 = sext i32 %33 to i64
  %35 = icmp ult i64 %34, 8
  br i1 %35, label %36, label %42

36:                                               ; preds = %32
  %37 = load %struct.vmbus_ic_softc*, %struct.vmbus_ic_softc** %5, align 8
  %38 = getelementptr inbounds %struct.vmbus_ic_softc, %struct.vmbus_ic_softc* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* %8, align 4
  %41 = call i32 (i32, i8*, ...) @device_printf(i32 %39, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 %40)
  br label %120

42:                                               ; preds = %32
  %43 = load i8*, i8** %12, align 8
  %44 = bitcast i8* %43 to %struct.vmbus_icmsg_hdr*
  store %struct.vmbus_icmsg_hdr* %44, %struct.vmbus_icmsg_hdr** %6, align 8
  %45 = load %struct.vmbus_icmsg_hdr*, %struct.vmbus_icmsg_hdr** %6, align 8
  %46 = getelementptr inbounds %struct.vmbus_icmsg_hdr, %struct.vmbus_icmsg_hdr* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  switch i32 %47, label %100 [
    i32 129, label %48
    i32 128, label %58
  ]

48:                                               ; preds = %42
  %49 = load %struct.vmbus_ic_softc*, %struct.vmbus_ic_softc** %5, align 8
  %50 = load i8*, i8** %12, align 8
  %51 = load i32, i32* @VMBUS_SHUTDOWN_FWVER, align 4
  %52 = load i32, i32* @VMBUS_SHUTDOWN_MSGVER, align 4
  %53 = call i32 @vmbus_ic_negomsg(%struct.vmbus_ic_softc* %49, i8* %50, i32* %8, i32 %51, i32 %52)
  store i32 %53, i32* %9, align 4
  %54 = load i32, i32* %9, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %48
  br label %120

57:                                               ; preds = %48
  br label %108

58:                                               ; preds = %42
  %59 = load i32, i32* %8, align 4
  %60 = load i32, i32* @VMBUS_ICMSG_SHUTDOWN_SIZE_MIN, align 4
  %61 = icmp slt i32 %59, %60
  br i1 %61, label %62, label %68

62:                                               ; preds = %58
  %63 = load %struct.vmbus_ic_softc*, %struct.vmbus_ic_softc** %5, align 8
  %64 = getelementptr inbounds %struct.vmbus_ic_softc, %struct.vmbus_ic_softc* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* %8, align 4
  %67 = call i32 (i32, i8*, ...) @device_printf(i32 %65, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 %66)
  br label %120

68:                                               ; preds = %58
  %69 = load i8*, i8** %12, align 8
  %70 = bitcast i8* %69 to %struct.vmbus_icmsg_shutdown*
  store %struct.vmbus_icmsg_shutdown* %70, %struct.vmbus_icmsg_shutdown** %7, align 8
  %71 = load %struct.vmbus_icmsg_shutdown*, %struct.vmbus_icmsg_shutdown** %7, align 8
  %72 = getelementptr inbounds %struct.vmbus_icmsg_shutdown, %struct.vmbus_icmsg_shutdown* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %80, label %75

75:                                               ; preds = %68
  %76 = load %struct.vmbus_icmsg_shutdown*, %struct.vmbus_icmsg_shutdown** %7, align 8
  %77 = getelementptr inbounds %struct.vmbus_icmsg_shutdown, %struct.vmbus_icmsg_shutdown* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = icmp eq i32 %78, 1
  br i1 %79, label %80, label %88

80:                                               ; preds = %75, %68
  %81 = load %struct.vmbus_ic_softc*, %struct.vmbus_ic_softc** %5, align 8
  %82 = getelementptr inbounds %struct.vmbus_ic_softc, %struct.vmbus_ic_softc* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = call i32 (i32, i8*, ...) @device_printf(i32 %83, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0))
  %85 = load i32, i32* @VMBUS_ICMSG_STATUS_OK, align 4
  %86 = load %struct.vmbus_icmsg_hdr*, %struct.vmbus_icmsg_hdr** %6, align 8
  %87 = getelementptr inbounds %struct.vmbus_icmsg_hdr, %struct.vmbus_icmsg_hdr* %86, i32 0, i32 1
  store i32 %85, i32* %87, align 4
  store i32 1, i32* %10, align 4
  br label %99

88:                                               ; preds = %75
  %89 = load %struct.vmbus_ic_softc*, %struct.vmbus_ic_softc** %5, align 8
  %90 = getelementptr inbounds %struct.vmbus_ic_softc, %struct.vmbus_ic_softc* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.vmbus_icmsg_shutdown*, %struct.vmbus_icmsg_shutdown** %7, align 8
  %93 = getelementptr inbounds %struct.vmbus_icmsg_shutdown, %struct.vmbus_icmsg_shutdown* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = call i32 (i32, i8*, ...) @device_printf(i32 %91, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0), i32 %94)
  %96 = load i32, i32* @VMBUS_ICMSG_STATUS_FAIL, align 4
  %97 = load %struct.vmbus_icmsg_hdr*, %struct.vmbus_icmsg_hdr** %6, align 8
  %98 = getelementptr inbounds %struct.vmbus_icmsg_hdr, %struct.vmbus_icmsg_hdr* %97, i32 0, i32 1
  store i32 %96, i32* %98, align 4
  br label %99

99:                                               ; preds = %88, %80
  br label %108

100:                                              ; preds = %42
  %101 = load %struct.vmbus_ic_softc*, %struct.vmbus_ic_softc** %5, align 8
  %102 = getelementptr inbounds %struct.vmbus_ic_softc, %struct.vmbus_ic_softc* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.vmbus_icmsg_hdr*, %struct.vmbus_icmsg_hdr** %6, align 8
  %105 = getelementptr inbounds %struct.vmbus_icmsg_hdr, %struct.vmbus_icmsg_hdr* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = call i32 (i32, i8*, ...) @device_printf(i32 %103, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0), i32 %106)
  br label %108

108:                                              ; preds = %100, %99, %57
  %109 = load %struct.vmbus_ic_softc*, %struct.vmbus_ic_softc** %5, align 8
  %110 = load %struct.vmbus_channel*, %struct.vmbus_channel** %3, align 8
  %111 = load i8*, i8** %12, align 8
  %112 = load i32, i32* %8, align 4
  %113 = load i32, i32* %11, align 4
  %114 = call i32 @vmbus_ic_sendresp(%struct.vmbus_ic_softc* %109, %struct.vmbus_channel* %110, i8* %111, i32 %112, i32 %113)
  %115 = load i32, i32* %10, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %120

117:                                              ; preds = %108
  %118 = load i32, i32* @RB_POWEROFF, align 4
  %119 = call i32 @shutdown_nice(i32 %118)
  br label %120

120:                                              ; preds = %31, %36, %56, %62, %117, %108
  ret void
}

declare dso_local i32 @vmbus_chan_recv(%struct.vmbus_channel*, i8*, i32*, i32*) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @device_printf(i32, i8*, ...) #1

declare dso_local i32 @vmbus_ic_negomsg(%struct.vmbus_ic_softc*, i8*, i32*, i32, i32) #1

declare dso_local i32 @vmbus_ic_sendresp(%struct.vmbus_ic_softc*, %struct.vmbus_channel*, i8*, i32, i32) #1

declare dso_local i32 @shutdown_nice(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
