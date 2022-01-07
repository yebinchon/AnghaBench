; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/net/extr_if_urndis.c_urndis_ctrl_handle_reset.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/net/extr_if_urndis.c_urndis_ctrl_handle_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.urndis_softc = type { i32 }
%struct.rndis_comp_hdr = type { i32 }
%struct.rndis_reset_comp = type { i64, i64, i64 }
%struct.anon = type { %struct.rndis_set_req, i64 }
%struct.rndis_set_req = type { i32 }

@.str = private unnamed_addr constant [32 x i8] c"len %u status 0x%x adrreset %u\0A\00", align 1
@RNDIS_STATUS_SUCCESS = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [19 x i8] c"reset failed 0x%x\0A\00", align 1
@OID_GEN_CURRENT_PACKET_FILTER = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [30 x i8] c"unable to reset data filters\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.urndis_softc*, %struct.rndis_comp_hdr*)* @urndis_ctrl_handle_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @urndis_ctrl_handle_reset(%struct.urndis_softc* %0, %struct.rndis_comp_hdr* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.urndis_softc*, align 8
  %5 = alloca %struct.rndis_comp_hdr*, align 8
  %6 = alloca %struct.rndis_reset_comp*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.anon, align 8
  store %struct.urndis_softc* %0, %struct.urndis_softc** %4, align 8
  store %struct.rndis_comp_hdr* %1, %struct.rndis_comp_hdr** %5, align 8
  %9 = load %struct.rndis_comp_hdr*, %struct.rndis_comp_hdr** %5, align 8
  %10 = bitcast %struct.rndis_comp_hdr* %9 to %struct.rndis_reset_comp*
  store %struct.rndis_reset_comp* %10, %struct.rndis_reset_comp** %6, align 8
  %11 = load %struct.rndis_reset_comp*, %struct.rndis_reset_comp** %6, align 8
  %12 = getelementptr inbounds %struct.rndis_reset_comp, %struct.rndis_reset_comp* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = call i64 @le32toh(i64 %13)
  store i64 %14, i64* %7, align 8
  %15 = load %struct.rndis_reset_comp*, %struct.rndis_reset_comp** %6, align 8
  %16 = getelementptr inbounds %struct.rndis_reset_comp, %struct.rndis_reset_comp* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = call i64 @le32toh(i64 %17)
  %19 = load i64, i64* %7, align 8
  %20 = load %struct.rndis_reset_comp*, %struct.rndis_reset_comp** %6, align 8
  %21 = getelementptr inbounds %struct.rndis_reset_comp, %struct.rndis_reset_comp* %20, i32 0, i32 2
  %22 = load i64, i64* %21, align 8
  %23 = call i64 @le32toh(i64 %22)
  %24 = call i32 (i8*, ...) @DPRINTF(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i64 %18, i64 %19, i64 %23)
  %25 = load i64, i64* %7, align 8
  %26 = load i64, i64* @RNDIS_STATUS_SUCCESS, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %28, label %32

28:                                               ; preds = %2
  %29 = load i64, i64* %7, align 8
  %30 = call i32 (i8*, ...) @DPRINTF(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i64 %29)
  %31 = load i64, i64* %7, align 8
  store i64 %31, i64* %3, align 8
  br label %56

32:                                               ; preds = %2
  %33 = load %struct.rndis_reset_comp*, %struct.rndis_reset_comp** %6, align 8
  %34 = getelementptr inbounds %struct.rndis_reset_comp, %struct.rndis_reset_comp* %33, i32 0, i32 2
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %54

37:                                               ; preds = %32
  %38 = load %struct.urndis_softc*, %struct.urndis_softc** %4, align 8
  %39 = getelementptr inbounds %struct.urndis_softc, %struct.urndis_softc* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i64 @htole32(i32 %40)
  %42 = getelementptr inbounds %struct.anon, %struct.anon* %8, i32 0, i32 1
  store i64 %41, i64* %42, align 8
  %43 = load %struct.urndis_softc*, %struct.urndis_softc** %4, align 8
  %44 = load i32, i32* @OID_GEN_CURRENT_PACKET_FILTER, align 4
  %45 = getelementptr inbounds %struct.anon, %struct.anon* %8, i32 0, i32 0
  %46 = call i64 @urndis_ctrl_set(%struct.urndis_softc* %43, i32 %44, %struct.rndis_set_req* %45, i32 16)
  store i64 %46, i64* %7, align 8
  %47 = load i64, i64* %7, align 8
  %48 = load i64, i64* @RNDIS_STATUS_SUCCESS, align 8
  %49 = icmp ne i64 %47, %48
  br i1 %49, label %50, label %53

50:                                               ; preds = %37
  %51 = call i32 (i8*, ...) @DPRINTF(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  %52 = load i64, i64* %7, align 8
  store i64 %52, i64* %3, align 8
  br label %56

53:                                               ; preds = %37
  br label %54

54:                                               ; preds = %53, %32
  %55 = load i64, i64* %7, align 8
  store i64 %55, i64* %3, align 8
  br label %56

56:                                               ; preds = %54, %50, %28
  %57 = load i64, i64* %3, align 8
  ret i64 %57
}

declare dso_local i64 @le32toh(i64) #1

declare dso_local i32 @DPRINTF(i8*, ...) #1

declare dso_local i64 @htole32(i32) #1

declare dso_local i64 @urndis_ctrl_set(%struct.urndis_softc*, i32, %struct.rndis_set_req*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
