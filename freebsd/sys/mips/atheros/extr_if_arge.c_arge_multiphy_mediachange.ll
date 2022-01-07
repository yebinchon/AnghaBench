; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/atheros/extr_if_arge.c_arge_multiphy_mediachange.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/atheros/extr_if_arge.c_arge_multiphy_mediachange.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifnet = type { %struct.arge_softc* }
%struct.arge_softc = type { i32, %struct.ifmedia }
%struct.ifmedia = type { i32, %struct.ifmedia_entry* }
%struct.ifmedia_entry = type { i32 }

@IFM_ETHER = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@IFM_AUTO = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [39 x i8] c"AUTO is not supported for multiphy MAC\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @arge_multiphy_mediachange(%struct.ifnet* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ifnet*, align 8
  %4 = alloca %struct.arge_softc*, align 8
  %5 = alloca %struct.ifmedia*, align 8
  %6 = alloca %struct.ifmedia_entry*, align 8
  store %struct.ifnet* %0, %struct.ifnet** %3, align 8
  %7 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %8 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %7, i32 0, i32 0
  %9 = load %struct.arge_softc*, %struct.arge_softc** %8, align 8
  store %struct.arge_softc* %9, %struct.arge_softc** %4, align 8
  %10 = load %struct.arge_softc*, %struct.arge_softc** %4, align 8
  %11 = getelementptr inbounds %struct.arge_softc, %struct.arge_softc* %10, i32 0, i32 1
  store %struct.ifmedia* %11, %struct.ifmedia** %5, align 8
  %12 = load %struct.ifmedia*, %struct.ifmedia** %5, align 8
  %13 = getelementptr inbounds %struct.ifmedia, %struct.ifmedia* %12, i32 0, i32 1
  %14 = load %struct.ifmedia_entry*, %struct.ifmedia_entry** %13, align 8
  store %struct.ifmedia_entry* %14, %struct.ifmedia_entry** %6, align 8
  %15 = load %struct.ifmedia*, %struct.ifmedia** %5, align 8
  %16 = getelementptr inbounds %struct.ifmedia, %struct.ifmedia* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = call i64 @IFM_TYPE(i32 %17)
  %19 = load i64, i64* @IFM_ETHER, align 8
  %20 = icmp ne i64 %18, %19
  br i1 %20, label %21, label %23

21:                                               ; preds = %1
  %22 = load i32, i32* @EINVAL, align 4
  store i32 %22, i32* %2, align 4
  br label %37

23:                                               ; preds = %1
  %24 = load %struct.ifmedia_entry*, %struct.ifmedia_entry** %6, align 8
  %25 = getelementptr inbounds %struct.ifmedia_entry, %struct.ifmedia_entry* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i64 @IFM_SUBTYPE(i32 %26)
  %28 = load i64, i64* @IFM_AUTO, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %36

30:                                               ; preds = %23
  %31 = load %struct.arge_softc*, %struct.arge_softc** %4, align 8
  %32 = getelementptr inbounds %struct.arge_softc, %struct.arge_softc* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @device_printf(i32 %33, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  %35 = load i32, i32* @EINVAL, align 4
  store i32 %35, i32* %2, align 4
  br label %37

36:                                               ; preds = %23
  store i32 0, i32* %2, align 4
  br label %37

37:                                               ; preds = %36, %30, %21
  %38 = load i32, i32* %2, align 4
  ret i32 %38
}

declare dso_local i64 @IFM_TYPE(i32) #1

declare dso_local i64 @IFM_SUBTYPE(i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
