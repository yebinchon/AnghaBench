; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_commit.c_determine_whence.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_commit.c_determine_whence.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wt_status = type { i32 }

@the_repository = common dso_local global i32 0, align 4
@FROM_MERGE = common dso_local global i32 0, align 4
@whence = common dso_local global i32 0, align 4
@FROM_CHERRY_PICK = common dso_local global i32 0, align 4
@sequencer_in_use = common dso_local global i32 0, align 4
@FROM_COMMIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wt_status*)* @determine_whence to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @determine_whence(%struct.wt_status* %0) #0 {
  %2 = alloca %struct.wt_status*, align 8
  store %struct.wt_status* %0, %struct.wt_status** %2, align 8
  %3 = load i32, i32* @the_repository, align 4
  %4 = call i32 @git_path_merge_head(i32 %3)
  %5 = call i64 @file_exists(i32 %4)
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %9

7:                                                ; preds = %1
  %8 = load i32, i32* @FROM_MERGE, align 4
  store i32 %8, i32* @whence, align 4
  br label %24

9:                                                ; preds = %1
  %10 = load i32, i32* @the_repository, align 4
  %11 = call i32 @git_path_cherry_pick_head(i32 %10)
  %12 = call i64 @file_exists(i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %21

14:                                               ; preds = %9
  %15 = load i32, i32* @FROM_CHERRY_PICK, align 4
  store i32 %15, i32* @whence, align 4
  %16 = call i32 (...) @git_path_seq_dir()
  %17 = call i64 @file_exists(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %14
  store i32 1, i32* @sequencer_in_use, align 4
  br label %20

20:                                               ; preds = %19, %14
  br label %23

21:                                               ; preds = %9
  %22 = load i32, i32* @FROM_COMMIT, align 4
  store i32 %22, i32* @whence, align 4
  br label %23

23:                                               ; preds = %21, %20
  br label %24

24:                                               ; preds = %23, %7
  %25 = load %struct.wt_status*, %struct.wt_status** %2, align 8
  %26 = icmp ne %struct.wt_status* %25, null
  br i1 %26, label %27, label %31

27:                                               ; preds = %24
  %28 = load i32, i32* @whence, align 4
  %29 = load %struct.wt_status*, %struct.wt_status** %2, align 8
  %30 = getelementptr inbounds %struct.wt_status, %struct.wt_status* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 4
  br label %31

31:                                               ; preds = %27, %24
  ret void
}

declare dso_local i64 @file_exists(i32) #1

declare dso_local i32 @git_path_merge_head(i32) #1

declare dso_local i32 @git_path_cherry_pick_head(i32) #1

declare dso_local i32 @git_path_seq_dir(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
