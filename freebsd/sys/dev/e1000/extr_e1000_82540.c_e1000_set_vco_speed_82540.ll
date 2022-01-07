; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_82540.c_e1000_set_vco_speed_82540.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_82540.c_e1000_set_vco_speed_82540.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 (%struct.e1000_hw.0*, i32, i32)*, i64 (%struct.e1000_hw.1*, i32, i32*)* }
%struct.e1000_hw.0 = type opaque
%struct.e1000_hw.1 = type opaque

@.str = private unnamed_addr constant [26 x i8] c"e1000_set_vco_speed_82540\00", align 1
@M88E1000_PHY_PAGE_SELECT = common dso_local global i32 0, align 4
@M88E1000_PHY_GEN_CONTROL = common dso_local global i32 0, align 4
@M88E1000_PHY_VCO_REG_BIT8 = common dso_local global i32 0, align 4
@M88E1000_PHY_VCO_REG_BIT11 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.e1000_hw*)* @e1000_set_vco_speed_82540 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @e1000_set_vco_speed_82540(%struct.e1000_hw* %0) #0 {
  %2 = alloca %struct.e1000_hw*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.e1000_hw* %0, %struct.e1000_hw** %2, align 8
  store i32 0, i32* %4, align 4
  %6 = call i32 @DEBUGFUNC(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %7 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %8 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 1
  %11 = load i64 (%struct.e1000_hw.1*, i32, i32*)*, i64 (%struct.e1000_hw.1*, i32, i32*)** %10, align 8
  %12 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %13 = bitcast %struct.e1000_hw* %12 to %struct.e1000_hw.1*
  %14 = load i32, i32* @M88E1000_PHY_PAGE_SELECT, align 4
  %15 = call i64 %11(%struct.e1000_hw.1* %13, i32 %14, i32* %4)
  store i64 %15, i64* %3, align 8
  %16 = load i64, i64* %3, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %1
  br label %117

19:                                               ; preds = %1
  %20 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %21 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i64 (%struct.e1000_hw.0*, i32, i32)*, i64 (%struct.e1000_hw.0*, i32, i32)** %23, align 8
  %25 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %26 = bitcast %struct.e1000_hw* %25 to %struct.e1000_hw.0*
  %27 = load i32, i32* @M88E1000_PHY_PAGE_SELECT, align 4
  %28 = call i64 %24(%struct.e1000_hw.0* %26, i32 %27, i32 5)
  store i64 %28, i64* %3, align 8
  %29 = load i64, i64* %3, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %19
  br label %117

32:                                               ; preds = %19
  %33 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %34 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 1
  %37 = load i64 (%struct.e1000_hw.1*, i32, i32*)*, i64 (%struct.e1000_hw.1*, i32, i32*)** %36, align 8
  %38 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %39 = bitcast %struct.e1000_hw* %38 to %struct.e1000_hw.1*
  %40 = load i32, i32* @M88E1000_PHY_GEN_CONTROL, align 4
  %41 = call i64 %37(%struct.e1000_hw.1* %39, i32 %40, i32* %5)
  store i64 %41, i64* %3, align 8
  %42 = load i64, i64* %3, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %32
  br label %117

45:                                               ; preds = %32
  %46 = load i32, i32* @M88E1000_PHY_VCO_REG_BIT8, align 4
  %47 = xor i32 %46, -1
  %48 = load i32, i32* %5, align 4
  %49 = and i32 %48, %47
  store i32 %49, i32* %5, align 4
  %50 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %51 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 0
  %54 = load i64 (%struct.e1000_hw.0*, i32, i32)*, i64 (%struct.e1000_hw.0*, i32, i32)** %53, align 8
  %55 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %56 = bitcast %struct.e1000_hw* %55 to %struct.e1000_hw.0*
  %57 = load i32, i32* @M88E1000_PHY_GEN_CONTROL, align 4
  %58 = load i32, i32* %5, align 4
  %59 = call i64 %54(%struct.e1000_hw.0* %56, i32 %57, i32 %58)
  store i64 %59, i64* %3, align 8
  %60 = load i64, i64* %3, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %45
  br label %117

63:                                               ; preds = %45
  %64 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %65 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 0
  %68 = load i64 (%struct.e1000_hw.0*, i32, i32)*, i64 (%struct.e1000_hw.0*, i32, i32)** %67, align 8
  %69 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %70 = bitcast %struct.e1000_hw* %69 to %struct.e1000_hw.0*
  %71 = load i32, i32* @M88E1000_PHY_PAGE_SELECT, align 4
  %72 = call i64 %68(%struct.e1000_hw.0* %70, i32 %71, i32 4)
  store i64 %72, i64* %3, align 8
  %73 = load i64, i64* %3, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %63
  br label %117

76:                                               ; preds = %63
  %77 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %78 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i32 0, i32 1
  %81 = load i64 (%struct.e1000_hw.1*, i32, i32*)*, i64 (%struct.e1000_hw.1*, i32, i32*)** %80, align 8
  %82 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %83 = bitcast %struct.e1000_hw* %82 to %struct.e1000_hw.1*
  %84 = load i32, i32* @M88E1000_PHY_GEN_CONTROL, align 4
  %85 = call i64 %81(%struct.e1000_hw.1* %83, i32 %84, i32* %5)
  store i64 %85, i64* %3, align 8
  %86 = load i64, i64* %3, align 8
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %76
  br label %117

89:                                               ; preds = %76
  %90 = load i32, i32* @M88E1000_PHY_VCO_REG_BIT11, align 4
  %91 = load i32, i32* %5, align 4
  %92 = or i32 %91, %90
  store i32 %92, i32* %5, align 4
  %93 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %94 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %95, i32 0, i32 0
  %97 = load i64 (%struct.e1000_hw.0*, i32, i32)*, i64 (%struct.e1000_hw.0*, i32, i32)** %96, align 8
  %98 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %99 = bitcast %struct.e1000_hw* %98 to %struct.e1000_hw.0*
  %100 = load i32, i32* @M88E1000_PHY_GEN_CONTROL, align 4
  %101 = load i32, i32* %5, align 4
  %102 = call i64 %97(%struct.e1000_hw.0* %99, i32 %100, i32 %101)
  store i64 %102, i64* %3, align 8
  %103 = load i64, i64* %3, align 8
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %106

105:                                              ; preds = %89
  br label %117

106:                                              ; preds = %89
  %107 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %108 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %109, i32 0, i32 0
  %111 = load i64 (%struct.e1000_hw.0*, i32, i32)*, i64 (%struct.e1000_hw.0*, i32, i32)** %110, align 8
  %112 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %113 = bitcast %struct.e1000_hw* %112 to %struct.e1000_hw.0*
  %114 = load i32, i32* @M88E1000_PHY_PAGE_SELECT, align 4
  %115 = load i32, i32* %4, align 4
  %116 = call i64 %111(%struct.e1000_hw.0* %113, i32 %114, i32 %115)
  store i64 %116, i64* %3, align 8
  br label %117

117:                                              ; preds = %106, %105, %88, %75, %62, %44, %31, %18
  %118 = load i64, i64* %3, align 8
  ret i64 %118
}

declare dso_local i32 @DEBUGFUNC(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
