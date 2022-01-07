; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_log.c_git_format_config.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_log.c_git_format_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i32 }
%struct.rev_info = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@.str = private unnamed_addr constant [15 x i8] c"format.headers\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"format.headers without value\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"format.suffix\00", align 1
@fmt_patch_suffix = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [10 x i8] c"format.to\00", align 1
@extra_to = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [10 x i8] c"format.cc\00", align 1
@extra_cc = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [11 x i8] c"diff.color\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"color.diff\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"color.ui\00", align 1
@.str.8 = private unnamed_addr constant [15 x i8] c"diff.submodule\00", align 1
@.str.9 = private unnamed_addr constant [16 x i8] c"format.numbered\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"auto\00", align 1
@auto_number = common dso_local global i32 0, align 4
@numbered = common dso_local global i8* null, align 8
@.str.11 = private unnamed_addr constant [14 x i8] c"format.attach\00", align 1
@default_attach = common dso_local global i8* null, align 8
@git_version_string = common dso_local global i8* null, align 8
@.str.12 = private unnamed_addr constant [14 x i8] c"format.thread\00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c"deep\00", align 1
@THREAD_DEEP = common dso_local global i32 0, align 4
@thread = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [8 x i8] c"shallow\00", align 1
@THREAD_SHALLOW = common dso_local global i32 0, align 4
@THREAD_UNSET = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [15 x i8] c"format.signoff\00", align 1
@do_signoff = common dso_local global i8* null, align 8
@.str.16 = private unnamed_addr constant [17 x i8] c"format.signature\00", align 1
@signature = common dso_local global i32 0, align 4
@.str.17 = private unnamed_addr constant [21 x i8] c"format.signaturefile\00", align 1
@signature_file = common dso_local global i32 0, align 4
@.str.18 = private unnamed_addr constant [19 x i8] c"format.coverletter\00", align 1
@COVER_AUTO = common dso_local global i32 0, align 4
@config_cover_letter = common dso_local global i32 0, align 4
@COVER_ON = common dso_local global i32 0, align 4
@COVER_OFF = common dso_local global i32 0, align 4
@.str.19 = private unnamed_addr constant [23 x i8] c"format.outputdirectory\00", align 1
@config_output_directory = common dso_local global i32 0, align 4
@.str.20 = private unnamed_addr constant [19 x i8] c"format.useautobase\00", align 1
@base_auto = common dso_local global i8* null, align 8
@.str.21 = private unnamed_addr constant [12 x i8] c"format.from\00", align 1
@from = common dso_local global i32* null, align 8
@IDENT_NO_DATE = common dso_local global i32 0, align 4
@.str.22 = private unnamed_addr constant [13 x i8] c"format.notes\00", align 1
@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 4
@.str.23 = private unnamed_addr constant [28 x i8] c"format.coverfromdescription\00", align 1
@cover_from_description_mode = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i8*)* @git_format_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @git_format_config(i8* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.rev_info*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.strbuf, align 4
  %11 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %12 = load i8*, i8** %7, align 8
  %13 = bitcast i8* %12 to %struct.rev_info*
  store %struct.rev_info* %13, %struct.rev_info** %8, align 8
  %14 = load i8*, i8** %5, align 8
  %15 = call i32 @strcmp(i8* %14, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %26, label %17

17:                                               ; preds = %3
  %18 = load i8*, i8** %6, align 8
  %19 = icmp ne i8* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %17
  %21 = call i32 @_(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  %22 = call i32 @die(i32 %21)
  br label %23

23:                                               ; preds = %20, %17
  %24 = load i8*, i8** %6, align 8
  %25 = call i32 @add_header(i8* %24)
  store i32 0, i32* %4, align 4
  br label %285

26:                                               ; preds = %3
  %27 = load i8*, i8** %5, align 8
  %28 = call i32 @strcmp(i8* %27, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0))
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %34, label %30

30:                                               ; preds = %26
  %31 = load i8*, i8** %5, align 8
  %32 = load i8*, i8** %6, align 8
  %33 = call i32 @git_config_string(i32* @fmt_patch_suffix, i8* %31, i8* %32)
  store i32 %33, i32* %4, align 4
  br label %285

34:                                               ; preds = %26
  %35 = load i8*, i8** %5, align 8
  %36 = call i32 @strcmp(i8* %35, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0))
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %47, label %38

38:                                               ; preds = %34
  %39 = load i8*, i8** %6, align 8
  %40 = icmp ne i8* %39, null
  br i1 %40, label %44, label %41

41:                                               ; preds = %38
  %42 = load i8*, i8** %5, align 8
  %43 = call i32 @config_error_nonbool(i8* %42)
  store i32 %43, i32* %4, align 4
  br label %285

44:                                               ; preds = %38
  %45 = load i8*, i8** %6, align 8
  %46 = call i32 @string_list_append(i32* @extra_to, i8* %45)
  store i32 0, i32* %4, align 4
  br label %285

47:                                               ; preds = %34
  %48 = load i8*, i8** %5, align 8
  %49 = call i32 @strcmp(i8* %48, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0))
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %60, label %51

51:                                               ; preds = %47
  %52 = load i8*, i8** %6, align 8
  %53 = icmp ne i8* %52, null
  br i1 %53, label %57, label %54

54:                                               ; preds = %51
  %55 = load i8*, i8** %5, align 8
  %56 = call i32 @config_error_nonbool(i8* %55)
  store i32 %56, i32* %4, align 4
  br label %285

57:                                               ; preds = %51
  %58 = load i8*, i8** %6, align 8
  %59 = call i32 @string_list_append(i32* @extra_cc, i8* %58)
  store i32 0, i32* %4, align 4
  br label %285

60:                                               ; preds = %47
  %61 = load i8*, i8** %5, align 8
  %62 = call i32 @strcmp(i8* %61, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0))
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %76

64:                                               ; preds = %60
  %65 = load i8*, i8** %5, align 8
  %66 = call i32 @strcmp(i8* %65, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0))
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %76

68:                                               ; preds = %64
  %69 = load i8*, i8** %5, align 8
  %70 = call i32 @strcmp(i8* %69, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0))
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %76

72:                                               ; preds = %68
  %73 = load i8*, i8** %5, align 8
  %74 = call i32 @strcmp(i8* %73, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i64 0, i64 0))
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %77, label %76

76:                                               ; preds = %72, %68, %64, %60
  store i32 0, i32* %4, align 4
  br label %285

77:                                               ; preds = %72
  %78 = load i8*, i8** %5, align 8
  %79 = call i32 @strcmp(i8* %78, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.9, i64 0, i64 0))
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %101, label %81

81:                                               ; preds = %77
  %82 = load i8*, i8** %6, align 8
  %83 = icmp ne i8* %82, null
  br i1 %83, label %84, label %89

84:                                               ; preds = %81
  %85 = load i8*, i8** %6, align 8
  %86 = call i32 @strcasecmp(i8* %85, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0))
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %89, label %88

88:                                               ; preds = %84
  store i32 1, i32* @auto_number, align 4
  store i32 0, i32* %4, align 4
  br label %285

89:                                               ; preds = %84, %81
  %90 = load i8*, i8** %5, align 8
  %91 = load i8*, i8** %6, align 8
  %92 = call i8* @git_config_bool(i8* %90, i8* %91)
  store i8* %92, i8** @numbered, align 8
  %93 = load i32, i32* @auto_number, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %98

95:                                               ; preds = %89
  %96 = load i8*, i8** @numbered, align 8
  %97 = icmp ne i8* %96, null
  br label %98

98:                                               ; preds = %95, %89
  %99 = phi i1 [ false, %89 ], [ %97, %95 ]
  %100 = zext i1 %99 to i32
  store i32 %100, i32* @auto_number, align 4
  store i32 0, i32* %4, align 4
  br label %285

101:                                              ; preds = %77
  %102 = load i8*, i8** %5, align 8
  %103 = call i32 @strcmp(i8* %102, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.11, i64 0, i64 0))
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %120, label %105

105:                                              ; preds = %101
  %106 = load i8*, i8** %6, align 8
  %107 = icmp ne i8* %106, null
  br i1 %107, label %108, label %116

108:                                              ; preds = %105
  %109 = load i8*, i8** %6, align 8
  %110 = load i8, i8* %109, align 1
  %111 = sext i8 %110 to i32
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %116

113:                                              ; preds = %108
  %114 = load i8*, i8** %6, align 8
  %115 = call i8* @xstrdup(i8* %114)
  store i8* %115, i8** @default_attach, align 8
  br label %119

116:                                              ; preds = %108, %105
  %117 = load i8*, i8** @git_version_string, align 8
  %118 = call i8* @xstrdup(i8* %117)
  store i8* %118, i8** @default_attach, align 8
  br label %119

119:                                              ; preds = %116, %113
  store i32 0, i32* %4, align 4
  br label %285

120:                                              ; preds = %101
  %121 = load i8*, i8** %5, align 8
  %122 = call i32 @strcmp(i8* %121, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.12, i64 0, i64 0))
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %153, label %124

124:                                              ; preds = %120
  %125 = load i8*, i8** %6, align 8
  %126 = icmp ne i8* %125, null
  br i1 %126, label %127, label %133

127:                                              ; preds = %124
  %128 = load i8*, i8** %6, align 8
  %129 = call i32 @strcasecmp(i8* %128, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i64 0, i64 0))
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %133, label %131

131:                                              ; preds = %127
  %132 = load i32, i32* @THREAD_DEEP, align 4
  store i32 %132, i32* @thread, align 4
  store i32 0, i32* %4, align 4
  br label %285

133:                                              ; preds = %127, %124
  %134 = load i8*, i8** %6, align 8
  %135 = icmp ne i8* %134, null
  br i1 %135, label %136, label %142

136:                                              ; preds = %133
  %137 = load i8*, i8** %6, align 8
  %138 = call i32 @strcasecmp(i8* %137, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.14, i64 0, i64 0))
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %142, label %140

140:                                              ; preds = %136
  %141 = load i32, i32* @THREAD_SHALLOW, align 4
  store i32 %141, i32* @thread, align 4
  store i32 0, i32* %4, align 4
  br label %285

142:                                              ; preds = %136, %133
  %143 = load i8*, i8** %5, align 8
  %144 = load i8*, i8** %6, align 8
  %145 = call i8* @git_config_bool(i8* %143, i8* %144)
  %146 = icmp ne i8* %145, null
  br i1 %146, label %147, label %149

147:                                              ; preds = %142
  %148 = load i32, i32* @THREAD_SHALLOW, align 4
  br label %151

149:                                              ; preds = %142
  %150 = load i32, i32* @THREAD_UNSET, align 4
  br label %151

151:                                              ; preds = %149, %147
  %152 = phi i32 [ %148, %147 ], [ %150, %149 ]
  store i32 %152, i32* @thread, align 4
  store i32 0, i32* %4, align 4
  br label %285

153:                                              ; preds = %120
  %154 = load i8*, i8** %5, align 8
  %155 = call i32 @strcmp(i8* %154, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.15, i64 0, i64 0))
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %161, label %157

157:                                              ; preds = %153
  %158 = load i8*, i8** %5, align 8
  %159 = load i8*, i8** %6, align 8
  %160 = call i8* @git_config_bool(i8* %158, i8* %159)
  store i8* %160, i8** @do_signoff, align 8
  store i32 0, i32* %4, align 4
  br label %285

161:                                              ; preds = %153
  %162 = load i8*, i8** %5, align 8
  %163 = call i32 @strcmp(i8* %162, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.16, i64 0, i64 0))
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %169, label %165

165:                                              ; preds = %161
  %166 = load i8*, i8** %5, align 8
  %167 = load i8*, i8** %6, align 8
  %168 = call i32 @git_config_string(i32* @signature, i8* %166, i8* %167)
  store i32 %168, i32* %4, align 4
  br label %285

169:                                              ; preds = %161
  %170 = load i8*, i8** %5, align 8
  %171 = call i32 @strcmp(i8* %170, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.17, i64 0, i64 0))
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %177, label %173

173:                                              ; preds = %169
  %174 = load i8*, i8** %5, align 8
  %175 = load i8*, i8** %6, align 8
  %176 = call i32 @git_config_pathname(i32* @signature_file, i8* %174, i8* %175)
  store i32 %176, i32* %4, align 4
  br label %285

177:                                              ; preds = %169
  %178 = load i8*, i8** %5, align 8
  %179 = call i32 @strcmp(i8* %178, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.18, i64 0, i64 0))
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %201, label %181

181:                                              ; preds = %177
  %182 = load i8*, i8** %6, align 8
  %183 = icmp ne i8* %182, null
  br i1 %183, label %184, label %190

184:                                              ; preds = %181
  %185 = load i8*, i8** %6, align 8
  %186 = call i32 @strcasecmp(i8* %185, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0))
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %190, label %188

188:                                              ; preds = %184
  %189 = load i32, i32* @COVER_AUTO, align 4
  store i32 %189, i32* @config_cover_letter, align 4
  store i32 0, i32* %4, align 4
  br label %285

190:                                              ; preds = %184, %181
  %191 = load i8*, i8** %5, align 8
  %192 = load i8*, i8** %6, align 8
  %193 = call i8* @git_config_bool(i8* %191, i8* %192)
  %194 = icmp ne i8* %193, null
  br i1 %194, label %195, label %197

195:                                              ; preds = %190
  %196 = load i32, i32* @COVER_ON, align 4
  br label %199

197:                                              ; preds = %190
  %198 = load i32, i32* @COVER_OFF, align 4
  br label %199

199:                                              ; preds = %197, %195
  %200 = phi i32 [ %196, %195 ], [ %198, %197 ]
  store i32 %200, i32* @config_cover_letter, align 4
  store i32 0, i32* %4, align 4
  br label %285

201:                                              ; preds = %177
  %202 = load i8*, i8** %5, align 8
  %203 = call i32 @strcmp(i8* %202, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.19, i64 0, i64 0))
  %204 = icmp ne i32 %203, 0
  br i1 %204, label %209, label %205

205:                                              ; preds = %201
  %206 = load i8*, i8** %5, align 8
  %207 = load i8*, i8** %6, align 8
  %208 = call i32 @git_config_string(i32* @config_output_directory, i8* %206, i8* %207)
  store i32 %208, i32* %4, align 4
  br label %285

209:                                              ; preds = %201
  %210 = load i8*, i8** %5, align 8
  %211 = call i32 @strcmp(i8* %210, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.20, i64 0, i64 0))
  %212 = icmp ne i32 %211, 0
  br i1 %212, label %217, label %213

213:                                              ; preds = %209
  %214 = load i8*, i8** %5, align 8
  %215 = load i8*, i8** %6, align 8
  %216 = call i8* @git_config_bool(i8* %214, i8* %215)
  store i8* %216, i8** @base_auto, align 8
  store i32 0, i32* %4, align 4
  br label %285

217:                                              ; preds = %209
  %218 = load i8*, i8** %5, align 8
  %219 = call i32 @strcmp(i8* %218, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.21, i64 0, i64 0))
  %220 = icmp ne i32 %219, 0
  br i1 %220, label %243, label %221

221:                                              ; preds = %217
  %222 = load i8*, i8** %6, align 8
  %223 = call i32 @git_parse_maybe_bool(i8* %222)
  store i32 %223, i32* %9, align 4
  %224 = load i32*, i32** @from, align 8
  %225 = call i32 @free(i32* %224)
  %226 = load i32, i32* %9, align 4
  %227 = icmp slt i32 %226, 0
  br i1 %227, label %228, label %232

228:                                              ; preds = %221
  %229 = load i8*, i8** %6, align 8
  %230 = call i8* @xstrdup(i8* %229)
  %231 = bitcast i8* %230 to i32*
  store i32* %231, i32** @from, align 8
  br label %242

232:                                              ; preds = %221
  %233 = load i32, i32* %9, align 4
  %234 = icmp ne i32 %233, 0
  br i1 %234, label %235, label %240

235:                                              ; preds = %232
  %236 = load i32, i32* @IDENT_NO_DATE, align 4
  %237 = call i8* @git_committer_info(i32 %236)
  %238 = call i8* @xstrdup(i8* %237)
  %239 = bitcast i8* %238 to i32*
  store i32* %239, i32** @from, align 8
  br label %241

240:                                              ; preds = %232
  store i32* null, i32** @from, align 8
  br label %241

241:                                              ; preds = %240, %235
  br label %242

242:                                              ; preds = %241, %228
  store i32 0, i32* %4, align 4
  br label %285

243:                                              ; preds = %217
  %244 = load i8*, i8** %5, align 8
  %245 = call i32 @strcmp(i8* %244, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.22, i64 0, i64 0))
  %246 = icmp ne i32 %245, 0
  br i1 %246, label %273, label %247

247:                                              ; preds = %243
  %248 = bitcast %struct.strbuf* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %248, i8* align 4 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 4, i1 false)
  %249 = load i8*, i8** %6, align 8
  %250 = call i32 @git_parse_maybe_bool(i8* %249)
  store i32 %250, i32* %11, align 4
  %251 = load i32, i32* %11, align 4
  %252 = icmp ne i32 %251, 0
  br i1 %252, label %254, label %253

253:                                              ; preds = %247
  store i32 0, i32* %4, align 4
  br label %285

254:                                              ; preds = %247
  %255 = load %struct.rev_info*, %struct.rev_info** %8, align 8
  %256 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %255, i32 0, i32 0
  store i32 1, i32* %256, align 4
  %257 = load i32, i32* %11, align 4
  %258 = icmp slt i32 %257, 0
  br i1 %258, label %259, label %268

259:                                              ; preds = %254
  %260 = load i8*, i8** %6, align 8
  %261 = call i32 @strbuf_addstr(%struct.strbuf* %10, i8* %260)
  %262 = call i32 @expand_notes_ref(%struct.strbuf* %10)
  %263 = load %struct.rev_info*, %struct.rev_info** %8, align 8
  %264 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %263, i32 0, i32 1
  %265 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %264, i32 0, i32 1
  %266 = call i8* @strbuf_detach(%struct.strbuf* %10, i32* null)
  %267 = call i32 @string_list_append(i32* %265, i8* %266)
  br label %272

268:                                              ; preds = %254
  %269 = load %struct.rev_info*, %struct.rev_info** %8, align 8
  %270 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %269, i32 0, i32 1
  %271 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %270, i32 0, i32 0
  store i32 1, i32* %271, align 4
  br label %272

272:                                              ; preds = %268, %259
  store i32 0, i32* %4, align 4
  br label %285

273:                                              ; preds = %243
  %274 = load i8*, i8** %5, align 8
  %275 = call i32 @strcmp(i8* %274, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.23, i64 0, i64 0))
  %276 = icmp ne i32 %275, 0
  br i1 %276, label %280, label %277

277:                                              ; preds = %273
  %278 = load i8*, i8** %6, align 8
  %279 = call i32 @parse_cover_from_description(i8* %278)
  store i32 %279, i32* @cover_from_description_mode, align 4
  store i32 0, i32* %4, align 4
  br label %285

280:                                              ; preds = %273
  %281 = load i8*, i8** %5, align 8
  %282 = load i8*, i8** %6, align 8
  %283 = load i8*, i8** %7, align 8
  %284 = call i32 @git_log_config(i8* %281, i8* %282, i8* %283)
  store i32 %284, i32* %4, align 4
  br label %285

285:                                              ; preds = %280, %277, %272, %253, %242, %213, %205, %199, %188, %173, %165, %157, %151, %140, %131, %119, %98, %88, %76, %57, %54, %44, %41, %30, %23
  %286 = load i32, i32* %4, align 4
  ret i32 %286
}

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @die(i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @add_header(i8*) #1

declare dso_local i32 @git_config_string(i32*, i8*, i8*) #1

declare dso_local i32 @config_error_nonbool(i8*) #1

declare dso_local i32 @string_list_append(i32*, i8*) #1

declare dso_local i32 @strcasecmp(i8*, i8*) #1

declare dso_local i8* @git_config_bool(i8*, i8*) #1

declare dso_local i8* @xstrdup(i8*) #1

declare dso_local i32 @git_config_pathname(i32*, i8*, i8*) #1

declare dso_local i32 @git_parse_maybe_bool(i8*) #1

declare dso_local i32 @free(i32*) #1

declare dso_local i8* @git_committer_info(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @strbuf_addstr(%struct.strbuf*, i8*) #1

declare dso_local i32 @expand_notes_ref(%struct.strbuf*) #1

declare dso_local i8* @strbuf_detach(%struct.strbuf*, i32*) #1

declare dso_local i32 @parse_cover_from_description(i8*) #1

declare dso_local i32 @git_log_config(i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
