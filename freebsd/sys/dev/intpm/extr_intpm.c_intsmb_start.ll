; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/intpm/extr_intpm.c_intsmb_start.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/intpm/extr_intpm.c_intsmb_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intsmb_softc = type { i32, i32 }

@PIIX4_SMBHSTCNT = common dso_local global i32 0, align 4
@PIIX4_SMBHSTCNT_START = common dso_local global i8 0, align 1
@cold = common dso_local global i32 0, align 4
@PIIX4_SMBHSTCNT_INTREN = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intsmb_softc*, i8, i32)* @intsmb_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @intsmb_start(%struct.intsmb_softc* %0, i8 zeroext %1, i32 %2) #0 {
  %4 = alloca %struct.intsmb_softc*, align 8
  %5 = alloca i8, align 1
  %6 = alloca i32, align 4
  %7 = alloca i8, align 1
  store %struct.intsmb_softc* %0, %struct.intsmb_softc** %4, align 8
  store i8 %1, i8* %5, align 1
  store i32 %2, i32* %6, align 4
  %8 = load %struct.intsmb_softc*, %struct.intsmb_softc** %4, align 8
  %9 = call i32 @INTSMB_LOCK_ASSERT(%struct.intsmb_softc* %8)
  %10 = load %struct.intsmb_softc*, %struct.intsmb_softc** %4, align 8
  %11 = getelementptr inbounds %struct.intsmb_softc, %struct.intsmb_softc* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @PIIX4_SMBHSTCNT, align 4
  %14 = call zeroext i8 @bus_read_1(i32 %12, i32 %13)
  store i8 %14, i8* %7, align 1
  %15 = load i8, i8* %7, align 1
  %16 = zext i8 %15 to i32
  %17 = and i32 %16, 224
  %18 = trunc i32 %17 to i8
  store i8 %18, i8* %7, align 1
  %19 = load i8, i8* %5, align 1
  %20 = zext i8 %19 to i32
  %21 = load i8, i8* %7, align 1
  %22 = zext i8 %21 to i32
  %23 = or i32 %22, %20
  %24 = trunc i32 %23 to i8
  store i8 %24, i8* %7, align 1
  %25 = load i8, i8* @PIIX4_SMBHSTCNT_START, align 1
  %26 = zext i8 %25 to i32
  %27 = load i8, i8* %7, align 1
  %28 = zext i8 %27 to i32
  %29 = or i32 %28, %26
  %30 = trunc i32 %29 to i8
  store i8 %30, i8* %7, align 1
  %31 = load %struct.intsmb_softc*, %struct.intsmb_softc** %4, align 8
  %32 = getelementptr inbounds %struct.intsmb_softc, %struct.intsmb_softc* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %48, label %35

35:                                               ; preds = %3
  %36 = load i32, i32* @cold, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %48, label %38

38:                                               ; preds = %35
  %39 = load i32, i32* %6, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %48, label %41

41:                                               ; preds = %38
  %42 = load i8, i8* @PIIX4_SMBHSTCNT_INTREN, align 1
  %43 = zext i8 %42 to i32
  %44 = load i8, i8* %7, align 1
  %45 = zext i8 %44 to i32
  %46 = or i32 %45, %43
  %47 = trunc i32 %46 to i8
  store i8 %47, i8* %7, align 1
  br label %48

48:                                               ; preds = %41, %38, %35, %3
  %49 = load %struct.intsmb_softc*, %struct.intsmb_softc** %4, align 8
  %50 = getelementptr inbounds %struct.intsmb_softc, %struct.intsmb_softc* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @PIIX4_SMBHSTCNT, align 4
  %53 = load i8, i8* %7, align 1
  %54 = call i32 @bus_write_1(i32 %51, i32 %52, i8 zeroext %53)
  ret void
}

declare dso_local i32 @INTSMB_LOCK_ASSERT(%struct.intsmb_softc*) #1

declare dso_local zeroext i8 @bus_read_1(i32, i32) #1

declare dso_local i32 @bus_write_1(i32, i32, i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
