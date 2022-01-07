; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/common/extr_t4_hw.c_t4_load_bootcfg.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/common/extr_t4_hw.c_t4_load_bootcfg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@SF_SEC_SIZE = common dso_local global i32 0, align 4
@FLASH_BOOTCFG_MAX_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"bootcfg file too large, max is %u bytes\0A\00", align 1
@EFBIG = common dso_local global i32 0, align 4
@SF_PAGE_SIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"boot config data %s failed %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"clear\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"download\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @t4_load_bootcfg(%struct.adapter* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.adapter*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.adapter* %0, %struct.adapter** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %15 = load %struct.adapter*, %struct.adapter** %5, align 8
  %16 = getelementptr inbounds %struct.adapter, %struct.adapter* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.adapter*, %struct.adapter** %5, align 8
  %20 = getelementptr inbounds %struct.adapter, %struct.adapter* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = udiv i32 %18, %22
  store i32 %23, i32* %14, align 4
  %24 = load %struct.adapter*, %struct.adapter** %5, align 8
  %25 = call i32 @t4_flash_bootcfg_addr(%struct.adapter* %24)
  store i32 %25, i32* %11, align 4
  %26 = load i32, i32* %11, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %3
  %29 = load i32, i32* %11, align 4
  store i32 %29, i32* %4, align 4
  br label %113

30:                                               ; preds = %3
  %31 = load i32, i32* %11, align 4
  store i32 %31, i32* %12, align 4
  %32 = load i32, i32* %12, align 4
  %33 = load i32, i32* @SF_SEC_SIZE, align 4
  %34 = udiv i32 %32, %33
  store i32 %34, i32* %13, align 4
  %35 = load i32, i32* %7, align 4
  %36 = load i32, i32* @FLASH_BOOTCFG_MAX_SIZE, align 4
  %37 = icmp ugt i32 %35, %36
  br i1 %37, label %38, label %44

38:                                               ; preds = %30
  %39 = load %struct.adapter*, %struct.adapter** %5, align 8
  %40 = load i32, i32* @FLASH_BOOTCFG_MAX_SIZE, align 4
  %41 = call i32 (%struct.adapter*, i8*, ...) @CH_ERR(%struct.adapter* %39, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %40)
  %42 = load i32, i32* @EFBIG, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %4, align 4
  br label %113

44:                                               ; preds = %30
  %45 = load i32, i32* @FLASH_BOOTCFG_MAX_SIZE, align 4
  %46 = load i32, i32* %14, align 4
  %47 = call i32 @DIV_ROUND_UP(i32 %45, i32 %46)
  store i32 %47, i32* %9, align 4
  %48 = load %struct.adapter*, %struct.adapter** %5, align 8
  %49 = load i32, i32* %13, align 4
  %50 = load i32, i32* %13, align 4
  %51 = load i32, i32* %9, align 4
  %52 = add i32 %50, %51
  %53 = sub i32 %52, 1
  %54 = call i32 @t4_flash_erase_sectors(%struct.adapter* %48, i32 %49, i32 %53)
  store i32 %54, i32* %8, align 4
  %55 = load i32, i32* %8, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %60, label %57

57:                                               ; preds = %44
  %58 = load i32, i32* %7, align 4
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %57, %44
  br label %100

61:                                               ; preds = %57
  store i32 0, i32* %9, align 4
  br label %62

62:                                               ; preds = %95, %61
  %63 = load i32, i32* %9, align 4
  %64 = load i32, i32* %7, align 4
  %65 = icmp ult i32 %63, %64
  br i1 %65, label %66, label %99

66:                                               ; preds = %62
  %67 = load i32, i32* %7, align 4
  %68 = load i32, i32* %9, align 4
  %69 = sub i32 %67, %68
  %70 = load i32, i32* @SF_PAGE_SIZE, align 4
  %71 = icmp ult i32 %69, %70
  br i1 %71, label %72, label %76

72:                                               ; preds = %66
  %73 = load i32, i32* %7, align 4
  %74 = load i32, i32* %9, align 4
  %75 = sub i32 %73, %74
  store i32 %75, i32* %10, align 4
  br label %78

76:                                               ; preds = %66
  %77 = load i32, i32* @SF_PAGE_SIZE, align 4
  store i32 %77, i32* %10, align 4
  br label %78

78:                                               ; preds = %76, %72
  %79 = load %struct.adapter*, %struct.adapter** %5, align 8
  %80 = load i32, i32* %12, align 4
  %81 = load i32, i32* %10, align 4
  %82 = load i32*, i32** %6, align 8
  %83 = call i32 @t4_write_flash(%struct.adapter* %79, i32 %80, i32 %81, i32* %82, i32 0)
  store i32 %83, i32* %8, align 4
  %84 = load i32, i32* %8, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %87

86:                                               ; preds = %78
  br label %100

87:                                               ; preds = %78
  %88 = load i32, i32* @SF_PAGE_SIZE, align 4
  %89 = load i32, i32* %12, align 4
  %90 = add i32 %89, %88
  store i32 %90, i32* %12, align 4
  %91 = load i32, i32* @SF_PAGE_SIZE, align 4
  %92 = load i32*, i32** %6, align 8
  %93 = sext i32 %91 to i64
  %94 = getelementptr inbounds i32, i32* %92, i64 %93
  store i32* %94, i32** %6, align 8
  br label %95

95:                                               ; preds = %87
  %96 = load i32, i32* @SF_PAGE_SIZE, align 4
  %97 = load i32, i32* %9, align 4
  %98 = add nsw i32 %97, %96
  store i32 %98, i32* %9, align 4
  br label %62

99:                                               ; preds = %62
  br label %100

100:                                              ; preds = %99, %86, %60
  %101 = load i32, i32* %8, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %111

103:                                              ; preds = %100
  %104 = load %struct.adapter*, %struct.adapter** %5, align 8
  %105 = load i32, i32* %7, align 4
  %106 = icmp eq i32 %105, 0
  %107 = zext i1 %106 to i64
  %108 = select i1 %106, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0)
  %109 = load i32, i32* %8, align 4
  %110 = call i32 (%struct.adapter*, i8*, ...) @CH_ERR(%struct.adapter* %104, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i8* %108, i32 %109)
  br label %111

111:                                              ; preds = %103, %100
  %112 = load i32, i32* %8, align 4
  store i32 %112, i32* %4, align 4
  br label %113

113:                                              ; preds = %111, %38, %28
  %114 = load i32, i32* %4, align 4
  ret i32 %114
}

declare dso_local i32 @t4_flash_bootcfg_addr(%struct.adapter*) #1

declare dso_local i32 @CH_ERR(%struct.adapter*, i8*, ...) #1

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #1

declare dso_local i32 @t4_flash_erase_sectors(%struct.adapter*, i32, i32) #1

declare dso_local i32 @t4_write_flash(%struct.adapter*, i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
