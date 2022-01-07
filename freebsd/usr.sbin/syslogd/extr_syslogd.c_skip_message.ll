; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/syslogd/extr_syslogd.c_skip_message.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/syslogd/extr_syslogd.c_skip_message.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i32)* @skip_message to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @skip_message(i8* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8, align 1
  %10 = alloca i8, align 1
  %11 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %11, align 4
  %12 = load i8*, i8** %6, align 8
  %13 = icmp eq i8* %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %76

15:                                               ; preds = %3
  %16 = load i8*, i8** %6, align 8
  %17 = load i8, i8* %16, align 1
  %18 = sext i8 %17 to i32
  switch i32 %18, label %23 [
    i32 45, label %19
    i32 43, label %20
  ]

19:                                               ; preds = %15
  store i32 1, i32* %11, align 4
  br label %20

20:                                               ; preds = %15, %19
  %21 = load i8*, i8** %6, align 8
  %22 = getelementptr inbounds i8, i8* %21, i32 1
  store i8* %22, i8** %6, align 8
  br label %24

23:                                               ; preds = %15
  br label %24

24:                                               ; preds = %23, %20
  %25 = load i32, i32* %7, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %24
  %28 = load i8*, i8** %6, align 8
  %29 = load i8*, i8** %5, align 8
  %30 = call i8* @strstr(i8* %28, i8* %29)
  store i8* %30, i8** %8, align 8
  br label %35

31:                                               ; preds = %24
  %32 = load i8*, i8** %6, align 8
  %33 = load i8*, i8** %5, align 8
  %34 = call i8* @strcasestr(i8* %32, i8* %33)
  store i8* %34, i8** %8, align 8
  br label %35

35:                                               ; preds = %31, %27
  %36 = load i8*, i8** %8, align 8
  %37 = icmp ne i8* %36, null
  br i1 %37, label %38, label %71

38:                                               ; preds = %35
  %39 = load i8*, i8** %8, align 8
  %40 = load i8*, i8** %6, align 8
  %41 = icmp eq i8* %39, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %38
  br label %48

43:                                               ; preds = %38
  %44 = load i8*, i8** %8, align 8
  %45 = getelementptr inbounds i8, i8* %44, i64 -1
  %46 = load i8, i8* %45, align 1
  %47 = sext i8 %46 to i32
  br label %48

48:                                               ; preds = %43, %42
  %49 = phi i32 [ 44, %42 ], [ %47, %43 ]
  %50 = trunc i32 %49 to i8
  store i8 %50, i8* %9, align 1
  %51 = load i8*, i8** %8, align 8
  %52 = load i8*, i8** %5, align 8
  %53 = call i32 @strlen(i8* %52)
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i8, i8* %51, i64 %54
  %56 = load i8, i8* %55, align 1
  store i8 %56, i8* %10, align 1
  %57 = load i8, i8* %9, align 1
  %58 = sext i8 %57 to i32
  %59 = icmp eq i32 %58, 44
  br i1 %59, label %60, label %70

60:                                               ; preds = %48
  %61 = load i8, i8* %10, align 1
  %62 = sext i8 %61 to i32
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %68, label %64

64:                                               ; preds = %60
  %65 = load i8, i8* %10, align 1
  %66 = sext i8 %65 to i32
  %67 = icmp eq i32 %66, 44
  br i1 %67, label %68, label %70

68:                                               ; preds = %64, %60
  %69 = load i32, i32* %11, align 4
  store i32 %69, i32* %4, align 4
  br label %76

70:                                               ; preds = %64, %48
  br label %71

71:                                               ; preds = %70, %35
  %72 = load i32, i32* %11, align 4
  %73 = icmp ne i32 %72, 0
  %74 = xor i1 %73, true
  %75 = zext i1 %74 to i32
  store i32 %75, i32* %4, align 4
  br label %76

76:                                               ; preds = %71, %68, %14
  %77 = load i32, i32* %4, align 4
  ret i32 %77
}

declare dso_local i8* @strstr(i8*, i8*) #1

declare dso_local i8* @strcasestr(i8*, i8*) #1

declare dso_local i32 @strlen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
