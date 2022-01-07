; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/etherswitch/arswitch/extr_arswitch_reg.c_arswitch_reg_write32.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/etherswitch/arswitch/extr_arswitch_reg.c_arswitch_reg_write32.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.arswitch_softc = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32)* @arswitch_reg_write32 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @arswitch_reg_write32(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.arswitch_softc*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %13 = load i32, i32* %5, align 4
  %14 = call %struct.arswitch_softc* @device_get_softc(i32 %13)
  store %struct.arswitch_softc* %14, %struct.arswitch_softc** %9, align 8
  %15 = load i32, i32* %8, align 4
  %16 = and i32 %15, 65535
  store i32 %16, i32* %11, align 4
  %17 = load i32, i32* %8, align 4
  %18 = ashr i32 %17, 16
  store i32 %18, i32* %12, align 4
  %19 = load %struct.arswitch_softc*, %struct.arswitch_softc** %9, align 8
  %20 = getelementptr inbounds %struct.arswitch_softc, %struct.arswitch_softc* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %39

23:                                               ; preds = %4
  %24 = load i32, i32* %5, align 4
  %25 = call i32 @device_get_parent(i32 %24)
  %26 = load i32, i32* %6, align 4
  %27 = load i32, i32* %7, align 4
  %28 = load i32, i32* %11, align 4
  %29 = call i32 @MDIO_WRITEREG(i32 %25, i32 %26, i32 %27, i32 %28)
  store i32 %29, i32* %10, align 4
  %30 = load i32, i32* %5, align 4
  %31 = call i32 @device_get_parent(i32 %30)
  %32 = load i32, i32* %6, align 4
  %33 = load i32, i32* %7, align 4
  %34 = add nsw i32 %33, 1
  %35 = load i32, i32* %12, align 4
  %36 = call i32 @MDIO_WRITEREG(i32 %31, i32 %32, i32 %34, i32 %35)
  %37 = load i32, i32* %10, align 4
  %38 = or i32 %37, %36
  store i32 %38, i32* %10, align 4
  br label %55

39:                                               ; preds = %4
  %40 = load i32, i32* %5, align 4
  %41 = call i32 @device_get_parent(i32 %40)
  %42 = load i32, i32* %6, align 4
  %43 = load i32, i32* %7, align 4
  %44 = add nsw i32 %43, 1
  %45 = load i32, i32* %12, align 4
  %46 = call i32 @MDIO_WRITEREG(i32 %41, i32 %42, i32 %44, i32 %45)
  store i32 %46, i32* %10, align 4
  %47 = load i32, i32* %5, align 4
  %48 = call i32 @device_get_parent(i32 %47)
  %49 = load i32, i32* %6, align 4
  %50 = load i32, i32* %7, align 4
  %51 = load i32, i32* %11, align 4
  %52 = call i32 @MDIO_WRITEREG(i32 %48, i32 %49, i32 %50, i32 %51)
  %53 = load i32, i32* %10, align 4
  %54 = or i32 %53, %52
  store i32 %54, i32* %10, align 4
  br label %55

55:                                               ; preds = %39, %23
  %56 = load i32, i32* %10, align 4
  ret i32 %56
}

declare dso_local %struct.arswitch_softc* @device_get_softc(i32) #1

declare dso_local i32 @MDIO_WRITEREG(i32, i32, i32, i32) #1

declare dso_local i32 @device_get_parent(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
