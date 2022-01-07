; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cxgb/common/extr_cxgb_t3_hw.c_t3_write_flash.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cxgb/common/extr_cxgb_t3_hw.c_t3_write_flash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SF_SIZE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@SF_PROG_PAGE = common dso_local global i32 0, align 4
@SF_WR_ENABLE = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i32, i32*, i32)* @t3_write_flash to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @t3_write_flash(i32* %0, i32 %1, i32 %2, i32* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca [64 x i32], align 16
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i32 %4, i32* %11, align 4
  %18 = load i32, i32* %8, align 4
  %19 = and i32 %18, 255
  store i32 %19, i32* %17, align 4
  %20 = load i32, i32* %8, align 4
  %21 = load i32, i32* %9, align 4
  %22 = add i32 %20, %21
  %23 = load i32, i32* @SF_SIZE, align 4
  %24 = icmp ugt i32 %22, %23
  br i1 %24, label %30, label %25

25:                                               ; preds = %5
  %26 = load i32, i32* %17, align 4
  %27 = load i32, i32* %9, align 4
  %28 = add i32 %26, %27
  %29 = icmp ugt i32 %28, 256
  br i1 %29, label %30, label %33

30:                                               ; preds = %25, %5
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %6, align 4
  br label %122

33:                                               ; preds = %25
  %34 = load i32, i32* %8, align 4
  %35 = call i32 @swab32(i32 %34)
  %36 = load i32, i32* @SF_PROG_PAGE, align 4
  %37 = or i32 %35, %36
  store i32 %37, i32* %16, align 4
  %38 = load i32*, i32** %7, align 8
  %39 = load i32, i32* @SF_WR_ENABLE, align 4
  %40 = call i32 @sf1_write(i32* %38, i32 1, i32 0, i32 %39)
  store i32 %40, i32* %12, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %47, label %42

42:                                               ; preds = %33
  %43 = load i32*, i32** %7, align 8
  %44 = load i32, i32* %16, align 4
  %45 = call i32 @sf1_write(i32* %43, i32 4, i32 1, i32 %44)
  store i32 %45, i32* %12, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %42, %33
  %48 = load i32, i32* %12, align 4
  store i32 %48, i32* %6, align 4
  br label %122

49:                                               ; preds = %42
  %50 = load i32, i32* %9, align 4
  store i32 %50, i32* %15, align 4
  br label %51

51:                                               ; preds = %82, %49
  %52 = load i32, i32* %15, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %86

54:                                               ; preds = %51
  %55 = load i32, i32* %15, align 4
  %56 = call i32 @min(i32 %55, i32 4)
  store i32 %56, i32* %14, align 4
  %57 = load i32*, i32** %10, align 8
  %58 = load i32, i32* %57, align 4
  store i32 %58, i32* %16, align 4
  %59 = load i32, i32* %14, align 4
  %60 = load i32*, i32** %10, align 8
  %61 = zext i32 %59 to i64
  %62 = getelementptr inbounds i32, i32* %60, i64 %61
  store i32* %62, i32** %10, align 8
  %63 = load i32, i32* %11, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %54
  %66 = load i32, i32* %16, align 4
  %67 = call i32 @htonl(i32 %66)
  store i32 %67, i32* %16, align 4
  br label %68

68:                                               ; preds = %65, %54
  %69 = load i32*, i32** %7, align 8
  %70 = load i32, i32* %14, align 4
  %71 = load i32, i32* %14, align 4
  %72 = load i32, i32* %15, align 4
  %73 = icmp ne i32 %71, %72
  %74 = zext i1 %73 to i32
  %75 = load i32, i32* %16, align 4
  %76 = call i32 @sf1_write(i32* %69, i32 %70, i32 %74, i32 %75)
  store i32 %76, i32* %12, align 4
  %77 = load i32, i32* %12, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %81

79:                                               ; preds = %68
  %80 = load i32, i32* %12, align 4
  store i32 %80, i32* %6, align 4
  br label %122

81:                                               ; preds = %68
  br label %82

82:                                               ; preds = %81
  %83 = load i32, i32* %14, align 4
  %84 = load i32, i32* %15, align 4
  %85 = sub i32 %84, %83
  store i32 %85, i32* %15, align 4
  br label %51

86:                                               ; preds = %51
  %87 = load i32*, i32** %7, align 8
  %88 = call i32 @flash_wait_op(i32* %87, i32 5, i32 1)
  store i32 %88, i32* %12, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %92

90:                                               ; preds = %86
  %91 = load i32, i32* %12, align 4
  store i32 %91, i32* %6, align 4
  br label %122

92:                                               ; preds = %86
  %93 = load i32*, i32** %7, align 8
  %94 = load i32, i32* %8, align 4
  %95 = and i32 %94, -256
  %96 = getelementptr inbounds [64 x i32], [64 x i32]* %13, i64 0, i64 0
  %97 = call i32 @ARRAY_SIZE(i32* %96)
  %98 = getelementptr inbounds [64 x i32], [64 x i32]* %13, i64 0, i64 0
  %99 = load i32, i32* %11, align 4
  %100 = call i32 @t3_read_flash(i32* %93, i32 %95, i32 %97, i32* %98, i32 %99)
  store i32 %100, i32* %12, align 4
  %101 = load i32, i32* %12, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %105

103:                                              ; preds = %92
  %104 = load i32, i32* %12, align 4
  store i32 %104, i32* %6, align 4
  br label %122

105:                                              ; preds = %92
  %106 = load i32*, i32** %10, align 8
  %107 = load i32, i32* %9, align 4
  %108 = zext i32 %107 to i64
  %109 = sub i64 0, %108
  %110 = getelementptr inbounds i32, i32* %106, i64 %109
  %111 = getelementptr inbounds [64 x i32], [64 x i32]* %13, i64 0, i64 0
  %112 = load i32, i32* %17, align 4
  %113 = zext i32 %112 to i64
  %114 = getelementptr inbounds i32, i32* %111, i64 %113
  %115 = load i32, i32* %9, align 4
  %116 = call i64 @memcmp(i32* %110, i32* %114, i32 %115)
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %121

118:                                              ; preds = %105
  %119 = load i32, i32* @EIO, align 4
  %120 = sub nsw i32 0, %119
  store i32 %120, i32* %6, align 4
  br label %122

121:                                              ; preds = %105
  store i32 0, i32* %6, align 4
  br label %122

122:                                              ; preds = %121, %118, %103, %90, %79, %47, %30
  %123 = load i32, i32* %6, align 4
  ret i32 %123
}

declare dso_local i32 @swab32(i32) #1

declare dso_local i32 @sf1_write(i32*, i32, i32, i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @htonl(i32) #1

declare dso_local i32 @flash_wait_op(i32*, i32, i32) #1

declare dso_local i32 @t3_read_flash(i32*, i32, i32, i32*, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i64 @memcmp(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
