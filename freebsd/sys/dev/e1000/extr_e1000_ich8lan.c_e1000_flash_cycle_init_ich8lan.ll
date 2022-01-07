; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_ich8lan.c_e1000_flash_cycle_init_ich8lan.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_ich8lan.c_e1000_flash_cycle_init_ich8lan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }
%union.ich8_hws_flash_status = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32, i32, i32 }

@E1000_ERR_NVM = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [31 x i8] c"e1000_flash_cycle_init_ich8lan\00", align 1
@ICH_FLASH_HSFSTS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [56 x i8] c"Flash descriptor invalid.  SW Sequencing must be used.\0A\00", align 1
@e1000_pch_spt = common dso_local global i64 0, align 8
@E1000_SUCCESS = common dso_local global i64 0, align 8
@ICH_FLASH_READ_COMMAND_TIMEOUT = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [42 x i8] c"Flash controller busy, cannot get access\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.e1000_hw*)* @e1000_flash_cycle_init_ich8lan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @e1000_flash_cycle_init_ich8lan(%struct.e1000_hw* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.e1000_hw*, align 8
  %4 = alloca %union.ich8_hws_flash_status, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.e1000_hw* %0, %struct.e1000_hw** %3, align 8
  %7 = load i64, i64* @E1000_ERR_NVM, align 8
  %8 = sub nsw i64 0, %7
  store i64 %8, i64* %5, align 8
  %9 = call i32 @DEBUGFUNC(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %10 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %11 = load i32, i32* @ICH_FLASH_HSFSTS, align 4
  %12 = call i8* @E1000_READ_FLASH_REG16(%struct.e1000_hw* %10, i32 %11)
  %13 = ptrtoint i8* %12 to i32
  %14 = bitcast %union.ich8_hws_flash_status* %4 to i32*
  store i32 %13, i32* %14, align 4
  %15 = bitcast %union.ich8_hws_flash_status* %4 to %struct.TYPE_3__*
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 4
  %17 = load i32, i32* %16, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %23, label %19

19:                                               ; preds = %1
  %20 = call i32 @DEBUGOUT(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.1, i64 0, i64 0))
  %21 = load i64, i64* @E1000_ERR_NVM, align 8
  %22 = sub nsw i64 0, %21
  store i64 %22, i64* %2, align 8
  br label %130

23:                                               ; preds = %1
  %24 = bitcast %union.ich8_hws_flash_status* %4 to %struct.TYPE_3__*
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  store i32 1, i32* %25, align 4
  %26 = bitcast %union.ich8_hws_flash_status* %4 to %struct.TYPE_3__*
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 1
  store i32 1, i32* %27, align 4
  %28 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %29 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @e1000_pch_spt, align 8
  %33 = icmp sge i64 %31, %32
  br i1 %33, label %34, label %41

34:                                               ; preds = %23
  %35 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %36 = load i32, i32* @ICH_FLASH_HSFSTS, align 4
  %37 = bitcast %union.ich8_hws_flash_status* %4 to i32*
  %38 = load i32, i32* %37, align 4
  %39 = and i32 %38, 65535
  %40 = call i32 @E1000_WRITE_FLASH_REG(%struct.e1000_hw* %35, i32 %36, i32 %39)
  br label %47

41:                                               ; preds = %23
  %42 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %43 = load i32, i32* @ICH_FLASH_HSFSTS, align 4
  %44 = bitcast %union.ich8_hws_flash_status* %4 to i32*
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @E1000_WRITE_FLASH_REG16(%struct.e1000_hw* %42, i32 %43, i32 %45)
  br label %47

47:                                               ; preds = %41, %34
  %48 = bitcast %union.ich8_hws_flash_status* %4 to %struct.TYPE_3__*
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %76, label %52

52:                                               ; preds = %47
  %53 = bitcast %union.ich8_hws_flash_status* %4 to %struct.TYPE_3__*
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 2
  store i32 1, i32* %54, align 4
  %55 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %56 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @e1000_pch_spt, align 8
  %60 = icmp sge i64 %58, %59
  br i1 %60, label %61, label %68

61:                                               ; preds = %52
  %62 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %63 = load i32, i32* @ICH_FLASH_HSFSTS, align 4
  %64 = bitcast %union.ich8_hws_flash_status* %4 to i32*
  %65 = load i32, i32* %64, align 4
  %66 = and i32 %65, 65535
  %67 = call i32 @E1000_WRITE_FLASH_REG(%struct.e1000_hw* %62, i32 %63, i32 %66)
  br label %74

68:                                               ; preds = %52
  %69 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %70 = load i32, i32* @ICH_FLASH_HSFSTS, align 4
  %71 = bitcast %union.ich8_hws_flash_status* %4 to i32*
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @E1000_WRITE_FLASH_REG16(%struct.e1000_hw* %69, i32 %70, i32 %72)
  br label %74

74:                                               ; preds = %68, %61
  %75 = load i64, i64* @E1000_SUCCESS, align 8
  store i64 %75, i64* %5, align 8
  br label %128

76:                                               ; preds = %47
  store i64 0, i64* %6, align 8
  br label %77

77:                                               ; preds = %95, %76
  %78 = load i64, i64* %6, align 8
  %79 = load i64, i64* @ICH_FLASH_READ_COMMAND_TIMEOUT, align 8
  %80 = icmp slt i64 %78, %79
  br i1 %80, label %81, label %98

81:                                               ; preds = %77
  %82 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %83 = load i32, i32* @ICH_FLASH_HSFSTS, align 4
  %84 = call i8* @E1000_READ_FLASH_REG16(%struct.e1000_hw* %82, i32 %83)
  %85 = ptrtoint i8* %84 to i32
  %86 = bitcast %union.ich8_hws_flash_status* %4 to i32*
  store i32 %85, i32* %86, align 4
  %87 = bitcast %union.ich8_hws_flash_status* %4 to %struct.TYPE_3__*
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %87, i32 0, i32 3
  %89 = load i32, i32* %88, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %93, label %91

91:                                               ; preds = %81
  %92 = load i64, i64* @E1000_SUCCESS, align 8
  store i64 %92, i64* %5, align 8
  br label %98

93:                                               ; preds = %81
  %94 = call i32 @usec_delay(i32 1)
  br label %95

95:                                               ; preds = %93
  %96 = load i64, i64* %6, align 8
  %97 = add nsw i64 %96, 1
  store i64 %97, i64* %6, align 8
  br label %77

98:                                               ; preds = %91, %77
  %99 = load i64, i64* %5, align 8
  %100 = load i64, i64* @E1000_SUCCESS, align 8
  %101 = icmp eq i64 %99, %100
  br i1 %101, label %102, label %125

102:                                              ; preds = %98
  %103 = bitcast %union.ich8_hws_flash_status* %4 to %struct.TYPE_3__*
  %104 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %103, i32 0, i32 2
  store i32 1, i32* %104, align 4
  %105 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %106 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = load i64, i64* @e1000_pch_spt, align 8
  %110 = icmp sge i64 %108, %109
  br i1 %110, label %111, label %118

111:                                              ; preds = %102
  %112 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %113 = load i32, i32* @ICH_FLASH_HSFSTS, align 4
  %114 = bitcast %union.ich8_hws_flash_status* %4 to i32*
  %115 = load i32, i32* %114, align 4
  %116 = and i32 %115, 65535
  %117 = call i32 @E1000_WRITE_FLASH_REG(%struct.e1000_hw* %112, i32 %113, i32 %116)
  br label %124

118:                                              ; preds = %102
  %119 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %120 = load i32, i32* @ICH_FLASH_HSFSTS, align 4
  %121 = bitcast %union.ich8_hws_flash_status* %4 to i32*
  %122 = load i32, i32* %121, align 4
  %123 = call i32 @E1000_WRITE_FLASH_REG16(%struct.e1000_hw* %119, i32 %120, i32 %122)
  br label %124

124:                                              ; preds = %118, %111
  br label %127

125:                                              ; preds = %98
  %126 = call i32 @DEBUGOUT(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0))
  br label %127

127:                                              ; preds = %125, %124
  br label %128

128:                                              ; preds = %127, %74
  %129 = load i64, i64* %5, align 8
  store i64 %129, i64* %2, align 8
  br label %130

130:                                              ; preds = %128, %19
  %131 = load i64, i64* %2, align 8
  ret i64 %131
}

declare dso_local i32 @DEBUGFUNC(i8*) #1

declare dso_local i8* @E1000_READ_FLASH_REG16(%struct.e1000_hw*, i32) #1

declare dso_local i32 @DEBUGOUT(i8*) #1

declare dso_local i32 @E1000_WRITE_FLASH_REG(%struct.e1000_hw*, i32, i32) #1

declare dso_local i32 @E1000_WRITE_FLASH_REG16(%struct.e1000_hw*, i32, i32) #1

declare dso_local i32 @usec_delay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
