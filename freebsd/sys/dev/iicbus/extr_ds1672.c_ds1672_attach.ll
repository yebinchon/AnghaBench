; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/iicbus/extr_ds1672.c_ds1672_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/iicbus/extr_ds1672.c_ds1672_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ds1672_softc = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @ds1672_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ds1672_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.ds1672_softc*, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = call %struct.ds1672_softc* @device_get_softc(i32 %6)
  store %struct.ds1672_softc* %7, %struct.ds1672_softc** %4, align 8
  %8 = load i32, i32* %3, align 4
  %9 = load %struct.ds1672_softc*, %struct.ds1672_softc** %4, align 8
  %10 = getelementptr inbounds %struct.ds1672_softc, %struct.ds1672_softc* %9, i32 0, i32 0
  store i32 %8, i32* %10, align 4
  %11 = load i32, i32* %3, align 4
  %12 = call i32 @ds1672_init(i32 %11)
  store i32 %12, i32* %5, align 4
  %13 = load i32, i32* %5, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %1
  %16 = load i32, i32* %5, align 4
  store i32 %16, i32* %2, align 4
  br label %20

17:                                               ; preds = %1
  %18 = load i32, i32* %3, align 4
  %19 = call i32 @clock_register(i32 %18, i32 1000)
  store i32 0, i32* %2, align 4
  br label %20

20:                                               ; preds = %17, %15
  %21 = load i32, i32* %2, align 4
  ret i32 %21
}

declare dso_local %struct.ds1672_softc* @device_get_softc(i32) #1

declare dso_local i32 @ds1672_init(i32) #1

declare dso_local i32 @clock_register(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
