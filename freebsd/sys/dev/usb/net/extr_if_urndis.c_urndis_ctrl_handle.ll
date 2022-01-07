; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/net/extr_if_urndis.c_urndis_ctrl_handle.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/net/extr_if_urndis.c_urndis_ctrl_handle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.urndis_softc = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.rndis_comp_hdr = type { i32, i32 }

@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"ctrl message error: unknown event 0x%x\0A\00", align 1
@RNDIS_STATUS_FAILURE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.urndis_softc*, %struct.rndis_comp_hdr*, i8**, i64*)* @urndis_ctrl_handle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @urndis_ctrl_handle(%struct.urndis_softc* %0, %struct.rndis_comp_hdr* %1, i8** %2, i64* %3) #0 {
  %5 = alloca %struct.urndis_softc*, align 8
  %6 = alloca %struct.rndis_comp_hdr*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i32, align 4
  store %struct.urndis_softc* %0, %struct.urndis_softc** %5, align 8
  store %struct.rndis_comp_hdr* %1, %struct.rndis_comp_hdr** %6, align 8
  store i8** %2, i8*** %7, align 8
  store i64* %3, i64** %8, align 8
  %10 = call i32 @DPRINTF(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %11 = load i8**, i8*** %7, align 8
  %12 = icmp ne i8** %11, null
  br i1 %12, label %13, label %19

13:                                               ; preds = %4
  %14 = load i64*, i64** %8, align 8
  %15 = icmp ne i64* %14, null
  br i1 %15, label %16, label %19

16:                                               ; preds = %13
  %17 = load i8**, i8*** %7, align 8
  store i8* null, i8** %17, align 8
  %18 = load i64*, i64** %8, align 8
  store i64 0, i64* %18, align 8
  br label %19

19:                                               ; preds = %16, %13, %4
  %20 = load %struct.rndis_comp_hdr*, %struct.rndis_comp_hdr** %6, align 8
  %21 = getelementptr inbounds %struct.rndis_comp_hdr, %struct.rndis_comp_hdr* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @le32toh(i32 %22)
  switch i32 %23, label %43 [
    i32 132, label %24
    i32 130, label %28
    i32 129, label %34
    i32 131, label %38
    i32 128, label %38
  ]

24:                                               ; preds = %19
  %25 = load %struct.urndis_softc*, %struct.urndis_softc** %5, align 8
  %26 = load %struct.rndis_comp_hdr*, %struct.rndis_comp_hdr** %6, align 8
  %27 = call i32 @urndis_ctrl_handle_init(%struct.urndis_softc* %25, %struct.rndis_comp_hdr* %26)
  store i32 %27, i32* %9, align 4
  br label %54

28:                                               ; preds = %19
  %29 = load %struct.urndis_softc*, %struct.urndis_softc** %5, align 8
  %30 = load %struct.rndis_comp_hdr*, %struct.rndis_comp_hdr** %6, align 8
  %31 = load i8**, i8*** %7, align 8
  %32 = load i64*, i64** %8, align 8
  %33 = call i32 @urndis_ctrl_handle_query(%struct.urndis_softc* %29, %struct.rndis_comp_hdr* %30, i8** %31, i64* %32)
  store i32 %33, i32* %9, align 4
  br label %54

34:                                               ; preds = %19
  %35 = load %struct.urndis_softc*, %struct.urndis_softc** %5, align 8
  %36 = load %struct.rndis_comp_hdr*, %struct.rndis_comp_hdr** %6, align 8
  %37 = call i32 @urndis_ctrl_handle_reset(%struct.urndis_softc* %35, %struct.rndis_comp_hdr* %36)
  store i32 %37, i32* %9, align 4
  br label %54

38:                                               ; preds = %19, %19
  %39 = load %struct.rndis_comp_hdr*, %struct.rndis_comp_hdr** %6, align 8
  %40 = getelementptr inbounds %struct.rndis_comp_hdr, %struct.rndis_comp_hdr* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @le32toh(i32 %41)
  store i32 %42, i32* %9, align 4
  br label %54

43:                                               ; preds = %19
  %44 = load %struct.urndis_softc*, %struct.urndis_softc** %5, align 8
  %45 = getelementptr inbounds %struct.urndis_softc, %struct.urndis_softc* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.rndis_comp_hdr*, %struct.rndis_comp_hdr** %6, align 8
  %49 = getelementptr inbounds %struct.rndis_comp_hdr, %struct.rndis_comp_hdr* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @le32toh(i32 %50)
  %52 = call i32 @device_printf(i32 %47, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i32 %51)
  %53 = load i32, i32* @RNDIS_STATUS_FAILURE, align 4
  store i32 %53, i32* %9, align 4
  br label %54

54:                                               ; preds = %43, %38, %34, %28, %24
  %55 = load i32, i32* %9, align 4
  ret i32 %55
}

declare dso_local i32 @DPRINTF(i8*) #1

declare dso_local i32 @le32toh(i32) #1

declare dso_local i32 @urndis_ctrl_handle_init(%struct.urndis_softc*, %struct.rndis_comp_hdr*) #1

declare dso_local i32 @urndis_ctrl_handle_query(%struct.urndis_softc*, %struct.rndis_comp_hdr*, i8**, i64*) #1

declare dso_local i32 @urndis_ctrl_handle_reset(%struct.urndis_softc*, %struct.rndis_comp_hdr*) #1

declare dso_local i32 @device_printf(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
