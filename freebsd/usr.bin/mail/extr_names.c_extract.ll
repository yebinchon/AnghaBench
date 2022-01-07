; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/mail/extr_names.c_extract.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/mail/extr_names.c_extract.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.name = type { %struct.name*, %struct.name* }

@.str = private unnamed_addr constant [14 x i8] c"Out of memory\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.name* @extract(i8* %0, i32 %1) #0 {
  %3 = alloca %struct.name*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.name*, align 8
  %9 = alloca %struct.name*, align 8
  %10 = alloca %struct.name*, align 8
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load i8*, i8** %4, align 8
  %12 = icmp eq i8* %11, null
  br i1 %12, label %18, label %13

13:                                               ; preds = %2
  %14 = load i8*, i8** %4, align 8
  %15 = load i8, i8* %14, align 1
  %16 = sext i8 %15 to i32
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %13, %2
  store %struct.name* null, %struct.name** %3, align 8
  br label %55

19:                                               ; preds = %13
  %20 = load i8*, i8** %4, align 8
  %21 = call i64 @strlen(i8* %20)
  %22 = add nsw i64 %21, 1
  %23 = call i8* @malloc(i64 %22)
  store i8* %23, i8** %7, align 8
  %24 = icmp eq i8* %23, null
  br i1 %24, label %25, label %27

25:                                               ; preds = %19
  %26 = call i32 @err(i32 1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  br label %27

27:                                               ; preds = %25, %19
  store %struct.name* null, %struct.name** %8, align 8
  store %struct.name* null, %struct.name** %9, align 8
  %28 = load i8*, i8** %4, align 8
  store i8* %28, i8** %6, align 8
  br label %29

29:                                               ; preds = %46, %27
  %30 = load i8*, i8** %6, align 8
  %31 = load i8*, i8** %7, align 8
  %32 = call i8* @yankword(i8* %30, i8* %31)
  store i8* %32, i8** %6, align 8
  %33 = icmp ne i8* %32, null
  br i1 %33, label %34, label %51

34:                                               ; preds = %29
  %35 = load i8*, i8** %7, align 8
  %36 = load i32, i32* %5, align 4
  %37 = call %struct.name* @nalloc(i8* %35, i32 %36)
  store %struct.name* %37, %struct.name** %10, align 8
  %38 = load %struct.name*, %struct.name** %8, align 8
  %39 = icmp eq %struct.name* %38, null
  br i1 %39, label %40, label %42

40:                                               ; preds = %34
  %41 = load %struct.name*, %struct.name** %10, align 8
  store %struct.name* %41, %struct.name** %8, align 8
  br label %46

42:                                               ; preds = %34
  %43 = load %struct.name*, %struct.name** %10, align 8
  %44 = load %struct.name*, %struct.name** %9, align 8
  %45 = getelementptr inbounds %struct.name, %struct.name* %44, i32 0, i32 1
  store %struct.name* %43, %struct.name** %45, align 8
  br label %46

46:                                               ; preds = %42, %40
  %47 = load %struct.name*, %struct.name** %9, align 8
  %48 = load %struct.name*, %struct.name** %10, align 8
  %49 = getelementptr inbounds %struct.name, %struct.name* %48, i32 0, i32 0
  store %struct.name* %47, %struct.name** %49, align 8
  %50 = load %struct.name*, %struct.name** %10, align 8
  store %struct.name* %50, %struct.name** %9, align 8
  br label %29

51:                                               ; preds = %29
  %52 = load i8*, i8** %7, align 8
  %53 = call i32 @free(i8* %52)
  %54 = load %struct.name*, %struct.name** %8, align 8
  store %struct.name* %54, %struct.name** %3, align 8
  br label %55

55:                                               ; preds = %51, %18
  %56 = load %struct.name*, %struct.name** %3, align 8
  ret %struct.name* %56
}

declare dso_local i8* @malloc(i64) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @err(i32, i8*) #1

declare dso_local i8* @yankword(i8*, i8*) #1

declare dso_local %struct.name* @nalloc(i8*, i32) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
