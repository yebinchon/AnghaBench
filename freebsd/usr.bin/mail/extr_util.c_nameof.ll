; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/mail/extr_util.c_nameof.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/mail/extr_util.c_nameof.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.message = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @nameof(%struct.message* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.message*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  store %struct.message* %0, %struct.message** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.message*, %struct.message** %4, align 8
  %9 = load i32, i32* %5, align 4
  %10 = call i32 @name1(%struct.message* %8, i32 %9)
  %11 = call i8* @skin(i32 %10)
  store i8* %11, i8** %6, align 8
  %12 = load i32, i32* %5, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %18, label %14

14:                                               ; preds = %2
  %15 = load i8*, i8** %6, align 8
  %16 = call i32 @charcount(i8* %15, i8 signext 33)
  %17 = icmp slt i32 %16, 2
  br i1 %17, label %18, label %20

18:                                               ; preds = %14, %2
  %19 = load i8*, i8** %6, align 8
  store i8* %19, i8** %3, align 8
  br label %49

20:                                               ; preds = %14
  %21 = load i8*, i8** %6, align 8
  %22 = call i8* @strrchr(i8* %21, i8 signext 33)
  store i8* %22, i8** %7, align 8
  %23 = load i8*, i8** %7, align 8
  %24 = getelementptr inbounds i8, i8* %23, i32 -1
  store i8* %24, i8** %7, align 8
  br label %25

25:                                               ; preds = %36, %20
  %26 = load i8*, i8** %7, align 8
  %27 = load i8*, i8** %6, align 8
  %28 = icmp ugt i8* %26, %27
  br i1 %28, label %29, label %34

29:                                               ; preds = %25
  %30 = load i8*, i8** %7, align 8
  %31 = load i8, i8* %30, align 1
  %32 = sext i8 %31 to i32
  %33 = icmp ne i32 %32, 33
  br label %34

34:                                               ; preds = %29, %25
  %35 = phi i1 [ false, %25 ], [ %33, %29 ]
  br i1 %35, label %36, label %39

36:                                               ; preds = %34
  %37 = load i8*, i8** %7, align 8
  %38 = getelementptr inbounds i8, i8* %37, i32 -1
  store i8* %38, i8** %7, align 8
  br label %25

39:                                               ; preds = %34
  %40 = load i8*, i8** %7, align 8
  %41 = load i8, i8* %40, align 1
  %42 = sext i8 %41 to i32
  %43 = icmp eq i32 %42, 33
  br i1 %43, label %44, label %47

44:                                               ; preds = %39
  %45 = load i8*, i8** %7, align 8
  %46 = getelementptr inbounds i8, i8* %45, i64 1
  store i8* %46, i8** %3, align 8
  br label %49

47:                                               ; preds = %39
  %48 = load i8*, i8** %6, align 8
  store i8* %48, i8** %3, align 8
  br label %49

49:                                               ; preds = %47, %44, %18
  %50 = load i8*, i8** %3, align 8
  ret i8* %50
}

declare dso_local i8* @skin(i32) #1

declare dso_local i32 @name1(%struct.message*, i32) #1

declare dso_local i32 @charcount(i8*, i8 signext) #1

declare dso_local i8* @strrchr(i8*, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
