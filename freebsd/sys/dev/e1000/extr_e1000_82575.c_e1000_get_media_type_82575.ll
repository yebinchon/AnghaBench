; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_82575.c_e1000_get_media_type_82575.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_82575.c_e1000_get_media_type_82575.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { %struct.TYPE_6__, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { i8* }
%struct.TYPE_4__ = type { %struct.e1000_dev_spec_82575 }
%struct.e1000_dev_spec_82575 = type { %struct.TYPE_5__, i8*, i8* }
%struct.TYPE_5__ = type { i32 }

@E1000_SUCCESS = common dso_local global i32 0, align 4
@FALSE = common dso_local global i8* null, align 8
@E1000_CTRL_EXT = common dso_local global i32 0, align 4
@E1000_CTRL_EXT_LINK_MODE_MASK = common dso_local global i32 0, align 4
@e1000_media_type_internal_serdes = common dso_local global i8* null, align 8
@e1000_media_type_copper = common dso_local global i8* null, align 8
@TRUE = common dso_local global i8* null, align 8
@e1000_media_type_unknown = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.e1000_hw*)* @e1000_get_media_type_82575 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @e1000_get_media_type_82575(%struct.e1000_hw* %0) #0 {
  %2 = alloca %struct.e1000_hw*, align 8
  %3 = alloca %struct.e1000_dev_spec_82575*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.e1000_hw* %0, %struct.e1000_hw** %2, align 8
  %7 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %8 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %7, i32 0, i32 1
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  store %struct.e1000_dev_spec_82575* %9, %struct.e1000_dev_spec_82575** %3, align 8
  %10 = load i32, i32* @E1000_SUCCESS, align 4
  store i32 %10, i32* %4, align 4
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %11 = load i8*, i8** @FALSE, align 8
  %12 = load %struct.e1000_dev_spec_82575*, %struct.e1000_dev_spec_82575** %3, align 8
  %13 = getelementptr inbounds %struct.e1000_dev_spec_82575, %struct.e1000_dev_spec_82575* %12, i32 0, i32 1
  store i8* %11, i8** %13, align 8
  %14 = load i8*, i8** @FALSE, align 8
  %15 = load %struct.e1000_dev_spec_82575*, %struct.e1000_dev_spec_82575** %3, align 8
  %16 = getelementptr inbounds %struct.e1000_dev_spec_82575, %struct.e1000_dev_spec_82575* %15, i32 0, i32 2
  store i8* %14, i8** %16, align 8
  %17 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %18 = load i32, i32* @E1000_CTRL_EXT, align 4
  %19 = call i32 @E1000_READ_REG(%struct.e1000_hw* %17, i32 %18)
  store i32 %19, i32* %5, align 4
  %20 = load i32, i32* %5, align 4
  %21 = load i32, i32* @E1000_CTRL_EXT_LINK_MODE_MASK, align 4
  %22 = and i32 %20, %21
  store i32 %22, i32* %6, align 4
  %23 = load i32, i32* %6, align 4
  switch i32 %23, label %105 [
    i32 131, label %24
    i32 130, label %29
    i32 128, label %34
    i32 129, label %47
  ]

24:                                               ; preds = %1
  %25 = load i8*, i8** @e1000_media_type_internal_serdes, align 8
  %26 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %27 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  store i8* %25, i8** %28, align 8
  br label %105

29:                                               ; preds = %1
  %30 = load i8*, i8** @e1000_media_type_copper, align 8
  %31 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %32 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  store i8* %30, i8** %33, align 8
  br label %105

34:                                               ; preds = %1
  %35 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %36 = call i32 @e1000_sgmii_uses_mdio_82575(%struct.e1000_hw* %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %46

38:                                               ; preds = %34
  %39 = load i8*, i8** @e1000_media_type_copper, align 8
  %40 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %41 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 0
  store i8* %39, i8** %42, align 8
  %43 = load i8*, i8** @TRUE, align 8
  %44 = load %struct.e1000_dev_spec_82575*, %struct.e1000_dev_spec_82575** %3, align 8
  %45 = getelementptr inbounds %struct.e1000_dev_spec_82575, %struct.e1000_dev_spec_82575* %44, i32 0, i32 1
  store i8* %43, i8** %45, align 8
  br label %105

46:                                               ; preds = %34
  br label %47

47:                                               ; preds = %1, %46
  %48 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %49 = call i32 @e1000_set_sfp_media_type_82575(%struct.e1000_hw* %48)
  store i32 %49, i32* %4, align 4
  %50 = load i32, i32* %4, align 4
  %51 = load i32, i32* @E1000_SUCCESS, align 4
  %52 = icmp ne i32 %50, %51
  br i1 %52, label %60, label %53

53:                                               ; preds = %47
  %54 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %55 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 0
  %57 = load i8*, i8** %56, align 8
  %58 = load i8*, i8** @e1000_media_type_unknown, align 8
  %59 = icmp eq i8* %57, %58
  br i1 %59, label %60, label %76

60:                                               ; preds = %53, %47
  %61 = load i8*, i8** @e1000_media_type_internal_serdes, align 8
  %62 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %63 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 0
  store i8* %61, i8** %64, align 8
  %65 = load i32, i32* %6, align 4
  %66 = icmp eq i32 %65, 128
  br i1 %66, label %67, label %75

67:                                               ; preds = %60
  %68 = load i8*, i8** @e1000_media_type_copper, align 8
  %69 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %70 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 0
  store i8* %68, i8** %71, align 8
  %72 = load i8*, i8** @TRUE, align 8
  %73 = load %struct.e1000_dev_spec_82575*, %struct.e1000_dev_spec_82575** %3, align 8
  %74 = getelementptr inbounds %struct.e1000_dev_spec_82575, %struct.e1000_dev_spec_82575* %73, i32 0, i32 1
  store i8* %72, i8** %74, align 8
  br label %75

75:                                               ; preds = %67, %60
  br label %105

76:                                               ; preds = %53
  %77 = load %struct.e1000_dev_spec_82575*, %struct.e1000_dev_spec_82575** %3, align 8
  %78 = getelementptr inbounds %struct.e1000_dev_spec_82575, %struct.e1000_dev_spec_82575* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %76
  br label %105

83:                                               ; preds = %76
  %84 = load i32, i32* @E1000_CTRL_EXT_LINK_MODE_MASK, align 4
  %85 = xor i32 %84, -1
  %86 = load i32, i32* %5, align 4
  %87 = and i32 %86, %85
  store i32 %87, i32* %5, align 4
  %88 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %89 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 0
  %91 = load i8*, i8** %90, align 8
  %92 = load i8*, i8** @e1000_media_type_copper, align 8
  %93 = icmp eq i8* %91, %92
  br i1 %93, label %94, label %97

94:                                               ; preds = %83
  %95 = load i32, i32* %5, align 4
  %96 = or i32 %95, 128
  store i32 %96, i32* %5, align 4
  br label %100

97:                                               ; preds = %83
  %98 = load i32, i32* %5, align 4
  %99 = or i32 %98, 129
  store i32 %99, i32* %5, align 4
  br label %100

100:                                              ; preds = %97, %94
  %101 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %102 = load i32, i32* @E1000_CTRL_EXT, align 4
  %103 = load i32, i32* %5, align 4
  %104 = call i32 @E1000_WRITE_REG(%struct.e1000_hw* %101, i32 %102, i32 %103)
  br label %105

105:                                              ; preds = %1, %100, %82, %75, %38, %29, %24
  %106 = load i32, i32* %4, align 4
  ret i32 %106
}

declare dso_local i32 @E1000_READ_REG(%struct.e1000_hw*, i32) #1

declare dso_local i32 @e1000_sgmii_uses_mdio_82575(%struct.e1000_hw*) #1

declare dso_local i32 @e1000_set_sfp_media_type_82575(%struct.e1000_hw*) #1

declare dso_local i32 @E1000_WRITE_REG(%struct.e1000_hw*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
