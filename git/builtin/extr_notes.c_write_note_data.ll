; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_notes.c_write_note_data.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_notes.c_write_note_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.note_data = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.object_id = type { i32 }

@blob_type = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"unable to write note object\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"the note contents have been left in %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.note_data*, %struct.object_id*)* @write_note_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @write_note_data(%struct.note_data* %0, %struct.object_id* %1) #0 {
  %3 = alloca %struct.note_data*, align 8
  %4 = alloca %struct.object_id*, align 8
  store %struct.note_data* %0, %struct.note_data** %3, align 8
  store %struct.object_id* %1, %struct.object_id** %4, align 8
  %5 = load %struct.note_data*, %struct.note_data** %3, align 8
  %6 = getelementptr inbounds %struct.note_data, %struct.note_data* %5, i32 0, i32 1
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 4
  %9 = load %struct.note_data*, %struct.note_data** %3, align 8
  %10 = getelementptr inbounds %struct.note_data, %struct.note_data* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* @blob_type, align 4
  %14 = load %struct.object_id*, %struct.object_id** %4, align 8
  %15 = call i64 @write_object_file(i32 %8, i32 %12, i32 %13, %struct.object_id* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %32

17:                                               ; preds = %2
  %18 = call i32 @_(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %19 = call i32 (i32, ...) @error(i32 %18)
  %20 = load %struct.note_data*, %struct.note_data** %3, align 8
  %21 = getelementptr inbounds %struct.note_data, %struct.note_data* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %17
  %25 = call i32 @_(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  %26 = load %struct.note_data*, %struct.note_data** %3, align 8
  %27 = getelementptr inbounds %struct.note_data, %struct.note_data* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = call i32 (i32, ...) @error(i32 %25, i64 %28)
  br label %30

30:                                               ; preds = %24, %17
  %31 = call i32 @exit(i32 128) #3
  unreachable

32:                                               ; preds = %2
  ret void
}

declare dso_local i64 @write_object_file(i32, i32, i32, %struct.object_id*) #1

declare dso_local i32 @error(i32, ...) #1

declare dso_local i32 @_(i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
