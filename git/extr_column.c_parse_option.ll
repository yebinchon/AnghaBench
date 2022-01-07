; ModuleID = '/home/carl/AnghaBench/git/extr_column.c_parse_option.c'
source_filename = "/home/carl/AnghaBench/git/extr_column.c_parse_option.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.colopt = type { i8*, i32, i32, i8*, i32, i32 }

@.str = private unnamed_addr constant [7 x i8] c"always\00", align 1
@COL_ENABLED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"never\00", align 1
@COL_DISABLED = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"auto\00", align 1
@COL_AUTO = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [6 x i8] c"plain\00", align 1
@COL_PLAIN = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [7 x i8] c"column\00", align 1
@COL_COLUMN = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [4 x i8] c"row\00", align 1
@COL_ROW = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [6 x i8] c"dense\00", align 1
@COL_DENSE = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [3 x i8] c"no\00", align 1
@ENABLE_SET = common dso_local global i32 0, align 4
@LAYOUT_SET = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [24 x i8] c"unsupported option '%s'\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i32*, i32*)* @parse_option to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_option(i8* %0, i32 %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca [7 x %struct.colopt], align 16
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %16 = getelementptr inbounds [7 x %struct.colopt], [7 x %struct.colopt]* %10, i64 0, i64 0
  %17 = getelementptr inbounds %struct.colopt, %struct.colopt* %16, i32 0, i32 0
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8** %17, align 16
  %18 = getelementptr inbounds %struct.colopt, %struct.colopt* %16, i32 0, i32 1
  %19 = load i32, i32* @COL_ENABLED, align 4
  store i32 %19, i32* %18, align 8
  %20 = getelementptr inbounds %struct.colopt, %struct.colopt* %16, i32 0, i32 2
  store i32 129, i32* %20, align 4
  %21 = getelementptr inbounds %struct.colopt, %struct.colopt* %16, i32 0, i32 3
  store i8* null, i8** %21, align 16
  %22 = getelementptr inbounds %struct.colopt, %struct.colopt* %16, i32 0, i32 4
  store i32 0, i32* %22, align 8
  %23 = getelementptr inbounds %struct.colopt, %struct.colopt* %16, i32 0, i32 5
  store i32 0, i32* %23, align 4
  %24 = getelementptr inbounds %struct.colopt, %struct.colopt* %16, i64 1
  %25 = getelementptr inbounds %struct.colopt, %struct.colopt* %24, i32 0, i32 0
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8** %25, align 16
  %26 = getelementptr inbounds %struct.colopt, %struct.colopt* %24, i32 0, i32 1
  %27 = load i32, i32* @COL_DISABLED, align 4
  store i32 %27, i32* %26, align 8
  %28 = getelementptr inbounds %struct.colopt, %struct.colopt* %24, i32 0, i32 2
  store i32 129, i32* %28, align 4
  %29 = getelementptr inbounds %struct.colopt, %struct.colopt* %24, i32 0, i32 3
  store i8* null, i8** %29, align 16
  %30 = getelementptr inbounds %struct.colopt, %struct.colopt* %24, i32 0, i32 4
  store i32 0, i32* %30, align 8
  %31 = getelementptr inbounds %struct.colopt, %struct.colopt* %24, i32 0, i32 5
  store i32 0, i32* %31, align 4
  %32 = getelementptr inbounds %struct.colopt, %struct.colopt* %24, i64 1
  %33 = getelementptr inbounds %struct.colopt, %struct.colopt* %32, i32 0, i32 0
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8** %33, align 16
  %34 = getelementptr inbounds %struct.colopt, %struct.colopt* %32, i32 0, i32 1
  %35 = load i32, i32* @COL_AUTO, align 4
  store i32 %35, i32* %34, align 8
  %36 = getelementptr inbounds %struct.colopt, %struct.colopt* %32, i32 0, i32 2
  store i32 129, i32* %36, align 4
  %37 = getelementptr inbounds %struct.colopt, %struct.colopt* %32, i32 0, i32 3
  store i8* null, i8** %37, align 16
  %38 = getelementptr inbounds %struct.colopt, %struct.colopt* %32, i32 0, i32 4
  store i32 0, i32* %38, align 8
  %39 = getelementptr inbounds %struct.colopt, %struct.colopt* %32, i32 0, i32 5
  store i32 0, i32* %39, align 4
  %40 = getelementptr inbounds %struct.colopt, %struct.colopt* %32, i64 1
  %41 = getelementptr inbounds %struct.colopt, %struct.colopt* %40, i32 0, i32 0
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i8** %41, align 16
  %42 = getelementptr inbounds %struct.colopt, %struct.colopt* %40, i32 0, i32 1
  %43 = load i32, i32* @COL_PLAIN, align 4
  store i32 %43, i32* %42, align 8
  %44 = getelementptr inbounds %struct.colopt, %struct.colopt* %40, i32 0, i32 2
  store i32 128, i32* %44, align 4
  %45 = getelementptr inbounds %struct.colopt, %struct.colopt* %40, i32 0, i32 3
  store i8* null, i8** %45, align 16
  %46 = getelementptr inbounds %struct.colopt, %struct.colopt* %40, i32 0, i32 4
  store i32 0, i32* %46, align 8
  %47 = getelementptr inbounds %struct.colopt, %struct.colopt* %40, i32 0, i32 5
  store i32 0, i32* %47, align 4
  %48 = getelementptr inbounds %struct.colopt, %struct.colopt* %40, i64 1
  %49 = getelementptr inbounds %struct.colopt, %struct.colopt* %48, i32 0, i32 0
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i8** %49, align 16
  %50 = getelementptr inbounds %struct.colopt, %struct.colopt* %48, i32 0, i32 1
  %51 = load i32, i32* @COL_COLUMN, align 4
  store i32 %51, i32* %50, align 8
  %52 = getelementptr inbounds %struct.colopt, %struct.colopt* %48, i32 0, i32 2
  store i32 128, i32* %52, align 4
  %53 = getelementptr inbounds %struct.colopt, %struct.colopt* %48, i32 0, i32 3
  store i8* null, i8** %53, align 16
  %54 = getelementptr inbounds %struct.colopt, %struct.colopt* %48, i32 0, i32 4
  store i32 0, i32* %54, align 8
  %55 = getelementptr inbounds %struct.colopt, %struct.colopt* %48, i32 0, i32 5
  store i32 0, i32* %55, align 4
  %56 = getelementptr inbounds %struct.colopt, %struct.colopt* %48, i64 1
  %57 = getelementptr inbounds %struct.colopt, %struct.colopt* %56, i32 0, i32 0
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i8** %57, align 16
  %58 = getelementptr inbounds %struct.colopt, %struct.colopt* %56, i32 0, i32 1
  %59 = load i32, i32* @COL_ROW, align 4
  store i32 %59, i32* %58, align 8
  %60 = getelementptr inbounds %struct.colopt, %struct.colopt* %56, i32 0, i32 2
  store i32 128, i32* %60, align 4
  %61 = getelementptr inbounds %struct.colopt, %struct.colopt* %56, i32 0, i32 3
  store i8* null, i8** %61, align 16
  %62 = getelementptr inbounds %struct.colopt, %struct.colopt* %56, i32 0, i32 4
  store i32 0, i32* %62, align 8
  %63 = getelementptr inbounds %struct.colopt, %struct.colopt* %56, i32 0, i32 5
  store i32 0, i32* %63, align 4
  %64 = getelementptr inbounds %struct.colopt, %struct.colopt* %56, i64 1
  %65 = getelementptr inbounds %struct.colopt, %struct.colopt* %64, i32 0, i32 0
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i8** %65, align 16
  %66 = getelementptr inbounds %struct.colopt, %struct.colopt* %64, i32 0, i32 1
  %67 = load i32, i32* @COL_DENSE, align 4
  store i32 %67, i32* %66, align 8
  %68 = getelementptr inbounds %struct.colopt, %struct.colopt* %64, i32 0, i32 2
  store i32 0, i32* %68, align 4
  %69 = getelementptr inbounds %struct.colopt, %struct.colopt* %64, i32 0, i32 3
  store i8* null, i8** %69, align 16
  %70 = getelementptr inbounds %struct.colopt, %struct.colopt* %64, i32 0, i32 4
  store i32 0, i32* %70, align 8
  %71 = getelementptr inbounds %struct.colopt, %struct.colopt* %64, i32 0, i32 5
  store i32 0, i32* %71, align 4
  store i32 0, i32* %11, align 4
  br label %72

72:                                               ; preds = %184, %4
  %73 = load i32, i32* %11, align 4
  %74 = getelementptr inbounds [7 x %struct.colopt], [7 x %struct.colopt]* %10, i64 0, i64 0
  %75 = call i32 @ARRAY_SIZE(%struct.colopt* %74)
  %76 = icmp slt i32 %73, %75
  br i1 %76, label %77, label %187

77:                                               ; preds = %72
  store i32 1, i32* %12, align 4
  %78 = load i32, i32* %7, align 4
  store i32 %78, i32* %13, align 4
  %79 = load i8*, i8** %6, align 8
  store i8* %79, i8** %15, align 8
  %80 = load i32, i32* %11, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds [7 x %struct.colopt], [7 x %struct.colopt]* %10, i64 0, i64 %81
  %83 = getelementptr inbounds %struct.colopt, %struct.colopt* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %99, label %86

86:                                               ; preds = %77
  %87 = load i32, i32* %13, align 4
  %88 = icmp sgt i32 %87, 2
  br i1 %88, label %89, label %98

89:                                               ; preds = %86
  %90 = load i8*, i8** %15, align 8
  %91 = call i64 @strncmp(i8* %90, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0), i32 2)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %98, label %93

93:                                               ; preds = %89
  %94 = load i8*, i8** %15, align 8
  %95 = getelementptr inbounds i8, i8* %94, i64 2
  store i8* %95, i8** %15, align 8
  %96 = load i32, i32* %13, align 4
  %97 = sub nsw i32 %96, 2
  store i32 %97, i32* %13, align 4
  store i32 0, i32* %12, align 4
  br label %98

98:                                               ; preds = %93, %89, %86
  br label %99

99:                                               ; preds = %98, %77
  %100 = load i32, i32* %11, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds [7 x %struct.colopt], [7 x %struct.colopt]* %10, i64 0, i64 %101
  %103 = getelementptr inbounds %struct.colopt, %struct.colopt* %102, i32 0, i32 3
  %104 = load i8*, i8** %103, align 16
  %105 = call i32 @strlen(i8* %104)
  store i32 %105, i32* %14, align 4
  %106 = load i32, i32* %13, align 4
  %107 = load i32, i32* %14, align 4
  %108 = icmp ne i32 %106, %107
  br i1 %108, label %119, label %109

109:                                              ; preds = %99
  %110 = load i8*, i8** %15, align 8
  %111 = load i32, i32* %11, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds [7 x %struct.colopt], [7 x %struct.colopt]* %10, i64 0, i64 %112
  %114 = getelementptr inbounds %struct.colopt, %struct.colopt* %113, i32 0, i32 3
  %115 = load i8*, i8** %114, align 16
  %116 = load i32, i32* %14, align 4
  %117 = call i64 @strncmp(i8* %110, i8* %115, i32 %116)
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %120

119:                                              ; preds = %109, %99
  br label %184

120:                                              ; preds = %109
  %121 = load i32, i32* %11, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds [7 x %struct.colopt], [7 x %struct.colopt]* %10, i64 0, i64 %122
  %124 = getelementptr inbounds %struct.colopt, %struct.colopt* %123, i32 0, i32 2
  %125 = load i32, i32* %124, align 4
  switch i32 %125, label %136 [
    i32 129, label %126
    i32 128, label %131
  ]

126:                                              ; preds = %120
  %127 = load i32, i32* @ENABLE_SET, align 4
  %128 = load i32*, i32** %9, align 8
  %129 = load i32, i32* %128, align 4
  %130 = or i32 %129, %127
  store i32 %130, i32* %128, align 4
  br label %136

131:                                              ; preds = %120
  %132 = load i32, i32* @LAYOUT_SET, align 4
  %133 = load i32*, i32** %9, align 8
  %134 = load i32, i32* %133, align 4
  %135 = or i32 %134, %132
  store i32 %135, i32* %133, align 4
  br label %136

136:                                              ; preds = %120, %131, %126
  %137 = load i32, i32* %11, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds [7 x %struct.colopt], [7 x %struct.colopt]* %10, i64 0, i64 %138
  %140 = getelementptr inbounds %struct.colopt, %struct.colopt* %139, i32 0, i32 2
  %141 = load i32, i32* %140, align 4
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %160

143:                                              ; preds = %136
  %144 = load i32*, i32** %8, align 8
  %145 = load i32, i32* %144, align 4
  %146 = load i32, i32* %11, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds [7 x %struct.colopt], [7 x %struct.colopt]* %10, i64 0, i64 %147
  %149 = getelementptr inbounds %struct.colopt, %struct.colopt* %148, i32 0, i32 2
  %150 = load i32, i32* %149, align 4
  %151 = xor i32 %150, -1
  %152 = and i32 %145, %151
  %153 = load i32, i32* %11, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds [7 x %struct.colopt], [7 x %struct.colopt]* %10, i64 0, i64 %154
  %156 = getelementptr inbounds %struct.colopt, %struct.colopt* %155, i32 0, i32 4
  %157 = load i32, i32* %156, align 8
  %158 = or i32 %152, %157
  %159 = load i32*, i32** %8, align 8
  store i32 %158, i32* %159, align 4
  br label %183

160:                                              ; preds = %136
  %161 = load i32, i32* %12, align 4
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %172

163:                                              ; preds = %160
  %164 = load i32, i32* %11, align 4
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds [7 x %struct.colopt], [7 x %struct.colopt]* %10, i64 0, i64 %165
  %167 = getelementptr inbounds %struct.colopt, %struct.colopt* %166, i32 0, i32 4
  %168 = load i32, i32* %167, align 8
  %169 = load i32*, i32** %8, align 8
  %170 = load i32, i32* %169, align 4
  %171 = or i32 %170, %168
  store i32 %171, i32* %169, align 4
  br label %182

172:                                              ; preds = %160
  %173 = load i32, i32* %11, align 4
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds [7 x %struct.colopt], [7 x %struct.colopt]* %10, i64 0, i64 %174
  %176 = getelementptr inbounds %struct.colopt, %struct.colopt* %175, i32 0, i32 4
  %177 = load i32, i32* %176, align 8
  %178 = xor i32 %177, -1
  %179 = load i32*, i32** %8, align 8
  %180 = load i32, i32* %179, align 4
  %181 = and i32 %180, %178
  store i32 %181, i32* %179, align 4
  br label %182

182:                                              ; preds = %172, %163
  br label %183

183:                                              ; preds = %182, %143
  store i32 0, i32* %5, align 4
  br label %190

184:                                              ; preds = %119
  %185 = load i32, i32* %11, align 4
  %186 = add nsw i32 %185, 1
  store i32 %186, i32* %11, align 4
  br label %72

187:                                              ; preds = %72
  %188 = load i8*, i8** %6, align 8
  %189 = call i32 @error(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.8, i64 0, i64 0), i8* %188)
  store i32 %189, i32* %5, align 4
  br label %190

190:                                              ; preds = %187, %183
  %191 = load i32, i32* %5, align 4
  ret i32 %191
}

declare dso_local i32 @ARRAY_SIZE(%struct.colopt*) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @error(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
