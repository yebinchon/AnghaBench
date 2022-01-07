; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/hme/extr_if_hme.c_hme_intr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/hme/extr_if_hme.c_hme_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hme_softc = type { i32 }

@HME_SEBI_STAT = common dso_local global i32 0, align 4
@KTR_HME = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"hme_intr: status %#x\00", align 1
@HME_SEB_STAT_ALL_ERRORS = common dso_local global i32 0, align 4
@HME_SEB_STAT_RXTOHOST = common dso_local global i32 0, align 4
@HME_SEB_STAT_TXALL = common dso_local global i32 0, align 4
@HME_SEB_STAT_HOSTTOTX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hme_intr(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.hme_softc*, align 8
  %4 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = bitcast i8* %5 to %struct.hme_softc*
  store %struct.hme_softc* %6, %struct.hme_softc** %3, align 8
  %7 = load %struct.hme_softc*, %struct.hme_softc** %3, align 8
  %8 = call i32 @HME_LOCK(%struct.hme_softc* %7)
  %9 = load %struct.hme_softc*, %struct.hme_softc** %3, align 8
  %10 = load i32, i32* @HME_SEBI_STAT, align 4
  %11 = call i32 @HME_SEB_READ_4(%struct.hme_softc* %9, i32 %10)
  store i32 %11, i32* %4, align 4
  %12 = load i32, i32* @KTR_HME, align 4
  %13 = load i32, i32* %4, align 4
  %14 = call i32 @CTR1(i32 %12, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %13)
  %15 = load i32, i32* %4, align 4
  %16 = load i32, i32* @HME_SEB_STAT_ALL_ERRORS, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %1
  %20 = load %struct.hme_softc*, %struct.hme_softc** %3, align 8
  %21 = load i32, i32* %4, align 4
  %22 = call i32 @hme_eint(%struct.hme_softc* %20, i32 %21)
  br label %23

23:                                               ; preds = %19, %1
  %24 = load i32, i32* %4, align 4
  %25 = load i32, i32* @HME_SEB_STAT_RXTOHOST, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %23
  %29 = load %struct.hme_softc*, %struct.hme_softc** %3, align 8
  %30 = call i32 @hme_rint(%struct.hme_softc* %29)
  br label %31

31:                                               ; preds = %28, %23
  %32 = load i32, i32* %4, align 4
  %33 = load i32, i32* @HME_SEB_STAT_TXALL, align 4
  %34 = load i32, i32* @HME_SEB_STAT_HOSTTOTX, align 4
  %35 = or i32 %33, %34
  %36 = and i32 %32, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %31
  %39 = load %struct.hme_softc*, %struct.hme_softc** %3, align 8
  %40 = call i32 @hme_tint(%struct.hme_softc* %39)
  br label %41

41:                                               ; preds = %38, %31
  %42 = load %struct.hme_softc*, %struct.hme_softc** %3, align 8
  %43 = call i32 @HME_UNLOCK(%struct.hme_softc* %42)
  ret void
}

declare dso_local i32 @HME_LOCK(%struct.hme_softc*) #1

declare dso_local i32 @HME_SEB_READ_4(%struct.hme_softc*, i32) #1

declare dso_local i32 @CTR1(i32, i8*, i32) #1

declare dso_local i32 @hme_eint(%struct.hme_softc*, i32) #1

declare dso_local i32 @hme_rint(%struct.hme_softc*) #1

declare dso_local i32 @hme_tint(%struct.hme_softc*) #1

declare dso_local i32 @HME_UNLOCK(%struct.hme_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
