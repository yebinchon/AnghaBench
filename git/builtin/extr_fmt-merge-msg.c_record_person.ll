; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_fmt-merge-msg.c_record_person.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_fmt-merge-msg.c_record_person.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.string_list = type { i32 }
%struct.commit = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.string_list*, %struct.commit*)* @record_person to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @record_person(i32 %0, %struct.string_list* %1, %struct.commit* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.string_list*, align 8
  %6 = alloca %struct.commit*, align 8
  %7 = alloca i8*, align 8
  store i32 %0, i32* %4, align 4
  store %struct.string_list* %1, %struct.string_list** %5, align 8
  store %struct.commit* %2, %struct.commit** %6, align 8
  %8 = load %struct.commit*, %struct.commit** %6, align 8
  %9 = call i8* @get_commit_buffer(%struct.commit* %8, i32* null)
  store i8* %9, i8** %7, align 8
  %10 = load i32, i32* %4, align 4
  %11 = load %struct.string_list*, %struct.string_list** %5, align 8
  %12 = load i8*, i8** %7, align 8
  %13 = call i32 @record_person_from_buf(i32 %10, %struct.string_list* %11, i8* %12)
  %14 = load %struct.commit*, %struct.commit** %6, align 8
  %15 = load i8*, i8** %7, align 8
  %16 = call i32 @unuse_commit_buffer(%struct.commit* %14, i8* %15)
  ret void
}

declare dso_local i8* @get_commit_buffer(%struct.commit*, i32*) #1

declare dso_local i32 @record_person_from_buf(i32, %struct.string_list*, i8*) #1

declare dso_local i32 @unuse_commit_buffer(%struct.commit*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
