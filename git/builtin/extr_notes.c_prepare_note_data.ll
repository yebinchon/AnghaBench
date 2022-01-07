; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_notes.c_prepare_note_data.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_notes.c_prepare_note_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i32, i32 }
%struct.note_data = type { %struct.TYPE_4__, i32, i64, i64 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.object_id = type { i32 }

@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 4
@.str = private unnamed_addr constant [14 x i8] c"NOTES_EDITMSG\00", align 1
@O_CREAT = common dso_local global i32 0, align 4
@O_TRUNC = common dso_local global i32 0, align 4
@O_WRONLY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"could not create file '%s'\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@note_template = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [61 x i8] c"please supply the note contents using either -m or -F option\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.object_id*, %struct.note_data*, %struct.object_id*)* @prepare_note_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @prepare_note_data(%struct.object_id* %0, %struct.note_data* %1, %struct.object_id* %2) #0 {
  %4 = alloca %struct.object_id*, align 8
  %5 = alloca %struct.note_data*, align 8
  %6 = alloca %struct.object_id*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.strbuf, align 4
  store %struct.object_id* %0, %struct.object_id** %4, align 8
  store %struct.note_data* %1, %struct.note_data** %5, align 8
  store %struct.object_id* %2, %struct.object_id** %6, align 8
  %9 = load %struct.note_data*, %struct.note_data** %5, align 8
  %10 = getelementptr inbounds %struct.note_data, %struct.note_data* %9, i32 0, i32 3
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %18, label %13

13:                                               ; preds = %3
  %14 = load %struct.note_data*, %struct.note_data** %5, align 8
  %15 = getelementptr inbounds %struct.note_data, %struct.note_data* %14, i32 0, i32 2
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %104, label %18

18:                                               ; preds = %13, %3
  %19 = bitcast %struct.strbuf* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %19, i8* align 4 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 8, i1 false)
  %20 = call i32 @git_pathdup(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %21 = load %struct.note_data*, %struct.note_data** %5, align 8
  %22 = getelementptr inbounds %struct.note_data, %struct.note_data* %21, i32 0, i32 1
  store i32 %20, i32* %22, align 8
  %23 = load %struct.note_data*, %struct.note_data** %5, align 8
  %24 = getelementptr inbounds %struct.note_data, %struct.note_data* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @O_CREAT, align 4
  %27 = load i32, i32* @O_TRUNC, align 4
  %28 = or i32 %26, %27
  %29 = load i32, i32* @O_WRONLY, align 4
  %30 = or i32 %28, %29
  %31 = call i32 @open(i32 %25, i32 %30, i32 384)
  store i32 %31, i32* %7, align 4
  %32 = load i32, i32* %7, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %40

34:                                               ; preds = %18
  %35 = call i8* @_(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %36 = load %struct.note_data*, %struct.note_data** %5, align 8
  %37 = getelementptr inbounds %struct.note_data, %struct.note_data* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @die_errno(i8* %35, i32 %38)
  br label %40

40:                                               ; preds = %34, %18
  %41 = load %struct.note_data*, %struct.note_data** %5, align 8
  %42 = getelementptr inbounds %struct.note_data, %struct.note_data* %41, i32 0, i32 2
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %56

45:                                               ; preds = %40
  %46 = load i32, i32* %7, align 4
  %47 = load %struct.note_data*, %struct.note_data** %5, align 8
  %48 = getelementptr inbounds %struct.note_data, %struct.note_data* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.note_data*, %struct.note_data** %5, align 8
  %52 = getelementptr inbounds %struct.note_data, %struct.note_data* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @write_or_die(i32 %46, i32 %50, i32 %54)
  br label %64

56:                                               ; preds = %40
  %57 = load %struct.object_id*, %struct.object_id** %6, align 8
  %58 = icmp ne %struct.object_id* %57, null
  br i1 %58, label %59, label %63

59:                                               ; preds = %56
  %60 = load i32, i32* %7, align 4
  %61 = load %struct.object_id*, %struct.object_id** %6, align 8
  %62 = call i32 @copy_obj_to_fd(i32 %60, %struct.object_id* %61)
  br label %63

63:                                               ; preds = %59, %56
  br label %64

64:                                               ; preds = %63, %45
  %65 = call i32 @strbuf_addch(%struct.strbuf* %8, i8 signext 10)
  %66 = call i32 @strlen(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %67 = call i32 @strbuf_add_commented_lines(%struct.strbuf* %8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i32 %66)
  %68 = load i8*, i8** @note_template, align 8
  %69 = call i8* @_(i8* %68)
  %70 = load i8*, i8** @note_template, align 8
  %71 = call i8* @_(i8* %70)
  %72 = call i32 @strlen(i8* %71)
  %73 = call i32 @strbuf_add_commented_lines(%struct.strbuf* %8, i8* %69, i32 %72)
  %74 = call i32 @strbuf_addch(%struct.strbuf* %8, i8 signext 10)
  %75 = load i32, i32* %7, align 4
  %76 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %8, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %8, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @write_or_die(i32 %75, i32 %77, i32 %79)
  %81 = load i32, i32* %7, align 4
  %82 = load %struct.object_id*, %struct.object_id** %4, align 8
  %83 = call i32 @write_commented_object(i32 %81, %struct.object_id* %82)
  %84 = load i32, i32* %7, align 4
  %85 = call i32 @close(i32 %84)
  %86 = call i32 @strbuf_release(%struct.strbuf* %8)
  %87 = load %struct.note_data*, %struct.note_data** %5, align 8
  %88 = getelementptr inbounds %struct.note_data, %struct.note_data* %87, i32 0, i32 0
  %89 = call i32 @strbuf_reset(%struct.TYPE_4__* %88)
  %90 = load %struct.note_data*, %struct.note_data** %5, align 8
  %91 = getelementptr inbounds %struct.note_data, %struct.note_data* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 8
  %93 = load %struct.note_data*, %struct.note_data** %5, align 8
  %94 = getelementptr inbounds %struct.note_data, %struct.note_data* %93, i32 0, i32 0
  %95 = call i64 @launch_editor(i32 %92, %struct.TYPE_4__* %94, i32* null)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %100

97:                                               ; preds = %64
  %98 = call i8* @_(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.3, i64 0, i64 0))
  %99 = call i32 @die(i8* %98)
  br label %100

100:                                              ; preds = %97, %64
  %101 = load %struct.note_data*, %struct.note_data** %5, align 8
  %102 = getelementptr inbounds %struct.note_data, %struct.note_data* %101, i32 0, i32 0
  %103 = call i32 @strbuf_stripspace(%struct.TYPE_4__* %102, i32 1)
  br label %104

104:                                              ; preds = %100, %13
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @git_pathdup(i8*) #2

declare dso_local i32 @open(i32, i32, i32) #2

declare dso_local i32 @die_errno(i8*, i32) #2

declare dso_local i8* @_(i8*) #2

declare dso_local i32 @write_or_die(i32, i32, i32) #2

declare dso_local i32 @copy_obj_to_fd(i32, %struct.object_id*) #2

declare dso_local i32 @strbuf_addch(%struct.strbuf*, i8 signext) #2

declare dso_local i32 @strbuf_add_commented_lines(%struct.strbuf*, i8*, i32) #2

declare dso_local i32 @strlen(i8*) #2

declare dso_local i32 @write_commented_object(i32, %struct.object_id*) #2

declare dso_local i32 @close(i32) #2

declare dso_local i32 @strbuf_release(%struct.strbuf*) #2

declare dso_local i32 @strbuf_reset(%struct.TYPE_4__*) #2

declare dso_local i64 @launch_editor(i32, %struct.TYPE_4__*, i32*) #2

declare dso_local i32 @die(i8*) #2

declare dso_local i32 @strbuf_stripspace(%struct.TYPE_4__*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
