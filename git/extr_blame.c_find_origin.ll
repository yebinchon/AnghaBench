; ModuleID = '/home/carl/AnghaBench/git/extr_blame.c_find_origin.c'
source_filename = "/home/carl/AnghaBench/git/extr_blame.c_find_origin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, %struct.diff_filepair** }
%struct.diff_filepair = type { i32, %struct.TYPE_9__*, %struct.TYPE_8__* }
%struct.TYPE_9__ = type { i8*, i32, i32 }
%struct.TYPE_8__ = type { i8* }
%struct.repository = type { i32 }
%struct.commit = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.blame_origin = type { i8*, i32, i32, %struct.commit*, %struct.blame_origin* }
%struct.diff_options = type { i32, i32, i64, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }

@DIFF_FORMAT_NO_OUTPUT = common dso_local global i32 0, align 4
@PATHSPEC_ALL_MAGIC = common dso_local global i32 0, align 4
@PATHSPEC_LITERAL = common dso_local global i32 0, align 4
@PATHSPEC_LITERAL_PATH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@diff_queued_diff = common dso_local global %struct.TYPE_10__ zeroinitializer, align 8
@.str.1 = private unnamed_addr constant [37 x i8] c"internal error in blame::find_origin\00", align 1
@.str.2 = private unnamed_addr constant [42 x i8] c"internal error in blame::find_origin (%c)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.blame_origin* (%struct.repository*, %struct.commit*, %struct.blame_origin*)* @find_origin to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.blame_origin* @find_origin(%struct.repository* %0, %struct.commit* %1, %struct.blame_origin* %2) #0 {
  %4 = alloca %struct.blame_origin*, align 8
  %5 = alloca %struct.repository*, align 8
  %6 = alloca %struct.commit*, align 8
  %7 = alloca %struct.blame_origin*, align 8
  %8 = alloca %struct.blame_origin*, align 8
  %9 = alloca %struct.diff_options, align 8
  %10 = alloca [2 x i8*], align 16
  %11 = alloca i32, align 4
  %12 = alloca %struct.diff_filepair*, align 8
  %13 = alloca i8*, align 8
  store %struct.repository* %0, %struct.repository** %5, align 8
  store %struct.commit* %1, %struct.commit** %6, align 8
  store %struct.blame_origin* %2, %struct.blame_origin** %7, align 8
  %14 = load %struct.commit*, %struct.commit** %6, align 8
  %15 = call %struct.blame_origin* @get_blame_suspects(%struct.commit* %14)
  store %struct.blame_origin* %15, %struct.blame_origin** %8, align 8
  br label %16

16:                                               ; preds = %32, %3
  %17 = load %struct.blame_origin*, %struct.blame_origin** %8, align 8
  %18 = icmp ne %struct.blame_origin* %17, null
  br i1 %18, label %19, label %36

19:                                               ; preds = %16
  %20 = load %struct.blame_origin*, %struct.blame_origin** %8, align 8
  %21 = getelementptr inbounds %struct.blame_origin, %struct.blame_origin* %20, i32 0, i32 0
  %22 = load i8*, i8** %21, align 8
  %23 = load %struct.blame_origin*, %struct.blame_origin** %7, align 8
  %24 = getelementptr inbounds %struct.blame_origin, %struct.blame_origin* %23, i32 0, i32 0
  %25 = load i8*, i8** %24, align 8
  %26 = call i32 @strcmp(i8* %22, i8* %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %19
  %29 = load %struct.blame_origin*, %struct.blame_origin** %8, align 8
  %30 = call %struct.blame_origin* @blame_origin_incref(%struct.blame_origin* %29)
  store %struct.blame_origin* %30, %struct.blame_origin** %4, align 8
  br label %180

31:                                               ; preds = %19
  br label %32

32:                                               ; preds = %31
  %33 = load %struct.blame_origin*, %struct.blame_origin** %8, align 8
  %34 = getelementptr inbounds %struct.blame_origin, %struct.blame_origin* %33, i32 0, i32 4
  %35 = load %struct.blame_origin*, %struct.blame_origin** %34, align 8
  store %struct.blame_origin* %35, %struct.blame_origin** %8, align 8
  br label %16

36:                                               ; preds = %16
  %37 = load %struct.repository*, %struct.repository** %5, align 8
  %38 = call i32 @repo_diff_setup(%struct.repository* %37, %struct.diff_options* %9)
  %39 = getelementptr inbounds %struct.diff_options, %struct.diff_options* %9, i32 0, i32 3
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  store i32 1, i32* %40, align 8
  %41 = getelementptr inbounds %struct.diff_options, %struct.diff_options* %9, i32 0, i32 2
  store i64 0, i64* %41, align 8
  %42 = load i32, i32* @DIFF_FORMAT_NO_OUTPUT, align 4
  %43 = getelementptr inbounds %struct.diff_options, %struct.diff_options* %9, i32 0, i32 1
  store i32 %42, i32* %43, align 4
  %44 = load %struct.blame_origin*, %struct.blame_origin** %7, align 8
  %45 = getelementptr inbounds %struct.blame_origin, %struct.blame_origin* %44, i32 0, i32 0
  %46 = load i8*, i8** %45, align 8
  %47 = getelementptr inbounds [2 x i8*], [2 x i8*]* %10, i64 0, i64 0
  store i8* %46, i8** %47, align 16
  %48 = getelementptr inbounds [2 x i8*], [2 x i8*]* %10, i64 0, i64 1
  store i8* null, i8** %48, align 8
  %49 = getelementptr inbounds %struct.diff_options, %struct.diff_options* %9, i32 0, i32 0
  %50 = load i32, i32* @PATHSPEC_ALL_MAGIC, align 4
  %51 = load i32, i32* @PATHSPEC_LITERAL, align 4
  %52 = xor i32 %51, -1
  %53 = and i32 %50, %52
  %54 = load i32, i32* @PATHSPEC_LITERAL_PATH, align 4
  %55 = getelementptr inbounds [2 x i8*], [2 x i8*]* %10, i64 0, i64 0
  %56 = call i32 @parse_pathspec(i32* %49, i32 %53, i32 %54, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %55)
  %57 = call i32 @diff_setup_done(%struct.diff_options* %9)
  %58 = load %struct.blame_origin*, %struct.blame_origin** %7, align 8
  %59 = getelementptr inbounds %struct.blame_origin, %struct.blame_origin* %58, i32 0, i32 3
  %60 = load %struct.commit*, %struct.commit** %59, align 8
  %61 = getelementptr inbounds %struct.commit, %struct.commit* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i32 0, i32 0
  %63 = call i64 @is_null_oid(i32* %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %69

65:                                               ; preds = %36
  %66 = load %struct.commit*, %struct.commit** %6, align 8
  %67 = call i32 @get_commit_tree_oid(%struct.commit* %66)
  %68 = call i32 @do_diff_cache(i32 %67, %struct.diff_options* %9)
  br label %77

69:                                               ; preds = %36
  %70 = load %struct.commit*, %struct.commit** %6, align 8
  %71 = call i32 @get_commit_tree_oid(%struct.commit* %70)
  %72 = load %struct.blame_origin*, %struct.blame_origin** %7, align 8
  %73 = getelementptr inbounds %struct.blame_origin, %struct.blame_origin* %72, i32 0, i32 3
  %74 = load %struct.commit*, %struct.commit** %73, align 8
  %75 = call i32 @get_commit_tree_oid(%struct.commit* %74)
  %76 = call i32 @diff_tree_oid(i32 %71, i32 %75, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), %struct.diff_options* %9)
  br label %77

77:                                               ; preds = %69, %65
  %78 = call i32 @diffcore_std(%struct.diff_options* %9)
  %79 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @diff_queued_diff, i32 0, i32 0), align 8
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %97, label %81

81:                                               ; preds = %77
  %82 = load %struct.commit*, %struct.commit** %6, align 8
  %83 = load %struct.blame_origin*, %struct.blame_origin** %7, align 8
  %84 = getelementptr inbounds %struct.blame_origin, %struct.blame_origin* %83, i32 0, i32 0
  %85 = load i8*, i8** %84, align 8
  %86 = call %struct.blame_origin* @get_origin(%struct.commit* %82, i8* %85)
  store %struct.blame_origin* %86, %struct.blame_origin** %8, align 8
  %87 = load %struct.blame_origin*, %struct.blame_origin** %8, align 8
  %88 = getelementptr inbounds %struct.blame_origin, %struct.blame_origin* %87, i32 0, i32 2
  %89 = load %struct.blame_origin*, %struct.blame_origin** %7, align 8
  %90 = getelementptr inbounds %struct.blame_origin, %struct.blame_origin* %89, i32 0, i32 2
  %91 = call i32 @oidcpy(i32* %88, i32* %90)
  %92 = load %struct.blame_origin*, %struct.blame_origin** %7, align 8
  %93 = getelementptr inbounds %struct.blame_origin, %struct.blame_origin* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 8
  %95 = load %struct.blame_origin*, %struct.blame_origin** %8, align 8
  %96 = getelementptr inbounds %struct.blame_origin, %struct.blame_origin* %95, i32 0, i32 1
  store i32 %94, i32* %96, align 8
  br label %175

97:                                               ; preds = %77
  store %struct.diff_filepair* null, %struct.diff_filepair** %12, align 8
  store i32 0, i32* %11, align 4
  br label %98

98:                                               ; preds = %136, %97
  %99 = load i32, i32* %11, align 4
  %100 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @diff_queued_diff, i32 0, i32 0), align 8
  %101 = icmp slt i32 %99, %100
  br i1 %101, label %102, label %139

102:                                              ; preds = %98
  %103 = load %struct.diff_filepair**, %struct.diff_filepair*** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @diff_queued_diff, i32 0, i32 1), align 8
  %104 = load i32, i32* %11, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds %struct.diff_filepair*, %struct.diff_filepair** %103, i64 %105
  %107 = load %struct.diff_filepair*, %struct.diff_filepair** %106, align 8
  store %struct.diff_filepair* %107, %struct.diff_filepair** %12, align 8
  %108 = load %struct.diff_filepair*, %struct.diff_filepair** %12, align 8
  %109 = getelementptr inbounds %struct.diff_filepair, %struct.diff_filepair* %108, i32 0, i32 1
  %110 = load %struct.TYPE_9__*, %struct.TYPE_9__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %110, i32 0, i32 0
  %112 = load i8*, i8** %111, align 8
  %113 = icmp ne i8* %112, null
  br i1 %113, label %114, label %120

114:                                              ; preds = %102
  %115 = load %struct.diff_filepair*, %struct.diff_filepair** %12, align 8
  %116 = getelementptr inbounds %struct.diff_filepair, %struct.diff_filepair* %115, i32 0, i32 1
  %117 = load %struct.TYPE_9__*, %struct.TYPE_9__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %117, i32 0, i32 0
  %119 = load i8*, i8** %118, align 8
  br label %126

120:                                              ; preds = %102
  %121 = load %struct.diff_filepair*, %struct.diff_filepair** %12, align 8
  %122 = getelementptr inbounds %struct.diff_filepair, %struct.diff_filepair* %121, i32 0, i32 2
  %123 = load %struct.TYPE_8__*, %struct.TYPE_8__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %123, i32 0, i32 0
  %125 = load i8*, i8** %124, align 8
  br label %126

126:                                              ; preds = %120, %114
  %127 = phi i8* [ %119, %114 ], [ %125, %120 ]
  store i8* %127, i8** %13, align 8
  %128 = load i8*, i8** %13, align 8
  %129 = load %struct.blame_origin*, %struct.blame_origin** %7, align 8
  %130 = getelementptr inbounds %struct.blame_origin, %struct.blame_origin* %129, i32 0, i32 0
  %131 = load i8*, i8** %130, align 8
  %132 = call i32 @strcmp(i8* %128, i8* %131)
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %135, label %134

134:                                              ; preds = %126
  br label %139

135:                                              ; preds = %126
  br label %136

136:                                              ; preds = %135
  %137 = load i32, i32* %11, align 4
  %138 = add nsw i32 %137, 1
  store i32 %138, i32* %11, align 4
  br label %98

139:                                              ; preds = %134, %98
  %140 = load %struct.diff_filepair*, %struct.diff_filepair** %12, align 8
  %141 = icmp ne %struct.diff_filepair* %140, null
  br i1 %141, label %144, label %142

142:                                              ; preds = %139
  %143 = call i32 (i8*, ...) @die(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  br label %144

144:                                              ; preds = %142, %139
  %145 = load %struct.diff_filepair*, %struct.diff_filepair** %12, align 8
  %146 = getelementptr inbounds %struct.diff_filepair, %struct.diff_filepair* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 8
  switch i32 %147, label %148 [
    i32 77, label %153
    i32 65, label %173
    i32 84, label %173
  ]

148:                                              ; preds = %144
  %149 = load %struct.diff_filepair*, %struct.diff_filepair** %12, align 8
  %150 = getelementptr inbounds %struct.diff_filepair, %struct.diff_filepair* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 8
  %152 = call i32 (i8*, ...) @die(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0), i32 %151)
  br label %153

153:                                              ; preds = %144, %148
  %154 = load %struct.commit*, %struct.commit** %6, align 8
  %155 = load %struct.blame_origin*, %struct.blame_origin** %7, align 8
  %156 = getelementptr inbounds %struct.blame_origin, %struct.blame_origin* %155, i32 0, i32 0
  %157 = load i8*, i8** %156, align 8
  %158 = call %struct.blame_origin* @get_origin(%struct.commit* %154, i8* %157)
  store %struct.blame_origin* %158, %struct.blame_origin** %8, align 8
  %159 = load %struct.blame_origin*, %struct.blame_origin** %8, align 8
  %160 = getelementptr inbounds %struct.blame_origin, %struct.blame_origin* %159, i32 0, i32 2
  %161 = load %struct.diff_filepair*, %struct.diff_filepair** %12, align 8
  %162 = getelementptr inbounds %struct.diff_filepair, %struct.diff_filepair* %161, i32 0, i32 1
  %163 = load %struct.TYPE_9__*, %struct.TYPE_9__** %162, align 8
  %164 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %163, i32 0, i32 2
  %165 = call i32 @oidcpy(i32* %160, i32* %164)
  %166 = load %struct.diff_filepair*, %struct.diff_filepair** %12, align 8
  %167 = getelementptr inbounds %struct.diff_filepair, %struct.diff_filepair* %166, i32 0, i32 1
  %168 = load %struct.TYPE_9__*, %struct.TYPE_9__** %167, align 8
  %169 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %168, i32 0, i32 1
  %170 = load i32, i32* %169, align 8
  %171 = load %struct.blame_origin*, %struct.blame_origin** %8, align 8
  %172 = getelementptr inbounds %struct.blame_origin, %struct.blame_origin* %171, i32 0, i32 1
  store i32 %170, i32* %172, align 8
  br label %174

173:                                              ; preds = %144, %144
  br label %174

174:                                              ; preds = %173, %153
  br label %175

175:                                              ; preds = %174, %81
  %176 = call i32 @diff_flush(%struct.diff_options* %9)
  %177 = getelementptr inbounds %struct.diff_options, %struct.diff_options* %9, i32 0, i32 0
  %178 = call i32 @clear_pathspec(i32* %177)
  %179 = load %struct.blame_origin*, %struct.blame_origin** %8, align 8
  store %struct.blame_origin* %179, %struct.blame_origin** %4, align 8
  br label %180

180:                                              ; preds = %175, %28
  %181 = load %struct.blame_origin*, %struct.blame_origin** %4, align 8
  ret %struct.blame_origin* %181
}

declare dso_local %struct.blame_origin* @get_blame_suspects(%struct.commit*) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local %struct.blame_origin* @blame_origin_incref(%struct.blame_origin*) #1

declare dso_local i32 @repo_diff_setup(%struct.repository*, %struct.diff_options*) #1

declare dso_local i32 @parse_pathspec(i32*, i32, i32, i8*, i8**) #1

declare dso_local i32 @diff_setup_done(%struct.diff_options*) #1

declare dso_local i64 @is_null_oid(i32*) #1

declare dso_local i32 @do_diff_cache(i32, %struct.diff_options*) #1

declare dso_local i32 @get_commit_tree_oid(%struct.commit*) #1

declare dso_local i32 @diff_tree_oid(i32, i32, i8*, %struct.diff_options*) #1

declare dso_local i32 @diffcore_std(%struct.diff_options*) #1

declare dso_local %struct.blame_origin* @get_origin(%struct.commit*, i8*) #1

declare dso_local i32 @oidcpy(i32*, i32*) #1

declare dso_local i32 @die(i8*, ...) #1

declare dso_local i32 @diff_flush(%struct.diff_options*) #1

declare dso_local i32 @clear_pathspec(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
