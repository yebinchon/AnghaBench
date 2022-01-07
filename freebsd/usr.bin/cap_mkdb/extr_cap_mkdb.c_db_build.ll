; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/cap_mkdb/extr_cap_mkdb.c_db_build.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/cap_mkdb/extr_cap_mkdb.c_db_build.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32 (%struct.TYPE_10__*, %struct.TYPE_9__*, %struct.TYPE_9__*, i32)* }
%struct.TYPE_9__ = type { i8*, i64 }

@.str = private unnamed_addr constant [14 x i8] c"malloc failed\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"no name field: %.*s\00", align 1
@RECOK = common dso_local global i8 0, align 1
@TCERR = common dso_local global i8 0, align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"record not tc expanded: %.*s\00", align 1
@capdbp = common dso_local global %struct.TYPE_10__* null, align 8
@R_NOOVERWRITE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [4 x i8] c"put\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"ignored duplicate: %.*s\00", align 1
@SHADOW = common dso_local global i8 0, align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"file argument\00", align 1
@.str.6 = private unnamed_addr constant [34 x i8] c"potential reference loop detected\00", align 1
@verbose = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [33 x i8] c"cap_mkdb: %d capability records\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8**)* @db_build to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @db_build(i8** %0) #0 {
  %2 = alloca i8**, align 8
  %3 = alloca %struct.TYPE_9__, align 8
  %4 = alloca %struct.TYPE_9__, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  store i8** %0, i8*** %2, align 8
  %12 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %4, i32 0, i32 0
  store i8* null, i8** %12, align 8
  %13 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %3, i32 0, i32 0
  store i8* null, i8** %13, align 8
  store i32 0, i32* %5, align 4
  store i64 0, i64* %7, align 8
  br label %14

14:                                               ; preds = %184, %112, %98, %44, %1
  %15 = load i8**, i8*** %2, align 8
  %16 = call i32 @cgetnext(i8** %9, i8** %15)
  store i32 %16, i32* %8, align 4
  %17 = icmp sgt i32 %16, 0
  br i1 %17, label %18, label %185

18:                                               ; preds = %14
  %19 = load i8*, i8** %9, align 8
  %20 = call i64 @strlen(i8* %19)
  store i64 %20, i64* %6, align 8
  %21 = load i64, i64* %7, align 8
  %22 = load i64, i64* %6, align 8
  %23 = add i64 %22, 2
  %24 = icmp ule i64 %21, %23
  br i1 %24, label %25, label %40

25:                                               ; preds = %18
  %26 = load i64, i64* %6, align 8
  %27 = add i64 %26, 2
  %28 = call i64 @MAX(i32 256, i64 %27)
  %29 = load i64, i64* %7, align 8
  %30 = add i64 %29, %28
  store i64 %30, i64* %7, align 8
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %4, i32 0, i32 0
  %32 = load i8*, i8** %31, align 8
  %33 = load i64, i64* %7, align 8
  %34 = call i8* @realloc(i8* %32, i64 %33)
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %4, i32 0, i32 0
  store i8* %34, i8** %35, align 8
  %36 = icmp eq i8* %34, null
  br i1 %36, label %37, label %39

37:                                               ; preds = %25
  %38 = call i32 @errx(i32 1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  br label %39

39:                                               ; preds = %37, %25
  br label %40

40:                                               ; preds = %39, %18
  %41 = load i8*, i8** %9, align 8
  %42 = call i8* @strchr(i8* %41, i8 signext 58)
  store i8* %42, i8** %10, align 8
  %43 = icmp eq i8* %42, null
  br i1 %43, label %44, label %50

44:                                               ; preds = %40
  %45 = load i64, i64* %6, align 8
  %46 = call i64 @MIN(i64 %45, i32 20)
  %47 = trunc i64 %46 to i32
  %48 = load i8*, i8** %9, align 8
  %49 = call i32 @warnx(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 %47, i8* %48)
  br label %14

50:                                               ; preds = %40
  %51 = load i32, i32* %8, align 4
  switch i32 %51, label %70 [
    i32 1, label %52
    i32 2, label %57
  ]

52:                                               ; preds = %50
  %53 = load i8, i8* @RECOK, align 1
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %4, i32 0, i32 0
  %55 = load i8*, i8** %54, align 8
  %56 = getelementptr inbounds i8, i8* %55, i64 0
  store i8 %53, i8* %56, align 1
  br label %70

57:                                               ; preds = %50
  %58 = load i8, i8* @TCERR, align 1
  %59 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %4, i32 0, i32 0
  %60 = load i8*, i8** %59, align 8
  %61 = getelementptr inbounds i8, i8* %60, i64 0
  store i8 %58, i8* %61, align 1
  %62 = load i8*, i8** %10, align 8
  %63 = load i8*, i8** %9, align 8
  %64 = ptrtoint i8* %62 to i64
  %65 = ptrtoint i8* %63 to i64
  %66 = sub i64 %64, %65
  %67 = trunc i64 %66 to i32
  %68 = load i8*, i8** %9, align 8
  %69 = call i32 @warnx(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i32 %67, i8* %68)
  br label %70

70:                                               ; preds = %50, %57, %52
  %71 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %4, i32 0, i32 0
  %72 = load i8*, i8** %71, align 8
  %73 = bitcast i8* %72 to i32*
  %74 = getelementptr inbounds i32, i32* %73, i64 1
  %75 = load i8*, i8** %9, align 8
  %76 = load i64, i64* %6, align 8
  %77 = add i64 %76, 1
  %78 = call i32 @memmove(i32* %74, i8* %75, i64 %77)
  %79 = load i64, i64* %6, align 8
  %80 = add i64 %79, 2
  %81 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %4, i32 0, i32 1
  store i64 %80, i64* %81, align 8
  %82 = load i8*, i8** %9, align 8
  %83 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %3, i32 0, i32 0
  store i8* %82, i8** %83, align 8
  %84 = load i8*, i8** %10, align 8
  %85 = load i8*, i8** %9, align 8
  %86 = ptrtoint i8* %84 to i64
  %87 = ptrtoint i8* %85 to i64
  %88 = sub i64 %86, %87
  %89 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %3, i32 0, i32 1
  store i64 %88, i64* %89, align 8
  %90 = load %struct.TYPE_10__*, %struct.TYPE_10__** @capdbp, align 8
  %91 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %90, i32 0, i32 0
  %92 = load i32 (%struct.TYPE_10__*, %struct.TYPE_9__*, %struct.TYPE_9__*, i32)*, i32 (%struct.TYPE_10__*, %struct.TYPE_9__*, %struct.TYPE_9__*, i32)** %91, align 8
  %93 = load %struct.TYPE_10__*, %struct.TYPE_10__** @capdbp, align 8
  %94 = load i32, i32* @R_NOOVERWRITE, align 4
  %95 = call i32 %92(%struct.TYPE_10__* %93, %struct.TYPE_9__* %3, %struct.TYPE_9__* %4, i32 %94)
  switch i32 %95, label %105 [
    i32 -1, label %96
    i32 1, label %98
  ]

96:                                               ; preds = %70
  %97 = call i32 @err(i32 1, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  br label %98

98:                                               ; preds = %70, %96
  %99 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %3, i32 0, i32 1
  %100 = load i64, i64* %99, align 8
  %101 = trunc i64 %100 to i32
  %102 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %3, i32 0, i32 0
  %103 = load i8*, i8** %102, align 8
  %104 = call i32 @warnx(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i32 %101, i8* %103)
  br label %14

105:                                              ; preds = %70
  %106 = load i32, i32* %5, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %5, align 4
  %108 = load i8*, i8** %10, align 8
  store i8 0, i8* %108, align 1
  %109 = load i8*, i8** %9, align 8
  %110 = call i8* @strchr(i8* %109, i8 signext 124)
  %111 = icmp eq i8* %110, null
  br i1 %111, label %112, label %113

112:                                              ; preds = %105
  br label %14

113:                                              ; preds = %105
  %114 = load i8*, i8** %10, align 8
  store i8 58, i8* %114, align 1
  %115 = load i8, i8* @SHADOW, align 1
  %116 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %4, i32 0, i32 0
  %117 = load i8*, i8** %116, align 8
  %118 = getelementptr inbounds i8, i8* %117, i64 0
  store i8 %115, i8* %118, align 1
  %119 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %4, i32 0, i32 0
  %120 = load i8*, i8** %119, align 8
  %121 = bitcast i8* %120 to i32*
  %122 = getelementptr inbounds i32, i32* %121, i64 1
  %123 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %3, i32 0, i32 0
  %124 = load i8*, i8** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %3, i32 0, i32 1
  %126 = load i64, i64* %125, align 8
  %127 = call i32 @memmove(i32* %122, i8* %124, i64 %126)
  %128 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %3, i32 0, i32 1
  %129 = load i64, i64* %128, align 8
  %130 = add i64 %129, 1
  %131 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %4, i32 0, i32 1
  store i64 %130, i64* %131, align 8
  %132 = load i8*, i8** %9, align 8
  store i8* %132, i8** %11, align 8
  store i8* %132, i8** %10, align 8
  br label %133

133:                                              ; preds = %181, %113
  %134 = load i8*, i8** %10, align 8
  %135 = load i8*, i8** %11, align 8
  %136 = icmp ugt i8* %134, %135
  br i1 %136, label %137, label %174

137:                                              ; preds = %133
  %138 = load i8*, i8** %10, align 8
  %139 = load i8, i8* %138, align 1
  %140 = sext i8 %139 to i32
  %141 = icmp eq i32 %140, 58
  br i1 %141, label %147, label %142

142:                                              ; preds = %137
  %143 = load i8*, i8** %10, align 8
  %144 = load i8, i8* %143, align 1
  %145 = sext i8 %144 to i32
  %146 = icmp eq i32 %145, 124
  br i1 %146, label %147, label %174

147:                                              ; preds = %142, %137
  %148 = load i8*, i8** %10, align 8
  %149 = load i8*, i8** %11, align 8
  %150 = ptrtoint i8* %148 to i64
  %151 = ptrtoint i8* %149 to i64
  %152 = sub i64 %150, %151
  %153 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %3, i32 0, i32 1
  store i64 %152, i64* %153, align 8
  %154 = load i8*, i8** %11, align 8
  %155 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %3, i32 0, i32 0
  store i8* %154, i8** %155, align 8
  %156 = load %struct.TYPE_10__*, %struct.TYPE_10__** @capdbp, align 8
  %157 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %156, i32 0, i32 0
  %158 = load i32 (%struct.TYPE_10__*, %struct.TYPE_9__*, %struct.TYPE_9__*, i32)*, i32 (%struct.TYPE_10__*, %struct.TYPE_9__*, %struct.TYPE_9__*, i32)** %157, align 8
  %159 = load %struct.TYPE_10__*, %struct.TYPE_10__** @capdbp, align 8
  %160 = load i32, i32* @R_NOOVERWRITE, align 4
  %161 = call i32 %158(%struct.TYPE_10__* %159, %struct.TYPE_9__* %3, %struct.TYPE_9__* %4, i32 %160)
  switch i32 %161, label %171 [
    i32 -1, label %162
    i32 1, label %164
  ]

162:                                              ; preds = %147
  %163 = call i32 @err(i32 1, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  br label %164

164:                                              ; preds = %147, %162
  %165 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %3, i32 0, i32 1
  %166 = load i64, i64* %165, align 8
  %167 = trunc i64 %166 to i32
  %168 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %3, i32 0, i32 0
  %169 = load i8*, i8** %168, align 8
  %170 = call i32 @warnx(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i32 %167, i8* %169)
  br label %171

171:                                              ; preds = %164, %147
  %172 = load i8*, i8** %10, align 8
  %173 = getelementptr inbounds i8, i8* %172, i64 1
  store i8* %173, i8** %11, align 8
  br label %174

174:                                              ; preds = %171, %142, %133
  %175 = load i8*, i8** %10, align 8
  %176 = load i8, i8* %175, align 1
  %177 = sext i8 %176 to i32
  %178 = icmp eq i32 %177, 58
  br i1 %178, label %179, label %180

179:                                              ; preds = %174
  br label %184

180:                                              ; preds = %174
  br label %181

181:                                              ; preds = %180
  %182 = load i8*, i8** %10, align 8
  %183 = getelementptr inbounds i8, i8* %182, i32 1
  store i8* %183, i8** %10, align 8
  br label %133

184:                                              ; preds = %179
  br label %14

185:                                              ; preds = %14
  %186 = load i32, i32* %8, align 4
  switch i32 %186, label %191 [
    i32 -1, label %187
    i32 -2, label %189
  ]

187:                                              ; preds = %185
  %188 = call i32 @err(i32 1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0))
  br label %189

189:                                              ; preds = %185, %187
  %190 = call i32 @errx(i32 1, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.6, i64 0, i64 0))
  br label %191

191:                                              ; preds = %189, %185
  %192 = load i64, i64* @verbose, align 8
  %193 = icmp ne i64 %192, 0
  br i1 %193, label %194, label %197

194:                                              ; preds = %191
  %195 = load i32, i32* %5, align 4
  %196 = call i32 @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.7, i64 0, i64 0), i32 %195)
  br label %197

197:                                              ; preds = %194, %191
  ret void
}

declare dso_local i32 @cgetnext(i8**, i8**) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i64 @MAX(i32, i64) #1

declare dso_local i8* @realloc(i8*, i64) #1

declare dso_local i32 @errx(i32, i8*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @warnx(i8*, i32, i8*) #1

declare dso_local i64 @MIN(i64, i32) #1

declare dso_local i32 @memmove(i32*, i8*, i64) #1

declare dso_local i32 @err(i32, i8*) #1

declare dso_local i32 @printf(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
