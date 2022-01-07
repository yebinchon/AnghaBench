; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_witness.c_witness_thread_exit.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_witness.c_witness_thread_exit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { %struct.lock_list_entry* }
%struct.lock_list_entry = type { i32, i32*, %struct.lock_list_entry* }

@panicstr = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [50 x i8] c"Thread %p exiting with the following locks held:\0A\00", align 1
@.str.1 = private unnamed_addr constant [48 x i8] c"Thread %p cannot exit while holding sleeplocks\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @witness_thread_exit(%struct.thread* %0) #0 {
  %2 = alloca %struct.thread*, align 8
  %3 = alloca %struct.lock_list_entry*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %2, align 8
  %6 = load %struct.thread*, %struct.thread** %2, align 8
  %7 = getelementptr inbounds %struct.thread, %struct.thread* %6, i32 0, i32 0
  %8 = load %struct.lock_list_entry*, %struct.lock_list_entry** %7, align 8
  store %struct.lock_list_entry* %8, %struct.lock_list_entry** %3, align 8
  %9 = load %struct.lock_list_entry*, %struct.lock_list_entry** %3, align 8
  %10 = icmp eq %struct.lock_list_entry* %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %1
  %12 = load i32*, i32** @panicstr, align 8
  %13 = icmp ne i32* %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %11, %1
  br label %62

15:                                               ; preds = %11
  %16 = load %struct.lock_list_entry*, %struct.lock_list_entry** %3, align 8
  %17 = getelementptr inbounds %struct.lock_list_entry, %struct.lock_list_entry* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %59

20:                                               ; preds = %15
  store i32 0, i32* %5, align 4
  br label %21

21:                                               ; preds = %52, %20
  %22 = load %struct.lock_list_entry*, %struct.lock_list_entry** %3, align 8
  %23 = icmp ne %struct.lock_list_entry* %22, null
  br i1 %23, label %24, label %56

24:                                               ; preds = %21
  %25 = load %struct.lock_list_entry*, %struct.lock_list_entry** %3, align 8
  %26 = getelementptr inbounds %struct.lock_list_entry, %struct.lock_list_entry* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = sub nsw i32 %27, 1
  store i32 %28, i32* %4, align 4
  br label %29

29:                                               ; preds = %48, %24
  %30 = load i32, i32* %4, align 4
  %31 = icmp sge i32 %30, 0
  br i1 %31, label %32, label %51

32:                                               ; preds = %29
  %33 = load i32, i32* %5, align 4
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %32
  %36 = load %struct.thread*, %struct.thread** %2, align 8
  %37 = call i32 @witness_output(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), %struct.thread* %36)
  br label %38

38:                                               ; preds = %35, %32
  %39 = load i32, i32* %5, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %5, align 4
  %41 = load %struct.lock_list_entry*, %struct.lock_list_entry** %3, align 8
  %42 = getelementptr inbounds %struct.lock_list_entry, %struct.lock_list_entry* %41, i32 0, i32 1
  %43 = load i32*, i32** %42, align 8
  %44 = load i32, i32* %4, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %43, i64 %45
  %47 = call i32 @witness_list_lock(i32* %46, i32 (i8*, %struct.thread*)* @witness_output)
  br label %48

48:                                               ; preds = %38
  %49 = load i32, i32* %4, align 4
  %50 = add nsw i32 %49, -1
  store i32 %50, i32* %4, align 4
  br label %29

51:                                               ; preds = %29
  br label %52

52:                                               ; preds = %51
  %53 = load %struct.lock_list_entry*, %struct.lock_list_entry** %3, align 8
  %54 = getelementptr inbounds %struct.lock_list_entry, %struct.lock_list_entry* %53, i32 0, i32 2
  %55 = load %struct.lock_list_entry*, %struct.lock_list_entry** %54, align 8
  store %struct.lock_list_entry* %55, %struct.lock_list_entry** %3, align 8
  br label %21

56:                                               ; preds = %21
  %57 = load %struct.thread*, %struct.thread** %2, align 8
  %58 = call i32 @kassert_panic(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0), %struct.thread* %57)
  br label %59

59:                                               ; preds = %56, %15
  %60 = load %struct.lock_list_entry*, %struct.lock_list_entry** %3, align 8
  %61 = call i32 @witness_lock_list_free(%struct.lock_list_entry* %60)
  br label %62

62:                                               ; preds = %59, %14
  ret void
}

declare dso_local i32 @witness_output(i8*, %struct.thread*) #1

declare dso_local i32 @witness_list_lock(i32*, i32 (i8*, %struct.thread*)*) #1

declare dso_local i32 @kassert_panic(i8*, %struct.thread*) #1

declare dso_local i32 @witness_lock_list_free(%struct.lock_list_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
