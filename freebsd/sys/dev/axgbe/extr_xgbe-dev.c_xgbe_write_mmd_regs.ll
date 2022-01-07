; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/axgbe/extr_xgbe-dev.c_xgbe_write_mmd_regs.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/axgbe/extr_xgbe-dev.c_xgbe_write_mmd_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xgbe_prv_data = type { i32, i32 }

@MII_ADDR_C45 = common dso_local global i32 0, align 4
@PCS_MMD_SELECT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xgbe_prv_data*, i32, i32, i32)* @xgbe_write_mmd_regs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xgbe_write_mmd_regs(%struct.xgbe_prv_data* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.xgbe_prv_data*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store %struct.xgbe_prv_data* %0, %struct.xgbe_prv_data** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = load i32, i32* %7, align 4
  %12 = load i32, i32* @MII_ADDR_C45, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %4
  %16 = load i32, i32* %7, align 4
  %17 = load i32, i32* @MII_ADDR_C45, align 4
  %18 = xor i32 %17, -1
  %19 = and i32 %16, %18
  store i32 %19, i32* %9, align 4
  br label %28

20:                                               ; preds = %4
  %21 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %5, align 8
  %22 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = shl i32 %23, 16
  %25 = load i32, i32* %7, align 4
  %26 = and i32 %25, 65535
  %27 = or i32 %24, %26
  store i32 %27, i32* %9, align 4
  br label %28

28:                                               ; preds = %20, %15
  %29 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %5, align 8
  %30 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %29, i32 0, i32 1
  %31 = load i64, i64* %10, align 8
  %32 = call i32 @spin_lock_irqsave(i32* %30, i64 %31)
  %33 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %5, align 8
  %34 = load i32, i32* @PCS_MMD_SELECT, align 4
  %35 = shl i32 %34, 2
  %36 = load i32, i32* %9, align 4
  %37 = lshr i32 %36, 8
  %38 = call i32 @XPCS_IOWRITE(%struct.xgbe_prv_data* %33, i32 %35, i32 %37)
  %39 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %5, align 8
  %40 = load i32, i32* %9, align 4
  %41 = and i32 %40, 255
  %42 = shl i32 %41, 2
  %43 = load i32, i32* %8, align 4
  %44 = call i32 @XPCS_IOWRITE(%struct.xgbe_prv_data* %39, i32 %42, i32 %43)
  %45 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %5, align 8
  %46 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %45, i32 0, i32 1
  %47 = load i64, i64* %10, align 8
  %48 = call i32 @spin_unlock_irqrestore(i32* %46, i64 %47)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @XPCS_IOWRITE(%struct.xgbe_prv_data*, i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
