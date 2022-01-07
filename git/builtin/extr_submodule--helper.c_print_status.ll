; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_submodule--helper.c_print_status.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_submodule--helper.c_print_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.object_id = type { i32 }

@OPT_QUIET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"%c%s %s\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c" (%s)\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i8, i8*, %struct.object_id*, i8*)* @print_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_status(i32 %0, i8 signext %1, i8* %2, %struct.object_id* %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8, align 1
  %8 = alloca i8*, align 8
  %9 = alloca %struct.object_id*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  store i32 %0, i32* %6, align 4
  store i8 %1, i8* %7, align 1
  store i8* %2, i8** %8, align 8
  store %struct.object_id* %3, %struct.object_id** %9, align 8
  store i8* %4, i8** %10, align 8
  %12 = load i32, i32* %6, align 4
  %13 = load i32, i32* @OPT_QUIET, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %5
  br label %44

17:                                               ; preds = %5
  %18 = load i8, i8* %7, align 1
  %19 = sext i8 %18 to i32
  %20 = load %struct.object_id*, %struct.object_id** %9, align 8
  %21 = call i8* @oid_to_hex(%struct.object_id* %20)
  %22 = load i8*, i8** %10, align 8
  %23 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %19, i8* %21, i8* %22)
  %24 = load i8, i8* %7, align 1
  %25 = sext i8 %24 to i32
  %26 = icmp eq i32 %25, 32
  br i1 %26, label %31, label %27

27:                                               ; preds = %17
  %28 = load i8, i8* %7, align 1
  %29 = sext i8 %28 to i32
  %30 = icmp eq i32 %29, 43
  br i1 %30, label %31, label %42

31:                                               ; preds = %27, %17
  %32 = load i8*, i8** %8, align 8
  %33 = load %struct.object_id*, %struct.object_id** %9, align 8
  %34 = call i8* @oid_to_hex(%struct.object_id* %33)
  %35 = call i8* @compute_rev_name(i8* %32, i8* %34)
  store i8* %35, i8** %11, align 8
  %36 = load i8*, i8** %11, align 8
  %37 = icmp ne i8* %36, null
  br i1 %37, label %38, label %41

38:                                               ; preds = %31
  %39 = load i8*, i8** %11, align 8
  %40 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* %39)
  br label %41

41:                                               ; preds = %38, %31
  br label %42

42:                                               ; preds = %41, %27
  %43 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  br label %44

44:                                               ; preds = %42, %16
  ret void
}

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i8* @oid_to_hex(%struct.object_id*) #1

declare dso_local i8* @compute_rev_name(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
