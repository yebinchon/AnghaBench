; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/ipcs/extr_ipcs.c_user2uid.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/ipcs/extr_ipcs.c_user2uid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.passwd = type { i32 }

@.str = private unnamed_addr constant [30 x i8] c"getpwnam failed: No such user\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @user2uid(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.passwd*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = call i32 @strtoul(i8* %7, i8** %6, i32 0)
  store i32 %8, i32* %5, align 4
  %9 = load i8*, i8** %6, align 8
  %10 = load i8, i8* %9, align 1
  %11 = icmp ne i8 %10, 0
  br i1 %11, label %18, label %12

12:                                               ; preds = %1
  %13 = load i8*, i8** %6, align 8
  %14 = load i8*, i8** %3, align 8
  %15 = icmp ne i8* %13, %14
  br i1 %15, label %16, label %18

16:                                               ; preds = %12
  %17 = load i32, i32* %5, align 4
  store i32 %17, i32* %2, align 4
  br label %29

18:                                               ; preds = %12, %1
  %19 = load i8*, i8** %3, align 8
  %20 = call %struct.passwd* @getpwnam(i8* %19)
  store %struct.passwd* %20, %struct.passwd** %4, align 8
  %21 = icmp eq %struct.passwd* %20, null
  br i1 %21, label %22, label %24

22:                                               ; preds = %18
  %23 = call i32 @errx(i32 1, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  br label %24

24:                                               ; preds = %22, %18
  %25 = call i32 (...) @endpwent()
  %26 = load %struct.passwd*, %struct.passwd** %4, align 8
  %27 = getelementptr inbounds %struct.passwd, %struct.passwd* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %2, align 4
  br label %29

29:                                               ; preds = %24, %16
  %30 = load i32, i32* %2, align 4
  ret i32 %30
}

declare dso_local i32 @strtoul(i8*, i8**, i32) #1

declare dso_local %struct.passwd* @getpwnam(i8*) #1

declare dso_local i32 @errx(i32, i8*) #1

declare dso_local i32 @endpwent(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
