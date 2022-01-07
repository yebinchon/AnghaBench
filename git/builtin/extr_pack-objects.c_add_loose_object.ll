; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_pack-objects.c_add_loose_object.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_pack-objects.c_add_loose_object.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.object_id = type { i32 }

@the_repository = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"loose object at %s could not be examined\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.object_id*, i8*, i8*)* @add_loose_object to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @add_loose_object(%struct.object_id* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.object_id*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store %struct.object_id* %0, %struct.object_id** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %9 = load i32, i32* @the_repository, align 4
  %10 = load %struct.object_id*, %struct.object_id** %5, align 8
  %11 = call i32 @oid_object_info(i32 %9, %struct.object_id* %10, i32* null)
  store i32 %11, i32* %8, align 4
  %12 = load i32, i32* %8, align 4
  %13 = icmp ult i32 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %3
  %15 = call i32 @_(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  %16 = load i8*, i8** %6, align 8
  %17 = call i32 @warning(i32 %15, i8* %16)
  store i32 0, i32* %4, align 4
  br label %22

18:                                               ; preds = %3
  %19 = load %struct.object_id*, %struct.object_id** %5, align 8
  %20 = load i32, i32* %8, align 4
  %21 = call i32 @add_object_entry(%struct.object_id* %19, i32 %20, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i32 0)
  store i32 0, i32* %4, align 4
  br label %22

22:                                               ; preds = %18, %14
  %23 = load i32, i32* %4, align 4
  ret i32 %23
}

declare dso_local i32 @oid_object_info(i32, %struct.object_id*, i32*) #1

declare dso_local i32 @warning(i32, i8*) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @add_object_entry(%struct.object_id*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
