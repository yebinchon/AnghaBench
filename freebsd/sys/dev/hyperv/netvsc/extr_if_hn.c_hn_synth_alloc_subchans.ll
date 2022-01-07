; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/hyperv/netvsc/extr_if_hn.c_hn_synth_alloc_subchans.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/hyperv/netvsc/extr_if_hn.c_hn_synth_alloc_subchans.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hn_softc = type { i32, i32 }
%struct.vmbus_channel = type { i32 }

@bootverbose = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [35 x i8] c"RX rings offered %u, requested %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"only 1 channel is supported, no vRSS\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hn_softc*, i32*)* @hn_synth_alloc_subchans to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hn_synth_alloc_subchans(%struct.hn_softc* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hn_softc*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.vmbus_channel**, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.hn_softc* %0, %struct.hn_softc** %4, align 8
  store i32* %1, i32** %5, align 8
  %10 = load i32*, i32** %5, align 8
  %11 = load i32, i32* %10, align 4
  %12 = add nsw i32 %11, 1
  store i32 %12, i32* %7, align 4
  %13 = load i32, i32* %7, align 4
  %14 = icmp eq i32 %13, 1
  br i1 %14, label %15, label %17

15:                                               ; preds = %2
  %16 = load i32*, i32** %5, align 8
  store i32 0, i32* %16, align 4
  store i32 0, i32* %3, align 4
  br label %75

17:                                               ; preds = %2
  %18 = load %struct.hn_softc*, %struct.hn_softc** %4, align 8
  %19 = call i32 @hn_rndis_query_rsscaps(%struct.hn_softc* %18, i32* %8)
  store i32 %19, i32* %9, align 4
  %20 = load i32, i32* %9, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %17
  %23 = load i32*, i32** %5, align 8
  store i32 0, i32* %23, align 4
  store i32 0, i32* %3, align 4
  br label %75

24:                                               ; preds = %17
  %25 = load i64, i64* @bootverbose, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %34

27:                                               ; preds = %24
  %28 = load %struct.hn_softc*, %struct.hn_softc** %4, align 8
  %29 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* %8, align 4
  %32 = load i32, i32* %7, align 4
  %33 = call i32 (i32, i8*, ...) @if_printf(i32 %30, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %31, i32 %32)
  br label %34

34:                                               ; preds = %27, %24
  %35 = load i32, i32* %7, align 4
  %36 = load i32, i32* %8, align 4
  %37 = icmp sgt i32 %35, %36
  br i1 %37, label %38, label %40

38:                                               ; preds = %34
  %39 = load i32, i32* %8, align 4
  store i32 %39, i32* %7, align 4
  br label %40

40:                                               ; preds = %38, %34
  %41 = load i32, i32* %7, align 4
  %42 = icmp eq i32 %41, 1
  br i1 %42, label %43, label %49

43:                                               ; preds = %40
  %44 = load %struct.hn_softc*, %struct.hn_softc** %4, align 8
  %45 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = call i32 (i32, i8*, ...) @if_printf(i32 %46, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  %48 = load i32*, i32** %5, align 8
  store i32 0, i32* %48, align 4
  store i32 0, i32* %3, align 4
  br label %75

49:                                               ; preds = %40
  %50 = load i32, i32* %7, align 4
  %51 = sub nsw i32 %50, 1
  %52 = load i32*, i32** %5, align 8
  store i32 %51, i32* %52, align 4
  %53 = load %struct.hn_softc*, %struct.hn_softc** %4, align 8
  %54 = load i32*, i32** %5, align 8
  %55 = call i32 @hn_nvs_alloc_subchans(%struct.hn_softc* %53, i32* %54)
  store i32 %55, i32* %9, align 4
  %56 = load i32, i32* %9, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %62, label %58

58:                                               ; preds = %49
  %59 = load i32*, i32** %5, align 8
  %60 = load i32, i32* %59, align 4
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %58, %49
  %63 = load i32*, i32** %5, align 8
  store i32 0, i32* %63, align 4
  store i32 0, i32* %3, align 4
  br label %75

64:                                               ; preds = %58
  %65 = load %struct.hn_softc*, %struct.hn_softc** %4, align 8
  %66 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load i32*, i32** %5, align 8
  %69 = load i32, i32* %68, align 4
  %70 = call %struct.vmbus_channel** @vmbus_subchan_get(i32 %67, i32 %69)
  store %struct.vmbus_channel** %70, %struct.vmbus_channel*** %6, align 8
  %71 = load %struct.vmbus_channel**, %struct.vmbus_channel*** %6, align 8
  %72 = load i32*, i32** %5, align 8
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @vmbus_subchan_rel(%struct.vmbus_channel** %71, i32 %73)
  store i32 0, i32* %3, align 4
  br label %75

75:                                               ; preds = %64, %62, %43, %22, %15
  %76 = load i32, i32* %3, align 4
  ret i32 %76
}

declare dso_local i32 @hn_rndis_query_rsscaps(%struct.hn_softc*, i32*) #1

declare dso_local i32 @if_printf(i32, i8*, ...) #1

declare dso_local i32 @hn_nvs_alloc_subchans(%struct.hn_softc*, i32*) #1

declare dso_local %struct.vmbus_channel** @vmbus_subchan_get(i32, i32) #1

declare dso_local i32 @vmbus_subchan_rel(%struct.vmbus_channel**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
