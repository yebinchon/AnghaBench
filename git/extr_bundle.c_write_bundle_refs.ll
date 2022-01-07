; ModuleID = '/home/carl/AnghaBench/git/extr_bundle.c_write_bundle_refs.c'
source_filename = "/home/carl/AnghaBench/git/extr_bundle.c_write_bundle_refs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.rev_info = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, %struct.object_array_entry* }
%struct.object_array_entry = type { i8*, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, i64, i32 }
%struct.object_id = type { i32 }
%struct.commit = type { %struct.TYPE_6__ }
%struct.object = type { i32 }

@UNINTERESTING = common dso_local global i32 0, align 4
@RESOLVE_REF_READING = common dso_local global i32 0, align 4
@REF_ISSYMREF = common dso_local global i32 0, align 4
@OBJ_TAG = common dso_local global i64 0, align 8
@SHOWN = common dso_local global i32 0, align 4
@OBJ_COMMIT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [45 x i8] c"ref '%s' is excluded by the rev-list options\00", align 1
@the_hash_algo = common dso_local global %struct.TYPE_5__* null, align 8
@.str.1 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.rev_info*)* @write_bundle_refs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @write_bundle_refs(i32 %0, %struct.rev_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.rev_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.object_array_entry*, align 8
  %8 = alloca %struct.object_id, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.commit*, align 8
  %13 = alloca %struct.object*, align 8
  store i32 %0, i32* %3, align 4
  store %struct.rev_info* %1, %struct.rev_info** %4, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %5, align 4
  br label %14

14:                                               ; preds = %175, %2
  %15 = load i32, i32* %5, align 4
  %16 = load %struct.rev_info*, %struct.rev_info** %4, align 8
  %17 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp slt i32 %15, %19
  br i1 %20, label %21, label %178

21:                                               ; preds = %14
  %22 = load %struct.rev_info*, %struct.rev_info** %4, align 8
  %23 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 1
  %25 = load %struct.object_array_entry*, %struct.object_array_entry** %24, align 8
  %26 = load i32, i32* %5, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.object_array_entry, %struct.object_array_entry* %25, i64 %27
  store %struct.object_array_entry* %28, %struct.object_array_entry** %7, align 8
  %29 = load %struct.object_array_entry*, %struct.object_array_entry** %7, align 8
  %30 = getelementptr inbounds %struct.object_array_entry, %struct.object_array_entry* %29, i32 0, i32 1
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* @UNINTERESTING, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %21
  br label %175

38:                                               ; preds = %21
  %39 = load %struct.object_array_entry*, %struct.object_array_entry** %7, align 8
  %40 = getelementptr inbounds %struct.object_array_entry, %struct.object_array_entry* %39, i32 0, i32 0
  %41 = load i8*, i8** %40, align 8
  %42 = load %struct.object_array_entry*, %struct.object_array_entry** %7, align 8
  %43 = getelementptr inbounds %struct.object_array_entry, %struct.object_array_entry* %42, i32 0, i32 0
  %44 = load i8*, i8** %43, align 8
  %45 = call i32 @strlen(i8* %44)
  %46 = call i32 @dwim_ref(i8* %41, i32 %45, %struct.object_id* %8, i8** %9)
  %47 = icmp ne i32 %46, 1
  br i1 %47, label %48, label %49

48:                                               ; preds = %38
  br label %172

49:                                               ; preds = %38
  %50 = load %struct.object_array_entry*, %struct.object_array_entry** %7, align 8
  %51 = getelementptr inbounds %struct.object_array_entry, %struct.object_array_entry* %50, i32 0, i32 0
  %52 = load i8*, i8** %51, align 8
  %53 = load i32, i32* @RESOLVE_REF_READING, align 4
  %54 = call i64 @read_ref_full(i8* %52, i32 %53, %struct.object_id* %8, i32* %11)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %49
  store i32 0, i32* %11, align 4
  br label %57

57:                                               ; preds = %56, %49
  %58 = load i32, i32* %11, align 4
  %59 = load i32, i32* @REF_ISSYMREF, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %66

62:                                               ; preds = %57
  %63 = load %struct.object_array_entry*, %struct.object_array_entry** %7, align 8
  %64 = getelementptr inbounds %struct.object_array_entry, %struct.object_array_entry* %63, i32 0, i32 0
  %65 = load i8*, i8** %64, align 8
  br label %68

66:                                               ; preds = %57
  %67 = load i8*, i8** %9, align 8
  br label %68

68:                                               ; preds = %66, %62
  %69 = phi i8* [ %65, %62 ], [ %67, %66 ]
  store i8* %69, i8** %10, align 8
  %70 = load %struct.object_array_entry*, %struct.object_array_entry** %7, align 8
  %71 = getelementptr inbounds %struct.object_array_entry, %struct.object_array_entry* %70, i32 0, i32 1
  %72 = load %struct.TYPE_6__*, %struct.TYPE_6__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* @OBJ_TAG, align 8
  %76 = icmp eq i64 %74, %75
  br i1 %76, label %77, label %92

77:                                               ; preds = %68
  %78 = load %struct.object_array_entry*, %struct.object_array_entry** %7, align 8
  %79 = getelementptr inbounds %struct.object_array_entry, %struct.object_array_entry* %78, i32 0, i32 1
  %80 = load %struct.TYPE_6__*, %struct.TYPE_6__** %79, align 8
  %81 = load %struct.rev_info*, %struct.rev_info** %4, align 8
  %82 = call i32 @is_tag_in_date_range(%struct.TYPE_6__* %80, %struct.rev_info* %81)
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %92, label %84

84:                                               ; preds = %77
  %85 = load i32, i32* @UNINTERESTING, align 4
  %86 = load %struct.object_array_entry*, %struct.object_array_entry** %7, align 8
  %87 = getelementptr inbounds %struct.object_array_entry, %struct.object_array_entry* %86, i32 0, i32 1
  %88 = load %struct.TYPE_6__*, %struct.TYPE_6__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = or i32 %90, %85
  store i32 %91, i32* %89, align 8
  br label %172

92:                                               ; preds = %77, %68
  %93 = load %struct.object_array_entry*, %struct.object_array_entry** %7, align 8
  %94 = getelementptr inbounds %struct.object_array_entry, %struct.object_array_entry* %93, i32 0, i32 1
  %95 = load %struct.TYPE_6__*, %struct.TYPE_6__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = load i32, i32* @SHOWN, align 4
  %99 = and i32 %97, %98
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %115, label %101

101:                                              ; preds = %92
  %102 = load %struct.object_array_entry*, %struct.object_array_entry** %7, align 8
  %103 = getelementptr inbounds %struct.object_array_entry, %struct.object_array_entry* %102, i32 0, i32 1
  %104 = load %struct.TYPE_6__*, %struct.TYPE_6__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %104, i32 0, i32 1
  %106 = load i64, i64* %105, align 8
  %107 = load i64, i64* @OBJ_COMMIT, align 8
  %108 = icmp eq i64 %106, %107
  br i1 %108, label %109, label %115

109:                                              ; preds = %101
  %110 = call i32 @_(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  %111 = load %struct.object_array_entry*, %struct.object_array_entry** %7, align 8
  %112 = getelementptr inbounds %struct.object_array_entry, %struct.object_array_entry* %111, i32 0, i32 0
  %113 = load i8*, i8** %112, align 8
  %114 = call i32 @warning(i32 %110, i8* %113)
  br label %172

115:                                              ; preds = %101, %92
  %116 = load %struct.object_array_entry*, %struct.object_array_entry** %7, align 8
  %117 = getelementptr inbounds %struct.object_array_entry, %struct.object_array_entry* %116, i32 0, i32 1
  %118 = load %struct.TYPE_6__*, %struct.TYPE_6__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %118, i32 0, i32 2
  %120 = call i32 @oideq(%struct.object_id* %8, i32* %119)
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %150, label %122

122:                                              ; preds = %115
  %123 = load %struct.rev_info*, %struct.rev_info** %4, align 8
  %124 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = call %struct.commit* @lookup_commit_reference(i32 %125, %struct.object_id* %8)
  store %struct.commit* %126, %struct.commit** %12, align 8
  %127 = load %struct.object_array_entry*, %struct.object_array_entry** %7, align 8
  %128 = getelementptr inbounds %struct.object_array_entry, %struct.object_array_entry* %127, i32 0, i32 1
  %129 = load %struct.TYPE_6__*, %struct.TYPE_6__** %128, align 8
  %130 = load %struct.commit*, %struct.commit** %12, align 8
  %131 = getelementptr inbounds %struct.commit, %struct.commit* %130, i32 0, i32 0
  %132 = icmp eq %struct.TYPE_6__* %129, %131
  br i1 %132, label %133, label %149

133:                                              ; preds = %122
  %134 = load %struct.object_array_entry*, %struct.object_array_entry** %7, align 8
  %135 = getelementptr inbounds %struct.object_array_entry, %struct.object_array_entry* %134, i32 0, i32 0
  %136 = load i8*, i8** %135, align 8
  %137 = call %struct.object* @parse_object_or_die(%struct.object_id* %8, i8* %136)
  store %struct.object* %137, %struct.object** %13, align 8
  %138 = load i32, i32* @SHOWN, align 4
  %139 = load %struct.object*, %struct.object** %13, align 8
  %140 = getelementptr inbounds %struct.object, %struct.object* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 4
  %142 = or i32 %141, %138
  store i32 %142, i32* %140, align 4
  %143 = load %struct.rev_info*, %struct.rev_info** %4, align 8
  %144 = load %struct.object*, %struct.object** %13, align 8
  %145 = load %struct.object_array_entry*, %struct.object_array_entry** %7, align 8
  %146 = getelementptr inbounds %struct.object_array_entry, %struct.object_array_entry* %145, i32 0, i32 0
  %147 = load i8*, i8** %146, align 8
  %148 = call i32 @add_pending_object(%struct.rev_info* %143, %struct.object* %144, i8* %147)
  br label %149

149:                                              ; preds = %133, %122
  br label %172

150:                                              ; preds = %115
  %151 = load i32, i32* %6, align 4
  %152 = add nsw i32 %151, 1
  store i32 %152, i32* %6, align 4
  %153 = load i32, i32* %3, align 4
  %154 = load %struct.object_array_entry*, %struct.object_array_entry** %7, align 8
  %155 = getelementptr inbounds %struct.object_array_entry, %struct.object_array_entry* %154, i32 0, i32 1
  %156 = load %struct.TYPE_6__*, %struct.TYPE_6__** %155, align 8
  %157 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %156, i32 0, i32 2
  %158 = call i8* @oid_to_hex(i32* %157)
  %159 = load %struct.TYPE_5__*, %struct.TYPE_5__** @the_hash_algo, align 8
  %160 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 4
  %162 = call i32 @write_or_die(i32 %153, i8* %158, i32 %161)
  %163 = load i32, i32* %3, align 4
  %164 = call i32 @write_or_die(i32 %163, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i32 1)
  %165 = load i32, i32* %3, align 4
  %166 = load i8*, i8** %10, align 8
  %167 = load i8*, i8** %10, align 8
  %168 = call i32 @strlen(i8* %167)
  %169 = call i32 @write_or_die(i32 %165, i8* %166, i32 %168)
  %170 = load i32, i32* %3, align 4
  %171 = call i32 @write_or_die(i32 %170, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i32 1)
  br label %172

172:                                              ; preds = %150, %149, %109, %84, %48
  %173 = load i8*, i8** %9, align 8
  %174 = call i32 @free(i8* %173)
  br label %175

175:                                              ; preds = %172, %37
  %176 = load i32, i32* %5, align 4
  %177 = add nsw i32 %176, 1
  store i32 %177, i32* %5, align 4
  br label %14

178:                                              ; preds = %14
  %179 = load i32, i32* %3, align 4
  %180 = call i32 @write_or_die(i32 %179, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i32 1)
  %181 = load i32, i32* %6, align 4
  ret i32 %181
}

declare dso_local i32 @dwim_ref(i8*, i32, %struct.object_id*, i8**) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @read_ref_full(i8*, i32, %struct.object_id*, i32*) #1

declare dso_local i32 @is_tag_in_date_range(%struct.TYPE_6__*, %struct.rev_info*) #1

declare dso_local i32 @warning(i32, i8*) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @oideq(%struct.object_id*, i32*) #1

declare dso_local %struct.commit* @lookup_commit_reference(i32, %struct.object_id*) #1

declare dso_local %struct.object* @parse_object_or_die(%struct.object_id*, i8*) #1

declare dso_local i32 @add_pending_object(%struct.rev_info*, %struct.object*, i8*) #1

declare dso_local i32 @write_or_die(i32, i8*, i32) #1

declare dso_local i8* @oid_to_hex(i32*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
