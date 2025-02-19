; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/hme/extr_if_hme.c_hme_mac_bitflip.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/hme/extr_if_hme.c_hme_mac_bitflip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hme_softc = type { i32 }

@BUS_SPACE_BARRIER_READ = common dso_local global i32 0, align 4
@BUS_SPACE_BARRIER_WRITE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [53 x i8] c"timeout while writing to MAC configuration register\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hme_softc*, i32, i32, i32, i32)* @hme_mac_bitflip to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hme_mac_bitflip(%struct.hme_softc* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.hme_softc*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.hme_softc* %0, %struct.hme_softc** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %13 = load i32, i32* %10, align 4
  %14 = xor i32 %13, -1
  %15 = load i32, i32* %9, align 4
  %16 = and i32 %15, %14
  store i32 %16, i32* %9, align 4
  %17 = load i32, i32* %11, align 4
  %18 = load i32, i32* %9, align 4
  %19 = or i32 %18, %17
  store i32 %19, i32* %9, align 4
  %20 = load %struct.hme_softc*, %struct.hme_softc** %7, align 8
  %21 = load i32, i32* %8, align 4
  %22 = load i32, i32* %9, align 4
  %23 = call i32 @HME_MAC_WRITE_4(%struct.hme_softc* %20, i32 %21, i32 %22)
  %24 = load %struct.hme_softc*, %struct.hme_softc** %7, align 8
  %25 = load i32, i32* %8, align 4
  %26 = load i32, i32* @BUS_SPACE_BARRIER_READ, align 4
  %27 = load i32, i32* @BUS_SPACE_BARRIER_WRITE, align 4
  %28 = or i32 %26, %27
  %29 = call i32 @HME_MAC_BARRIER(%struct.hme_softc* %24, i32 %25, i32 4, i32 %28)
  %30 = load i32, i32* %10, align 4
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %5
  %33 = load i32, i32* %11, align 4
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %32
  store i32 1, i32* %6, align 4
  br label %66

36:                                               ; preds = %32, %5
  br label %37

37:                                               ; preds = %63, %36
  %38 = call i32 @DELAY(i32 100)
  %39 = load i32, i32* %12, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %12, align 4
  %41 = load %struct.hme_softc*, %struct.hme_softc** %7, align 8
  %42 = load i32, i32* %8, align 4
  %43 = call i32 @HME_MAC_READ_4(%struct.hme_softc* %41, i32 %42)
  store i32 %43, i32* %9, align 4
  %44 = load i32, i32* %12, align 4
  %45 = icmp sgt i32 %44, 40
  br i1 %45, label %46, label %51

46:                                               ; preds = %37
  %47 = load %struct.hme_softc*, %struct.hme_softc** %7, align 8
  %48 = getelementptr inbounds %struct.hme_softc, %struct.hme_softc* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @device_printf(i32 %49, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %6, align 4
  br label %66

51:                                               ; preds = %37
  br label %52

52:                                               ; preds = %51
  %53 = load i32, i32* %9, align 4
  %54 = load i32, i32* %10, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %63

57:                                               ; preds = %52
  %58 = load i32, i32* %9, align 4
  %59 = load i32, i32* %11, align 4
  %60 = and i32 %58, %59
  %61 = load i32, i32* %11, align 4
  %62 = icmp ne i32 %60, %61
  br label %63

63:                                               ; preds = %57, %52
  %64 = phi i1 [ false, %52 ], [ %62, %57 ]
  br i1 %64, label %37, label %65

65:                                               ; preds = %63
  store i32 1, i32* %6, align 4
  br label %66

66:                                               ; preds = %65, %46, %35
  %67 = load i32, i32* %6, align 4
  ret i32 %67
}

declare dso_local i32 @HME_MAC_WRITE_4(%struct.hme_softc*, i32, i32) #1

declare dso_local i32 @HME_MAC_BARRIER(%struct.hme_softc*, i32, i32, i32) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @HME_MAC_READ_4(%struct.hme_softc*, i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
