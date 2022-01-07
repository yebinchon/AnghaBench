; ModuleID = '/home/carl/AnghaBench/git/extr_config.c_git_parse_source.c'
source_filename = "/home/carl/AnghaBench/git/extr_config.c_git_parse_source.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32, i32, i64, %struct.strbuf }
%struct.strbuf = type { i32 }
%struct.config_options = type { i32 }
%struct.parse_event_data = type { %struct.config_options*, i32, i32 }

@cf = common dso_local global %struct.TYPE_2__* null, align 8
@utf8_bom = common dso_local global i8* null, align 8
@CONFIG_EVENT_EOF = common dso_local global i32 0, align 4
@CONFIG_EVENT_WHITESPACE = common dso_local global i32 0, align 4
@CONFIG_EVENT_COMMENT = common dso_local global i32 0, align 4
@CONFIG_EVENT_SECTION = common dso_local global i32 0, align 4
@CONFIG_EVENT_ENTRY = common dso_local global i32 0, align 4
@CONFIG_EVENT_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"bad config line %d in blob %s\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"bad config line %d in file %s\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"bad config line %d in standard input\00", align 1
@.str.3 = private unnamed_addr constant [40 x i8] c"bad config line %d in submodule-blob %s\00", align 1
@.str.4 = private unnamed_addr constant [38 x i8] c"bad config line %d in command line %s\00", align 1
@.str.5 = private unnamed_addr constant [25 x i8] c"bad config line %d in %s\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.7 = private unnamed_addr constant [26 x i8] c"config error action unset\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, %struct.config_options*)* @git_parse_source to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @git_parse_source(i32 %0, i8* %1, %struct.config_options* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.config_options*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.strbuf*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca %struct.parse_event_data, align 8
  %15 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i8* %1, i8** %6, align 8
  store %struct.config_options* %2, %struct.config_options** %7, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cf, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 5
  store %struct.strbuf* %17, %struct.strbuf** %10, align 8
  store i32 0, i32* %11, align 4
  store i8* null, i8** %12, align 8
  %18 = load i8*, i8** @utf8_bom, align 8
  store i8* %18, i8** %13, align 8
  %19 = getelementptr inbounds %struct.parse_event_data, %struct.parse_event_data* %14, i32 0, i32 0
  %20 = load i32, i32* @CONFIG_EVENT_EOF, align 4
  %21 = sext i32 %20 to i64
  %22 = inttoptr i64 %21 to %struct.config_options*
  store %struct.config_options* %22, %struct.config_options** %19, align 8
  %23 = getelementptr inbounds %struct.parse_event_data, %struct.parse_event_data* %14, i32 0, i32 1
  store i32 0, i32* %23, align 8
  %24 = getelementptr inbounds %struct.parse_event_data, %struct.parse_event_data* %14, i32 0, i32 2
  %25 = load %struct.config_options*, %struct.config_options** %7, align 8
  %26 = ptrtoint %struct.config_options* %25 to i32
  store i32 %26, i32* %24, align 4
  br label %27

27:                                               ; preds = %149, %119, %98, %86, %76, %72, %43, %3
  %28 = call i32 (...) @get_next_char()
  store i32 %28, i32* %15, align 4
  %29 = load i8*, i8** %13, align 8
  %30 = icmp ne i8* %29, null
  br i1 %30, label %31, label %53

31:                                               ; preds = %27
  %32 = load i8*, i8** %13, align 8
  %33 = load i8, i8* %32, align 1
  %34 = sext i8 %33 to i32
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %53

36:                                               ; preds = %31
  %37 = load i32, i32* %15, align 4
  %38 = load i8*, i8** %13, align 8
  %39 = load i8, i8* %38, align 1
  %40 = sext i8 %39 to i32
  %41 = and i32 %40, 255
  %42 = icmp eq i32 %37, %41
  br i1 %42, label %43, label %46

43:                                               ; preds = %36
  %44 = load i8*, i8** %13, align 8
  %45 = getelementptr inbounds i8, i8* %44, i32 1
  store i8* %45, i8** %13, align 8
  br label %27

46:                                               ; preds = %36
  %47 = load i8*, i8** %13, align 8
  %48 = load i8*, i8** @utf8_bom, align 8
  %49 = icmp ne i8* %47, %48
  br i1 %49, label %50, label %51

50:                                               ; preds = %46
  br label %150

51:                                               ; preds = %46
  store i8* null, i8** %13, align 8
  br label %52

52:                                               ; preds = %51
  br label %53

53:                                               ; preds = %52, %31, %27
  %54 = load i32, i32* %15, align 4
  %55 = icmp eq i32 %54, 10
  br i1 %55, label %56, label %73

56:                                               ; preds = %53
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cf, align 8
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 4
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %67

61:                                               ; preds = %56
  %62 = load i32, i32* @CONFIG_EVENT_EOF, align 4
  %63 = call i64 @do_event(i32 %62, %struct.parse_event_data* %14)
  %64 = icmp slt i64 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %61
  store i32 -1, i32* %4, align 4
  br label %241

66:                                               ; preds = %61
  store i32 0, i32* %4, align 4
  br label %241

67:                                               ; preds = %56
  %68 = load i32, i32* @CONFIG_EVENT_WHITESPACE, align 4
  %69 = call i64 @do_event(i32 %68, %struct.parse_event_data* %14)
  %70 = icmp slt i64 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %67
  store i32 -1, i32* %4, align 4
  br label %241

72:                                               ; preds = %67
  store i32 0, i32* %8, align 4
  br label %27

73:                                               ; preds = %53
  %74 = load i32, i32* %8, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %73
  br label %27

77:                                               ; preds = %73
  %78 = load i32, i32* %15, align 4
  %79 = call i64 @isspace(i32 %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %87

81:                                               ; preds = %77
  %82 = load i32, i32* @CONFIG_EVENT_WHITESPACE, align 4
  %83 = call i64 @do_event(i32 %82, %struct.parse_event_data* %14)
  %84 = icmp slt i64 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %81
  store i32 -1, i32* %4, align 4
  br label %241

86:                                               ; preds = %81
  br label %27

87:                                               ; preds = %77
  %88 = load i32, i32* %15, align 4
  %89 = icmp eq i32 %88, 35
  br i1 %89, label %93, label %90

90:                                               ; preds = %87
  %91 = load i32, i32* %15, align 4
  %92 = icmp eq i32 %91, 59
  br i1 %92, label %93, label %99

93:                                               ; preds = %90, %87
  %94 = load i32, i32* @CONFIG_EVENT_COMMENT, align 4
  %95 = call i64 @do_event(i32 %94, %struct.parse_event_data* %14)
  %96 = icmp slt i64 %95, 0
  br i1 %96, label %97, label %98

97:                                               ; preds = %93
  store i32 -1, i32* %4, align 4
  br label %241

98:                                               ; preds = %93
  store i32 1, i32* %8, align 4
  br label %27

99:                                               ; preds = %90
  %100 = load i32, i32* %15, align 4
  %101 = icmp eq i32 %100, 91
  br i1 %101, label %102, label %125

102:                                              ; preds = %99
  %103 = load i32, i32* @CONFIG_EVENT_SECTION, align 4
  %104 = call i64 @do_event(i32 %103, %struct.parse_event_data* %14)
  %105 = icmp slt i64 %104, 0
  br i1 %105, label %106, label %107

106:                                              ; preds = %102
  store i32 -1, i32* %4, align 4
  br label %241

107:                                              ; preds = %102
  %108 = load %struct.strbuf*, %struct.strbuf** %10, align 8
  %109 = call i32 @strbuf_reset(%struct.strbuf* %108)
  %110 = load %struct.strbuf*, %struct.strbuf** %10, align 8
  %111 = call i64 @get_base_var(%struct.strbuf* %110)
  %112 = icmp slt i64 %111, 0
  br i1 %112, label %118, label %113

113:                                              ; preds = %107
  %114 = load %struct.strbuf*, %struct.strbuf** %10, align 8
  %115 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = icmp slt i32 %116, 1
  br i1 %117, label %118, label %119

118:                                              ; preds = %113, %107
  br label %150

119:                                              ; preds = %113
  %120 = load %struct.strbuf*, %struct.strbuf** %10, align 8
  %121 = call i32 @strbuf_addch(%struct.strbuf* %120, i8 signext 46)
  %122 = load %struct.strbuf*, %struct.strbuf** %10, align 8
  %123 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  store i32 %124, i32* %9, align 4
  br label %27

125:                                              ; preds = %99
  %126 = load i32, i32* %15, align 4
  %127 = call i32 @isalpha(i32 %126) #3
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %130, label %129

129:                                              ; preds = %125
  br label %150

130:                                              ; preds = %125
  %131 = load i32, i32* @CONFIG_EVENT_ENTRY, align 4
  %132 = call i64 @do_event(i32 %131, %struct.parse_event_data* %14)
  %133 = icmp slt i64 %132, 0
  br i1 %133, label %134, label %135

134:                                              ; preds = %130
  store i32 -1, i32* %4, align 4
  br label %241

135:                                              ; preds = %130
  %136 = load %struct.strbuf*, %struct.strbuf** %10, align 8
  %137 = load i32, i32* %9, align 4
  %138 = call i32 @strbuf_setlen(%struct.strbuf* %136, i32 %137)
  %139 = load %struct.strbuf*, %struct.strbuf** %10, align 8
  %140 = load i32, i32* %15, align 4
  %141 = call signext i8 @tolower(i32 %140)
  %142 = call i32 @strbuf_addch(%struct.strbuf* %139, i8 signext %141)
  %143 = load i32, i32* %5, align 4
  %144 = load i8*, i8** %6, align 8
  %145 = load %struct.strbuf*, %struct.strbuf** %10, align 8
  %146 = call i64 @get_value(i32 %143, i8* %144, %struct.strbuf* %145)
  %147 = icmp slt i64 %146, 0
  br i1 %147, label %148, label %149

148:                                              ; preds = %135
  br label %150

149:                                              ; preds = %135
  br label %27

150:                                              ; preds = %148, %129, %118, %50
  %151 = load i32, i32* @CONFIG_EVENT_ERROR, align 4
  %152 = call i64 @do_event(i32 %151, %struct.parse_event_data* %14)
  %153 = icmp slt i64 %152, 0
  br i1 %153, label %154, label %155

154:                                              ; preds = %150
  store i32 -1, i32* %4, align 4
  br label %241

155:                                              ; preds = %150
  %156 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cf, align 8
  %157 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 8
  switch i32 %158, label %201 [
    i32 132, label %159
    i32 130, label %168
    i32 129, label %177
    i32 128, label %183
    i32 131, label %192
  ]

159:                                              ; preds = %155
  %160 = call i32 @_(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %161 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cf, align 8
  %162 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %161, i32 0, i32 3
  %163 = load i32, i32* %162, align 4
  %164 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cf, align 8
  %165 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %164, i32 0, i32 2
  %166 = load i32, i32* %165, align 8
  %167 = call i8* (i32, i32, ...) @xstrfmt(i32 %160, i32 %163, i32 %166)
  store i8* %167, i8** %12, align 8
  br label %210

168:                                              ; preds = %155
  %169 = call i32 @_(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  %170 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cf, align 8
  %171 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %170, i32 0, i32 3
  %172 = load i32, i32* %171, align 4
  %173 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cf, align 8
  %174 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %173, i32 0, i32 2
  %175 = load i32, i32* %174, align 8
  %176 = call i8* (i32, i32, ...) @xstrfmt(i32 %169, i32 %172, i32 %175)
  store i8* %176, i8** %12, align 8
  br label %210

177:                                              ; preds = %155
  %178 = call i32 @_(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0))
  %179 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cf, align 8
  %180 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %179, i32 0, i32 3
  %181 = load i32, i32* %180, align 4
  %182 = call i8* (i32, i32, ...) @xstrfmt(i32 %178, i32 %181)
  store i8* %182, i8** %12, align 8
  br label %210

183:                                              ; preds = %155
  %184 = call i32 @_(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0))
  %185 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cf, align 8
  %186 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %185, i32 0, i32 3
  %187 = load i32, i32* %186, align 4
  %188 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cf, align 8
  %189 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %188, i32 0, i32 2
  %190 = load i32, i32* %189, align 8
  %191 = call i8* (i32, i32, ...) @xstrfmt(i32 %184, i32 %187, i32 %190)
  store i8* %191, i8** %12, align 8
  br label %210

192:                                              ; preds = %155
  %193 = call i32 @_(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.4, i64 0, i64 0))
  %194 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cf, align 8
  %195 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %194, i32 0, i32 3
  %196 = load i32, i32* %195, align 4
  %197 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cf, align 8
  %198 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %197, i32 0, i32 2
  %199 = load i32, i32* %198, align 8
  %200 = call i8* (i32, i32, ...) @xstrfmt(i32 %193, i32 %196, i32 %199)
  store i8* %200, i8** %12, align 8
  br label %210

201:                                              ; preds = %155
  %202 = call i32 @_(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0))
  %203 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cf, align 8
  %204 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %203, i32 0, i32 3
  %205 = load i32, i32* %204, align 4
  %206 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cf, align 8
  %207 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %206, i32 0, i32 2
  %208 = load i32, i32* %207, align 8
  %209 = call i8* (i32, i32, ...) @xstrfmt(i32 %202, i32 %205, i32 %208)
  store i8* %209, i8** %12, align 8
  br label %210

210:                                              ; preds = %201, %192, %183, %177, %168, %159
  %211 = load %struct.config_options*, %struct.config_options** %7, align 8
  %212 = icmp ne %struct.config_options* %211, null
  br i1 %212, label %213, label %222

213:                                              ; preds = %210
  %214 = load %struct.config_options*, %struct.config_options** %7, align 8
  %215 = getelementptr inbounds %struct.config_options, %struct.config_options* %214, i32 0, i32 0
  %216 = load i32, i32* %215, align 4
  %217 = icmp ne i32 %216, 0
  br i1 %217, label %218, label %222

218:                                              ; preds = %213
  %219 = load %struct.config_options*, %struct.config_options** %7, align 8
  %220 = getelementptr inbounds %struct.config_options, %struct.config_options* %219, i32 0, i32 0
  %221 = load i32, i32* %220, align 4
  br label %226

222:                                              ; preds = %213, %210
  %223 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cf, align 8
  %224 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %223, i32 0, i32 1
  %225 = load i32, i32* %224, align 4
  br label %226

226:                                              ; preds = %222, %218
  %227 = phi i32 [ %221, %218 ], [ %225, %222 ]
  switch i32 %227, label %237 [
    i32 136, label %228
    i32 135, label %231
    i32 134, label %234
    i32 133, label %235
  ]

228:                                              ; preds = %226
  %229 = load i8*, i8** %12, align 8
  %230 = call i32 @die(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i8* %229)
  br label %237

231:                                              ; preds = %226
  %232 = load i8*, i8** %12, align 8
  %233 = call i32 @error(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i8* %232)
  store i32 %233, i32* %11, align 4
  br label %237

234:                                              ; preds = %226
  store i32 -1, i32* %11, align 4
  br label %237

235:                                              ; preds = %226
  %236 = call i32 @BUG(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i64 0, i64 0))
  br label %237

237:                                              ; preds = %235, %226, %234, %231, %228
  %238 = load i8*, i8** %12, align 8
  %239 = call i32 @free(i8* %238)
  %240 = load i32, i32* %11, align 4
  store i32 %240, i32* %4, align 4
  br label %241

241:                                              ; preds = %237, %154, %134, %106, %97, %85, %71, %66, %65
  %242 = load i32, i32* %4, align 4
  ret i32 %242
}

declare dso_local i32 @get_next_char(...) #1

declare dso_local i64 @do_event(i32, %struct.parse_event_data*) #1

declare dso_local i64 @isspace(i32) #1

declare dso_local i32 @strbuf_reset(%struct.strbuf*) #1

declare dso_local i64 @get_base_var(%struct.strbuf*) #1

declare dso_local i32 @strbuf_addch(%struct.strbuf*, i8 signext) #1

; Function Attrs: nounwind readonly
declare dso_local i32 @isalpha(i32) #2

declare dso_local i32 @strbuf_setlen(%struct.strbuf*, i32) #1

declare dso_local signext i8 @tolower(i32) #1

declare dso_local i64 @get_value(i32, i8*, %struct.strbuf*) #1

declare dso_local i8* @xstrfmt(i32, i32, ...) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @die(i8*, i8*) #1

declare dso_local i32 @error(i8*, i8*) #1

declare dso_local i32 @BUG(i8*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
