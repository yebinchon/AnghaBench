; ModuleID = '/home/carl/AnghaBench/gb-studio/buildTools/linux-x64/mod2gbt/extr_mod2gbt.c_convert_channel1.c'
source_filename = "/home/carl/AnghaBench/gb-studio/buildTools/linux-x64/mod2gbt/extr_mod2gbt.c_convert_channel1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [61 x i8] c"Invalid command at pattern %d, step %d, channel 1: %01X%02X\0A\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"Volume must be set when using a note.\0A\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"0x\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c",0x\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @convert_channel1(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
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
  %21 = load i32, i32* %10, align 4
  %22 = and i32 %21, 3
  store i32 %22, i32* %15, align 4
  %23 = load i32, i32* %9, align 4
  %24 = icmp sgt i32 %23, 71
  br i1 %24, label %25, label %73

25:                                               ; preds = %6
  %26 = load i32, i32* %11, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %25
  %29 = load i32, i32* %12, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %70

31:                                               ; preds = %28, %25
  %32 = load i32, i32* %11, align 4
  %33 = icmp eq i32 %32, 12
  br i1 %33, label %34, label %40

34:                                               ; preds = %31
  %35 = call i32 @BIT(i32 5)
  %36 = load i32, i32* %12, align 4
  %37 = call i32 @volume_mod_to_gb(i32 %36)
  %38 = or i32 %35, %37
  %39 = getelementptr inbounds [3 x i32], [3 x i32]* %13, i64 0, i64 0
  store i32 %38, i32* %39, align 4
  store i32 1, i32* %14, align 4
  br label %69

40:                                               ; preds = %31
  %41 = load i32, i32* %7, align 4
  %42 = load i32, i32* %8, align 4
  %43 = load i32, i32* %11, align 4
  %44 = load i32, i32* %12, align 4
  %45 = call i32 @effect_mod_to_gb(i32 %41, i32 %42, i32 1, i32 %43, i32 %44, i32* %16, i32* %17)
  %46 = icmp eq i32 %45, 1
  br i1 %46, label %47, label %57

47:                                               ; preds = %40
  %48 = call i32 @BIT(i32 6)
  %49 = load i32, i32* %15, align 4
  %50 = shl i32 %49, 4
  %51 = or i32 %48, %50
  %52 = load i32, i32* %16, align 4
  %53 = or i32 %51, %52
  %54 = getelementptr inbounds [3 x i32], [3 x i32]* %13, i64 0, i64 0
  store i32 %53, i32* %54, align 4
  %55 = load i32, i32* %17, align 4
  %56 = getelementptr inbounds [3 x i32], [3 x i32]* %13, i64 0, i64 1
  store i32 %55, i32* %56, align 4
  store i32 2, i32* %14, align 4
  br label %68

57:                                               ; preds = %40
  %58 = load i32, i32* %11, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %66

60:                                               ; preds = %57
  %61 = load i32, i32* %7, align 4
  %62 = load i32, i32* %8, align 4
  %63 = load i32, i32* %11, align 4
  %64 = load i32, i32* %12, align 4
  %65 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str, i64 0, i64 0), i32 %61, i32 %62, i32 %63, i32 %64)
  br label %66

66:                                               ; preds = %60, %57
  %67 = getelementptr inbounds [3 x i32], [3 x i32]* %13, i64 0, i64 0
  store i32 0, i32* %67, align 4
  store i32 1, i32* %14, align 4
  br label %68

68:                                               ; preds = %66, %47
  br label %69

69:                                               ; preds = %68, %34
  br label %72

70:                                               ; preds = %28
  %71 = getelementptr inbounds [3 x i32], [3 x i32]* %13, i64 0, i64 0
  store i32 0, i32* %71, align 4
  store i32 1, i32* %14, align 4
  br label %72

72:                                               ; preds = %70, %69
  br label %121

73:                                               ; preds = %6
  %74 = load i32, i32* %11, align 4
  %75 = icmp eq i32 %74, 12
  br i1 %75, label %76, label %87

76:                                               ; preds = %73
  %77 = call i32 @BIT(i32 7)
  %78 = load i32, i32* %9, align 4
  %79 = or i32 %77, %78
  %80 = getelementptr inbounds [3 x i32], [3 x i32]* %13, i64 0, i64 0
  store i32 %79, i32* %80, align 4
  %81 = load i32, i32* %15, align 4
  %82 = shl i32 %81, 4
  %83 = load i32, i32* %12, align 4
  %84 = call i32 @volume_mod_to_gb(i32 %83)
  %85 = or i32 %82, %84
  %86 = getelementptr inbounds [3 x i32], [3 x i32]* %13, i64 0, i64 1
  store i32 %85, i32* %86, align 4
  store i32 2, i32* %14, align 4
  br label %120

87:                                               ; preds = %73
  %88 = load i32, i32* %7, align 4
  %89 = load i32, i32* %8, align 4
  %90 = load i32, i32* %11, align 4
  %91 = load i32, i32* %12, align 4
  %92 = call i32 @effect_mod_to_gb(i32 %88, i32 %89, i32 1, i32 %90, i32 %91, i32* %18, i32* %19)
  %93 = icmp eq i32 %92, 1
  br i1 %93, label %94, label %108

94:                                               ; preds = %87
  %95 = call i32 @BIT(i32 7)
  %96 = load i32, i32* %9, align 4
  %97 = or i32 %95, %96
  %98 = getelementptr inbounds [3 x i32], [3 x i32]* %13, i64 0, i64 0
  store i32 %97, i32* %98, align 4
  %99 = call i32 @BIT(i32 7)
  %100 = load i32, i32* %15, align 4
  %101 = shl i32 %100, 4
  %102 = or i32 %99, %101
  %103 = load i32, i32* %18, align 4
  %104 = or i32 %102, %103
  %105 = getelementptr inbounds [3 x i32], [3 x i32]* %13, i64 0, i64 1
  store i32 %104, i32* %105, align 4
  %106 = load i32, i32* %19, align 4
  %107 = getelementptr inbounds [3 x i32], [3 x i32]* %13, i64 0, i64 2
  store i32 %106, i32* %107, align 4
  store i32 3, i32* %14, align 4
  br label %119

108:                                              ; preds = %87
  %109 = load i32, i32* %7, align 4
  %110 = load i32, i32* %8, align 4
  %111 = load i32, i32* %11, align 4
  %112 = load i32, i32* %12, align 4
  %113 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str, i64 0, i64 0), i32 %109, i32 %110, i32 %111, i32 %112)
  %114 = load i32, i32* %11, align 4
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %116, label %118

116:                                              ; preds = %108
  %117 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  br label %118

118:                                              ; preds = %116, %108
  br label %119

119:                                              ; preds = %118, %94
  br label %120

120:                                              ; preds = %119, %76
  br label %121

121:                                              ; preds = %120, %72
  %122 = call i32 @out_write_str(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  %123 = getelementptr inbounds [3 x i32], [3 x i32]* %13, i64 0, i64 0
  %124 = load i32, i32* %123, align 4
  %125 = call i32 @out_write_hex(i32 %124)
  %126 = load i32, i32* %14, align 4
  %127 = icmp sgt i32 %126, 1
  br i1 %127, label %128, label %141

128:                                              ; preds = %121
  %129 = call i32 @out_write_str(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  %130 = getelementptr inbounds [3 x i32], [3 x i32]* %13, i64 0, i64 1
  %131 = load i32, i32* %130, align 4
  %132 = call i32 @out_write_hex(i32 %131)
  %133 = load i32, i32* %14, align 4
  %134 = icmp sgt i32 %133, 2
  br i1 %134, label %135, label %140

135:                                              ; preds = %128
  %136 = call i32 @out_write_str(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  %137 = getelementptr inbounds [3 x i32], [3 x i32]* %13, i64 0, i64 2
  %138 = load i32, i32* %137, align 4
  %139 = call i32 @out_write_hex(i32 %138)
  br label %140

140:                                              ; preds = %135, %128
  br label %141

141:                                              ; preds = %140, %121
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
