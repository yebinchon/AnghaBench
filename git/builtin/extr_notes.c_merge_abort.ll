; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_notes.c_merge_abort.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_notes.c_merge_abort.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.notes_merge_options = type { i32 }

@.str = private unnamed_addr constant [20 x i8] c"NOTES_MERGE_PARTIAL\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"failed to delete ref NOTES_MERGE_PARTIAL\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"NOTES_MERGE_REF\00", align 1
@REF_NO_DEREF = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [37 x i8] c"failed to delete ref NOTES_MERGE_REF\00", align 1
@.str.4 = private unnamed_addr constant [44 x i8] c"failed to remove 'git notes merge' worktree\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.notes_merge_options*)* @merge_abort to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @merge_abort(%struct.notes_merge_options* %0) #0 {
  %2 = alloca %struct.notes_merge_options*, align 8
  %3 = alloca i32, align 4
  store %struct.notes_merge_options* %0, %struct.notes_merge_options** %2, align 8
  store i32 0, i32* %3, align 4
  %4 = call i64 @delete_ref(i32* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32* null, i32 0)
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %13

6:                                                ; preds = %1
  %7 = call i32 @_(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  %8 = call i64 @error(i32 %7)
  %9 = load i32, i32* %3, align 4
  %10 = sext i32 %9 to i64
  %11 = add nsw i64 %10, %8
  %12 = trunc i64 %11 to i32
  store i32 %12, i32* %3, align 4
  br label %13

13:                                               ; preds = %6, %1
  %14 = load i32, i32* @REF_NO_DEREF, align 4
  %15 = call i64 @delete_ref(i32* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i32* null, i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %24

17:                                               ; preds = %13
  %18 = call i32 @_(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0))
  %19 = call i64 @error(i32 %18)
  %20 = load i32, i32* %3, align 4
  %21 = sext i32 %20 to i64
  %22 = add nsw i64 %21, %19
  %23 = trunc i64 %22 to i32
  store i32 %23, i32* %3, align 4
  br label %24

24:                                               ; preds = %17, %13
  %25 = load %struct.notes_merge_options*, %struct.notes_merge_options** %2, align 8
  %26 = call i64 @notes_merge_abort(%struct.notes_merge_options* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %35

28:                                               ; preds = %24
  %29 = call i32 @_(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.4, i64 0, i64 0))
  %30 = call i64 @error(i32 %29)
  %31 = load i32, i32* %3, align 4
  %32 = sext i32 %31 to i64
  %33 = add nsw i64 %32, %30
  %34 = trunc i64 %33 to i32
  store i32 %34, i32* %3, align 4
  br label %35

35:                                               ; preds = %28, %24
  %36 = load i32, i32* %3, align 4
  ret i32 %36
}

declare dso_local i64 @delete_ref(i32*, i8*, i32*, i32) #1

declare dso_local i64 @error(i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i64 @notes_merge_abort(%struct.notes_merge_options*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
