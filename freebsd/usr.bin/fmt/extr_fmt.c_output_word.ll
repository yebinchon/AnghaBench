; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/fmt/extr_fmt.c_output_word.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/fmt/extr_fmt.c_output_word.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@output_in_paragraph = common dso_local global i32 0, align 4
@x = common dso_local global i64 0, align 8
@pending_spaces = common dso_local global i64 0, align 8
@coalesce_spaces_P = common dso_local global i64 0, align 8
@sentence_enders = common dso_local global i32 0, align 4
@goal_length = common dso_local global i64 0, align 8
@output_buffer = common dso_local global i8* null, align 8
@output_buffer_length = common dso_local global i64 0, align 8
@x0 = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [6 x i32] [i32 37, i32 46, i32 42, i32 108, i32 115, i32 0], align 4
@max_length = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [5 x i32] [i32 37, i32 42, i32 108, i32 115, i32 0], align 4
@.str.2 = private unnamed_addr constant [1 x i32] zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, i64, i8*, i64, i64)* @output_word to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @output_word(i64 %0, i64 %1, i8* %2, i64 %3, i64 %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  store i64 %0, i64* %6, align 8
  store i64 %1, i64* %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  store i64 %4, i64* %10, align 8
  %16 = load i32, i32* @output_in_paragraph, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %5
  %19 = load i64, i64* %7, align 8
  br label %22

20:                                               ; preds = %5
  %21 = load i64, i64* %6, align 8
  br label %22

22:                                               ; preds = %20, %18
  %23 = phi i64 [ %19, %18 ], [ %21, %20 ]
  store i64 %23, i64* %12, align 8
  %24 = load i8*, i8** %8, align 8
  store i8* %24, i8** %14, align 8
  store i64 0, i64* %13, align 8
  br label %25

25:                                               ; preds = %44, %22
  %26 = load i8*, i8** %14, align 8
  %27 = load i8*, i8** %8, align 8
  %28 = load i64, i64* %9, align 8
  %29 = getelementptr inbounds i8, i8* %27, i64 %28
  %30 = icmp ult i8* %26, %29
  br i1 %30, label %31, label %47

31:                                               ; preds = %25
  %32 = load i8*, i8** %14, align 8
  %33 = load i8, i8* %32, align 1
  %34 = call i32 @wcwidth(i8 signext %33)
  store i32 %34, i32* %15, align 4
  %35 = icmp sgt i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %31
  %37 = load i32, i32* %15, align 4
  br label %39

38:                                               ; preds = %31
  br label %39

39:                                               ; preds = %38, %36
  %40 = phi i32 [ %37, %36 ], [ 1, %38 ]
  %41 = sext i32 %40 to i64
  %42 = load i64, i64* %13, align 8
  %43 = add i64 %42, %41
  store i64 %43, i64* %13, align 8
  br label %44

44:                                               ; preds = %39
  %45 = load i8*, i8** %14, align 8
  %46 = getelementptr inbounds i8, i8* %45, i32 1
  store i8* %46, i8** %14, align 8
  br label %25

47:                                               ; preds = %25
  %48 = load i64, i64* @x, align 8
  %49 = load i64, i64* @pending_spaces, align 8
  %50 = add i64 %48, %49
  %51 = load i64, i64* %13, align 8
  %52 = add i64 %50, %51
  store i64 %52, i64* %11, align 8
  %53 = load i64, i64* @coalesce_spaces_P, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %58, label %55

55:                                               ; preds = %47
  %56 = load i64, i64* %10, align 8
  %57 = icmp eq i64 %56, 0
  br i1 %57, label %58, label %70

58:                                               ; preds = %55, %47
  %59 = load i32, i32* @sentence_enders, align 4
  %60 = load i8*, i8** %8, align 8
  %61 = load i64, i64* %9, align 8
  %62 = sub i64 %61, 1
  %63 = getelementptr inbounds i8, i8* %60, i64 %62
  %64 = load i8, i8* %63, align 1
  %65 = call i64 @wcschr(i32 %59, i8 signext %64)
  %66 = icmp ne i64 %65, 0
  %67 = zext i1 %66 to i64
  %68 = select i1 %66, i32 2, i32 1
  %69 = sext i32 %68 to i64
  store i64 %69, i64* %10, align 8
  br label %70

70:                                               ; preds = %58, %55
  %71 = load i64, i64* %11, align 8
  %72 = load i64, i64* @goal_length, align 8
  %73 = icmp ule i64 %71, %72
  br i1 %73, label %74, label %105

74:                                               ; preds = %70
  %75 = load i8*, i8** @output_buffer, align 8
  %76 = load i64, i64* @output_buffer_length, align 8
  %77 = getelementptr inbounds i8, i8* %75, i64 %76
  %78 = load i64, i64* @pending_spaces, align 8
  %79 = call i32 @wmemset(i8* %77, i32 32, i64 %78)
  %80 = load i64, i64* @pending_spaces, align 8
  %81 = load i64, i64* @x0, align 8
  %82 = add i64 %81, %80
  store i64 %82, i64* @x0, align 8
  %83 = load i64, i64* @pending_spaces, align 8
  %84 = load i64, i64* @x, align 8
  %85 = add i64 %84, %83
  store i64 %85, i64* @x, align 8
  %86 = load i64, i64* @pending_spaces, align 8
  %87 = load i64, i64* @output_buffer_length, align 8
  %88 = add i64 %87, %86
  store i64 %88, i64* @output_buffer_length, align 8
  %89 = load i8*, i8** @output_buffer, align 8
  %90 = load i64, i64* @output_buffer_length, align 8
  %91 = getelementptr inbounds i8, i8* %89, i64 %90
  %92 = load i8*, i8** %8, align 8
  %93 = load i64, i64* %9, align 8
  %94 = call i32 @wmemcpy(i8* %91, i8* %92, i64 %93)
  %95 = load i64, i64* %13, align 8
  %96 = load i64, i64* @x0, align 8
  %97 = add i64 %96, %95
  store i64 %97, i64* @x0, align 8
  %98 = load i64, i64* %13, align 8
  %99 = load i64, i64* @x, align 8
  %100 = add i64 %99, %98
  store i64 %100, i64* @x, align 8
  %101 = load i64, i64* %9, align 8
  %102 = load i64, i64* @output_buffer_length, align 8
  %103 = add i64 %102, %101
  store i64 %103, i64* @output_buffer_length, align 8
  %104 = load i64, i64* %10, align 8
  store i64 %104, i64* @pending_spaces, align 8
  br label %168

105:                                              ; preds = %70
  %106 = load i64, i64* %12, align 8
  %107 = icmp ugt i64 %106, 0
  br i1 %107, label %108, label %111

108:                                              ; preds = %105
  %109 = load i64, i64* %12, align 8
  %110 = call i32 @output_indent(i64 %109)
  br label %111

111:                                              ; preds = %108, %105
  %112 = load i64, i64* @output_buffer_length, align 8
  %113 = trunc i64 %112 to i32
  %114 = load i8*, i8** @output_buffer, align 8
  %115 = call i32 @wprintf(i8* bitcast ([6 x i32]* @.str to i8*), i32 %113, i8* %114)
  %116 = load i64, i64* @x0, align 8
  %117 = icmp eq i64 %116, 0
  br i1 %117, label %130, label %118

118:                                              ; preds = %111
  %119 = load i64, i64* %11, align 8
  %120 = load i64, i64* @max_length, align 8
  %121 = icmp ule i64 %119, %120
  br i1 %121, label %122, label %134

122:                                              ; preds = %118
  %123 = load i64, i64* %11, align 8
  %124 = load i64, i64* @goal_length, align 8
  %125 = sub i64 %123, %124
  %126 = load i64, i64* @goal_length, align 8
  %127 = load i64, i64* @x, align 8
  %128 = sub i64 %126, %127
  %129 = icmp ule i64 %125, %128
  br i1 %129, label %130, label %134

130:                                              ; preds = %122, %111
  %131 = load i64, i64* @pending_spaces, align 8
  %132 = trunc i64 %131 to i32
  %133 = call i32 @wprintf(i8* bitcast ([5 x i32]* @.str.1 to i8*), i32 %132, i8* bitcast ([1 x i32]* @.str.2 to i8*))
  br label %148

134:                                              ; preds = %122, %118
  %135 = load i64, i64* %12, align 8
  %136 = load i64, i64* %13, align 8
  %137 = add i64 %135, %136
  %138 = load i64, i64* @max_length, align 8
  %139 = icmp ugt i64 %137, %138
  br i1 %139, label %140, label %154

140:                                              ; preds = %134
  %141 = call i32 @putwchar(i8 signext 10)
  %142 = load i64, i64* %12, align 8
  %143 = icmp ugt i64 %142, 0
  br i1 %143, label %144, label %147

144:                                              ; preds = %140
  %145 = load i64, i64* %12, align 8
  %146 = call i32 @output_indent(i64 %145)
  br label %147

147:                                              ; preds = %144, %140
  br label %148

148:                                              ; preds = %147, %130
  %149 = load i64, i64* %9, align 8
  %150 = trunc i64 %149 to i32
  %151 = load i8*, i8** %8, align 8
  %152 = call i32 @wprintf(i8* bitcast ([6 x i32]* @.str to i8*), i32 %150, i8* %151)
  store i64 0, i64* @x0, align 8
  %153 = load i64, i64* %7, align 8
  store i64 %153, i64* @x, align 8
  store i64 0, i64* @pending_spaces, align 8
  store i64 0, i64* @output_buffer_length, align 8
  br label %165

154:                                              ; preds = %134
  %155 = load i8*, i8** @output_buffer, align 8
  %156 = load i8*, i8** %8, align 8
  %157 = load i64, i64* %9, align 8
  %158 = call i32 @wmemcpy(i8* %155, i8* %156, i64 %157)
  %159 = load i64, i64* %13, align 8
  store i64 %159, i64* @x0, align 8
  %160 = load i64, i64* %13, align 8
  %161 = load i64, i64* %7, align 8
  %162 = add i64 %160, %161
  store i64 %162, i64* @x, align 8
  %163 = load i64, i64* %10, align 8
  store i64 %163, i64* @pending_spaces, align 8
  %164 = load i64, i64* %9, align 8
  store i64 %164, i64* @output_buffer_length, align 8
  br label %165

165:                                              ; preds = %154, %148
  br label %166

166:                                              ; preds = %165
  %167 = call i32 @putwchar(i8 signext 10)
  store i32 1, i32* @output_in_paragraph, align 4
  br label %168

168:                                              ; preds = %166, %74
  ret void
}

declare dso_local i32 @wcwidth(i8 signext) #1

declare dso_local i64 @wcschr(i32, i8 signext) #1

declare dso_local i32 @wmemset(i8*, i32, i64) #1

declare dso_local i32 @wmemcpy(i8*, i8*, i64) #1

declare dso_local i32 @output_indent(i64) #1

declare dso_local i32 @wprintf(i8*, i32, i8*) #1

declare dso_local i32 @putwchar(i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
