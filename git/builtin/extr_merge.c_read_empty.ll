; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_merge.c_read_empty.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_merge.c_read_empty.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.object_id = type { i32 }

@.str = private unnamed_addr constant [10 x i8] c"read-tree\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"-v\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"-m\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"-u\00", align 1
@RUN_GIT_CMD = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [17 x i8] c"read-tree failed\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.object_id*, i32)* @read_empty to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @read_empty(%struct.object_id* %0, i32 %1) #0 {
  %3 = alloca %struct.object_id*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca [7 x i8*], align 16
  store %struct.object_id* %0, %struct.object_id** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %7 = load i32, i32* %5, align 4
  %8 = add nsw i32 %7, 1
  store i32 %8, i32* %5, align 4
  %9 = sext i32 %7 to i64
  %10 = getelementptr inbounds [7 x i8*], [7 x i8*]* %6, i64 0, i64 %9
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8** %10, align 8
  %11 = load i32, i32* %4, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %18

13:                                               ; preds = %2
  %14 = load i32, i32* %5, align 4
  %15 = add nsw i32 %14, 1
  store i32 %15, i32* %5, align 4
  %16 = sext i32 %14 to i64
  %17 = getelementptr inbounds [7 x i8*], [7 x i8*]* %6, i64 0, i64 %16
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8** %17, align 8
  br label %18

18:                                               ; preds = %13, %2
  %19 = load i32, i32* %5, align 4
  %20 = add nsw i32 %19, 1
  store i32 %20, i32* %5, align 4
  %21 = sext i32 %19 to i64
  %22 = getelementptr inbounds [7 x i8*], [7 x i8*]* %6, i64 0, i64 %21
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8** %22, align 8
  %23 = load i32, i32* %5, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %5, align 4
  %25 = sext i32 %23 to i64
  %26 = getelementptr inbounds [7 x i8*], [7 x i8*]* %6, i64 0, i64 %25
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8** %26, align 8
  %27 = call i8* (...) @empty_tree_oid_hex()
  %28 = load i32, i32* %5, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %5, align 4
  %30 = sext i32 %28 to i64
  %31 = getelementptr inbounds [7 x i8*], [7 x i8*]* %6, i64 0, i64 %30
  store i8* %27, i8** %31, align 8
  %32 = load %struct.object_id*, %struct.object_id** %3, align 8
  %33 = call i8* @oid_to_hex(%struct.object_id* %32)
  %34 = load i32, i32* %5, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %5, align 4
  %36 = sext i32 %34 to i64
  %37 = getelementptr inbounds [7 x i8*], [7 x i8*]* %6, i64 0, i64 %36
  store i8* %33, i8** %37, align 8
  %38 = load i32, i32* %5, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds [7 x i8*], [7 x i8*]* %6, i64 0, i64 %39
  store i8* null, i8** %40, align 8
  %41 = getelementptr inbounds [7 x i8*], [7 x i8*]* %6, i64 0, i64 0
  %42 = load i32, i32* @RUN_GIT_CMD, align 4
  %43 = call i64 @run_command_v_opt(i8** %41, i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %18
  %46 = call i32 @_(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0))
  %47 = call i32 @die(i32 %46)
  br label %48

48:                                               ; preds = %45, %18
  ret void
}

declare dso_local i8* @empty_tree_oid_hex(...) #1

declare dso_local i8* @oid_to_hex(%struct.object_id*) #1

declare dso_local i64 @run_command_v_opt(i8**, i32) #1

declare dso_local i32 @die(i32) #1

declare dso_local i32 @_(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
