; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/hyperv/netvsc/extr_if_hn.c_hn_synth_detach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/hyperv/netvsc/extr_if_hn.c_hn_synth_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hn_softc = type { i32, i64, i64, i32, i32 }

@HN_FLAG_SYNTH_ATTACHED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"synthetic parts were not attached\00", align 1
@vmbus_current_version = common dso_local global i64 0, align 8
@VMBUS_VERSION_WIN10 = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [32 x i8] c"rxbuf gpadl disconn failed: %d\0A\00", align 1
@HN_FLAG_RXBUF_REF = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [31 x i8] c"chim gpadl disconn failed: %d\0A\00", align 1
@HN_FLAG_CHIM_REF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hn_softc*)* @hn_synth_detach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hn_synth_detach(%struct.hn_softc* %0) #0 {
  %2 = alloca %struct.hn_softc*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.hn_softc* %0, %struct.hn_softc** %2, align 8
  %5 = load %struct.hn_softc*, %struct.hn_softc** %2, align 8
  %6 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = load i32, i32* @HN_FLAG_SYNTH_ATTACHED, align 4
  %9 = and i32 %7, %8
  %10 = call i32 @KASSERT(i32 %9, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %11 = load %struct.hn_softc*, %struct.hn_softc** %2, align 8
  %12 = call i32 @hn_rndis_detach(%struct.hn_softc* %11)
  %13 = load %struct.hn_softc*, %struct.hn_softc** %2, align 8
  %14 = call i32 @hn_nvs_detach(%struct.hn_softc* %13)
  %15 = load %struct.hn_softc*, %struct.hn_softc** %2, align 8
  %16 = call i32 @hn_detach_allchans(%struct.hn_softc* %15)
  %17 = load i64, i64* @vmbus_current_version, align 8
  %18 = load i64, i64* @VMBUS_VERSION_WIN10, align 8
  %19 = icmp sge i64 %17, %18
  br i1 %19, label %20, label %49

20:                                               ; preds = %1
  %21 = load %struct.hn_softc*, %struct.hn_softc** %2, align 8
  %22 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %49

25:                                               ; preds = %20
  %26 = load %struct.hn_softc*, %struct.hn_softc** %2, align 8
  %27 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %26, i32 0, i32 4
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.hn_softc*, %struct.hn_softc** %2, align 8
  %30 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = call i32 @vmbus_chan_gpadl_disconnect(i32 %28, i64 %31)
  store i32 %32, i32* %3, align 4
  %33 = load i32, i32* %3, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %46

35:                                               ; preds = %25
  %36 = load %struct.hn_softc*, %struct.hn_softc** %2, align 8
  %37 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* %3, align 4
  %40 = call i32 @if_printf(i32 %38, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %39)
  %41 = load i32, i32* @HN_FLAG_RXBUF_REF, align 4
  %42 = load %struct.hn_softc*, %struct.hn_softc** %2, align 8
  %43 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = or i32 %44, %41
  store i32 %45, i32* %43, align 8
  br label %46

46:                                               ; preds = %35, %25
  %47 = load %struct.hn_softc*, %struct.hn_softc** %2, align 8
  %48 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %47, i32 0, i32 1
  store i64 0, i64* %48, align 8
  br label %49

49:                                               ; preds = %46, %20, %1
  %50 = load i64, i64* @vmbus_current_version, align 8
  %51 = load i64, i64* @VMBUS_VERSION_WIN10, align 8
  %52 = icmp sge i64 %50, %51
  br i1 %52, label %53, label %82

53:                                               ; preds = %49
  %54 = load %struct.hn_softc*, %struct.hn_softc** %2, align 8
  %55 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %54, i32 0, i32 2
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %82

58:                                               ; preds = %53
  %59 = load %struct.hn_softc*, %struct.hn_softc** %2, align 8
  %60 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %59, i32 0, i32 4
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.hn_softc*, %struct.hn_softc** %2, align 8
  %63 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %62, i32 0, i32 2
  %64 = load i64, i64* %63, align 8
  %65 = call i32 @vmbus_chan_gpadl_disconnect(i32 %61, i64 %64)
  store i32 %65, i32* %4, align 4
  %66 = load i32, i32* %4, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %79

68:                                               ; preds = %58
  %69 = load %struct.hn_softc*, %struct.hn_softc** %2, align 8
  %70 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %69, i32 0, i32 3
  %71 = load i32, i32* %70, align 8
  %72 = load i32, i32* %4, align 4
  %73 = call i32 @if_printf(i32 %71, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i32 %72)
  %74 = load i32, i32* @HN_FLAG_CHIM_REF, align 4
  %75 = load %struct.hn_softc*, %struct.hn_softc** %2, align 8
  %76 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = or i32 %77, %74
  store i32 %78, i32* %76, align 8
  br label %79

79:                                               ; preds = %68, %58
  %80 = load %struct.hn_softc*, %struct.hn_softc** %2, align 8
  %81 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %80, i32 0, i32 2
  store i64 0, i64* %81, align 8
  br label %82

82:                                               ; preds = %79, %53, %49
  %83 = load i32, i32* @HN_FLAG_SYNTH_ATTACHED, align 4
  %84 = xor i32 %83, -1
  %85 = load %struct.hn_softc*, %struct.hn_softc** %2, align 8
  %86 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = and i32 %87, %84
  store i32 %88, i32* %86, align 8
  ret void
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @hn_rndis_detach(%struct.hn_softc*) #1

declare dso_local i32 @hn_nvs_detach(%struct.hn_softc*) #1

declare dso_local i32 @hn_detach_allchans(%struct.hn_softc*) #1

declare dso_local i32 @vmbus_chan_gpadl_disconnect(i32, i64) #1

declare dso_local i32 @if_printf(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
