; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/uefisign/extr_child.c_load.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/uefisign/extr_child.c_load.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.executable = type { i8*, i64, i32, i32 }
%struct.stat = type { i64 }

@.str = private unnamed_addr constant [10 x i8] c"%s: fstat\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"%s: file is empty\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"%s: cannot malloc %zd bytes\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"%s: fread\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.executable*)* @load to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @load(%struct.executable* %0) #0 {
  %2 = alloca %struct.executable*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.stat, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.executable* %0, %struct.executable** %2, align 8
  %9 = load %struct.executable*, %struct.executable** %2, align 8
  %10 = getelementptr inbounds %struct.executable, %struct.executable* %9, i32 0, i32 3
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @fileno(i32 %11)
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* %4, align 4
  %14 = call i32 @fstat(i32 %13, %struct.stat* %5)
  store i32 %14, i32* %3, align 4
  %15 = load i32, i32* %3, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %1
  %18 = load %struct.executable*, %struct.executable** %2, align 8
  %19 = getelementptr inbounds %struct.executable, %struct.executable* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 8
  %21 = call i32 (i32, i8*, i32, ...) @err(i32 1, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %20)
  br label %22

22:                                               ; preds = %17, %1
  %23 = getelementptr inbounds %struct.stat, %struct.stat* %5, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  store i64 %24, i64* %8, align 8
  %25 = load i64, i64* %8, align 8
  %26 = icmp ule i64 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %22
  %28 = load %struct.executable*, %struct.executable** %2, align 8
  %29 = getelementptr inbounds %struct.executable, %struct.executable* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @errx(i32 1, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 %30)
  br label %32

32:                                               ; preds = %27, %22
  %33 = load i64, i64* %8, align 8
  %34 = call i8* @malloc(i64 %33)
  store i8* %34, i8** %6, align 8
  %35 = load i8*, i8** %6, align 8
  %36 = icmp eq i8* %35, null
  br i1 %36, label %37, label %43

37:                                               ; preds = %32
  %38 = load %struct.executable*, %struct.executable** %2, align 8
  %39 = getelementptr inbounds %struct.executable, %struct.executable* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 8
  %41 = load i64, i64* %8, align 8
  %42 = call i32 (i32, i8*, i32, ...) @err(i32 1, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i32 %40, i64 %41)
  br label %43

43:                                               ; preds = %37, %32
  %44 = load i8*, i8** %6, align 8
  %45 = load i64, i64* %8, align 8
  %46 = load %struct.executable*, %struct.executable** %2, align 8
  %47 = getelementptr inbounds %struct.executable, %struct.executable* %46, i32 0, i32 3
  %48 = load i32, i32* %47, align 4
  %49 = call i64 @fread(i8* %44, i64 %45, i32 1, i32 %48)
  store i64 %49, i64* %7, align 8
  %50 = load i64, i64* %7, align 8
  %51 = icmp ne i64 %50, 1
  br i1 %51, label %52, label %57

52:                                               ; preds = %43
  %53 = load %struct.executable*, %struct.executable** %2, align 8
  %54 = getelementptr inbounds %struct.executable, %struct.executable* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 8
  %56 = call i32 (i32, i8*, i32, ...) @err(i32 1, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i32 %55)
  br label %57

57:                                               ; preds = %52, %43
  %58 = load i8*, i8** %6, align 8
  %59 = load %struct.executable*, %struct.executable** %2, align 8
  %60 = getelementptr inbounds %struct.executable, %struct.executable* %59, i32 0, i32 0
  store i8* %58, i8** %60, align 8
  %61 = load i64, i64* %8, align 8
  %62 = load %struct.executable*, %struct.executable** %2, align 8
  %63 = getelementptr inbounds %struct.executable, %struct.executable* %62, i32 0, i32 1
  store i64 %61, i64* %63, align 8
  ret void
}

declare dso_local i32 @fileno(i32) #1

declare dso_local i32 @fstat(i32, %struct.stat*) #1

declare dso_local i32 @err(i32, i8*, i32, ...) #1

declare dso_local i32 @errx(i32, i8*, i32) #1

declare dso_local i8* @malloc(i64) #1

declare dso_local i64 @fread(i8*, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
