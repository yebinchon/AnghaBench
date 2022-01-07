; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sbni/extr_if_sbni.c_sbni_timeout.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sbni/extr_if_sbni.c_sbni_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sbni_softc = type { i32, i32, i64, %struct.TYPE_2__, i64 }
%struct.TYPE_2__ = type { i32 }

@CSR0 = common dso_local global i32 0, align 4
@RC_CHK = common dso_local global i32 0, align 4
@RC_RDY = common dso_local global i32 0, align 4
@BU_EMP = common dso_local global i32 0, align 4
@CSR1 = common dso_local global i32 0, align 4
@PR_RES = common dso_local global i32 0, align 4
@hz = common dso_local global i32 0, align 4
@SBNI_HZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @sbni_timeout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sbni_timeout(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.sbni_softc*, align 8
  %4 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = bitcast i8* %5 to %struct.sbni_softc*
  store %struct.sbni_softc* %6, %struct.sbni_softc** %3, align 8
  %7 = load %struct.sbni_softc*, %struct.sbni_softc** %3, align 8
  %8 = call i32 @SBNI_ASSERT_LOCKED(%struct.sbni_softc* %7)
  %9 = load %struct.sbni_softc*, %struct.sbni_softc** %3, align 8
  %10 = load i32, i32* @CSR0, align 4
  %11 = call i32 @sbni_inb(%struct.sbni_softc* %9, i32 %10)
  store i32 %11, i32* %4, align 4
  %12 = load i32, i32* %4, align 4
  %13 = load i32, i32* @RC_CHK, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %60

16:                                               ; preds = %1
  %17 = load %struct.sbni_softc*, %struct.sbni_softc** %3, align 8
  %18 = getelementptr inbounds %struct.sbni_softc, %struct.sbni_softc* %17, i32 0, i32 4
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %34

21:                                               ; preds = %16
  %22 = load i32, i32* %4, align 4
  %23 = load i32, i32* @RC_RDY, align 4
  %24 = load i32, i32* @BU_EMP, align 4
  %25 = or i32 %23, %24
  %26 = and i32 %22, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %21
  %29 = load %struct.sbni_softc*, %struct.sbni_softc** %3, align 8
  %30 = getelementptr inbounds %struct.sbni_softc, %struct.sbni_softc* %29, i32 0, i32 4
  %31 = load i64, i64* %30, align 8
  %32 = add nsw i64 %31, -1
  store i64 %32, i64* %30, align 8
  br label %33

33:                                               ; preds = %28, %21
  br label %59

34:                                               ; preds = %16
  %35 = load %struct.sbni_softc*, %struct.sbni_softc** %3, align 8
  %36 = getelementptr inbounds %struct.sbni_softc, %struct.sbni_softc* %35, i32 0, i32 3
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %37, align 8
  %40 = load %struct.sbni_softc*, %struct.sbni_softc** %3, align 8
  %41 = getelementptr inbounds %struct.sbni_softc, %struct.sbni_softc* %40, i32 0, i32 2
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %34
  %45 = load %struct.sbni_softc*, %struct.sbni_softc** %3, align 8
  %46 = call i32 @timeout_change_level(%struct.sbni_softc* %45)
  br label %47

47:                                               ; preds = %44, %34
  %48 = load %struct.sbni_softc*, %struct.sbni_softc** %3, align 8
  %49 = load i32, i32* @CSR1, align 4
  %50 = load %struct.sbni_softc*, %struct.sbni_softc** %3, align 8
  %51 = getelementptr inbounds %struct.sbni_softc, %struct.sbni_softc* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @PR_RES, align 4
  %54 = or i32 %52, %53
  %55 = call i32 @sbni_outb(%struct.sbni_softc* %48, i32 %49, i32 %54)
  %56 = load %struct.sbni_softc*, %struct.sbni_softc** %3, align 8
  %57 = load i32, i32* @CSR0, align 4
  %58 = call i32 @sbni_inb(%struct.sbni_softc* %56, i32 %57)
  store i32 %58, i32* %4, align 4
  br label %59

59:                                               ; preds = %47, %33
  br label %60

60:                                               ; preds = %59, %1
  %61 = load %struct.sbni_softc*, %struct.sbni_softc** %3, align 8
  %62 = load i32, i32* @CSR0, align 4
  %63 = load i32, i32* %4, align 4
  %64 = load i32, i32* @RC_CHK, align 4
  %65 = or i32 %63, %64
  %66 = call i32 @sbni_outb(%struct.sbni_softc* %61, i32 %62, i32 %65)
  %67 = load %struct.sbni_softc*, %struct.sbni_softc** %3, align 8
  %68 = getelementptr inbounds %struct.sbni_softc, %struct.sbni_softc* %67, i32 0, i32 0
  %69 = load i32, i32* @hz, align 4
  %70 = load i32, i32* @SBNI_HZ, align 4
  %71 = sdiv i32 %69, %70
  %72 = load %struct.sbni_softc*, %struct.sbni_softc** %3, align 8
  %73 = call i32 @callout_reset(i32* %68, i32 %71, void (i8*)* @sbni_timeout, %struct.sbni_softc* %72)
  ret void
}

declare dso_local i32 @SBNI_ASSERT_LOCKED(%struct.sbni_softc*) #1

declare dso_local i32 @sbni_inb(%struct.sbni_softc*, i32) #1

declare dso_local i32 @timeout_change_level(%struct.sbni_softc*) #1

declare dso_local i32 @sbni_outb(%struct.sbni_softc*, i32, i32) #1

declare dso_local i32 @callout_reset(i32*, i32, void (i8*)*, %struct.sbni_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
