; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cxgb/common/extr_cxgb_t3_hw.c_t3_load_fw.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cxgb/common/extr_cxgb_t3_hw.c_t3_load_fw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FW_FLASH_BOOT_ADDR = common dso_local global i32 0, align 4
@FW_MIN_SIZE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@FW_MAX_SIZE = common dso_local global i32 0, align 4
@EFBIG = common dso_local global i32 0, align 4
@FW_VERS_ADDR_PRE8 = common dso_local global i32 0, align 4
@FW_MAX_SIZE_PRE8 = common dso_local global i32 0, align 4
@FW_VERS_ADDR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"corrupted firmware image, checksum %u\0A\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"firmware download failed, error %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @t3_load_fw(i32* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %17 = load i32*, i32** %6, align 8
  store i32* %17, i32** %12, align 8
  %18 = load i32, i32* @FW_FLASH_BOOT_ADDR, align 4
  %19 = ashr i32 %18, 16
  store i32 %19, i32* %15, align 4
  %20 = load i32, i32* %7, align 4
  %21 = and i32 %20, 3
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %27, label %23

23:                                               ; preds = %3
  %24 = load i32, i32* %7, align 4
  %25 = load i32, i32* @FW_MIN_SIZE, align 4
  %26 = icmp ult i32 %24, %25
  br i1 %26, label %27, label %30

27:                                               ; preds = %23, %3
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %4, align 4
  br label %141

30:                                               ; preds = %23
  %31 = load i32, i32* %7, align 4
  %32 = sub i32 %31, 8
  %33 = load i32, i32* @FW_MAX_SIZE, align 4
  %34 = icmp ugt i32 %32, %33
  br i1 %34, label %35, label %38

35:                                               ; preds = %30
  %36 = load i32, i32* @EFBIG, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %4, align 4
  br label %141

38:                                               ; preds = %30
  %39 = load i32*, i32** %6, align 8
  %40 = load i32, i32* %7, align 4
  %41 = zext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %39, i64 %41
  %43 = getelementptr inbounds i32, i32* %42, i64 -8
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @ntohl(i32 %44)
  store i32 %45, i32* %8, align 4
  %46 = load i32, i32* %8, align 4
  %47 = call i32 @G_FW_VERSION_MAJOR(i32 %46)
  %48 = icmp slt i32 %47, 8
  br i1 %48, label %49, label %59

49:                                               ; preds = %38
  %50 = load i32, i32* @FW_VERS_ADDR_PRE8, align 4
  store i32 %50, i32* %10, align 4
  %51 = load i32, i32* %7, align 4
  %52 = sub i32 %51, 8
  %53 = load i32, i32* @FW_MAX_SIZE_PRE8, align 4
  %54 = icmp ugt i32 %52, %53
  br i1 %54, label %55, label %58

55:                                               ; preds = %49
  %56 = load i32, i32* @EFBIG, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %4, align 4
  br label %141

58:                                               ; preds = %49
  br label %61

59:                                               ; preds = %38
  %60 = load i32, i32* @FW_VERS_ADDR, align 4
  store i32 %60, i32* %10, align 4
  br label %61

61:                                               ; preds = %59, %58
  store i32 0, i32* %9, align 4
  store i32 0, i32* %11, align 4
  br label %62

62:                                               ; preds = %78, %61
  %63 = load i32, i32* %11, align 4
  %64 = zext i32 %63 to i64
  %65 = load i32, i32* %7, align 4
  %66 = zext i32 %65 to i64
  %67 = udiv i64 %66, 4
  %68 = icmp ult i64 %64, %67
  br i1 %68, label %69, label %81

69:                                               ; preds = %62
  %70 = load i32*, i32** %12, align 8
  %71 = load i32, i32* %11, align 4
  %72 = zext i32 %71 to i64
  %73 = getelementptr inbounds i32, i32* %70, i64 %72
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @ntohl(i32 %74)
  %76 = load i32, i32* %9, align 4
  %77 = add nsw i32 %76, %75
  store i32 %77, i32* %9, align 4
  br label %78

78:                                               ; preds = %69
  %79 = load i32, i32* %11, align 4
  %80 = add i32 %79, 1
  store i32 %80, i32* %11, align 4
  br label %62

81:                                               ; preds = %62
  %82 = load i32, i32* %9, align 4
  %83 = icmp ne i32 %82, -1
  br i1 %83, label %84, label %90

84:                                               ; preds = %81
  %85 = load i32*, i32** %5, align 8
  %86 = load i32, i32* %9, align 4
  %87 = call i32 @CH_ERR(i32* %85, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %86)
  %88 = load i32, i32* @EINVAL, align 4
  %89 = sub nsw i32 0, %88
  store i32 %89, i32* %4, align 4
  br label %141

90:                                               ; preds = %81
  %91 = load i32*, i32** %5, align 8
  %92 = load i32, i32* %15, align 4
  %93 = load i32, i32* %15, align 4
  %94 = call i32 @t3_flash_erase_sectors(i32* %91, i32 %92, i32 %93)
  store i32 %94, i32* %13, align 4
  %95 = load i32, i32* %13, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %98

97:                                               ; preds = %90
  br label %132

98:                                               ; preds = %90
  %99 = load i32, i32* %7, align 4
  %100 = sub i32 %99, 8
  store i32 %100, i32* %7, align 4
  %101 = load i32, i32* @FW_FLASH_BOOT_ADDR, align 4
  store i32 %101, i32* %14, align 4
  br label %102

102:                                              ; preds = %116, %98
  %103 = load i32, i32* %7, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %127

105:                                              ; preds = %102
  %106 = load i32, i32* %7, align 4
  %107 = call i32 @min(i32 %106, i32 256)
  store i32 %107, i32* %16, align 4
  %108 = load i32*, i32** %5, align 8
  %109 = load i32, i32* %14, align 4
  %110 = load i32, i32* %16, align 4
  %111 = load i32*, i32** %6, align 8
  %112 = call i32 @t3_write_flash(i32* %108, i32 %109, i32 %110, i32* %111, i32 1)
  store i32 %112, i32* %13, align 4
  %113 = load i32, i32* %13, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %116

115:                                              ; preds = %105
  br label %132

116:                                              ; preds = %105
  %117 = load i32, i32* %16, align 4
  %118 = load i32, i32* %14, align 4
  %119 = add i32 %118, %117
  store i32 %119, i32* %14, align 4
  %120 = load i32, i32* %16, align 4
  %121 = load i32*, i32** %6, align 8
  %122 = zext i32 %120 to i64
  %123 = getelementptr inbounds i32, i32* %121, i64 %122
  store i32* %123, i32** %6, align 8
  %124 = load i32, i32* %16, align 4
  %125 = load i32, i32* %7, align 4
  %126 = sub i32 %125, %124
  store i32 %126, i32* %7, align 4
  br label %102

127:                                              ; preds = %102
  %128 = load i32*, i32** %5, align 8
  %129 = load i32, i32* %10, align 4
  %130 = load i32*, i32** %6, align 8
  %131 = call i32 @t3_write_flash(i32* %128, i32 %129, i32 4, i32* %130, i32 1)
  store i32 %131, i32* %13, align 4
  br label %132

132:                                              ; preds = %127, %115, %97
  %133 = load i32, i32* %13, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %139

135:                                              ; preds = %132
  %136 = load i32*, i32** %5, align 8
  %137 = load i32, i32* %13, align 4
  %138 = call i32 @CH_ERR(i32* %136, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %137)
  br label %139

139:                                              ; preds = %135, %132
  %140 = load i32, i32* %13, align 4
  store i32 %140, i32* %4, align 4
  br label %141

141:                                              ; preds = %139, %84, %55, %35, %27
  %142 = load i32, i32* %4, align 4
  ret i32 %142
}

declare dso_local i32 @ntohl(i32) #1

declare dso_local i32 @G_FW_VERSION_MAJOR(i32) #1

declare dso_local i32 @CH_ERR(i32*, i8*, i32) #1

declare dso_local i32 @t3_flash_erase_sectors(i32*, i32, i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @t3_write_flash(i32*, i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
