; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/hyperv/netvsc/extr_if_hn.c_hn_rndis_rx_status.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/hyperv/netvsc/extr_if_hn.c_hn_rndis_rx_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hn_softc = type { i32 }
%struct.rndis_status_msg = type { i32, i32, i32 }

@.str = private unnamed_addr constant [22 x i8] c"invalid RNDIS status\0A\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"network changed\0A\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"network changed, change %u\0A\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"unknown RNDIS status 0x%08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hn_softc*, i8*, i32)* @hn_rndis_rx_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hn_rndis_rx_status(%struct.hn_softc* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.hn_softc*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.rndis_status_msg*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.hn_softc* %0, %struct.hn_softc** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load i32, i32* %6, align 4
  %11 = sext i32 %10 to i64
  %12 = icmp ult i64 %11, 12
  br i1 %12, label %13, label %18

13:                                               ; preds = %3
  %14 = load %struct.hn_softc*, %struct.hn_softc** %4, align 8
  %15 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 (i32, i8*, ...) @if_printf(i32 %16, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  br label %74

18:                                               ; preds = %3
  %19 = load i8*, i8** %5, align 8
  %20 = bitcast i8* %19 to %struct.rndis_status_msg*
  store %struct.rndis_status_msg* %20, %struct.rndis_status_msg** %7, align 8
  %21 = load %struct.rndis_status_msg*, %struct.rndis_status_msg** %7, align 8
  %22 = getelementptr inbounds %struct.rndis_status_msg, %struct.rndis_status_msg* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  switch i32 %23, label %66 [
    i32 131, label %24
    i32 130, label %24
    i32 128, label %27
    i32 132, label %27
    i32 129, label %28
  ]

24:                                               ; preds = %18, %18
  %25 = load %struct.hn_softc*, %struct.hn_softc** %4, align 8
  %26 = call i32 @hn_update_link_status(%struct.hn_softc* %25)
  br label %74

27:                                               ; preds = %18, %18
  br label %74

28:                                               ; preds = %18
  %29 = load %struct.rndis_status_msg*, %struct.rndis_status_msg** %7, align 8
  %30 = getelementptr inbounds %struct.rndis_status_msg, %struct.rndis_status_msg* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @RNDIS_STBUFOFFSET_ABS(i32 %31)
  store i32 %32, i32* %8, align 4
  %33 = load i32, i32* %6, align 4
  %34 = load i32, i32* %8, align 4
  %35 = load %struct.rndis_status_msg*, %struct.rndis_status_msg** %7, align 8
  %36 = getelementptr inbounds %struct.rndis_status_msg, %struct.rndis_status_msg* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = add nsw i32 %34, %37
  %39 = icmp slt i32 %33, %38
  br i1 %39, label %46, label %40

40:                                               ; preds = %28
  %41 = load %struct.rndis_status_msg*, %struct.rndis_status_msg** %7, align 8
  %42 = getelementptr inbounds %struct.rndis_status_msg, %struct.rndis_status_msg* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = sext i32 %43 to i64
  %45 = icmp ult i64 %44, 4
  br i1 %45, label %46, label %51

46:                                               ; preds = %40, %28
  %47 = load %struct.hn_softc*, %struct.hn_softc** %4, align 8
  %48 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 (i32, i8*, ...) @if_printf(i32 %49, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  br label %63

51:                                               ; preds = %40
  %52 = load %struct.rndis_status_msg*, %struct.rndis_status_msg** %7, align 8
  %53 = bitcast %struct.rndis_status_msg* %52 to i32*
  %54 = load i32, i32* %8, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %53, i64 %55
  %57 = call i32 @memcpy(i32* %9, i32* %56, i32 4)
  %58 = load %struct.hn_softc*, %struct.hn_softc** %4, align 8
  %59 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* %9, align 4
  %62 = call i32 (i32, i8*, ...) @if_printf(i32 %60, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i32 %61)
  br label %63

63:                                               ; preds = %51, %46
  %64 = load %struct.hn_softc*, %struct.hn_softc** %4, align 8
  %65 = call i32 @hn_change_network(%struct.hn_softc* %64)
  br label %74

66:                                               ; preds = %18
  %67 = load %struct.hn_softc*, %struct.hn_softc** %4, align 8
  %68 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.rndis_status_msg*, %struct.rndis_status_msg** %7, align 8
  %71 = getelementptr inbounds %struct.rndis_status_msg, %struct.rndis_status_msg* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = call i32 (i32, i8*, ...) @if_printf(i32 %69, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0), i32 %72)
  br label %74

74:                                               ; preds = %13, %66, %63, %27, %24
  ret void
}

declare dso_local i32 @if_printf(i32, i8*, ...) #1

declare dso_local i32 @hn_update_link_status(%struct.hn_softc*) #1

declare dso_local i32 @RNDIS_STBUFOFFSET_ABS(i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @hn_change_network(%struct.hn_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
