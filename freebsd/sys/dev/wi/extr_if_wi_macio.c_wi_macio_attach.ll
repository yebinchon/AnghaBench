; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/wi/extr_if_wi_macio.c_wi_macio_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/wi/extr_if_wi_macio.c_wi_macio_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wi_softc = type { i64, i64 }

@WI_INT_EN = common dso_local global i32 0, align 4
@WI_EVENT_ACK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @wi_macio_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wi_macio_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.wi_softc*, align 8
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* %2, align 4
  %6 = call %struct.wi_softc* @device_get_softc(i32 %5)
  store %struct.wi_softc* %6, %struct.wi_softc** %3, align 8
  %7 = load %struct.wi_softc*, %struct.wi_softc** %3, align 8
  %8 = getelementptr inbounds %struct.wi_softc, %struct.wi_softc* %7, i32 0, i32 1
  store i64 0, i64* %8, align 8
  %9 = load %struct.wi_softc*, %struct.wi_softc** %3, align 8
  %10 = getelementptr inbounds %struct.wi_softc, %struct.wi_softc* %9, i32 0, i32 0
  store i64 0, i64* %10, align 8
  %11 = load i32, i32* %2, align 4
  %12 = call i32 @wi_alloc(i32 %11, i32 0)
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* %4, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %33

15:                                               ; preds = %1
  %16 = load i32, i32* %2, align 4
  %17 = call i32 @device_get_parent(i32 %16)
  %18 = call i32 @macio_enable_wireless(i32 %17, i32 1)
  %19 = load %struct.wi_softc*, %struct.wi_softc** %3, align 8
  %20 = load i32, i32* @WI_INT_EN, align 4
  %21 = call i32 @CSR_WRITE_2(%struct.wi_softc* %19, i32 %20, i32 0)
  %22 = load %struct.wi_softc*, %struct.wi_softc** %3, align 8
  %23 = load i32, i32* @WI_EVENT_ACK, align 4
  %24 = call i32 @CSR_WRITE_2(%struct.wi_softc* %22, i32 %23, i32 65535)
  %25 = load i32, i32* %2, align 4
  %26 = call i32 @wi_attach(i32 %25)
  store i32 %26, i32* %4, align 4
  %27 = load i32, i32* %4, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %15
  %30 = load i32, i32* %2, align 4
  %31 = call i32 @wi_free(i32 %30)
  br label %32

32:                                               ; preds = %29, %15
  br label %33

33:                                               ; preds = %32, %1
  %34 = load i32, i32* %4, align 4
  ret i32 %34
}

declare dso_local %struct.wi_softc* @device_get_softc(i32) #1

declare dso_local i32 @wi_alloc(i32, i32) #1

declare dso_local i32 @macio_enable_wireless(i32, i32) #1

declare dso_local i32 @device_get_parent(i32) #1

declare dso_local i32 @CSR_WRITE_2(%struct.wi_softc*, i32, i32) #1

declare dso_local i32 @wi_attach(i32) #1

declare dso_local i32 @wi_free(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
