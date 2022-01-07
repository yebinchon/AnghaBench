; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/xl/extr_if_xl.c_xl_stats_update.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/xl/extr_if_xl.c_xl_stats_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xl_softc = type { %struct.ifnet* }
%struct.ifnet = type { i32 }
%struct.xl_stats = type { i64, i64, i64, i64 }

@XL_W6_CARRIER_LOST = common dso_local global i64 0, align 8
@IFCOUNTER_IERRORS = common dso_local global i32 0, align 4
@IFCOUNTER_COLLISIONS = common dso_local global i32 0, align 4
@XL_W4_BADSSD = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xl_softc*)* @xl_stats_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xl_stats_update(%struct.xl_softc* %0) #0 {
  %2 = alloca %struct.xl_softc*, align 8
  %3 = alloca %struct.ifnet*, align 8
  %4 = alloca %struct.xl_stats, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  store %struct.xl_softc* %0, %struct.xl_softc** %2, align 8
  %7 = load %struct.xl_softc*, %struct.xl_softc** %2, align 8
  %8 = getelementptr inbounds %struct.xl_softc, %struct.xl_softc* %7, i32 0, i32 0
  %9 = load %struct.ifnet*, %struct.ifnet** %8, align 8
  store %struct.ifnet* %9, %struct.ifnet** %3, align 8
  %10 = load %struct.xl_softc*, %struct.xl_softc** %2, align 8
  %11 = call i32 @XL_LOCK_ASSERT(%struct.xl_softc* %10)
  %12 = bitcast %struct.xl_stats* %4 to i8*
  %13 = call i32 @bzero(i8* %12, i32 32)
  %14 = bitcast %struct.xl_stats* %4 to i32*
  store i32* %14, i32** %5, align 8
  %15 = call i32 @XL_SEL_WIN(i32 6)
  store i32 0, i32* %6, align 4
  br label %16

16:                                               ; preds = %28, %1
  %17 = load i32, i32* %6, align 4
  %18 = icmp slt i32 %17, 16
  br i1 %18, label %19, label %31

19:                                               ; preds = %16
  %20 = load %struct.xl_softc*, %struct.xl_softc** %2, align 8
  %21 = load i64, i64* @XL_W6_CARRIER_LOST, align 8
  %22 = load i32, i32* %6, align 4
  %23 = sext i32 %22 to i64
  %24 = add nsw i64 %21, %23
  %25 = call i32 @CSR_READ_1(%struct.xl_softc* %20, i64 %24)
  %26 = load i32*, i32** %5, align 8
  %27 = getelementptr inbounds i32, i32* %26, i32 1
  store i32* %27, i32** %5, align 8
  store i32 %25, i32* %26, align 4
  br label %28

28:                                               ; preds = %19
  %29 = load i32, i32* %6, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %6, align 4
  br label %16

31:                                               ; preds = %16
  %32 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %33 = load i32, i32* @IFCOUNTER_IERRORS, align 4
  %34 = getelementptr inbounds %struct.xl_stats, %struct.xl_stats* %4, i32 0, i32 3
  %35 = load i64, i64* %34, align 8
  %36 = call i32 @if_inc_counter(%struct.ifnet* %32, i32 %33, i64 %35)
  %37 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %38 = load i32, i32* @IFCOUNTER_COLLISIONS, align 4
  %39 = getelementptr inbounds %struct.xl_stats, %struct.xl_stats* %4, i32 0, i32 2
  %40 = load i64, i64* %39, align 8
  %41 = getelementptr inbounds %struct.xl_stats, %struct.xl_stats* %4, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = add nsw i64 %40, %42
  %44 = getelementptr inbounds %struct.xl_stats, %struct.xl_stats* %4, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = add nsw i64 %43, %45
  %47 = call i32 @if_inc_counter(%struct.ifnet* %37, i32 %38, i64 %46)
  %48 = call i32 @XL_SEL_WIN(i32 4)
  %49 = load %struct.xl_softc*, %struct.xl_softc** %2, align 8
  %50 = load i64, i64* @XL_W4_BADSSD, align 8
  %51 = call i32 @CSR_READ_1(%struct.xl_softc* %49, i64 %50)
  %52 = call i32 @XL_SEL_WIN(i32 7)
  ret void
}

declare dso_local i32 @XL_LOCK_ASSERT(%struct.xl_softc*) #1

declare dso_local i32 @bzero(i8*, i32) #1

declare dso_local i32 @XL_SEL_WIN(i32) #1

declare dso_local i32 @CSR_READ_1(%struct.xl_softc*, i64) #1

declare dso_local i32 @if_inc_counter(%struct.ifnet*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
