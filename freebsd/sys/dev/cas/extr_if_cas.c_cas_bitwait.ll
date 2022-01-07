; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cas/extr_if_cas.c_cas_bitwait.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cas/extr_if_cas.c_cas_bitwait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cas_softc = type { i32 }

@CAS_TRIES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cas_softc*, i32, i32, i32)* @cas_bitwait to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cas_bitwait(%struct.cas_softc* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.cas_softc*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.cas_softc* %0, %struct.cas_softc** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %12 = load i32, i32* @CAS_TRIES, align 4
  store i32 %12, i32* %10, align 4
  br label %13

13:                                               ; preds = %33, %4
  %14 = load i32, i32* %10, align 4
  %15 = add nsw i32 %14, -1
  store i32 %15, i32* %10, align 4
  %16 = icmp ne i32 %14, 0
  br i1 %16, label %17, label %35

17:                                               ; preds = %13
  %18 = load %struct.cas_softc*, %struct.cas_softc** %6, align 8
  %19 = load i32, i32* %7, align 4
  %20 = call i32 @CAS_READ_4(%struct.cas_softc* %18, i32 %19)
  store i32 %20, i32* %11, align 4
  %21 = load i32, i32* %11, align 4
  %22 = load i32, i32* %8, align 4
  %23 = and i32 %21, %22
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %32

25:                                               ; preds = %17
  %26 = load i32, i32* %11, align 4
  %27 = load i32, i32* %9, align 4
  %28 = and i32 %26, %27
  %29 = load i32, i32* %9, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %25
  store i32 1, i32* %5, align 4
  br label %36

32:                                               ; preds = %25, %17
  br label %33

33:                                               ; preds = %32
  %34 = call i32 @DELAY(i32 100)
  br label %13

35:                                               ; preds = %13
  store i32 0, i32* %5, align 4
  br label %36

36:                                               ; preds = %35, %31
  %37 = load i32, i32* %5, align 4
  ret i32 %37
}

declare dso_local i32 @CAS_READ_4(%struct.cas_softc*, i32) #1

declare dso_local i32 @DELAY(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
