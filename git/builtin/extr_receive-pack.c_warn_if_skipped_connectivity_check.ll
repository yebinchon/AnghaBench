; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_receive-pack.c_warn_if_skipped_connectivity_check.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_receive-pack.c_warn_if_skipped_connectivity_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.command = type { i64, i32, %struct.command* }
%struct.shallow_info = type { i64* }

@.str = private unnamed_addr constant [51 x i8] c"BUG: connectivity check has not been run on ref %s\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"connectivity check skipped???\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.command*, %struct.shallow_info*)* @warn_if_skipped_connectivity_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @warn_if_skipped_connectivity_check(%struct.command* %0, %struct.shallow_info* %1) #0 {
  %3 = alloca %struct.command*, align 8
  %4 = alloca %struct.shallow_info*, align 8
  %5 = alloca %struct.command*, align 8
  %6 = alloca i32, align 4
  store %struct.command* %0, %struct.command** %3, align 8
  store %struct.shallow_info* %1, %struct.shallow_info** %4, align 8
  store i32 1, i32* %6, align 4
  %7 = load %struct.command*, %struct.command** %3, align 8
  store %struct.command* %7, %struct.command** %5, align 8
  br label %8

8:                                                ; preds = %31, %2
  %9 = load %struct.command*, %struct.command** %5, align 8
  %10 = icmp ne %struct.command* %9, null
  br i1 %10, label %11, label %35

11:                                               ; preds = %8
  %12 = load %struct.command*, %struct.command** %5, align 8
  %13 = call i64 @should_process_cmd(%struct.command* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %30

15:                                               ; preds = %11
  %16 = load %struct.shallow_info*, %struct.shallow_info** %4, align 8
  %17 = getelementptr inbounds %struct.shallow_info, %struct.shallow_info* %16, i32 0, i32 0
  %18 = load i64*, i64** %17, align 8
  %19 = load %struct.command*, %struct.command** %5, align 8
  %20 = getelementptr inbounds %struct.command, %struct.command* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = getelementptr inbounds i64, i64* %18, i64 %21
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %15
  %26 = load %struct.command*, %struct.command** %5, align 8
  %27 = getelementptr inbounds %struct.command, %struct.command* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @error(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i32 %28)
  store i32 0, i32* %6, align 4
  br label %30

30:                                               ; preds = %25, %15, %11
  br label %31

31:                                               ; preds = %30
  %32 = load %struct.command*, %struct.command** %5, align 8
  %33 = getelementptr inbounds %struct.command, %struct.command* %32, i32 0, i32 2
  %34 = load %struct.command*, %struct.command** %33, align 8
  store %struct.command* %34, %struct.command** %5, align 8
  br label %8

35:                                               ; preds = %8
  %36 = load i32, i32* %6, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %40, label %38

38:                                               ; preds = %35
  %39 = call i32 @BUG(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  br label %40

40:                                               ; preds = %38, %35
  ret void
}

declare dso_local i64 @should_process_cmd(%struct.command*) #1

declare dso_local i32 @error(i8*, i32) #1

declare dso_local i32 @BUG(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
