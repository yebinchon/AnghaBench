; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_fmt-merge-msg.c_find_merge_parents.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_fmt-merge-msg.c_find_merge_parents.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.merge_parents = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32 }
%struct.strbuf = type { i32, i8* }
%struct.object_id = type { i32 }
%struct.commit_list = type { i32 }
%struct.commit = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.object = type { i32 }

@the_repository = common dso_local global i32 0, align 4
@OBJ_COMMIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.merge_parents*, %struct.strbuf*, %struct.object_id*)* @find_merge_parents to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @find_merge_parents(%struct.merge_parents* %0, %struct.strbuf* %1, %struct.object_id* %2) #0 {
  %4 = alloca %struct.merge_parents*, align 8
  %5 = alloca %struct.strbuf*, align 8
  %6 = alloca %struct.object_id*, align 8
  %7 = alloca %struct.commit_list*, align 8
  %8 = alloca %struct.commit*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca %struct.object_id, align 4
  %17 = alloca %struct.commit*, align 8
  %18 = alloca %struct.object*, align 8
  %19 = alloca %struct.commit*, align 8
  store %struct.merge_parents* %0, %struct.merge_parents** %4, align 8
  store %struct.strbuf* %1, %struct.strbuf** %5, align 8
  store %struct.object_id* %2, %struct.object_id** %6, align 8
  store i32 0, i32* %9, align 4
  store %struct.commit_list* null, %struct.commit_list** %7, align 8
  br label %20

20:                                               ; preds = %85, %84, %74, %3
  %21 = load i32, i32* %9, align 4
  %22 = load %struct.strbuf*, %struct.strbuf** %5, align 8
  %23 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp slt i32 %21, %24
  br i1 %25, label %26, label %95

26:                                               ; preds = %20
  %27 = load %struct.strbuf*, %struct.strbuf** %5, align 8
  %28 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %27, i32 0, i32 1
  %29 = load i8*, i8** %28, align 8
  %30 = load i32, i32* %9, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i8, i8* %29, i64 %31
  store i8* %32, i8** %13, align 8
  %33 = load i8*, i8** %13, align 8
  %34 = call i8* @strchr(i8* %33, i8 signext 10)
  store i8* %34, i8** %14, align 8
  %35 = load i8*, i8** %14, align 8
  %36 = icmp ne i8* %35, null
  br i1 %36, label %37, label %43

37:                                               ; preds = %26
  %38 = load i8*, i8** %14, align 8
  %39 = load i8*, i8** %13, align 8
  %40 = ptrtoint i8* %38 to i64
  %41 = ptrtoint i8* %39 to i64
  %42 = sub i64 %40, %41
  br label %47

43:                                               ; preds = %26
  %44 = load i8*, i8** %13, align 8
  %45 = call i32 @strlen(i8* %44)
  %46 = sext i32 %45 to i64
  br label %47

47:                                               ; preds = %43, %37
  %48 = phi i64 [ %42, %37 ], [ %46, %43 ]
  %49 = trunc i64 %48 to i32
  store i32 %49, i32* %12, align 4
  %50 = load i32, i32* %12, align 4
  %51 = load i8*, i8** %14, align 8
  %52 = icmp ne i8* %51, null
  %53 = xor i1 %52, true
  %54 = xor i1 %53, true
  %55 = zext i1 %54 to i32
  %56 = add nsw i32 %50, %55
  %57 = load i32, i32* %9, align 4
  %58 = add nsw i32 %57, %56
  store i32 %58, i32* %9, align 4
  %59 = load i8*, i8** %13, align 8
  %60 = call i64 @parse_oid_hex(i8* %59, %struct.object_id* %16, i8** %15)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %74, label %62

62:                                               ; preds = %47
  %63 = load i8*, i8** %15, align 8
  %64 = getelementptr inbounds i8, i8* %63, i64 0
  %65 = load i8, i8* %64, align 1
  %66 = sext i8 %65 to i32
  %67 = icmp ne i32 %66, 9
  br i1 %67, label %74, label %68

68:                                               ; preds = %62
  %69 = load i8*, i8** %15, align 8
  %70 = getelementptr inbounds i8, i8* %69, i64 1
  %71 = load i8, i8* %70, align 1
  %72 = sext i8 %71 to i32
  %73 = icmp ne i32 %72, 9
  br i1 %73, label %74, label %75

74:                                               ; preds = %68, %62, %47
  br label %20

75:                                               ; preds = %68
  %76 = load i32, i32* @the_repository, align 4
  %77 = call %struct.object* @parse_object(i32 %76, %struct.object_id* %16)
  store %struct.object* %77, %struct.object** %18, align 8
  %78 = load %struct.object*, %struct.object** %18, align 8
  %79 = load i32, i32* @OBJ_COMMIT, align 4
  %80 = call i64 @peel_to_type(i32* null, i32 0, %struct.object* %78, i32 %79)
  %81 = inttoptr i64 %80 to %struct.commit*
  store %struct.commit* %81, %struct.commit** %17, align 8
  %82 = load %struct.commit*, %struct.commit** %17, align 8
  %83 = icmp ne %struct.commit* %82, null
  br i1 %83, label %85, label %84

84:                                               ; preds = %75
  br label %20

85:                                               ; preds = %75
  %86 = load %struct.commit*, %struct.commit** %17, align 8
  %87 = call i32 @commit_list_insert(%struct.commit* %86, %struct.commit_list** %7)
  %88 = load %struct.merge_parents*, %struct.merge_parents** %4, align 8
  %89 = load %struct.object*, %struct.object** %18, align 8
  %90 = getelementptr inbounds %struct.object, %struct.object* %89, i32 0, i32 0
  %91 = load %struct.commit*, %struct.commit** %17, align 8
  %92 = getelementptr inbounds %struct.commit, %struct.commit* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %92, i32 0, i32 0
  %94 = call i32 @add_merge_parent(%struct.merge_parents* %88, i32* %90, i32* %93)
  br label %20

95:                                               ; preds = %20
  %96 = load i32, i32* @the_repository, align 4
  %97 = load %struct.object_id*, %struct.object_id** %6, align 8
  %98 = call %struct.commit* @lookup_commit(i32 %96, %struct.object_id* %97)
  store %struct.commit* %98, %struct.commit** %8, align 8
  %99 = load %struct.commit*, %struct.commit** %8, align 8
  %100 = icmp ne %struct.commit* %99, null
  br i1 %100, label %101, label %104

101:                                              ; preds = %95
  %102 = load %struct.commit*, %struct.commit** %8, align 8
  %103 = call i32 @commit_list_insert(%struct.commit* %102, %struct.commit_list** %7)
  br label %104

104:                                              ; preds = %101, %95
  %105 = call i32 @reduce_heads_replace(%struct.commit_list** %7)
  br label %106

106:                                              ; preds = %142, %104
  %107 = load %struct.commit_list*, %struct.commit_list** %7, align 8
  %108 = icmp ne %struct.commit_list* %107, null
  br i1 %108, label %109, label %143

109:                                              ; preds = %106
  %110 = call %struct.commit* @pop_commit(%struct.commit_list** %7)
  store %struct.commit* %110, %struct.commit** %19, align 8
  store i32 0, i32* %10, align 4
  br label %111

111:                                              ; preds = %139, %109
  %112 = load i32, i32* %10, align 4
  %113 = load %struct.merge_parents*, %struct.merge_parents** %4, align 8
  %114 = getelementptr inbounds %struct.merge_parents, %struct.merge_parents* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = icmp slt i32 %112, %115
  br i1 %116, label %117, label %142

117:                                              ; preds = %111
  %118 = load %struct.merge_parents*, %struct.merge_parents** %4, align 8
  %119 = getelementptr inbounds %struct.merge_parents, %struct.merge_parents* %118, i32 0, i32 1
  %120 = load %struct.TYPE_4__*, %struct.TYPE_4__** %119, align 8
  %121 = load i32, i32* %10, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %120, i64 %122
  %124 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %123, i32 0, i32 1
  %125 = load %struct.commit*, %struct.commit** %19, align 8
  %126 = getelementptr inbounds %struct.commit, %struct.commit* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %126, i32 0, i32 0
  %128 = call i64 @oideq(i32* %124, i32* %127)
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %138

130:                                              ; preds = %117
  %131 = load %struct.merge_parents*, %struct.merge_parents** %4, align 8
  %132 = getelementptr inbounds %struct.merge_parents, %struct.merge_parents* %131, i32 0, i32 1
  %133 = load %struct.TYPE_4__*, %struct.TYPE_4__** %132, align 8
  %134 = load i32, i32* %10, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %133, i64 %135
  %137 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %136, i32 0, i32 0
  store i32 1, i32* %137, align 4
  br label %138

138:                                              ; preds = %130, %117
  br label %139

139:                                              ; preds = %138
  %140 = load i32, i32* %10, align 4
  %141 = add nsw i32 %140, 1
  store i32 %141, i32* %10, align 4
  br label %111

142:                                              ; preds = %111
  br label %106

143:                                              ; preds = %106
  store i32 0, i32* %11, align 4
  store i32 0, i32* %10, align 4
  br label %144

144:                                              ; preds = %183, %143
  %145 = load i32, i32* %10, align 4
  %146 = load %struct.merge_parents*, %struct.merge_parents** %4, align 8
  %147 = getelementptr inbounds %struct.merge_parents, %struct.merge_parents* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 8
  %149 = icmp slt i32 %145, %148
  br i1 %149, label %150, label %186

150:                                              ; preds = %144
  %151 = load %struct.merge_parents*, %struct.merge_parents** %4, align 8
  %152 = getelementptr inbounds %struct.merge_parents, %struct.merge_parents* %151, i32 0, i32 1
  %153 = load %struct.TYPE_4__*, %struct.TYPE_4__** %152, align 8
  %154 = load i32, i32* %10, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %153, i64 %155
  %157 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 4
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %182

160:                                              ; preds = %150
  %161 = load i32, i32* %10, align 4
  %162 = load i32, i32* %11, align 4
  %163 = icmp ne i32 %161, %162
  br i1 %163, label %164, label %179

164:                                              ; preds = %160
  %165 = load %struct.merge_parents*, %struct.merge_parents** %4, align 8
  %166 = getelementptr inbounds %struct.merge_parents, %struct.merge_parents* %165, i32 0, i32 1
  %167 = load %struct.TYPE_4__*, %struct.TYPE_4__** %166, align 8
  %168 = load i32, i32* %11, align 4
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %167, i64 %169
  %171 = load %struct.merge_parents*, %struct.merge_parents** %4, align 8
  %172 = getelementptr inbounds %struct.merge_parents, %struct.merge_parents* %171, i32 0, i32 1
  %173 = load %struct.TYPE_4__*, %struct.TYPE_4__** %172, align 8
  %174 = load i32, i32* %10, align 4
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %173, i64 %175
  %177 = bitcast %struct.TYPE_4__* %170 to i8*
  %178 = bitcast %struct.TYPE_4__* %176 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %177, i8* align 4 %178, i64 8, i1 false)
  br label %179

179:                                              ; preds = %164, %160
  %180 = load i32, i32* %11, align 4
  %181 = add nsw i32 %180, 1
  store i32 %181, i32* %11, align 4
  br label %182

182:                                              ; preds = %179, %150
  br label %183

183:                                              ; preds = %182
  %184 = load i32, i32* %10, align 4
  %185 = add nsw i32 %184, 1
  store i32 %185, i32* %10, align 4
  br label %144

186:                                              ; preds = %144
  %187 = load i32, i32* %11, align 4
  %188 = load %struct.merge_parents*, %struct.merge_parents** %4, align 8
  %189 = getelementptr inbounds %struct.merge_parents, %struct.merge_parents* %188, i32 0, i32 0
  store i32 %187, i32* %189, align 8
  ret void
}

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @parse_oid_hex(i8*, %struct.object_id*, i8**) #1

declare dso_local %struct.object* @parse_object(i32, %struct.object_id*) #1

declare dso_local i64 @peel_to_type(i32*, i32, %struct.object*, i32) #1

declare dso_local i32 @commit_list_insert(%struct.commit*, %struct.commit_list**) #1

declare dso_local i32 @add_merge_parent(%struct.merge_parents*, i32*, i32*) #1

declare dso_local %struct.commit* @lookup_commit(i32, %struct.object_id*) #1

declare dso_local i32 @reduce_heads_replace(%struct.commit_list**) #1

declare dso_local %struct.commit* @pop_commit(%struct.commit_list**) #1

declare dso_local i64 @oideq(i32*, i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
