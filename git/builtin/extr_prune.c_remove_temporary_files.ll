; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_prune.c_remove_temporary_files.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_prune.c_remove_temporary_files.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dirent = type { i32 }

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Unable to open directory %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"tmp_\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"%s/%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @remove_temporary_files to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @remove_temporary_files(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca %struct.dirent*, align 8
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = call i32* @opendir(i8* %5)
  store i32* %6, i32** %3, align 8
  %7 = load i32*, i32** %3, align 8
  %8 = icmp ne i32* %7, null
  br i1 %8, label %13, label %9

9:                                                ; preds = %1
  %10 = load i32, i32* @stderr, align 4
  %11 = load i8*, i8** %2, align 8
  %12 = call i32 @fprintf(i32 %10, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i8* %11)
  br label %35

13:                                               ; preds = %1
  br label %14

14:                                               ; preds = %31, %13
  %15 = load i32*, i32** %3, align 8
  %16 = call %struct.dirent* @readdir(i32* %15)
  store %struct.dirent* %16, %struct.dirent** %4, align 8
  %17 = icmp ne %struct.dirent* %16, null
  br i1 %17, label %18, label %32

18:                                               ; preds = %14
  %19 = load %struct.dirent*, %struct.dirent** %4, align 8
  %20 = getelementptr inbounds %struct.dirent, %struct.dirent* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i64 @starts_with(i32 %21, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %31

24:                                               ; preds = %18
  %25 = load i8*, i8** %2, align 8
  %26 = load %struct.dirent*, %struct.dirent** %4, align 8
  %27 = getelementptr inbounds %struct.dirent, %struct.dirent* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @mkpath(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8* %25, i32 %28)
  %30 = call i32 @prune_tmp_file(i32 %29)
  br label %31

31:                                               ; preds = %24, %18
  br label %14

32:                                               ; preds = %14
  %33 = load i32*, i32** %3, align 8
  %34 = call i32 @closedir(i32* %33)
  br label %35

35:                                               ; preds = %32, %9
  ret void
}

declare dso_local i32* @opendir(i8*) #1

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

declare dso_local %struct.dirent* @readdir(i32*) #1

declare dso_local i64 @starts_with(i32, i8*) #1

declare dso_local i32 @prune_tmp_file(i32) #1

declare dso_local i32 @mkpath(i8*, i8*, i32) #1

declare dso_local i32 @closedir(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
