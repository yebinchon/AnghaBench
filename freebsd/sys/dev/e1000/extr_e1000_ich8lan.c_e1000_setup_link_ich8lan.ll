; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_ich8lan.c_e1000_setup_link_ich8lan.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_ich8lan.c_e1000_setup_link_ich8lan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { %struct.TYPE_10__, %struct.TYPE_9__, %struct.TYPE_7__ }
%struct.TYPE_10__ = type { i64, i64, i32, i32 }
%struct.TYPE_9__ = type { i64, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64 (%struct.e1000_hw.0*, i32, i32)*, i64 (%struct.e1000_hw.1*)* }
%struct.e1000_hw.0 = type opaque
%struct.e1000_hw.1 = type opaque
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64 (%struct.e1000_hw.2*)* }
%struct.e1000_hw.2 = type opaque

@.str = private unnamed_addr constant [25 x i8] c"e1000_setup_link_ich8lan\00", align 1
@E1000_SUCCESS = common dso_local global i64 0, align 8
@e1000_fc_default = common dso_local global i64 0, align 8
@e1000_fc_full = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [39 x i8] c"After fix-ups FlowControl is now = %x\0A\00", align 1
@E1000_FCTTV = common dso_local global i32 0, align 4
@e1000_phy_82578 = common dso_local global i64 0, align 8
@e1000_phy_82579 = common dso_local global i64 0, align 8
@e1000_phy_i217 = common dso_local global i64 0, align 8
@e1000_phy_82577 = common dso_local global i64 0, align 8
@E1000_FCRTV_PCH = common dso_local global i32 0, align 4
@BM_PORT_CTRL_PAGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.e1000_hw*)* @e1000_setup_link_ich8lan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @e1000_setup_link_ich8lan(%struct.e1000_hw* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.e1000_hw*, align 8
  %4 = alloca i64, align 8
  store %struct.e1000_hw* %0, %struct.e1000_hw** %3, align 8
  %5 = call i32 @DEBUGFUNC(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %6 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %7 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %7, i32 0, i32 1
  %9 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 1
  %10 = load i64 (%struct.e1000_hw.1*)*, i64 (%struct.e1000_hw.1*)** %9, align 8
  %11 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %12 = bitcast %struct.e1000_hw* %11 to %struct.e1000_hw.1*
  %13 = call i64 %10(%struct.e1000_hw.1* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %1
  %16 = load i64, i64* @E1000_SUCCESS, align 8
  store i64 %16, i64* %2, align 8
  br label %119

17:                                               ; preds = %1
  %18 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %19 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @e1000_fc_default, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %29

24:                                               ; preds = %17
  %25 = load i64, i64* @e1000_fc_full, align 8
  %26 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %27 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %27, i32 0, i32 0
  store i64 %25, i64* %28, align 8
  br label %29

29:                                               ; preds = %24, %17
  %30 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %31 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %35 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %35, i32 0, i32 1
  store i64 %33, i64* %36, align 8
  %37 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %38 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = call i32 @DEBUGOUT1(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i64 %40)
  %42 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %43 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %42, i32 0, i32 2
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 0
  %46 = load i64 (%struct.e1000_hw.2*)*, i64 (%struct.e1000_hw.2*)** %45, align 8
  %47 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %48 = bitcast %struct.e1000_hw* %47 to %struct.e1000_hw.2*
  %49 = call i64 %46(%struct.e1000_hw.2* %48)
  store i64 %49, i64* %4, align 8
  %50 = load i64, i64* %4, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %29
  %53 = load i64, i64* %4, align 8
  store i64 %53, i64* %2, align 8
  br label %119

54:                                               ; preds = %29
  %55 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %56 = load i32, i32* @E1000_FCTTV, align 4
  %57 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %58 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @E1000_WRITE_REG(%struct.e1000_hw* %55, i32 %56, i32 %60)
  %62 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %63 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @e1000_phy_82578, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %89, label %68

68:                                               ; preds = %54
  %69 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %70 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* @e1000_phy_82579, align 8
  %74 = icmp eq i64 %72, %73
  br i1 %74, label %89, label %75

75:                                               ; preds = %68
  %76 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %77 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* @e1000_phy_i217, align 8
  %81 = icmp eq i64 %79, %80
  br i1 %81, label %89, label %82

82:                                               ; preds = %75
  %83 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %84 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %83, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = load i64, i64* @e1000_phy_82577, align 8
  %88 = icmp eq i64 %86, %87
  br i1 %88, label %89, label %116

89:                                               ; preds = %82, %75, %68, %54
  %90 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %91 = load i32, i32* @E1000_FCRTV_PCH, align 4
  %92 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %93 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %93, i32 0, i32 3
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @E1000_WRITE_REG(%struct.e1000_hw* %90, i32 %91, i32 %95)
  %97 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %98 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %97, i32 0, i32 1
  %99 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %98, i32 0, i32 1
  %100 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %99, i32 0, i32 0
  %101 = load i64 (%struct.e1000_hw.0*, i32, i32)*, i64 (%struct.e1000_hw.0*, i32, i32)** %100, align 8
  %102 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %103 = bitcast %struct.e1000_hw* %102 to %struct.e1000_hw.0*
  %104 = load i32, i32* @BM_PORT_CTRL_PAGE, align 4
  %105 = call i32 @PHY_REG(i32 %104, i32 27)
  %106 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %107 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %107, i32 0, i32 2
  %109 = load i32, i32* %108, align 8
  %110 = call i64 %101(%struct.e1000_hw.0* %103, i32 %105, i32 %109)
  store i64 %110, i64* %4, align 8
  %111 = load i64, i64* %4, align 8
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %115

113:                                              ; preds = %89
  %114 = load i64, i64* %4, align 8
  store i64 %114, i64* %2, align 8
  br label %119

115:                                              ; preds = %89
  br label %116

116:                                              ; preds = %115, %82
  %117 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %118 = call i64 @e1000_set_fc_watermarks_generic(%struct.e1000_hw* %117)
  store i64 %118, i64* %2, align 8
  br label %119

119:                                              ; preds = %116, %113, %52, %15
  %120 = load i64, i64* %2, align 8
  ret i64 %120
}

declare dso_local i32 @DEBUGFUNC(i8*) #1

declare dso_local i32 @DEBUGOUT1(i8*, i64) #1

declare dso_local i32 @E1000_WRITE_REG(%struct.e1000_hw*, i32, i32) #1

declare dso_local i32 @PHY_REG(i32, i32) #1

declare dso_local i64 @e1000_set_fc_watermarks_generic(%struct.e1000_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
