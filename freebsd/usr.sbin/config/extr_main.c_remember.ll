; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/config/extr_main.c_remember.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/config/extr_main.c_remember.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hdr_list = type { i8*, %struct.hdr_list* }

@.str = private unnamed_addr constant [5 x i8] c"opt_\00", align 1
@htab = common dso_local global %struct.hdr_list* null, align 8
@EXIT_FAILURE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"calloc\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @remember(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.hdr_list*, align 8
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = call i8* @strrchr(i8* %5, i8 signext 47)
  store i8* %6, i8** %3, align 8
  %7 = icmp ne i8* %6, null
  br i1 %7, label %8, label %12

8:                                                ; preds = %1
  %9 = load i8*, i8** %3, align 8
  %10 = getelementptr inbounds i8, i8* %9, i64 1
  %11 = call i8* @ns(i8* %10)
  store i8* %11, i8** %3, align 8
  br label %15

12:                                               ; preds = %1
  %13 = load i8*, i8** %2, align 8
  %14 = call i8* @ns(i8* %13)
  store i8* %14, i8** %3, align 8
  br label %15

15:                                               ; preds = %12, %8
  %16 = load i8*, i8** %3, align 8
  %17 = call i64 @strchr(i8* %16, i8 signext 95)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %26

19:                                               ; preds = %15
  %20 = load i8*, i8** %3, align 8
  %21 = call i64 @strncmp(i8* %20, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 4)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %19
  %24 = load i8*, i8** %3, align 8
  %25 = call i32 @free(i8* %24)
  br label %61

26:                                               ; preds = %19, %15
  %27 = load %struct.hdr_list*, %struct.hdr_list** @htab, align 8
  store %struct.hdr_list* %27, %struct.hdr_list** %4, align 8
  br label %28

28:                                               ; preds = %42, %26
  %29 = load %struct.hdr_list*, %struct.hdr_list** %4, align 8
  %30 = icmp ne %struct.hdr_list* %29, null
  br i1 %30, label %31, label %46

31:                                               ; preds = %28
  %32 = load i8*, i8** %3, align 8
  %33 = load %struct.hdr_list*, %struct.hdr_list** %4, align 8
  %34 = getelementptr inbounds %struct.hdr_list, %struct.hdr_list* %33, i32 0, i32 0
  %35 = load i8*, i8** %34, align 8
  %36 = call i64 @eq(i8* %32, i8* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %31
  %39 = load i8*, i8** %3, align 8
  %40 = call i32 @free(i8* %39)
  br label %61

41:                                               ; preds = %31
  br label %42

42:                                               ; preds = %41
  %43 = load %struct.hdr_list*, %struct.hdr_list** %4, align 8
  %44 = getelementptr inbounds %struct.hdr_list, %struct.hdr_list* %43, i32 0, i32 1
  %45 = load %struct.hdr_list*, %struct.hdr_list** %44, align 8
  store %struct.hdr_list* %45, %struct.hdr_list** %4, align 8
  br label %28

46:                                               ; preds = %28
  %47 = call %struct.hdr_list* @calloc(i32 1, i32 16)
  store %struct.hdr_list* %47, %struct.hdr_list** %4, align 8
  %48 = load %struct.hdr_list*, %struct.hdr_list** %4, align 8
  %49 = icmp eq %struct.hdr_list* %48, null
  br i1 %49, label %50, label %53

50:                                               ; preds = %46
  %51 = load i32, i32* @EXIT_FAILURE, align 4
  %52 = call i32 @err(i32 %51, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  br label %53

53:                                               ; preds = %50, %46
  %54 = load i8*, i8** %3, align 8
  %55 = load %struct.hdr_list*, %struct.hdr_list** %4, align 8
  %56 = getelementptr inbounds %struct.hdr_list, %struct.hdr_list* %55, i32 0, i32 0
  store i8* %54, i8** %56, align 8
  %57 = load %struct.hdr_list*, %struct.hdr_list** @htab, align 8
  %58 = load %struct.hdr_list*, %struct.hdr_list** %4, align 8
  %59 = getelementptr inbounds %struct.hdr_list, %struct.hdr_list* %58, i32 0, i32 1
  store %struct.hdr_list* %57, %struct.hdr_list** %59, align 8
  %60 = load %struct.hdr_list*, %struct.hdr_list** %4, align 8
  store %struct.hdr_list* %60, %struct.hdr_list** @htab, align 8
  br label %61

61:                                               ; preds = %53, %38, %23
  ret void
}

declare dso_local i8* @strrchr(i8*, i8 signext) #1

declare dso_local i8* @ns(i8*) #1

declare dso_local i64 @strchr(i8*, i8 signext) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i64 @eq(i8*, i8*) #1

declare dso_local %struct.hdr_list* @calloc(i32, i32) #1

declare dso_local i32 @err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
