; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ckdist/extr_ckdist.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ckdist/extr_ckdist.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i32 }
%struct.TYPE_4__ = type { i32, i8*, i64, i32, i32 }

@main.arg = internal global [2 x i8*] zeroinitializer, align 16
@.str = private unnamed_addr constant [12 x i8] c"ad:in:rst:x\00", align 1
@opt_all = common dso_local global i32 0, align 4
@optarg = common dso_local global i8* null, align 8
@opt_dir = common dso_local global i8* null, align 8
@opt_ignore = common dso_local global i32 0, align 4
@opt_name = common dso_local global i8* null, align 8
@opt_recurse = common dso_local global i32 0, align 4
@opt_silent = common dso_local global i32 0, align 4
@opt_type = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"illegal argument to -t option\00", align 1
@opt_exist = common dso_local global i32 0, align 4
@optind = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"%s: not a directory\00", align 1
@FTS_LOGICAL = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [9 x i8] c"fts_open\00", align 1
@.str.5 = private unnamed_addr constant [25 x i8] c"Directory causes a cycle\00", align 1
@sys_errlist = common dso_local global i8** null, align 8
@FTS_ROOTLEVEL = common dso_local global i32 0, align 4
@FTS_SKIP = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [8 x i8] c"fts_set\00", align 1
@errno = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [9 x i8] c"fts_read\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"fts_close\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.stat, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_4__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  br label %12

12:                                               ; preds = %38, %2
  %13 = load i32, i32* %4, align 4
  %14 = load i8**, i8*** %5, align 8
  %15 = call i32 @getopt(i32 %13, i8** %14, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  store i32 %15, i32* %10, align 4
  %16 = icmp ne i32 %15, -1
  br i1 %16, label %17, label %39

17:                                               ; preds = %12
  %18 = load i32, i32* %10, align 4
  switch i32 %18, label %36 [
    i32 97, label %19
    i32 100, label %20
    i32 105, label %22
    i32 110, label %23
    i32 114, label %25
    i32 115, label %26
    i32 116, label %27
    i32 120, label %35
  ]

19:                                               ; preds = %17
  store i32 1, i32* @opt_all, align 4
  br label %38

20:                                               ; preds = %17
  %21 = load i8*, i8** @optarg, align 8
  store i8* %21, i8** @opt_dir, align 8
  br label %38

22:                                               ; preds = %17
  store i32 1, i32* @opt_ignore, align 4
  br label %38

23:                                               ; preds = %17
  %24 = load i8*, i8** @optarg, align 8
  store i8* %24, i8** @opt_name, align 8
  br label %38

25:                                               ; preds = %17
  store i32 1, i32* @opt_recurse, align 4
  br label %38

26:                                               ; preds = %17
  store i32 1, i32* @opt_silent, align 4
  br label %38

27:                                               ; preds = %17
  %28 = load i8*, i8** @optarg, align 8
  %29 = call i32 @disttype(i8* %28)
  store i32 %29, i32* @opt_type, align 4
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %27
  %32 = call i32 @warnx(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  %33 = call i32 (...) @usage()
  br label %34

34:                                               ; preds = %31, %27
  br label %38

35:                                               ; preds = %17
  store i32 1, i32* @opt_exist, align 4
  br label %38

36:                                               ; preds = %17
  %37 = call i32 (...) @usage()
  br label %38

38:                                               ; preds = %36, %35, %34, %26, %25, %23, %22, %20, %19
  br label %12

39:                                               ; preds = %12
  %40 = load i64, i64* @optind, align 8
  %41 = load i32, i32* %4, align 4
  %42 = sext i32 %41 to i64
  %43 = sub nsw i64 %42, %40
  %44 = trunc i64 %43 to i32
  store i32 %44, i32* %4, align 4
  %45 = load i64, i64* @optind, align 8
  %46 = load i8**, i8*** %5, align 8
  %47 = getelementptr inbounds i8*, i8** %46, i64 %45
  store i8** %47, i8*** %5, align 8
  %48 = load i32, i32* %4, align 4
  %49 = icmp slt i32 %48, 1
  br i1 %49, label %50, label %52

50:                                               ; preds = %39
  %51 = call i32 (...) @usage()
  br label %52

52:                                               ; preds = %50, %39
  %53 = load i8*, i8** @opt_dir, align 8
  %54 = icmp ne i8* %53, null
  br i1 %54, label %55, label %71

55:                                               ; preds = %52
  %56 = load i8*, i8** @opt_dir, align 8
  %57 = call i64 @stat(i8* %56, %struct.stat* %6)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %55
  %60 = load i8*, i8** @opt_dir, align 8
  %61 = call i32 (i32, i8*, ...) @err(i32 2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* %60)
  br label %62

62:                                               ; preds = %59, %55
  %63 = getelementptr inbounds %struct.stat, %struct.stat* %6, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @S_ISDIR(i32 %64)
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %70, label %67

67:                                               ; preds = %62
  %68 = load i8*, i8** @opt_dir, align 8
  %69 = call i32 @errx(i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i8* %68)
  br label %70

70:                                               ; preds = %67, %62
  br label %71

71:                                               ; preds = %70, %52
  store i32 0, i32* %9, align 4
  br label %72

72:                                               ; preds = %197, %71
  %73 = load i8**, i8*** %5, align 8
  %74 = load i8*, i8** %73, align 8
  %75 = call i64 @isstdin(i8* %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %84

77:                                               ; preds = %72
  %78 = load i8**, i8*** %5, align 8
  %79 = load i8*, i8** %78, align 8
  %80 = load i32, i32* @opt_type, align 4
  %81 = call i32 @ckdist(i8* %79, i32 %80)
  %82 = load i32, i32* %9, align 4
  %83 = or i32 %82, %81
  store i32 %83, i32* %9, align 4
  br label %196

84:                                               ; preds = %72
  %85 = load i8**, i8*** %5, align 8
  %86 = load i8*, i8** %85, align 8
  %87 = call i64 @stat(i8* %86, %struct.stat* %6)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %95

89:                                               ; preds = %84
  %90 = load i8**, i8*** %5, align 8
  %91 = load i8*, i8** %90, align 8
  %92 = call i32 @fail(i8* %91, i8* null)
  %93 = load i32, i32* %9, align 4
  %94 = or i32 %93, %92
  store i32 %94, i32* %9, align 4
  br label %195

95:                                               ; preds = %84
  %96 = getelementptr inbounds %struct.stat, %struct.stat* %6, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = call i64 @S_ISREG(i32 %97)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %107

100:                                              ; preds = %95
  %101 = load i8**, i8*** %5, align 8
  %102 = load i8*, i8** %101, align 8
  %103 = load i32, i32* @opt_type, align 4
  %104 = call i32 @ckdist(i8* %102, i32 %103)
  %105 = load i32, i32* %9, align 4
  %106 = or i32 %105, %104
  store i32 %106, i32* %9, align 4
  br label %194

107:                                              ; preds = %95
  %108 = load i8**, i8*** %5, align 8
  %109 = load i8*, i8** %108, align 8
  store i8* %109, i8** getelementptr inbounds ([2 x i8*], [2 x i8*]* @main.arg, i64 0, i64 0), align 16
  %110 = load i32, i32* @FTS_LOGICAL, align 4
  %111 = call i32* @fts_open(i8** getelementptr inbounds ([2 x i8*], [2 x i8*]* @main.arg, i64 0, i64 0), i32 %110, i32* null)
  store i32* %111, i32** %7, align 8
  %112 = icmp eq i32* %111, null
  br i1 %112, label %113, label %115

113:                                              ; preds = %107
  %114 = call i32 (i32, i8*, ...) @err(i32 2, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0))
  br label %115

115:                                              ; preds = %113, %107
  br label %116

116:                                              ; preds = %181, %115
  %117 = load i32*, i32** %7, align 8
  %118 = call %struct.TYPE_4__* @fts_read(i32* %117)
  store %struct.TYPE_4__* %118, %struct.TYPE_4__** %8, align 8
  %119 = icmp ne %struct.TYPE_4__* %118, null
  br i1 %119, label %120, label %182

120:                                              ; preds = %116
  %121 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %122 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  switch i32 %123, label %180 [
    i32 132, label %124
    i32 131, label %129
    i32 130, label %129
    i32 128, label %129
    i32 133, label %140
    i32 129, label %158
  ]

124:                                              ; preds = %120
  %125 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %126 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %125, i32 0, i32 1
  %127 = load i8*, i8** %126, align 8
  %128 = call i32 @fail(i8* %127, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0))
  store i32 %128, i32* %9, align 4
  br label %181

129:                                              ; preds = %120, %120, %120
  %130 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %131 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %130, i32 0, i32 1
  %132 = load i8*, i8** %131, align 8
  %133 = load i8**, i8*** @sys_errlist, align 8
  %134 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %135 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %134, i32 0, i32 2
  %136 = load i64, i64* %135, align 8
  %137 = getelementptr inbounds i8*, i8** %133, i64 %136
  %138 = load i8*, i8** %137, align 8
  %139 = call i32 @fail(i8* %132, i8* %138)
  store i32 %139, i32* %9, align 4
  br label %181

140:                                              ; preds = %120
  %141 = load i32, i32* @opt_recurse, align 4
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %157, label %143

143:                                              ; preds = %140
  %144 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %145 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %144, i32 0, i32 4
  %146 = load i32, i32* %145, align 4
  %147 = load i32, i32* @FTS_ROOTLEVEL, align 4
  %148 = icmp sgt i32 %146, %147
  br i1 %148, label %149, label %157

149:                                              ; preds = %143
  %150 = load i32*, i32** %7, align 8
  %151 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %152 = load i32, i32* @FTS_SKIP, align 4
  %153 = call i32 @fts_set(i32* %150, %struct.TYPE_4__* %151, i32 %152)
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %157

155:                                              ; preds = %149
  %156 = call i32 (i32, i8*, ...) @err(i32 2, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0))
  br label %157

157:                                              ; preds = %155, %149, %143, %140
  br label %181

158:                                              ; preds = %120
  %159 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %160 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %159, i32 0, i32 3
  %161 = load i32, i32* %160, align 8
  %162 = call i32 @distfile(i32 %161)
  store i32 %162, i32* %11, align 4
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %164, label %179

164:                                              ; preds = %158
  %165 = load i32, i32* @opt_type, align 4
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %171

167:                                              ; preds = %164
  %168 = load i32, i32* %11, align 4
  %169 = load i32, i32* @opt_type, align 4
  %170 = icmp eq i32 %168, %169
  br i1 %170, label %171, label %179

171:                                              ; preds = %167, %164
  %172 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %173 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %172, i32 0, i32 1
  %174 = load i8*, i8** %173, align 8
  %175 = load i32, i32* %11, align 4
  %176 = call i32 @ckdist(i8* %174, i32 %175)
  %177 = load i32, i32* %9, align 4
  %178 = or i32 %177, %176
  store i32 %178, i32* %9, align 4
  br label %179

179:                                              ; preds = %171, %167, %158
  br label %181

180:                                              ; preds = %120
  br label %181

181:                                              ; preds = %180, %179, %157, %129, %124
  br label %116

182:                                              ; preds = %116
  %183 = load i64, i64* @errno, align 8
  %184 = icmp ne i64 %183, 0
  br i1 %184, label %185, label %187

185:                                              ; preds = %182
  %186 = call i32 (i32, i8*, ...) @err(i32 2, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0))
  br label %187

187:                                              ; preds = %185, %182
  %188 = load i32*, i32** %7, align 8
  %189 = call i64 @fts_close(i32* %188)
  %190 = icmp ne i64 %189, 0
  br i1 %190, label %191, label %193

191:                                              ; preds = %187
  %192 = call i32 (i32, i8*, ...) @err(i32 2, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0))
  br label %193

193:                                              ; preds = %191, %187
  br label %194

194:                                              ; preds = %193, %100
  br label %195

195:                                              ; preds = %194, %89
  br label %196

196:                                              ; preds = %195, %77
  br label %197

197:                                              ; preds = %196
  %198 = load i8**, i8*** %5, align 8
  %199 = getelementptr inbounds i8*, i8** %198, i32 1
  store i8** %199, i8*** %5, align 8
  %200 = load i8*, i8** %199, align 8
  %201 = icmp ne i8* %200, null
  br i1 %201, label %72, label %202

202:                                              ; preds = %197
  %203 = load i32, i32* %9, align 4
  ret i32 %203
}

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i32 @disttype(i8*) #1

declare dso_local i32 @warnx(i8*) #1

declare dso_local i32 @usage(...) #1

declare dso_local i64 @stat(i8*, %struct.stat*) #1

declare dso_local i32 @err(i32, i8*, ...) #1

declare dso_local i32 @S_ISDIR(i32) #1

declare dso_local i32 @errx(i32, i8*, i8*) #1

declare dso_local i64 @isstdin(i8*) #1

declare dso_local i32 @ckdist(i8*, i32) #1

declare dso_local i32 @fail(i8*, i8*) #1

declare dso_local i64 @S_ISREG(i32) #1

declare dso_local i32* @fts_open(i8**, i32, i32*) #1

declare dso_local %struct.TYPE_4__* @fts_read(i32*) #1

declare dso_local i32 @fts_set(i32*, %struct.TYPE_4__*, i32) #1

declare dso_local i32 @distfile(i32) #1

declare dso_local i64 @fts_close(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
