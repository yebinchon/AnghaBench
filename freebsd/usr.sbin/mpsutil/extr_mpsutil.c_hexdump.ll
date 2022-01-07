; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/mpsutil/extr_mpsutil.c_hexdump.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/mpsutil/extr_mpsutil.c_hexdump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@HD_DELIM_MASK = common dso_local global i32 0, align 4
@HD_COLUMN_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@HD_OMIT_COUNT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"%04x  \00", align 1
@HD_OMIT_HEX = common dso_local global i32 0, align 4
@HD_REVERSED = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"%c%02x\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"   \00", align 1
@HD_OMIT_CHARS = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [4 x i8] c"  |\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"%c\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c"|\00", align 1
@.str.9 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hexdump(i8* %0, i32 %1, i8* %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i8, align 1
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %15 = load i32, i32* %8, align 4
  %16 = load i32, i32* @HD_DELIM_MASK, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %25

19:                                               ; preds = %4
  %20 = load i32, i32* %8, align 4
  %21 = load i32, i32* @HD_DELIM_MASK, align 4
  %22 = and i32 %20, %21
  %23 = ashr i32 %22, 8
  %24 = trunc i32 %23 to i8
  store i8 %24, i8* %14, align 1
  br label %26

25:                                               ; preds = %4
  store i8 32, i8* %14, align 1
  br label %26

26:                                               ; preds = %25, %19
  %27 = load i32, i32* %8, align 4
  %28 = load i32, i32* @HD_COLUMN_MASK, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %26
  %32 = load i32, i32* %8, align 4
  %33 = load i32, i32* @HD_COLUMN_MASK, align 4
  %34 = and i32 %32, %33
  store i32 %34, i32* %12, align 4
  br label %36

35:                                               ; preds = %26
  store i32 16, i32* %12, align 4
  br label %36

36:                                               ; preds = %35, %31
  %37 = load i8*, i8** %5, align 8
  store i8* %37, i8** %13, align 8
  store i32 0, i32* %9, align 4
  br label %38

38:                                               ; preds = %171, %36
  %39 = load i32, i32* %9, align 4
  %40 = load i32, i32* %6, align 4
  %41 = icmp slt i32 %39, %40
  br i1 %41, label %42, label %175

42:                                               ; preds = %38
  %43 = load i8*, i8** %7, align 8
  %44 = icmp ne i8* %43, null
  br i1 %44, label %45, label %48

45:                                               ; preds = %42
  %46 = load i8*, i8** %7, align 8
  %47 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %46)
  br label %48

48:                                               ; preds = %45, %42
  %49 = load i32, i32* %8, align 4
  %50 = load i32, i32* @HD_OMIT_COUNT, align 4
  %51 = and i32 %49, %50
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %48
  %54 = load i32, i32* %9, align 4
  %55 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 %54)
  br label %56

56:                                               ; preds = %53, %48
  %57 = load i32, i32* %8, align 4
  %58 = load i32, i32* @HD_OMIT_HEX, align 4
  %59 = and i32 %57, %58
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %103

61:                                               ; preds = %56
  store i32 0, i32* %10, align 4
  br label %62

62:                                               ; preds = %99, %61
  %63 = load i32, i32* %10, align 4
  %64 = load i32, i32* %12, align 4
  %65 = icmp slt i32 %63, %64
  br i1 %65, label %66, label %102

66:                                               ; preds = %62
  %67 = load i32, i32* %8, align 4
  %68 = load i32, i32* @HD_REVERSED, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %78

71:                                               ; preds = %66
  %72 = load i32, i32* %9, align 4
  %73 = load i32, i32* %12, align 4
  %74 = sub nsw i32 %73, 1
  %75 = load i32, i32* %10, align 4
  %76 = sub nsw i32 %74, %75
  %77 = add nsw i32 %72, %76
  store i32 %77, i32* %11, align 4
  br label %82

78:                                               ; preds = %66
  %79 = load i32, i32* %9, align 4
  %80 = load i32, i32* %10, align 4
  %81 = add nsw i32 %79, %80
  store i32 %81, i32* %11, align 4
  br label %82

82:                                               ; preds = %78, %71
  %83 = load i32, i32* %11, align 4
  %84 = load i32, i32* %6, align 4
  %85 = icmp slt i32 %83, %84
  br i1 %85, label %86, label %96

86:                                               ; preds = %82
  %87 = load i8, i8* %14, align 1
  %88 = sext i8 %87 to i32
  %89 = load i8*, i8** %13, align 8
  %90 = load i32, i32* %11, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i8, i8* %89, i64 %91
  %93 = load i8, i8* %92, align 1
  %94 = zext i8 %93 to i32
  %95 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32 %88, i32 %94)
  br label %98

96:                                               ; preds = %82
  %97 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  br label %98

98:                                               ; preds = %96, %86
  br label %99

99:                                               ; preds = %98
  %100 = load i32, i32* %10, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %10, align 4
  br label %62

102:                                              ; preds = %62
  br label %103

103:                                              ; preds = %102, %56
  %104 = load i32, i32* %8, align 4
  %105 = load i32, i32* @HD_OMIT_CHARS, align 4
  %106 = and i32 %104, %105
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %108, label %169

108:                                              ; preds = %103
  %109 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0))
  store i32 0, i32* %10, align 4
  br label %110

110:                                              ; preds = %164, %108
  %111 = load i32, i32* %10, align 4
  %112 = load i32, i32* %12, align 4
  %113 = icmp slt i32 %111, %112
  br i1 %113, label %114, label %167

114:                                              ; preds = %110
  %115 = load i32, i32* %8, align 4
  %116 = load i32, i32* @HD_REVERSED, align 4
  %117 = and i32 %115, %116
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %126

119:                                              ; preds = %114
  %120 = load i32, i32* %9, align 4
  %121 = load i32, i32* %12, align 4
  %122 = sub nsw i32 %121, 1
  %123 = load i32, i32* %10, align 4
  %124 = sub nsw i32 %122, %123
  %125 = add nsw i32 %120, %124
  store i32 %125, i32* %11, align 4
  br label %130

126:                                              ; preds = %114
  %127 = load i32, i32* %9, align 4
  %128 = load i32, i32* %10, align 4
  %129 = add nsw i32 %127, %128
  store i32 %129, i32* %11, align 4
  br label %130

130:                                              ; preds = %126, %119
  %131 = load i32, i32* %11, align 4
  %132 = load i32, i32* %6, align 4
  %133 = icmp sge i32 %131, %132
  br i1 %133, label %134, label %136

134:                                              ; preds = %130
  %135 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  br label %163

136:                                              ; preds = %130
  %137 = load i8*, i8** %13, align 8
  %138 = load i32, i32* %11, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds i8, i8* %137, i64 %139
  %141 = load i8, i8* %140, align 1
  %142 = zext i8 %141 to i32
  %143 = icmp sge i32 %142, 32
  br i1 %143, label %144, label %160

144:                                              ; preds = %136
  %145 = load i8*, i8** %13, align 8
  %146 = load i32, i32* %11, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds i8, i8* %145, i64 %147
  %149 = load i8, i8* %148, align 1
  %150 = zext i8 %149 to i32
  %151 = icmp sle i32 %150, 126
  br i1 %151, label %152, label %160

152:                                              ; preds = %144
  %153 = load i8*, i8** %13, align 8
  %154 = load i32, i32* %11, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds i8, i8* %153, i64 %155
  %157 = load i8, i8* %156, align 1
  %158 = zext i8 %157 to i32
  %159 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i32 %158)
  br label %162

160:                                              ; preds = %144, %136
  %161 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0))
  br label %162

162:                                              ; preds = %160, %152
  br label %163

163:                                              ; preds = %162, %134
  br label %164

164:                                              ; preds = %163
  %165 = load i32, i32* %10, align 4
  %166 = add nsw i32 %165, 1
  store i32 %166, i32* %10, align 4
  br label %110

167:                                              ; preds = %110
  %168 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0))
  br label %169

169:                                              ; preds = %167, %103
  %170 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0))
  br label %171

171:                                              ; preds = %169
  %172 = load i32, i32* %12, align 4
  %173 = load i32, i32* %9, align 4
  %174 = add nsw i32 %173, %172
  store i32 %174, i32* %9, align 4
  br label %38

175:                                              ; preds = %38
  ret void
}

declare dso_local i32 @printf(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
