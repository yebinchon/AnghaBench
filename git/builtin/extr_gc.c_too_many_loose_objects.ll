; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_gc.c_too_many_loose_objects.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_gc.c_too_many_loose_objects.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.dirent = type { i8* }

@the_hash_algo = common dso_local global %struct.TYPE_2__* null, align 8
@.str = private unnamed_addr constant [11 x i8] c"objects/17\00", align 1
@gc_auto_threshold = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"0123456789abcdef\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @too_many_loose_objects to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @too_many_loose_objects() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32*, align 8
  %3 = alloca %struct.dirent*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** @the_hash_algo, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = sub nsw i32 %10, 2
  store i32 %11, i32* %7, align 4
  %12 = call i32 @git_path(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %13 = call i32* @opendir(i32 %12)
  store i32* %13, i32** %2, align 8
  %14 = load i32*, i32** %2, align 8
  %15 = icmp ne i32* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %0
  store i32 0, i32* %1, align 4
  br label %53

17:                                               ; preds = %0
  %18 = load i32, i32* @gc_auto_threshold, align 4
  %19 = call i32 @DIV_ROUND_UP(i32 %18, i32 256)
  store i32 %19, i32* %4, align 4
  br label %20

20:                                               ; preds = %48, %41, %17
  %21 = load i32*, i32** %2, align 8
  %22 = call %struct.dirent* @readdir(i32* %21)
  store %struct.dirent* %22, %struct.dirent** %3, align 8
  %23 = icmp ne %struct.dirent* %22, null
  br i1 %23, label %24, label %49

24:                                               ; preds = %20
  %25 = load %struct.dirent*, %struct.dirent** %3, align 8
  %26 = getelementptr inbounds %struct.dirent, %struct.dirent* %25, i32 0, i32 0
  %27 = load i8*, i8** %26, align 8
  %28 = call i32 @strspn(i8* %27, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  %29 = load i32, i32* %7, align 4
  %30 = icmp ne i32 %28, %29
  br i1 %30, label %41, label %31

31:                                               ; preds = %24
  %32 = load %struct.dirent*, %struct.dirent** %3, align 8
  %33 = getelementptr inbounds %struct.dirent, %struct.dirent* %32, i32 0, i32 0
  %34 = load i8*, i8** %33, align 8
  %35 = load i32, i32* %7, align 4
  %36 = zext i32 %35 to i64
  %37 = getelementptr inbounds i8, i8* %34, i64 %36
  %38 = load i8, i8* %37, align 1
  %39 = sext i8 %38 to i32
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %31, %24
  br label %20

42:                                               ; preds = %31
  %43 = load i32, i32* %5, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %5, align 4
  %45 = load i32, i32* %4, align 4
  %46 = icmp sgt i32 %44, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %42
  store i32 1, i32* %6, align 4
  br label %49

48:                                               ; preds = %42
  br label %20

49:                                               ; preds = %47, %20
  %50 = load i32*, i32** %2, align 8
  %51 = call i32 @closedir(i32* %50)
  %52 = load i32, i32* %6, align 4
  store i32 %52, i32* %1, align 4
  br label %53

53:                                               ; preds = %49, %16
  %54 = load i32, i32* %1, align 4
  ret i32 %54
}

declare dso_local i32* @opendir(i32) #1

declare dso_local i32 @git_path(i8*) #1

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #1

declare dso_local %struct.dirent* @readdir(i32*) #1

declare dso_local i32 @strspn(i8*, i8*) #1

declare dso_local i32 @closedir(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
