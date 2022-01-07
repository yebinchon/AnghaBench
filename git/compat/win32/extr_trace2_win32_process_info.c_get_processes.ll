; ModuleID = '/home/carl/AnghaBench/git/compat/win32/extr_trace2_win32_process_info.c_get_processes.c'
source_filename = "/home/carl/AnghaBench/git/compat/win32/extr_trace2_win32_process_info.c_get_processes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.json_writer = type { i32 }
%struct.TYPE_3__ = type { i8*, i64 }

@NR_PIDS_LIMIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"(cycle)\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"(truncated)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.json_writer*, i32)* @get_processes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @get_processes(%struct.json_writer* %0, i32 %1) #0 {
  %3 = alloca %struct.json_writer*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_3__, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.json_writer* %0, %struct.json_writer** %3, align 8
  store i32 %1, i32* %4, align 4
  %12 = load i32, i32* @NR_PIDS_LIMIT, align 4
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %7, align 8
  %15 = alloca i64, i64 %13, align 16
  store i64 %13, i64* %8, align 8
  store i32 0, i32* %10, align 4
  %16 = call i64 (...) @GetCurrentProcessId()
  store i64 %16, i64* %6, align 8
  br label %17

17:                                               ; preds = %56, %2
  %18 = load i64, i64* %6, align 8
  %19 = load i32, i32* %4, align 4
  %20 = call i64 @find_pid(i64 %18, i32 %19, %struct.TYPE_3__* %5)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %64

22:                                               ; preds = %17
  %23 = load i32, i32* %10, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %22
  %26 = load %struct.json_writer*, %struct.json_writer** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 0
  %28 = load i8*, i8** %27, align 8
  %29 = call i32 @jw_array_string(%struct.json_writer* %26, i8* %28)
  br label %30

30:                                               ; preds = %25, %22
  store i32 0, i32* %9, align 4
  br label %31

31:                                               ; preds = %46, %30
  %32 = load i32, i32* %9, align 4
  %33 = load i32, i32* %10, align 4
  %34 = icmp slt i32 %32, %33
  br i1 %34, label %35, label %49

35:                                               ; preds = %31
  %36 = load i64, i64* %6, align 8
  %37 = load i32, i32* %9, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i64, i64* %15, i64 %38
  %40 = load i64, i64* %39, align 8
  %41 = icmp eq i64 %36, %40
  br i1 %41, label %42, label %45

42:                                               ; preds = %35
  %43 = load %struct.json_writer*, %struct.json_writer** %3, align 8
  %44 = call i32 @jw_array_string(%struct.json_writer* %43, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %11, align 4
  br label %65

45:                                               ; preds = %35
  br label %46

46:                                               ; preds = %45
  %47 = load i32, i32* %9, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %9, align 4
  br label %31

49:                                               ; preds = %31
  %50 = load i32, i32* %10, align 4
  %51 = load i32, i32* @NR_PIDS_LIMIT, align 4
  %52 = icmp eq i32 %50, %51
  br i1 %52, label %53, label %56

53:                                               ; preds = %49
  %54 = load %struct.json_writer*, %struct.json_writer** %3, align 8
  %55 = call i32 @jw_array_string(%struct.json_writer* %54, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  store i32 1, i32* %11, align 4
  br label %65

56:                                               ; preds = %49
  %57 = load i64, i64* %6, align 8
  %58 = load i32, i32* %10, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %10, align 4
  %60 = sext i32 %58 to i64
  %61 = getelementptr inbounds i64, i64* %15, i64 %60
  store i64 %57, i64* %61, align 8
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  store i64 %63, i64* %6, align 8
  br label %17

64:                                               ; preds = %17
  store i32 0, i32* %11, align 4
  br label %65

65:                                               ; preds = %64, %53, %42
  %66 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %66)
  %67 = load i32, i32* %11, align 4
  switch i32 %67, label %69 [
    i32 0, label %68
    i32 1, label %68
  ]

68:                                               ; preds = %65, %65
  ret void

69:                                               ; preds = %65
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @GetCurrentProcessId(...) #2

declare dso_local i64 @find_pid(i64, i32, %struct.TYPE_3__*) #2

declare dso_local i32 @jw_array_string(%struct.json_writer*, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
