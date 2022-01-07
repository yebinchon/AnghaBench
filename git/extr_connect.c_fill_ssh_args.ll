; ModuleID = '/home/carl/AnghaBench/git/extr_connect.c_fill_ssh_args.c'
source_filename = "/home/carl/AnghaBench/git/extr_connect.c_fill_ssh_args.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.child_process = type { i32, i32, i32, i32, i32, i64 }

@.str = private unnamed_addr constant [30 x i8] c"strange hostname '%s' blocked\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"GIT_SSH\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"ssh\00", align 1
@VARIANT_AUTO = common dso_local global i32 0, align 4
@CHILD_PROCESS_INIT = common dso_local global %struct.child_process zeroinitializer, align 8
@.str.3 = private unnamed_addr constant [3 x i8] c"-G\00", align 1
@VARIANT_SSH = common dso_local global i32 0, align 4
@VARIANT_SIMPLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.child_process*, i8*, i8*, i32, i32)* @fill_ssh_args to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fill_ssh_args(%struct.child_process* %0, i8* %1, i8* %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.child_process*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.child_process, align 8
  store %struct.child_process* %0, %struct.child_process** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %14 = load i8*, i8** %7, align 8
  %15 = call i64 @looks_like_command_line_option(i8* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %5
  %18 = call i32 @_(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %19 = load i8*, i8** %7, align 8
  %20 = call i32 @die(i32 %18, i8* %19)
  br label %21

21:                                               ; preds = %17, %5
  %22 = call i8* (...) @get_ssh_command()
  store i8* %22, i8** %11, align 8
  %23 = load i8*, i8** %11, align 8
  %24 = icmp ne i8* %23, null
  br i1 %24, label %25, label %28

25:                                               ; preds = %21
  %26 = load i8*, i8** %11, align 8
  %27 = call i32 @determine_ssh_variant(i8* %26, i32 1)
  store i32 %27, i32* %12, align 4
  br label %38

28:                                               ; preds = %21
  %29 = load %struct.child_process*, %struct.child_process** %6, align 8
  %30 = getelementptr inbounds %struct.child_process, %struct.child_process* %29, i32 0, i32 5
  store i64 0, i64* %30, align 8
  %31 = call i8* @getenv(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  store i8* %31, i8** %11, align 8
  %32 = load i8*, i8** %11, align 8
  %33 = icmp ne i8* %32, null
  br i1 %33, label %35, label %34

34:                                               ; preds = %28
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8** %11, align 8
  br label %35

35:                                               ; preds = %34, %28
  %36 = load i8*, i8** %11, align 8
  %37 = call i32 @determine_ssh_variant(i8* %36, i32 0)
  store i32 %37, i32* %12, align 4
  br label %38

38:                                               ; preds = %35, %25
  %39 = load i32, i32* %12, align 4
  %40 = load i32, i32* @VARIANT_AUTO, align 4
  %41 = icmp eq i32 %39, %40
  br i1 %41, label %42, label %74

42:                                               ; preds = %38
  %43 = bitcast %struct.child_process* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %43, i8* align 8 bitcast (%struct.child_process* @CHILD_PROCESS_INIT to i8*), i64 32, i1 false)
  %44 = load %struct.child_process*, %struct.child_process** %6, align 8
  %45 = getelementptr inbounds %struct.child_process, %struct.child_process* %44, i32 0, i32 5
  %46 = load i64, i64* %45, align 8
  %47 = getelementptr inbounds %struct.child_process, %struct.child_process* %13, i32 0, i32 5
  store i64 %46, i64* %47, align 8
  %48 = getelementptr inbounds %struct.child_process, %struct.child_process* %13, i32 0, i32 2
  store i32 1, i32* %48, align 8
  %49 = getelementptr inbounds %struct.child_process, %struct.child_process* %13, i32 0, i32 1
  store i32 1, i32* %49, align 4
  %50 = getelementptr inbounds %struct.child_process, %struct.child_process* %13, i32 0, i32 0
  store i32 1, i32* %50, align 8
  %51 = getelementptr inbounds %struct.child_process, %struct.child_process* %13, i32 0, i32 3
  %52 = load i8*, i8** %11, align 8
  %53 = call i32 @argv_array_push(i32* %51, i8* %52)
  %54 = getelementptr inbounds %struct.child_process, %struct.child_process* %13, i32 0, i32 3
  %55 = call i32 @argv_array_push(i32* %54, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  %56 = getelementptr inbounds %struct.child_process, %struct.child_process* %13, i32 0, i32 3
  %57 = getelementptr inbounds %struct.child_process, %struct.child_process* %13, i32 0, i32 4
  %58 = load i32, i32* @VARIANT_SSH, align 4
  %59 = load i8*, i8** %8, align 8
  %60 = load i32, i32* %9, align 4
  %61 = load i32, i32* %10, align 4
  %62 = call i32 @push_ssh_options(i32* %56, i32* %57, i32 %58, i8* %59, i32 %60, i32 %61)
  %63 = getelementptr inbounds %struct.child_process, %struct.child_process* %13, i32 0, i32 3
  %64 = load i8*, i8** %7, align 8
  %65 = call i32 @argv_array_push(i32* %63, i8* %64)
  %66 = call i64 @run_command(%struct.child_process* %13)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %42
  %69 = load i32, i32* @VARIANT_SIMPLE, align 4
  br label %72

70:                                               ; preds = %42
  %71 = load i32, i32* @VARIANT_SSH, align 4
  br label %72

72:                                               ; preds = %70, %68
  %73 = phi i32 [ %69, %68 ], [ %71, %70 ]
  store i32 %73, i32* %12, align 4
  br label %74

74:                                               ; preds = %72, %38
  %75 = load %struct.child_process*, %struct.child_process** %6, align 8
  %76 = getelementptr inbounds %struct.child_process, %struct.child_process* %75, i32 0, i32 3
  %77 = load i8*, i8** %11, align 8
  %78 = call i32 @argv_array_push(i32* %76, i8* %77)
  %79 = load %struct.child_process*, %struct.child_process** %6, align 8
  %80 = getelementptr inbounds %struct.child_process, %struct.child_process* %79, i32 0, i32 3
  %81 = load %struct.child_process*, %struct.child_process** %6, align 8
  %82 = getelementptr inbounds %struct.child_process, %struct.child_process* %81, i32 0, i32 4
  %83 = load i32, i32* %12, align 4
  %84 = load i8*, i8** %8, align 8
  %85 = load i32, i32* %9, align 4
  %86 = load i32, i32* %10, align 4
  %87 = call i32 @push_ssh_options(i32* %80, i32* %82, i32 %83, i8* %84, i32 %85, i32 %86)
  %88 = load %struct.child_process*, %struct.child_process** %6, align 8
  %89 = getelementptr inbounds %struct.child_process, %struct.child_process* %88, i32 0, i32 3
  %90 = load i8*, i8** %7, align 8
  %91 = call i32 @argv_array_push(i32* %89, i8* %90)
  ret void
}

declare dso_local i64 @looks_like_command_line_option(i8*) #1

declare dso_local i32 @die(i32, i8*) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i8* @get_ssh_command(...) #1

declare dso_local i32 @determine_ssh_variant(i8*, i32) #1

declare dso_local i8* @getenv(i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @argv_array_push(i32*, i8*) #1

declare dso_local i32 @push_ssh_options(i32*, i32*, i32, i8*, i32, i32) #1

declare dso_local i64 @run_command(%struct.child_process*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
