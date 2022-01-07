; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_ich8lan.c_e1000_update_mc_addr_list_pch2lan.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_ich8lan.c_e1000_update_mc_addr_list_pch2lan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { %struct.TYPE_6__, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 (%struct.e1000_hw.0*)*, i32 (%struct.e1000_hw.1*, i64, i32)*, i64 (%struct.e1000_hw.2*)* }
%struct.e1000_hw.0 = type opaque
%struct.e1000_hw.1 = type opaque
%struct.e1000_hw.2 = type opaque
%struct.TYPE_4__ = type { i32, i32* }

@.str = private unnamed_addr constant [34 x i8] c"e1000_update_mc_addr_list_pch2lan\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.e1000_hw*, i32*, i32)* @e1000_update_mc_addr_list_pch2lan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @e1000_update_mc_addr_list_pch2lan(%struct.e1000_hw* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.e1000_hw*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store %struct.e1000_hw* %0, %struct.e1000_hw** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %10 = call i32 @DEBUGFUNC(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %11 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %12 = load i32*, i32** %5, align 8
  %13 = load i32, i32* %6, align 4
  %14 = call i32 @e1000_update_mc_addr_list_generic(%struct.e1000_hw* %11, i32* %12, i32 %13)
  %15 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %16 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 2
  %19 = load i64 (%struct.e1000_hw.2*)*, i64 (%struct.e1000_hw.2*)** %18, align 8
  %20 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %21 = bitcast %struct.e1000_hw* %20 to %struct.e1000_hw.2*
  %22 = call i64 %19(%struct.e1000_hw.2* %21)
  store i64 %22, i64* %9, align 8
  %23 = load i64, i64* %9, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %3
  br label %96

26:                                               ; preds = %3
  %27 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %28 = call i64 @e1000_enable_phy_wakeup_reg_access_bm(%struct.e1000_hw* %27, i32* %7)
  store i64 %28, i64* %9, align 8
  %29 = load i64, i64* %9, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %26
  br label %87

32:                                               ; preds = %26
  store i32 0, i32* %8, align 4
  br label %33

33:                                               ; preds = %81, %32
  %34 = load i32, i32* %8, align 4
  %35 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %36 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = icmp slt i32 %34, %38
  br i1 %39, label %40, label %84

40:                                               ; preds = %33
  %41 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %42 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 1
  %45 = load i32 (%struct.e1000_hw.1*, i64, i32)*, i32 (%struct.e1000_hw.1*, i64, i32)** %44, align 8
  %46 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %47 = bitcast %struct.e1000_hw* %46 to %struct.e1000_hw.1*
  %48 = load i32, i32* %8, align 4
  %49 = call i64 @BM_MTA(i32 %48)
  %50 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %51 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 1
  %53 = load i32*, i32** %52, align 8
  %54 = load i32, i32* %8, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %53, i64 %55
  %57 = load i32, i32* %56, align 4
  %58 = and i32 %57, 65535
  %59 = call i32 %45(%struct.e1000_hw.1* %47, i64 %49, i32 %58)
  %60 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %61 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 1
  %64 = load i32 (%struct.e1000_hw.1*, i64, i32)*, i32 (%struct.e1000_hw.1*, i64, i32)** %63, align 8
  %65 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %66 = bitcast %struct.e1000_hw* %65 to %struct.e1000_hw.1*
  %67 = load i32, i32* %8, align 4
  %68 = call i64 @BM_MTA(i32 %67)
  %69 = add nsw i64 %68, 1
  %70 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %71 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 1
  %73 = load i32*, i32** %72, align 8
  %74 = load i32, i32* %8, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i32, i32* %73, i64 %75
  %77 = load i32, i32* %76, align 4
  %78 = ashr i32 %77, 16
  %79 = and i32 %78, 65535
  %80 = call i32 %64(%struct.e1000_hw.1* %66, i64 %69, i32 %79)
  br label %81

81:                                               ; preds = %40
  %82 = load i32, i32* %8, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %8, align 4
  br label %33

84:                                               ; preds = %33
  %85 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %86 = call i32 @e1000_disable_phy_wakeup_reg_access_bm(%struct.e1000_hw* %85, i32* %7)
  br label %87

87:                                               ; preds = %84, %31
  %88 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %89 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %90, i32 0, i32 0
  %92 = load i32 (%struct.e1000_hw.0*)*, i32 (%struct.e1000_hw.0*)** %91, align 8
  %93 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %94 = bitcast %struct.e1000_hw* %93 to %struct.e1000_hw.0*
  %95 = call i32 %92(%struct.e1000_hw.0* %94)
  br label %96

96:                                               ; preds = %87, %25
  ret void
}

declare dso_local i32 @DEBUGFUNC(i8*) #1

declare dso_local i32 @e1000_update_mc_addr_list_generic(%struct.e1000_hw*, i32*, i32) #1

declare dso_local i64 @e1000_enable_phy_wakeup_reg_access_bm(%struct.e1000_hw*, i32*) #1

declare dso_local i64 @BM_MTA(i32) #1

declare dso_local i32 @e1000_disable_phy_wakeup_reg_access_bm(%struct.e1000_hw*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
