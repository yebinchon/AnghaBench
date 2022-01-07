; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_82575.c_e1000_set_sfp_media_type_82575.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_82575.c_e1000_set_sfp_media_type_82575.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i8* }
%struct.TYPE_3__ = type { %struct.e1000_dev_spec_82575 }
%struct.e1000_dev_spec_82575 = type { i8*, i8*, %struct.sfp_e1000_flags }
%struct.sfp_e1000_flags = type { i64, i64, i64, i64 }

@E1000_ERR_CONFIG = common dso_local global i64 0, align 8
@E1000_CTRL_EXT = common dso_local global i32 0, align 4
@E1000_CTRL_EXT_SDP3_DATA = common dso_local global i32 0, align 4
@E1000_CTRL_I2C_ENA = common dso_local global i32 0, align 4
@E1000_SFF_IDENTIFIER_OFFSET = common dso_local global i32 0, align 4
@E1000_SUCCESS = common dso_local global i64 0, align 8
@E1000_SFF_ETH_FLAGS_OFFSET = common dso_local global i32 0, align 4
@E1000_SFF_IDENTIFIER_SFP = common dso_local global i64 0, align 8
@E1000_SFF_IDENTIFIER_SFF = common dso_local global i64 0, align 8
@TRUE = common dso_local global i8* null, align 8
@e1000_media_type_internal_serdes = common dso_local global i8* null, align 8
@e1000_media_type_copper = common dso_local global i8* null, align 8
@e1000_media_type_unknown = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [36 x i8] c"PHY module has not been recognized\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.e1000_hw*)* @e1000_set_sfp_media_type_82575 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @e1000_set_sfp_media_type_82575(%struct.e1000_hw* %0) #0 {
  %2 = alloca %struct.e1000_hw*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.e1000_dev_spec_82575*, align 8
  %6 = alloca %struct.sfp_e1000_flags*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.e1000_hw* %0, %struct.e1000_hw** %2, align 8
  %9 = load i64, i64* @E1000_ERR_CONFIG, align 8
  store i64 %9, i64* %3, align 8
  store i32 0, i32* %4, align 4
  %10 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %11 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  store %struct.e1000_dev_spec_82575* %12, %struct.e1000_dev_spec_82575** %5, align 8
  %13 = load %struct.e1000_dev_spec_82575*, %struct.e1000_dev_spec_82575** %5, align 8
  %14 = getelementptr inbounds %struct.e1000_dev_spec_82575, %struct.e1000_dev_spec_82575* %13, i32 0, i32 2
  store %struct.sfp_e1000_flags* %14, %struct.sfp_e1000_flags** %6, align 8
  store i64 0, i64* %7, align 8
  store i64 3, i64* %8, align 8
  %15 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %16 = load i32, i32* @E1000_CTRL_EXT, align 4
  %17 = call i32 @E1000_READ_REG(%struct.e1000_hw* %15, i32 %16)
  store i32 %17, i32* %4, align 4
  %18 = load i32, i32* @E1000_CTRL_EXT_SDP3_DATA, align 4
  %19 = xor i32 %18, -1
  %20 = load i32, i32* %4, align 4
  %21 = and i32 %20, %19
  store i32 %21, i32* %4, align 4
  %22 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %23 = load i32, i32* @E1000_CTRL_EXT, align 4
  %24 = load i32, i32* %4, align 4
  %25 = load i32, i32* @E1000_CTRL_I2C_ENA, align 4
  %26 = or i32 %24, %25
  %27 = call i32 @E1000_WRITE_REG(%struct.e1000_hw* %22, i32 %23, i32 %26)
  %28 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %29 = call i32 @E1000_WRITE_FLUSH(%struct.e1000_hw* %28)
  br label %30

30:                                               ; preds = %42, %1
  %31 = load i64, i64* %8, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %46

33:                                               ; preds = %30
  %34 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %35 = load i32, i32* @E1000_SFF_IDENTIFIER_OFFSET, align 4
  %36 = call i32 @E1000_I2CCMD_SFP_DATA_ADDR(i32 %35)
  %37 = call i64 @e1000_read_sfp_data_byte(%struct.e1000_hw* %34, i32 %36, i64* %7)
  store i64 %37, i64* %3, align 8
  %38 = load i64, i64* %3, align 8
  %39 = load i64, i64* @E1000_SUCCESS, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %33
  br label %46

42:                                               ; preds = %33
  %43 = call i32 @msec_delay(i32 100)
  %44 = load i64, i64* %8, align 8
  %45 = add nsw i64 %44, -1
  store i64 %45, i64* %8, align 8
  br label %30

46:                                               ; preds = %41, %30
  %47 = load i64, i64* %3, align 8
  %48 = load i64, i64* @E1000_SUCCESS, align 8
  %49 = icmp ne i64 %47, %48
  br i1 %49, label %50, label %51

50:                                               ; preds = %46
  br label %130

51:                                               ; preds = %46
  %52 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %53 = load i32, i32* @E1000_SFF_ETH_FLAGS_OFFSET, align 4
  %54 = call i32 @E1000_I2CCMD_SFP_DATA_ADDR(i32 %53)
  %55 = load %struct.sfp_e1000_flags*, %struct.sfp_e1000_flags** %6, align 8
  %56 = bitcast %struct.sfp_e1000_flags* %55 to i64*
  %57 = call i64 @e1000_read_sfp_data_byte(%struct.e1000_hw* %52, i32 %54, i64* %56)
  store i64 %57, i64* %3, align 8
  %58 = load i64, i64* %3, align 8
  %59 = load i64, i64* @E1000_SUCCESS, align 8
  %60 = icmp ne i64 %58, %59
  br i1 %60, label %61, label %62

61:                                               ; preds = %51
  br label %130

62:                                               ; preds = %51
  %63 = load i64, i64* %7, align 8
  %64 = load i64, i64* @E1000_SFF_IDENTIFIER_SFP, align 8
  %65 = icmp eq i64 %63, %64
  br i1 %65, label %70, label %66

66:                                               ; preds = %62
  %67 = load i64, i64* %7, align 8
  %68 = load i64, i64* @E1000_SFF_IDENTIFIER_SFF, align 8
  %69 = icmp eq i64 %67, %68
  br i1 %69, label %70, label %123

70:                                               ; preds = %66, %62
  %71 = load i8*, i8** @TRUE, align 8
  %72 = load %struct.e1000_dev_spec_82575*, %struct.e1000_dev_spec_82575** %5, align 8
  %73 = getelementptr inbounds %struct.e1000_dev_spec_82575, %struct.e1000_dev_spec_82575* %72, i32 0, i32 1
  store i8* %71, i8** %73, align 8
  %74 = load %struct.sfp_e1000_flags*, %struct.sfp_e1000_flags** %6, align 8
  %75 = getelementptr inbounds %struct.sfp_e1000_flags, %struct.sfp_e1000_flags* %74, i32 0, i32 3
  %76 = load i64, i64* %75, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %83, label %78

78:                                               ; preds = %70
  %79 = load %struct.sfp_e1000_flags*, %struct.sfp_e1000_flags** %6, align 8
  %80 = getelementptr inbounds %struct.sfp_e1000_flags, %struct.sfp_e1000_flags* %79, i32 0, i32 2
  %81 = load i64, i64* %80, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %88

83:                                               ; preds = %78, %70
  %84 = load i8*, i8** @e1000_media_type_internal_serdes, align 8
  %85 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %86 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 0
  store i8* %84, i8** %87, align 8
  br label %122

88:                                               ; preds = %78
  %89 = load %struct.sfp_e1000_flags*, %struct.sfp_e1000_flags** %6, align 8
  %90 = getelementptr inbounds %struct.sfp_e1000_flags, %struct.sfp_e1000_flags* %89, i32 0, i32 1
  %91 = load i64, i64* %90, align 8
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %101

93:                                               ; preds = %88
  %94 = load i8*, i8** @TRUE, align 8
  %95 = load %struct.e1000_dev_spec_82575*, %struct.e1000_dev_spec_82575** %5, align 8
  %96 = getelementptr inbounds %struct.e1000_dev_spec_82575, %struct.e1000_dev_spec_82575* %95, i32 0, i32 0
  store i8* %94, i8** %96, align 8
  %97 = load i8*, i8** @e1000_media_type_internal_serdes, align 8
  %98 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %99 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i32 0, i32 0
  store i8* %97, i8** %100, align 8
  br label %121

101:                                              ; preds = %88
  %102 = load %struct.sfp_e1000_flags*, %struct.sfp_e1000_flags** %6, align 8
  %103 = getelementptr inbounds %struct.sfp_e1000_flags, %struct.sfp_e1000_flags* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %114

106:                                              ; preds = %101
  %107 = load i8*, i8** @TRUE, align 8
  %108 = load %struct.e1000_dev_spec_82575*, %struct.e1000_dev_spec_82575** %5, align 8
  %109 = getelementptr inbounds %struct.e1000_dev_spec_82575, %struct.e1000_dev_spec_82575* %108, i32 0, i32 0
  store i8* %107, i8** %109, align 8
  %110 = load i8*, i8** @e1000_media_type_copper, align 8
  %111 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %112 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %112, i32 0, i32 0
  store i8* %110, i8** %113, align 8
  br label %120

114:                                              ; preds = %101
  %115 = load i8*, i8** @e1000_media_type_unknown, align 8
  %116 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %117 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %117, i32 0, i32 0
  store i8* %115, i8** %118, align 8
  %119 = call i32 @DEBUGOUT(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  br label %130

120:                                              ; preds = %106
  br label %121

121:                                              ; preds = %120, %93
  br label %122

122:                                              ; preds = %121, %83
  br label %128

123:                                              ; preds = %66
  %124 = load i8*, i8** @e1000_media_type_unknown, align 8
  %125 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %126 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %126, i32 0, i32 0
  store i8* %124, i8** %127, align 8
  br label %128

128:                                              ; preds = %123, %122
  %129 = load i64, i64* @E1000_SUCCESS, align 8
  store i64 %129, i64* %3, align 8
  br label %130

130:                                              ; preds = %128, %114, %61, %50
  %131 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %132 = load i32, i32* @E1000_CTRL_EXT, align 4
  %133 = load i32, i32* %4, align 4
  %134 = call i32 @E1000_WRITE_REG(%struct.e1000_hw* %131, i32 %132, i32 %133)
  %135 = load i64, i64* %3, align 8
  ret i64 %135
}

declare dso_local i32 @E1000_READ_REG(%struct.e1000_hw*, i32) #1

declare dso_local i32 @E1000_WRITE_REG(%struct.e1000_hw*, i32, i32) #1

declare dso_local i32 @E1000_WRITE_FLUSH(%struct.e1000_hw*) #1

declare dso_local i64 @e1000_read_sfp_data_byte(%struct.e1000_hw*, i32, i64*) #1

declare dso_local i32 @E1000_I2CCMD_SFP_DATA_ADDR(i32) #1

declare dso_local i32 @msec_delay(i32) #1

declare dso_local i32 @DEBUGOUT(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
