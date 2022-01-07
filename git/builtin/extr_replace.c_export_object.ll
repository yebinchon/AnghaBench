; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_replace.c_export_object.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_replace.c_export_object.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.child_process = type { i32, i32, i32 }
%struct.object_id = type { i32 }

@CHILD_PROCESS_INIT = common dso_local global %struct.child_process zeroinitializer, align 4
@O_WRONLY = common dso_local global i32 0, align 4
@O_CREAT = common dso_local global i32 0, align 4
@O_TRUNC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"unable to open %s for writing\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"--no-replace-objects\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"cat-file\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"-p\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"cat-file reported failure\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.object_id*, i32, i32, i8*)* @export_object to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @export_object(%struct.object_id* %0, i32 %1, i32 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.object_id*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca %struct.child_process, align 4
  %11 = alloca i32, align 4
  store %struct.object_id* %0, %struct.object_id** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  %12 = bitcast %struct.child_process* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %12, i8* align 4 bitcast (%struct.child_process* @CHILD_PROCESS_INIT to i8*), i64 12, i1 false)
  %13 = load i8*, i8** %9, align 8
  %14 = load i32, i32* @O_WRONLY, align 4
  %15 = load i32, i32* @O_CREAT, align 4
  %16 = or i32 %14, %15
  %17 = load i32, i32* @O_TRUNC, align 4
  %18 = or i32 %16, %17
  %19 = call i32 @open(i8* %13, i32 %18, i32 438)
  store i32 %19, i32* %11, align 4
  %20 = load i32, i32* %11, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %4
  %23 = call i32 @_(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %24 = load i8*, i8** %9, align 8
  %25 = call i32 @error_errno(i32 %23, i8* %24)
  store i32 %25, i32* %5, align 4
  br label %55

26:                                               ; preds = %4
  %27 = getelementptr inbounds %struct.child_process, %struct.child_process* %10, i32 0, i32 2
  %28 = call i32 @argv_array_push(i32* %27, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %29 = getelementptr inbounds %struct.child_process, %struct.child_process* %10, i32 0, i32 2
  %30 = call i32 @argv_array_push(i32* %29, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  %31 = load i32, i32* %8, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %26
  %34 = getelementptr inbounds %struct.child_process, %struct.child_process* %10, i32 0, i32 2
  %35 = load i32, i32* %7, align 4
  %36 = call i8* @type_name(i32 %35)
  %37 = call i32 @argv_array_push(i32* %34, i8* %36)
  br label %41

38:                                               ; preds = %26
  %39 = getelementptr inbounds %struct.child_process, %struct.child_process* %10, i32 0, i32 2
  %40 = call i32 @argv_array_push(i32* %39, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  br label %41

41:                                               ; preds = %38, %33
  %42 = getelementptr inbounds %struct.child_process, %struct.child_process* %10, i32 0, i32 2
  %43 = load %struct.object_id*, %struct.object_id** %6, align 8
  %44 = call i8* @oid_to_hex(%struct.object_id* %43)
  %45 = call i32 @argv_array_push(i32* %42, i8* %44)
  %46 = getelementptr inbounds %struct.child_process, %struct.child_process* %10, i32 0, i32 0
  store i32 1, i32* %46, align 4
  %47 = load i32, i32* %11, align 4
  %48 = getelementptr inbounds %struct.child_process, %struct.child_process* %10, i32 0, i32 1
  store i32 %47, i32* %48, align 4
  %49 = call i64 @run_command(%struct.child_process* %10)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %41
  %52 = call i32 @_(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0))
  %53 = call i32 @error(i32 %52)
  store i32 %53, i32* %5, align 4
  br label %55

54:                                               ; preds = %41
  store i32 0, i32* %5, align 4
  br label %55

55:                                               ; preds = %54, %51, %22
  %56 = load i32, i32* %5, align 4
  ret i32 %56
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @open(i8*, i32, i32) #2

declare dso_local i32 @error_errno(i32, i8*) #2

declare dso_local i32 @_(i8*) #2

declare dso_local i32 @argv_array_push(i32*, i8*) #2

declare dso_local i8* @type_name(i32) #2

declare dso_local i8* @oid_to_hex(%struct.object_id*) #2

declare dso_local i64 @run_command(%struct.child_process*) #2

declare dso_local i32 @error(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
