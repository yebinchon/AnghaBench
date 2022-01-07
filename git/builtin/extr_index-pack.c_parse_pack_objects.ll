; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_index-pack.c_parse_pack_objects.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_index-pack.c_parse_pack_objects.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ofs_delta_entry = type { i32, i32 }
%struct.object_entry = type { i64, i64, %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32, i32 (i8*, i32*)* }
%struct.object_id = type { i32 }
%struct.stat = type { i64, i32 }

@ofs_deltas = common dso_local global %struct.ofs_delta_entry* null, align 8
@verbose = common dso_local global i64 0, align 8
@from_stdin = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [18 x i8] c"Receiving objects\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"Indexing objects\00", align 1
@nr_objects = common dso_local global i32 0, align 4
@progress = common dso_local global i32 0, align 4
@objects = common dso_local global %struct.object_entry* null, align 8
@OBJ_OFS_DELTA = common dso_local global i64 0, align 8
@nr_ofs_deltas = common dso_local global i32 0, align 4
@OBJ_REF_DELTA = common dso_local global i64 0, align 8
@ref_deltas = common dso_local global %struct.TYPE_7__* null, align 8
@nr_ref_deltas = common dso_local global i32 0, align 4
@ref_deltas_alloc = common dso_local global i32 0, align 4
@OBJ_BAD = common dso_local global i64 0, align 8
@consumed_bytes = common dso_local global i32 0, align 4
@the_hash_algo = common dso_local global %struct.TYPE_6__* null, align 8
@input_ctx = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [34 x i8] c"pack is corrupted (SHA1 mismatch)\00", align 1
@input_fd = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [22 x i8] c"cannot fstat packfile\00", align 1
@SEEK_CUR = common dso_local global i32 0, align 4
@input_len = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [25 x i8] c"pack has junk at the end\00", align 1
@.str.5 = private unnamed_addr constant [50 x i8] c"confusion beyond insanity in parse_pack_objects()\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @parse_pack_objects to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @parse_pack_objects(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.ofs_delta_entry*, align 8
  %6 = alloca %struct.object_id, align 4
  %7 = alloca %struct.stat, align 8
  %8 = alloca %struct.object_entry*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.object_entry*, align 8
  store i8* %0, i8** %2, align 8
  store i32 0, i32* %4, align 4
  %11 = load %struct.ofs_delta_entry*, %struct.ofs_delta_entry** @ofs_deltas, align 8
  store %struct.ofs_delta_entry* %11, %struct.ofs_delta_entry** %5, align 8
  %12 = load i64, i64* @verbose, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %25

14:                                               ; preds = %1
  %15 = load i64, i64* @from_stdin, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %14
  %18 = call i32 @_(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  br label %21

19:                                               ; preds = %14
  %20 = call i32 @_(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  br label %21

21:                                               ; preds = %19, %17
  %22 = phi i32 [ %18, %17 ], [ %20, %19 ]
  %23 = load i32, i32* @nr_objects, align 4
  %24 = call i32 @start_progress(i32 %22, i32 %23)
  store i32 %24, i32* @progress, align 4
  br label %25

25:                                               ; preds = %21, %1
  store i32 0, i32* %3, align 4
  br label %26

26:                                               ; preds = %116, %25
  %27 = load i32, i32* %3, align 4
  %28 = load i32, i32* @nr_objects, align 4
  %29 = icmp slt i32 %27, %28
  br i1 %29, label %30, label %119

30:                                               ; preds = %26
  %31 = load %struct.object_entry*, %struct.object_entry** @objects, align 8
  %32 = load i32, i32* %3, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.object_entry, %struct.object_entry* %31, i64 %33
  store %struct.object_entry* %34, %struct.object_entry** %8, align 8
  %35 = load %struct.object_entry*, %struct.object_entry** %8, align 8
  %36 = load %struct.ofs_delta_entry*, %struct.ofs_delta_entry** %5, align 8
  %37 = getelementptr inbounds %struct.ofs_delta_entry, %struct.ofs_delta_entry* %36, i32 0, i32 1
  %38 = load %struct.object_entry*, %struct.object_entry** %8, align 8
  %39 = getelementptr inbounds %struct.object_entry, %struct.object_entry* %38, i32 0, i32 2
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 0
  %41 = call i8* @unpack_raw_entry(%struct.object_entry* %35, i32* %37, %struct.object_id* %6, i32* %40)
  store i8* %41, i8** %9, align 8
  %42 = load %struct.object_entry*, %struct.object_entry** %8, align 8
  %43 = getelementptr inbounds %struct.object_entry, %struct.object_entry* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = load %struct.object_entry*, %struct.object_entry** %8, align 8
  %46 = getelementptr inbounds %struct.object_entry, %struct.object_entry* %45, i32 0, i32 0
  store i64 %44, i64* %46, align 8
  %47 = load %struct.object_entry*, %struct.object_entry** %8, align 8
  %48 = getelementptr inbounds %struct.object_entry, %struct.object_entry* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @OBJ_OFS_DELTA, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %60

52:                                               ; preds = %30
  %53 = load i32, i32* @nr_ofs_deltas, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* @nr_ofs_deltas, align 4
  %55 = load i32, i32* %3, align 4
  %56 = load %struct.ofs_delta_entry*, %struct.ofs_delta_entry** %5, align 8
  %57 = getelementptr inbounds %struct.ofs_delta_entry, %struct.ofs_delta_entry* %56, i32 0, i32 0
  store i32 %55, i32* %57, align 4
  %58 = load %struct.ofs_delta_entry*, %struct.ofs_delta_entry** %5, align 8
  %59 = getelementptr inbounds %struct.ofs_delta_entry, %struct.ofs_delta_entry* %58, i32 1
  store %struct.ofs_delta_entry* %59, %struct.ofs_delta_entry** %5, align 8
  br label %109

60:                                               ; preds = %30
  %61 = load %struct.object_entry*, %struct.object_entry** %8, align 8
  %62 = getelementptr inbounds %struct.object_entry, %struct.object_entry* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @OBJ_REF_DELTA, align 8
  %65 = icmp eq i64 %63, %64
  br i1 %65, label %66, label %86

66:                                               ; preds = %60
  %67 = load %struct.TYPE_7__*, %struct.TYPE_7__** @ref_deltas, align 8
  %68 = load i32, i32* @nr_ref_deltas, align 4
  %69 = add nsw i32 %68, 1
  %70 = load i32, i32* @ref_deltas_alloc, align 4
  %71 = call i32 @ALLOC_GROW(%struct.TYPE_7__* %67, i32 %69, i32 %70)
  %72 = load %struct.TYPE_7__*, %struct.TYPE_7__** @ref_deltas, align 8
  %73 = load i32, i32* @nr_ref_deltas, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i64 %74
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %75, i32 0, i32 1
  %77 = call i32 @oidcpy(i32* %76, %struct.object_id* %6)
  %78 = load i32, i32* %3, align 4
  %79 = load %struct.TYPE_7__*, %struct.TYPE_7__** @ref_deltas, align 8
  %80 = load i32, i32* @nr_ref_deltas, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %79, i64 %81
  %83 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %82, i32 0, i32 0
  store i32 %78, i32* %83, align 4
  %84 = load i32, i32* @nr_ref_deltas, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* @nr_ref_deltas, align 4
  br label %108

86:                                               ; preds = %60
  %87 = load i8*, i8** %9, align 8
  %88 = icmp ne i8* %87, null
  br i1 %88, label %95, label %89

89:                                               ; preds = %86
  %90 = load i64, i64* @OBJ_BAD, align 8
  %91 = load %struct.object_entry*, %struct.object_entry** %8, align 8
  %92 = getelementptr inbounds %struct.object_entry, %struct.object_entry* %91, i32 0, i32 0
  store i64 %90, i64* %92, align 8
  %93 = load i32, i32* %4, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %4, align 4
  br label %107

95:                                               ; preds = %86
  %96 = load i8*, i8** %9, align 8
  %97 = load %struct.object_entry*, %struct.object_entry** %8, align 8
  %98 = getelementptr inbounds %struct.object_entry, %struct.object_entry* %97, i32 0, i32 3
  %99 = load i32, i32* %98, align 8
  %100 = load %struct.object_entry*, %struct.object_entry** %8, align 8
  %101 = getelementptr inbounds %struct.object_entry, %struct.object_entry* %100, i32 0, i32 1
  %102 = load i64, i64* %101, align 8
  %103 = load %struct.object_entry*, %struct.object_entry** %8, align 8
  %104 = getelementptr inbounds %struct.object_entry, %struct.object_entry* %103, i32 0, i32 2
  %105 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %104, i32 0, i32 0
  %106 = call i32 @sha1_object(i8* %96, %struct.object_entry* null, i32 %99, i64 %102, i32* %105)
  br label %107

107:                                              ; preds = %95, %89
  br label %108

108:                                              ; preds = %107, %66
  br label %109

109:                                              ; preds = %108, %52
  %110 = load i8*, i8** %9, align 8
  %111 = call i32 @free(i8* %110)
  %112 = load i32, i32* @progress, align 4
  %113 = load i32, i32* %3, align 4
  %114 = add nsw i32 %113, 1
  %115 = call i32 @display_progress(i32 %112, i32 %114)
  br label %116

116:                                              ; preds = %109
  %117 = load i32, i32* %3, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %3, align 4
  br label %26

119:                                              ; preds = %26
  %120 = load i32, i32* @consumed_bytes, align 4
  %121 = load %struct.object_entry*, %struct.object_entry** @objects, align 8
  %122 = load i32, i32* %3, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds %struct.object_entry, %struct.object_entry* %121, i64 %123
  %125 = getelementptr inbounds %struct.object_entry, %struct.object_entry* %124, i32 0, i32 2
  %126 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %125, i32 0, i32 1
  store i32 %120, i32* %126, align 4
  %127 = call i32 @stop_progress(i32* @progress)
  %128 = call i32 (...) @flush()
  %129 = load %struct.TYPE_6__*, %struct.TYPE_6__** @the_hash_algo, align 8
  %130 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %129, i32 0, i32 1
  %131 = load i32 (i8*, i32*)*, i32 (i8*, i32*)** %130, align 8
  %132 = load i8*, i8** %2, align 8
  %133 = call i32 %131(i8* %132, i32* @input_ctx)
  %134 = load %struct.TYPE_6__*, %struct.TYPE_6__** @the_hash_algo, align 8
  %135 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 8
  %137 = call i32 @fill(i32 %136)
  %138 = load i8*, i8** %2, align 8
  %139 = call i32 @hasheq(i32 %137, i8* %138)
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %144, label %141

141:                                              ; preds = %119
  %142 = call i32 @_(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0))
  %143 = call i32 @die(i32 %142)
  br label %144

144:                                              ; preds = %141, %119
  %145 = load %struct.TYPE_6__*, %struct.TYPE_6__** @the_hash_algo, align 8
  %146 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 8
  %148 = call i32 @use(i32 %147)
  %149 = load i32, i32* @input_fd, align 4
  %150 = call i64 @fstat(i32 %149, %struct.stat* %7)
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %152, label %155

152:                                              ; preds = %144
  %153 = call i32 @_(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0))
  %154 = call i32 @die_errno(i32 %153)
  br label %155

155:                                              ; preds = %152, %144
  %156 = getelementptr inbounds %struct.stat, %struct.stat* %7, i32 0, i32 1
  %157 = load i32, i32* %156, align 8
  %158 = call i64 @S_ISREG(i32 %157)
  %159 = icmp ne i64 %158, 0
  br i1 %159, label %160, label %172

160:                                              ; preds = %155
  %161 = load i32, i32* @input_fd, align 4
  %162 = load i32, i32* @SEEK_CUR, align 4
  %163 = call i64 @lseek(i32 %161, i32 0, i32 %162)
  %164 = load i64, i64* @input_len, align 8
  %165 = sub nsw i64 %163, %164
  %166 = getelementptr inbounds %struct.stat, %struct.stat* %7, i32 0, i32 0
  %167 = load i64, i64* %166, align 8
  %168 = icmp ne i64 %165, %167
  br i1 %168, label %169, label %172

169:                                              ; preds = %160
  %170 = call i32 @_(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0))
  %171 = call i32 @die(i32 %170)
  br label %172

172:                                              ; preds = %169, %160, %155
  store i32 0, i32* %3, align 4
  br label %173

173:                                              ; preds = %207, %172
  %174 = load i32, i32* %3, align 4
  %175 = load i32, i32* @nr_objects, align 4
  %176 = icmp slt i32 %174, %175
  br i1 %176, label %177, label %210

177:                                              ; preds = %173
  %178 = load %struct.object_entry*, %struct.object_entry** @objects, align 8
  %179 = load i32, i32* %3, align 4
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds %struct.object_entry, %struct.object_entry* %178, i64 %180
  store %struct.object_entry* %181, %struct.object_entry** %10, align 8
  %182 = load %struct.object_entry*, %struct.object_entry** %10, align 8
  %183 = getelementptr inbounds %struct.object_entry, %struct.object_entry* %182, i32 0, i32 0
  %184 = load i64, i64* %183, align 8
  %185 = load i64, i64* @OBJ_BAD, align 8
  %186 = icmp ne i64 %184, %185
  br i1 %186, label %187, label %188

187:                                              ; preds = %177
  br label %207

188:                                              ; preds = %177
  %189 = load %struct.object_entry*, %struct.object_entry** %10, align 8
  %190 = getelementptr inbounds %struct.object_entry, %struct.object_entry* %189, i32 0, i32 1
  %191 = load i64, i64* %190, align 8
  %192 = load %struct.object_entry*, %struct.object_entry** %10, align 8
  %193 = getelementptr inbounds %struct.object_entry, %struct.object_entry* %192, i32 0, i32 0
  store i64 %191, i64* %193, align 8
  %194 = load %struct.object_entry*, %struct.object_entry** %10, align 8
  %195 = load %struct.object_entry*, %struct.object_entry** %10, align 8
  %196 = getelementptr inbounds %struct.object_entry, %struct.object_entry* %195, i32 0, i32 3
  %197 = load i32, i32* %196, align 8
  %198 = load %struct.object_entry*, %struct.object_entry** %10, align 8
  %199 = getelementptr inbounds %struct.object_entry, %struct.object_entry* %198, i32 0, i32 1
  %200 = load i64, i64* %199, align 8
  %201 = load %struct.object_entry*, %struct.object_entry** %10, align 8
  %202 = getelementptr inbounds %struct.object_entry, %struct.object_entry* %201, i32 0, i32 2
  %203 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %202, i32 0, i32 0
  %204 = call i32 @sha1_object(i8* null, %struct.object_entry* %194, i32 %197, i64 %200, i32* %203)
  %205 = load i32, i32* %4, align 4
  %206 = add nsw i32 %205, -1
  store i32 %206, i32* %4, align 4
  br label %207

207:                                              ; preds = %188, %187
  %208 = load i32, i32* %3, align 4
  %209 = add nsw i32 %208, 1
  store i32 %209, i32* %3, align 4
  br label %173

210:                                              ; preds = %173
  %211 = load i32, i32* %4, align 4
  %212 = icmp ne i32 %211, 0
  br i1 %212, label %213, label %216

213:                                              ; preds = %210
  %214 = call i32 @_(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.5, i64 0, i64 0))
  %215 = call i32 @die(i32 %214)
  br label %216

216:                                              ; preds = %213, %210
  ret void
}

declare dso_local i32 @start_progress(i32, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i8* @unpack_raw_entry(%struct.object_entry*, i32*, %struct.object_id*, i32*) #1

declare dso_local i32 @ALLOC_GROW(%struct.TYPE_7__*, i32, i32) #1

declare dso_local i32 @oidcpy(i32*, %struct.object_id*) #1

declare dso_local i32 @sha1_object(i8*, %struct.object_entry*, i32, i64, i32*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @display_progress(i32, i32) #1

declare dso_local i32 @stop_progress(i32*) #1

declare dso_local i32 @flush(...) #1

declare dso_local i32 @hasheq(i32, i8*) #1

declare dso_local i32 @fill(i32) #1

declare dso_local i32 @die(i32) #1

declare dso_local i32 @use(i32) #1

declare dso_local i64 @fstat(i32, %struct.stat*) #1

declare dso_local i32 @die_errno(i32) #1

declare dso_local i64 @S_ISREG(i32) #1

declare dso_local i64 @lseek(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
