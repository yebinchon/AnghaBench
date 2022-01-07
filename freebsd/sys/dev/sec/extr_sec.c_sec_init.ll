; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sec/extr_sec.c_sec_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sec/extr_sec.c_sec_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sec_softc = type { i32 }

@SEC_CHANNELS = common dso_local global i32 0, align 4
@SEC_INT_ITO = common dso_local global i32 0, align 4
@SEC_IER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sec_softc*)* @sec_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sec_init(%struct.sec_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sec_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.sec_softc* %0, %struct.sec_softc** %3, align 8
  %7 = load %struct.sec_softc*, %struct.sec_softc** %3, align 8
  %8 = call i32 @sec_controller_reset(%struct.sec_softc* %7)
  store i32 %8, i32* %5, align 4
  %9 = load i32, i32* %5, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %1
  %12 = load i32, i32* %5, align 4
  store i32 %12, i32* %2, align 4
  br label %60

13:                                               ; preds = %1
  %14 = load %struct.sec_softc*, %struct.sec_softc** %3, align 8
  %15 = call i32 @sec_controller_reset(%struct.sec_softc* %14)
  store i32 %15, i32* %5, align 4
  %16 = load i32, i32* %5, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %13
  %19 = load i32, i32* %5, align 4
  store i32 %19, i32* %2, align 4
  br label %60

20:                                               ; preds = %13
  store i32 0, i32* %6, align 4
  br label %21

21:                                               ; preds = %34, %20
  %22 = load i32, i32* %6, align 4
  %23 = load i32, i32* @SEC_CHANNELS, align 4
  %24 = icmp slt i32 %22, %23
  br i1 %24, label %25, label %37

25:                                               ; preds = %21
  %26 = load %struct.sec_softc*, %struct.sec_softc** %3, align 8
  %27 = load i32, i32* %6, align 4
  %28 = call i32 @sec_channel_reset(%struct.sec_softc* %26, i32 %27, i32 1)
  store i32 %28, i32* %5, align 4
  %29 = load i32, i32* %5, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %25
  %32 = load i32, i32* %5, align 4
  store i32 %32, i32* %2, align 4
  br label %60

33:                                               ; preds = %25
  br label %34

34:                                               ; preds = %33
  %35 = load i32, i32* %6, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %6, align 4
  br label %21

37:                                               ; preds = %21
  %38 = load i32, i32* @SEC_INT_ITO, align 4
  store i32 %38, i32* %4, align 4
  store i32 0, i32* %6, align 4
  br label %39

39:                                               ; preds = %51, %37
  %40 = load i32, i32* %6, align 4
  %41 = load i32, i32* @SEC_CHANNELS, align 4
  %42 = icmp slt i32 %40, %41
  br i1 %42, label %43, label %54

43:                                               ; preds = %39
  %44 = load i32, i32* %6, align 4
  %45 = call i32 @SEC_INT_CH_DN(i32 %44)
  %46 = load i32, i32* %6, align 4
  %47 = call i32 @SEC_INT_CH_ERR(i32 %46)
  %48 = or i32 %45, %47
  %49 = load i32, i32* %4, align 4
  %50 = or i32 %49, %48
  store i32 %50, i32* %4, align 4
  br label %51

51:                                               ; preds = %43
  %52 = load i32, i32* %6, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %6, align 4
  br label %39

54:                                               ; preds = %39
  %55 = load %struct.sec_softc*, %struct.sec_softc** %3, align 8
  %56 = load i32, i32* @SEC_IER, align 4
  %57 = load i32, i32* %4, align 4
  %58 = call i32 @SEC_WRITE(%struct.sec_softc* %55, i32 %56, i32 %57)
  %59 = load i32, i32* %5, align 4
  store i32 %59, i32* %2, align 4
  br label %60

60:                                               ; preds = %54, %31, %18, %11
  %61 = load i32, i32* %2, align 4
  ret i32 %61
}

declare dso_local i32 @sec_controller_reset(%struct.sec_softc*) #1

declare dso_local i32 @sec_channel_reset(%struct.sec_softc*, i32, i32) #1

declare dso_local i32 @SEC_INT_CH_DN(i32) #1

declare dso_local i32 @SEC_INT_CH_ERR(i32) #1

declare dso_local i32 @SEC_WRITE(%struct.sec_softc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
