; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/common/extr_t4_hw.c_t4_write_flash.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/common/extr_t4_hw.c_t4_write_flash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@SF_PAGE_SIZE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@SF_PROG_PAGE = common dso_local global i32 0, align 4
@SF_WR_ENABLE = common dso_local global i32 0, align 4
@A_SF_OP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"failed to correctly write the flash page at %#x\0A\00", align 1
@EIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @t4_write_flash(%struct.adapter* %0, i32 %1, i32 %2, i32* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.adapter*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.adapter* %0, %struct.adapter** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i32 %4, i32* %11, align 4
  %21 = load i32, i32* @SF_PAGE_SIZE, align 4
  %22 = sdiv i32 %21, 4
  %23 = zext i32 %22 to i64
  %24 = call i8* @llvm.stacksave()
  store i8* %24, i8** %13, align 8
  %25 = alloca i32, i64 %23, align 16
  store i64 %23, i64* %14, align 8
  %26 = load i32, i32* %8, align 4
  %27 = and i32 %26, 255
  store i32 %27, i32* %19, align 4
  %28 = load i32, i32* %8, align 4
  %29 = load %struct.adapter*, %struct.adapter** %7, align 8
  %30 = getelementptr inbounds %struct.adapter, %struct.adapter* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = icmp uge i32 %28, %32
  br i1 %33, label %40, label %34

34:                                               ; preds = %5
  %35 = load i32, i32* %19, align 4
  %36 = load i32, i32* %9, align 4
  %37 = add i32 %35, %36
  %38 = load i32, i32* @SF_PAGE_SIZE, align 4
  %39 = icmp ugt i32 %37, %38
  br i1 %39, label %40, label %43

40:                                               ; preds = %34, %5
  %41 = load i32, i32* @EINVAL, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %6, align 4
  store i32 1, i32* %20, align 4
  br label %147

43:                                               ; preds = %34
  %44 = load i32, i32* %8, align 4
  %45 = call i32 @swab32(i32 %44)
  %46 = load i32, i32* @SF_PROG_PAGE, align 4
  %47 = or i32 %45, %46
  store i32 %47, i32* %18, align 4
  %48 = load %struct.adapter*, %struct.adapter** %7, align 8
  %49 = load i32, i32* @SF_WR_ENABLE, align 4
  %50 = call i32 @sf1_write(%struct.adapter* %48, i32 1, i32 0, i32 1, i32 %49)
  store i32 %50, i32* %12, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %57, label %52

52:                                               ; preds = %43
  %53 = load %struct.adapter*, %struct.adapter** %7, align 8
  %54 = load i32, i32* %18, align 4
  %55 = call i32 @sf1_write(%struct.adapter* %53, i32 4, i32 1, i32 1, i32 %54)
  store i32 %55, i32* %12, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %52, %43
  br label %142

58:                                               ; preds = %52
  %59 = load i32, i32* %9, align 4
  store i32 %59, i32* %17, align 4
  br label %60

60:                                               ; preds = %99, %58
  %61 = load i32, i32* %17, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %103

63:                                               ; preds = %60
  %64 = load i32, i32* %17, align 4
  %65 = call i32 @min(i32 %64, i32 4)
  store i32 %65, i32* %16, align 4
  store i32 0, i32* %18, align 4
  store i32 0, i32* %15, align 4
  br label %66

66:                                               ; preds = %77, %63
  %67 = load i32, i32* %15, align 4
  %68 = load i32, i32* %16, align 4
  %69 = icmp ult i32 %67, %68
  br i1 %69, label %70, label %80

70:                                               ; preds = %66
  %71 = load i32, i32* %18, align 4
  %72 = shl i32 %71, 8
  %73 = load i32*, i32** %10, align 8
  %74 = getelementptr inbounds i32, i32* %73, i32 1
  store i32* %74, i32** %10, align 8
  %75 = load i32, i32* %73, align 4
  %76 = add i32 %72, %75
  store i32 %76, i32* %18, align 4
  br label %77

77:                                               ; preds = %70
  %78 = load i32, i32* %15, align 4
  %79 = add i32 %78, 1
  store i32 %79, i32* %15, align 4
  br label %66

80:                                               ; preds = %66
  %81 = load i32, i32* %11, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %86, label %83

83:                                               ; preds = %80
  %84 = load i32, i32* %18, align 4
  %85 = call i32 @cpu_to_be32(i32 %84)
  store i32 %85, i32* %18, align 4
  br label %86

86:                                               ; preds = %83, %80
  %87 = load %struct.adapter*, %struct.adapter** %7, align 8
  %88 = load i32, i32* %16, align 4
  %89 = load i32, i32* %16, align 4
  %90 = load i32, i32* %17, align 4
  %91 = icmp ne i32 %89, %90
  %92 = zext i1 %91 to i32
  %93 = load i32, i32* %18, align 4
  %94 = call i32 @sf1_write(%struct.adapter* %87, i32 %88, i32 %92, i32 1, i32 %93)
  store i32 %94, i32* %12, align 4
  %95 = load i32, i32* %12, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %98

97:                                               ; preds = %86
  br label %142

98:                                               ; preds = %86
  br label %99

99:                                               ; preds = %98
  %100 = load i32, i32* %16, align 4
  %101 = load i32, i32* %17, align 4
  %102 = sub i32 %101, %100
  store i32 %102, i32* %17, align 4
  br label %60

103:                                              ; preds = %60
  %104 = load %struct.adapter*, %struct.adapter** %7, align 8
  %105 = call i32 @flash_wait_op(%struct.adapter* %104, i32 8, i32 1)
  store i32 %105, i32* %12, align 4
  %106 = load i32, i32* %12, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %109

108:                                              ; preds = %103
  br label %142

109:                                              ; preds = %103
  %110 = load %struct.adapter*, %struct.adapter** %7, align 8
  %111 = load i32, i32* @A_SF_OP, align 4
  %112 = call i32 @t4_write_reg(%struct.adapter* %110, i32 %111, i32 0)
  %113 = load %struct.adapter*, %struct.adapter** %7, align 8
  %114 = load i32, i32* %8, align 4
  %115 = and i32 %114, -256
  %116 = call i32 @ARRAY_SIZE(i32* %25)
  %117 = load i32, i32* %11, align 4
  %118 = call i32 @t4_read_flash(%struct.adapter* %113, i32 %115, i32 %116, i32* %25, i32 %117)
  store i32 %118, i32* %12, align 4
  %119 = load i32, i32* %12, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %123

121:                                              ; preds = %109
  %122 = load i32, i32* %12, align 4
  store i32 %122, i32* %6, align 4
  store i32 1, i32* %20, align 4
  br label %147

123:                                              ; preds = %109
  %124 = load i32*, i32** %10, align 8
  %125 = load i32, i32* %9, align 4
  %126 = zext i32 %125 to i64
  %127 = sub i64 0, %126
  %128 = getelementptr inbounds i32, i32* %124, i64 %127
  %129 = load i32, i32* %19, align 4
  %130 = zext i32 %129 to i64
  %131 = getelementptr inbounds i32, i32* %25, i64 %130
  %132 = load i32, i32* %9, align 4
  %133 = call i64 @memcmp(i32* %128, i32* %131, i32 %132)
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %141

135:                                              ; preds = %123
  %136 = load %struct.adapter*, %struct.adapter** %7, align 8
  %137 = load i32, i32* %8, align 4
  %138 = call i32 @CH_ERR(%struct.adapter* %136, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i32 %137)
  %139 = load i32, i32* @EIO, align 4
  %140 = sub nsw i32 0, %139
  store i32 %140, i32* %6, align 4
  store i32 1, i32* %20, align 4
  br label %147

141:                                              ; preds = %123
  store i32 0, i32* %6, align 4
  store i32 1, i32* %20, align 4
  br label %147

142:                                              ; preds = %108, %97, %57
  %143 = load %struct.adapter*, %struct.adapter** %7, align 8
  %144 = load i32, i32* @A_SF_OP, align 4
  %145 = call i32 @t4_write_reg(%struct.adapter* %143, i32 %144, i32 0)
  %146 = load i32, i32* %12, align 4
  store i32 %146, i32* %6, align 4
  store i32 1, i32* %20, align 4
  br label %147

147:                                              ; preds = %142, %141, %135, %121, %40
  %148 = load i8*, i8** %13, align 8
  call void @llvm.stackrestore(i8* %148)
  %149 = load i32, i32* %6, align 4
  ret i32 %149
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @swab32(i32) #2

declare dso_local i32 @sf1_write(%struct.adapter*, i32, i32, i32, i32) #2

declare dso_local i32 @min(i32, i32) #2

declare dso_local i32 @cpu_to_be32(i32) #2

declare dso_local i32 @flash_wait_op(%struct.adapter*, i32, i32) #2

declare dso_local i32 @t4_write_reg(%struct.adapter*, i32, i32) #2

declare dso_local i32 @t4_read_flash(%struct.adapter*, i32, i32, i32*, i32) #2

declare dso_local i32 @ARRAY_SIZE(i32*) #2

declare dso_local i64 @memcmp(i32*, i32*, i32) #2

declare dso_local i32 @CH_ERR(%struct.adapter*, i8*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
