; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_gc.c_add_repack_all_option.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_gc.c_add_repack_all_option.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.string_list = type { i32 }

@prune_expire = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [4 x i8] c"now\00", align 1
@repack = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"-a\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"-A\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"--unpack-unreachable=%s\00", align 1
@keep_one_pack = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.string_list*)* @add_repack_all_option to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @add_repack_all_option(%struct.string_list* %0) #0 {
  %2 = alloca %struct.string_list*, align 8
  store %struct.string_list* %0, %struct.string_list** %2, align 8
  %3 = load i64, i64* @prune_expire, align 8
  %4 = icmp ne i64 %3, 0
  br i1 %4, label %5, label %11

5:                                                ; preds = %1
  %6 = load i64, i64* @prune_expire, align 8
  %7 = call i32 @strcmp(i64 %6, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %11, label %9

9:                                                ; preds = %5
  %10 = call i32 @argv_array_push(i32* @repack, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  br label %19

11:                                               ; preds = %5, %1
  %12 = call i32 @argv_array_push(i32* @repack, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  %13 = load i64, i64* @prune_expire, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %11
  %16 = load i64, i64* @prune_expire, align 8
  %17 = call i32 @argv_array_pushf(i32* @repack, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0), i64 %16)
  br label %18

18:                                               ; preds = %15, %11
  br label %19

19:                                               ; preds = %18, %9
  %20 = load %struct.string_list*, %struct.string_list** %2, align 8
  %21 = icmp ne %struct.string_list* %20, null
  br i1 %21, label %22, label %26

22:                                               ; preds = %19
  %23 = load %struct.string_list*, %struct.string_list** %2, align 8
  %24 = load i32, i32* @keep_one_pack, align 4
  %25 = call i32 @for_each_string_list(%struct.string_list* %23, i32 %24, i32* null)
  br label %26

26:                                               ; preds = %22, %19
  ret void
}

declare dso_local i32 @strcmp(i64, i8*) #1

declare dso_local i32 @argv_array_push(i32*, i8*) #1

declare dso_local i32 @argv_array_pushf(i32*, i8*, i64) #1

declare dso_local i32 @for_each_string_list(%struct.string_list*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
