; ModuleID = '/home/carl/AnghaBench/gb-studio/buildTools/linux-x64/mod2gbt/extr_mod2gbt.c_convert_channel4.c'
source_filename = "/home/carl/AnghaBench/gb-studio/buildTools/linux-x64/mod2gbt/extr_mod2gbt.c_convert_channel4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [61 x i8] c"Invalid command at pattern %d, step %d, channel 4: %01X%02X\0A\00", align 1
@.str.1 = private unnamed_addr constant [43 x i8] c"Volume must be set when using a new note.\0A\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"0x\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c",0x\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @convert_channel4(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca [3 x i32], align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %20 = bitcast [3 x i32]* %13 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %20, i8 0, i64 12, i1 false)
  store i32 1, i32* %14, align 4
  %21 = load i32, i32* %9, align 4
  %22 = icmp sgt i32 %21, 71
  br i1 %22, label %23, label %68

23:                                               ; preds = %6
  %24 = load i32, i32* %11, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %23
  %27 = load i32, i32* %12, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %65

29:                                               ; preds = %26, %23
  %30 = load i32, i32* %11, align 4
  %31 = icmp eq i32 %30, 12
  br i1 %31, label %32, label %38

32:                                               ; preds = %29
  %33 = call i32 @BIT(i32 5)
  %34 = load i32, i32* %12, align 4
  %35 = call i32 @volume_mod_to_gb(i32 %34)
  %36 = or i32 %33, %35
  %37 = getelementptr inbounds [3 x i32], [3 x i32]* %13, i64 0, i64 0
  store i32 %36, i32* %37, align 4
  store i32 1, i32* %14, align 4
  br label %64

38:                                               ; preds = %29
  %39 = load i32, i32* %7, align 4
  %40 = load i32, i32* %8, align 4
  %41 = load i32, i32* %11, align 4
  %42 = load i32, i32* %12, align 4
  %43 = call i32 @effect_mod_to_gb(i32 %39, i32 %40, i32 4, i32 %41, i32 %42, i32* %15, i32* %16)
  %44 = icmp eq i32 %43, 1
  br i1 %44, label %45, label %52

45:                                               ; preds = %38
  %46 = call i32 @BIT(i32 6)
  %47 = load i32, i32* %15, align 4
  %48 = or i32 %46, %47
  %49 = getelementptr inbounds [3 x i32], [3 x i32]* %13, i64 0, i64 0
  store i32 %48, i32* %49, align 4
  %50 = load i32, i32* %16, align 4
  %51 = getelementptr inbounds [3 x i32], [3 x i32]* %13, i64 0, i64 1
  store i32 %50, i32* %51, align 4
  store i32 2, i32* %14, align 4
  br label %63

52:                                               ; preds = %38
  %53 = load i32, i32* %11, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %61

55:                                               ; preds = %52
  %56 = load i32, i32* %7, align 4
  %57 = load i32, i32* %8, align 4
  %58 = load i32, i32* %11, align 4
  %59 = load i32, i32* %12, align 4
  %60 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str, i64 0, i64 0), i32 %56, i32 %57, i32 %58, i32 %59)
  br label %61

61:                                               ; preds = %55, %52
  %62 = getelementptr inbounds [3 x i32], [3 x i32]* %13, i64 0, i64 0
  store i32 0, i32* %62, align 4
  store i32 1, i32* %14, align 4
  br label %63

63:                                               ; preds = %61, %45
  br label %64

64:                                               ; preds = %63, %32
  br label %67

65:                                               ; preds = %26
  %66 = getelementptr inbounds [3 x i32], [3 x i32]* %13, i64 0, i64 0
  store i32 0, i32* %66, align 4
  store i32 1, i32* %14, align 4
  br label %67

67:                                               ; preds = %65, %64
  br label %113

68:                                               ; preds = %6
  %69 = load i32, i32* %10, align 4
  %70 = sub nsw i32 %69, 16
  %71 = and i32 %70, 31
  store i32 %71, i32* %17, align 4
  %72 = load i32, i32* %11, align 4
  %73 = icmp eq i32 %72, 12
  br i1 %73, label %74, label %82

74:                                               ; preds = %68
  %75 = call i32 @BIT(i32 7)
  %76 = load i32, i32* %17, align 4
  %77 = or i32 %75, %76
  %78 = getelementptr inbounds [3 x i32], [3 x i32]* %13, i64 0, i64 0
  store i32 %77, i32* %78, align 4
  %79 = load i32, i32* %12, align 4
  %80 = call i32 @volume_mod_to_gb(i32 %79)
  %81 = getelementptr inbounds [3 x i32], [3 x i32]* %13, i64 0, i64 1
  store i32 %80, i32* %81, align 4
  store i32 2, i32* %14, align 4
  br label %112

82:                                               ; preds = %68
  %83 = load i32, i32* %7, align 4
  %84 = load i32, i32* %8, align 4
  %85 = load i32, i32* %11, align 4
  %86 = load i32, i32* %12, align 4
  %87 = call i32 @effect_mod_to_gb(i32 %83, i32 %84, i32 4, i32 %85, i32 %86, i32* %18, i32* %19)
  %88 = icmp eq i32 %87, 1
  br i1 %88, label %89, label %100

89:                                               ; preds = %82
  %90 = call i32 @BIT(i32 7)
  %91 = load i32, i32* %17, align 4
  %92 = or i32 %90, %91
  %93 = getelementptr inbounds [3 x i32], [3 x i32]* %13, i64 0, i64 0
  store i32 %92, i32* %93, align 4
  %94 = call i32 @BIT(i32 7)
  %95 = load i32, i32* %18, align 4
  %96 = or i32 %94, %95
  %97 = getelementptr inbounds [3 x i32], [3 x i32]* %13, i64 0, i64 1
  store i32 %96, i32* %97, align 4
  %98 = load i32, i32* %19, align 4
  %99 = getelementptr inbounds [3 x i32], [3 x i32]* %13, i64 0, i64 2
  store i32 %98, i32* %99, align 4
  store i32 3, i32* %14, align 4
  br label %111

100:                                              ; preds = %82
  %101 = load i32, i32* %7, align 4
  %102 = load i32, i32* %8, align 4
  %103 = load i32, i32* %11, align 4
  %104 = load i32, i32* %12, align 4
  %105 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str, i64 0, i64 0), i32 %101, i32 %102, i32 %103, i32 %104)
  %106 = load i32, i32* %11, align 4
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %108, label %110

108:                                              ; preds = %100
  %109 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0))
  br label %110

110:                                              ; preds = %108, %100
  br label %111

111:                                              ; preds = %110, %89
  br label %112

112:                                              ; preds = %111, %74
  br label %113

113:                                              ; preds = %112, %67
  %114 = call i32 @out_write_str(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  %115 = getelementptr inbounds [3 x i32], [3 x i32]* %13, i64 0, i64 0
  %116 = load i32, i32* %115, align 4
  %117 = call i32 @out_write_hex(i32 %116)
  %118 = load i32, i32* %14, align 4
  %119 = icmp sgt i32 %118, 1
  br i1 %119, label %120, label %133

120:                                              ; preds = %113
  %121 = call i32 @out_write_str(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  %122 = getelementptr inbounds [3 x i32], [3 x i32]* %13, i64 0, i64 1
  %123 = load i32, i32* %122, align 4
  %124 = call i32 @out_write_hex(i32 %123)
  %125 = load i32, i32* %14, align 4
  %126 = icmp sgt i32 %125, 2
  br i1 %126, label %127, label %132

127:                                              ; preds = %120
  %128 = call i32 @out_write_str(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  %129 = getelementptr inbounds [3 x i32], [3 x i32]* %13, i64 0, i64 2
  %130 = load i32, i32* %129, align 4
  %131 = call i32 @out_write_hex(i32 %130)
  br label %132

132:                                              ; preds = %127, %120
  br label %133

133:                                              ; preds = %132, %113
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @BIT(i32) #2

declare dso_local i32 @volume_mod_to_gb(i32) #2

declare dso_local i32 @effect_mod_to_gb(i32, i32, i32, i32, i32, i32*, i32*) #2

declare dso_local i32 @printf(i8*, ...) #2

declare dso_local i32 @out_write_str(i8*) #2

declare dso_local i32 @out_write_hex(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
