; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mge/extr_if_mge.c_mge_set_ucast_address.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mge/extr_if_mge.c_mge_set_ucast_address.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mge_softc = type { i32 }

@MGE_UCAST_REG_NUMBER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mge_softc*, i32, i32)* @mge_set_ucast_address to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mge_set_ucast_address(%struct.mge_softc* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.mge_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.mge_softc* %0, %struct.mge_softc** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %11 = load i32, i32* %5, align 4
  %12 = and i32 %11, 15
  store i32 %12, i32* %5, align 4
  %13 = load i32, i32* %5, align 4
  %14 = load i32, i32* @MGE_UCAST_REG_NUMBER, align 4
  %15 = sdiv i32 %13, %14
  store i32 %15, i32* %7, align 4
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* @MGE_UCAST_REG_NUMBER, align 4
  %18 = srem i32 %16, %17
  %19 = mul nsw i32 %18, 8
  store i32 %19, i32* %8, align 4
  %20 = load i32, i32* %6, align 4
  %21 = shl i32 %20, 1
  %22 = or i32 1, %21
  %23 = load i32, i32* %8, align 4
  %24 = shl i32 %22, %23
  store i32 %24, i32* %9, align 4
  store i32 0, i32* %10, align 4
  br label %25

25:                                               ; preds = %45, %3
  %26 = load i32, i32* %10, align 4
  %27 = load i32, i32* @MGE_UCAST_REG_NUMBER, align 4
  %28 = icmp slt i32 %26, %27
  br i1 %28, label %29, label %48

29:                                               ; preds = %25
  %30 = load i32, i32* %10, align 4
  %31 = load i32, i32* %7, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %33, label %39

33:                                               ; preds = %29
  %34 = load %struct.mge_softc*, %struct.mge_softc** %4, align 8
  %35 = load i32, i32* %10, align 4
  %36 = call i32 @MGE_DA_FILTER_UCAST(i32 %35)
  %37 = load i32, i32* %9, align 4
  %38 = call i32 @MGE_WRITE(%struct.mge_softc* %34, i32 %36, i32 %37)
  br label %44

39:                                               ; preds = %29
  %40 = load %struct.mge_softc*, %struct.mge_softc** %4, align 8
  %41 = load i32, i32* %10, align 4
  %42 = call i32 @MGE_DA_FILTER_UCAST(i32 %41)
  %43 = call i32 @MGE_WRITE(%struct.mge_softc* %40, i32 %42, i32 0)
  br label %44

44:                                               ; preds = %39, %33
  br label %45

45:                                               ; preds = %44
  %46 = load i32, i32* %10, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %10, align 4
  br label %25

48:                                               ; preds = %25
  ret void
}

declare dso_local i32 @MGE_WRITE(%struct.mge_softc*, i32, i32) #1

declare dso_local i32 @MGE_DA_FILTER_UCAST(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
