; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/unzip/extr_unzip.c_make_parent.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/unzip/extr_unzip.c_make_parent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @make_parent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @make_parent(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.stat, align 4
  %4 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = call i8* @strrchr(i8* %5, i8 signext 47)
  store i8* %6, i8** %4, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = icmp eq i8* %7, null
  br i1 %8, label %13, label %9

9:                                                ; preds = %1
  %10 = load i8*, i8** %4, align 8
  %11 = load i8*, i8** %2, align 8
  %12 = icmp eq i8* %10, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %9, %1
  br label %34

14:                                               ; preds = %9
  %15 = load i8*, i8** %4, align 8
  store i8 0, i8* %15, align 1
  %16 = load i8*, i8** %2, align 8
  %17 = call i64 @lstat(i8* %16, %struct.stat* %3)
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %19, label %29

19:                                               ; preds = %14
  %20 = getelementptr inbounds %struct.stat, %struct.stat* %3, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i64 @S_ISDIR(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %19
  %25 = load i8*, i8** %4, align 8
  store i8 47, i8* %25, align 1
  br label %34

26:                                               ; preds = %19
  %27 = load i8*, i8** %2, align 8
  %28 = call i32 @unlink(i8* %27)
  br label %29

29:                                               ; preds = %26, %14
  %30 = load i8*, i8** %2, align 8
  call void @make_parent(i8* %30)
  %31 = load i8*, i8** %2, align 8
  %32 = call i32 @mkdir(i8* %31, i32 493)
  %33 = load i8*, i8** %4, align 8
  store i8 47, i8* %33, align 1
  br label %34

34:                                               ; preds = %29, %24, %13
  ret void
}

declare dso_local i8* @strrchr(i8*, i8 signext) #1

declare dso_local i64 @lstat(i8*, %struct.stat*) #1

declare dso_local i64 @S_ISDIR(i32) #1

declare dso_local i32 @unlink(i8*) #1

declare dso_local i32 @mkdir(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
