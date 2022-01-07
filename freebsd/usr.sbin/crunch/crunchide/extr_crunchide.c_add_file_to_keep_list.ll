; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/crunch/crunchide/extr_crunchide.c_add_file_to_keep_list.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/crunch/crunchide/extr_crunchide.c_add_file_to_keep_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"r\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @add_file_to_keep_list(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca [1024 x i8], align 16
  %5 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %6 = load i8*, i8** %2, align 8
  %7 = call i32* @fopen(i8* %6, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32* %7, i32** %3, align 8
  %8 = icmp eq i32* %7, null
  br i1 %8, label %9, label %13

9:                                                ; preds = %1
  %10 = load i8*, i8** %2, align 8
  %11 = call i32 @perror(i8* %10)
  %12 = call i32 (...) @usage()
  br label %13

13:                                               ; preds = %9, %1
  br label %14

14:                                               ; preds = %37, %13
  %15 = getelementptr inbounds [1024 x i8], [1024 x i8]* %4, i64 0, i64 0
  %16 = load i32*, i32** %3, align 8
  %17 = call i64 @fgets(i8* %15, i32 1024, i32* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %40

19:                                               ; preds = %14
  %20 = getelementptr inbounds [1024 x i8], [1024 x i8]* %4, i64 0, i64 0
  %21 = call i32 @strlen(i8* %20)
  store i32 %21, i32* %5, align 4
  %22 = load i32, i32* %5, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %37

24:                                               ; preds = %19
  %25 = load i32, i32* %5, align 4
  %26 = sub nsw i32 %25, 1
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds [1024 x i8], [1024 x i8]* %4, i64 0, i64 %27
  %29 = load i8, i8* %28, align 1
  %30 = sext i8 %29 to i32
  %31 = icmp eq i32 %30, 10
  br i1 %31, label %32, label %37

32:                                               ; preds = %24
  %33 = load i32, i32* %5, align 4
  %34 = sub nsw i32 %33, 1
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds [1024 x i8], [1024 x i8]* %4, i64 0, i64 %35
  store i8 0, i8* %36, align 1
  br label %37

37:                                               ; preds = %32, %24, %19
  %38 = getelementptr inbounds [1024 x i8], [1024 x i8]* %4, i64 0, i64 0
  %39 = call i32 @add_to_keep_list(i8* %38)
  br label %14

40:                                               ; preds = %14
  %41 = load i32*, i32** %3, align 8
  %42 = call i32 @fclose(i32* %41)
  ret void
}

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @perror(i8*) #1

declare dso_local i32 @usage(...) #1

declare dso_local i64 @fgets(i8*, i32, i32*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @add_to_keep_list(i8*) #1

declare dso_local i32 @fclose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
