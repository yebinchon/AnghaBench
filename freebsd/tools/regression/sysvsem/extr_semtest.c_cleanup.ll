; ModuleID = '/home/carl/AnghaBench/freebsd/tools/regression/sysvsem/extr_semtest.c_cleanup.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/regression/sysvsem/extr_semtest.c_cleanup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@child_pid = common dso_local global i64 0, align 8
@sender_semid = common dso_local global i32 0, align 4
@IPC_RMID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"semctl IPC_RMID\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cleanup() #0 {
  %1 = load i64, i64* @child_pid, align 8
  %2 = icmp ne i64 %1, 0
  br i1 %2, label %3, label %14

3:                                                ; preds = %0
  %4 = load i32, i32* @sender_semid, align 4
  %5 = icmp ne i32 %4, -1
  br i1 %5, label %6, label %14

6:                                                ; preds = %3
  %7 = load i32, i32* @sender_semid, align 4
  %8 = load i32, i32* @IPC_RMID, align 4
  %9 = call i32 @semctl(i32 %7, i32 0, i32 %8)
  %10 = icmp eq i32 %9, -1
  br i1 %10, label %11, label %13

11:                                               ; preds = %6
  %12 = call i32 @warn(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  br label %13

13:                                               ; preds = %11, %6
  br label %14

14:                                               ; preds = %13, %3, %0
  ret void
}

declare dso_local i32 @semctl(i32, i32, i32) #1

declare dso_local i32 @warn(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
