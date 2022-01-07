; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_replace.c_cmd_replace.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_replace.c_cmd_replace.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.option = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"list\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"list replace refs\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"delete\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"delete replace refs\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"edit\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"edit existing object\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"graft\00", align 1
@.str.7 = private unnamed_addr constant [26 x i8] c"change a commit's parents\00", align 1
@.str.8 = private unnamed_addr constant [19 x i8] c"convert-graft-file\00", align 1
@.str.9 = private unnamed_addr constant [28 x i8] c"convert existing graft file\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"force\00", align 1
@.str.11 = private unnamed_addr constant [29 x i8] c"replace the ref if it exists\00", align 1
@PARSE_OPT_NOCOMPLETE = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [4 x i8] c"raw\00", align 1
@.str.13 = private unnamed_addr constant [40 x i8] c"do not pretty-print contents for --edit\00", align 1
@.str.14 = private unnamed_addr constant [7 x i8] c"format\00", align 1
@.str.15 = private unnamed_addr constant [16 x i8] c"use this format\00", align 1
@read_replace_refs = common dso_local global i64 0, align 8
@git_default_config = common dso_local global i32 0, align 4
@git_replace_usage = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [41 x i8] c"--format cannot be used when not listing\00", align 1
@.str.17 = private unnamed_addr constant [47 x i8] c"-f only makes sense when writing a replacement\00", align 1
@.str.18 = private unnamed_addr constant [35 x i8] c"--raw only makes sense with --edit\00", align 1
@.str.19 = private unnamed_addr constant [31 x i8] c"-d needs at least one argument\00", align 1
@delete_replace_ref = common dso_local global i32 0, align 4
@.str.20 = private unnamed_addr constant [24 x i8] c"bad number of arguments\00", align 1
@.str.21 = private unnamed_addr constant [30 x i8] c"-e needs exactly one argument\00", align 1
@.str.22 = private unnamed_addr constant [31 x i8] c"-g needs at least one argument\00", align 1
@.str.23 = private unnamed_addr constant [39 x i8] c"--convert-graft-file takes no argument\00", align 1
@.str.24 = private unnamed_addr constant [38 x i8] c"only one pattern can be given with -l\00", align 1
@.str.25 = private unnamed_addr constant [19 x i8] c"invalid cmdmode %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cmd_replace(i32 %0, i8** %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8**, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca [9 x %struct.option], align 16
  store i32 %0, i32* %5, align 4
  store i8** %1, i8*** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i8* null, i8** %10, align 8
  store i32 0, i32* %11, align 4
  %13 = getelementptr inbounds [9 x %struct.option], [9 x %struct.option]* %12, i64 0, i64 0
  %14 = call i32 @N_(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  %15 = call i32 @OPT_CMDMODE(i8 signext 108, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32* %11, i32 %14, i32 1)
  %16 = getelementptr inbounds %struct.option, %struct.option* %13, i32 0, i32 0
  store i32 %15, i32* %16, align 4
  %17 = getelementptr inbounds %struct.option, %struct.option* %13, i64 1
  %18 = call i32 @N_(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0))
  %19 = call i32 @OPT_CMDMODE(i8 signext 100, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32* %11, i32 %18, i32 2)
  %20 = getelementptr inbounds %struct.option, %struct.option* %17, i32 0, i32 0
  store i32 %19, i32* %20, align 4
  %21 = getelementptr inbounds %struct.option, %struct.option* %17, i64 1
  %22 = call i32 @N_(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0))
  %23 = call i32 @OPT_CMDMODE(i8 signext 101, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i32* %11, i32 %22, i32 3)
  %24 = getelementptr inbounds %struct.option, %struct.option* %21, i32 0, i32 0
  store i32 %23, i32* %24, align 4
  %25 = getelementptr inbounds %struct.option, %struct.option* %21, i64 1
  %26 = call i32 @N_(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i64 0, i64 0))
  %27 = call i32 @OPT_CMDMODE(i8 signext 103, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i32* %11, i32 %26, i32 4)
  %28 = getelementptr inbounds %struct.option, %struct.option* %25, i32 0, i32 0
  store i32 %27, i32* %28, align 4
  %29 = getelementptr inbounds %struct.option, %struct.option* %25, i64 1
  %30 = call i32 @N_(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.9, i64 0, i64 0))
  %31 = call i32 @OPT_CMDMODE(i8 signext 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.8, i64 0, i64 0), i32* %11, i32 %30, i32 5)
  %32 = getelementptr inbounds %struct.option, %struct.option* %29, i32 0, i32 0
  store i32 %31, i32* %32, align 4
  %33 = getelementptr inbounds %struct.option, %struct.option* %29, i64 1
  %34 = call i32 @N_(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.11, i64 0, i64 0))
  %35 = load i32, i32* @PARSE_OPT_NOCOMPLETE, align 4
  %36 = call i32 @OPT_BOOL_F(float 1.020000e+02, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i64 0, i64 0), i32* %8, i32 %34, i32 %35)
  %37 = getelementptr inbounds %struct.option, %struct.option* %33, i32 0, i32 0
  store i32 %36, i32* %37, align 4
  %38 = getelementptr inbounds %struct.option, %struct.option* %33, i64 1
  %39 = call i32 @N_(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.13, i64 0, i64 0))
  %40 = call i32 @OPT_BOOL(i32 0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), i32* %9, i32 %39)
  %41 = getelementptr inbounds %struct.option, %struct.option* %38, i32 0, i32 0
  store i32 %40, i32* %41, align 4
  %42 = getelementptr inbounds %struct.option, %struct.option* %38, i64 1
  %43 = call i32 @N_(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.14, i64 0, i64 0))
  %44 = call i32 @N_(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.15, i64 0, i64 0))
  %45 = call i32 @OPT_STRING(i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.14, i64 0, i64 0), i8** %10, i32 %43, i32 %44)
  %46 = getelementptr inbounds %struct.option, %struct.option* %42, i32 0, i32 0
  store i32 %45, i32* %46, align 4
  %47 = getelementptr inbounds %struct.option, %struct.option* %42, i64 1
  %48 = call i32 (...) @OPT_END()
  %49 = getelementptr inbounds %struct.option, %struct.option* %47, i32 0, i32 0
  store i32 %48, i32* %49, align 4
  store i64 0, i64* @read_replace_refs, align 8
  %50 = load i32, i32* @git_default_config, align 4
  %51 = call i32 @git_config(i32 %50, i32* null)
  %52 = load i32, i32* %5, align 4
  %53 = load i8**, i8*** %6, align 8
  %54 = load i8*, i8** %7, align 8
  %55 = getelementptr inbounds [9 x %struct.option], [9 x %struct.option]* %12, i64 0, i64 0
  %56 = load i32, i32* @git_replace_usage, align 4
  %57 = call i32 @parse_options(i32 %52, i8** %53, i8* %54, %struct.option* %55, i32 %56, i32 0)
  store i32 %57, i32* %5, align 4
  %58 = load i32, i32* %11, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %65, label %60

60:                                               ; preds = %3
  %61 = load i32, i32* %5, align 4
  %62 = icmp ne i32 %61, 0
  %63 = zext i1 %62 to i64
  %64 = select i1 %62, i32 6, i32 1
  store i32 %64, i32* %11, align 4
  br label %65

65:                                               ; preds = %60, %3
  %66 = load i8*, i8** %10, align 8
  %67 = icmp ne i8* %66, null
  br i1 %67, label %68, label %76

68:                                               ; preds = %65
  %69 = load i32, i32* %11, align 4
  %70 = icmp ne i32 %69, 1
  br i1 %70, label %71, label %76

71:                                               ; preds = %68
  %72 = call i32 @_(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.16, i64 0, i64 0))
  %73 = load i32, i32* @git_replace_usage, align 4
  %74 = getelementptr inbounds [9 x %struct.option], [9 x %struct.option]* %12, i64 0, i64 0
  %75 = call i32 @usage_msg_opt(i32 %72, i32 %73, %struct.option* %74)
  br label %76

76:                                               ; preds = %71, %68, %65
  %77 = load i32, i32* %8, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %96

79:                                               ; preds = %76
  %80 = load i32, i32* %11, align 4
  %81 = icmp ne i32 %80, 6
  br i1 %81, label %82, label %96

82:                                               ; preds = %79
  %83 = load i32, i32* %11, align 4
  %84 = icmp ne i32 %83, 3
  br i1 %84, label %85, label %96

85:                                               ; preds = %82
  %86 = load i32, i32* %11, align 4
  %87 = icmp ne i32 %86, 4
  br i1 %87, label %88, label %96

88:                                               ; preds = %85
  %89 = load i32, i32* %11, align 4
  %90 = icmp ne i32 %89, 5
  br i1 %90, label %91, label %96

91:                                               ; preds = %88
  %92 = call i32 @_(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.17, i64 0, i64 0))
  %93 = load i32, i32* @git_replace_usage, align 4
  %94 = getelementptr inbounds [9 x %struct.option], [9 x %struct.option]* %12, i64 0, i64 0
  %95 = call i32 @usage_msg_opt(i32 %92, i32 %93, %struct.option* %94)
  br label %96

96:                                               ; preds = %91, %88, %85, %82, %79, %76
  %97 = load i32, i32* %9, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %107

99:                                               ; preds = %96
  %100 = load i32, i32* %11, align 4
  %101 = icmp ne i32 %100, 3
  br i1 %101, label %102, label %107

102:                                              ; preds = %99
  %103 = call i32 @_(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.18, i64 0, i64 0))
  %104 = load i32, i32* @git_replace_usage, align 4
  %105 = getelementptr inbounds [9 x %struct.option], [9 x %struct.option]* %12, i64 0, i64 0
  %106 = call i32 @usage_msg_opt(i32 %103, i32 %104, %struct.option* %105)
  br label %107

107:                                              ; preds = %102, %99, %96
  %108 = load i32, i32* %11, align 4
  switch i32 %108, label %195 [
    i32 2, label %109
    i32 6, label %121
    i32 3, label %138
    i32 4, label %153
    i32 5, label %166
    i32 1, label %181
  ]

109:                                              ; preds = %107
  %110 = load i32, i32* %5, align 4
  %111 = icmp slt i32 %110, 1
  br i1 %111, label %112, label %117

112:                                              ; preds = %109
  %113 = call i32 @_(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.19, i64 0, i64 0))
  %114 = load i32, i32* @git_replace_usage, align 4
  %115 = getelementptr inbounds [9 x %struct.option], [9 x %struct.option]* %12, i64 0, i64 0
  %116 = call i32 @usage_msg_opt(i32 %113, i32 %114, %struct.option* %115)
  br label %117

117:                                              ; preds = %112, %109
  %118 = load i8**, i8*** %6, align 8
  %119 = load i32, i32* @delete_replace_ref, align 4
  %120 = call i32 @for_each_replace_name(i8** %118, i32 %119)
  store i32 %120, i32* %4, align 4
  br label %198

121:                                              ; preds = %107
  %122 = load i32, i32* %5, align 4
  %123 = icmp ne i32 %122, 2
  br i1 %123, label %124, label %129

124:                                              ; preds = %121
  %125 = call i32 @_(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.20, i64 0, i64 0))
  %126 = load i32, i32* @git_replace_usage, align 4
  %127 = getelementptr inbounds [9 x %struct.option], [9 x %struct.option]* %12, i64 0, i64 0
  %128 = call i32 @usage_msg_opt(i32 %125, i32 %126, %struct.option* %127)
  br label %129

129:                                              ; preds = %124, %121
  %130 = load i8**, i8*** %6, align 8
  %131 = getelementptr inbounds i8*, i8** %130, i64 0
  %132 = load i8*, i8** %131, align 8
  %133 = load i8**, i8*** %6, align 8
  %134 = getelementptr inbounds i8*, i8** %133, i64 1
  %135 = load i8*, i8** %134, align 8
  %136 = load i32, i32* %8, align 4
  %137 = call i32 @replace_object(i8* %132, i8* %135, i32 %136)
  store i32 %137, i32* %4, align 4
  br label %198

138:                                              ; preds = %107
  %139 = load i32, i32* %5, align 4
  %140 = icmp ne i32 %139, 1
  br i1 %140, label %141, label %146

141:                                              ; preds = %138
  %142 = call i32 @_(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.21, i64 0, i64 0))
  %143 = load i32, i32* @git_replace_usage, align 4
  %144 = getelementptr inbounds [9 x %struct.option], [9 x %struct.option]* %12, i64 0, i64 0
  %145 = call i32 @usage_msg_opt(i32 %142, i32 %143, %struct.option* %144)
  br label %146

146:                                              ; preds = %141, %138
  %147 = load i8**, i8*** %6, align 8
  %148 = getelementptr inbounds i8*, i8** %147, i64 0
  %149 = load i8*, i8** %148, align 8
  %150 = load i32, i32* %8, align 4
  %151 = load i32, i32* %9, align 4
  %152 = call i32 @edit_and_replace(i8* %149, i32 %150, i32 %151)
  store i32 %152, i32* %4, align 4
  br label %198

153:                                              ; preds = %107
  %154 = load i32, i32* %5, align 4
  %155 = icmp slt i32 %154, 1
  br i1 %155, label %156, label %161

156:                                              ; preds = %153
  %157 = call i32 @_(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.22, i64 0, i64 0))
  %158 = load i32, i32* @git_replace_usage, align 4
  %159 = getelementptr inbounds [9 x %struct.option], [9 x %struct.option]* %12, i64 0, i64 0
  %160 = call i32 @usage_msg_opt(i32 %157, i32 %158, %struct.option* %159)
  br label %161

161:                                              ; preds = %156, %153
  %162 = load i32, i32* %5, align 4
  %163 = load i8**, i8*** %6, align 8
  %164 = load i32, i32* %8, align 4
  %165 = call i32 @create_graft(i32 %162, i8** %163, i32 %164, i32 0)
  store i32 %165, i32* %4, align 4
  br label %198

166:                                              ; preds = %107
  %167 = load i32, i32* %5, align 4
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %169, label %174

169:                                              ; preds = %166
  %170 = call i32 @_(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.23, i64 0, i64 0))
  %171 = load i32, i32* @git_replace_usage, align 4
  %172 = getelementptr inbounds [9 x %struct.option], [9 x %struct.option]* %12, i64 0, i64 0
  %173 = call i32 @usage_msg_opt(i32 %170, i32 %171, %struct.option* %172)
  br label %174

174:                                              ; preds = %169, %166
  %175 = load i32, i32* %8, align 4
  %176 = call i32 @convert_graft_file(i32 %175)
  %177 = icmp ne i32 %176, 0
  %178 = xor i1 %177, true
  %179 = xor i1 %178, true
  %180 = zext i1 %179 to i32
  store i32 %180, i32* %4, align 4
  br label %198

181:                                              ; preds = %107
  %182 = load i32, i32* %5, align 4
  %183 = icmp sgt i32 %182, 1
  br i1 %183, label %184, label %189

184:                                              ; preds = %181
  %185 = call i32 @_(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.24, i64 0, i64 0))
  %186 = load i32, i32* @git_replace_usage, align 4
  %187 = getelementptr inbounds [9 x %struct.option], [9 x %struct.option]* %12, i64 0, i64 0
  %188 = call i32 @usage_msg_opt(i32 %185, i32 %186, %struct.option* %187)
  br label %189

189:                                              ; preds = %184, %181
  %190 = load i8**, i8*** %6, align 8
  %191 = getelementptr inbounds i8*, i8** %190, i64 0
  %192 = load i8*, i8** %191, align 8
  %193 = load i8*, i8** %10, align 8
  %194 = call i32 @list_replace_refs(i8* %192, i8* %193)
  store i32 %194, i32* %4, align 4
  br label %198

195:                                              ; preds = %107
  %196 = load i32, i32* %11, align 4
  %197 = call i32 @BUG(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.25, i64 0, i64 0), i32 %196)
  br label %198

198:                                              ; preds = %117, %129, %146, %161, %174, %189, %195
  %199 = load i32, i32* %4, align 4
  ret i32 %199
}

declare dso_local i32 @OPT_CMDMODE(i8 signext, i8*, i32*, i32, i32) #1

declare dso_local i32 @N_(i8*) #1

declare dso_local i32 @OPT_BOOL_F(float, i8*, i32*, i32, i32) #1

declare dso_local i32 @OPT_BOOL(i32, i8*, i32*, i32) #1

declare dso_local i32 @OPT_STRING(i32, i8*, i8**, i32, i32) #1

declare dso_local i32 @OPT_END(...) #1

declare dso_local i32 @git_config(i32, i32*) #1

declare dso_local i32 @parse_options(i32, i8**, i8*, %struct.option*, i32, i32) #1

declare dso_local i32 @usage_msg_opt(i32, i32, %struct.option*) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @for_each_replace_name(i8**, i32) #1

declare dso_local i32 @replace_object(i8*, i8*, i32) #1

declare dso_local i32 @edit_and_replace(i8*, i32, i32) #1

declare dso_local i32 @create_graft(i32, i8**, i32, i32) #1

declare dso_local i32 @convert_graft_file(i32) #1

declare dso_local i32 @list_replace_refs(i8*, i8*) #1

declare dso_local i32 @BUG(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
