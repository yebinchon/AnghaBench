; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/truss/extr_setup.c_start_tracing.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/truss/extr_setup.c_start_tracing.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.trussinfo = type { i32 }

@PT_ATTACH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"can not attach to target process\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"Unexpect stop in waitpid\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @start_tracing(%struct.trussinfo* %0, i32 %1) #0 {
  %3 = alloca %struct.trussinfo*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.trussinfo* %0, %struct.trussinfo** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 10, i32* %6, align 4
  br label %7

7:                                                ; preds = %19, %2
  %8 = load i32, i32* @PT_ATTACH, align 4
  %9 = load i32, i32* %4, align 4
  %10 = call i32 @ptrace(i32 %8, i32 %9, i32* null, i32 0)
  store i32 %10, i32* %5, align 4
  %11 = call i32 @usleep(i32 200)
  br label %12

12:                                               ; preds = %7
  %13 = load i32, i32* %5, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %12
  %16 = load i32, i32* %6, align 4
  %17 = add nsw i32 %16, -1
  store i32 %17, i32* %6, align 4
  %18 = icmp sgt i32 %16, 0
  br label %19

19:                                               ; preds = %15, %12
  %20 = phi i1 [ false, %12 ], [ %18, %15 ]
  br i1 %20, label %7, label %21

21:                                               ; preds = %19
  %22 = load i32, i32* %5, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %21
  %25 = call i32 @err(i32 1, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  br label %26

26:                                               ; preds = %24, %21
  %27 = load i32, i32* %4, align 4
  %28 = call i64 @waitpid(i32 %27, i32* null, i32 0)
  %29 = icmp slt i64 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %26
  %31 = call i32 @err(i32 1, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  br label %32

32:                                               ; preds = %30, %26
  %33 = load %struct.trussinfo*, %struct.trussinfo** %3, align 8
  %34 = load i32, i32* %4, align 4
  %35 = call i32 @new_proc(%struct.trussinfo* %33, i32 %34, i32 0)
  ret void
}

declare dso_local i32 @ptrace(i32, i32, i32*, i32) #1

declare dso_local i32 @usleep(i32) #1

declare dso_local i32 @err(i32, i8*) #1

declare dso_local i64 @waitpid(i32, i32*, i32) #1

declare dso_local i32 @new_proc(%struct.trussinfo*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
