; ModuleID = '/home/carl/AnghaBench/gb-studio/buildTools/linux-x64/mod2gbt/extr_mod2gbt.c_convert_channel3.c'
source_filename = "/home/carl/AnghaBench/gb-studio/buildTools/linux-x64/mod2gbt/extr_mod2gbt.c_convert_channel3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [61 x i8] c"Invalid command at pattern %d, step %d, channel 3: %01X%02X\0A\00", align 1
@.str.1 = private unnamed_addr constant [92 x i8] c"Invalid command at pattern %d, step %d, channel 3: %01X%02X\0AOnly 0-7 allowed in this mode.\0A\00", align 1
@.str.2 = private unnamed_addr constant [39 x i8] c"Volume must be set when using a note.\0A\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"0x\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c",0x\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @convert_channel3(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
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
  %35 = call i32 @volume_mod_to_gb_ch3(i32 %34)
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
  %43 = call i32 @effect_mod_to_gb(i32 %39, i32 %40, i32 3, i32 %41, i32 %42, i32* %15, i32* %16)
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
  br label %129

68:                                               ; preds = %6
  %69 = load i32, i32* %10, align 4
  %70 = sub nsw i32 %69, 8
  %71 = and i32 %70, 15
  store i32 %71, i32* %17, align 4
  %72 = load i32, i32* %11, align 4
  %73 = icmp eq i32 %72, 12
  br i1 %73, label %74, label %85

74:                                               ; preds = %68
  %75 = call i32 @BIT(i32 7)
  %76 = load i32, i32* %9, align 4
  %77 = or i32 %75, %76
  %78 = getelementptr inbounds [3 x i32], [3 x i32]* %13, i64 0, i64 0
  store i32 %77, i32* %78, align 4
  %79 = load i32, i32* %12, align 4
  %80 = call i32 @volume_mod_to_gb_ch3(i32 %79)
  %81 = shl i32 %80, 4
  %82 = load i32, i32* %17, align 4
  %83 = or i32 %81, %82
  %84 = getelementptr inbounds [3 x i32], [3 x i32]* %13, i64 0, i64 1
  store i32 %83, i32* %84, align 4
  store i32 2, i32* %14, align 4
  br label %128

85:                                               ; preds = %68
  %86 = load i32, i32* %7, align 4
  %87 = load i32, i32* %8, align 4
  %88 = load i32, i32* %11, align 4
  %89 = load i32, i32* %12, align 4
  %90 = call i32 @effect_mod_to_gb(i32 %86, i32 %87, i32 3, i32 %88, i32 %89, i32* %18, i32* %19)
  %91 = icmp eq i32 %90, 1
  br i1 %91, label %92, label %116

92:                                               ; preds = %85
  %93 = load i32, i32* %18, align 4
  %94 = icmp sgt i32 %93, 7
  br i1 %94, label %95, label %101

95:                                               ; preds = %92
  %96 = load i32, i32* %7, align 4
  %97 = load i32, i32* %8, align 4
  %98 = load i32, i32* %11, align 4
  %99 = load i32, i32* %12, align 4
  %100 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([92 x i8], [92 x i8]* @.str.1, i64 0, i64 0), i32 %96, i32 %97, i32 %98, i32 %99)
  br label %115

101:                                              ; preds = %92
  %102 = call i32 @BIT(i32 7)
  %103 = load i32, i32* %9, align 4
  %104 = or i32 %102, %103
  %105 = getelementptr inbounds [3 x i32], [3 x i32]* %13, i64 0, i64 0
  store i32 %104, i32* %105, align 4
  %106 = call i32 @BIT(i32 7)
  %107 = load i32, i32* %18, align 4
  %108 = shl i32 %107, 4
  %109 = or i32 %106, %108
  %110 = load i32, i32* %17, align 4
  %111 = or i32 %109, %110
  %112 = getelementptr inbounds [3 x i32], [3 x i32]* %13, i64 0, i64 1
  store i32 %111, i32* %112, align 4
  %113 = load i32, i32* %19, align 4
  %114 = getelementptr inbounds [3 x i32], [3 x i32]* %13, i64 0, i64 2
  store i32 %113, i32* %114, align 4
  store i32 3, i32* %14, align 4
  br label %115

115:                                              ; preds = %101, %95
  br label %127

116:                                              ; preds = %85
  %117 = load i32, i32* %7, align 4
  %118 = load i32, i32* %8, align 4
  %119 = load i32, i32* %11, align 4
  %120 = load i32, i32* %12, align 4
  %121 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str, i64 0, i64 0), i32 %117, i32 %118, i32 %119, i32 %120)
  %122 = load i32, i32* %11, align 4
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %124, label %126

124:                                              ; preds = %116
  %125 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0))
  br label %126

126:                                              ; preds = %124, %116
  br label %127

127:                                              ; preds = %126, %115
  br label %128

128:                                              ; preds = %127, %74
  br label %129

129:                                              ; preds = %128, %67
  %130 = call i32 @out_write_str(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  %131 = getelementptr inbounds [3 x i32], [3 x i32]* %13, i64 0, i64 0
  %132 = load i32, i32* %131, align 4
  %133 = call i32 @out_write_hex(i32 %132)
  %134 = load i32, i32* %14, align 4
  %135 = icmp sgt i32 %134, 1
  br i1 %135, label %136, label %149

136:                                              ; preds = %129
  %137 = call i32 @out_write_str(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0))
  %138 = getelementptr inbounds [3 x i32], [3 x i32]* %13, i64 0, i64 1
  %139 = load i32, i32* %138, align 4
  %140 = call i32 @out_write_hex(i32 %139)
  %141 = load i32, i32* %14, align 4
  %142 = icmp sgt i32 %141, 2
  br i1 %142, label %143, label %148

143:                                              ; preds = %136
  %144 = call i32 @out_write_str(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0))
  %145 = getelementptr inbounds [3 x i32], [3 x i32]* %13, i64 0, i64 2
  %146 = load i32, i32* %145, align 4
  %147 = call i32 @out_write_hex(i32 %146)
  br label %148

148:                                              ; preds = %143, %136
  br label %149

149:                                              ; preds = %148, %129
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @BIT(i32) #2

declare dso_local i32 @volume_mod_to_gb_ch3(i32) #2

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
