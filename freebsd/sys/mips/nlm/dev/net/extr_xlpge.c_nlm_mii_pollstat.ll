; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/nlm/dev/net/extr_xlpge.c_nlm_mii_pollstat.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/nlm/dev/net/extr_xlpge.c_nlm_mii_pollstat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nlm_xlpge_softc = type { i32, i64 }
%struct.mii_data = type { i32 }

@.str = private unnamed_addr constant [16 x i8] c"mii ptr is NULL\00", align 1
@hz = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @nlm_mii_pollstat to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nlm_mii_pollstat(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.nlm_xlpge_softc*, align 8
  %4 = alloca %struct.mii_data*, align 8
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = bitcast i8* %5 to %struct.nlm_xlpge_softc*
  store %struct.nlm_xlpge_softc* %6, %struct.nlm_xlpge_softc** %3, align 8
  store %struct.mii_data* null, %struct.mii_data** %4, align 8
  %7 = load %struct.nlm_xlpge_softc*, %struct.nlm_xlpge_softc** %3, align 8
  %8 = getelementptr inbounds %struct.nlm_xlpge_softc, %struct.nlm_xlpge_softc* %7, i32 0, i32 1
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %27

11:                                               ; preds = %1
  %12 = load %struct.nlm_xlpge_softc*, %struct.nlm_xlpge_softc** %3, align 8
  %13 = getelementptr inbounds %struct.nlm_xlpge_softc, %struct.nlm_xlpge_softc* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = call %struct.mii_data* @device_get_softc(i64 %14)
  store %struct.mii_data* %15, %struct.mii_data** %4, align 8
  %16 = load %struct.mii_data*, %struct.mii_data** %4, align 8
  %17 = icmp ne %struct.mii_data* %16, null
  %18 = zext i1 %17 to i32
  %19 = call i32 @KASSERT(i32 %18, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %20 = load %struct.mii_data*, %struct.mii_data** %4, align 8
  %21 = call i32 @mii_pollstat(%struct.mii_data* %20)
  %22 = load %struct.nlm_xlpge_softc*, %struct.nlm_xlpge_softc** %3, align 8
  %23 = getelementptr inbounds %struct.nlm_xlpge_softc, %struct.nlm_xlpge_softc* %22, i32 0, i32 0
  %24 = load i32, i32* @hz, align 4
  %25 = load %struct.nlm_xlpge_softc*, %struct.nlm_xlpge_softc** %3, align 8
  %26 = call i32 @callout_reset(i32* %23, i32 %24, void (i8*)* @nlm_mii_pollstat, %struct.nlm_xlpge_softc* %25)
  br label %27

27:                                               ; preds = %11, %1
  ret void
}

declare dso_local %struct.mii_data* @device_get_softc(i64) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @mii_pollstat(%struct.mii_data*) #1

declare dso_local i32 @callout_reset(i32*, i32, void (i8*)*, %struct.nlm_xlpge_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
