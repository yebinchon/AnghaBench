; ModuleID = '/home/carl/AnghaBench/gb-studio/buildTools/win32-ia32/mod2gbt/extr_mod2gbt.c_convert_channel2.c'
source_filename = "/home/carl/AnghaBench/gb-studio/buildTools/win32-ia32/mod2gbt/extr_mod2gbt.c_convert_channel2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [61 x i8] c"Invalid command at pattern %d, step %d, channel 2: %01X%02X\0A\00", align 1
@.str.1 = private unnamed_addr constant [51 x i8] c"You need to set the volume when using a new note.\0A\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"0x\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"$\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c",0x\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c",$\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @convert_channel2(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca [3 x i32], align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store i32 %0, i32* %8, align 4
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  %22 = bitcast [3 x i32]* %15 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %22, i8 0, i64 12, i1 false)
  store i32 1, i32* %16, align 4
  %23 = load i32, i32* %11, align 4
  %24 = and i32 %23, 3
  store i32 %24, i32* %17, align 4
  %25 = load i32, i32* %10, align 4
  %26 = icmp sgt i32 %25, 71
  br i1 %26, label %27, label %75

27:                                               ; preds = %7
  %28 = load i32, i32* %13, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %33, label %30

30:                                               ; preds = %27
  %31 = load i32, i32* %14, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %72

33:                                               ; preds = %30, %27
  %34 = load i32, i32* %13, align 4
  %35 = icmp eq i32 %34, 12
  br i1 %35, label %36, label %42

36:                                               ; preds = %33
  %37 = call i32 @BIT(i32 5)
  %38 = load i32, i32* %14, align 4
  %39 = call i32 @VOLUME_MOD_TO_GB(i32 %38)
  %40 = or i32 %37, %39
  %41 = getelementptr inbounds [3 x i32], [3 x i32]* %15, i64 0, i64 0
  store i32 %40, i32* %41, align 4
  store i32 1, i32* %16, align 4
  br label %71

42:                                               ; preds = %33
  %43 = load i32, i32* %8, align 4
  %44 = load i32, i32* %9, align 4
  %45 = load i32, i32* %13, align 4
  %46 = load i32, i32* %14, align 4
  %47 = call i32 @EFFECT_MOD_TO_GB(i32 %43, i32 %44, i32 2, i32 %45, i32 %46, i32* %18, i32* %19)
  %48 = icmp eq i32 %47, 1
  br i1 %48, label %49, label %59

49:                                               ; preds = %42
  %50 = call i32 @BIT(i32 6)
  %51 = load i32, i32* %17, align 4
  %52 = shl i32 %51, 4
  %53 = or i32 %50, %52
  %54 = load i32, i32* %18, align 4
  %55 = or i32 %53, %54
  %56 = getelementptr inbounds [3 x i32], [3 x i32]* %15, i64 0, i64 0
  store i32 %55, i32* %56, align 4
  %57 = load i32, i32* %19, align 4
  %58 = getelementptr inbounds [3 x i32], [3 x i32]* %15, i64 0, i64 1
  store i32 %57, i32* %58, align 4
  store i32 2, i32* %16, align 4
  br label %70

59:                                               ; preds = %42
  %60 = load i32, i32* %13, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %68

62:                                               ; preds = %59
  %63 = load i32, i32* %8, align 4
  %64 = load i32, i32* %9, align 4
  %65 = load i32, i32* %13, align 4
  %66 = load i32, i32* %14, align 4
  %67 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str, i64 0, i64 0), i32 %63, i32 %64, i32 %65, i32 %66)
  br label %68

68:                                               ; preds = %62, %59
  %69 = getelementptr inbounds [3 x i32], [3 x i32]* %15, i64 0, i64 0
  store i32 0, i32* %69, align 4
  store i32 1, i32* %16, align 4
  br label %70

70:                                               ; preds = %68, %49
  br label %71

71:                                               ; preds = %70, %36
  br label %74

72:                                               ; preds = %30
  %73 = getelementptr inbounds [3 x i32], [3 x i32]* %15, i64 0, i64 0
  store i32 0, i32* %73, align 4
  store i32 1, i32* %16, align 4
  br label %74

74:                                               ; preds = %72, %71
  br label %123

75:                                               ; preds = %7
  %76 = load i32, i32* %13, align 4
  %77 = icmp eq i32 %76, 12
  br i1 %77, label %78, label %89

78:                                               ; preds = %75
  %79 = call i32 @BIT(i32 7)
  %80 = load i32, i32* %10, align 4
  %81 = or i32 %79, %80
  %82 = getelementptr inbounds [3 x i32], [3 x i32]* %15, i64 0, i64 0
  store i32 %81, i32* %82, align 4
  %83 = load i32, i32* %17, align 4
  %84 = shl i32 %83, 4
  %85 = load i32, i32* %14, align 4
  %86 = call i32 @VOLUME_MOD_TO_GB(i32 %85)
  %87 = or i32 %84, %86
  %88 = getelementptr inbounds [3 x i32], [3 x i32]* %15, i64 0, i64 1
  store i32 %87, i32* %88, align 4
  store i32 2, i32* %16, align 4
  br label %122

89:                                               ; preds = %75
  %90 = load i32, i32* %8, align 4
  %91 = load i32, i32* %9, align 4
  %92 = load i32, i32* %13, align 4
  %93 = load i32, i32* %14, align 4
  %94 = call i32 @EFFECT_MOD_TO_GB(i32 %90, i32 %91, i32 2, i32 %92, i32 %93, i32* %20, i32* %21)
  %95 = icmp eq i32 %94, 1
  br i1 %95, label %96, label %110

96:                                               ; preds = %89
  %97 = call i32 @BIT(i32 7)
  %98 = load i32, i32* %10, align 4
  %99 = or i32 %97, %98
  %100 = getelementptr inbounds [3 x i32], [3 x i32]* %15, i64 0, i64 0
  store i32 %99, i32* %100, align 4
  %101 = call i32 @BIT(i32 7)
  %102 = load i32, i32* %17, align 4
  %103 = shl i32 %102, 4
  %104 = or i32 %101, %103
  %105 = load i32, i32* %20, align 4
  %106 = or i32 %104, %105
  %107 = getelementptr inbounds [3 x i32], [3 x i32]* %15, i64 0, i64 1
  store i32 %106, i32* %107, align 4
  %108 = load i32, i32* %21, align 4
  %109 = getelementptr inbounds [3 x i32], [3 x i32]* %15, i64 0, i64 2
  store i32 %108, i32* %109, align 4
  store i32 3, i32* %16, align 4
  br label %121

110:                                              ; preds = %89
  %111 = load i32, i32* %8, align 4
  %112 = load i32, i32* %9, align 4
  %113 = load i32, i32* %13, align 4
  %114 = load i32, i32* %14, align 4
  %115 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str, i64 0, i64 0), i32 %111, i32 %112, i32 %113, i32 %114)
  %116 = load i32, i32* %13, align 4
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %118, label %120

118:                                              ; preds = %110
  %119 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0))
  br label %120

120:                                              ; preds = %118, %110
  br label %121

121:                                              ; preds = %120, %96
  br label %122

122:                                              ; preds = %121, %78
  br label %123

123:                                              ; preds = %122, %74
  %124 = call i32 @out_write_str(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %125 = getelementptr inbounds [3 x i32], [3 x i32]* %15, i64 0, i64 0
  %126 = load i32, i32* %125, align 4
  %127 = call i32 @out_write_hex(i32 %126)
  %128 = load i32, i32* %16, align 4
  %129 = icmp sgt i32 %128, 1
  br i1 %129, label %130, label %143

130:                                              ; preds = %123
  %131 = call i32 @out_write_str(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0))
  %132 = getelementptr inbounds [3 x i32], [3 x i32]* %15, i64 0, i64 1
  %133 = load i32, i32* %132, align 4
  %134 = call i32 @out_write_hex(i32 %133)
  %135 = load i32, i32* %16, align 4
  %136 = icmp sgt i32 %135, 2
  br i1 %136, label %137, label %142

137:                                              ; preds = %130
  %138 = call i32 @out_write_str(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0))
  %139 = getelementptr inbounds [3 x i32], [3 x i32]* %15, i64 0, i64 2
  %140 = load i32, i32* %139, align 4
  %141 = call i32 @out_write_hex(i32 %140)
  br label %142

142:                                              ; preds = %137, %130
  br label %143

143:                                              ; preds = %142, %123
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @BIT(i32) #2

declare dso_local i32 @VOLUME_MOD_TO_GB(i32) #2

declare dso_local i32 @EFFECT_MOD_TO_GB(i32, i32, i32, i32, i32, i32*, i32*) #2

declare dso_local i32 @printf(i8*, ...) #2

declare dso_local i32 @out_write_str(i8*, i8*) #2

declare dso_local i32 @out_write_hex(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
