; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_unpack-objects.c_write_cached_object.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_unpack-objects.c_write_cached_object.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.object = type { i32, i32, i32 }
%struct.obj_buffer = type { i32, i32 }
%struct.object_id = type { i32 }

@.str = private unnamed_addr constant [26 x i8] c"failed to write object %s\00", align 1
@FLAG_WRITTEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.object*, %struct.obj_buffer*)* @write_cached_object to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @write_cached_object(%struct.object* %0, %struct.obj_buffer* %1) #0 {
  %3 = alloca %struct.object*, align 8
  %4 = alloca %struct.obj_buffer*, align 8
  %5 = alloca %struct.object_id, align 4
  store %struct.object* %0, %struct.object** %3, align 8
  store %struct.obj_buffer* %1, %struct.obj_buffer** %4, align 8
  %6 = load %struct.obj_buffer*, %struct.obj_buffer** %4, align 8
  %7 = getelementptr inbounds %struct.obj_buffer, %struct.obj_buffer* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 4
  %9 = load %struct.obj_buffer*, %struct.obj_buffer** %4, align 8
  %10 = getelementptr inbounds %struct.obj_buffer, %struct.obj_buffer* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.object*, %struct.object** %3, align 8
  %13 = getelementptr inbounds %struct.object, %struct.object* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @type_name(i32 %14)
  %16 = call i64 @write_object_file(i32 %8, i32 %11, i32 %15, %struct.object_id* %5)
  %17 = icmp slt i64 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %2
  %19 = load %struct.object*, %struct.object** %3, align 8
  %20 = getelementptr inbounds %struct.object, %struct.object* %19, i32 0, i32 1
  %21 = call i32 @oid_to_hex(i32* %20)
  %22 = call i32 @die(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %21)
  br label %23

23:                                               ; preds = %18, %2
  %24 = load i32, i32* @FLAG_WRITTEN, align 4
  %25 = load %struct.object*, %struct.object** %3, align 8
  %26 = getelementptr inbounds %struct.object, %struct.object* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = or i32 %27, %24
  store i32 %28, i32* %26, align 4
  ret void
}

declare dso_local i64 @write_object_file(i32, i32, i32, %struct.object_id*) #1

declare dso_local i32 @type_name(i32) #1

declare dso_local i32 @die(i8*, i32) #1

declare dso_local i32 @oid_to_hex(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
