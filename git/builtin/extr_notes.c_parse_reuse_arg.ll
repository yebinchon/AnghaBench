; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_notes.c_parse_reuse_arg.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_notes.c_parse_reuse_arg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.option = type { %struct.note_data* }
%struct.note_data = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }
%struct.object_id = type { i32 }

@.str = private unnamed_addr constant [39 x i8] c"failed to resolve '%s' as a valid ref.\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"failed to read object '%s'.\00", align 1
@OBJ_BLOB = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [49 x i8] c"cannot read note data from non-blob object '%s'.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.option*, i8*, i32)* @parse_reuse_arg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_reuse_arg(%struct.option* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.option*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.note_data*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.object_id, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store %struct.option* %0, %struct.option** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %12 = load %struct.option*, %struct.option** %4, align 8
  %13 = getelementptr inbounds %struct.option, %struct.option* %12, i32 0, i32 0
  %14 = load %struct.note_data*, %struct.note_data** %13, align 8
  store %struct.note_data* %14, %struct.note_data** %7, align 8
  %15 = load i32, i32* %6, align 4
  %16 = call i32 @BUG_ON_OPT_NEG(i32 %15)
  %17 = load %struct.note_data*, %struct.note_data** %7, align 8
  %18 = getelementptr inbounds %struct.note_data, %struct.note_data* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %3
  %23 = load %struct.note_data*, %struct.note_data** %7, align 8
  %24 = getelementptr inbounds %struct.note_data, %struct.note_data* %23, i32 0, i32 1
  %25 = call i32 @strbuf_addch(%struct.TYPE_3__* %24, i8 signext 10)
  br label %26

26:                                               ; preds = %22, %3
  %27 = load i8*, i8** %5, align 8
  %28 = call i64 @get_oid(i8* %27, %struct.object_id* %9)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %26
  %31 = call i32 @_(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  %32 = load i8*, i8** %5, align 8
  %33 = call i32 @die(i32 %31, i8* %32)
  br label %34

34:                                               ; preds = %30, %26
  %35 = call i8* @read_object_file(%struct.object_id* %9, i32* %10, i64* %11)
  store i8* %35, i8** %8, align 8
  %36 = icmp ne i8* %35, null
  br i1 %36, label %41, label %37

37:                                               ; preds = %34
  %38 = call i32 @_(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %39 = load i8*, i8** %5, align 8
  %40 = call i32 @die(i32 %38, i8* %39)
  br label %41

41:                                               ; preds = %37, %34
  %42 = load i32, i32* %10, align 4
  %43 = load i32, i32* @OBJ_BLOB, align 4
  %44 = icmp ne i32 %42, %43
  br i1 %44, label %45, label %51

45:                                               ; preds = %41
  %46 = load i8*, i8** %8, align 8
  %47 = call i32 @free(i8* %46)
  %48 = call i32 @_(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.2, i64 0, i64 0))
  %49 = load i8*, i8** %5, align 8
  %50 = call i32 @die(i32 %48, i8* %49)
  br label %51

51:                                               ; preds = %45, %41
  %52 = load %struct.note_data*, %struct.note_data** %7, align 8
  %53 = getelementptr inbounds %struct.note_data, %struct.note_data* %52, i32 0, i32 1
  %54 = load i8*, i8** %8, align 8
  %55 = load i64, i64* %11, align 8
  %56 = call i32 @strbuf_add(%struct.TYPE_3__* %53, i8* %54, i64 %55)
  %57 = load i8*, i8** %8, align 8
  %58 = call i32 @free(i8* %57)
  %59 = load %struct.note_data*, %struct.note_data** %7, align 8
  %60 = getelementptr inbounds %struct.note_data, %struct.note_data* %59, i32 0, i32 0
  store i32 1, i32* %60, align 8
  ret i32 0
}

declare dso_local i32 @BUG_ON_OPT_NEG(i32) #1

declare dso_local i32 @strbuf_addch(%struct.TYPE_3__*, i8 signext) #1

declare dso_local i64 @get_oid(i8*, %struct.object_id*) #1

declare dso_local i32 @die(i32, i8*) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i8* @read_object_file(%struct.object_id*, i32*, i64*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @strbuf_add(%struct.TYPE_3__*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
