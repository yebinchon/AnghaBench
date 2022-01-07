; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_ixgbe_common.c_ixgbe_get_orom_version.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_ixgbe_common.c_ixgbe_get_orom_version.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_hw = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 (%struct.ixgbe_hw.0*, i64, i32*)* }
%struct.ixgbe_hw.0 = type opaque
%struct.ixgbe_nvm_version = type { i32, i32, i32, i32 }

@FALSE = common dso_local global i32 0, align 4
@NVM_OROM_OFFSET = common dso_local global i64 0, align 8
@NVM_INVALID_PTR = common dso_local global i32 0, align 4
@NVM_OROM_BLK_HI = common dso_local global i64 0, align 8
@NVM_OROM_BLK_LOW = common dso_local global i64 0, align 8
@NVM_VER_INVALID = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@NVM_OROM_SHIFT = common dso_local global i32 0, align 4
@NVM_OROM_PATCH_MASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ixgbe_get_orom_version(%struct.ixgbe_hw* %0, %struct.ixgbe_nvm_version* %1) #0 {
  %3 = alloca %struct.ixgbe_hw*, align 8
  %4 = alloca %struct.ixgbe_nvm_version*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.ixgbe_hw* %0, %struct.ixgbe_hw** %3, align 8
  store %struct.ixgbe_nvm_version* %1, %struct.ixgbe_nvm_version** %4, align 8
  %8 = load i32, i32* @FALSE, align 4
  %9 = load %struct.ixgbe_nvm_version*, %struct.ixgbe_nvm_version** %4, align 8
  %10 = getelementptr inbounds %struct.ixgbe_nvm_version, %struct.ixgbe_nvm_version* %9, i32 0, i32 3
  store i32 %8, i32* %10, align 4
  %11 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %12 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i32 (%struct.ixgbe_hw.0*, i64, i32*)*, i32 (%struct.ixgbe_hw.0*, i64, i32*)** %14, align 8
  %16 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %17 = bitcast %struct.ixgbe_hw* %16 to %struct.ixgbe_hw.0*
  %18 = load i64, i64* @NVM_OROM_OFFSET, align 8
  %19 = call i32 %15(%struct.ixgbe_hw.0* %17, i64 %18, i32* %5)
  %20 = load i32, i32* %5, align 4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %26, label %22

22:                                               ; preds = %2
  %23 = load i32, i32* %5, align 4
  %24 = load i32, i32* @NVM_INVALID_PTR, align 4
  %25 = icmp eq i32 %23, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %22, %2
  br label %88

27:                                               ; preds = %22
  %28 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %29 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i32 (%struct.ixgbe_hw.0*, i64, i32*)*, i32 (%struct.ixgbe_hw.0*, i64, i32*)** %31, align 8
  %33 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %34 = bitcast %struct.ixgbe_hw* %33 to %struct.ixgbe_hw.0*
  %35 = load i32, i32* %5, align 4
  %36 = sext i32 %35 to i64
  %37 = load i64, i64* @NVM_OROM_BLK_HI, align 8
  %38 = add nsw i64 %36, %37
  %39 = call i32 %32(%struct.ixgbe_hw.0* %34, i64 %38, i32* %6)
  %40 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %41 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  %44 = load i32 (%struct.ixgbe_hw.0*, i64, i32*)*, i32 (%struct.ixgbe_hw.0*, i64, i32*)** %43, align 8
  %45 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %46 = bitcast %struct.ixgbe_hw* %45 to %struct.ixgbe_hw.0*
  %47 = load i32, i32* %5, align 4
  %48 = sext i32 %47 to i64
  %49 = load i64, i64* @NVM_OROM_BLK_LOW, align 8
  %50 = add nsw i64 %48, %49
  %51 = call i32 %44(%struct.ixgbe_hw.0* %46, i64 %50, i32* %7)
  %52 = load i32, i32* %7, align 4
  %53 = load i32, i32* %6, align 4
  %54 = or i32 %52, %53
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %64, label %56

56:                                               ; preds = %27
  %57 = load i32, i32* %7, align 4
  %58 = load i32, i32* @NVM_VER_INVALID, align 4
  %59 = icmp eq i32 %57, %58
  br i1 %59, label %64, label %60

60:                                               ; preds = %56
  %61 = load i32, i32* %6, align 4
  %62 = load i32, i32* @NVM_VER_INVALID, align 4
  %63 = icmp eq i32 %61, %62
  br i1 %63, label %64, label %65

64:                                               ; preds = %60, %56, %27
  br label %88

65:                                               ; preds = %60
  %66 = load i32, i32* @TRUE, align 4
  %67 = load %struct.ixgbe_nvm_version*, %struct.ixgbe_nvm_version** %4, align 8
  %68 = getelementptr inbounds %struct.ixgbe_nvm_version, %struct.ixgbe_nvm_version* %67, i32 0, i32 3
  store i32 %66, i32* %68, align 4
  %69 = load i32, i32* %7, align 4
  %70 = load i32, i32* @NVM_OROM_SHIFT, align 4
  %71 = ashr i32 %69, %70
  %72 = load %struct.ixgbe_nvm_version*, %struct.ixgbe_nvm_version** %4, align 8
  %73 = getelementptr inbounds %struct.ixgbe_nvm_version, %struct.ixgbe_nvm_version* %72, i32 0, i32 0
  store i32 %71, i32* %73, align 4
  %74 = load i32, i32* %7, align 4
  %75 = load i32, i32* @NVM_OROM_SHIFT, align 4
  %76 = shl i32 %74, %75
  %77 = load i32, i32* %6, align 4
  %78 = load i32, i32* @NVM_OROM_SHIFT, align 4
  %79 = ashr i32 %77, %78
  %80 = or i32 %76, %79
  %81 = load %struct.ixgbe_nvm_version*, %struct.ixgbe_nvm_version** %4, align 8
  %82 = getelementptr inbounds %struct.ixgbe_nvm_version, %struct.ixgbe_nvm_version* %81, i32 0, i32 1
  store i32 %80, i32* %82, align 4
  %83 = load i32, i32* %6, align 4
  %84 = load i32, i32* @NVM_OROM_PATCH_MASK, align 4
  %85 = and i32 %83, %84
  %86 = load %struct.ixgbe_nvm_version*, %struct.ixgbe_nvm_version** %4, align 8
  %87 = getelementptr inbounds %struct.ixgbe_nvm_version, %struct.ixgbe_nvm_version* %86, i32 0, i32 2
  store i32 %85, i32* %87, align 4
  br label %88

88:                                               ; preds = %65, %64, %26
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
