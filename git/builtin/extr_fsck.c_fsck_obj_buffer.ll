; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_fsck.c_fsck_obj_buffer.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_fsck.c_fsck_obj_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.object_id = type { i32 }
%struct.object = type { i32 }

@the_repository = common dso_local global i32 0, align 4
@ERROR_OBJECT = common dso_local global i32 0, align 4
@errors_found = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"%s: object corrupt or missing\00", align 1
@REACHABLE = common dso_local global i32 0, align 4
@SEEN = common dso_local global i32 0, align 4
@HAS_OBJ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.object_id*, i32, i64, i8*, i32*)* @fsck_obj_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fsck_obj_buffer(%struct.object_id* %0, i32 %1, i64 %2, i8* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.object_id*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.object*, align 8
  store %struct.object_id* %0, %struct.object_id** %7, align 8
  store i32 %1, i32* %8, align 4
  store i64 %2, i64* %9, align 8
  store i8* %3, i8** %10, align 8
  store i32* %4, i32** %11, align 8
  %13 = load i32, i32* @the_repository, align 4
  %14 = load %struct.object_id*, %struct.object_id** %7, align 8
  %15 = load i32, i32* %8, align 4
  %16 = load i64, i64* %9, align 8
  %17 = load i8*, i8** %10, align 8
  %18 = load i32*, i32** %11, align 8
  %19 = call %struct.object* @parse_object_buffer(i32 %13, %struct.object_id* %14, i32 %15, i64 %16, i8* %17, i32* %18)
  store %struct.object* %19, %struct.object** %12, align 8
  %20 = load %struct.object*, %struct.object** %12, align 8
  %21 = icmp ne %struct.object* %20, null
  br i1 %21, label %30, label %22

22:                                               ; preds = %5
  %23 = load i32, i32* @ERROR_OBJECT, align 4
  %24 = load i32, i32* @errors_found, align 4
  %25 = or i32 %24, %23
  store i32 %25, i32* @errors_found, align 4
  %26 = call i32 @_(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %27 = load %struct.object_id*, %struct.object_id** %7, align 8
  %28 = call i32 @oid_to_hex(%struct.object_id* %27)
  %29 = call i32 @error(i32 %26, i32 %28)
  store i32 %29, i32* %6, align 4
  br label %48

30:                                               ; preds = %5
  %31 = load i32, i32* @REACHABLE, align 4
  %32 = load i32, i32* @SEEN, align 4
  %33 = or i32 %31, %32
  %34 = xor i32 %33, -1
  %35 = load %struct.object*, %struct.object** %12, align 8
  %36 = getelementptr inbounds %struct.object, %struct.object* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = and i32 %37, %34
  store i32 %38, i32* %36, align 4
  %39 = load i32, i32* @HAS_OBJ, align 4
  %40 = load %struct.object*, %struct.object** %12, align 8
  %41 = getelementptr inbounds %struct.object, %struct.object* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = or i32 %42, %39
  store i32 %43, i32* %41, align 4
  %44 = load %struct.object*, %struct.object** %12, align 8
  %45 = load i8*, i8** %10, align 8
  %46 = load i64, i64* %9, align 8
  %47 = call i32 @fsck_obj(%struct.object* %44, i8* %45, i64 %46)
  store i32 %47, i32* %6, align 4
  br label %48

48:                                               ; preds = %30, %22
  %49 = load i32, i32* %6, align 4
  ret i32 %49
}

declare dso_local %struct.object* @parse_object_buffer(i32, %struct.object_id*, i32, i64, i8*, i32*) #1

declare dso_local i32 @error(i32, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @oid_to_hex(%struct.object_id*) #1

declare dso_local i32 @fsck_obj(%struct.object*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
