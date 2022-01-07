; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/login/extr_login.c_stypeof.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/login/extr_login.c_stypeof.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ttyent = type { i8* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @stypeof(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.ttyent*, align 8
  store i8* %0, i8** %3, align 8
  %5 = load i8*, i8** %3, align 8
  %6 = icmp ne i8* %5, null
  br i1 %6, label %7, label %27

7:                                                ; preds = %1
  %8 = load i8*, i8** %3, align 8
  %9 = load i8, i8* %8, align 1
  %10 = sext i8 %9 to i32
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %27

12:                                               ; preds = %7
  %13 = load i8*, i8** %3, align 8
  %14 = call %struct.ttyent* @getttynam(i8* %13)
  store %struct.ttyent* %14, %struct.ttyent** %4, align 8
  %15 = load %struct.ttyent*, %struct.ttyent** %4, align 8
  %16 = icmp ne %struct.ttyent* %15, null
  br i1 %16, label %17, label %26

17:                                               ; preds = %12
  %18 = load %struct.ttyent*, %struct.ttyent** %4, align 8
  %19 = getelementptr inbounds %struct.ttyent, %struct.ttyent* %18, i32 0, i32 0
  %20 = load i8*, i8** %19, align 8
  %21 = icmp ne i8* %20, null
  br i1 %21, label %22, label %26

22:                                               ; preds = %17
  %23 = load %struct.ttyent*, %struct.ttyent** %4, align 8
  %24 = getelementptr inbounds %struct.ttyent, %struct.ttyent* %23, i32 0, i32 0
  %25 = load i8*, i8** %24, align 8
  store i8* %25, i8** %2, align 8
  br label %28

26:                                               ; preds = %17, %12
  br label %27

27:                                               ; preds = %26, %7, %1
  store i8* null, i8** %2, align 8
  br label %28

28:                                               ; preds = %27, %22
  %29 = load i8*, i8** %2, align 8
  ret i8* %29
}

declare dso_local %struct.ttyent* @getttynam(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
