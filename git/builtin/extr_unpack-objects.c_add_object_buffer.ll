; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_unpack-objects.c_add_object_buffer.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_unpack-objects.c_add_object_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.object = type { i32 }
%struct.obj_buffer = type { i8*, i64 }

@obj_decorate = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"object %s tried to add buffer twice!\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.object*, i8*, i64)* @add_object_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @add_object_buffer(%struct.object* %0, i8* %1, i64 %2) #0 {
  %4 = alloca %struct.object*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.obj_buffer*, align 8
  store %struct.object* %0, %struct.object** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %8 = call %struct.obj_buffer* @xcalloc(i32 1, i32 16)
  store %struct.obj_buffer* %8, %struct.obj_buffer** %7, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = load %struct.obj_buffer*, %struct.obj_buffer** %7, align 8
  %11 = getelementptr inbounds %struct.obj_buffer, %struct.obj_buffer* %10, i32 0, i32 0
  store i8* %9, i8** %11, align 8
  %12 = load i64, i64* %6, align 8
  %13 = load %struct.obj_buffer*, %struct.obj_buffer** %7, align 8
  %14 = getelementptr inbounds %struct.obj_buffer, %struct.obj_buffer* %13, i32 0, i32 1
  store i64 %12, i64* %14, align 8
  %15 = load %struct.object*, %struct.object** %4, align 8
  %16 = load %struct.obj_buffer*, %struct.obj_buffer** %7, align 8
  %17 = call i64 @add_decoration(i32* @obj_decorate, %struct.object* %15, %struct.obj_buffer* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %3
  %20 = load %struct.object*, %struct.object** %4, align 8
  %21 = getelementptr inbounds %struct.object, %struct.object* %20, i32 0, i32 0
  %22 = call i32 @oid_to_hex(i32* %21)
  %23 = call i32 @die(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %22)
  br label %24

24:                                               ; preds = %19, %3
  ret void
}

declare dso_local %struct.obj_buffer* @xcalloc(i32, i32) #1

declare dso_local i64 @add_decoration(i32*, %struct.object*, %struct.obj_buffer*) #1

declare dso_local i32 @die(i8*, i32) #1

declare dso_local i32 @oid_to_hex(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
