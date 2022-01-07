; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/fmt/extr_fmt.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/fmt/extr_fmt.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LC_CTYPE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"0123456789cd:hl:mnpst:w:\00", align 1
@centerP = common dso_local global i32 0, align 4
@format_troff = common dso_local global i32 0, align 4
@optarg = common dso_local global i8* null, align 8
@EX_USAGE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [34 x i8] c"bad sentence-ending character set\00", align 1
@sentence_enders = common dso_local global i32* null, align 8
@.str.3 = private unnamed_addr constant [38 x i8] c"output tab width must be non-negative\00", align 1
@output_tab_width = common dso_local global i32 0, align 4
@grok_mail_headers = common dso_local global i32 0, align 4
@allow_indented_paragraphs = common dso_local global i32 0, align 4
@coalesce_spaces_P = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [27 x i8] c"tab width must be positive\00", align 1
@tab_width = common dso_local global i8* null, align 8
@.str.5 = private unnamed_addr constant [23 x i8] c"width must be positive\00", align 1
@goal_length = common dso_local global i64 0, align 8
@max_length = common dso_local global i64 0, align 8
@optind = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [22 x i8] c"width must be nonzero\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [623 x i8] c"usage:   fmt [-cmps] [-d chars] [-l num] [-t num]\0A             [-w width | -width | goal [maximum]] [file ...]\0AOptions: -c     center each line instead of formatting\0A         -d <chars> double-space after <chars> at line end\0A         -l <n> turn each <n> spaces at start of line into a tab\0A         -m     try to make sure mail header lines stay separate\0A         -n     format lines beginning with a dot\0A         -p     allow indented paragraphs\0A         -s     coalesce whitespace inside lines\0A         -t <n> have tabs every <n> columns\0A         -w <n> set maximum width to <n>\0A         goal   set target width to goal\0A\00", align 1
@.str.8 = private unnamed_addr constant [29 x i8] c"goal length must be positive\00", align 1
@.str.9 = private unnamed_addr constant [28 x i8] c"max length must be positive\00", align 1
@.str.10 = private unnamed_addr constant [34 x i8] c"max length must be >= goal length\00", align 1
@SIZE_T_MAX = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [21 x i8] c"max length too large\00", align 1
@output_buffer = common dso_local global i8* null, align 8
@stdin = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [15 x i8] c"standard input\00", align 1
@n_errors = common dso_local global i64 0, align 8
@EX_NOINPUT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %11 = load i32, i32* @LC_CTYPE, align 4
  %12 = call i32 @setlocale(i32 %11, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  br label %13

13:                                               ; preds = %96, %50, %47, %46, %45, %44, %43, %40, %29, %20, %2
  %14 = load i32, i32* %4, align 4
  %15 = load i8**, i8*** %5, align 8
  %16 = call i32 @getopt(i32 %14, i8** %15, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  store i32 %16, i32* %6, align 4
  %17 = icmp ne i32 %16, -1
  br i1 %17, label %18, label %109

18:                                               ; preds = %13
  %19 = load i32, i32* %6, align 4
  switch i32 %19, label %98 [
    i32 99, label %20
    i32 100, label %21
    i32 108, label %40
    i32 109, label %43
    i32 110, label %44
    i32 112, label %45
    i32 115, label %46
    i32 116, label %47
    i32 119, label %50
    i32 48, label %55
    i32 49, label %55
    i32 50, label %55
    i32 51, label %55
    i32 52, label %55
    i32 53, label %55
    i32 54, label %55
    i32 55, label %55
    i32 56, label %55
    i32 57, label %55
    i32 104, label %97
  ]

20:                                               ; preds = %18
  store i32 1, i32* @centerP, align 4
  store i32 1, i32* @format_troff, align 4
  br label %13

21:                                               ; preds = %18
  %22 = load i8*, i8** @optarg, align 8
  store i8* %22, i8** %9, align 8
  %23 = call i64 @mbsrtowcs(i32* null, i8** %9, i64 0, i32* null)
  store i64 %23, i64* %8, align 8
  %24 = load i64, i64* %8, align 8
  %25 = icmp eq i64 %24, -1
  br i1 %25, label %26, label %29

26:                                               ; preds = %21
  %27 = load i32, i32* @EX_USAGE, align 4
  %28 = call i32 @err(i32 %27, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0))
  br label %29

29:                                               ; preds = %26, %21
  %30 = load i64, i64* %8, align 8
  %31 = add i64 %30, 1
  %32 = mul i64 %31, 4
  %33 = call i8* @XMALLOC(i64 %32)
  %34 = bitcast i8* %33 to i32*
  store i32* %34, i32** %7, align 8
  %35 = load i32*, i32** %7, align 8
  %36 = load i64, i64* %8, align 8
  %37 = add i64 %36, 1
  %38 = call i64 @mbsrtowcs(i32* %35, i8** %9, i64 %37, i32* null)
  %39 = load i32*, i32** %7, align 8
  store i32* %39, i32** @sentence_enders, align 8
  br label %13

40:                                               ; preds = %18
  %41 = load i8*, i8** @optarg, align 8
  %42 = call i32 @get_nonnegative(i8* %41, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0), i32 1)
  store i32 %42, i32* @output_tab_width, align 4
  br label %13

43:                                               ; preds = %18
  store i32 1, i32* @grok_mail_headers, align 4
  br label %13

44:                                               ; preds = %18
  store i32 1, i32* @format_troff, align 4
  br label %13

45:                                               ; preds = %18
  store i32 1, i32* @allow_indented_paragraphs, align 4
  br label %13

46:                                               ; preds = %18
  store i32 1, i32* @coalesce_spaces_P, align 4
  br label %13

47:                                               ; preds = %18
  %48 = load i8*, i8** @optarg, align 8
  %49 = call i8* @get_positive(i8* %48, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0), i32 1)
  store i8* %49, i8** @tab_width, align 8
  br label %13

50:                                               ; preds = %18
  %51 = load i8*, i8** @optarg, align 8
  %52 = call i8* @get_positive(i8* %51, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0), i32 1)
  %53 = ptrtoint i8* %52 to i64
  store i64 %53, i64* @goal_length, align 8
  %54 = load i64, i64* @goal_length, align 8
  store i64 %54, i64* @max_length, align 8
  br label %13

55:                                               ; preds = %18, %18, %18, %18, %18, %18, %18, %18, %18, %18
  %56 = load i64, i64* @goal_length, align 8
  %57 = icmp eq i64 %56, 0
  br i1 %57, label %58, label %96

58:                                               ; preds = %55
  %59 = load i8**, i8*** %5, align 8
  %60 = load i64, i64* @optind, align 8
  %61 = sub i64 %60, 1
  %62 = getelementptr inbounds i8*, i8** %59, i64 %61
  %63 = load i8*, i8** %62, align 8
  store i8* %63, i8** %10, align 8
  %64 = load i8*, i8** %10, align 8
  %65 = getelementptr inbounds i8, i8* %64, i64 0
  %66 = load i8, i8* %65, align 1
  %67 = sext i8 %66 to i32
  %68 = icmp eq i32 %67, 45
  br i1 %68, label %69, label %86

69:                                               ; preds = %58
  %70 = load i8*, i8** %10, align 8
  %71 = getelementptr inbounds i8, i8* %70, i64 1
  %72 = load i8, i8* %71, align 1
  %73 = sext i8 %72 to i32
  %74 = load i32, i32* %6, align 4
  %75 = icmp eq i32 %73, %74
  br i1 %75, label %76, label %86

76:                                               ; preds = %69
  %77 = load i8*, i8** %10, align 8
  %78 = getelementptr inbounds i8, i8* %77, i64 2
  %79 = load i8, i8* %78, align 1
  %80 = icmp ne i8 %79, 0
  br i1 %80, label %86, label %81

81:                                               ; preds = %76
  %82 = load i8*, i8** %10, align 8
  %83 = getelementptr inbounds i8, i8* %82, i32 1
  store i8* %83, i8** %10, align 8
  %84 = call i8* @get_positive(i8* %83, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i64 0, i64 0), i32 1)
  %85 = ptrtoint i8* %84 to i64
  store i64 %85, i64* @goal_length, align 8
  br label %94

86:                                               ; preds = %76, %69, %58
  %87 = load i8**, i8*** %5, align 8
  %88 = load i64, i64* @optind, align 8
  %89 = getelementptr inbounds i8*, i8** %87, i64 %88
  %90 = load i8*, i8** %89, align 8
  %91 = getelementptr inbounds i8, i8* %90, i64 1
  %92 = call i8* @get_positive(i8* %91, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i64 0, i64 0), i32 1)
  %93 = ptrtoint i8* %92 to i64
  store i64 %93, i64* @goal_length, align 8
  br label %94

94:                                               ; preds = %86, %81
  %95 = load i64, i64* @goal_length, align 8
  store i64 %95, i64* @max_length, align 8
  br label %96

96:                                               ; preds = %94, %55
  br label %13

97:                                               ; preds = %18
  br label %98

98:                                               ; preds = %18, %97
  %99 = load i32, i32* @stderr, align 4
  %100 = call i32 @fprintf(i32 %99, i8* getelementptr inbounds ([623 x i8], [623 x i8]* @.str.7, i64 0, i64 0))
  %101 = load i32, i32* %6, align 4
  %102 = icmp eq i32 %101, 104
  br i1 %102, label %103, label %104

103:                                              ; preds = %98
  br label %106

104:                                              ; preds = %98
  %105 = load i32, i32* @EX_USAGE, align 4
  br label %106

106:                                              ; preds = %104, %103
  %107 = phi i32 [ 0, %103 ], [ %105, %104 ]
  %108 = call i32 @exit(i32 %107) #3
  unreachable

109:                                              ; preds = %13
  %110 = load i64, i64* @optind, align 8
  %111 = load i32, i32* %4, align 4
  %112 = sext i32 %111 to i64
  %113 = sub i64 %112, %110
  %114 = trunc i64 %113 to i32
  store i32 %114, i32* %4, align 4
  %115 = load i64, i64* @optind, align 8
  %116 = load i8**, i8*** %5, align 8
  %117 = getelementptr inbounds i8*, i8** %116, i64 %115
  store i8** %117, i8*** %5, align 8
  %118 = load i32, i32* %4, align 4
  %119 = icmp sgt i32 %118, 0
  br i1 %119, label %120, label %155

120:                                              ; preds = %109
  %121 = load i64, i64* @goal_length, align 8
  %122 = icmp eq i64 %121, 0
  br i1 %122, label %123, label %155

123:                                              ; preds = %120
  %124 = load i8**, i8*** %5, align 8
  %125 = load i8*, i8** %124, align 8
  %126 = call i8* @get_positive(i8* %125, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.8, i64 0, i64 0), i32 0)
  %127 = ptrtoint i8* %126 to i64
  store i64 %127, i64* @goal_length, align 8
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %155

129:                                              ; preds = %123
  %130 = load i32, i32* %4, align 4
  %131 = add nsw i32 %130, -1
  store i32 %131, i32* %4, align 4
  %132 = load i8**, i8*** %5, align 8
  %133 = getelementptr inbounds i8*, i8** %132, i32 1
  store i8** %133, i8*** %5, align 8
  %134 = load i32, i32* %4, align 4
  %135 = icmp sgt i32 %134, 0
  br i1 %135, label %136, label %154

136:                                              ; preds = %129
  %137 = load i8**, i8*** %5, align 8
  %138 = load i8*, i8** %137, align 8
  %139 = call i8* @get_positive(i8* %138, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.9, i64 0, i64 0), i32 0)
  %140 = ptrtoint i8* %139 to i64
  store i64 %140, i64* @max_length, align 8
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %142, label %154

142:                                              ; preds = %136
  %143 = load i32, i32* %4, align 4
  %144 = add nsw i32 %143, -1
  store i32 %144, i32* %4, align 4
  %145 = load i8**, i8*** %5, align 8
  %146 = getelementptr inbounds i8*, i8** %145, i32 1
  store i8** %146, i8*** %5, align 8
  %147 = load i64, i64* @max_length, align 8
  %148 = load i64, i64* @goal_length, align 8
  %149 = icmp slt i64 %147, %148
  br i1 %149, label %150, label %153

150:                                              ; preds = %142
  %151 = load i32, i32* @EX_USAGE, align 4
  %152 = call i32 @errx(i32 %151, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.10, i64 0, i64 0))
  br label %153

153:                                              ; preds = %150, %142
  br label %154

154:                                              ; preds = %153, %136, %129
  br label %155

155:                                              ; preds = %154, %123, %120, %109
  %156 = load i64, i64* @goal_length, align 8
  %157 = icmp eq i64 %156, 0
  br i1 %157, label %158, label %159

158:                                              ; preds = %155
  store i64 65, i64* @goal_length, align 8
  br label %159

159:                                              ; preds = %158, %155
  %160 = load i64, i64* @max_length, align 8
  %161 = icmp eq i64 %160, 0
  br i1 %161, label %162, label %165

162:                                              ; preds = %159
  %163 = load i64, i64* @goal_length, align 8
  %164 = add nsw i64 %163, 10
  store i64 %164, i64* @max_length, align 8
  br label %165

165:                                              ; preds = %162, %159
  %166 = load i64, i64* @max_length, align 8
  %167 = load i32, i32* @SIZE_T_MAX, align 4
  %168 = sext i32 %167 to i64
  %169 = udiv i64 %168, 4
  %170 = icmp uge i64 %166, %169
  br i1 %170, label %171, label %174

171:                                              ; preds = %165
  %172 = load i32, i32* @EX_USAGE, align 4
  %173 = call i32 @errx(i32 %172, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.11, i64 0, i64 0))
  br label %174

174:                                              ; preds = %171, %165
  %175 = load i64, i64* @max_length, align 8
  %176 = add nsw i64 %175, 1
  %177 = mul i64 %176, 4
  %178 = call i8* @XMALLOC(i64 %177)
  store i8* %178, i8** @output_buffer, align 8
  %179 = load i32, i32* %4, align 4
  %180 = icmp sgt i32 %179, 0
  br i1 %180, label %181, label %193

181:                                              ; preds = %174
  br label %182

182:                                              ; preds = %186, %181
  %183 = load i32, i32* %4, align 4
  %184 = add nsw i32 %183, -1
  store i32 %184, i32* %4, align 4
  %185 = icmp sgt i32 %183, 0
  br i1 %185, label %186, label %192

186:                                              ; preds = %182
  %187 = load i8**, i8*** %5, align 8
  %188 = getelementptr inbounds i8*, i8** %187, i32 1
  store i8** %188, i8*** %5, align 8
  %189 = load i8*, i8** %187, align 8
  %190 = ptrtoint i8* %189 to i32
  %191 = call i32 @process_named_file(i32 %190)
  br label %182

192:                                              ; preds = %182
  br label %196

193:                                              ; preds = %174
  %194 = load i32, i32* @stdin, align 4
  %195 = call i32 @process_stream(i32 %194, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.12, i64 0, i64 0))
  br label %196

196:                                              ; preds = %193, %192
  %197 = load i64, i64* @n_errors, align 8
  %198 = icmp ne i64 %197, 0
  br i1 %198, label %199, label %201

199:                                              ; preds = %196
  %200 = load i32, i32* @EX_NOINPUT, align 4
  br label %202

201:                                              ; preds = %196
  br label %202

202:                                              ; preds = %201, %199
  %203 = phi i32 [ %200, %199 ], [ 0, %201 ]
  ret i32 %203
}

declare dso_local i32 @setlocale(i32, i8*) #1

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i64 @mbsrtowcs(i32*, i8**, i64, i32*) #1

declare dso_local i32 @err(i32, i8*) #1

declare dso_local i8* @XMALLOC(i64) #1

declare dso_local i32 @get_nonnegative(i8*, i8*, i32) #1

declare dso_local i8* @get_positive(i8*, i8*, i32) #1

declare dso_local i32 @fprintf(i32, i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @errx(i32, i8*) #1

declare dso_local i32 @process_named_file(i32) #1

declare dso_local i32 @process_stream(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
