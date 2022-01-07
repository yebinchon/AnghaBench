; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_fmt-merge-msg.c_handle_line.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_fmt-merge-msg.c_handle_line.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.merge_parents = type { i32 }
%struct.origin_data = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.src_data = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.string_list_item = type { %struct.src_data* }
%struct.object_id = type { i32 }

@the_hash_algo = common dso_local global %struct.TYPE_2__* null, align 8
@.str = private unnamed_addr constant [14 x i8] c"not-for-merge\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c" of \00", align 1
@srcs = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [8 x i8] c"branch \00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"tag \00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"remote-tracking branch \00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"%s of %s\00", align 1
@origins = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.merge_parents*)* @handle_line to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @handle_line(i8* %0, %struct.merge_parents* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.merge_parents*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.origin_data*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.src_data*, align 8
  %12 = alloca %struct.string_list_item*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.object_id, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store %struct.merge_parents* %1, %struct.merge_parents** %5, align 8
  %17 = load i8*, i8** %4, align 8
  %18 = call i32 @strlen(i8* %17)
  store i32 %18, i32* %7, align 4
  store i32 0, i32* %13, align 4
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** @the_hash_algo, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %15, align 4
  %22 = load i32, i32* %7, align 4
  %23 = load i32, i32* %15, align 4
  %24 = add i32 %23, 3
  %25 = icmp ult i32 %22, %24
  br i1 %25, label %34, label %26

26:                                               ; preds = %2
  %27 = load i8*, i8** %4, align 8
  %28 = load i32, i32* %15, align 4
  %29 = zext i32 %28 to i64
  %30 = getelementptr inbounds i8, i8* %27, i64 %29
  %31 = load i8, i8* %30, align 1
  %32 = sext i8 %31 to i32
  %33 = icmp ne i32 %32, 9
  br i1 %33, label %34, label %35

34:                                               ; preds = %26, %2
  store i32 1, i32* %3, align 4
  br label %237

35:                                               ; preds = %26
  %36 = load i8*, i8** %4, align 8
  %37 = load i32, i32* %15, align 4
  %38 = zext i32 %37 to i64
  %39 = getelementptr inbounds i8, i8* %36, i64 %38
  %40 = getelementptr inbounds i8, i8* %39, i64 1
  %41 = call i64 @starts_with(i8* %40, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %35
  store i32 0, i32* %3, align 4
  br label %237

44:                                               ; preds = %35
  %45 = load i8*, i8** %4, align 8
  %46 = load i32, i32* %15, align 4
  %47 = add i32 %46, 1
  %48 = zext i32 %47 to i64
  %49 = getelementptr inbounds i8, i8* %45, i64 %48
  %50 = load i8, i8* %49, align 1
  %51 = sext i8 %50 to i32
  %52 = icmp ne i32 %51, 9
  br i1 %52, label %53, label %54

53:                                               ; preds = %44
  store i32 2, i32* %3, align 4
  br label %237

54:                                               ; preds = %44
  %55 = load i8*, i8** %4, align 8
  %56 = call i32 @get_oid_hex(i8* %55, %struct.object_id* %14)
  store i32 %56, i32* %6, align 4
  %57 = load i32, i32* %6, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %54
  store i32 3, i32* %3, align 4
  br label %237

60:                                               ; preds = %54
  %61 = load %struct.merge_parents*, %struct.merge_parents** %5, align 8
  %62 = call i32 @find_merge_parent(%struct.merge_parents* %61, %struct.object_id* %14, i32* null)
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %65, label %64

64:                                               ; preds = %60
  store i32 0, i32* %3, align 4
  br label %237

65:                                               ; preds = %60
  %66 = call i8* @xcalloc(i32 1, i32 28)
  %67 = bitcast i8* %66 to %struct.origin_data*
  store %struct.origin_data* %67, %struct.origin_data** %8, align 8
  %68 = load %struct.origin_data*, %struct.origin_data** %8, align 8
  %69 = getelementptr inbounds %struct.origin_data, %struct.origin_data* %68, i32 0, i32 6
  %70 = call i32 @oidcpy(i32* %69, %struct.object_id* %14)
  %71 = load i8*, i8** %4, align 8
  %72 = load i32, i32* %7, align 4
  %73 = sub nsw i32 %72, 1
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i8, i8* %71, i64 %74
  %76 = load i8, i8* %75, align 1
  %77 = sext i8 %76 to i32
  %78 = icmp eq i32 %77, 10
  br i1 %78, label %79, label %85

79:                                               ; preds = %65
  %80 = load i8*, i8** %4, align 8
  %81 = load i32, i32* %7, align 4
  %82 = sub nsw i32 %81, 1
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i8, i8* %80, i64 %83
  store i8 0, i8* %84, align 1
  br label %85

85:                                               ; preds = %79, %65
  %86 = load i32, i32* %15, align 4
  %87 = add i32 %86, 2
  %88 = load i8*, i8** %4, align 8
  %89 = zext i32 %87 to i64
  %90 = getelementptr inbounds i8, i8* %88, i64 %89
  store i8* %90, i8** %4, align 8
  %91 = load i8*, i8** %4, align 8
  %92 = call i8* @strstr(i8* %91, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  store i8* %92, i8** %9, align 8
  %93 = load i8*, i8** %9, align 8
  %94 = icmp ne i8* %93, null
  br i1 %94, label %95, label %99

95:                                               ; preds = %85
  %96 = load i8*, i8** %9, align 8
  store i8 0, i8* %96, align 1
  %97 = load i8*, i8** %9, align 8
  %98 = getelementptr inbounds i8, i8* %97, i64 4
  store i8* %98, i8** %9, align 8
  store i32 0, i32* %13, align 4
  br label %101

99:                                               ; preds = %85
  %100 = load i8*, i8** %4, align 8
  store i8* %100, i8** %9, align 8
  store i32 1, i32* %13, align 4
  br label %101

101:                                              ; preds = %99, %95
  %102 = load i8*, i8** %9, align 8
  %103 = call %struct.string_list_item* @unsorted_string_list_lookup(i32* @srcs, i8* %102)
  store %struct.string_list_item* %103, %struct.string_list_item** %12, align 8
  %104 = load %struct.string_list_item*, %struct.string_list_item** %12, align 8
  %105 = icmp ne %struct.string_list_item* %104, null
  br i1 %105, label %117, label %106

106:                                              ; preds = %101
  %107 = load i8*, i8** %9, align 8
  %108 = call %struct.string_list_item* @string_list_append(i32* @srcs, i8* %107)
  store %struct.string_list_item* %108, %struct.string_list_item** %12, align 8
  %109 = call i8* @xcalloc(i32 1, i32 28)
  %110 = bitcast i8* %109 to %struct.src_data*
  %111 = load %struct.string_list_item*, %struct.string_list_item** %12, align 8
  %112 = getelementptr inbounds %struct.string_list_item, %struct.string_list_item* %111, i32 0, i32 0
  store %struct.src_data* %110, %struct.src_data** %112, align 8
  %113 = load %struct.string_list_item*, %struct.string_list_item** %12, align 8
  %114 = getelementptr inbounds %struct.string_list_item, %struct.string_list_item* %113, i32 0, i32 0
  %115 = load %struct.src_data*, %struct.src_data** %114, align 8
  %116 = call i32 @init_src_data(%struct.src_data* %115)
  br label %117

117:                                              ; preds = %106, %101
  %118 = load %struct.string_list_item*, %struct.string_list_item** %12, align 8
  %119 = getelementptr inbounds %struct.string_list_item, %struct.string_list_item* %118, i32 0, i32 0
  %120 = load %struct.src_data*, %struct.src_data** %119, align 8
  store %struct.src_data* %120, %struct.src_data** %11, align 8
  %121 = load i32, i32* %13, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %129

123:                                              ; preds = %117
  %124 = load i8*, i8** %9, align 8
  store i8* %124, i8** %10, align 8
  %125 = load %struct.src_data*, %struct.src_data** %11, align 8
  %126 = getelementptr inbounds %struct.src_data, %struct.src_data* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = or i32 %127, 1
  store i32 %128, i32* %126, align 4
  br label %187

129:                                              ; preds = %117
  %130 = load i8*, i8** %4, align 8
  %131 = call i64 @starts_with(i8* %130, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %146

133:                                              ; preds = %129
  %134 = load %struct.origin_data*, %struct.origin_data** %8, align 8
  %135 = getelementptr inbounds %struct.origin_data, %struct.origin_data* %134, i32 0, i32 1
  store i32 1, i32* %135, align 4
  %136 = load i8*, i8** %4, align 8
  %137 = getelementptr inbounds i8, i8* %136, i64 7
  store i8* %137, i8** %10, align 8
  %138 = load %struct.src_data*, %struct.src_data** %11, align 8
  %139 = getelementptr inbounds %struct.src_data, %struct.src_data* %138, i32 0, i32 5
  %140 = load i8*, i8** %10, align 8
  %141 = call %struct.string_list_item* @string_list_append(i32* %139, i8* %140)
  %142 = load %struct.src_data*, %struct.src_data** %11, align 8
  %143 = getelementptr inbounds %struct.src_data, %struct.src_data* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 4
  %145 = or i32 %144, 2
  store i32 %145, i32* %143, align 4
  br label %186

146:                                              ; preds = %129
  %147 = load i8*, i8** %4, align 8
  %148 = call i64 @starts_with(i8* %147, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  %149 = icmp ne i64 %148, 0
  br i1 %149, label %150, label %161

150:                                              ; preds = %146
  %151 = load i8*, i8** %4, align 8
  store i8* %151, i8** %10, align 8
  %152 = load %struct.src_data*, %struct.src_data** %11, align 8
  %153 = getelementptr inbounds %struct.src_data, %struct.src_data* %152, i32 0, i32 4
  %154 = load i8*, i8** %10, align 8
  %155 = getelementptr inbounds i8, i8* %154, i64 4
  %156 = call %struct.string_list_item* @string_list_append(i32* %153, i8* %155)
  %157 = load %struct.src_data*, %struct.src_data** %11, align 8
  %158 = getelementptr inbounds %struct.src_data, %struct.src_data* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 4
  %160 = or i32 %159, 2
  store i32 %160, i32* %158, align 4
  br label %185

161:                                              ; preds = %146
  %162 = load i8*, i8** %4, align 8
  %163 = call i64 @skip_prefix(i8* %162, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i8** %10)
  %164 = icmp ne i64 %163, 0
  br i1 %164, label %165, label %174

165:                                              ; preds = %161
  %166 = load %struct.src_data*, %struct.src_data** %11, align 8
  %167 = getelementptr inbounds %struct.src_data, %struct.src_data* %166, i32 0, i32 3
  %168 = load i8*, i8** %10, align 8
  %169 = call %struct.string_list_item* @string_list_append(i32* %167, i8* %168)
  %170 = load %struct.src_data*, %struct.src_data** %11, align 8
  %171 = getelementptr inbounds %struct.src_data, %struct.src_data* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 4
  %173 = or i32 %172, 2
  store i32 %173, i32* %171, align 4
  br label %184

174:                                              ; preds = %161
  %175 = load i8*, i8** %9, align 8
  store i8* %175, i8** %10, align 8
  %176 = load %struct.src_data*, %struct.src_data** %11, align 8
  %177 = getelementptr inbounds %struct.src_data, %struct.src_data* %176, i32 0, i32 2
  %178 = load i8*, i8** %4, align 8
  %179 = call %struct.string_list_item* @string_list_append(i32* %177, i8* %178)
  %180 = load %struct.src_data*, %struct.src_data** %11, align 8
  %181 = getelementptr inbounds %struct.src_data, %struct.src_data* %180, i32 0, i32 0
  %182 = load i32, i32* %181, align 4
  %183 = or i32 %182, 2
  store i32 %183, i32* %181, align 4
  br label %184

184:                                              ; preds = %174, %165
  br label %185

185:                                              ; preds = %184, %150
  br label %186

186:                                              ; preds = %185, %133
  br label %187

187:                                              ; preds = %186, %123
  %188 = load i8*, i8** %9, align 8
  %189 = call i64 @strcmp(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0), i8* %188)
  %190 = icmp ne i64 %189, 0
  br i1 %190, label %191, label %196

191:                                              ; preds = %187
  %192 = load i8*, i8** %9, align 8
  %193 = load i8*, i8** %10, align 8
  %194 = call i64 @strcmp(i8* %192, i8* %193)
  %195 = icmp ne i64 %194, 0
  br i1 %195, label %220, label %196

196:                                              ; preds = %191, %187
  %197 = load i8*, i8** %10, align 8
  %198 = call i32 @strlen(i8* %197)
  store i32 %198, i32* %16, align 4
  %199 = load i8*, i8** %10, align 8
  %200 = getelementptr inbounds i8, i8* %199, i64 0
  %201 = load i8, i8* %200, align 1
  %202 = sext i8 %201 to i32
  %203 = icmp eq i32 %202, 39
  br i1 %203, label %204, label %219

204:                                              ; preds = %196
  %205 = load i8*, i8** %10, align 8
  %206 = load i32, i32* %16, align 4
  %207 = sub nsw i32 %206, 1
  %208 = sext i32 %207 to i64
  %209 = getelementptr inbounds i8, i8* %205, i64 %208
  %210 = load i8, i8* %209, align 1
  %211 = sext i8 %210 to i32
  %212 = icmp eq i32 %211, 39
  br i1 %212, label %213, label %219

213:                                              ; preds = %204
  %214 = load i8*, i8** %10, align 8
  %215 = getelementptr inbounds i8, i8* %214, i64 1
  %216 = load i32, i32* %16, align 4
  %217 = sub nsw i32 %216, 2
  %218 = call i8* @xmemdupz(i8* %215, i32 %217)
  store i8* %218, i8** %10, align 8
  br label %219

219:                                              ; preds = %213, %204, %196
  br label %224

220:                                              ; preds = %191
  %221 = load i8*, i8** %10, align 8
  %222 = load i8*, i8** %9, align 8
  %223 = call i8* @xstrfmt(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0), i8* %221, i8* %222)
  store i8* %223, i8** %10, align 8
  br label %224

224:                                              ; preds = %220, %219
  %225 = load i8*, i8** %9, align 8
  %226 = call i64 @strcmp(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0), i8* %225)
  %227 = icmp ne i64 %226, 0
  br i1 %227, label %228, label %231

228:                                              ; preds = %224
  %229 = load %struct.origin_data*, %struct.origin_data** %8, align 8
  %230 = getelementptr inbounds %struct.origin_data, %struct.origin_data* %229, i32 0, i32 1
  store i32 0, i32* %230, align 4
  br label %231

231:                                              ; preds = %228, %224
  %232 = load %struct.origin_data*, %struct.origin_data** %8, align 8
  %233 = bitcast %struct.origin_data* %232 to %struct.src_data*
  %234 = load i8*, i8** %10, align 8
  %235 = call %struct.string_list_item* @string_list_append(i32* @origins, i8* %234)
  %236 = getelementptr inbounds %struct.string_list_item, %struct.string_list_item* %235, i32 0, i32 0
  store %struct.src_data* %233, %struct.src_data** %236, align 8
  store i32 0, i32* %3, align 4
  br label %237

237:                                              ; preds = %231, %64, %59, %53, %43, %34
  %238 = load i32, i32* %3, align 4
  ret i32 %238
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @starts_with(i8*, i8*) #1

declare dso_local i32 @get_oid_hex(i8*, %struct.object_id*) #1

declare dso_local i32 @find_merge_parent(%struct.merge_parents*, %struct.object_id*, i32*) #1

declare dso_local i8* @xcalloc(i32, i32) #1

declare dso_local i32 @oidcpy(i32*, %struct.object_id*) #1

declare dso_local i8* @strstr(i8*, i8*) #1

declare dso_local %struct.string_list_item* @unsorted_string_list_lookup(i32*, i8*) #1

declare dso_local %struct.string_list_item* @string_list_append(i32*, i8*) #1

declare dso_local i32 @init_src_data(%struct.src_data*) #1

declare dso_local i64 @skip_prefix(i8*, i8*, i8**) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i8* @xmemdupz(i8*, i32) #1

declare dso_local i8* @xstrfmt(i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
