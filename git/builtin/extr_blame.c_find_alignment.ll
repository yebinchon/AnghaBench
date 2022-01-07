; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_blame.c_find_alignment.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_blame.c_find_alignment.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.blame_scoreboard = type { i32, %struct.blame_entry* }
%struct.blame_entry = type { i32, i32, i32, %struct.blame_origin*, %struct.blame_entry* }
%struct.blame_origin = type { %struct.TYPE_8__*, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.commit_info = type { %struct.TYPE_7__, %struct.TYPE_6__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32 }

@abbrev = common dso_local global i32 0, align 4
@DEFAULT_ABBREV = common dso_local global i32 0, align 4
@OUTPUT_SHOW_NAME = common dso_local global i32 0, align 4
@longest_file = common dso_local global i32 0, align 4
@METAINFO_SHOWN = common dso_local global i32 0, align 4
@OUTPUT_SHOW_EMAIL = common dso_local global i32 0, align 4
@longest_author = common dso_local global i32 0, align 4
@max_orig_digits = common dso_local global i8* null, align 8
@max_digits = common dso_local global i8* null, align 8
@max_score_digits = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.blame_scoreboard*, i32*)* @find_alignment to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @find_alignment(%struct.blame_scoreboard* %0, i32* %1) #0 {
  %3 = alloca %struct.blame_scoreboard*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.blame_entry*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.blame_origin*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.commit_info, align 4
  store %struct.blame_scoreboard* %0, %struct.blame_scoreboard** %3, align 8
  store i32* %1, i32** %4, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %14 = load i32, i32* @abbrev, align 4
  %15 = icmp slt i32 %14, 0
  %16 = zext i1 %15 to i32
  store i32 %16, i32* %9, align 4
  %17 = load i32, i32* @DEFAULT_ABBREV, align 4
  store i32 %17, i32* %10, align 4
  %18 = load %struct.blame_scoreboard*, %struct.blame_scoreboard** %3, align 8
  %19 = getelementptr inbounds %struct.blame_scoreboard, %struct.blame_scoreboard* %18, i32 0, i32 1
  %20 = load %struct.blame_entry*, %struct.blame_entry** %19, align 8
  store %struct.blame_entry* %20, %struct.blame_entry** %8, align 8
  br label %21

21:                                               ; preds = %141, %2
  %22 = load %struct.blame_entry*, %struct.blame_entry** %8, align 8
  %23 = icmp ne %struct.blame_entry* %22, null
  br i1 %23, label %24, label %145

24:                                               ; preds = %21
  %25 = load %struct.blame_entry*, %struct.blame_entry** %8, align 8
  %26 = getelementptr inbounds %struct.blame_entry, %struct.blame_entry* %25, i32 0, i32 3
  %27 = load %struct.blame_origin*, %struct.blame_origin** %26, align 8
  store %struct.blame_origin* %27, %struct.blame_origin** %11, align 8
  %28 = load i32, i32* %9, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %24
  %31 = load i32, i32* %10, align 4
  %32 = load %struct.blame_origin*, %struct.blame_origin** %11, align 8
  %33 = call i32 @update_auto_abbrev(i32 %31, %struct.blame_origin* %32)
  store i32 %33, i32* %10, align 4
  br label %34

34:                                               ; preds = %30, %24
  %35 = load %struct.blame_origin*, %struct.blame_origin** %11, align 8
  %36 = getelementptr inbounds %struct.blame_origin, %struct.blame_origin* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.blame_scoreboard*, %struct.blame_scoreboard** %3, align 8
  %39 = getelementptr inbounds %struct.blame_scoreboard, %struct.blame_scoreboard* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = call i64 @strcmp(i32 %37, i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %48

43:                                               ; preds = %34
  %44 = load i32, i32* @OUTPUT_SHOW_NAME, align 4
  %45 = load i32*, i32** %4, align 8
  %46 = load i32, i32* %45, align 4
  %47 = or i32 %46, %44
  store i32 %47, i32* %45, align 4
  br label %48

48:                                               ; preds = %43, %34
  %49 = load %struct.blame_origin*, %struct.blame_origin** %11, align 8
  %50 = getelementptr inbounds %struct.blame_origin, %struct.blame_origin* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @strlen(i32 %51)
  store i32 %52, i32* %12, align 4
  %53 = load i32, i32* @longest_file, align 4
  %54 = load i32, i32* %12, align 4
  %55 = icmp slt i32 %53, %54
  br i1 %55, label %56, label %58

56:                                               ; preds = %48
  %57 = load i32, i32* %12, align 4
  store i32 %57, i32* @longest_file, align 4
  br label %58

58:                                               ; preds = %56, %48
  %59 = load %struct.blame_origin*, %struct.blame_origin** %11, align 8
  %60 = getelementptr inbounds %struct.blame_origin, %struct.blame_origin* %59, i32 0, i32 0
  %61 = load %struct.TYPE_8__*, %struct.TYPE_8__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* @METAINFO_SHOWN, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %104, label %68

68:                                               ; preds = %58
  %69 = load i32, i32* @METAINFO_SHOWN, align 4
  %70 = load %struct.blame_origin*, %struct.blame_origin** %11, align 8
  %71 = getelementptr inbounds %struct.blame_origin, %struct.blame_origin* %70, i32 0, i32 0
  %72 = load %struct.TYPE_8__*, %struct.TYPE_8__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = or i32 %75, %69
  store i32 %76, i32* %74, align 4
  %77 = load %struct.blame_origin*, %struct.blame_origin** %11, align 8
  %78 = getelementptr inbounds %struct.blame_origin, %struct.blame_origin* %77, i32 0, i32 0
  %79 = load %struct.TYPE_8__*, %struct.TYPE_8__** %78, align 8
  %80 = call i32 @get_commit_info(%struct.TYPE_8__* %79, %struct.commit_info* %13, i32 1)
  %81 = load i32*, i32** %4, align 8
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* @OUTPUT_SHOW_EMAIL, align 4
  %84 = and i32 %82, %83
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %91

86:                                               ; preds = %68
  %87 = getelementptr inbounds %struct.commit_info, %struct.commit_info* %13, i32 0, i32 1
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @utf8_strwidth(i32 %89)
  store i32 %90, i32* %12, align 4
  br label %96

91:                                               ; preds = %68
  %92 = getelementptr inbounds %struct.commit_info, %struct.commit_info* %13, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @utf8_strwidth(i32 %94)
  store i32 %95, i32* %12, align 4
  br label %96

96:                                               ; preds = %91, %86
  %97 = load i32, i32* @longest_author, align 4
  %98 = load i32, i32* %12, align 4
  %99 = icmp slt i32 %97, %98
  br i1 %99, label %100, label %102

100:                                              ; preds = %96
  %101 = load i32, i32* %12, align 4
  store i32 %101, i32* @longest_author, align 4
  br label %102

102:                                              ; preds = %100, %96
  %103 = call i32 @commit_info_destroy(%struct.commit_info* %13)
  br label %104

104:                                              ; preds = %102, %58
  %105 = load %struct.blame_entry*, %struct.blame_entry** %8, align 8
  %106 = getelementptr inbounds %struct.blame_entry, %struct.blame_entry* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = load %struct.blame_entry*, %struct.blame_entry** %8, align 8
  %109 = getelementptr inbounds %struct.blame_entry, %struct.blame_entry* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = add nsw i32 %107, %110
  store i32 %111, i32* %12, align 4
  %112 = load i32, i32* %5, align 4
  %113 = load i32, i32* %12, align 4
  %114 = icmp slt i32 %112, %113
  br i1 %114, label %115, label %117

115:                                              ; preds = %104
  %116 = load i32, i32* %12, align 4
  store i32 %116, i32* %5, align 4
  br label %117

117:                                              ; preds = %115, %104
  %118 = load %struct.blame_entry*, %struct.blame_entry** %8, align 8
  %119 = getelementptr inbounds %struct.blame_entry, %struct.blame_entry* %118, i32 0, i32 2
  %120 = load i32, i32* %119, align 8
  %121 = load %struct.blame_entry*, %struct.blame_entry** %8, align 8
  %122 = getelementptr inbounds %struct.blame_entry, %struct.blame_entry* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 4
  %124 = add nsw i32 %120, %123
  store i32 %124, i32* %12, align 4
  %125 = load i32, i32* %6, align 4
  %126 = load i32, i32* %12, align 4
  %127 = icmp slt i32 %125, %126
  br i1 %127, label %128, label %130

128:                                              ; preds = %117
  %129 = load i32, i32* %12, align 4
  store i32 %129, i32* %6, align 4
  br label %130

130:                                              ; preds = %128, %117
  %131 = load i32, i32* %7, align 4
  %132 = load %struct.blame_scoreboard*, %struct.blame_scoreboard** %3, align 8
  %133 = load %struct.blame_entry*, %struct.blame_entry** %8, align 8
  %134 = call i32 @blame_entry_score(%struct.blame_scoreboard* %132, %struct.blame_entry* %133)
  %135 = icmp ult i32 %131, %134
  br i1 %135, label %136, label %140

136:                                              ; preds = %130
  %137 = load %struct.blame_scoreboard*, %struct.blame_scoreboard** %3, align 8
  %138 = load %struct.blame_entry*, %struct.blame_entry** %8, align 8
  %139 = call i32 @blame_entry_score(%struct.blame_scoreboard* %137, %struct.blame_entry* %138)
  store i32 %139, i32* %7, align 4
  br label %140

140:                                              ; preds = %136, %130
  br label %141

141:                                              ; preds = %140
  %142 = load %struct.blame_entry*, %struct.blame_entry** %8, align 8
  %143 = getelementptr inbounds %struct.blame_entry, %struct.blame_entry* %142, i32 0, i32 4
  %144 = load %struct.blame_entry*, %struct.blame_entry** %143, align 8
  store %struct.blame_entry* %144, %struct.blame_entry** %8, align 8
  br label %21

145:                                              ; preds = %21
  %146 = load i32, i32* %5, align 4
  %147 = call i8* @decimal_width(i32 %146)
  store i8* %147, i8** @max_orig_digits, align 8
  %148 = load i32, i32* %6, align 4
  %149 = call i8* @decimal_width(i32 %148)
  store i8* %149, i8** @max_digits, align 8
  %150 = load i32, i32* %7, align 4
  %151 = call i8* @decimal_width(i32 %150)
  store i8* %151, i8** @max_score_digits, align 8
  %152 = load i32, i32* %9, align 4
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %157

154:                                              ; preds = %145
  %155 = load i32, i32* %10, align 4
  %156 = add nsw i32 %155, 1
  store i32 %156, i32* @abbrev, align 4
  br label %157

157:                                              ; preds = %154, %145
  ret void
}

declare dso_local i32 @update_auto_abbrev(i32, %struct.blame_origin*) #1

declare dso_local i64 @strcmp(i32, i32) #1

declare dso_local i32 @strlen(i32) #1

declare dso_local i32 @get_commit_info(%struct.TYPE_8__*, %struct.commit_info*, i32) #1

declare dso_local i32 @utf8_strwidth(i32) #1

declare dso_local i32 @commit_info_destroy(%struct.commit_info*) #1

declare dso_local i32 @blame_entry_score(%struct.blame_scoreboard*, %struct.blame_entry*) #1

declare dso_local i8* @decimal_width(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
