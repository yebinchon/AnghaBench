; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_init-db.c_separate_git_dir.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_init-db.c_separate_git_dir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i64 }

@.str = private unnamed_addr constant [30 x i8] c"unable to handle file type %d\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"unable to move %s to %s\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"gitdir: %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*)* @separate_git_dir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @separate_git_dir(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.stat, align 8
  %6 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = call i32 @stat(i8* %7, %struct.stat* %5)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %43, label %10

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.stat, %struct.stat* %5, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = call i64 @S_ISREG(i64 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %10
  %16 = load i8*, i8** %4, align 8
  %17 = call i8* @read_gitfile(i8* %16)
  store i8* %17, i8** %6, align 8
  br label %32

18:                                               ; preds = %10
  %19 = getelementptr inbounds %struct.stat, %struct.stat* %5, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = call i64 @S_ISDIR(i64 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %18
  %24 = load i8*, i8** %4, align 8
  store i8* %24, i8** %6, align 8
  br label %31

25:                                               ; preds = %18
  %26 = call i32 @_(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %27 = getelementptr inbounds %struct.stat, %struct.stat* %5, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = trunc i64 %28 to i32
  %30 = call i32 @die(i32 %26, i32 %29)
  br label %31

31:                                               ; preds = %25, %23
  br label %32

32:                                               ; preds = %31, %15
  %33 = load i8*, i8** %6, align 8
  %34 = load i8*, i8** %3, align 8
  %35 = call i64 @rename(i8* %33, i8* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %32
  %38 = call i32 @_(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %39 = load i8*, i8** %6, align 8
  %40 = load i8*, i8** %3, align 8
  %41 = call i32 @die_errno(i32 %38, i8* %39, i8* %40)
  br label %42

42:                                               ; preds = %37, %32
  br label %43

43:                                               ; preds = %42, %2
  %44 = load i8*, i8** %4, align 8
  %45 = load i8*, i8** %3, align 8
  %46 = call i32 @write_file(i8* %44, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i8* %45)
  ret void
}

declare dso_local i32 @stat(i8*, %struct.stat*) #1

declare dso_local i64 @S_ISREG(i64) #1

declare dso_local i8* @read_gitfile(i8*) #1

declare dso_local i64 @S_ISDIR(i64) #1

declare dso_local i32 @die(i32, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i64 @rename(i8*, i8*) #1

declare dso_local i32 @die_errno(i32, i8*, i8*) #1

declare dso_local i32 @write_file(i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
