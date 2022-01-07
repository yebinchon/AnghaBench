; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/hyperv/netvsc/extr_hn_rndis.c_hn_rndis_rx_ctrl.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/hyperv/netvsc/extr_hn_rndis.c_hn_rndis_rx_ctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hn_softc = type { i32, i32 }
%struct.rndis_comp_hdr = type { i32 }
%struct.rndis_msghdr = type { i32 }

@.str = private unnamed_addr constant [19 x i8] c"invalid RNDIS msg\0A\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"invalid RNDIS cmplt\0A\00", align 1
@HN_RNDIS_RID_COMPAT_MAX = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"invalid RNDIS rid 0x%08x\0A\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"RESET cmplt received\0A\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"unknown RNDIS msg 0x%x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hn_rndis_rx_ctrl(%struct.hn_softc* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.hn_softc*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.rndis_comp_hdr*, align 8
  %8 = alloca %struct.rndis_msghdr*, align 8
  store %struct.hn_softc* %0, %struct.hn_softc** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load i32, i32* %6, align 4
  %10 = sext i32 %9 to i64
  %11 = icmp uge i64 %10, 4
  %12 = zext i1 %11 to i32
  %13 = call i32 @KASSERT(i32 %12, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %14 = load i8*, i8** %5, align 8
  %15 = bitcast i8* %14 to %struct.rndis_msghdr*
  store %struct.rndis_msghdr* %15, %struct.rndis_msghdr** %8, align 8
  %16 = load %struct.rndis_msghdr*, %struct.rndis_msghdr** %8, align 8
  %17 = getelementptr inbounds %struct.rndis_msghdr, %struct.rndis_msghdr* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  switch i32 %18, label %54 [
    i32 132, label %19
    i32 130, label %19
    i32 128, label %19
    i32 131, label %19
    i32 129, label %49
  ]

19:                                               ; preds = %3, %3, %3, %3
  %20 = load i32, i32* %6, align 4
  %21 = sext i32 %20 to i64
  %22 = icmp ult i64 %21, 4
  br i1 %22, label %23, label %28

23:                                               ; preds = %19
  %24 = load %struct.hn_softc*, %struct.hn_softc** %4, align 8
  %25 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 (i32, i8*, ...) @if_printf(i32 %26, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  br label %62

28:                                               ; preds = %19
  %29 = load i8*, i8** %5, align 8
  %30 = bitcast i8* %29 to %struct.rndis_comp_hdr*
  store %struct.rndis_comp_hdr* %30, %struct.rndis_comp_hdr** %7, align 8
  %31 = load %struct.rndis_comp_hdr*, %struct.rndis_comp_hdr** %7, align 8
  %32 = getelementptr inbounds %struct.rndis_comp_hdr, %struct.rndis_comp_hdr* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @HN_RNDIS_RID_COMPAT_MAX, align 4
  %35 = icmp sgt i32 %33, %34
  %36 = zext i1 %35 to i32
  %37 = load %struct.rndis_comp_hdr*, %struct.rndis_comp_hdr** %7, align 8
  %38 = getelementptr inbounds %struct.rndis_comp_hdr, %struct.rndis_comp_hdr* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = sext i32 %39 to i64
  %41 = inttoptr i64 %40 to i8*
  %42 = call i32 @KASSERT(i32 %36, i8* %41)
  %43 = load %struct.hn_softc*, %struct.hn_softc** %4, align 8
  %44 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.rndis_comp_hdr*, %struct.rndis_comp_hdr** %7, align 8
  %47 = load i32, i32* %6, align 4
  %48 = call i32 @vmbus_xact_ctx_wakeup(i32 %45, %struct.rndis_comp_hdr* %46, i32 %47)
  br label %62

49:                                               ; preds = %3
  %50 = load %struct.hn_softc*, %struct.hn_softc** %4, align 8
  %51 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 (i32, i8*, ...) @if_printf(i32 %52, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0))
  br label %62

54:                                               ; preds = %3
  %55 = load %struct.hn_softc*, %struct.hn_softc** %4, align 8
  %56 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.rndis_msghdr*, %struct.rndis_msghdr** %8, align 8
  %59 = getelementptr inbounds %struct.rndis_msghdr, %struct.rndis_msghdr* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i32 (i32, i8*, ...) @if_printf(i32 %57, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i32 %60)
  br label %62

62:                                               ; preds = %23, %54, %49, %28
  ret void
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @if_printf(i32, i8*, ...) #1

declare dso_local i32 @vmbus_xact_ctx_wakeup(i32, %struct.rndis_comp_hdr*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
