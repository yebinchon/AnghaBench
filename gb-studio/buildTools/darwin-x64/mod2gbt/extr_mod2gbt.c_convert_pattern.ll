; ModuleID = '/home/carl/AnghaBench/gb-studio/buildTools/darwin-x64/mod2gbt/extr_mod2gbt.c_convert_pattern.c'
source_filename = "/home/carl/AnghaBench/gb-studio/buildTools/darwin-x64/mod2gbt/extr_mod2gbt.c_convert_pattern.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32** }

@.str = private unnamed_addr constant [21 x i8] c"const unsigned char \00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@label_name = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [8 x i8] c"[] = {\0A\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c":\0A\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"  \00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"  DB  \00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c",\0A\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"};\0A\0A\00", align 1
@.str.10 = private unnamed_addr constant [3 x i8] c"\0A\0A\00", align 1

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
  %12 = call i32 @out_write_str(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  %13 = load i8*, i8** @label_name, align 8
  %14 = load i8*, i8** @label_name, align 8
  %15 = call i32 @out_write_str(i8* %13, i8* %14)
  %16 = load i32, i32* %4, align 4
  %17 = call i32 @out_write_dec(i32 %16)
  %18 = call i32 @out_write_str(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  br label %19

19:                                               ; preds = %134, %2
  %20 = load i32, i32* %5, align 4
  %21 = icmp slt i32 %20, 64
  br i1 %21, label %22, label %137

22:                                               ; preds = %19
  %23 = call i32 @out_write_str(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0))
  %24 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 0
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i32**, i32*** %26, align 8
  %28 = load i32, i32* %5, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i32*, i32** %27, i64 %29
  %31 = load i32*, i32** %30, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @memcpy(i32* %24, i32 %33, i32 4)
  %35 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 0
  %36 = call i32 @unpack_info(i32* %35, i32* %7, i32* %8, i32* %9, i32* %10)
  %37 = load i32, i32* %8, align 4
  %38 = load i32, i32* %4, align 4
  %39 = load i32, i32* %5, align 4
  %40 = call i32 @mod_get_index_from_period(i32 %37, i32 %38, i32 %39, i32 1)
  store i32 %40, i32* %11, align 4
  %41 = load i32, i32* %4, align 4
  %42 = load i32, i32* %5, align 4
  %43 = load i32, i32* %11, align 4
  %44 = load i32, i32* %7, align 4
  %45 = load i32, i32* %8, align 4
  %46 = load i32, i32* %9, align 4
  %47 = load i32, i32* %10, align 4
  %48 = call i32 @convert_channel1(i32 %41, i32 %42, i32 %43, i32 %44, i32 %45, i32 %46, i32 %47)
  %49 = call i32 @out_write_str(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0))
  %50 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 0
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 0
  %53 = load i32**, i32*** %52, align 8
  %54 = load i32, i32* %5, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32*, i32** %53, i64 %55
  %57 = load i32*, i32** %56, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 1
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @memcpy(i32* %50, i32 %59, i32 4)
  %61 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 0
  %62 = call i32 @unpack_info(i32* %61, i32* %7, i32* %8, i32* %9, i32* %10)
  %63 = load i32, i32* %8, align 4
  %64 = load i32, i32* %4, align 4
  %65 = load i32, i32* %5, align 4
  %66 = call i32 @mod_get_index_from_period(i32 %63, i32 %64, i32 %65, i32 2)
  store i32 %66, i32* %11, align 4
  %67 = load i32, i32* %4, align 4
  %68 = load i32, i32* %5, align 4
  %69 = load i32, i32* %11, align 4
  %70 = load i32, i32* %7, align 4
  %71 = load i32, i32* %8, align 4
  %72 = load i32, i32* %9, align 4
  %73 = load i32, i32* %10, align 4
  %74 = call i32 @convert_channel2(i32 %67, i32 %68, i32 %69, i32 %70, i32 %71, i32 %72, i32 %73)
  %75 = call i32 @out_write_str(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0))
  %76 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 0
  %77 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i32 0, i32 0
  %79 = load i32**, i32*** %78, align 8
  %80 = load i32, i32* %5, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i32*, i32** %79, i64 %81
  %83 = load i32*, i32** %82, align 8
  %84 = getelementptr inbounds i32, i32* %83, i64 2
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @memcpy(i32* %76, i32 %85, i32 4)
  %87 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 0
  %88 = call i32 @unpack_info(i32* %87, i32* %7, i32* %8, i32* %9, i32* %10)
  %89 = load i32, i32* %8, align 4
  %90 = load i32, i32* %4, align 4
  %91 = load i32, i32* %5, align 4
  %92 = call i32 @mod_get_index_from_period(i32 %89, i32 %90, i32 %91, i32 3)
  store i32 %92, i32* %11, align 4
  %93 = load i32, i32* %4, align 4
  %94 = load i32, i32* %5, align 4
  %95 = load i32, i32* %11, align 4
  %96 = load i32, i32* %7, align 4
  %97 = load i32, i32* %8, align 4
  %98 = load i32, i32* %9, align 4
  %99 = load i32, i32* %10, align 4
  %100 = call i32 @convert_channel3(i32 %93, i32 %94, i32 %95, i32 %96, i32 %97, i32 %98, i32 %99)
  %101 = call i32 @out_write_str(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0))
  %102 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 0
  %103 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %104 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %103, i32 0, i32 0
  %105 = load i32**, i32*** %104, align 8
  %106 = load i32, i32* %5, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i32*, i32** %105, i64 %107
  %109 = load i32*, i32** %108, align 8
  %110 = getelementptr inbounds i32, i32* %109, i64 3
  %111 = load i32, i32* %110, align 4
  %112 = call i32 @memcpy(i32* %102, i32 %111, i32 4)
  %113 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 0
  %114 = call i32 @unpack_info(i32* %113, i32* %7, i32* %8, i32* %9, i32* %10)
  %115 = load i32, i32* %8, align 4
  %116 = load i32, i32* %4, align 4
  %117 = load i32, i32* %5, align 4
  %118 = call i32 @mod_get_index_from_period(i32 %115, i32 %116, i32 %117, i32 4)
  store i32 %118, i32* %11, align 4
  %119 = load i32, i32* %4, align 4
  %120 = load i32, i32* %5, align 4
  %121 = load i32, i32* %11, align 4
  %122 = load i32, i32* %7, align 4
  %123 = load i32, i32* %8, align 4
  %124 = load i32, i32* %9, align 4
  %125 = load i32, i32* %10, align 4
  %126 = call i32 @convert_channel4(i32 %119, i32 %120, i32 %121, i32 %122, i32 %123, i32 %124, i32 %125)
  %127 = load i32, i32* %5, align 4
  %128 = icmp eq i32 %127, 63
  br i1 %128, label %129, label %131

129:                                              ; preds = %22
  %130 = call i32 @out_write_str(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0))
  br label %133

131:                                              ; preds = %22
  %132 = call i32 @out_write_str(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0))
  br label %133

133:                                              ; preds = %131, %129
  br label %134

134:                                              ; preds = %133
  %135 = load i32, i32* %5, align 4
  %136 = add nsw i32 %135, 1
  store i32 %136, i32* %5, align 4
  br label %19

137:                                              ; preds = %19
  %138 = call i32 @out_write_str(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i64 0, i64 0))
  ret void
}

declare dso_local i32 @out_write_str(i8*, i8*) #1

declare dso_local i32 @out_write_dec(i32) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

declare dso_local i32 @unpack_info(i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @mod_get_index_from_period(i32, i32, i32, i32) #1

declare dso_local i32 @convert_channel1(i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @convert_channel2(i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @convert_channel3(i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @convert_channel4(i32, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
