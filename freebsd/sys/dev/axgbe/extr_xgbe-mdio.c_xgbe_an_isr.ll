; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/axgbe/extr_xgbe-mdio.c_xgbe_an_isr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/axgbe/extr_xgbe-mdio.c_xgbe_an_isr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xgbe_prv_data = type { i64 }

@MDIO_MMD_AN = common dso_local global i32 0, align 4
@MDIO_AN_INTMASK = common dso_local global i32 0, align 4
@MDIO_AN_INT = common dso_local global i32 0, align 4
@XGBE_AN_INT_MASK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @xgbe_an_isr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xgbe_an_isr(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.xgbe_prv_data*, align 8
  store i8* %0, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = bitcast i8* %4 to %struct.xgbe_prv_data*
  store %struct.xgbe_prv_data* %5, %struct.xgbe_prv_data** %3, align 8
  %6 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %7 = load i32, i32* @MDIO_MMD_AN, align 4
  %8 = load i32, i32* @MDIO_AN_INTMASK, align 4
  %9 = call i32 @XMDIO_WRITE(%struct.xgbe_prv_data* %6, i32 %7, i32 %8, i64 0)
  %10 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %11 = load i32, i32* @MDIO_MMD_AN, align 4
  %12 = load i32, i32* @MDIO_AN_INT, align 4
  %13 = call i64 @XMDIO_READ(%struct.xgbe_prv_data* %10, i32 %11, i32 %12)
  %14 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %15 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %14, i32 0, i32 0
  store i64 %13, i64* %15, align 8
  %16 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %17 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %31

20:                                               ; preds = %1
  %21 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %22 = load i32, i32* @MDIO_MMD_AN, align 4
  %23 = load i32, i32* @MDIO_AN_INT, align 4
  %24 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %25 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = xor i64 %26, -1
  %28 = call i32 @XMDIO_WRITE(%struct.xgbe_prv_data* %21, i32 %22, i32 %23, i64 %27)
  %29 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %30 = call i32 @xgbe_an_state_machine(%struct.xgbe_prv_data* %29)
  br label %37

31:                                               ; preds = %1
  %32 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %33 = load i32, i32* @MDIO_MMD_AN, align 4
  %34 = load i32, i32* @MDIO_AN_INTMASK, align 4
  %35 = load i64, i64* @XGBE_AN_INT_MASK, align 8
  %36 = call i32 @XMDIO_WRITE(%struct.xgbe_prv_data* %32, i32 %33, i32 %34, i64 %35)
  br label %37

37:                                               ; preds = %31, %20
  ret void
}

declare dso_local i32 @XMDIO_WRITE(%struct.xgbe_prv_data*, i32, i32, i64) #1

declare dso_local i64 @XMDIO_READ(%struct.xgbe_prv_data*, i32, i32) #1

declare dso_local i32 @xgbe_an_state_machine(%struct.xgbe_prv_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
