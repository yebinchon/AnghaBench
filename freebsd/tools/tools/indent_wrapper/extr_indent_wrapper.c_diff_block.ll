; ModuleID = '/home/carl/AnghaBench/freebsd/tools/tools/indent_wrapper/extr_indent_wrapper.c_diff_block.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/tools/indent_wrapper/extr_indent_wrapper.c_diff_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [14 x i8] c"Style error:\0A\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%c\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"Style corrected:\0A\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"\09\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.6 = private unnamed_addr constant [18 x i8] c"^ %sdifference%s\0A\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"whitespace \00", align 1
@.str.8 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.9 = private unnamed_addr constant [23 x i8] c" in the end of a block\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*)* @diff_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @diff_block(i32* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8, align 1
  %13 = alloca i8, align 1
  %14 = alloca i32, align 4
  %15 = alloca i8, align 1
  %16 = alloca i8, align 1
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  %17 = load i32*, i32** %4, align 8
  %18 = call i64 @size_block(i32* %17)
  store i64 %18, i64* %6, align 8
  %19 = load i32*, i32** %5, align 8
  %20 = call i64 @size_block(i32* %19)
  store i64 %20, i64* %7, align 8
  %21 = load i64, i64* %6, align 8
  %22 = load i64, i64* %7, align 8
  %23 = icmp sgt i64 %21, %22
  br i1 %23, label %24, label %26

24:                                               ; preds = %2
  %25 = load i64, i64* %6, align 8
  br label %28

26:                                               ; preds = %2
  %27 = load i64, i64* %7, align 8
  br label %28

28:                                               ; preds = %26, %24
  %29 = phi i64 [ %25, %24 ], [ %27, %26 ]
  store i64 %29, i64* %8, align 8
  store i64 0, i64* %9, align 8
  store i64 0, i64* %10, align 8
  br label %30

30:                                               ; preds = %186, %28
  %31 = load i64, i64* %9, align 8
  %32 = load i64, i64* %8, align 8
  %33 = icmp ne i64 %31, %32
  br i1 %33, label %34, label %189

34:                                               ; preds = %30
  %35 = load i32*, i32** %4, align 8
  %36 = load i64, i64* %9, align 8
  %37 = call i32 @peek_block(i32* %35, i64 %36)
  %38 = and i32 %37, 255
  %39 = trunc i32 %38 to i8
  store i8 %39, i8* %12, align 1
  %40 = load i32*, i32** %5, align 8
  %41 = load i64, i64* %9, align 8
  %42 = call i32 @peek_block(i32* %40, i64 %41)
  %43 = and i32 %42, 255
  %44 = trunc i32 %43 to i8
  store i8 %44, i8* %13, align 1
  %45 = load i8, i8* %12, align 1
  %46 = sext i8 %45 to i32
  %47 = load i8, i8* %13, align 1
  %48 = sext i8 %47 to i32
  %49 = icmp ne i32 %46, %48
  br i1 %49, label %50, label %177

50:                                               ; preds = %34
  %51 = load i8, i8* %12, align 1
  %52 = sext i8 %51 to i32
  %53 = icmp eq i32 %52, 10
  br i1 %53, label %54, label %64

54:                                               ; preds = %50
  %55 = load i8, i8* %13, align 1
  %56 = sext i8 %55 to i32
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %64

58:                                               ; preds = %54
  %59 = load i64, i64* %9, align 8
  %60 = load i64, i64* %6, align 8
  %61 = sub nsw i64 %60, 1
  %62 = icmp eq i64 %59, %61
  br i1 %62, label %63, label %64

63:                                               ; preds = %58
  store i32 0, i32* %3, align 4
  br label %190

64:                                               ; preds = %58, %54, %50
  %65 = load i64, i64* %9, align 8
  %66 = load i64, i64* %10, align 8
  %67 = sub nsw i64 %65, %66
  store i64 %67, i64* %11, align 8
  %68 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %14, align 4
  %69 = load i64, i64* %10, align 8
  store i64 %69, i64* %11, align 8
  br label %70

70:                                               ; preds = %96, %64
  %71 = load i64, i64* %11, align 8
  %72 = load i64, i64* %6, align 8
  %73 = icmp slt i64 %71, %72
  br i1 %73, label %74, label %99

74:                                               ; preds = %70
  %75 = load i32*, i32** %4, align 8
  %76 = load i64, i64* %11, align 8
  %77 = call i32 @peek_block(i32* %75, i64 %76)
  %78 = and i32 %77, 255
  %79 = trunc i32 %78 to i8
  store i8 %79, i8* %15, align 1
  %80 = load i32, i32* %14, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %87

82:                                               ; preds = %74
  %83 = load i8, i8* %15, align 1
  %84 = sext i8 %83 to i32
  %85 = icmp eq i32 %84, 10
  br i1 %85, label %86, label %87

86:                                               ; preds = %82
  br label %99

87:                                               ; preds = %82, %74
  %88 = load i8, i8* %15, align 1
  %89 = sext i8 %88 to i32
  %90 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %89)
  %91 = load i8, i8* %15, align 1
  %92 = call i64 @isspace(i8 signext %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %95, label %94

94:                                               ; preds = %87
  store i32 1, i32* %14, align 4
  br label %95

95:                                               ; preds = %94, %87
  br label %96

96:                                               ; preds = %95
  %97 = load i64, i64* %11, align 8
  %98 = add nsw i64 %97, 1
  store i64 %98, i64* %11, align 8
  br label %70

99:                                               ; preds = %86, %70
  %100 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %101 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %14, align 4
  %102 = load i64, i64* %10, align 8
  store i64 %102, i64* %11, align 8
  br label %103

103:                                              ; preds = %129, %99
  %104 = load i64, i64* %11, align 8
  %105 = load i64, i64* %7, align 8
  %106 = icmp slt i64 %104, %105
  br i1 %106, label %107, label %132

107:                                              ; preds = %103
  %108 = load i32*, i32** %5, align 8
  %109 = load i64, i64* %11, align 8
  %110 = call i32 @peek_block(i32* %108, i64 %109)
  %111 = and i32 %110, 255
  %112 = trunc i32 %111 to i8
  store i8 %112, i8* %16, align 1
  %113 = load i32, i32* %14, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %120

115:                                              ; preds = %107
  %116 = load i8, i8* %16, align 1
  %117 = sext i8 %116 to i32
  %118 = icmp eq i32 %117, 10
  br i1 %118, label %119, label %120

119:                                              ; preds = %115
  br label %132

120:                                              ; preds = %115, %107
  %121 = load i8, i8* %16, align 1
  %122 = sext i8 %121 to i32
  %123 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %122)
  %124 = load i8, i8* %16, align 1
  %125 = call i64 @isspace(i8 signext %124)
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %128, label %127

127:                                              ; preds = %120
  store i32 1, i32* %14, align 4
  br label %128

128:                                              ; preds = %127, %120
  br label %129

129:                                              ; preds = %128
  %130 = load i64, i64* %11, align 8
  %131 = add nsw i64 %130, 1
  store i64 %131, i64* %11, align 8
  br label %103

132:                                              ; preds = %119, %103
  %133 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %134 = load i64, i64* %10, align 8
  store i64 %134, i64* %11, align 8
  br label %135

135:                                              ; preds = %150, %132
  %136 = load i64, i64* %11, align 8
  %137 = load i64, i64* %9, align 8
  %138 = icmp ne i64 %136, %137
  br i1 %138, label %139, label %153

139:                                              ; preds = %135
  %140 = load i32*, i32** %4, align 8
  %141 = load i64, i64* %11, align 8
  %142 = call i32 @peek_block(i32* %140, i64 %141)
  %143 = and i32 %142, 255
  %144 = icmp eq i32 %143, 9
  br i1 %144, label %145, label %147

145:                                              ; preds = %139
  %146 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  br label %149

147:                                              ; preds = %139
  %148 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  br label %149

149:                                              ; preds = %147, %145
  br label %150

150:                                              ; preds = %149
  %151 = load i64, i64* %11, align 8
  %152 = add nsw i64 %151, 1
  store i64 %152, i64* %11, align 8
  br label %135

153:                                              ; preds = %135
  %154 = load i8, i8* %12, align 1
  %155 = call i64 @isspace(i8 signext %154)
  %156 = icmp ne i64 %155, 0
  br i1 %156, label %161, label %157

157:                                              ; preds = %153
  %158 = load i8, i8* %13, align 1
  %159 = call i64 @isspace(i8 signext %158)
  %160 = icmp ne i64 %159, 0
  br label %161

161:                                              ; preds = %157, %153
  %162 = phi i1 [ true, %153 ], [ %160, %157 ]
  %163 = zext i1 %162 to i64
  %164 = select i1 %162, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.8, i64 0, i64 0)
  %165 = load i64, i64* %9, align 8
  %166 = load i64, i64* %6, align 8
  %167 = icmp sge i64 %165, %166
  br i1 %167, label %172, label %168

168:                                              ; preds = %161
  %169 = load i64, i64* %9, align 8
  %170 = load i64, i64* %7, align 8
  %171 = icmp sge i64 %169, %170
  br label %172

172:                                              ; preds = %168, %161
  %173 = phi i1 [ true, %161 ], [ %171, %168 ]
  %174 = zext i1 %173 to i64
  %175 = select i1 %173, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.8, i64 0, i64 0)
  %176 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i64 0, i64 0), i8* %164, i8* %175)
  store i32 1, i32* %3, align 4
  br label %190

177:                                              ; preds = %34
  %178 = load i8, i8* %12, align 1
  %179 = sext i8 %178 to i32
  %180 = icmp eq i32 %179, 10
  br i1 %180, label %181, label %184

181:                                              ; preds = %177
  %182 = load i64, i64* %9, align 8
  %183 = add nsw i64 %182, 1
  store i64 %183, i64* %10, align 8
  br label %184

184:                                              ; preds = %181, %177
  br label %185

185:                                              ; preds = %184
  br label %186

186:                                              ; preds = %185
  %187 = load i64, i64* %9, align 8
  %188 = add nsw i64 %187, 1
  store i64 %188, i64* %9, align 8
  br label %30

189:                                              ; preds = %30
  store i32 0, i32* %3, align 4
  br label %190

190:                                              ; preds = %189, %172, %63
  %191 = load i32, i32* %3, align 4
  ret i32 %191
}

declare dso_local i64 @size_block(i32*) #1

declare dso_local i32 @peek_block(i32*, i64) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i64 @isspace(i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
