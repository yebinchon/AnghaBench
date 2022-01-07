; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_if_em.c_igb_if_intr_enable.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_if_em.c_igb_if_intr_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i64, i32, i32, %struct.e1000_hw }
%struct.e1000_hw = type { i32 }

@IFLIB_INTR_MSIX = common dso_local global i64 0, align 8
@E1000_EIAC = common dso_local global i32 0, align 4
@E1000_EIAM = common dso_local global i32 0, align 4
@E1000_EIMS = common dso_local global i32 0, align 4
@E1000_IMS = common dso_local global i32 0, align 4
@E1000_IMS_LSC = common dso_local global i32 0, align 4
@IMS_ENABLE_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @igb_if_intr_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @igb_if_intr_enable(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.adapter*, align 8
  %4 = alloca %struct.e1000_hw*, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %6 = load i32, i32* %2, align 4
  %7 = call %struct.adapter* @iflib_get_softc(i32 %6)
  store %struct.adapter* %7, %struct.adapter** %3, align 8
  %8 = load %struct.adapter*, %struct.adapter** %3, align 8
  %9 = getelementptr inbounds %struct.adapter, %struct.adapter* %8, i32 0, i32 3
  store %struct.e1000_hw* %9, %struct.e1000_hw** %4, align 8
  %10 = load %struct.adapter*, %struct.adapter** %3, align 8
  %11 = getelementptr inbounds %struct.adapter, %struct.adapter* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @IFLIB_INTR_MSIX, align 8
  %14 = icmp eq i64 %12, %13
  %15 = zext i1 %14 to i32
  %16 = call i64 @__predict_true(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %42

18:                                               ; preds = %1
  %19 = load %struct.adapter*, %struct.adapter** %3, align 8
  %20 = getelementptr inbounds %struct.adapter, %struct.adapter* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.adapter*, %struct.adapter** %3, align 8
  %23 = getelementptr inbounds %struct.adapter, %struct.adapter* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = or i32 %21, %24
  store i32 %25, i32* %5, align 4
  %26 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %27 = load i32, i32* @E1000_EIAC, align 4
  %28 = load i32, i32* %5, align 4
  %29 = call i32 @E1000_WRITE_REG(%struct.e1000_hw* %26, i32 %27, i32 %28)
  %30 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %31 = load i32, i32* @E1000_EIAM, align 4
  %32 = load i32, i32* %5, align 4
  %33 = call i32 @E1000_WRITE_REG(%struct.e1000_hw* %30, i32 %31, i32 %32)
  %34 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %35 = load i32, i32* @E1000_EIMS, align 4
  %36 = load i32, i32* %5, align 4
  %37 = call i32 @E1000_WRITE_REG(%struct.e1000_hw* %34, i32 %35, i32 %36)
  %38 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %39 = load i32, i32* @E1000_IMS, align 4
  %40 = load i32, i32* @E1000_IMS_LSC, align 4
  %41 = call i32 @E1000_WRITE_REG(%struct.e1000_hw* %38, i32 %39, i32 %40)
  br label %47

42:                                               ; preds = %1
  %43 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %44 = load i32, i32* @E1000_IMS, align 4
  %45 = load i32, i32* @IMS_ENABLE_MASK, align 4
  %46 = call i32 @E1000_WRITE_REG(%struct.e1000_hw* %43, i32 %44, i32 %45)
  br label %47

47:                                               ; preds = %42, %18
  %48 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %49 = call i32 @E1000_WRITE_FLUSH(%struct.e1000_hw* %48)
  ret void
}

declare dso_local %struct.adapter* @iflib_get_softc(i32) #1

declare dso_local i64 @__predict_true(i32) #1

declare dso_local i32 @E1000_WRITE_REG(%struct.e1000_hw*, i32, i32) #1

declare dso_local i32 @E1000_WRITE_FLUSH(%struct.e1000_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
