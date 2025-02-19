; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/amdsmb/extr_amdsmb.c_amdsmb_ec_write.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/amdsmb/extr_amdsmb.c_amdsmb_ec_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdsmb_softc = type { i32 }

@EC_CMD = common dso_local global i32 0, align 4
@EC_CMD_WR = common dso_local global i32 0, align 4
@EC_DATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.amdsmb_softc*, i32, i32)* @amdsmb_ec_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @amdsmb_ec_write(%struct.amdsmb_softc* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.amdsmb_softc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.amdsmb_softc* %0, %struct.amdsmb_softc** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %8 = load %struct.amdsmb_softc*, %struct.amdsmb_softc** %5, align 8
  %9 = call i32 @AMDSMB_LOCK_ASSERT(%struct.amdsmb_softc* %8)
  %10 = load %struct.amdsmb_softc*, %struct.amdsmb_softc** %5, align 8
  %11 = call i64 @amdsmb_ec_wait_write(%struct.amdsmb_softc* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %3
  store i32 1, i32* %4, align 4
  br label %37

14:                                               ; preds = %3
  %15 = load %struct.amdsmb_softc*, %struct.amdsmb_softc** %5, align 8
  %16 = load i32, i32* @EC_CMD, align 4
  %17 = load i32, i32* @EC_CMD_WR, align 4
  %18 = call i32 @AMDSMB_ECOUTB(%struct.amdsmb_softc* %15, i32 %16, i32 %17)
  %19 = load %struct.amdsmb_softc*, %struct.amdsmb_softc** %5, align 8
  %20 = call i64 @amdsmb_ec_wait_write(%struct.amdsmb_softc* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %14
  store i32 1, i32* %4, align 4
  br label %37

23:                                               ; preds = %14
  %24 = load %struct.amdsmb_softc*, %struct.amdsmb_softc** %5, align 8
  %25 = load i32, i32* @EC_DATA, align 4
  %26 = load i32, i32* %6, align 4
  %27 = call i32 @AMDSMB_ECOUTB(%struct.amdsmb_softc* %24, i32 %25, i32 %26)
  %28 = load %struct.amdsmb_softc*, %struct.amdsmb_softc** %5, align 8
  %29 = call i64 @amdsmb_ec_wait_write(%struct.amdsmb_softc* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %23
  store i32 1, i32* %4, align 4
  br label %37

32:                                               ; preds = %23
  %33 = load %struct.amdsmb_softc*, %struct.amdsmb_softc** %5, align 8
  %34 = load i32, i32* @EC_DATA, align 4
  %35 = load i32, i32* %7, align 4
  %36 = call i32 @AMDSMB_ECOUTB(%struct.amdsmb_softc* %33, i32 %34, i32 %35)
  store i32 0, i32* %4, align 4
  br label %37

37:                                               ; preds = %32, %31, %22, %13
  %38 = load i32, i32* %4, align 4
  ret i32 %38
}

declare dso_local i32 @AMDSMB_LOCK_ASSERT(%struct.amdsmb_softc*) #1

declare dso_local i64 @amdsmb_ec_wait_write(%struct.amdsmb_softc*) #1

declare dso_local i32 @AMDSMB_ECOUTB(%struct.amdsmb_softc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
