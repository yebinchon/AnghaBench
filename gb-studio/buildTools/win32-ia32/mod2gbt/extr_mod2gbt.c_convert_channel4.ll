; ModuleID = '/home/carl/AnghaBench/gb-studio/buildTools/win32-ia32/mod2gbt/extr_mod2gbt.c_convert_channel4.c'
source_filename = "/home/carl/AnghaBench/gb-studio/buildTools/win32-ia32/mod2gbt/extr_mod2gbt.c_convert_channel4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [61 x i8] c"Invalid command at pattern %d, step %d, channel 4: %01X%02X\0A\00", align 1
@.str.1 = private unnamed_addr constant [51 x i8] c"You need to set the volume when using a new note.\0A\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"0x\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"$\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c",0x\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c",$\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @convert_channel4(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
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
  %23 = load i32, i32* %10, align 4
  %24 = icmp sgt i32 %23, 71
  br i1 %24, label %25, label %70

25:                                               ; preds = %7
  %26 = load i32, i32* %13, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %25
  %29 = load i32, i32* %14, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %67

31:                                               ; preds = %28, %25
  %32 = load i32, i32* %13, align 4
  %33 = icmp eq i32 %32, 12
  br i1 %33, label %34, label %40

34:                                               ; preds = %31
  %35 = call i32 @BIT(i32 5)
  %36 = load i32, i32* %14, align 4
  %37 = call i32 @VOLUME_MOD_TO_GB(i32 %36)
  %38 = or i32 %35, %37
  %39 = getelementptr inbounds [3 x i32], [3 x i32]* %15, i64 0, i64 0
  store i32 %38, i32* %39, align 4
  store i32 1, i32* %16, align 4
  br label %66

40:                                               ; preds = %31
  %41 = load i32, i32* %8, align 4
  %42 = load i32, i32* %9, align 4
  %43 = load i32, i32* %13, align 4
  %44 = load i32, i32* %14, align 4
  %45 = call i32 @EFFECT_MOD_TO_GB(i32 %41, i32 %42, i32 4, i32 %43, i32 %44, i32* %17, i32* %18)
  %46 = icmp eq i32 %45, 1
  br i1 %46, label %47, label %54

47:                                               ; preds = %40
  %48 = call i32 @BIT(i32 6)
  %49 = load i32, i32* %17, align 4
  %50 = or i32 %48, %49
  %51 = getelementptr inbounds [3 x i32], [3 x i32]* %15, i64 0, i64 0
  store i32 %50, i32* %51, align 4
  %52 = load i32, i32* %18, align 4
  %53 = getelementptr inbounds [3 x i32], [3 x i32]* %15, i64 0, i64 1
  store i32 %52, i32* %53, align 4
  store i32 2, i32* %16, align 4
  br label %65

54:                                               ; preds = %40
  %55 = load i32, i32* %13, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %63

57:                                               ; preds = %54
  %58 = load i32, i32* %8, align 4
  %59 = load i32, i32* %9, align 4
  %60 = load i32, i32* %13, align 4
  %61 = load i32, i32* %14, align 4
  %62 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str, i64 0, i64 0), i32 %58, i32 %59, i32 %60, i32 %61)
  br label %63

63:                                               ; preds = %57, %54
  %64 = getelementptr inbounds [3 x i32], [3 x i32]* %15, i64 0, i64 0
  store i32 0, i32* %64, align 4
  store i32 1, i32* %16, align 4
  br label %65

65:                                               ; preds = %63, %47
  br label %66

66:                                               ; preds = %65, %34
  br label %69

67:                                               ; preds = %28
  %68 = getelementptr inbounds [3 x i32], [3 x i32]* %15, i64 0, i64 0
  store i32 0, i32* %68, align 4
  store i32 1, i32* %16, align 4
  br label %69

69:                                               ; preds = %67, %66
  br label %115

70:                                               ; preds = %7
  %71 = load i32, i32* %11, align 4
  %72 = sub nsw i32 %71, 16
  %73 = and i32 %72, 31
  store i32 %73, i32* %19, align 4
  %74 = load i32, i32* %13, align 4
  %75 = icmp eq i32 %74, 12
  br i1 %75, label %76, label %84

76:                                               ; preds = %70
  %77 = call i32 @BIT(i32 7)
  %78 = load i32, i32* %19, align 4
  %79 = or i32 %77, %78
  %80 = getelementptr inbounds [3 x i32], [3 x i32]* %15, i64 0, i64 0
  store i32 %79, i32* %80, align 4
  %81 = load i32, i32* %14, align 4
  %82 = call i32 @VOLUME_MOD_TO_GB(i32 %81)
  %83 = getelementptr inbounds [3 x i32], [3 x i32]* %15, i64 0, i64 1
  store i32 %82, i32* %83, align 4
  store i32 2, i32* %16, align 4
  br label %114

84:                                               ; preds = %70
  %85 = load i32, i32* %8, align 4
  %86 = load i32, i32* %9, align 4
  %87 = load i32, i32* %13, align 4
  %88 = load i32, i32* %14, align 4
  %89 = call i32 @EFFECT_MOD_TO_GB(i32 %85, i32 %86, i32 4, i32 %87, i32 %88, i32* %20, i32* %21)
  %90 = icmp eq i32 %89, 1
  br i1 %90, label %91, label %102

91:                                               ; preds = %84
  %92 = call i32 @BIT(i32 7)
  %93 = load i32, i32* %19, align 4
  %94 = or i32 %92, %93
  %95 = getelementptr inbounds [3 x i32], [3 x i32]* %15, i64 0, i64 0
  store i32 %94, i32* %95, align 4
  %96 = call i32 @BIT(i32 7)
  %97 = load i32, i32* %20, align 4
  %98 = or i32 %96, %97
  %99 = getelementptr inbounds [3 x i32], [3 x i32]* %15, i64 0, i64 1
  store i32 %98, i32* %99, align 4
  %100 = load i32, i32* %21, align 4
  %101 = getelementptr inbounds [3 x i32], [3 x i32]* %15, i64 0, i64 2
  store i32 %100, i32* %101, align 4
  store i32 3, i32* %16, align 4
  br label %113

102:                                              ; preds = %84
  %103 = load i32, i32* %8, align 4
  %104 = load i32, i32* %9, align 4
  %105 = load i32, i32* %13, align 4
  %106 = load i32, i32* %14, align 4
  %107 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str, i64 0, i64 0), i32 %103, i32 %104, i32 %105, i32 %106)
  %108 = load i32, i32* %13, align 4
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %110, label %112

110:                                              ; preds = %102
  %111 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0))
  br label %112

112:                                              ; preds = %110, %102
  br label %113

113:                                              ; preds = %112, %91
  br label %114

114:                                              ; preds = %113, %76
  br label %115

115:                                              ; preds = %114, %69
  %116 = call i32 @out_write_str(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %117 = getelementptr inbounds [3 x i32], [3 x i32]* %15, i64 0, i64 0
  %118 = load i32, i32* %117, align 4
  %119 = call i32 @out_write_hex(i32 %118)
  %120 = load i32, i32* %16, align 4
  %121 = icmp sgt i32 %120, 1
  br i1 %121, label %122, label %135

122:                                              ; preds = %115
  %123 = call i32 @out_write_str(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0))
  %124 = getelementptr inbounds [3 x i32], [3 x i32]* %15, i64 0, i64 1
  %125 = load i32, i32* %124, align 4
  %126 = call i32 @out_write_hex(i32 %125)
  %127 = load i32, i32* %16, align 4
  %128 = icmp sgt i32 %127, 2
  br i1 %128, label %129, label %134

129:                                              ; preds = %122
  %130 = call i32 @out_write_str(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0))
  %131 = getelementptr inbounds [3 x i32], [3 x i32]* %15, i64 0, i64 2
  %132 = load i32, i32* %131, align 4
  %133 = call i32 @out_write_hex(i32 %132)
  br label %134

134:                                              ; preds = %129, %122
  br label %135

135:                                              ; preds = %134, %115
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
