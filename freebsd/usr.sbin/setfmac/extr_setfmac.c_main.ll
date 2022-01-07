; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/setfmac/extr_setfmac.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/setfmac/extr_setfmac.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i8* }
%struct.label_specs = type { i32 }

@.str = private unnamed_addr constant [9 x i8] c"basename\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"setfmac\00", align 1
@FTS_LOGICAL = common dso_local global i32 0, align 4
@FTS_PHYSICAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [4 x i8] c"Rhq\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"ef:qs:vx\00", align 1
@optarg = common dso_local global i32 0, align 4
@qflag = common dso_local global i32 0, align 4
@FTS_XDEV = common dso_local global i32 0, align 4
@optind = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [29 x i8] c"cannot traverse filesystem%s\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"s\00", align 1
@.str.6 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@FTS_SKIP = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [29 x i8] c"labeling not supported in %s\00", align 1
@.str.8 = private unnamed_addr constant [14 x i8] c"traversing %s\00", align 1
@.str.9 = private unnamed_addr constant [33 x i8] c"CANNOT HAPPEN (%d) traversing %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.label_specs*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %17 = load i8**, i8*** %5, align 8
  %18 = getelementptr inbounds i8*, i8** %17, i64 0
  %19 = load i8*, i8** %18, align 8
  %20 = call i8* @basename(i8* %19)
  store i8* %20, i8** %16, align 8
  %21 = load i8*, i8** %16, align 8
  %22 = icmp eq i8* %21, null
  br i1 %22, label %23, label %25

23:                                               ; preds = %2
  %24 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  br label %25

25:                                               ; preds = %23, %2
  %26 = load i8*, i8** %16, align 8
  %27 = call i64 @strcmp(i8* %26, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %28 = icmp eq i64 %27, 0
  %29 = zext i1 %28 to i32
  store i32 %29, i32* %15, align 4
  %30 = load i32, i32* %15, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %25
  %33 = load i32, i32* @FTS_LOGICAL, align 4
  br label %36

34:                                               ; preds = %25
  %35 = load i32, i32* @FTS_PHYSICAL, align 4
  br label %36

36:                                               ; preds = %34, %32
  %37 = phi i32 [ %33, %32 ], [ %35, %34 ]
  store i32 %37, i32* %13, align 4
  %38 = call %struct.label_specs* (...) @new_specs()
  store %struct.label_specs* %38, %struct.label_specs** %8, align 8
  br label %39

39:                                               ; preds = %71, %36
  %40 = load i32, i32* %4, align 4
  %41 = load i8**, i8*** %5, align 8
  %42 = load i32, i32* %15, align 4
  %43 = icmp ne i32 %42, 0
  %44 = zext i1 %43 to i64
  %45 = select i1 %43, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0)
  %46 = call i32 @getopt(i32 %40, i8** %41, i8* %45)
  store i32 %46, i32* %14, align 4
  %47 = icmp ne i32 %46, -1
  br i1 %47, label %48, label %72

48:                                               ; preds = %39
  %49 = load i32, i32* %14, align 4
  switch i32 %49, label %68 [
    i32 82, label %50
    i32 101, label %51
    i32 102, label %52
    i32 104, label %56
    i32 113, label %58
    i32 115, label %59
    i32 118, label %63
    i32 120, label %66
  ]

50:                                               ; preds = %48
  store i32 1, i32* %12, align 4
  br label %71

51:                                               ; preds = %48
  store i32 1, i32* %9, align 4
  br label %71

52:                                               ; preds = %48
  %53 = load %struct.label_specs*, %struct.label_specs** %8, align 8
  %54 = load i32, i32* @optarg, align 4
  %55 = call i32 @add_specs(%struct.label_specs* %53, i32 %54, i32 0)
  br label %71

56:                                               ; preds = %48
  %57 = load i32, i32* @FTS_PHYSICAL, align 4
  store i32 %57, i32* %13, align 4
  br label %71

58:                                               ; preds = %48
  store i32 1, i32* @qflag, align 4
  br label %71

59:                                               ; preds = %48
  %60 = load %struct.label_specs*, %struct.label_specs** %8, align 8
  %61 = load i32, i32* @optarg, align 4
  %62 = call i32 @add_specs(%struct.label_specs* %60, i32 %61, i32 1)
  br label %71

63:                                               ; preds = %48
  %64 = load i32, i32* %11, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %11, align 4
  br label %71

66:                                               ; preds = %48
  %67 = load i32, i32* @FTS_XDEV, align 4
  store i32 %67, i32* %10, align 4
  br label %71

68:                                               ; preds = %48
  %69 = load i32, i32* %15, align 4
  %70 = call i32 @usage(i32 %69)
  br label %71

71:                                               ; preds = %68, %66, %63, %59, %58, %56, %52, %51, %50
  br label %39

72:                                               ; preds = %39
  %73 = load i64, i64* @optind, align 8
  %74 = load i32, i32* %4, align 4
  %75 = sext i32 %74 to i64
  %76 = sub nsw i64 %75, %73
  %77 = trunc i64 %76 to i32
  store i32 %77, i32* %4, align 4
  %78 = load i64, i64* @optind, align 8
  %79 = load i8**, i8*** %5, align 8
  %80 = getelementptr inbounds i8*, i8** %79, i64 %78
  store i8** %80, i8*** %5, align 8
  %81 = load i32, i32* %15, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %98

83:                                               ; preds = %72
  %84 = load i32, i32* %4, align 4
  %85 = icmp sle i32 %84, 1
  br i1 %85, label %86, label %89

86:                                               ; preds = %83
  %87 = load i32, i32* %15, align 4
  %88 = call i32 @usage(i32 %87)
  br label %89

89:                                               ; preds = %86, %83
  %90 = load %struct.label_specs*, %struct.label_specs** %8, align 8
  %91 = load i8**, i8*** %5, align 8
  %92 = load i8*, i8** %91, align 8
  %93 = call i32 @add_setfmac_specs(%struct.label_specs* %90, i8* %92)
  %94 = load i32, i32* %4, align 4
  %95 = add nsw i32 %94, -1
  store i32 %95, i32* %4, align 4
  %96 = load i8**, i8*** %5, align 8
  %97 = getelementptr inbounds i8*, i8** %96, i32 1
  store i8** %97, i8*** %5, align 8
  br label %109

98:                                               ; preds = %72
  %99 = load i32, i32* %4, align 4
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %105, label %101

101:                                              ; preds = %98
  %102 = load %struct.label_specs*, %struct.label_specs** %8, align 8
  %103 = call i64 @specs_empty(%struct.label_specs* %102)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %108

105:                                              ; preds = %101, %98
  %106 = load i32, i32* %15, align 4
  %107 = call i32 @usage(i32 %106)
  br label %108

108:                                              ; preds = %105, %101
  br label %109

109:                                              ; preds = %108, %89
  %110 = load i8**, i8*** %5, align 8
  %111 = load i32, i32* %13, align 4
  %112 = load i32, i32* %10, align 4
  %113 = or i32 %111, %112
  %114 = call i32* @fts_open(i8** %110, i32 %113, i32* null)
  store i32* %114, i32** %7, align 8
  %115 = load i32*, i32** %7, align 8
  %116 = icmp eq i32* %115, null
  br i1 %116, label %117, label %123

117:                                              ; preds = %109
  %118 = load i32, i32* %4, align 4
  %119 = icmp ne i32 %118, 0
  %120 = zext i1 %119 to i64
  %121 = select i1 %119, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i64 0, i64 0)
  %122 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0), i8* %121)
  br label %123

123:                                              ; preds = %117, %109
  br label %124

124:                                              ; preds = %187, %123
  %125 = load i32*, i32** %7, align 8
  %126 = call %struct.TYPE_5__* @fts_read(i32* %125)
  store %struct.TYPE_5__* %126, %struct.TYPE_5__** %6, align 8
  %127 = icmp ne %struct.TYPE_5__* %126, null
  br i1 %127, label %128, label %188

128:                                              ; preds = %124
  %129 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %130 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  switch i32 %131, label %179 [
    i32 134, label %132
    i32 138, label %133
    i32 137, label %133
    i32 136, label %145
    i32 132, label %145
    i32 130, label %145
    i32 129, label %145
    i32 128, label %145
    i32 135, label %174
    i32 133, label %174
    i32 131, label %174
  ]

132:                                              ; preds = %128
  br label %187

133:                                              ; preds = %128, %128
  %134 = load i32, i32* %15, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %144

136:                                              ; preds = %133
  %137 = load i32, i32* %12, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %144, label %139

139:                                              ; preds = %136
  %140 = load i32*, i32** %7, align 8
  %141 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %142 = load i32, i32* @FTS_SKIP, align 4
  %143 = call i32 @fts_set(i32* %140, %struct.TYPE_5__* %141, i32 %142)
  br label %144

144:                                              ; preds = %139, %136, %133
  br label %145

145:                                              ; preds = %128, %128, %128, %128, %128, %144
  %146 = load %struct.label_specs*, %struct.label_specs** %8, align 8
  %147 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %148 = load i32, i32* %13, align 4
  %149 = load i32, i32* %11, align 4
  %150 = call i32 @apply_specs(%struct.label_specs* %146, %struct.TYPE_5__* %147, i32 %148, i32 %149)
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %173

152:                                              ; preds = %145
  %153 = load i32, i32* %9, align 4
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %160

155:                                              ; preds = %152
  %156 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %157 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %156, i32 0, i32 1
  %158 = load i8*, i8** %157, align 8
  %159 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.7, i64 0, i64 0), i8* %158)
  br label %160

160:                                              ; preds = %155, %152
  %161 = load i32, i32* @qflag, align 4
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %168, label %163

163:                                              ; preds = %160
  %164 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %165 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %164, i32 0, i32 1
  %166 = load i8*, i8** %165, align 8
  %167 = call i32 @warnx(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.7, i64 0, i64 0), i8* %166)
  br label %168

168:                                              ; preds = %163, %160
  %169 = load i32*, i32** %7, align 8
  %170 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %171 = load i32, i32* @FTS_SKIP, align 4
  %172 = call i32 @fts_set(i32* %169, %struct.TYPE_5__* %170, i32 %171)
  br label %173

173:                                              ; preds = %168, %145
  br label %187

174:                                              ; preds = %128, %128, %128
  %175 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %176 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %175, i32 0, i32 1
  %177 = load i8*, i8** %176, align 8
  %178 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i64 0, i64 0), i8* %177)
  br label %179

179:                                              ; preds = %128, %174
  %180 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %181 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %180, i32 0, i32 0
  %182 = load i32, i32* %181, align 8
  %183 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %184 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %183, i32 0, i32 1
  %185 = load i8*, i8** %184, align 8
  %186 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.9, i64 0, i64 0), i32 %182, i8* %185)
  br label %187

187:                                              ; preds = %179, %173, %132
  br label %124

188:                                              ; preds = %124
  %189 = load i32*, i32** %7, align 8
  %190 = call i32 @fts_close(i32* %189)
  %191 = call i32 @exit(i32 0) #3
  unreachable
}

declare dso_local i8* @basename(i8*) #1

declare dso_local i32 @err(i32, i8*, ...) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local %struct.label_specs* @new_specs(...) #1

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i32 @add_specs(%struct.label_specs*, i32, i32) #1

declare dso_local i32 @usage(i32) #1

declare dso_local i32 @add_setfmac_specs(%struct.label_specs*, i8*) #1

declare dso_local i64 @specs_empty(%struct.label_specs*) #1

declare dso_local i32* @fts_open(i8**, i32, i32*) #1

declare dso_local %struct.TYPE_5__* @fts_read(i32*) #1

declare dso_local i32 @fts_set(i32*, %struct.TYPE_5__*, i32) #1

declare dso_local i32 @apply_specs(%struct.label_specs*, %struct.TYPE_5__*, i32, i32) #1

declare dso_local i32 @errx(i32, i8*, ...) #1

declare dso_local i32 @warnx(i8*, i8*) #1

declare dso_local i32 @fts_close(i32*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
