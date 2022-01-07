; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_if_ix.c_ixgbe_if_crcstrip_set.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_if_ix.c_ixgbe_if_crcstrip_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { %struct.ixgbe_hw }
%struct.ixgbe_hw = type { i32 }

@IXGBE_HLREG0 = common dso_local global i32 0, align 4
@IXGBE_RDRXCTL = common dso_local global i32 0, align 4
@IXGBE_RDRXCTL_RSCFRSTSIZE = common dso_local global i32 0, align 4
@IXGBE_RDRXCTL_RSCACKC = common dso_local global i32 0, align 4
@IXGBE_HLREG0_RXCRCSTRP = common dso_local global i32 0, align 4
@IXGBE_RDRXCTL_CRCSTRIP = common dso_local global i32 0, align 4
@netmap_verbose = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32)* @ixgbe_if_crcstrip_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ixgbe_if_crcstrip_set(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.adapter*, align 8
  %8 = alloca %struct.ixgbe_hw*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %11 = load i32, i32* %4, align 4
  %12 = call %struct.adapter* @iflib_get_softc(i32 %11)
  store %struct.adapter* %12, %struct.adapter** %7, align 8
  %13 = load %struct.adapter*, %struct.adapter** %7, align 8
  %14 = getelementptr inbounds %struct.adapter, %struct.adapter* %13, i32 0, i32 0
  store %struct.ixgbe_hw* %14, %struct.ixgbe_hw** %8, align 8
  %15 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %8, align 8
  %16 = load i32, i32* @IXGBE_HLREG0, align 4
  %17 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %15, i32 %16)
  store i32 %17, i32* %9, align 4
  %18 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %8, align 8
  %19 = load i32, i32* @IXGBE_RDRXCTL, align 4
  %20 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %18, i32 %19)
  store i32 %20, i32* %10, align 4
  %21 = load i32, i32* @IXGBE_RDRXCTL_RSCFRSTSIZE, align 4
  %22 = xor i32 %21, -1
  %23 = load i32, i32* %10, align 4
  %24 = and i32 %23, %22
  store i32 %24, i32* %10, align 4
  %25 = load i32, i32* @IXGBE_RDRXCTL_RSCACKC, align 4
  %26 = load i32, i32* %10, align 4
  %27 = or i32 %26, %25
  store i32 %27, i32* %10, align 4
  %28 = load i32, i32* %5, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %42

30:                                               ; preds = %3
  %31 = load i32, i32* %6, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %42, label %33

33:                                               ; preds = %30
  %34 = load i32, i32* @IXGBE_HLREG0_RXCRCSTRP, align 4
  %35 = xor i32 %34, -1
  %36 = load i32, i32* %9, align 4
  %37 = and i32 %36, %35
  store i32 %37, i32* %9, align 4
  %38 = load i32, i32* @IXGBE_RDRXCTL_CRCSTRIP, align 4
  %39 = xor i32 %38, -1
  %40 = load i32, i32* %10, align 4
  %41 = and i32 %40, %39
  store i32 %41, i32* %10, align 4
  br label %49

42:                                               ; preds = %30, %3
  %43 = load i32, i32* @IXGBE_HLREG0_RXCRCSTRP, align 4
  %44 = load i32, i32* %9, align 4
  %45 = or i32 %44, %43
  store i32 %45, i32* %9, align 4
  %46 = load i32, i32* @IXGBE_RDRXCTL_CRCSTRIP, align 4
  %47 = load i32, i32* %10, align 4
  %48 = or i32 %47, %46
  store i32 %48, i32* %10, align 4
  br label %49

49:                                               ; preds = %42, %33
  %50 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %8, align 8
  %51 = load i32, i32* @IXGBE_HLREG0, align 4
  %52 = load i32, i32* %9, align 4
  %53 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %50, i32 %51, i32 %52)
  %54 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %8, align 8
  %55 = load i32, i32* @IXGBE_RDRXCTL, align 4
  %56 = load i32, i32* %10, align 4
  %57 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %54, i32 %55, i32 %56)
  ret void
}

declare dso_local %struct.adapter* @iflib_get_softc(i32) #1

declare dso_local i32 @IXGBE_READ_REG(%struct.ixgbe_hw*, i32) #1

declare dso_local i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
