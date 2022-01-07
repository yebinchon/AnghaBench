; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/pw/extr_pw_group.c_getgroup.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/pw/extr_pw_group.c_getgroup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.group = type { i32 }

@EX_DATAERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"groupname or id required\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"unknown gid `%ju'\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"unknown group `%s'\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.group* (i8*, i64, i32)* @getgroup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.group* @getgroup(i8* %0, i64 %1, i32 %2) #0 {
  %4 = alloca %struct.group*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.group*, align 8
  store i8* %0, i8** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load i64, i64* %6, align 8
  %10 = icmp slt i64 %9, 0
  br i1 %10, label %11, label %17

11:                                               ; preds = %3
  %12 = load i8*, i8** %5, align 8
  %13 = icmp eq i8* %12, null
  br i1 %13, label %14, label %17

14:                                               ; preds = %11
  %15 = load i32, i32* @EX_DATAERR, align 4
  %16 = call i32 (i32, i8*, ...) @errx(i32 %15, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  br label %17

17:                                               ; preds = %14, %11, %3
  %18 = load i8*, i8** %5, align 8
  %19 = icmp ne i8* %18, null
  br i1 %19, label %20, label %23

20:                                               ; preds = %17
  %21 = load i8*, i8** %5, align 8
  %22 = call %struct.group* @GETGRNAM(i8* %21)
  br label %26

23:                                               ; preds = %17
  %24 = load i64, i64* %6, align 8
  %25 = call %struct.group* @GETGRGID(i64 %24)
  br label %26

26:                                               ; preds = %23, %20
  %27 = phi %struct.group* [ %22, %20 ], [ %25, %23 ]
  store %struct.group* %27, %struct.group** %8, align 8
  %28 = load %struct.group*, %struct.group** %8, align 8
  %29 = icmp eq %struct.group* %28, null
  br i1 %29, label %30, label %45

30:                                               ; preds = %26
  %31 = load i32, i32* %7, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %30
  store %struct.group* null, %struct.group** %4, align 8
  br label %47

34:                                               ; preds = %30
  %35 = load i8*, i8** %5, align 8
  %36 = icmp eq i8* %35, null
  br i1 %36, label %37, label %41

37:                                               ; preds = %34
  %38 = load i32, i32* @EX_DATAERR, align 4
  %39 = load i64, i64* %6, align 8
  %40 = call i32 (i32, i8*, ...) @errx(i32 %38, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i64 %39)
  br label %41

41:                                               ; preds = %37, %34
  %42 = load i32, i32* @EX_DATAERR, align 4
  %43 = load i8*, i8** %5, align 8
  %44 = call i32 (i32, i8*, ...) @errx(i32 %42, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i8* %43)
  br label %45

45:                                               ; preds = %41, %26
  %46 = load %struct.group*, %struct.group** %8, align 8
  store %struct.group* %46, %struct.group** %4, align 8
  br label %47

47:                                               ; preds = %45, %33
  %48 = load %struct.group*, %struct.group** %4, align 8
  ret %struct.group* %48
}

declare dso_local i32 @errx(i32, i8*, ...) #1

declare dso_local %struct.group* @GETGRNAM(i8*) #1

declare dso_local %struct.group* @GETGRGID(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
