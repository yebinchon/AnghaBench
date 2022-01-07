; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/net/extr_if_urndis.c_urndis_ctrl_halt.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/net/extr_if_urndis.c_urndis_ctrl_halt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.urndis_softc = type { i32 }
%struct.rndis_halt_req = type { i8*, i8*, i8* }

@REMOTE_NDIS_HALT_MSG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"type %u len %u rid %u\0A\00", align 1
@RNDIS_STATUS_SUCCESS = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [13 x i8] c"halt failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.urndis_softc*)* @urndis_ctrl_halt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @urndis_ctrl_halt(%struct.urndis_softc* %0) #0 {
  %2 = alloca %struct.urndis_softc*, align 8
  %3 = alloca %struct.rndis_halt_req, align 8
  %4 = alloca i64, align 8
  store %struct.urndis_softc* %0, %struct.urndis_softc** %2, align 8
  %5 = load i32, i32* @REMOTE_NDIS_HALT_MSG, align 4
  %6 = call i8* @htole32(i32 %5)
  %7 = getelementptr inbounds %struct.rndis_halt_req, %struct.rndis_halt_req* %3, i32 0, i32 2
  store i8* %6, i8** %7, align 8
  %8 = call i8* @htole32(i32 24)
  %9 = getelementptr inbounds %struct.rndis_halt_req, %struct.rndis_halt_req* %3, i32 0, i32 1
  store i8* %8, i8** %9, align 8
  %10 = getelementptr inbounds %struct.rndis_halt_req, %struct.rndis_halt_req* %3, i32 0, i32 0
  store i8* null, i8** %10, align 8
  %11 = getelementptr inbounds %struct.rndis_halt_req, %struct.rndis_halt_req* %3, i32 0, i32 2
  %12 = load i8*, i8** %11, align 8
  %13 = call i32 @le32toh(i8* %12)
  %14 = getelementptr inbounds %struct.rndis_halt_req, %struct.rndis_halt_req* %3, i32 0, i32 1
  %15 = load i8*, i8** %14, align 8
  %16 = call i32 @le32toh(i8* %15)
  %17 = getelementptr inbounds %struct.rndis_halt_req, %struct.rndis_halt_req* %3, i32 0, i32 0
  %18 = load i8*, i8** %17, align 8
  %19 = call i32 @le32toh(i8* %18)
  %20 = call i32 (i8*, ...) @DPRINTF(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %13, i32 %16, i32 %19)
  %21 = load %struct.urndis_softc*, %struct.urndis_softc** %2, align 8
  %22 = call i64 @urndis_ctrl_send(%struct.urndis_softc* %21, %struct.rndis_halt_req* %3, i32 24)
  store i64 %22, i64* %4, align 8
  %23 = load i64, i64* %4, align 8
  %24 = load i64, i64* @RNDIS_STATUS_SUCCESS, align 8
  %25 = icmp ne i64 %23, %24
  br i1 %25, label %26, label %28

26:                                               ; preds = %1
  %27 = call i32 (i8*, ...) @DPRINTF(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  br label %28

28:                                               ; preds = %26, %1
  %29 = load i64, i64* %4, align 8
  ret i64 %29
}

declare dso_local i8* @htole32(i32) #1

declare dso_local i32 @DPRINTF(i8*, ...) #1

declare dso_local i32 @le32toh(i8*) #1

declare dso_local i64 @urndis_ctrl_send(%struct.urndis_softc*, %struct.rndis_halt_req*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
