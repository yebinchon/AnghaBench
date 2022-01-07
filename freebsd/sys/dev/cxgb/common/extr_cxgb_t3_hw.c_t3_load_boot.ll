; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cxgb/common/extr_cxgb_t3_hw.c_t3_load_boot.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cxgb/common/extr_cxgb_t3_hw.c_t3_load_boot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i64 }

@BOOT_FLASH_BOOT_ADDR = common dso_local global i32 0, align 4
@BOOT_MIN_SIZE = common dso_local global i32 0, align 4
@BOOT_MAX_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"boot image too small/large\0A\00", align 1
@EFBIG = common dso_local global i32 0, align 4
@BOOT_SIGNATURE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [30 x i8] c"boot image missing signature\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@BOOT_SIZE_INC = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [42 x i8] c"boot image header length != image length\0A\00", align 1
@.str.3 = private unnamed_addr constant [38 x i8] c"boot image download failed, error %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @t3_load_boot(i32* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_2__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %14 = load i32*, i32** %6, align 8
  %15 = bitcast i32* %14 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %15, %struct.TYPE_2__** %8, align 8
  %16 = load i32, i32* @BOOT_FLASH_BOOT_ADDR, align 4
  %17 = ashr i32 %16, 16
  store i32 %17, i32* %11, align 4
  %18 = load i32, i32* @BOOT_FLASH_BOOT_ADDR, align 4
  %19 = load i32, i32* %7, align 4
  %20 = add i32 %18, %19
  %21 = sub i32 %20, 1
  %22 = lshr i32 %21, 16
  store i32 %22, i32* %12, align 4
  %23 = load i32, i32* %7, align 4
  %24 = load i32, i32* @BOOT_MIN_SIZE, align 4
  %25 = icmp ult i32 %23, %24
  br i1 %25, label %30, label %26

26:                                               ; preds = %3
  %27 = load i32, i32* %7, align 4
  %28 = load i32, i32* @BOOT_MAX_SIZE, align 4
  %29 = icmp ugt i32 %27, %28
  br i1 %29, label %30, label %35

30:                                               ; preds = %26, %3
  %31 = load i32*, i32** %5, align 8
  %32 = call i32 (i32*, i8*, ...) @CH_ERR(i32* %31, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %33 = load i32, i32* @EFBIG, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %4, align 4
  br label %107

35:                                               ; preds = %26
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = inttoptr i64 %38 to i32*
  %40 = load i32, i32* %39, align 4
  %41 = call i64 @le16_to_cpu(i32 %40)
  %42 = load i64, i64* @BOOT_SIGNATURE, align 8
  %43 = icmp ne i64 %41, %42
  br i1 %43, label %44, label %49

44:                                               ; preds = %35
  %45 = load i32*, i32** %5, align 8
  %46 = call i32 (i32*, i8*, ...) @CH_ERR(i32* %45, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  %47 = load i32, i32* @EINVAL, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %4, align 4
  br label %107

49:                                               ; preds = %35
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* @BOOT_SIZE_INC, align 4
  %54 = mul i32 %52, %53
  %55 = load i32, i32* %7, align 4
  %56 = icmp ne i32 %54, %55
  br i1 %56, label %57, label %62

57:                                               ; preds = %49
  %58 = load i32*, i32** %5, align 8
  %59 = call i32 (i32*, i8*, ...) @CH_ERR(i32* %58, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0))
  %60 = load i32, i32* @EINVAL, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %4, align 4
  br label %107

62:                                               ; preds = %49
  %63 = load i32*, i32** %5, align 8
  %64 = load i32, i32* %11, align 4
  %65 = load i32, i32* %12, align 4
  %66 = call i32 @t3_flash_erase_sectors(i32* %63, i32 %64, i32 %65)
  store i32 %66, i32* %9, align 4
  %67 = load i32, i32* %9, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %62
  br label %98

70:                                               ; preds = %62
  %71 = load i32, i32* @BOOT_FLASH_BOOT_ADDR, align 4
  store i32 %71, i32* %10, align 4
  br label %72

72:                                               ; preds = %86, %70
  %73 = load i32, i32* %7, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %97

75:                                               ; preds = %72
  %76 = load i32, i32* %7, align 4
  %77 = call i32 @min(i32 %76, i32 256)
  store i32 %77, i32* %13, align 4
  %78 = load i32*, i32** %5, align 8
  %79 = load i32, i32* %10, align 4
  %80 = load i32, i32* %13, align 4
  %81 = load i32*, i32** %6, align 8
  %82 = call i32 @t3_write_flash(i32* %78, i32 %79, i32 %80, i32* %81, i32 0)
  store i32 %82, i32* %9, align 4
  %83 = load i32, i32* %9, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %75
  br label %98

86:                                               ; preds = %75
  %87 = load i32, i32* %13, align 4
  %88 = load i32, i32* %10, align 4
  %89 = add i32 %88, %87
  store i32 %89, i32* %10, align 4
  %90 = load i32, i32* %13, align 4
  %91 = load i32*, i32** %6, align 8
  %92 = zext i32 %90 to i64
  %93 = getelementptr inbounds i32, i32* %91, i64 %92
  store i32* %93, i32** %6, align 8
  %94 = load i32, i32* %13, align 4
  %95 = load i32, i32* %7, align 4
  %96 = sub i32 %95, %94
  store i32 %96, i32* %7, align 4
  br label %72

97:                                               ; preds = %72
  br label %98

98:                                               ; preds = %97, %85, %69
  %99 = load i32, i32* %9, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %105

101:                                              ; preds = %98
  %102 = load i32*, i32** %5, align 8
  %103 = load i32, i32* %9, align 4
  %104 = call i32 (i32*, i8*, ...) @CH_ERR(i32* %102, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0), i32 %103)
  br label %105

105:                                              ; preds = %101, %98
  %106 = load i32, i32* %9, align 4
  store i32 %106, i32* %4, align 4
  br label %107

107:                                              ; preds = %105, %57, %44, %30
  %108 = load i32, i32* %4, align 4
  ret i32 %108
}

declare dso_local i32 @CH_ERR(i32*, i8*, ...) #1

declare dso_local i64 @le16_to_cpu(i32) #1

declare dso_local i32 @t3_flash_erase_sectors(i32*, i32, i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @t3_write_flash(i32*, i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
