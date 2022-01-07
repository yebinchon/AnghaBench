; ModuleID = '/home/carl/AnghaBench/gb-studio/buildTools/linux-x64/mod2gbt/extr_mod2gbt.c_convert_pattern.c'
source_filename = "/home/carl/AnghaBench/gb-studio/buildTools/linux-x64/mod2gbt/extr_mod2gbt.c_convert_pattern.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32** }

@.str = private unnamed_addr constant [21 x i8] c"const unsigned char \00", align 1
@label_name = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [8 x i8] c"[] = {\0A\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"  \00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c",\0A\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"};\0A\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @convert_pattern(%struct.TYPE_3__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca [4 x i32], align 16
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  store i32 %1, i32* %4, align 4
  %12 = call i32 @out_write_str(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %13 = load i8*, i8** @label_name, align 8
  %14 = call i32 @out_write_str(i8* %13)
  %15 = load i32, i32* %4, align 4
  %16 = call i32 @out_write_dec(i32 %15)
  %17 = call i32 @out_write_str(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  br label %18

18:                                               ; preds = %129, %2
  %19 = load i32, i32* %5, align 4
  %20 = icmp slt i32 %19, 64
  br i1 %20, label %21, label %132

21:                                               ; preds = %18
  %22 = call i32 @out_write_str(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  %23 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 0
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i32**, i32*** %25, align 8
  %27 = load i32, i32* %5, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i32*, i32** %26, i64 %28
  %30 = load i32*, i32** %29, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @memcpy(i32* %23, i32 %32, i32 4)
  %34 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 0
  %35 = call i32 @unpack_info(i32* %34, i32* %7, i32* %8, i32* %9, i32* %10)
  %36 = load i32, i32* %8, align 4
  %37 = load i32, i32* %4, align 4
  %38 = load i32, i32* %5, align 4
  %39 = call i32 @mod_get_index_from_period(i32 %36, i32 %37, i32 %38, i32 1)
  store i32 %39, i32* %11, align 4
  %40 = load i32, i32* %4, align 4
  %41 = load i32, i32* %5, align 4
  %42 = load i32, i32* %11, align 4
  %43 = load i32, i32* %7, align 4
  %44 = load i32, i32* %9, align 4
  %45 = load i32, i32* %10, align 4
  %46 = call i32 @convert_channel1(i32 %40, i32 %41, i32 %42, i32 %43, i32 %44, i32 %45)
  %47 = call i32 @out_write_str(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  %48 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 0
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 0
  %51 = load i32**, i32*** %50, align 8
  %52 = load i32, i32* %5, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i32*, i32** %51, i64 %53
  %55 = load i32*, i32** %54, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 1
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @memcpy(i32* %48, i32 %57, i32 4)
  %59 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 0
  %60 = call i32 @unpack_info(i32* %59, i32* %7, i32* %8, i32* %9, i32* %10)
  %61 = load i32, i32* %8, align 4
  %62 = load i32, i32* %4, align 4
  %63 = load i32, i32* %5, align 4
  %64 = call i32 @mod_get_index_from_period(i32 %61, i32 %62, i32 %63, i32 2)
  store i32 %64, i32* %11, align 4
  %65 = load i32, i32* %4, align 4
  %66 = load i32, i32* %5, align 4
  %67 = load i32, i32* %11, align 4
  %68 = load i32, i32* %7, align 4
  %69 = load i32, i32* %9, align 4
  %70 = load i32, i32* %10, align 4
  %71 = call i32 @convert_channel2(i32 %65, i32 %66, i32 %67, i32 %68, i32 %69, i32 %70)
  %72 = call i32 @out_write_str(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  %73 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 0
  %74 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 0
  %76 = load i32**, i32*** %75, align 8
  %77 = load i32, i32* %5, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i32*, i32** %76, i64 %78
  %80 = load i32*, i32** %79, align 8
  %81 = getelementptr inbounds i32, i32* %80, i64 2
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @memcpy(i32* %73, i32 %82, i32 4)
  %84 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 0
  %85 = call i32 @unpack_info(i32* %84, i32* %7, i32* %8, i32* %9, i32* %10)
  %86 = load i32, i32* %8, align 4
  %87 = load i32, i32* %4, align 4
  %88 = load i32, i32* %5, align 4
  %89 = call i32 @mod_get_index_from_period(i32 %86, i32 %87, i32 %88, i32 3)
  store i32 %89, i32* %11, align 4
  %90 = load i32, i32* %4, align 4
  %91 = load i32, i32* %5, align 4
  %92 = load i32, i32* %11, align 4
  %93 = load i32, i32* %7, align 4
  %94 = load i32, i32* %9, align 4
  %95 = load i32, i32* %10, align 4
  %96 = call i32 @convert_channel3(i32 %90, i32 %91, i32 %92, i32 %93, i32 %94, i32 %95)
  %97 = call i32 @out_write_str(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  %98 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 0
  %99 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %100 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %99, i32 0, i32 0
  %101 = load i32**, i32*** %100, align 8
  %102 = load i32, i32* %5, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i32*, i32** %101, i64 %103
  %105 = load i32*, i32** %104, align 8
  %106 = getelementptr inbounds i32, i32* %105, i64 3
  %107 = load i32, i32* %106, align 4
  %108 = call i32 @memcpy(i32* %98, i32 %107, i32 4)
  %109 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 0
  %110 = call i32 @unpack_info(i32* %109, i32* %7, i32* %8, i32* %9, i32* %10)
  %111 = load i32, i32* %8, align 4
  %112 = load i32, i32* %4, align 4
  %113 = load i32, i32* %5, align 4
  %114 = call i32 @mod_get_index_from_period(i32 %111, i32 %112, i32 %113, i32 4)
  store i32 %114, i32* %11, align 4
  %115 = load i32, i32* %4, align 4
  %116 = load i32, i32* %5, align 4
  %117 = load i32, i32* %11, align 4
  %118 = load i32, i32* %7, align 4
  %119 = load i32, i32* %9, align 4
  %120 = load i32, i32* %10, align 4
  %121 = call i32 @convert_channel4(i32 %115, i32 %116, i32 %117, i32 %118, i32 %119, i32 %120)
  %122 = load i32, i32* %5, align 4
  %123 = icmp eq i32 %122, 63
  br i1 %123, label %124, label %126

124:                                              ; preds = %21
  %125 = call i32 @out_write_str(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  br label %128

126:                                              ; preds = %21
  %127 = call i32 @out_write_str(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0))
  br label %128

128:                                              ; preds = %126, %124
  br label %129

129:                                              ; preds = %128
  %130 = load i32, i32* %5, align 4
  %131 = add nsw i32 %130, 1
  store i32 %131, i32* %5, align 4
  br label %18

132:                                              ; preds = %18
  %133 = call i32 @out_write_str(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0))
  ret void
}

declare dso_local i32 @out_write_str(i8*) #1

declare dso_local i32 @out_write_dec(i32) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

declare dso_local i32 @unpack_info(i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @mod_get_index_from_period(i32, i32, i32, i32) #1

declare dso_local i32 @convert_channel1(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @convert_channel2(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @convert_channel3(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @convert_channel4(i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
