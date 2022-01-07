; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_grep.c_grep_tree.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_grep.c_grep_tree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i32, i32* }
%struct.grep_opt = type { i64, %struct.repository* }
%struct.repository = type { i32, i32* }
%struct.pathspec = type { i32 }
%struct.tree_desc = type { i32 }
%struct.name_entry = type { i32, i32, i32 }

@entry_not_interesting = common dso_local global i32 0, align 4
@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 8
@all_entries_interesting = common dso_local global i32 0, align 4
@all_entries_not_interesting = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"unable to read tree (%s)\00", align 1
@recurse_submodules = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.grep_opt*, %struct.pathspec*, %struct.tree_desc*, %struct.strbuf*, i32, i32)* @grep_tree to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @grep_tree(%struct.grep_opt* %0, %struct.pathspec* %1, %struct.tree_desc* %2, %struct.strbuf* %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.grep_opt*, align 8
  %8 = alloca %struct.pathspec*, align 8
  %9 = alloca %struct.tree_desc*, align 8
  %10 = alloca %struct.strbuf*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.repository*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.name_entry, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.strbuf, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca %struct.tree_desc, align 4
  %23 = alloca i8*, align 8
  %24 = alloca i64, align 8
  store %struct.grep_opt* %0, %struct.grep_opt** %7, align 8
  store %struct.pathspec* %1, %struct.pathspec** %8, align 8
  store %struct.tree_desc* %2, %struct.tree_desc** %9, align 8
  store %struct.strbuf* %3, %struct.strbuf** %10, align 8
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %25 = load %struct.grep_opt*, %struct.grep_opt** %7, align 8
  %26 = getelementptr inbounds %struct.grep_opt, %struct.grep_opt* %25, i32 0, i32 1
  %27 = load %struct.repository*, %struct.repository** %26, align 8
  store %struct.repository* %27, %struct.repository** %13, align 8
  store i32 0, i32* %14, align 4
  %28 = load i32, i32* @entry_not_interesting, align 4
  store i32 %28, i32* %15, align 4
  %29 = load %struct.strbuf*, %struct.strbuf** %10, align 8
  %30 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  store i32 %31, i32* %17, align 4
  %32 = bitcast %struct.strbuf* %18 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %32, i8* align 8 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 16, i1 false)
  store i32 0, i32* %19, align 4
  %33 = load %struct.repository*, %struct.repository** %13, align 8
  %34 = getelementptr inbounds %struct.repository, %struct.repository* %33, i32 0, i32 1
  %35 = load i32*, i32** %34, align 8
  %36 = icmp ne i32* %35, null
  br i1 %36, label %37, label %44

37:                                               ; preds = %6
  %38 = load %struct.repository*, %struct.repository** %13, align 8
  %39 = getelementptr inbounds %struct.repository, %struct.repository* %38, i32 0, i32 1
  %40 = load i32*, i32** %39, align 8
  %41 = call i32 @strbuf_addstr(%struct.strbuf* %18, i32* %40)
  %42 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %18, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  store i32 %43, i32* %19, align 4
  br label %44

44:                                               ; preds = %37, %6
  br label %45

45:                                               ; preds = %180, %77, %44
  %46 = load %struct.tree_desc*, %struct.tree_desc** %9, align 8
  %47 = call i64 @tree_entry(%struct.tree_desc* %46, %struct.name_entry* %16)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %181

49:                                               ; preds = %45
  %50 = call i32 @tree_entry_len(%struct.name_entry* %16)
  store i32 %50, i32* %20, align 4
  %51 = load i32, i32* %15, align 4
  %52 = load i32, i32* @all_entries_interesting, align 4
  %53 = icmp ne i32 %51, %52
  br i1 %53, label %54, label %79

54:                                               ; preds = %49
  %55 = load %struct.strbuf*, %struct.strbuf** %10, align 8
  %56 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %55, i32 0, i32 1
  %57 = load i32*, i32** %56, align 8
  %58 = load i32, i32* %11, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i32, i32* %57, i64 %59
  %61 = call i32 @strbuf_addstr(%struct.strbuf* %18, i32* %60)
  %62 = load %struct.repository*, %struct.repository** %13, align 8
  %63 = getelementptr inbounds %struct.repository, %struct.repository* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = load %struct.pathspec*, %struct.pathspec** %8, align 8
  %66 = call i32 @tree_entry_interesting(i32 %64, %struct.name_entry* %16, %struct.strbuf* %18, i32 0, %struct.pathspec* %65)
  store i32 %66, i32* %15, align 4
  %67 = load i32, i32* %19, align 4
  %68 = call i32 @strbuf_setlen(%struct.strbuf* %18, i32 %67)
  %69 = load i32, i32* %15, align 4
  %70 = load i32, i32* @all_entries_not_interesting, align 4
  %71 = icmp eq i32 %69, %70
  br i1 %71, label %72, label %73

72:                                               ; preds = %54
  br label %181

73:                                               ; preds = %54
  %74 = load i32, i32* %15, align 4
  %75 = load i32, i32* @entry_not_interesting, align 4
  %76 = icmp eq i32 %74, %75
  br i1 %76, label %77, label %78

77:                                               ; preds = %73
  br label %45

78:                                               ; preds = %73
  br label %79

79:                                               ; preds = %78, %49
  %80 = load %struct.strbuf*, %struct.strbuf** %10, align 8
  %81 = getelementptr inbounds %struct.name_entry, %struct.name_entry* %16, i32 0, i32 2
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* %20, align 4
  %84 = call i32 @strbuf_add(%struct.strbuf* %80, i32 %82, i32 %83)
  %85 = getelementptr inbounds %struct.name_entry, %struct.name_entry* %16, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = call i64 @S_ISREG(i32 %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %111

89:                                               ; preds = %79
  %90 = load %struct.grep_opt*, %struct.grep_opt** %7, align 8
  %91 = getelementptr inbounds %struct.name_entry, %struct.name_entry* %16, i32 0, i32 0
  %92 = load %struct.strbuf*, %struct.strbuf** %10, align 8
  %93 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %92, i32 0, i32 1
  %94 = load i32*, i32** %93, align 8
  %95 = load i32, i32* %11, align 4
  %96 = load i32, i32* %12, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %105

98:                                               ; preds = %89
  %99 = load %struct.strbuf*, %struct.strbuf** %10, align 8
  %100 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %99, i32 0, i32 1
  %101 = load i32*, i32** %100, align 8
  %102 = load i32, i32* %11, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i32, i32* %101, i64 %103
  br label %106

105:                                              ; preds = %89
  br label %106

106:                                              ; preds = %105, %98
  %107 = phi i32* [ %104, %98 ], [ null, %105 ]
  %108 = call i32 @grep_oid(%struct.grep_opt* %90, i32* %91, i32* %94, i32 %95, i32* %107)
  %109 = load i32, i32* %14, align 4
  %110 = or i32 %109, %108
  store i32 %110, i32* %14, align 4
  br label %168

111:                                              ; preds = %79
  %112 = getelementptr inbounds %struct.name_entry, %struct.name_entry* %16, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = call i64 @S_ISDIR(i32 %113)
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %142

116:                                              ; preds = %111
  %117 = getelementptr inbounds %struct.name_entry, %struct.name_entry* %16, i32 0, i32 0
  %118 = call i8* @lock_and_read_oid_file(i32* %117, i32* %21, i64* %24)
  store i8* %118, i8** %23, align 8
  %119 = load i8*, i8** %23, align 8
  %120 = icmp ne i8* %119, null
  br i1 %120, label %126, label %121

121:                                              ; preds = %116
  %122 = call i32 @_(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %123 = getelementptr inbounds %struct.name_entry, %struct.name_entry* %16, i32 0, i32 0
  %124 = call i32 @oid_to_hex(i32* %123)
  %125 = call i32 @die(i32 %122, i32 %124)
  br label %126

126:                                              ; preds = %121, %116
  %127 = load %struct.strbuf*, %struct.strbuf** %10, align 8
  %128 = call i32 @strbuf_addch(%struct.strbuf* %127, i8 signext 47)
  %129 = load i8*, i8** %23, align 8
  %130 = load i64, i64* %24, align 8
  %131 = call i32 @init_tree_desc(%struct.tree_desc* %22, i8* %129, i64 %130)
  %132 = load %struct.grep_opt*, %struct.grep_opt** %7, align 8
  %133 = load %struct.pathspec*, %struct.pathspec** %8, align 8
  %134 = load %struct.strbuf*, %struct.strbuf** %10, align 8
  %135 = load i32, i32* %11, align 4
  %136 = load i32, i32* %12, align 4
  %137 = call i32 @grep_tree(%struct.grep_opt* %132, %struct.pathspec* %133, %struct.tree_desc* %22, %struct.strbuf* %134, i32 %135, i32 %136)
  %138 = load i32, i32* %14, align 4
  %139 = or i32 %138, %137
  store i32 %139, i32* %14, align 4
  %140 = load i8*, i8** %23, align 8
  %141 = call i32 @free(i8* %140)
  br label %167

142:                                              ; preds = %111
  %143 = load i64, i64* @recurse_submodules, align 8
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %145, label %166

145:                                              ; preds = %142
  %146 = getelementptr inbounds %struct.name_entry, %struct.name_entry* %16, i32 0, i32 1
  %147 = load i32, i32* %146, align 4
  %148 = call i64 @S_ISGITLINK(i32 %147)
  %149 = icmp ne i64 %148, 0
  br i1 %149, label %150, label %166

150:                                              ; preds = %145
  %151 = load %struct.grep_opt*, %struct.grep_opt** %7, align 8
  %152 = load %struct.pathspec*, %struct.pathspec** %8, align 8
  %153 = getelementptr inbounds %struct.name_entry, %struct.name_entry* %16, i32 0, i32 0
  %154 = load %struct.strbuf*, %struct.strbuf** %10, align 8
  %155 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %154, i32 0, i32 1
  %156 = load i32*, i32** %155, align 8
  %157 = load %struct.strbuf*, %struct.strbuf** %10, align 8
  %158 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %157, i32 0, i32 1
  %159 = load i32*, i32** %158, align 8
  %160 = load i32, i32* %11, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds i32, i32* %159, i64 %161
  %163 = call i32 @grep_submodule(%struct.grep_opt* %151, %struct.pathspec* %152, i32* %153, i32* %156, i32* %162, i32 1)
  %164 = load i32, i32* %14, align 4
  %165 = or i32 %164, %163
  store i32 %165, i32* %14, align 4
  br label %166

166:                                              ; preds = %150, %145, %142
  br label %167

167:                                              ; preds = %166, %126
  br label %168

168:                                              ; preds = %167, %106
  %169 = load %struct.strbuf*, %struct.strbuf** %10, align 8
  %170 = load i32, i32* %17, align 4
  %171 = call i32 @strbuf_setlen(%struct.strbuf* %169, i32 %170)
  %172 = load i32, i32* %14, align 4
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %174, label %180

174:                                              ; preds = %168
  %175 = load %struct.grep_opt*, %struct.grep_opt** %7, align 8
  %176 = getelementptr inbounds %struct.grep_opt, %struct.grep_opt* %175, i32 0, i32 0
  %177 = load i64, i64* %176, align 8
  %178 = icmp ne i64 %177, 0
  br i1 %178, label %179, label %180

179:                                              ; preds = %174
  br label %181

180:                                              ; preds = %174, %168
  br label %45

181:                                              ; preds = %179, %72, %45
  %182 = call i32 @strbuf_release(%struct.strbuf* %18)
  %183 = load i32, i32* %14, align 4
  ret i32 %183
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @strbuf_addstr(%struct.strbuf*, i32*) #2

declare dso_local i64 @tree_entry(%struct.tree_desc*, %struct.name_entry*) #2

declare dso_local i32 @tree_entry_len(%struct.name_entry*) #2

declare dso_local i32 @tree_entry_interesting(i32, %struct.name_entry*, %struct.strbuf*, i32, %struct.pathspec*) #2

declare dso_local i32 @strbuf_setlen(%struct.strbuf*, i32) #2

declare dso_local i32 @strbuf_add(%struct.strbuf*, i32, i32) #2

declare dso_local i64 @S_ISREG(i32) #2

declare dso_local i32 @grep_oid(%struct.grep_opt*, i32*, i32*, i32, i32*) #2

declare dso_local i64 @S_ISDIR(i32) #2

declare dso_local i8* @lock_and_read_oid_file(i32*, i32*, i64*) #2

declare dso_local i32 @die(i32, i32) #2

declare dso_local i32 @_(i8*) #2

declare dso_local i32 @oid_to_hex(i32*) #2

declare dso_local i32 @strbuf_addch(%struct.strbuf*, i8 signext) #2

declare dso_local i32 @init_tree_desc(%struct.tree_desc*, i8*, i64) #2

declare dso_local i32 @free(i8*) #2

declare dso_local i64 @S_ISGITLINK(i32) #2

declare dso_local i32 @grep_submodule(%struct.grep_opt*, %struct.pathspec*, i32*, i32*, i32*, i32) #2

declare dso_local i32 @strbuf_release(%struct.strbuf*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
