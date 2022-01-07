; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/edquota/extr_edquota.c_getentry.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/edquota/extr_edquota.c_getentry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.passwd = type { i32 }
%struct.group = type { i32 }

@.str = private unnamed_addr constant [17 x i8] c"%s: no such user\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"%s: no such group\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"%d: unknown quota type\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @getentry(i8* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.passwd*, align 8
  %7 = alloca %struct.group*, align 8
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i8*, i8** %4, align 8
  %9 = call i64 @alldigits(i8* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %2
  %12 = load i8*, i8** %4, align 8
  %13 = call i32 @atoi(i8* %12)
  store i32 %13, i32* %3, align 4
  br label %46

14:                                               ; preds = %2
  %15 = load i32, i32* %5, align 4
  switch i32 %15, label %40 [
    i32 128, label %16
    i32 129, label %28
  ]

16:                                               ; preds = %14
  %17 = load i8*, i8** %4, align 8
  %18 = call %struct.passwd* @getpwnam(i8* %17)
  store %struct.passwd* %18, %struct.passwd** %6, align 8
  %19 = icmp ne %struct.passwd* %18, null
  br i1 %19, label %20, label %24

20:                                               ; preds = %16
  %21 = load %struct.passwd*, %struct.passwd** %6, align 8
  %22 = getelementptr inbounds %struct.passwd, %struct.passwd* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %3, align 4
  br label %46

24:                                               ; preds = %16
  %25 = load i8*, i8** %4, align 8
  %26 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i8* %25)
  %27 = call i32 @sleep(i32 3)
  br label %44

28:                                               ; preds = %14
  %29 = load i8*, i8** %4, align 8
  %30 = call %struct.group* @getgrnam(i8* %29)
  store %struct.group* %30, %struct.group** %7, align 8
  %31 = icmp ne %struct.group* %30, null
  br i1 %31, label %32, label %36

32:                                               ; preds = %28
  %33 = load %struct.group*, %struct.group** %7, align 8
  %34 = getelementptr inbounds %struct.group, %struct.group* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  store i32 %35, i32* %3, align 4
  br label %46

36:                                               ; preds = %28
  %37 = load i8*, i8** %4, align 8
  %38 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i8* %37)
  %39 = call i32 @sleep(i32 3)
  br label %44

40:                                               ; preds = %14
  %41 = load i32, i32* %5, align 4
  %42 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i32 %41)
  %43 = call i32 @sleep(i32 3)
  br label %44

44:                                               ; preds = %40, %36, %24
  %45 = call i32 @sleep(i32 1)
  store i32 -1, i32* %3, align 4
  br label %46

46:                                               ; preds = %44, %32, %20, %11
  %47 = load i32, i32* %3, align 4
  ret i32 %47
}

declare dso_local i64 @alldigits(i8*) #1

declare dso_local i32 @atoi(i8*) #1

declare dso_local %struct.passwd* @getpwnam(i8*) #1

declare dso_local i32 @warnx(i8*, ...) #1

declare dso_local i32 @sleep(i32) #1

declare dso_local %struct.group* @getgrnam(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
