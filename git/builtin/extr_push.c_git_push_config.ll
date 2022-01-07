; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_push.c_git_push_config.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_push.c_git_push_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [16 x i8] c"push.followtags\00", align 1
@TRANSPORT_PUSH_FOLLOW_TAGS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"push.gpgsign\00", align 1
@SEND_PACK_PUSH_CERT_NEVER = common dso_local global i32 0, align 4
@SEND_PACK_PUSH_CERT_ALWAYS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [9 x i8] c"if-asked\00", align 1
@SEND_PACK_PUSH_CERT_IF_ASKED = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [23 x i8] c"Invalid value for '%s'\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"push.recursesubmodules\00", align 1
@recurse_submodules = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [18 x i8] c"submodule.recurse\00", align 1
@RECURSE_SUBMODULES_ON_DEMAND = common dso_local global i32 0, align 4
@RECURSE_SUBMODULES_OFF = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [16 x i8] c"push.pushoption\00", align 1
@push_options_config = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [11 x i8] c"color.push\00", align 1
@push_use_color = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [12 x i8] c"color.push.\00", align 1
@push_colors = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i8*)* @git_push_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @git_push_config(i8* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %15 = load i8*, i8** %7, align 8
  %16 = bitcast i8* %15 to i32*
  store i32* %16, i32** %9, align 8
  %17 = load i8*, i8** %5, align 8
  %18 = load i8*, i8** %6, align 8
  %19 = call i32 @git_gpg_config(i8* %17, i8* %18, i32* null)
  store i32 %19, i32* %10, align 4
  %20 = load i32, i32* %10, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %3
  %23 = load i32, i32* %10, align 4
  store i32 %23, i32* %4, align 4
  br label %171

24:                                               ; preds = %3
  %25 = load i8*, i8** %5, align 8
  %26 = call i32 @strcmp(i8* %25, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %45, label %28

28:                                               ; preds = %24
  %29 = load i8*, i8** %5, align 8
  %30 = load i8*, i8** %6, align 8
  %31 = call i64 @git_config_bool(i8* %29, i8* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %28
  %34 = load i32, i32* @TRANSPORT_PUSH_FOLLOW_TAGS, align 4
  %35 = load i32*, i32** %9, align 8
  %36 = load i32, i32* %35, align 4
  %37 = or i32 %36, %34
  store i32 %37, i32* %35, align 4
  br label %44

38:                                               ; preds = %28
  %39 = load i32, i32* @TRANSPORT_PUSH_FOLLOW_TAGS, align 4
  %40 = xor i32 %39, -1
  %41 = load i32*, i32** %9, align 8
  %42 = load i32, i32* %41, align 4
  %43 = and i32 %42, %40
  store i32 %43, i32* %41, align 4
  br label %44

44:                                               ; preds = %38, %33
  store i32 0, i32* %4, align 4
  br label %171

45:                                               ; preds = %24
  %46 = load i8*, i8** %5, align 8
  %47 = call i32 @strcmp(i8* %46, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %80, label %49

49:                                               ; preds = %45
  %50 = call i32 @git_config_get_value(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i8** %11)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %79, label %52

52:                                               ; preds = %49
  %53 = load i8*, i8** %11, align 8
  %54 = call i32 @git_parse_maybe_bool(i8* %53)
  switch i32 %54, label %63 [
    i32 0, label %55
    i32 1, label %59
  ]

55:                                               ; preds = %52
  %56 = load i32*, i32** %9, align 8
  %57 = load i32, i32* @SEND_PACK_PUSH_CERT_NEVER, align 4
  %58 = call i32 @set_push_cert_flags(i32* %56, i32 %57)
  br label %78

59:                                               ; preds = %52
  %60 = load i32*, i32** %9, align 8
  %61 = load i32, i32* @SEND_PACK_PUSH_CERT_ALWAYS, align 4
  %62 = call i32 @set_push_cert_flags(i32* %60, i32 %61)
  br label %78

63:                                               ; preds = %52
  %64 = load i8*, i8** %11, align 8
  %65 = icmp ne i8* %64, null
  br i1 %65, label %66, label %74

66:                                               ; preds = %63
  %67 = load i8*, i8** %11, align 8
  %68 = call i32 @strcasecmp(i8* %67, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %74, label %70

70:                                               ; preds = %66
  %71 = load i32*, i32** %9, align 8
  %72 = load i32, i32* @SEND_PACK_PUSH_CERT_IF_ASKED, align 4
  %73 = call i32 @set_push_cert_flags(i32* %71, i32 %72)
  br label %77

74:                                               ; preds = %66, %63
  %75 = load i8*, i8** %5, align 8
  %76 = call i32 @error(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0), i8* %75)
  store i32 %76, i32* %4, align 4
  br label %171

77:                                               ; preds = %70
  br label %78

78:                                               ; preds = %77, %59, %55
  br label %79

79:                                               ; preds = %78, %49
  br label %166

80:                                               ; preds = %45
  %81 = load i8*, i8** %5, align 8
  %82 = call i32 @strcmp(i8* %81, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0))
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %92, label %84

84:                                               ; preds = %80
  %85 = call i32 @git_config_get_value(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0), i8** %12)
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %91, label %87

87:                                               ; preds = %84
  %88 = load i8*, i8** %5, align 8
  %89 = load i8*, i8** %12, align 8
  %90 = call i32 @parse_push_recurse_submodules_arg(i8* %88, i8* %89)
  store i32 %90, i32* @recurse_submodules, align 4
  br label %91

91:                                               ; preds = %87, %84
  br label %165

92:                                               ; preds = %80
  %93 = load i8*, i8** %5, align 8
  %94 = call i32 @strcmp(i8* %93, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0))
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %108, label %96

96:                                               ; preds = %92
  %97 = load i8*, i8** %5, align 8
  %98 = load i8*, i8** %6, align 8
  %99 = call i64 @git_config_bool(i8* %97, i8* %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %103

101:                                              ; preds = %96
  %102 = load i32, i32* @RECURSE_SUBMODULES_ON_DEMAND, align 4
  br label %105

103:                                              ; preds = %96
  %104 = load i32, i32* @RECURSE_SUBMODULES_OFF, align 4
  br label %105

105:                                              ; preds = %103, %101
  %106 = phi i32 [ %102, %101 ], [ %104, %103 ]
  store i32 %106, i32* %13, align 4
  %107 = load i32, i32* %13, align 4
  store i32 %107, i32* @recurse_submodules, align 4
  br label %164

108:                                              ; preds = %92
  %109 = load i8*, i8** %5, align 8
  %110 = call i32 @strcmp(i8* %109, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i64 0, i64 0))
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %129, label %112

112:                                              ; preds = %108
  %113 = load i8*, i8** %6, align 8
  %114 = icmp ne i8* %113, null
  br i1 %114, label %118, label %115

115:                                              ; preds = %112
  %116 = load i8*, i8** %5, align 8
  %117 = call i32 @config_error_nonbool(i8* %116)
  store i32 %117, i32* %4, align 4
  br label %171

118:                                              ; preds = %112
  %119 = load i8*, i8** %6, align 8
  %120 = load i8, i8* %119, align 1
  %121 = icmp ne i8 %120, 0
  br i1 %121, label %124, label %122

122:                                              ; preds = %118
  %123 = call i32 @string_list_clear(i32* @push_options_config, i32 0)
  br label %127

124:                                              ; preds = %118
  %125 = load i8*, i8** %6, align 8
  %126 = call i32 @string_list_append(i32* @push_options_config, i8* %125)
  br label %127

127:                                              ; preds = %124, %122
  br label %128

128:                                              ; preds = %127
  store i32 0, i32* %4, align 4
  br label %171

129:                                              ; preds = %108
  %130 = load i8*, i8** %5, align 8
  %131 = call i32 @strcmp(i8* %130, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i64 0, i64 0))
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %137, label %133

133:                                              ; preds = %129
  %134 = load i8*, i8** %5, align 8
  %135 = load i8*, i8** %6, align 8
  %136 = call i32 @git_config_colorbool(i8* %134, i8* %135)
  store i32 %136, i32* @push_use_color, align 4
  store i32 0, i32* %4, align 4
  br label %171

137:                                              ; preds = %129
  %138 = load i8*, i8** %5, align 8
  %139 = call i64 @skip_prefix(i8* %138, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i64 0, i64 0), i8** %8)
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %141, label %161

141:                                              ; preds = %137
  %142 = load i8*, i8** %8, align 8
  %143 = call i32 @parse_push_color_slot(i8* %142)
  store i32 %143, i32* %14, align 4
  %144 = load i32, i32* %14, align 4
  %145 = icmp slt i32 %144, 0
  br i1 %145, label %146, label %147

146:                                              ; preds = %141
  store i32 0, i32* %4, align 4
  br label %171

147:                                              ; preds = %141
  %148 = load i8*, i8** %6, align 8
  %149 = icmp ne i8* %148, null
  br i1 %149, label %153, label %150

150:                                              ; preds = %147
  %151 = load i8*, i8** %5, align 8
  %152 = call i32 @config_error_nonbool(i8* %151)
  store i32 %152, i32* %4, align 4
  br label %171

153:                                              ; preds = %147
  %154 = load i8*, i8** %6, align 8
  %155 = load i32*, i32** @push_colors, align 8
  %156 = load i32, i32* %14, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds i32, i32* %155, i64 %157
  %159 = load i32, i32* %158, align 4
  %160 = call i32 @color_parse(i8* %154, i32 %159)
  store i32 %160, i32* %4, align 4
  br label %171

161:                                              ; preds = %137
  br label %162

162:                                              ; preds = %161
  br label %163

163:                                              ; preds = %162
  br label %164

164:                                              ; preds = %163, %105
  br label %165

165:                                              ; preds = %164, %91
  br label %166

166:                                              ; preds = %165, %79
  br label %167

167:                                              ; preds = %166
  %168 = load i8*, i8** %5, align 8
  %169 = load i8*, i8** %6, align 8
  %170 = call i32 @git_default_config(i8* %168, i8* %169, i32* null)
  store i32 %170, i32* %4, align 4
  br label %171

171:                                              ; preds = %167, %153, %150, %146, %133, %128, %115, %74, %44, %22
  %172 = load i32, i32* %4, align 4
  ret i32 %172
}

declare dso_local i32 @git_gpg_config(i8*, i8*, i32*) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i64 @git_config_bool(i8*, i8*) #1

declare dso_local i32 @git_config_get_value(i8*, i8**) #1

declare dso_local i32 @git_parse_maybe_bool(i8*) #1

declare dso_local i32 @set_push_cert_flags(i32*, i32) #1

declare dso_local i32 @strcasecmp(i8*, i8*) #1

declare dso_local i32 @error(i8*, i8*) #1

declare dso_local i32 @parse_push_recurse_submodules_arg(i8*, i8*) #1

declare dso_local i32 @config_error_nonbool(i8*) #1

declare dso_local i32 @string_list_clear(i32*, i32) #1

declare dso_local i32 @string_list_append(i32*, i8*) #1

declare dso_local i32 @git_config_colorbool(i8*, i8*) #1

declare dso_local i64 @skip_prefix(i8*, i8*, i8**) #1

declare dso_local i32 @parse_push_color_slot(i8*) #1

declare dso_local i32 @color_parse(i8*, i32) #1

declare dso_local i32 @git_default_config(i8*, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
