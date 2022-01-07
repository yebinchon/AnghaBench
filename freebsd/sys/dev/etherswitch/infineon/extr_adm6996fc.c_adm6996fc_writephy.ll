; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/etherswitch/infineon/extr_adm6996fc.c_adm6996fc_writephy.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/etherswitch/infineon/extr_adm6996fc.c_adm6996fc_writephy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adm6996fc_softc = type { i32 }

@MA_NOTOWNED = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@ADM6996FC_PHY_C0 = common dso_local global i64 0, align 8
@ADM6996FC_PHY_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32)* @adm6996fc_writephy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adm6996fc_writephy(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.adm6996fc_softc*, align 8
  %11 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %12 = load i32, i32* %6, align 4
  %13 = call %struct.adm6996fc_softc* @device_get_softc(i32 %12)
  store %struct.adm6996fc_softc* %13, %struct.adm6996fc_softc** %10, align 8
  %14 = load %struct.adm6996fc_softc*, %struct.adm6996fc_softc** %10, align 8
  %15 = load i32, i32* @MA_NOTOWNED, align 4
  %16 = call i32 @ADM6996FC_LOCK_ASSERT(%struct.adm6996fc_softc* %14, i32 %15)
  %17 = load i32, i32* %7, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %4
  %20 = load i32, i32* %7, align 4
  %21 = icmp sge i32 %20, 32
  br i1 %21, label %22, label %24

22:                                               ; preds = %19, %4
  %23 = load i32, i32* @ENXIO, align 4
  store i32 %23, i32* %5, align 4
  br label %51

24:                                               ; preds = %19
  %25 = load i32, i32* %8, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %30, label %27

27:                                               ; preds = %24
  %28 = load i32, i32* %8, align 4
  %29 = icmp sge i32 %28, 32
  br i1 %29, label %30, label %32

30:                                               ; preds = %27, %24
  %31 = load i32, i32* @ENXIO, align 4
  store i32 %31, i32* %5, align 4
  br label %51

32:                                               ; preds = %27
  %33 = load %struct.adm6996fc_softc*, %struct.adm6996fc_softc** %10, align 8
  %34 = call i32 @ADM6996FC_LOCK(%struct.adm6996fc_softc* %33)
  %35 = load i32, i32* %6, align 4
  %36 = call i32 @device_get_parent(i32 %35)
  %37 = load i64, i64* @ADM6996FC_PHY_C0, align 8
  %38 = load i32, i32* @ADM6996FC_PHY_SIZE, align 4
  %39 = load i32, i32* %7, align 4
  %40 = mul nsw i32 %38, %39
  %41 = sext i32 %40 to i64
  %42 = add nsw i64 %37, %41
  %43 = load i32, i32* %8, align 4
  %44 = sext i32 %43 to i64
  %45 = add nsw i64 %42, %44
  %46 = load i32, i32* %9, align 4
  %47 = call i32 @ADM6996FC_WRITEREG(i32 %36, i64 %45, i32 %46)
  store i32 %47, i32* %11, align 4
  %48 = load %struct.adm6996fc_softc*, %struct.adm6996fc_softc** %10, align 8
  %49 = call i32 @ADM6996FC_UNLOCK(%struct.adm6996fc_softc* %48)
  %50 = load i32, i32* %11, align 4
  store i32 %50, i32* %5, align 4
  br label %51

51:                                               ; preds = %32, %30, %22
  %52 = load i32, i32* %5, align 4
  ret i32 %52
}

declare dso_local %struct.adm6996fc_softc* @device_get_softc(i32) #1

declare dso_local i32 @ADM6996FC_LOCK_ASSERT(%struct.adm6996fc_softc*, i32) #1

declare dso_local i32 @ADM6996FC_LOCK(%struct.adm6996fc_softc*) #1

declare dso_local i32 @ADM6996FC_WRITEREG(i32, i64, i32) #1

declare dso_local i32 @device_get_parent(i32) #1

declare dso_local i32 @ADM6996FC_UNLOCK(%struct.adm6996fc_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
