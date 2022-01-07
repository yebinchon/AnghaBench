; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_manage.c_e1000_enable_mng_pass_thru.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_manage.c_e1000_enable_mng_pass_thru.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64, i32 }

@.str = private unnamed_addr constant [27 x i8] c"e1000_enable_mng_pass_thru\00", align 1
@FALSE = common dso_local global i32 0, align 4
@E1000_MANC = common dso_local global i32 0, align 4
@E1000_MANC_RCV_TCO_EN = common dso_local global i32 0, align 4
@E1000_FWSM = common dso_local global i32 0, align 4
@E1000_FACTPS = common dso_local global i32 0, align 4
@E1000_FACTPS_MNGCG = common dso_local global i32 0, align 4
@E1000_FWSM_MODE_MASK = common dso_local global i32 0, align 4
@e1000_mng_mode_pt = common dso_local global i32 0, align 4
@E1000_FWSM_MODE_SHIFT = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@e1000_82574 = common dso_local global i64 0, align 8
@e1000_82583 = common dso_local global i64 0, align 8
@NVM_INIT_CONTROL2_REG = common dso_local global i32 0, align 4
@E1000_NVM_INIT_CTRL2_MNGM = common dso_local global i32 0, align 4
@E1000_MANC_SMBUS_EN = common dso_local global i32 0, align 4
@E1000_MANC_ASF_EN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @e1000_enable_mng_pass_thru(%struct.e1000_hw* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.e1000_hw*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store %struct.e1000_hw* %0, %struct.e1000_hw** %3, align 8
  %9 = call i32 @DEBUGFUNC(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %10 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %11 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 8
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %17, label %15

15:                                               ; preds = %1
  %16 = load i32, i32* @FALSE, align 4
  store i32 %16, i32* %2, align 4
  br label %111

17:                                               ; preds = %1
  %18 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %19 = load i32, i32* @E1000_MANC, align 4
  %20 = call i32 @E1000_READ_REG(%struct.e1000_hw* %18, i32 %19)
  store i32 %20, i32* %4, align 4
  %21 = load i32, i32* %4, align 4
  %22 = load i32, i32* @E1000_MANC_RCV_TCO_EN, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %27, label %25

25:                                               ; preds = %17
  %26 = load i32, i32* @FALSE, align 4
  store i32 %26, i32* %2, align 4
  br label %111

27:                                               ; preds = %17
  %28 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %29 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %55

33:                                               ; preds = %27
  %34 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %35 = load i32, i32* @E1000_FWSM, align 4
  %36 = call i32 @E1000_READ_REG(%struct.e1000_hw* %34, i32 %35)
  store i32 %36, i32* %5, align 4
  %37 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %38 = load i32, i32* @E1000_FACTPS, align 4
  %39 = call i32 @E1000_READ_REG(%struct.e1000_hw* %37, i32 %38)
  store i32 %39, i32* %6, align 4
  %40 = load i32, i32* %6, align 4
  %41 = load i32, i32* @E1000_FACTPS_MNGCG, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %54, label %44

44:                                               ; preds = %33
  %45 = load i32, i32* %5, align 4
  %46 = load i32, i32* @E1000_FWSM_MODE_MASK, align 4
  %47 = and i32 %45, %46
  %48 = load i32, i32* @e1000_mng_mode_pt, align 4
  %49 = load i32, i32* @E1000_FWSM_MODE_SHIFT, align 4
  %50 = shl i32 %48, %49
  %51 = icmp eq i32 %47, %50
  br i1 %51, label %52, label %54

52:                                               ; preds = %44
  %53 = load i32, i32* @TRUE, align 4
  store i32 %53, i32* %2, align 4
  br label %111

54:                                               ; preds = %44, %33
  br label %109

55:                                               ; preds = %27
  %56 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %57 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @e1000_82574, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %69, label %62

62:                                               ; preds = %55
  %63 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %64 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @e1000_82583, align 8
  %68 = icmp eq i64 %66, %67
  br i1 %68, label %69, label %95

69:                                               ; preds = %62, %55
  %70 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %71 = load i32, i32* @E1000_FACTPS, align 4
  %72 = call i32 @E1000_READ_REG(%struct.e1000_hw* %70, i32 %71)
  store i32 %72, i32* %6, align 4
  %73 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %74 = load i32, i32* @NVM_INIT_CONTROL2_REG, align 4
  %75 = call i64 @e1000_read_nvm(%struct.e1000_hw* %73, i32 %74, i32 1, i32* %7)
  store i64 %75, i64* %8, align 8
  %76 = load i64, i64* %8, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %80

78:                                               ; preds = %69
  %79 = load i32, i32* @FALSE, align 4
  store i32 %79, i32* %2, align 4
  br label %111

80:                                               ; preds = %69
  %81 = load i32, i32* %6, align 4
  %82 = load i32, i32* @E1000_FACTPS_MNGCG, align 4
  %83 = and i32 %81, %82
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %94, label %85

85:                                               ; preds = %80
  %86 = load i32, i32* %7, align 4
  %87 = load i32, i32* @E1000_NVM_INIT_CTRL2_MNGM, align 4
  %88 = and i32 %86, %87
  %89 = load i32, i32* @e1000_mng_mode_pt, align 4
  %90 = shl i32 %89, 13
  %91 = icmp eq i32 %88, %90
  br i1 %91, label %92, label %94

92:                                               ; preds = %85
  %93 = load i32, i32* @TRUE, align 4
  store i32 %93, i32* %2, align 4
  br label %111

94:                                               ; preds = %85, %80
  br label %108

95:                                               ; preds = %62
  %96 = load i32, i32* %4, align 4
  %97 = load i32, i32* @E1000_MANC_SMBUS_EN, align 4
  %98 = and i32 %96, %97
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %107

100:                                              ; preds = %95
  %101 = load i32, i32* %4, align 4
  %102 = load i32, i32* @E1000_MANC_ASF_EN, align 4
  %103 = and i32 %101, %102
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %107, label %105

105:                                              ; preds = %100
  %106 = load i32, i32* @TRUE, align 4
  store i32 %106, i32* %2, align 4
  br label %111

107:                                              ; preds = %100, %95
  br label %108

108:                                              ; preds = %107, %94
  br label %109

109:                                              ; preds = %108, %54
  %110 = load i32, i32* @FALSE, align 4
  store i32 %110, i32* %2, align 4
  br label %111

111:                                              ; preds = %109, %105, %92, %78, %52, %25, %15
  %112 = load i32, i32* %2, align 4
  ret i32 %112
}

declare dso_local i32 @DEBUGFUNC(i8*) #1

declare dso_local i32 @E1000_READ_REG(%struct.e1000_hw*, i32) #1

declare dso_local i64 @e1000_read_nvm(%struct.e1000_hw*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
