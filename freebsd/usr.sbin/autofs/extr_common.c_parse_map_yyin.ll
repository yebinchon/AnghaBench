; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/autofs/extr_common.c_parse_map_yyin.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/autofs/extr_common.c_parse_map_yyin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.node = type { i32 }

@lineno = common dso_local global i32 0, align 4
@NEWLINE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"truncated entry at %s, line %d\00", align 1
@yytext = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [34 x i8] c"duplicated options at %s, line %d\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.3 = private unnamed_addr constant [60 x i8] c"nonsensical map key \22/\22 at %s, line %d; ignoring map entry \00", align 1
@.str.4 = private unnamed_addr constant [37 x i8] c"duplicated mountpoint in %s, line %d\00", align 1
@.str.5 = private unnamed_addr constant [39 x i8] c"mountpoint out of order in %s, line %d\00", align 1
@.str.6 = private unnamed_addr constant [34 x i8] c"duplicated options in %s, line %d\00", align 1
@.str.7 = private unnamed_addr constant [36 x i8] c"options out of order in %s, line %d\00", align 1
@.str.8 = private unnamed_addr constant [34 x i8] c"too many arguments in %s, line %d\00", align 1
@.str.9 = private unnamed_addr constant [30 x i8] c"empty location in %s, line %d\00", align 1
@.str.10 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.11 = private unnamed_addr constant [31 x i8] c"truncated entry in %s, line %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.node*, i8*, i8*)* @parse_map_yyin to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @parse_map_yyin(%struct.node* %0, i8* %1, i8* %2) #0 {
  %4 = alloca %struct.node*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.node*, align 8
  store %struct.node* %0, %struct.node** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  store i8* null, i8** %7, align 8
  store i8* null, i8** %8, align 8
  store i8* null, i8** %9, align 8
  store i8* null, i8** %10, align 8
  store i8* null, i8** %11, align 8
  store i32 1, i32* @lineno, align 4
  %14 = load i8*, i8** %6, align 8
  %15 = icmp ne i8* %14, null
  br i1 %15, label %16, label %19

16:                                               ; preds = %3
  %17 = load i8*, i8** %6, align 8
  %18 = call i8* @checked_strdup(i8* %17)
  store i8* %18, i8** %7, align 8
  br label %19

19:                                               ; preds = %16, %3
  br label %20

20:                                               ; preds = %233, %104, %80, %66, %60, %48, %19
  %21 = call i32 (...) @yylex()
  store i32 %21, i32* %12, align 4
  %22 = load i32, i32* %12, align 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %28, label %24

24:                                               ; preds = %20
  %25 = load i32, i32* %12, align 4
  %26 = load i32, i32* @NEWLINE, align 4
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %28, label %49

28:                                               ; preds = %24, %20
  %29 = load i8*, i8** %7, align 8
  %30 = icmp ne i8* %29, null
  br i1 %30, label %31, label %34

31:                                               ; preds = %28
  %32 = load i8*, i8** %6, align 8
  %33 = icmp eq i8* %32, null
  br i1 %33, label %37, label %34

34:                                               ; preds = %31, %28
  %35 = load i8*, i8** %8, align 8
  %36 = icmp ne i8* %35, null
  br i1 %36, label %37, label %41

37:                                               ; preds = %34, %31
  %38 = load i8*, i8** %5, align 8
  %39 = load i32, i32* @lineno, align 4
  %40 = call i32 @log_errx(i32 1, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i8* %38, i32 %39)
  br label %41

41:                                               ; preds = %37, %34
  %42 = load i32, i32* %12, align 4
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %47, label %44

44:                                               ; preds = %41
  %45 = load i8*, i8** %6, align 8
  %46 = icmp ne i8* %45, null
  br i1 %46, label %47, label %48

47:                                               ; preds = %44, %41
  br label %234

48:                                               ; preds = %44
  store i8* null, i8** %8, align 8
  store i8* null, i8** %7, align 8
  br label %20

49:                                               ; preds = %24
  %50 = load i8*, i8** %7, align 8
  %51 = icmp eq i8* %50, null
  br i1 %51, label %52, label %67

52:                                               ; preds = %49
  %53 = load i8*, i8** @yytext, align 8
  %54 = call i8* @checked_strdup(i8* %53)
  store i8* %54, i8** %7, align 8
  %55 = load i8*, i8** %7, align 8
  %56 = getelementptr inbounds i8, i8* %55, i64 0
  %57 = load i8, i8* %56, align 1
  %58 = sext i8 %57 to i32
  %59 = icmp eq i32 %58, 43
  br i1 %59, label %60, label %66

60:                                               ; preds = %52
  %61 = load %struct.node*, %struct.node** %4, align 8
  %62 = load i8*, i8** %7, align 8
  %63 = load i8*, i8** %5, align 8
  %64 = load i32, i32* @lineno, align 4
  %65 = call %struct.node* @node_new(%struct.node* %61, i8* %62, i8* null, i8* null, i8* %63, i32 %64)
  store i8* null, i8** %8, align 8
  store i8* null, i8** %7, align 8
  br label %20

66:                                               ; preds = %52
  br label %20

67:                                               ; preds = %49
  %68 = load i8*, i8** @yytext, align 8
  %69 = getelementptr inbounds i8, i8* %68, i64 0
  %70 = load i8, i8* %69, align 1
  %71 = sext i8 %70 to i32
  %72 = icmp eq i32 %71, 45
  br i1 %72, label %73, label %84

73:                                               ; preds = %67
  %74 = load i8*, i8** %8, align 8
  %75 = icmp ne i8* %74, null
  br i1 %75, label %76, label %80

76:                                               ; preds = %73
  %77 = load i8*, i8** %5, align 8
  %78 = load i32, i32* @lineno, align 4
  %79 = call i32 @log_errx(i32 1, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i8* %77, i32 %78)
  br label %80

80:                                               ; preds = %76, %73
  %81 = load i8*, i8** @yytext, align 8
  %82 = getelementptr inbounds i8, i8* %81, i64 1
  %83 = call i8* @checked_strdup(i8* %82)
  store i8* %83, i8** %8, align 8
  br label %20

84:                                               ; preds = %67
  br label %85

85:                                               ; preds = %84
  %86 = load i8*, i8** %7, align 8
  %87 = call i64 @strcmp(i8* %86, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %88 = icmp eq i64 %87, 0
  br i1 %88, label %89, label %105

89:                                               ; preds = %85
  %90 = load i8*, i8** %5, align 8
  %91 = load i32, i32* @lineno, align 4
  %92 = call i32 @log_warnx(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.3, i64 0, i64 0), i8* %90, i32 %91)
  br label %93

93:                                               ; preds = %102, %89
  %94 = call i32 (...) @yylex()
  store i32 %94, i32* %12, align 4
  br label %95

95:                                               ; preds = %93
  %96 = load i32, i32* %12, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %102

98:                                               ; preds = %95
  %99 = load i32, i32* %12, align 4
  %100 = load i32, i32* @NEWLINE, align 4
  %101 = icmp ne i32 %99, %100
  br label %102

102:                                              ; preds = %98, %95
  %103 = phi i1 [ false, %95 ], [ %101, %98 ]
  br i1 %103, label %93, label %104

104:                                              ; preds = %102
  store i8* null, i8** %8, align 8
  store i8* null, i8** %7, align 8
  br label %20

105:                                              ; preds = %85
  %106 = load %struct.node*, %struct.node** %4, align 8
  %107 = load i8*, i8** %7, align 8
  %108 = load i8*, i8** %8, align 8
  %109 = load i8*, i8** %5, align 8
  %110 = load i32, i32* @lineno, align 4
  %111 = call %struct.node* @node_new(%struct.node* %106, i8* %107, i8* %108, i8* null, i8* %109, i32 %110)
  store %struct.node* %111, %struct.node** %13, align 8
  store i8* null, i8** %8, align 8
  store i8* null, i8** %7, align 8
  br label %112

112:                                              ; preds = %232, %105
  %113 = load i8*, i8** @yytext, align 8
  %114 = getelementptr inbounds i8, i8* %113, i64 0
  %115 = load i8, i8* %114, align 1
  %116 = sext i8 %115 to i32
  %117 = icmp eq i32 %116, 47
  br i1 %117, label %118, label %138

118:                                              ; preds = %112
  %119 = load i8*, i8** %9, align 8
  %120 = icmp ne i8* %119, null
  br i1 %120, label %121, label %125

121:                                              ; preds = %118
  %122 = load i8*, i8** %5, align 8
  %123 = load i32, i32* @lineno, align 4
  %124 = call i32 @log_errx(i32 1, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0), i8* %122, i32 %123)
  br label %125

125:                                              ; preds = %121, %118
  %126 = load i8*, i8** %10, align 8
  %127 = icmp ne i8* %126, null
  br i1 %127, label %131, label %128

128:                                              ; preds = %125
  %129 = load i8*, i8** %11, align 8
  %130 = icmp ne i8* %129, null
  br i1 %130, label %131, label %135

131:                                              ; preds = %128, %125
  %132 = load i8*, i8** %5, align 8
  %133 = load i32, i32* @lineno, align 4
  %134 = call i32 @log_errx(i32 1, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.5, i64 0, i64 0), i8* %132, i32 %133)
  br label %135

135:                                              ; preds = %131, %128
  %136 = load i8*, i8** @yytext, align 8
  %137 = call i8* @checked_strdup(i8* %136)
  store i8* %137, i8** %9, align 8
  br label %210

138:                                              ; preds = %112
  %139 = load i8*, i8** @yytext, align 8
  %140 = getelementptr inbounds i8, i8* %139, i64 0
  %141 = load i8, i8* %140, align 1
  %142 = sext i8 %141 to i32
  %143 = icmp eq i32 %142, 45
  br i1 %143, label %144, label %162

144:                                              ; preds = %138
  %145 = load i8*, i8** %10, align 8
  %146 = icmp ne i8* %145, null
  br i1 %146, label %147, label %151

147:                                              ; preds = %144
  %148 = load i8*, i8** %5, align 8
  %149 = load i32, i32* @lineno, align 4
  %150 = call i32 @log_errx(i32 1, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.6, i64 0, i64 0), i8* %148, i32 %149)
  br label %151

151:                                              ; preds = %147, %144
  %152 = load i8*, i8** %11, align 8
  %153 = icmp ne i8* %152, null
  br i1 %153, label %154, label %158

154:                                              ; preds = %151
  %155 = load i8*, i8** %5, align 8
  %156 = load i32, i32* @lineno, align 4
  %157 = call i32 @log_errx(i32 1, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.7, i64 0, i64 0), i8* %155, i32 %156)
  br label %158

158:                                              ; preds = %154, %151
  %159 = load i8*, i8** @yytext, align 8
  %160 = getelementptr inbounds i8, i8* %159, i64 1
  %161 = call i8* @checked_strdup(i8* %160)
  store i8* %161, i8** %10, align 8
  br label %210

162:                                              ; preds = %138
  %163 = load i8*, i8** %11, align 8
  %164 = icmp ne i8* %163, null
  br i1 %164, label %165, label %169

165:                                              ; preds = %162
  %166 = load i8*, i8** %5, align 8
  %167 = load i32, i32* @lineno, align 4
  %168 = call i32 @log_errx(i32 1, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.8, i64 0, i64 0), i8* %166, i32 %167)
  br label %169

169:                                              ; preds = %165, %162
  %170 = load i8*, i8** @yytext, align 8
  %171 = getelementptr inbounds i8, i8* %170, i64 0
  %172 = load i8, i8* %171, align 1
  %173 = sext i8 %172 to i32
  %174 = icmp eq i32 %173, 58
  br i1 %174, label %175, label %189

175:                                              ; preds = %169
  %176 = load i8*, i8** @yytext, align 8
  %177 = getelementptr inbounds i8, i8* %176, i64 1
  %178 = call i8* @checked_strdup(i8* %177)
  store i8* %178, i8** %11, align 8
  %179 = load i8*, i8** %11, align 8
  %180 = getelementptr inbounds i8, i8* %179, i64 0
  %181 = load i8, i8* %180, align 1
  %182 = sext i8 %181 to i32
  %183 = icmp eq i32 %182, 0
  br i1 %183, label %184, label %188

184:                                              ; preds = %175
  %185 = load i8*, i8** %5, align 8
  %186 = load i32, i32* @lineno, align 4
  %187 = call i32 @log_errx(i32 1, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.9, i64 0, i64 0), i8* %185, i32 %186)
  br label %188

188:                                              ; preds = %184, %175
  br label %192

189:                                              ; preds = %169
  %190 = load i8*, i8** @yytext, align 8
  %191 = call i8* @checked_strdup(i8* %190)
  store i8* %191, i8** %11, align 8
  br label %192

192:                                              ; preds = %189, %188
  %193 = load i8*, i8** %9, align 8
  %194 = icmp eq i8* %193, null
  br i1 %194, label %195, label %197

195:                                              ; preds = %192
  %196 = call i8* @checked_strdup(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  store i8* %196, i8** %9, align 8
  br label %197

197:                                              ; preds = %195, %192
  %198 = load i8*, i8** %10, align 8
  %199 = icmp eq i8* %198, null
  br i1 %199, label %200, label %202

200:                                              ; preds = %197
  %201 = call i8* @checked_strdup(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.10, i64 0, i64 0))
  store i8* %201, i8** %10, align 8
  br label %202

202:                                              ; preds = %200, %197
  %203 = load %struct.node*, %struct.node** %13, align 8
  %204 = load i8*, i8** %9, align 8
  %205 = load i8*, i8** %10, align 8
  %206 = load i8*, i8** %11, align 8
  %207 = load i8*, i8** %5, align 8
  %208 = load i32, i32* @lineno, align 4
  %209 = call %struct.node* @node_new(%struct.node* %203, i8* %204, i8* %205, i8* %206, i8* %207, i32 %208)
  store i8* null, i8** %11, align 8
  store i8* null, i8** %10, align 8
  store i8* null, i8** %9, align 8
  br label %210

210:                                              ; preds = %202, %158, %135
  %211 = call i32 (...) @yylex()
  store i32 %211, i32* %12, align 4
  %212 = load i32, i32* %12, align 4
  %213 = icmp eq i32 %212, 0
  br i1 %213, label %218, label %214

214:                                              ; preds = %210
  %215 = load i32, i32* %12, align 4
  %216 = load i32, i32* @NEWLINE, align 4
  %217 = icmp eq i32 %215, %216
  br i1 %217, label %218, label %232

218:                                              ; preds = %214, %210
  %219 = load i8*, i8** %9, align 8
  %220 = icmp ne i8* %219, null
  br i1 %220, label %227, label %221

221:                                              ; preds = %218
  %222 = load i8*, i8** %10, align 8
  %223 = icmp ne i8* %222, null
  br i1 %223, label %227, label %224

224:                                              ; preds = %221
  %225 = load i8*, i8** %11, align 8
  %226 = icmp ne i8* %225, null
  br i1 %226, label %227, label %231

227:                                              ; preds = %224, %221, %218
  %228 = load i8*, i8** %5, align 8
  %229 = load i32, i32* @lineno, align 4
  %230 = call i32 @log_errx(i32 1, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.11, i64 0, i64 0), i8* %228, i32 %229)
  br label %231

231:                                              ; preds = %227, %224
  br label %233

232:                                              ; preds = %214
  br label %112

233:                                              ; preds = %231
  br label %20

234:                                              ; preds = %47
  ret void
}

declare dso_local i8* @checked_strdup(i8*) #1

declare dso_local i32 @yylex(...) #1

declare dso_local i32 @log_errx(i32, i8*, i8*, i32) #1

declare dso_local %struct.node* @node_new(%struct.node*, i8*, i8*, i8*, i8*, i32) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @log_warnx(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
