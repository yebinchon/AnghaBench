; ModuleID = '/home/carl/AnghaBench/git/extr_commit.c_parse_commit_buffer.c'
source_filename = "/home/carl/AnghaBench/git/extr_commit.c_parse_commit_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.repository = type { i32 }
%struct.commit = type { i32, %struct.TYPE_4__, %struct.commit_list* }
%struct.TYPE_4__ = type { i32, i32 }
%struct.commit_list = type { i32 }
%struct.object_id = type { i32 }
%struct.commit_graft = type { i64, %struct.object_id* }
%struct.TYPE_6__ = type { %struct.commit_list* }

@the_hash_algo = common dso_local global %struct.TYPE_5__* null, align 8
@.str = private unnamed_addr constant [6 x i8] c"tree \00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"bogus commit object %s\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"bad tree pointer in commit %s\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"parent \00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"bad parents in commit %s\00", align 1
@grafts_replace_parents = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @parse_commit_buffer(%struct.repository* %0, %struct.commit* %1, i8* %2, i64 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.repository*, align 8
  %8 = alloca %struct.commit*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca %struct.object_id, align 4
  %15 = alloca %struct.commit_list**, align 8
  %16 = alloca %struct.commit_graft*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.commit*, align 8
  %20 = alloca i32, align 4
  %21 = alloca %struct.commit*, align 8
  store %struct.repository* %0, %struct.repository** %7, align 8
  store %struct.commit* %1, %struct.commit** %8, align 8
  store i8* %2, i8** %9, align 8
  store i64 %3, i64* %10, align 8
  store i32 %4, i32* %11, align 4
  %22 = load i8*, i8** %9, align 8
  store i8* %22, i8** %12, align 8
  %23 = load i8*, i8** %9, align 8
  store i8* %23, i8** %13, align 8
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** @the_hash_algo, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = add nsw i32 %26, 5
  store i32 %27, i32* %17, align 4
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** @the_hash_algo, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = add nsw i32 %30, 7
  store i32 %31, i32* %18, align 4
  %32 = load %struct.commit*, %struct.commit** %8, align 8
  %33 = getelementptr inbounds %struct.commit, %struct.commit* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %5
  store i32 0, i32* %6, align 4
  br label %212

38:                                               ; preds = %5
  %39 = load %struct.commit*, %struct.commit** %8, align 8
  %40 = getelementptr inbounds %struct.commit, %struct.commit* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  store i32 1, i32* %41, align 4
  %42 = load i64, i64* %10, align 8
  %43 = load i8*, i8** %12, align 8
  %44 = getelementptr inbounds i8, i8* %43, i64 %42
  store i8* %44, i8** %12, align 8
  %45 = load i8*, i8** %12, align 8
  %46 = load i8*, i8** %13, align 8
  %47 = load i32, i32* %17, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i8, i8* %46, i64 %48
  %50 = getelementptr inbounds i8, i8* %49, i64 1
  %51 = icmp ule i8* %45, %50
  br i1 %51, label %64, label %52

52:                                               ; preds = %38
  %53 = load i8*, i8** %13, align 8
  %54 = call i64 @memcmp(i8* %53, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 5)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %64, label %56

56:                                               ; preds = %52
  %57 = load i8*, i8** %13, align 8
  %58 = load i32, i32* %17, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i8, i8* %57, i64 %59
  %61 = load i8, i8* %60, align 1
  %62 = sext i8 %61 to i32
  %63 = icmp ne i32 %62, 10
  br i1 %63, label %64, label %70

64:                                               ; preds = %56, %52, %38
  %65 = load %struct.commit*, %struct.commit** %8, align 8
  %66 = getelementptr inbounds %struct.commit, %struct.commit* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 1
  %68 = call i32 @oid_to_hex(i32* %67)
  %69 = call i32 @error(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %68)
  store i32 %69, i32* %6, align 4
  br label %212

70:                                               ; preds = %56
  %71 = load i8*, i8** %13, align 8
  %72 = getelementptr inbounds i8, i8* %71, i64 5
  %73 = call i64 @get_oid_hex(i8* %72, %struct.object_id* %14)
  %74 = icmp slt i64 %73, 0
  br i1 %74, label %75, label %81

75:                                               ; preds = %70
  %76 = load %struct.commit*, %struct.commit** %8, align 8
  %77 = getelementptr inbounds %struct.commit, %struct.commit* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 1
  %79 = call i32 @oid_to_hex(i32* %78)
  %80 = call i32 @error(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i32 %79)
  store i32 %80, i32* %6, align 4
  br label %212

81:                                               ; preds = %70
  %82 = load %struct.commit*, %struct.commit** %8, align 8
  %83 = load %struct.repository*, %struct.repository** %7, align 8
  %84 = call i32 @lookup_tree(%struct.repository* %83, %struct.object_id* %14)
  %85 = call i32 @set_commit_tree(%struct.commit* %82, i32 %84)
  %86 = load i32, i32* %17, align 4
  %87 = add nsw i32 %86, 1
  %88 = load i8*, i8** %13, align 8
  %89 = sext i32 %87 to i64
  %90 = getelementptr inbounds i8, i8* %88, i64 %89
  store i8* %90, i8** %13, align 8
  %91 = load %struct.commit*, %struct.commit** %8, align 8
  %92 = getelementptr inbounds %struct.commit, %struct.commit* %91, i32 0, i32 2
  store %struct.commit_list** %92, %struct.commit_list*** %15, align 8
  %93 = load %struct.repository*, %struct.repository** %7, align 8
  %94 = load %struct.commit*, %struct.commit** %8, align 8
  %95 = getelementptr inbounds %struct.commit, %struct.commit* %94, i32 0, i32 1
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 1
  %97 = call %struct.commit_graft* @lookup_commit_graft(%struct.repository* %93, i32* %96)
  store %struct.commit_graft* %97, %struct.commit_graft** %16, align 8
  br label %98

98:                                               ; preds = %166, %155, %81
  %99 = load i8*, i8** %13, align 8
  %100 = load i32, i32* %18, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i8, i8* %99, i64 %101
  %103 = load i8*, i8** %12, align 8
  %104 = icmp ult i8* %102, %103
  br i1 %104, label %105, label %110

105:                                              ; preds = %98
  %106 = load i8*, i8** %13, align 8
  %107 = call i64 @memcmp(i8* %106, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i32 7)
  %108 = icmp ne i64 %107, 0
  %109 = xor i1 %108, true
  br label %110

110:                                              ; preds = %105, %98
  %111 = phi i1 [ false, %98 ], [ %109, %105 ]
  br i1 %111, label %112, label %167

112:                                              ; preds = %110
  %113 = load i8*, i8** %12, align 8
  %114 = load i8*, i8** %13, align 8
  %115 = load i32, i32* %18, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds i8, i8* %114, i64 %116
  %118 = getelementptr inbounds i8, i8* %117, i64 1
  %119 = icmp ule i8* %113, %118
  br i1 %119, label %133, label %120

120:                                              ; preds = %112
  %121 = load i8*, i8** %13, align 8
  %122 = getelementptr inbounds i8, i8* %121, i64 7
  %123 = call i64 @get_oid_hex(i8* %122, %struct.object_id* %14)
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %133, label %125

125:                                              ; preds = %120
  %126 = load i8*, i8** %13, align 8
  %127 = load i32, i32* %18, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds i8, i8* %126, i64 %128
  %130 = load i8, i8* %129, align 1
  %131 = sext i8 %130 to i32
  %132 = icmp ne i32 %131, 10
  br i1 %132, label %133, label %139

133:                                              ; preds = %125, %120, %112
  %134 = load %struct.commit*, %struct.commit** %8, align 8
  %135 = getelementptr inbounds %struct.commit, %struct.commit* %134, i32 0, i32 1
  %136 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %135, i32 0, i32 1
  %137 = call i32 @oid_to_hex(i32* %136)
  %138 = call i32 @error(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0), i32 %137)
  store i32 %138, i32* %6, align 4
  br label %212

139:                                              ; preds = %125
  %140 = load i32, i32* %18, align 4
  %141 = add nsw i32 %140, 1
  %142 = load i8*, i8** %13, align 8
  %143 = sext i32 %141 to i64
  %144 = getelementptr inbounds i8, i8* %142, i64 %143
  store i8* %144, i8** %13, align 8
  %145 = load %struct.commit_graft*, %struct.commit_graft** %16, align 8
  %146 = icmp ne %struct.commit_graft* %145, null
  br i1 %146, label %147, label %156

147:                                              ; preds = %139
  %148 = load %struct.commit_graft*, %struct.commit_graft** %16, align 8
  %149 = getelementptr inbounds %struct.commit_graft, %struct.commit_graft* %148, i32 0, i32 0
  %150 = load i64, i64* %149, align 8
  %151 = icmp slt i64 %150, 0
  br i1 %151, label %155, label %152

152:                                              ; preds = %147
  %153 = load i64, i64* @grafts_replace_parents, align 8
  %154 = icmp ne i64 %153, 0
  br i1 %154, label %155, label %156

155:                                              ; preds = %152, %147
  br label %98

156:                                              ; preds = %152, %139
  %157 = load %struct.repository*, %struct.repository** %7, align 8
  %158 = call %struct.commit* @lookup_commit(%struct.repository* %157, %struct.object_id* %14)
  store %struct.commit* %158, %struct.commit** %19, align 8
  %159 = load %struct.commit*, %struct.commit** %19, align 8
  %160 = icmp ne %struct.commit* %159, null
  br i1 %160, label %161, label %166

161:                                              ; preds = %156
  %162 = load %struct.commit*, %struct.commit** %19, align 8
  %163 = load %struct.commit_list**, %struct.commit_list*** %15, align 8
  %164 = call %struct.TYPE_6__* @commit_list_insert(%struct.commit* %162, %struct.commit_list** %163)
  %165 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %164, i32 0, i32 0
  store %struct.commit_list** %165, %struct.commit_list*** %15, align 8
  br label %166

166:                                              ; preds = %161, %156
  br label %98

167:                                              ; preds = %110
  %168 = load %struct.commit_graft*, %struct.commit_graft** %16, align 8
  %169 = icmp ne %struct.commit_graft* %168, null
  br i1 %169, label %170, label %199

170:                                              ; preds = %167
  store i32 0, i32* %20, align 4
  br label %171

171:                                              ; preds = %195, %170
  %172 = load i32, i32* %20, align 4
  %173 = sext i32 %172 to i64
  %174 = load %struct.commit_graft*, %struct.commit_graft** %16, align 8
  %175 = getelementptr inbounds %struct.commit_graft, %struct.commit_graft* %174, i32 0, i32 0
  %176 = load i64, i64* %175, align 8
  %177 = icmp slt i64 %173, %176
  br i1 %177, label %178, label %198

178:                                              ; preds = %171
  %179 = load %struct.repository*, %struct.repository** %7, align 8
  %180 = load %struct.commit_graft*, %struct.commit_graft** %16, align 8
  %181 = getelementptr inbounds %struct.commit_graft, %struct.commit_graft* %180, i32 0, i32 1
  %182 = load %struct.object_id*, %struct.object_id** %181, align 8
  %183 = load i32, i32* %20, align 4
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds %struct.object_id, %struct.object_id* %182, i64 %184
  %186 = call %struct.commit* @lookup_commit(%struct.repository* %179, %struct.object_id* %185)
  store %struct.commit* %186, %struct.commit** %21, align 8
  %187 = load %struct.commit*, %struct.commit** %21, align 8
  %188 = icmp ne %struct.commit* %187, null
  br i1 %188, label %190, label %189

189:                                              ; preds = %178
  br label %195

190:                                              ; preds = %178
  %191 = load %struct.commit*, %struct.commit** %21, align 8
  %192 = load %struct.commit_list**, %struct.commit_list*** %15, align 8
  %193 = call %struct.TYPE_6__* @commit_list_insert(%struct.commit* %191, %struct.commit_list** %192)
  %194 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %193, i32 0, i32 0
  store %struct.commit_list** %194, %struct.commit_list*** %15, align 8
  br label %195

195:                                              ; preds = %190, %189
  %196 = load i32, i32* %20, align 4
  %197 = add nsw i32 %196, 1
  store i32 %197, i32* %20, align 4
  br label %171

198:                                              ; preds = %171
  br label %199

199:                                              ; preds = %198, %167
  %200 = load i8*, i8** %13, align 8
  %201 = load i8*, i8** %12, align 8
  %202 = call i32 @parse_commit_date(i8* %200, i8* %201)
  %203 = load %struct.commit*, %struct.commit** %8, align 8
  %204 = getelementptr inbounds %struct.commit, %struct.commit* %203, i32 0, i32 0
  store i32 %202, i32* %204, align 8
  %205 = load i32, i32* %11, align 4
  %206 = icmp ne i32 %205, 0
  br i1 %206, label %207, label %211

207:                                              ; preds = %199
  %208 = load %struct.repository*, %struct.repository** %7, align 8
  %209 = load %struct.commit*, %struct.commit** %8, align 8
  %210 = call i32 @load_commit_graph_info(%struct.repository* %208, %struct.commit* %209)
  br label %211

211:                                              ; preds = %207, %199
  store i32 0, i32* %6, align 4
  br label %212

212:                                              ; preds = %211, %133, %75, %64, %37
  %213 = load i32, i32* %6, align 4
  ret i32 %213
}

declare dso_local i64 @memcmp(i8*, i8*, i32) #1

declare dso_local i32 @error(i8*, i32) #1

declare dso_local i32 @oid_to_hex(i32*) #1

declare dso_local i64 @get_oid_hex(i8*, %struct.object_id*) #1

declare dso_local i32 @set_commit_tree(%struct.commit*, i32) #1

declare dso_local i32 @lookup_tree(%struct.repository*, %struct.object_id*) #1

declare dso_local %struct.commit_graft* @lookup_commit_graft(%struct.repository*, i32*) #1

declare dso_local %struct.commit* @lookup_commit(%struct.repository*, %struct.object_id*) #1

declare dso_local %struct.TYPE_6__* @commit_list_insert(%struct.commit*, %struct.commit_list**) #1

declare dso_local i32 @parse_commit_date(i8*, i8*) #1

declare dso_local i32 @load_commit_graph_info(%struct.repository*, %struct.commit*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
