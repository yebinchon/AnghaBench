; ModuleID = '/home/carl/AnghaBench/freebsd/tests/sys/file/extr_closefrom_test.c_highest_fd.c'
source_filename = "/home/carl/AnghaBench/freebsd/tests/sys/file/extr_closefrom_test.c_highest_fd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kinfo_file = type { i32 }

@.str = private unnamed_addr constant [14 x i8] c"kinfo_getfile\00", align 1
@INT_MIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @highest_fd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @highest_fd() #0 {
  %1 = alloca %struct.kinfo_file*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = call i32 (...) @getpid()
  %6 = call %struct.kinfo_file* @kinfo_getfile(i32 %5, i32* %2)
  store %struct.kinfo_file* %6, %struct.kinfo_file** %1, align 8
  %7 = load %struct.kinfo_file*, %struct.kinfo_file** %1, align 8
  %8 = icmp eq %struct.kinfo_file* %7, null
  br i1 %8, label %9, label %11

9:                                                ; preds = %0
  %10 = call i32 @fail_err(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  br label %11

11:                                               ; preds = %9, %0
  %12 = load i32, i32* @INT_MIN, align 4
  store i32 %12, i32* %4, align 4
  store i32 0, i32* %3, align 4
  br label %13

13:                                               ; preds = %34, %11
  %14 = load i32, i32* %3, align 4
  %15 = load i32, i32* %2, align 4
  %16 = icmp slt i32 %14, %15
  br i1 %16, label %17, label %37

17:                                               ; preds = %13
  %18 = load %struct.kinfo_file*, %struct.kinfo_file** %1, align 8
  %19 = load i32, i32* %3, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.kinfo_file, %struct.kinfo_file* %18, i64 %20
  %22 = getelementptr inbounds %struct.kinfo_file, %struct.kinfo_file* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* %4, align 4
  %25 = icmp sgt i32 %23, %24
  br i1 %25, label %26, label %33

26:                                               ; preds = %17
  %27 = load %struct.kinfo_file*, %struct.kinfo_file** %1, align 8
  %28 = load i32, i32* %3, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.kinfo_file, %struct.kinfo_file* %27, i64 %29
  %31 = getelementptr inbounds %struct.kinfo_file, %struct.kinfo_file* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %4, align 4
  br label %33

33:                                               ; preds = %26, %17
  br label %34

34:                                               ; preds = %33
  %35 = load i32, i32* %3, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %3, align 4
  br label %13

37:                                               ; preds = %13
  %38 = load %struct.kinfo_file*, %struct.kinfo_file** %1, align 8
  %39 = call i32 @free(%struct.kinfo_file* %38)
  %40 = load i32, i32* %4, align 4
  ret i32 %40
}

declare dso_local %struct.kinfo_file* @kinfo_getfile(i32, i32*) #1

declare dso_local i32 @getpid(...) #1

declare dso_local i32 @fail_err(i8*) #1

declare dso_local i32 @free(%struct.kinfo_file*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
