; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/smbus/extr_smbconf.c_smbus_intr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/smbus/extr_smbconf.c_smbus_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smbus_softc = type { i32, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @smbus_intr(i32 %0, i32 %1, i8 signext %2, i8 signext %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8, align 1
  %9 = alloca i8, align 1
  %10 = alloca i32, align 4
  %11 = alloca %struct.smbus_softc*, align 8
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i8 %2, i8* %8, align 1
  store i8 %3, i8* %9, align 1
  store i32 %4, i32* %10, align 4
  %12 = load i32, i32* %6, align 4
  %13 = call %struct.smbus_softc* @device_get_softc(i32 %12)
  store %struct.smbus_softc* %13, %struct.smbus_softc** %11, align 8
  %14 = load %struct.smbus_softc*, %struct.smbus_softc** %11, align 8
  %15 = getelementptr inbounds %struct.smbus_softc, %struct.smbus_softc* %14, i32 0, i32 0
  %16 = call i32 @mtx_lock(i32* %15)
  %17 = load %struct.smbus_softc*, %struct.smbus_softc** %11, align 8
  %18 = getelementptr inbounds %struct.smbus_softc, %struct.smbus_softc* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %30

21:                                               ; preds = %5
  %22 = load %struct.smbus_softc*, %struct.smbus_softc** %11, align 8
  %23 = getelementptr inbounds %struct.smbus_softc, %struct.smbus_softc* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = load i32, i32* %7, align 4
  %26 = load i8, i8* %8, align 1
  %27 = load i8, i8* %9, align 1
  %28 = load i32, i32* %10, align 4
  %29 = call i32 @SMBUS_INTR(i64 %24, i32 %25, i8 signext %26, i8 signext %27, i32 %28)
  br label %30

30:                                               ; preds = %21, %5
  %31 = load %struct.smbus_softc*, %struct.smbus_softc** %11, align 8
  %32 = getelementptr inbounds %struct.smbus_softc, %struct.smbus_softc* %31, i32 0, i32 0
  %33 = call i32 @mtx_unlock(i32* %32)
  ret void
}

declare dso_local %struct.smbus_softc* @device_get_softc(i32) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @SMBUS_INTR(i64, i32, i8 signext, i8 signext, i32) #1

declare dso_local i32 @mtx_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
