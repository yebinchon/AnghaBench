; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_ixgbe_common.c_ixgbe_get_oem_prod_version.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_ixgbe_common.c_ixgbe_get_oem_prod_version.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_hw = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 (%struct.ixgbe_hw.0*, i32, i32*)* }
%struct.ixgbe_hw.0 = type opaque
%struct.ixgbe_nvm_version = type { i32, i32, i32, i32 }

@FALSE = common dso_local global i32 0, align 4
@NVM_OEM_PROD_VER_PTR = common dso_local global i32 0, align 4
@NVM_INVALID_PTR = common dso_local global i32 0, align 4
@NVM_OEM_PROD_VER_CAP_OFF = common dso_local global i32 0, align 4
@NVM_OEM_PROD_VER_MOD_LEN = common dso_local global i32 0, align 4
@NVM_OEM_PROD_VER_CAP_MASK = common dso_local global i32 0, align 4
@NVM_OEM_PROD_VER_OFF_L = common dso_local global i32 0, align 4
@NVM_OEM_PROD_VER_OFF_H = common dso_local global i32 0, align 4
@NVM_VER_INVALID = common dso_local global i32 0, align 4
@NVM_VER_SHIFT = common dso_local global i32 0, align 4
@NVM_VER_MASK = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ixgbe_get_oem_prod_version(%struct.ixgbe_hw* %0, %struct.ixgbe_nvm_version* %1) #0 {
  %3 = alloca %struct.ixgbe_hw*, align 8
  %4 = alloca %struct.ixgbe_nvm_version*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.ixgbe_hw* %0, %struct.ixgbe_hw** %3, align 8
  store %struct.ixgbe_nvm_version* %1, %struct.ixgbe_nvm_version** %4, align 8
  %10 = load i32, i32* @FALSE, align 4
  %11 = load %struct.ixgbe_nvm_version*, %struct.ixgbe_nvm_version** %4, align 8
  %12 = getelementptr inbounds %struct.ixgbe_nvm_version, %struct.ixgbe_nvm_version* %11, i32 0, i32 3
  store i32 %10, i32* %12, align 4
  %13 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %14 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i32 (%struct.ixgbe_hw.0*, i32, i32*)*, i32 (%struct.ixgbe_hw.0*, i32, i32*)** %16, align 8
  %18 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %19 = bitcast %struct.ixgbe_hw* %18 to %struct.ixgbe_hw.0*
  %20 = load i32, i32* @NVM_OEM_PROD_VER_PTR, align 4
  %21 = call i32 %17(%struct.ixgbe_hw.0* %19, i32 %20, i32* %9)
  %22 = load i32, i32* %9, align 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %2
  %25 = load i32, i32* %9, align 4
  %26 = load i32, i32* @NVM_INVALID_PTR, align 4
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %24
  br label %112

29:                                               ; preds = %24, %2
  %30 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %31 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load i32 (%struct.ixgbe_hw.0*, i32, i32*)*, i32 (%struct.ixgbe_hw.0*, i32, i32*)** %33, align 8
  %35 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %36 = bitcast %struct.ixgbe_hw* %35 to %struct.ixgbe_hw.0*
  %37 = load i32, i32* %9, align 4
  %38 = call i32 %34(%struct.ixgbe_hw.0* %36, i32 %37, i32* %7)
  %39 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %40 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  %43 = load i32 (%struct.ixgbe_hw.0*, i32, i32*)*, i32 (%struct.ixgbe_hw.0*, i32, i32*)** %42, align 8
  %44 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %45 = bitcast %struct.ixgbe_hw* %44 to %struct.ixgbe_hw.0*
  %46 = load i32, i32* %9, align 4
  %47 = load i32, i32* @NVM_OEM_PROD_VER_CAP_OFF, align 4
  %48 = add nsw i32 %46, %47
  %49 = call i32 %43(%struct.ixgbe_hw.0* %45, i32 %48, i32* %8)
  %50 = load i32, i32* %7, align 4
  %51 = load i32, i32* @NVM_OEM_PROD_VER_MOD_LEN, align 4
  %52 = icmp ne i32 %50, %51
  br i1 %52, label %58, label %53

53:                                               ; preds = %29
  %54 = load i32, i32* %8, align 4
  %55 = load i32, i32* @NVM_OEM_PROD_VER_CAP_MASK, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %53, %29
  br label %112

59:                                               ; preds = %53
  %60 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %61 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 0
  %64 = load i32 (%struct.ixgbe_hw.0*, i32, i32*)*, i32 (%struct.ixgbe_hw.0*, i32, i32*)** %63, align 8
  %65 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %66 = bitcast %struct.ixgbe_hw* %65 to %struct.ixgbe_hw.0*
  %67 = load i32, i32* %9, align 4
  %68 = load i32, i32* @NVM_OEM_PROD_VER_OFF_L, align 4
  %69 = add nsw i32 %67, %68
  %70 = call i32 %64(%struct.ixgbe_hw.0* %66, i32 %69, i32* %6)
  %71 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %72 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 0
  %75 = load i32 (%struct.ixgbe_hw.0*, i32, i32*)*, i32 (%struct.ixgbe_hw.0*, i32, i32*)** %74, align 8
  %76 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %77 = bitcast %struct.ixgbe_hw* %76 to %struct.ixgbe_hw.0*
  %78 = load i32, i32* %9, align 4
  %79 = load i32, i32* @NVM_OEM_PROD_VER_OFF_H, align 4
  %80 = add nsw i32 %78, %79
  %81 = call i32 %75(%struct.ixgbe_hw.0* %77, i32 %80, i32* %5)
  %82 = load i32, i32* %5, align 4
  %83 = load i32, i32* %6, align 4
  %84 = or i32 %82, %83
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %94, label %86

86:                                               ; preds = %59
  %87 = load i32, i32* %5, align 4
  %88 = load i32, i32* @NVM_VER_INVALID, align 4
  %89 = icmp eq i32 %87, %88
  br i1 %89, label %94, label %90

90:                                               ; preds = %86
  %91 = load i32, i32* %6, align 4
  %92 = load i32, i32* @NVM_VER_INVALID, align 4
  %93 = icmp eq i32 %91, %92
  br i1 %93, label %94, label %95

94:                                               ; preds = %90, %86, %59
  br label %112

95:                                               ; preds = %90
  %96 = load i32, i32* %6, align 4
  %97 = load i32, i32* @NVM_VER_SHIFT, align 4
  %98 = ashr i32 %96, %97
  %99 = load %struct.ixgbe_nvm_version*, %struct.ixgbe_nvm_version** %4, align 8
  %100 = getelementptr inbounds %struct.ixgbe_nvm_version, %struct.ixgbe_nvm_version* %99, i32 0, i32 0
  store i32 %98, i32* %100, align 4
  %101 = load i32, i32* %6, align 4
  %102 = load i32, i32* @NVM_VER_MASK, align 4
  %103 = and i32 %101, %102
  %104 = load %struct.ixgbe_nvm_version*, %struct.ixgbe_nvm_version** %4, align 8
  %105 = getelementptr inbounds %struct.ixgbe_nvm_version, %struct.ixgbe_nvm_version* %104, i32 0, i32 1
  store i32 %103, i32* %105, align 4
  %106 = load i32, i32* %5, align 4
  %107 = load %struct.ixgbe_nvm_version*, %struct.ixgbe_nvm_version** %4, align 8
  %108 = getelementptr inbounds %struct.ixgbe_nvm_version, %struct.ixgbe_nvm_version* %107, i32 0, i32 2
  store i32 %106, i32* %108, align 4
  %109 = load i32, i32* @TRUE, align 4
  %110 = load %struct.ixgbe_nvm_version*, %struct.ixgbe_nvm_version** %4, align 8
  %111 = getelementptr inbounds %struct.ixgbe_nvm_version, %struct.ixgbe_nvm_version* %110, i32 0, i32 3
  store i32 %109, i32* %111, align 4
  br label %112

112:                                              ; preds = %95, %94, %58, %28
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
