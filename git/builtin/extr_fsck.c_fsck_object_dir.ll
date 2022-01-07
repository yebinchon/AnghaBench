; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_fsck.c_fsck_object_dir.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_fsck.c_fsck_object_dir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.progress = type { i32 }

@verbose = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Checking object directory\00", align 1
@show_progress = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [28 x i8] c"Checking object directories\00", align 1
@fsck_loose = common dso_local global i32 0, align 4
@fsck_cruft = common dso_local global i32 0, align 4
@fsck_subdir = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @fsck_object_dir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fsck_object_dir(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.progress*, align 8
  store i8* %0, i8** %2, align 8
  store %struct.progress* null, %struct.progress** %3, align 8
  %4 = load i64, i64* @verbose, align 8
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %10

6:                                                ; preds = %1
  %7 = load i32, i32* @stderr, align 4
  %8 = call i32 @_(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %9 = call i32 @fprintf_ln(i32 %7, i32 %8)
  br label %10

10:                                               ; preds = %6, %1
  %11 = load i64, i64* @show_progress, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %10
  %14 = call i32 @_(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %15 = call %struct.progress* @start_progress(i32 %14, i32 256)
  store %struct.progress* %15, %struct.progress** %3, align 8
  br label %16

16:                                               ; preds = %13, %10
  %17 = load i8*, i8** %2, align 8
  %18 = load i32, i32* @fsck_loose, align 4
  %19 = load i32, i32* @fsck_cruft, align 4
  %20 = load i32, i32* @fsck_subdir, align 4
  %21 = load %struct.progress*, %struct.progress** %3, align 8
  %22 = call i32 @for_each_loose_file_in_objdir(i8* %17, i32 %18, i32 %19, i32 %20, %struct.progress* %21)
  %23 = load %struct.progress*, %struct.progress** %3, align 8
  %24 = call i32 @display_progress(%struct.progress* %23, i32 256)
  %25 = call i32 @stop_progress(%struct.progress** %3)
  ret void
}

declare dso_local i32 @fprintf_ln(i32, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local %struct.progress* @start_progress(i32, i32) #1

declare dso_local i32 @for_each_loose_file_in_objdir(i8*, i32, i32, i32, %struct.progress*) #1

declare dso_local i32 @display_progress(%struct.progress*, i32) #1

declare dso_local i32 @stop_progress(%struct.progress**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
