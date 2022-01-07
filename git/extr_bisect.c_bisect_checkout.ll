; ModuleID = '/home/carl/AnghaBench/git/extr_bisect.c_bisect_checkout.c'
source_filename = "/home/carl/AnghaBench/git/extr_bisect.c_bisect_checkout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }
%struct.object_id = type { i32 }

@GIT_MAX_HEXSZ = common dso_local global i32 0, align 4
@the_hash_algo = common dso_local global %struct.TYPE_2__* null, align 8
@.str = private unnamed_addr constant [20 x i8] c"BISECT_EXPECTED_REV\00", align 1
@UPDATE_REFS_DIE_ON_ERR = common dso_local global i32 0, align 4
@argv_checkout = common dso_local global i8** null, align 8
@.str.1 = private unnamed_addr constant [12 x i8] c"BISECT_HEAD\00", align 1
@RUN_GIT_CMD = common dso_local global i32 0, align 4
@argv_show_branch = common dso_local global i8** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.object_id*, i32)* @bisect_checkout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bisect_checkout(%struct.object_id* %0, i32 %1) #0 {
  %3 = alloca %struct.object_id*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.object_id* %0, %struct.object_id** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load i32, i32* @GIT_MAX_HEXSZ, align 4
  %9 = add nsw i32 %8, 1
  %10 = zext i32 %9 to i64
  %11 = call i8* @llvm.stacksave()
  store i8* %11, i8** %5, align 8
  %12 = alloca i8, i64 %10, align 16
  store i64 %10, i64* %6, align 8
  %13 = load %struct.object_id*, %struct.object_id** %3, align 8
  %14 = call i32 @oid_to_hex(%struct.object_id* %13)
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** @the_hash_algo, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = add nsw i64 %17, 1
  %19 = call i32 @memcpy(i8* %12, i32 %14, i64 %18)
  %20 = load %struct.object_id*, %struct.object_id** %3, align 8
  %21 = load i32, i32* @UPDATE_REFS_DIE_ON_ERR, align 4
  %22 = call i32 @update_ref(i32* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), %struct.object_id* %20, i32* null, i32 0, i32 %21)
  %23 = load i8**, i8*** @argv_checkout, align 8
  %24 = getelementptr inbounds i8*, i8** %23, i64 2
  store i8* %12, i8** %24, align 8
  %25 = load i32, i32* %4, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %2
  %28 = load %struct.object_id*, %struct.object_id** %3, align 8
  %29 = load i32, i32* @UPDATE_REFS_DIE_ON_ERR, align 4
  %30 = call i32 @update_ref(i32* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), %struct.object_id* %28, i32* null, i32 0, i32 %29)
  br label %41

31:                                               ; preds = %2
  %32 = load i8**, i8*** @argv_checkout, align 8
  %33 = load i32, i32* @RUN_GIT_CMD, align 4
  %34 = call i32 @run_command_v_opt(i8** %32, i32 %33)
  store i32 %34, i32* %7, align 4
  %35 = load i32, i32* %7, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %31
  %38 = load i32, i32* %7, align 4
  %39 = call i32 @exit(i32 %38) #4
  unreachable

40:                                               ; preds = %31
  br label %41

41:                                               ; preds = %40, %27
  %42 = load i8**, i8*** @argv_show_branch, align 8
  %43 = getelementptr inbounds i8*, i8** %42, i64 1
  store i8* %12, i8** %43, align 8
  %44 = load i8**, i8*** @argv_show_branch, align 8
  %45 = load i32, i32* @RUN_GIT_CMD, align 4
  %46 = call i32 @run_command_v_opt(i8** %44, i32 %45)
  %47 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %47)
  ret i32 %46
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @memcpy(i8*, i32, i64) #2

declare dso_local i32 @oid_to_hex(%struct.object_id*) #2

declare dso_local i32 @update_ref(i32*, i8*, %struct.object_id*, i32*, i32, i32) #2

declare dso_local i32 @run_command_v_opt(i8**, i32) #2

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #3

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
