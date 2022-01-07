; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/hyperv/netvsc/extr_hn_rndis.c_hn_rndis_set_rxfilter.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/hyperv/netvsc/extr_hn_rndis.c_hn_rndis_set_rxfilter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hn_softc = type { i32 }

@OID_GEN_CURRENT_PACKET_FILTER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"set RX filter 0x%08x failed: %d\0A\00", align 1
@bootverbose = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [27 x i8] c"set RX filter 0x%08x done\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hn_rndis_set_rxfilter(%struct.hn_softc* %0, i32 %1) #0 {
  %3 = alloca %struct.hn_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.hn_softc* %0, %struct.hn_softc** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.hn_softc*, %struct.hn_softc** %3, align 8
  %7 = load i32, i32* @OID_GEN_CURRENT_PACKET_FILTER, align 4
  %8 = call i32 @hn_rndis_set(%struct.hn_softc* %6, i32 %7, i32* %4, i32 4)
  store i32 %8, i32* %5, align 4
  %9 = load i32, i32* %5, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %18

11:                                               ; preds = %2
  %12 = load %struct.hn_softc*, %struct.hn_softc** %3, align 8
  %13 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* %4, align 4
  %16 = load i32, i32* %5, align 4
  %17 = call i32 (i32, i8*, i32, ...) @if_printf(i32 %14, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %15, i32 %16)
  br label %28

18:                                               ; preds = %2
  %19 = load i64, i64* @bootverbose, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %27

21:                                               ; preds = %18
  %22 = load %struct.hn_softc*, %struct.hn_softc** %3, align 8
  %23 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* %4, align 4
  %26 = call i32 (i32, i8*, i32, ...) @if_printf(i32 %24, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %25)
  br label %27

27:                                               ; preds = %21, %18
  br label %28

28:                                               ; preds = %27, %11
  %29 = load i32, i32* %5, align 4
  ret i32 %29
}

declare dso_local i32 @hn_rndis_set(%struct.hn_softc*, i32, i32*, i32) #1

declare dso_local i32 @if_printf(i32, i8*, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
