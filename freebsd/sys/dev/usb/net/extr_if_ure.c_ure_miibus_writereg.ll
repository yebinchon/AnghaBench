; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/net/extr_if_ure.c_ure_miibus_writereg.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/net/extr_if_ure.c_ure_miibus_writereg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ure_softc = type { i32, i32 }

@URE_OCP_BASE_MII = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32)* @ure_miibus_writereg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ure_miibus_writereg(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.ure_softc*, align 8
  %11 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %12 = load i32, i32* %6, align 4
  %13 = call %struct.ure_softc* @device_get_softc(i32 %12)
  store %struct.ure_softc* %13, %struct.ure_softc** %10, align 8
  %14 = load %struct.ure_softc*, %struct.ure_softc** %10, align 8
  %15 = getelementptr inbounds %struct.ure_softc, %struct.ure_softc* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* %7, align 4
  %18 = icmp ne i32 %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %44

20:                                               ; preds = %4
  %21 = load %struct.ure_softc*, %struct.ure_softc** %10, align 8
  %22 = getelementptr inbounds %struct.ure_softc, %struct.ure_softc* %21, i32 0, i32 1
  %23 = call i32 @mtx_owned(i32* %22)
  store i32 %23, i32* %11, align 4
  %24 = load i32, i32* %11, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %20
  %27 = load %struct.ure_softc*, %struct.ure_softc** %10, align 8
  %28 = call i32 @URE_LOCK(%struct.ure_softc* %27)
  br label %29

29:                                               ; preds = %26, %20
  %30 = load %struct.ure_softc*, %struct.ure_softc** %10, align 8
  %31 = load i64, i64* @URE_OCP_BASE_MII, align 8
  %32 = load i32, i32* %8, align 4
  %33 = mul nsw i32 %32, 2
  %34 = sext i32 %33 to i64
  %35 = add nsw i64 %31, %34
  %36 = load i32, i32* %9, align 4
  %37 = call i32 @ure_ocp_reg_write(%struct.ure_softc* %30, i64 %35, i32 %36)
  %38 = load i32, i32* %11, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %43, label %40

40:                                               ; preds = %29
  %41 = load %struct.ure_softc*, %struct.ure_softc** %10, align 8
  %42 = call i32 @URE_UNLOCK(%struct.ure_softc* %41)
  br label %43

43:                                               ; preds = %40, %29
  store i32 0, i32* %5, align 4
  br label %44

44:                                               ; preds = %43, %19
  %45 = load i32, i32* %5, align 4
  ret i32 %45
}

declare dso_local %struct.ure_softc* @device_get_softc(i32) #1

declare dso_local i32 @mtx_owned(i32*) #1

declare dso_local i32 @URE_LOCK(%struct.ure_softc*) #1

declare dso_local i32 @ure_ocp_reg_write(%struct.ure_softc*, i64, i32) #1

declare dso_local i32 @URE_UNLOCK(%struct.ure_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
