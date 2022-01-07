; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/aic7xxx/aicasm/extr_aicasm.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/aic7xxx/aicasm/extr_aicasm.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64 }
%struct.TYPE_11__ = type { i32, i64, i32* }

@patches = common dso_local global i32 0, align 4
@search_path = common dso_local global i32 0, align 4
@seq_program = common dso_local global i32 0, align 4
@cs_tailq = common dso_local global i32 0, align 4
@scope_stack = common dso_local global i32 0, align 4
@SCOPE_ROOT = common dso_local global i64 0, align 8
@includes_search_curdir = common dso_local global i32 0, align 4
@appname = common dso_local global i8* null, align 8
@regfile = common dso_local global i32* null, align 8
@listfile = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [18 x i8] c"d:i:l:n:o:p:r:I:X\00", align 1
@.str.1 = private unnamed_addr constant [51 x i8] c"-d: Assembler not built with debugging information\00", align 1
@EX_SOFTWARE = common dso_local global i32 0, align 4
@optarg = common dso_local global i8* null, align 8
@stock_include_file = common dso_local global i32* null, align 8
@.str.2 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@EX_CANTCREAT = common dso_local global i32 0, align 4
@listfilename = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [8 x i8] c"ostdinc\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [26 x i8] c"%s: Unknown option -%c%s\0A\00", align 1
@ofile = common dso_local global i32* null, align 8
@ofilename = common dso_local global i8* null, align 8
@regdiagfile = common dso_local global i32* null, align 8
@regdiagfilename = common dso_local global i8* null, align 8
@regfilename = common dso_local global i8* null, align 8
@.str.5 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.6 = private unnamed_addr constant [46 x i8] c"%s: Warning - '-I-' specified multiple times\0A\00", align 1
@links = common dso_local global i32 0, align 4
@EX_OSERR = common dso_local global i32 0, align 4
@optind = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [30 x i8] c"%s: No input file specifiled\0A\00", align 1
@.str.8 = private unnamed_addr constant [51 x i8] c"%s: The -p option requires the -r and -i options.\0A\00", align 1
@SOURCE_FILE = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [36 x i8] c"Unterminated conditional expression\00", align 1
@EX_DATAERR = common dso_local global i32 0, align 4
@mm_flex_debug = common dso_local global i32 0, align 4
@mmdebug = common dso_local global i32 0, align 4
@yy_flex_debug = common dso_local global i32 0, align 4
@yydebug = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca %struct.TYPE_10__*, align 8
  %10 = alloca %struct.TYPE_11__*, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %11 = call i32 @STAILQ_INIT(i32* @patches)
  %12 = call i32 @SLIST_INIT(i32* @search_path)
  %13 = call i32 @STAILQ_INIT(i32* @seq_program)
  %14 = call i32 @TAILQ_INIT(i32* @cs_tailq)
  %15 = call i32 @SLIST_INIT(i32* @scope_stack)
  %16 = call %struct.TYPE_10__* (...) @scope_alloc()
  store %struct.TYPE_10__* %16, %struct.TYPE_10__** %9, align 8
  %17 = load i64, i64* @SCOPE_ROOT, align 8
  %18 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %19 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %18, i32 0, i32 0
  store i64 %17, i64* %19, align 8
  store i32 1, i32* @includes_search_curdir, align 4
  %20 = load i8**, i8*** %5, align 8
  %21 = load i8*, i8** %20, align 8
  store i8* %21, i8** @appname, align 8
  store i32* null, i32** @regfile, align 8
  store i32* null, i32** @listfile, align 8
  br label %22

22:                                               ; preds = %155, %2
  %23 = load i32, i32* %4, align 4
  %24 = load i8**, i8*** %5, align 8
  %25 = call i32 @getopt(i32 %23, i8** %24, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  store i32 %25, i32* %6, align 4
  %26 = icmp ne i32 %25, -1
  br i1 %26, label %27, label %156

27:                                               ; preds = %22
  %28 = load i32, i32* %6, align 4
  switch i32 %28, label %153 [
    i32 100, label %29
    i32 105, label %32
    i32 108, label %35
    i32 110, label %47
    i32 111, label %59
    i32 112, label %71
    i32 114, label %83
    i32 73, label %95
    i32 88, label %151
    i32 63, label %152
  ]

29:                                               ; preds = %27
  %30 = load i32, i32* @EX_SOFTWARE, align 4
  %31 = call i32 @stop(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0), i32 %30)
  br label %155

32:                                               ; preds = %27
  %33 = load i8*, i8** @optarg, align 8
  %34 = bitcast i8* %33 to i32*
  store i32* %34, i32** @stock_include_file, align 8
  br label %155

35:                                               ; preds = %27
  %36 = load i8*, i8** @optarg, align 8
  %37 = call i8* @fopen(i8* %36, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %38 = bitcast i8* %37 to i32*
  store i32* %38, i32** @listfile, align 8
  %39 = icmp eq i32* %38, null
  br i1 %39, label %40, label %45

40:                                               ; preds = %35
  %41 = load i8*, i8** @optarg, align 8
  %42 = call i32 @perror(i8* %41)
  %43 = load i32, i32* @EX_CANTCREAT, align 4
  %44 = call i32 @stop(i8* null, i32 %43)
  br label %45

45:                                               ; preds = %40, %35
  %46 = load i8*, i8** @optarg, align 8
  store i8* %46, i8** @listfilename, align 8
  br label %155

47:                                               ; preds = %27
  %48 = load i8*, i8** @optarg, align 8
  %49 = call i32 @strcmp(i8* %48, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %58

51:                                               ; preds = %47
  %52 = load i32, i32* @stderr, align 4
  %53 = load i8*, i8** @appname, align 8
  %54 = load i32, i32* %6, align 4
  %55 = load i8*, i8** @optarg, align 8
  %56 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %52, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0), i8* %53, i32 %54, i8* %55)
  %57 = call i32 (...) @usage()
  br label %58

58:                                               ; preds = %51, %47
  br label %155

59:                                               ; preds = %27
  %60 = load i8*, i8** @optarg, align 8
  %61 = call i8* @fopen(i8* %60, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %62 = bitcast i8* %61 to i32*
  store i32* %62, i32** @ofile, align 8
  %63 = icmp eq i32* %62, null
  br i1 %63, label %64, label %69

64:                                               ; preds = %59
  %65 = load i8*, i8** @optarg, align 8
  %66 = call i32 @perror(i8* %65)
  %67 = load i32, i32* @EX_CANTCREAT, align 4
  %68 = call i32 @stop(i8* null, i32 %67)
  br label %69

69:                                               ; preds = %64, %59
  %70 = load i8*, i8** @optarg, align 8
  store i8* %70, i8** @ofilename, align 8
  br label %155

71:                                               ; preds = %27
  %72 = load i8*, i8** @optarg, align 8
  %73 = call i8* @fopen(i8* %72, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %74 = bitcast i8* %73 to i32*
  store i32* %74, i32** @regdiagfile, align 8
  %75 = icmp eq i32* %74, null
  br i1 %75, label %76, label %81

76:                                               ; preds = %71
  %77 = load i8*, i8** @optarg, align 8
  %78 = call i32 @perror(i8* %77)
  %79 = load i32, i32* @EX_CANTCREAT, align 4
  %80 = call i32 @stop(i8* null, i32 %79)
  br label %81

81:                                               ; preds = %76, %71
  %82 = load i8*, i8** @optarg, align 8
  store i8* %82, i8** @regdiagfilename, align 8
  br label %155

83:                                               ; preds = %27
  %84 = load i8*, i8** @optarg, align 8
  %85 = call i8* @fopen(i8* %84, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %86 = bitcast i8* %85 to i32*
  store i32* %86, i32** @regfile, align 8
  %87 = icmp eq i32* %86, null
  br i1 %87, label %88, label %93

88:                                               ; preds = %83
  %89 = load i8*, i8** @optarg, align 8
  %90 = call i32 @perror(i8* %89)
  %91 = load i32, i32* @EX_CANTCREAT, align 4
  %92 = call i32 @stop(i8* null, i32 %91)
  br label %93

93:                                               ; preds = %88, %83
  %94 = load i8*, i8** @optarg, align 8
  store i8* %94, i8** @regfilename, align 8
  br label %155

95:                                               ; preds = %27
  %96 = load i8*, i8** @optarg, align 8
  %97 = call i32 @strcmp(i8* %96, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %99, label %119

99:                                               ; preds = %95
  %100 = load i32, i32* @includes_search_curdir, align 4
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %102, label %106

102:                                              ; preds = %99
  %103 = load i32, i32* @stderr, align 4
  %104 = load i8*, i8** @appname, align 8
  %105 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %103, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.6, i64 0, i64 0), i8* %104)
  br label %106

106:                                              ; preds = %102, %99
  store i32 0, i32* @includes_search_curdir, align 4
  %107 = call %struct.TYPE_11__* @SLIST_FIRST(i32* @search_path)
  store %struct.TYPE_11__* %107, %struct.TYPE_11__** %10, align 8
  br label %108

108:                                              ; preds = %114, %106
  %109 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %110 = icmp ne %struct.TYPE_11__* %109, null
  br i1 %110, label %111, label %118

111:                                              ; preds = %108
  %112 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %113 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %112, i32 0, i32 0
  store i32 1, i32* %113, align 8
  br label %114

114:                                              ; preds = %111
  %115 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %116 = load i32, i32* @links, align 4
  %117 = call %struct.TYPE_11__* @SLIST_NEXT(%struct.TYPE_11__* %115, i32 %116)
  store %struct.TYPE_11__* %117, %struct.TYPE_11__** %10, align 8
  br label %108

118:                                              ; preds = %108
  br label %150

119:                                              ; preds = %95
  %120 = call i32 @malloc(i32 24)
  %121 = sext i32 %120 to i64
  %122 = inttoptr i64 %121 to %struct.TYPE_11__*
  store %struct.TYPE_11__* %122, %struct.TYPE_11__** %10, align 8
  %123 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %124 = icmp eq %struct.TYPE_11__* %123, null
  br i1 %124, label %125, label %130

125:                                              ; preds = %119
  %126 = load i8*, i8** @optarg, align 8
  %127 = call i32 @perror(i8* %126)
  %128 = load i32, i32* @EX_OSERR, align 4
  %129 = call i32 @stop(i8* null, i32 %128)
  br label %130

130:                                              ; preds = %125, %119
  %131 = load i8*, i8** @optarg, align 8
  %132 = call i32* @strdup(i8* %131)
  %133 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %134 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %133, i32 0, i32 2
  store i32* %132, i32** %134, align 8
  %135 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %136 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %135, i32 0, i32 2
  %137 = load i32*, i32** %136, align 8
  %138 = icmp eq i32* %137, null
  br i1 %138, label %139, label %144

139:                                              ; preds = %130
  %140 = load i8*, i8** @optarg, align 8
  %141 = call i32 @perror(i8* %140)
  %142 = load i32, i32* @EX_OSERR, align 4
  %143 = call i32 @stop(i8* null, i32 %142)
  br label %144

144:                                              ; preds = %139, %130
  %145 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %146 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %145, i32 0, i32 0
  store i32 0, i32* %146, align 8
  %147 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %148 = load i32, i32* @links, align 4
  %149 = call i32 @SLIST_INSERT_HEAD(i32* @search_path, %struct.TYPE_11__* %147, i32 %148)
  br label %150

150:                                              ; preds = %144, %118
  br label %155

151:                                              ; preds = %27
  br label %155

152:                                              ; preds = %27
  br label %153

153:                                              ; preds = %27, %152
  %154 = call i32 (...) @usage()
  br label %155

155:                                              ; preds = %153, %151, %150, %93, %81, %69, %58, %45, %32, %29
  br label %22

156:                                              ; preds = %22
  %157 = load i64, i64* @optind, align 8
  %158 = load i32, i32* %4, align 4
  %159 = sext i32 %158 to i64
  %160 = sub nsw i64 %159, %157
  %161 = trunc i64 %160 to i32
  store i32 %161, i32* %4, align 4
  %162 = load i64, i64* @optind, align 8
  %163 = load i8**, i8*** %5, align 8
  %164 = getelementptr inbounds i8*, i8** %163, i64 %162
  store i8** %164, i8*** %5, align 8
  %165 = load i32, i32* %4, align 4
  %166 = icmp ne i32 %165, 1
  br i1 %166, label %167, label %172

167:                                              ; preds = %156
  %168 = load i32, i32* @stderr, align 4
  %169 = load i8*, i8** @appname, align 8
  %170 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %168, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.7, i64 0, i64 0), i8* %169)
  %171 = call i32 (...) @usage()
  br label %172

172:                                              ; preds = %167, %156
  %173 = load i32*, i32** @regdiagfile, align 8
  %174 = icmp ne i32* %173, null
  br i1 %174, label %175, label %186

175:                                              ; preds = %172
  %176 = load i32*, i32** @regfile, align 8
  %177 = icmp eq i32* %176, null
  br i1 %177, label %181, label %178

178:                                              ; preds = %175
  %179 = load i32*, i32** @stock_include_file, align 8
  %180 = icmp eq i32* %179, null
  br i1 %180, label %181, label %186

181:                                              ; preds = %178, %175
  %182 = load i32, i32* @stderr, align 4
  %183 = load i8*, i8** @appname, align 8
  %184 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %182, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.8, i64 0, i64 0), i8* %183)
  %185 = call i32 (...) @usage()
  br label %186

186:                                              ; preds = %181, %178, %172
  %187 = call i32 (...) @symtable_open()
  %188 = load i8**, i8*** %5, align 8
  %189 = load i8*, i8** %188, align 8
  store i8* %189, i8** %8, align 8
  %190 = load i8**, i8*** %5, align 8
  %191 = load i8*, i8** %190, align 8
  %192 = load i32, i32* @SOURCE_FILE, align 4
  %193 = call i32 @include_file(i8* %191, i32 %192)
  %194 = call i32 (...) @yyparse()
  store i32 %194, i32* %7, align 4
  %195 = load i32, i32* %7, align 4
  %196 = icmp eq i32 %195, 0
  br i1 %196, label %197, label %233

197:                                              ; preds = %186
  %198 = call %struct.TYPE_11__* @SLIST_FIRST(i32* @scope_stack)
  %199 = icmp eq %struct.TYPE_11__* %198, null
  br i1 %199, label %206, label %200

200:                                              ; preds = %197
  %201 = call %struct.TYPE_11__* @SLIST_FIRST(i32* @scope_stack)
  %202 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %201, i32 0, i32 1
  %203 = load i64, i64* %202, align 8
  %204 = load i64, i64* @SCOPE_ROOT, align 8
  %205 = icmp ne i64 %203, %204
  br i1 %205, label %206, label %209

206:                                              ; preds = %200, %197
  %207 = load i32, i32* @EX_DATAERR, align 4
  %208 = call i32 @stop(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.9, i64 0, i64 0), i32 %207)
  br label %209

209:                                              ; preds = %206, %200
  %210 = call %struct.TYPE_11__* @SLIST_FIRST(i32* @scope_stack)
  %211 = call i32 @process_scope(%struct.TYPE_11__* %210)
  %212 = call %struct.TYPE_11__* @SLIST_FIRST(i32* @scope_stack)
  %213 = call i32 @dump_scope(%struct.TYPE_11__* %212)
  %214 = call i32 (...) @back_patch()
  %215 = load i32*, i32** @ofile, align 8
  %216 = icmp ne i32* %215, null
  br i1 %216, label %217, label %219

217:                                              ; preds = %209
  %218 = call i32 (...) @output_code()
  br label %219

219:                                              ; preds = %217, %209
  %220 = load i32*, i32** @regfile, align 8
  %221 = icmp ne i32* %220, null
  br i1 %221, label %222, label %226

222:                                              ; preds = %219
  %223 = load i32*, i32** @regfile, align 8
  %224 = load i32*, i32** @regdiagfile, align 8
  %225 = call i32 @symtable_dump(i32* %223, i32* %224)
  br label %226

226:                                              ; preds = %222, %219
  %227 = load i32*, i32** @listfile, align 8
  %228 = icmp ne i32* %227, null
  br i1 %228, label %229, label %232

229:                                              ; preds = %226
  %230 = load i8*, i8** %8, align 8
  %231 = call i32 @output_listing(i8* %230)
  br label %232

232:                                              ; preds = %229, %226
  br label %233

233:                                              ; preds = %232, %186
  %234 = call i32 @stop(i8* null, i32 0)
  ret i32 0
}

declare dso_local i32 @STAILQ_INIT(i32*) #1

declare dso_local i32 @SLIST_INIT(i32*) #1

declare dso_local i32 @TAILQ_INIT(i32*) #1

declare dso_local %struct.TYPE_10__* @scope_alloc(...) #1

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i32 @stop(i8*, i32) #1

declare dso_local i8* @fopen(i8*, i8*) #1

declare dso_local i32 @perror(i8*) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @fprintf(i32, i8*, i8*, ...) #1

declare dso_local i32 @usage(...) #1

declare dso_local %struct.TYPE_11__* @SLIST_FIRST(i32*) #1

declare dso_local %struct.TYPE_11__* @SLIST_NEXT(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @malloc(i32) #1

declare dso_local i32* @strdup(i8*) #1

declare dso_local i32 @SLIST_INSERT_HEAD(i32*, %struct.TYPE_11__*, i32) #1

declare dso_local i32 @symtable_open(...) #1

declare dso_local i32 @include_file(i8*, i32) #1

declare dso_local i32 @yyparse(...) #1

declare dso_local i32 @process_scope(%struct.TYPE_11__*) #1

declare dso_local i32 @dump_scope(%struct.TYPE_11__*) #1

declare dso_local i32 @back_patch(...) #1

declare dso_local i32 @output_code(...) #1

declare dso_local i32 @symtable_dump(i32*, i32*) #1

declare dso_local i32 @output_listing(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
