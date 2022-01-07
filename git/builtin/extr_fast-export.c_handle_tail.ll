; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_fast-export.c_handle_tail.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_fast-export.c_handle_tail.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.object_array = type { i64 }
%struct.rev_info = type { i32 }
%struct.string_list = type { i32 }
%struct.commit = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.object_array*, %struct.rev_info*, %struct.string_list*)* @handle_tail to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @handle_tail(%struct.object_array* %0, %struct.rev_info* %1, %struct.string_list* %2) #0 {
  %4 = alloca %struct.object_array*, align 8
  %5 = alloca %struct.rev_info*, align 8
  %6 = alloca %struct.string_list*, align 8
  %7 = alloca %struct.commit*, align 8
  store %struct.object_array* %0, %struct.object_array** %4, align 8
  store %struct.rev_info* %1, %struct.rev_info** %5, align 8
  store %struct.string_list* %2, %struct.string_list** %6, align 8
  br label %8

8:                                                ; preds = %25, %3
  %9 = load %struct.object_array*, %struct.object_array** %4, align 8
  %10 = getelementptr inbounds %struct.object_array, %struct.object_array* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %30

13:                                               ; preds = %8
  %14 = load %struct.object_array*, %struct.object_array** %4, align 8
  %15 = call i64 @object_array_pop(%struct.object_array* %14)
  %16 = inttoptr i64 %15 to %struct.commit*
  store %struct.commit* %16, %struct.commit** %7, align 8
  %17 = load %struct.commit*, %struct.commit** %7, align 8
  %18 = call i64 @has_unshown_parent(%struct.commit* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %13
  %21 = load %struct.commit*, %struct.commit** %7, align 8
  %22 = getelementptr inbounds %struct.commit, %struct.commit* %21, i32 0, i32 0
  %23 = load %struct.object_array*, %struct.object_array** %4, align 8
  %24 = call i32 @add_object_array(i32* %22, i32* null, %struct.object_array* %23)
  br label %30

25:                                               ; preds = %13
  %26 = load %struct.commit*, %struct.commit** %7, align 8
  %27 = load %struct.rev_info*, %struct.rev_info** %5, align 8
  %28 = load %struct.string_list*, %struct.string_list** %6, align 8
  %29 = call i32 @handle_commit(%struct.commit* %26, %struct.rev_info* %27, %struct.string_list* %28)
  br label %8

30:                                               ; preds = %20, %8
  ret void
}

declare dso_local i64 @object_array_pop(%struct.object_array*) #1

declare dso_local i64 @has_unshown_parent(%struct.commit*) #1

declare dso_local i32 @add_object_array(i32*, i32*, %struct.object_array*) #1

declare dso_local i32 @handle_commit(%struct.commit*, %struct.rev_info*, %struct.string_list*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
