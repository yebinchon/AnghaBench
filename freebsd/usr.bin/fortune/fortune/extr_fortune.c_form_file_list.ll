; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/fortune/fortune/extr_fortune.c_form_file_list.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/fortune/fortune/extr_fortune.c_form_file_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@Find_files = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@Fortunes_only = common dso_local global i32 0, align 4
@Fortune_path_arr = common dso_local global i8** null, align 8
@NO_PROB = common dso_local global i32 0, align 4
@File_list = common dso_local global i32 0, align 4
@File_tail = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"No fortunes found in %s.\0A\00", align 1
@Fortune_path = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [9 x i8] c"fortunes\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"percentages must be <= 100\0A\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"percentages must be integers\0A\00", align 1
@.str.4 = private unnamed_addr constant [32 x i8] c"percentages must precede files\0A\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"all\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8**, i32)* @form_file_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @form_file_list(i8** %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8**, align 8
  store i8** %0, i8*** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load i32, i32* %5, align 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %72

12:                                               ; preds = %2
  %13 = load i64, i64* @Find_files, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %44

15:                                               ; preds = %12
  %16 = load i32, i32* @TRUE, align 4
  store i32 %16, i32* @Fortunes_only, align 4
  %17 = load i8**, i8*** @Fortune_path_arr, align 8
  store i8** %17, i8*** %9, align 8
  store i32 0, i32* %6, align 4
  br label %18

18:                                               ; preds = %22, %15
  %19 = load i8**, i8*** %9, align 8
  %20 = load i8*, i8** %19, align 8
  %21 = icmp ne i8* %20, null
  br i1 %21, label %22, label %32

22:                                               ; preds = %18
  %23 = load i32, i32* @NO_PROB, align 4
  %24 = load i8**, i8*** %9, align 8
  %25 = getelementptr inbounds i8*, i8** %24, i32 1
  store i8** %25, i8*** %9, align 8
  %26 = load i8*, i8** %24, align 8
  %27 = call i64 @add_file(i32 %23, i8* %26, i32* null, i32* @File_list, i32* @File_tail, i32* null)
  %28 = load i32, i32* %6, align 4
  %29 = sext i32 %28 to i64
  %30 = add nsw i64 %29, %27
  %31 = trunc i64 %30 to i32
  store i32 %31, i32* %6, align 4
  br label %18

32:                                               ; preds = %18
  %33 = load i32, i32* @FALSE, align 4
  store i32 %33, i32* @Fortunes_only, align 4
  %34 = load i32, i32* %6, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %40, label %36

36:                                               ; preds = %32
  %37 = load i32, i32* @stderr, align 4
  %38 = load i8*, i8** @Fortune_path, align 8
  %39 = call i32 (i32, i8*, ...) @fprintf(i32 %37, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i8* %38)
  br label %40

40:                                               ; preds = %36, %32
  %41 = load i32, i32* %6, align 4
  %42 = icmp ne i32 %41, 0
  %43 = zext i1 %42 to i32
  store i32 %43, i32* %3, align 4
  br label %210

44:                                               ; preds = %12
  %45 = load i8**, i8*** @Fortune_path_arr, align 8
  store i8** %45, i8*** %9, align 8
  store i32 0, i32* %6, align 4
  br label %46

46:                                               ; preds = %50, %44
  %47 = load i8**, i8*** %9, align 8
  %48 = load i8*, i8** %47, align 8
  %49 = icmp ne i8* %48, null
  br i1 %49, label %50, label %61

50:                                               ; preds = %46
  %51 = load i32, i32* @NO_PROB, align 4
  %52 = load i8**, i8*** %9, align 8
  %53 = getelementptr inbounds i8*, i8** %52, i32 1
  store i8** %53, i8*** %9, align 8
  %54 = load i8*, i8** %52, align 8
  %55 = bitcast i8* %54 to i32*
  %56 = call i64 @add_file(i32 %51, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32* %55, i32* @File_list, i32* @File_tail, i32* null)
  %57 = load i32, i32* %6, align 4
  %58 = sext i32 %57 to i64
  %59 = add nsw i64 %58, %56
  %60 = trunc i64 %59 to i32
  store i32 %60, i32* %6, align 4
  br label %46

61:                                               ; preds = %46
  %62 = load i32, i32* %6, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %68, label %64

64:                                               ; preds = %61
  %65 = load i32, i32* @stderr, align 4
  %66 = load i8*, i8** @Fortune_path, align 8
  %67 = call i32 (i32, i8*, ...) @fprintf(i32 %65, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i8* %66)
  br label %68

68:                                               ; preds = %64, %61
  %69 = load i32, i32* %6, align 4
  %70 = icmp ne i32 %69, 0
  %71 = zext i1 %70 to i32
  store i32 %71, i32* %3, align 4
  br label %210

72:                                               ; preds = %2
  store i32 0, i32* %6, align 4
  br label %73

73:                                               ; preds = %205, %72
  %74 = load i32, i32* %6, align 4
  %75 = load i32, i32* %5, align 4
  %76 = icmp slt i32 %74, %75
  br i1 %76, label %77, label %208

77:                                               ; preds = %73
  %78 = load i32, i32* @NO_PROB, align 4
  store i32 %78, i32* %7, align 4
  %79 = load i8**, i8*** %4, align 8
  %80 = load i32, i32* %6, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i8*, i8** %79, i64 %81
  %83 = load i8*, i8** %82, align 8
  %84 = getelementptr inbounds i8, i8* %83, i64 0
  %85 = load i8, i8* %84, align 1
  %86 = call i64 @isdigit(i8 zeroext %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %94, label %88

88:                                               ; preds = %77
  %89 = load i8**, i8*** %4, align 8
  %90 = load i32, i32* %6, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i8*, i8** %89, i64 %91
  %93 = load i8*, i8** %92, align 8
  store i8* %93, i8** %8, align 8
  br label %167

94:                                               ; preds = %77
  store i32 0, i32* %7, align 4
  %95 = load i8**, i8*** %4, align 8
  %96 = load i32, i32* %6, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i8*, i8** %95, i64 %97
  %99 = load i8*, i8** %98, align 8
  store i8* %99, i8** %8, align 8
  br label %100

100:                                              ; preds = %113, %94
  %101 = load i8*, i8** %8, align 8
  %102 = load i8, i8* %101, align 1
  %103 = call i64 @isdigit(i8 zeroext %102)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %116

105:                                              ; preds = %100
  %106 = load i32, i32* %7, align 4
  %107 = mul nsw i32 %106, 10
  %108 = load i8*, i8** %8, align 8
  %109 = load i8, i8* %108, align 1
  %110 = sext i8 %109 to i32
  %111 = add nsw i32 %107, %110
  %112 = sub nsw i32 %111, 48
  store i32 %112, i32* %7, align 4
  br label %113

113:                                              ; preds = %105
  %114 = load i8*, i8** %8, align 8
  %115 = getelementptr inbounds i8, i8* %114, i32 1
  store i8* %115, i8** %8, align 8
  br label %100

116:                                              ; preds = %100
  %117 = load i32, i32* %7, align 4
  %118 = icmp sgt i32 %117, 100
  br i1 %118, label %119, label %123

119:                                              ; preds = %116
  %120 = load i32, i32* @stderr, align 4
  %121 = call i32 (i32, i8*, ...) @fprintf(i32 %120, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  %122 = load i32, i32* @FALSE, align 4
  store i32 %122, i32* %3, align 4
  br label %210

123:                                              ; preds = %116
  %124 = load i8*, i8** %8, align 8
  %125 = load i8, i8* %124, align 1
  %126 = sext i8 %125 to i32
  %127 = icmp eq i32 %126, 46
  br i1 %127, label %128, label %132

128:                                              ; preds = %123
  %129 = load i32, i32* @stderr, align 4
  %130 = call i32 (i32, i8*, ...) @fprintf(i32 %129, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0))
  %131 = load i32, i32* @FALSE, align 4
  store i32 %131, i32* %3, align 4
  br label %210

132:                                              ; preds = %123
  %133 = load i8*, i8** %8, align 8
  %134 = load i8, i8* %133, align 1
  %135 = sext i8 %134 to i32
  %136 = icmp ne i32 %135, 37
  br i1 %136, label %137, label %144

137:                                              ; preds = %132
  %138 = load i32, i32* @NO_PROB, align 4
  store i32 %138, i32* %7, align 4
  %139 = load i8**, i8*** %4, align 8
  %140 = load i32, i32* %6, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds i8*, i8** %139, i64 %141
  %143 = load i8*, i8** %142, align 8
  store i8* %143, i8** %8, align 8
  br label %166

144:                                              ; preds = %132
  %145 = load i8*, i8** %8, align 8
  %146 = getelementptr inbounds i8, i8* %145, i32 1
  store i8* %146, i8** %8, align 8
  %147 = load i8, i8* %146, align 1
  %148 = sext i8 %147 to i32
  %149 = icmp eq i32 %148, 0
  br i1 %149, label %150, label %165

150:                                              ; preds = %144
  %151 = load i32, i32* %6, align 4
  %152 = add nsw i32 %151, 1
  store i32 %152, i32* %6, align 4
  %153 = load i32, i32* %5, align 4
  %154 = icmp sge i32 %152, %153
  br i1 %154, label %155, label %159

155:                                              ; preds = %150
  %156 = load i32, i32* @stderr, align 4
  %157 = call i32 (i32, i8*, ...) @fprintf(i32 %156, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0))
  %158 = load i32, i32* @FALSE, align 4
  store i32 %158, i32* %3, align 4
  br label %210

159:                                              ; preds = %150
  %160 = load i8**, i8*** %4, align 8
  %161 = load i32, i32* %6, align 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds i8*, i8** %160, i64 %162
  %164 = load i8*, i8** %163, align 8
  store i8* %164, i8** %8, align 8
  br label %165

165:                                              ; preds = %159, %144
  br label %166

166:                                              ; preds = %165, %137
  br label %167

167:                                              ; preds = %166, %88
  %168 = load i8*, i8** %8, align 8
  %169 = call i64 @strcmp(i8* %168, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %170 = icmp eq i64 %169, 0
  br i1 %170, label %171, label %196

171:                                              ; preds = %167
  %172 = load i8**, i8*** @Fortune_path_arr, align 8
  store i8** %172, i8*** %9, align 8
  store i32 0, i32* %6, align 4
  br label %173

173:                                              ; preds = %177, %171
  %174 = load i8**, i8*** %9, align 8
  %175 = load i8*, i8** %174, align 8
  %176 = icmp ne i8* %175, null
  br i1 %176, label %177, label %187

177:                                              ; preds = %173
  %178 = load i32, i32* @NO_PROB, align 4
  %179 = load i8**, i8*** %9, align 8
  %180 = getelementptr inbounds i8*, i8** %179, i32 1
  store i8** %180, i8*** %9, align 8
  %181 = load i8*, i8** %179, align 8
  %182 = call i64 @add_file(i32 %178, i8* %181, i32* null, i32* @File_list, i32* @File_tail, i32* null)
  %183 = load i32, i32* %6, align 4
  %184 = sext i32 %183 to i64
  %185 = add nsw i64 %184, %182
  %186 = trunc i64 %185 to i32
  store i32 %186, i32* %6, align 4
  br label %173

187:                                              ; preds = %173
  %188 = load i32, i32* %6, align 4
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %195, label %190

190:                                              ; preds = %187
  %191 = load i32, i32* @stderr, align 4
  %192 = load i8*, i8** @Fortune_path, align 8
  %193 = call i32 (i32, i8*, ...) @fprintf(i32 %191, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i8* %192)
  %194 = load i32, i32* @FALSE, align 4
  store i32 %194, i32* %3, align 4
  br label %210

195:                                              ; preds = %187
  br label %204

196:                                              ; preds = %167
  %197 = load i32, i32* %7, align 4
  %198 = load i8*, i8** %8, align 8
  %199 = call i64 @add_file(i32 %197, i8* %198, i32* null, i32* @File_list, i32* @File_tail, i32* null)
  %200 = icmp ne i64 %199, 0
  br i1 %200, label %203, label %201

201:                                              ; preds = %196
  %202 = load i32, i32* @FALSE, align 4
  store i32 %202, i32* %3, align 4
  br label %210

203:                                              ; preds = %196
  br label %204

204:                                              ; preds = %203, %195
  br label %205

205:                                              ; preds = %204
  %206 = load i32, i32* %6, align 4
  %207 = add nsw i32 %206, 1
  store i32 %207, i32* %6, align 4
  br label %73

208:                                              ; preds = %73
  %209 = load i32, i32* @TRUE, align 4
  store i32 %209, i32* %3, align 4
  br label %210

210:                                              ; preds = %208, %201, %190, %155, %128, %119, %68, %40
  %211 = load i32, i32* %3, align 4
  ret i32 %211
}

declare dso_local i64 @add_file(i32, i8*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i64 @isdigit(i8 zeroext) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
