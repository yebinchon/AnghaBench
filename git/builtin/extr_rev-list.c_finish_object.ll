; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_rev-list.c_finish_object.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_rev-list.c_finish_object.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.object = type { i64, i32, i32 }
%struct.rev_list_info = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@the_repository = common dso_local global i32 0, align 4
@OBJ_COMMIT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.object*, i8*, i8*)* @finish_object to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @finish_object(%struct.object* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.object*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.rev_list_info*, align 8
  store %struct.object* %0, %struct.object** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %9 = load i8*, i8** %7, align 8
  %10 = bitcast i8* %9 to %struct.rev_list_info*
  store %struct.rev_list_info* %10, %struct.rev_list_info** %8, align 8
  %11 = load i32, i32* @the_repository, align 4
  %12 = load %struct.object*, %struct.object** %5, align 8
  %13 = getelementptr inbounds %struct.object, %struct.object* %12, i32 0, i32 1
  %14 = call i64 @oid_object_info_extended(i32 %11, i32* %13, i32* null, i32 0)
  %15 = icmp slt i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %3
  %17 = load %struct.object*, %struct.object** %5, align 8
  %18 = call i32 @finish_object__ma(%struct.object* %17)
  store i32 1, i32* %4, align 4
  br label %43

19:                                               ; preds = %3
  %20 = load %struct.rev_list_info*, %struct.rev_list_info** %8, align 8
  %21 = getelementptr inbounds %struct.rev_list_info, %struct.rev_list_info* %20, i32 0, i32 0
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %42

26:                                               ; preds = %19
  %27 = load %struct.object*, %struct.object** %5, align 8
  %28 = getelementptr inbounds %struct.object, %struct.object* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %42, label %31

31:                                               ; preds = %26
  %32 = load %struct.object*, %struct.object** %5, align 8
  %33 = getelementptr inbounds %struct.object, %struct.object* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @OBJ_COMMIT, align 8
  %36 = icmp ne i64 %34, %35
  br i1 %36, label %37, label %42

37:                                               ; preds = %31
  %38 = load i32, i32* @the_repository, align 4
  %39 = load %struct.object*, %struct.object** %5, align 8
  %40 = getelementptr inbounds %struct.object, %struct.object* %39, i32 0, i32 1
  %41 = call i32 @parse_object(i32 %38, i32* %40)
  br label %42

42:                                               ; preds = %37, %31, %26, %19
  store i32 0, i32* %4, align 4
  br label %43

43:                                               ; preds = %42, %16
  %44 = load i32, i32* %4, align 4
  ret i32 %44
}

declare dso_local i64 @oid_object_info_extended(i32, i32*, i32*, i32) #1

declare dso_local i32 @finish_object__ma(%struct.object*) #1

declare dso_local i32 @parse_object(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
