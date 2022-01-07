; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/intpm/extr_intpm.c_intsmb_quick.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/intpm/extr_intpm.c_intsmb_quick.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intsmb_softc = type { i32 }

@LSB = common dso_local global i32 0, align 4
@SMB_EINVAL = common dso_local global i32 0, align 4
@PIIX4_SMBHSTADD = common dso_local global i32 0, align 4
@PIIX4_SMBHSTCNT_PROT_QUICK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32)* @intsmb_quick to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intsmb_quick(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.intsmb_softc*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load i32, i32* %5, align 4
  %12 = call %struct.intsmb_softc* @device_get_softc(i32 %11)
  store %struct.intsmb_softc* %12, %struct.intsmb_softc** %8, align 8
  %13 = load i32, i32* %6, align 4
  store i32 %13, i32* %10, align 4
  %14 = load i32, i32* %7, align 4
  switch i32 %14, label %24 [
    i32 128, label %15
    i32 129, label %20
  ]

15:                                               ; preds = %3
  %16 = load i32, i32* @LSB, align 4
  %17 = xor i32 %16, -1
  %18 = load i32, i32* %10, align 4
  %19 = and i32 %18, %17
  store i32 %19, i32* %10, align 4
  br label %26

20:                                               ; preds = %3
  %21 = load i32, i32* @LSB, align 4
  %22 = load i32, i32* %10, align 4
  %23 = or i32 %22, %21
  store i32 %23, i32* %10, align 4
  br label %26

24:                                               ; preds = %3
  %25 = load i32, i32* @SMB_EINVAL, align 4
  store i32 %25, i32* %4, align 4
  br label %52

26:                                               ; preds = %20, %15
  %27 = load %struct.intsmb_softc*, %struct.intsmb_softc** %8, align 8
  %28 = call i32 @INTSMB_LOCK(%struct.intsmb_softc* %27)
  %29 = load %struct.intsmb_softc*, %struct.intsmb_softc** %8, align 8
  %30 = call i32 @intsmb_free(%struct.intsmb_softc* %29)
  store i32 %30, i32* %9, align 4
  %31 = load i32, i32* %9, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %26
  %34 = load %struct.intsmb_softc*, %struct.intsmb_softc** %8, align 8
  %35 = call i32 @INTSMB_UNLOCK(%struct.intsmb_softc* %34)
  %36 = load i32, i32* %9, align 4
  store i32 %36, i32* %4, align 4
  br label %52

37:                                               ; preds = %26
  %38 = load %struct.intsmb_softc*, %struct.intsmb_softc** %8, align 8
  %39 = getelementptr inbounds %struct.intsmb_softc, %struct.intsmb_softc* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @PIIX4_SMBHSTADD, align 4
  %42 = load i32, i32* %10, align 4
  %43 = call i32 @bus_write_1(i32 %40, i32 %41, i32 %42)
  %44 = load %struct.intsmb_softc*, %struct.intsmb_softc** %8, align 8
  %45 = load i32, i32* @PIIX4_SMBHSTCNT_PROT_QUICK, align 4
  %46 = call i32 @intsmb_start(%struct.intsmb_softc* %44, i32 %45, i32 0)
  %47 = load %struct.intsmb_softc*, %struct.intsmb_softc** %8, align 8
  %48 = call i32 @intsmb_stop(%struct.intsmb_softc* %47)
  store i32 %48, i32* %9, align 4
  %49 = load %struct.intsmb_softc*, %struct.intsmb_softc** %8, align 8
  %50 = call i32 @INTSMB_UNLOCK(%struct.intsmb_softc* %49)
  %51 = load i32, i32* %9, align 4
  store i32 %51, i32* %4, align 4
  br label %52

52:                                               ; preds = %37, %33, %24
  %53 = load i32, i32* %4, align 4
  ret i32 %53
}

declare dso_local %struct.intsmb_softc* @device_get_softc(i32) #1

declare dso_local i32 @INTSMB_LOCK(%struct.intsmb_softc*) #1

declare dso_local i32 @intsmb_free(%struct.intsmb_softc*) #1

declare dso_local i32 @INTSMB_UNLOCK(%struct.intsmb_softc*) #1

declare dso_local i32 @bus_write_1(i32, i32, i32) #1

declare dso_local i32 @intsmb_start(%struct.intsmb_softc*, i32, i32) #1

declare dso_local i32 @intsmb_stop(%struct.intsmb_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
