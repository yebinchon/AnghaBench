; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe.c_bxe_ifmedia_update.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe.c_bxe_ifmedia_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifnet = type { i32 }
%struct.bxe_softc = type { %struct.ifmedia }
%struct.ifmedia = type { i32 }

@IFM_ETHER = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@DBG_LOAD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Invalid media type (%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ifnet*)* @bxe_ifmedia_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bxe_ifmedia_update(%struct.ifnet* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ifnet*, align 8
  %4 = alloca %struct.bxe_softc*, align 8
  %5 = alloca %struct.ifmedia*, align 8
  store %struct.ifnet* %0, %struct.ifnet** %3, align 8
  %6 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %7 = call i64 @if_getsoftc(%struct.ifnet* %6)
  %8 = inttoptr i64 %7 to %struct.bxe_softc*
  store %struct.bxe_softc* %8, %struct.bxe_softc** %4, align 8
  %9 = load %struct.bxe_softc*, %struct.bxe_softc** %4, align 8
  %10 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %9, i32 0, i32 0
  store %struct.ifmedia* %10, %struct.ifmedia** %5, align 8
  %11 = load %struct.ifmedia*, %struct.ifmedia** %5, align 8
  %12 = getelementptr inbounds %struct.ifmedia, %struct.ifmedia* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i64 @IFM_TYPE(i32 %13)
  %15 = load i64, i64* @IFM_ETHER, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %17, label %19

17:                                               ; preds = %1
  %18 = load i32, i32* @EINVAL, align 4
  store i32 %18, i32* %2, align 4
  br label %36

19:                                               ; preds = %1
  %20 = load %struct.ifmedia*, %struct.ifmedia** %5, align 8
  %21 = getelementptr inbounds %struct.ifmedia, %struct.ifmedia* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @IFM_SUBTYPE(i32 %22)
  switch i32 %23, label %26 [
    i32 128, label %24
    i32 132, label %25
    i32 131, label %25
    i32 130, label %25
    i32 129, label %25
  ]

24:                                               ; preds = %19
  br label %35

25:                                               ; preds = %19, %19, %19, %19
  br label %26

26:                                               ; preds = %19, %25
  %27 = load %struct.bxe_softc*, %struct.bxe_softc** %4, align 8
  %28 = load i32, i32* @DBG_LOAD, align 4
  %29 = load %struct.ifmedia*, %struct.ifmedia** %5, align 8
  %30 = getelementptr inbounds %struct.ifmedia, %struct.ifmedia* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @IFM_SUBTYPE(i32 %31)
  %33 = call i32 @BLOGD(%struct.bxe_softc* %27, i32 %28, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %32)
  %34 = load i32, i32* @EINVAL, align 4
  store i32 %34, i32* %2, align 4
  br label %36

35:                                               ; preds = %24
  store i32 0, i32* %2, align 4
  br label %36

36:                                               ; preds = %35, %26, %17
  %37 = load i32, i32* %2, align 4
  ret i32 %37
}

declare dso_local i64 @if_getsoftc(%struct.ifnet*) #1

declare dso_local i64 @IFM_TYPE(i32) #1

declare dso_local i32 @IFM_SUBTYPE(i32) #1

declare dso_local i32 @BLOGD(%struct.bxe_softc*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
