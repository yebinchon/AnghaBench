; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/id/extr_id.c_who.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/id/extr_id.c_who.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.passwd = type { i32 }

@.str = private unnamed_addr constant [17 x i8] c"%s: no such user\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.passwd* (i8*)* @who to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.passwd* @who(i8* %0) #0 {
  %2 = alloca %struct.passwd*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.passwd*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = call %struct.passwd* @getpwnam(i8* %7)
  store %struct.passwd* %8, %struct.passwd** %4, align 8
  %9 = icmp ne %struct.passwd* %8, null
  br i1 %9, label %10, label %12

10:                                               ; preds = %1
  %11 = load %struct.passwd*, %struct.passwd** %4, align 8
  store %struct.passwd* %11, %struct.passwd** %2, align 8
  br label %32

12:                                               ; preds = %1
  %13 = load i8*, i8** %3, align 8
  %14 = call i64 @strtol(i8* %13, i8** %6, i32 10)
  store i64 %14, i64* %5, align 8
  %15 = load i8*, i8** %3, align 8
  %16 = load i8, i8* %15, align 1
  %17 = sext i8 %16 to i32
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %29

19:                                               ; preds = %12
  %20 = load i8*, i8** %6, align 8
  %21 = load i8, i8* %20, align 1
  %22 = icmp ne i8 %21, 0
  br i1 %22, label %29, label %23

23:                                               ; preds = %19
  %24 = load i64, i64* %5, align 8
  %25 = call %struct.passwd* @getpwuid(i64 %24)
  store %struct.passwd* %25, %struct.passwd** %4, align 8
  %26 = icmp ne %struct.passwd* %25, null
  br i1 %26, label %27, label %29

27:                                               ; preds = %23
  %28 = load %struct.passwd*, %struct.passwd** %4, align 8
  store %struct.passwd* %28, %struct.passwd** %2, align 8
  br label %32

29:                                               ; preds = %23, %19, %12
  %30 = load i8*, i8** %3, align 8
  %31 = call i32 @errx(i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i8* %30)
  br label %32

32:                                               ; preds = %29, %27, %10
  %33 = load %struct.passwd*, %struct.passwd** %2, align 8
  ret %struct.passwd* %33
}

declare dso_local %struct.passwd* @getpwnam(i8*) #1

declare dso_local i64 @strtol(i8*, i8**, i32) #1

declare dso_local %struct.passwd* @getpwuid(i64) #1

declare dso_local i32 @errx(i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
