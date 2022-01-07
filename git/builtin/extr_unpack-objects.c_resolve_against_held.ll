; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_unpack-objects.c_resolve_against_held.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_unpack-objects.c_resolve_against_held.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.object_id = type { i32 }
%struct.object = type { i32 }
%struct.obj_buffer = type { i32, i32 }

@the_repository = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.object_id*, i8*, i64)* @resolve_against_held to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @resolve_against_held(i32 %0, %struct.object_id* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.object_id*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.object*, align 8
  %11 = alloca %struct.obj_buffer*, align 8
  store i32 %0, i32* %6, align 4
  store %struct.object_id* %1, %struct.object_id** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %12 = load i32, i32* @the_repository, align 4
  %13 = load %struct.object_id*, %struct.object_id** %7, align 8
  %14 = call %struct.object* @lookup_object(i32 %12, %struct.object_id* %13)
  store %struct.object* %14, %struct.object** %10, align 8
  %15 = load %struct.object*, %struct.object** %10, align 8
  %16 = icmp ne %struct.object* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %38

18:                                               ; preds = %4
  %19 = load %struct.object*, %struct.object** %10, align 8
  %20 = call %struct.obj_buffer* @lookup_object_buffer(%struct.object* %19)
  store %struct.obj_buffer* %20, %struct.obj_buffer** %11, align 8
  %21 = load %struct.obj_buffer*, %struct.obj_buffer** %11, align 8
  %22 = icmp ne %struct.obj_buffer* %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %18
  store i32 0, i32* %5, align 4
  br label %38

24:                                               ; preds = %18
  %25 = load i32, i32* %6, align 4
  %26 = load %struct.object*, %struct.object** %10, align 8
  %27 = getelementptr inbounds %struct.object, %struct.object* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.obj_buffer*, %struct.obj_buffer** %11, align 8
  %30 = getelementptr inbounds %struct.obj_buffer, %struct.obj_buffer* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.obj_buffer*, %struct.obj_buffer** %11, align 8
  %33 = getelementptr inbounds %struct.obj_buffer, %struct.obj_buffer* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i8*, i8** %8, align 8
  %36 = load i64, i64* %9, align 8
  %37 = call i32 @resolve_delta(i32 %25, i32 %28, i32 %31, i32 %34, i8* %35, i64 %36)
  store i32 1, i32* %5, align 4
  br label %38

38:                                               ; preds = %24, %23, %17
  %39 = load i32, i32* %5, align 4
  ret i32 %39
}

declare dso_local %struct.object* @lookup_object(i32, %struct.object_id*) #1

declare dso_local %struct.obj_buffer* @lookup_object_buffer(%struct.object*) #1

declare dso_local i32 @resolve_delta(i32, i32, i32, i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
