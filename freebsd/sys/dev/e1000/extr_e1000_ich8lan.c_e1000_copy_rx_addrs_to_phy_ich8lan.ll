; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_ich8lan.c_e1000_copy_rx_addrs_to_phy_ich8lan.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_ich8lan.c_e1000_copy_rx_addrs_to_phy_ich8lan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { %struct.TYPE_6__, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 (%struct.e1000_hw.0*)*, i32 (%struct.e1000_hw.1*, i32, i64)*, i64 (%struct.e1000_hw.2*)* }
%struct.e1000_hw.0 = type opaque
%struct.e1000_hw.1 = type opaque
%struct.e1000_hw.2 = type opaque
%struct.TYPE_4__ = type { i64 }

@.str = private unnamed_addr constant [35 x i8] c"e1000_copy_rx_addrs_to_phy_ich8lan\00", align 1
@E1000_RAH_AV = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @e1000_copy_rx_addrs_to_phy_ich8lan(%struct.e1000_hw* %0) #0 {
  %2 = alloca %struct.e1000_hw*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.e1000_hw* %0, %struct.e1000_hw** %2, align 8
  store i64 0, i64* %5, align 8
  %7 = call i32 @DEBUGFUNC(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %8 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %9 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 2
  %12 = load i64 (%struct.e1000_hw.2*)*, i64 (%struct.e1000_hw.2*)** %11, align 8
  %13 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %14 = bitcast %struct.e1000_hw* %13 to %struct.e1000_hw.2*
  %15 = call i64 %12(%struct.e1000_hw.2* %14)
  store i64 %15, i64* %6, align 8
  %16 = load i64, i64* %6, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %1
  br label %112

19:                                               ; preds = %1
  %20 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %21 = call i64 @e1000_enable_phy_wakeup_reg_access_bm(%struct.e1000_hw* %20, i64* %5)
  store i64 %21, i64* %6, align 8
  %22 = load i64, i64* %6, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %19
  br label %103

25:                                               ; preds = %19
  store i64 0, i64* %4, align 8
  br label %26

26:                                               ; preds = %97, %25
  %27 = load i64, i64* %4, align 8
  %28 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %29 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp slt i64 %27, %31
  br i1 %32, label %33, label %100

33:                                               ; preds = %26
  %34 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %35 = load i64, i64* %4, align 8
  %36 = call i32 @E1000_RAL(i64 %35)
  %37 = call i32 @E1000_READ_REG(%struct.e1000_hw* %34, i32 %36)
  store i32 %37, i32* %3, align 4
  %38 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %39 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 1
  %42 = load i32 (%struct.e1000_hw.1*, i32, i64)*, i32 (%struct.e1000_hw.1*, i32, i64)** %41, align 8
  %43 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %44 = bitcast %struct.e1000_hw* %43 to %struct.e1000_hw.1*
  %45 = load i64, i64* %4, align 8
  %46 = call i32 @BM_RAR_L(i64 %45)
  %47 = load i32, i32* %3, align 4
  %48 = and i32 %47, 65535
  %49 = sext i32 %48 to i64
  %50 = call i32 %42(%struct.e1000_hw.1* %44, i32 %46, i64 %49)
  %51 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %52 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 1
  %55 = load i32 (%struct.e1000_hw.1*, i32, i64)*, i32 (%struct.e1000_hw.1*, i32, i64)** %54, align 8
  %56 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %57 = bitcast %struct.e1000_hw* %56 to %struct.e1000_hw.1*
  %58 = load i64, i64* %4, align 8
  %59 = call i32 @BM_RAR_M(i64 %58)
  %60 = load i32, i32* %3, align 4
  %61 = ashr i32 %60, 16
  %62 = and i32 %61, 65535
  %63 = sext i32 %62 to i64
  %64 = call i32 %55(%struct.e1000_hw.1* %57, i32 %59, i64 %63)
  %65 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %66 = load i64, i64* %4, align 8
  %67 = call i32 @E1000_RAH(i64 %66)
  %68 = call i32 @E1000_READ_REG(%struct.e1000_hw* %65, i32 %67)
  store i32 %68, i32* %3, align 4
  %69 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %70 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 1
  %73 = load i32 (%struct.e1000_hw.1*, i32, i64)*, i32 (%struct.e1000_hw.1*, i32, i64)** %72, align 8
  %74 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %75 = bitcast %struct.e1000_hw* %74 to %struct.e1000_hw.1*
  %76 = load i64, i64* %4, align 8
  %77 = call i32 @BM_RAR_H(i64 %76)
  %78 = load i32, i32* %3, align 4
  %79 = and i32 %78, 65535
  %80 = sext i32 %79 to i64
  %81 = call i32 %73(%struct.e1000_hw.1* %75, i32 %77, i64 %80)
  %82 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %83 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i32 0, i32 1
  %86 = load i32 (%struct.e1000_hw.1*, i32, i64)*, i32 (%struct.e1000_hw.1*, i32, i64)** %85, align 8
  %87 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %88 = bitcast %struct.e1000_hw* %87 to %struct.e1000_hw.1*
  %89 = load i64, i64* %4, align 8
  %90 = call i32 @BM_RAR_CTRL(i64 %89)
  %91 = load i32, i32* %3, align 4
  %92 = load i32, i32* @E1000_RAH_AV, align 4
  %93 = and i32 %91, %92
  %94 = ashr i32 %93, 16
  %95 = sext i32 %94 to i64
  %96 = call i32 %86(%struct.e1000_hw.1* %88, i32 %90, i64 %95)
  br label %97

97:                                               ; preds = %33
  %98 = load i64, i64* %4, align 8
  %99 = add nsw i64 %98, 1
  store i64 %99, i64* %4, align 8
  br label %26

100:                                              ; preds = %26
  %101 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %102 = call i32 @e1000_disable_phy_wakeup_reg_access_bm(%struct.e1000_hw* %101, i64* %5)
  br label %103

103:                                              ; preds = %100, %24
  %104 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %105 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %106, i32 0, i32 0
  %108 = load i32 (%struct.e1000_hw.0*)*, i32 (%struct.e1000_hw.0*)** %107, align 8
  %109 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %110 = bitcast %struct.e1000_hw* %109 to %struct.e1000_hw.0*
  %111 = call i32 %108(%struct.e1000_hw.0* %110)
  br label %112

112:                                              ; preds = %103, %18
  ret void
}

declare dso_local i32 @DEBUGFUNC(i8*) #1

declare dso_local i64 @e1000_enable_phy_wakeup_reg_access_bm(%struct.e1000_hw*, i64*) #1

declare dso_local i32 @E1000_READ_REG(%struct.e1000_hw*, i32) #1

declare dso_local i32 @E1000_RAL(i64) #1

declare dso_local i32 @BM_RAR_L(i64) #1

declare dso_local i32 @BM_RAR_M(i64) #1

declare dso_local i32 @E1000_RAH(i64) #1

declare dso_local i32 @BM_RAR_H(i64) #1

declare dso_local i32 @BM_RAR_CTRL(i64) #1

declare dso_local i32 @e1000_disable_phy_wakeup_reg_access_bm(%struct.e1000_hw*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
