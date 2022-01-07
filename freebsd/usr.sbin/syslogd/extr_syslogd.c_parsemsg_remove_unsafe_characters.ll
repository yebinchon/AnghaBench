; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/syslogd/extr_syslogd.c_parsemsg_remove_unsafe_characters.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/syslogd/extr_syslogd.c_parsemsg_remove_unsafe_characters.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@mask_C1 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*, i64)* @parsemsg_remove_unsafe_characters to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @parsemsg_remove_unsafe_characters(i8* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %9 = load i8*, i8** %5, align 8
  store i8* %9, i8** %7, align 8
  br label %10

10:                                               ; preds = %77, %3
  %11 = load i8*, i8** %4, align 8
  %12 = getelementptr inbounds i8, i8* %11, i32 1
  store i8* %12, i8** %4, align 8
  %13 = load i8, i8* %11, align 1
  %14 = zext i8 %13 to i32
  store i32 %14, i32* %8, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %23

16:                                               ; preds = %10
  %17 = load i8*, i8** %7, align 8
  %18 = load i8*, i8** %5, align 8
  %19 = load i64, i64* %6, align 8
  %20 = getelementptr inbounds i8, i8* %18, i64 %19
  %21 = getelementptr inbounds i8, i8* %20, i64 -4
  %22 = icmp ult i8* %17, %21
  br label %23

23:                                               ; preds = %16, %10
  %24 = phi i1 [ false, %10 ], [ %22, %16 ]
  br i1 %24, label %25, label %78

25:                                               ; preds = %23
  %26 = load i64, i64* @mask_C1, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %42

28:                                               ; preds = %25
  %29 = load i32, i32* %8, align 4
  %30 = and i32 %29, 128
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %42

32:                                               ; preds = %28
  %33 = load i32, i32* %8, align 4
  %34 = icmp slt i32 %33, 160
  br i1 %34, label %35, label %42

35:                                               ; preds = %32
  %36 = load i32, i32* %8, align 4
  %37 = and i32 %36, 127
  store i32 %37, i32* %8, align 4
  %38 = load i8*, i8** %7, align 8
  %39 = getelementptr inbounds i8, i8* %38, i32 1
  store i8* %39, i8** %7, align 8
  store i8 77, i8* %38, align 1
  %40 = load i8*, i8** %7, align 8
  %41 = getelementptr inbounds i8, i8* %40, i32 1
  store i8* %41, i8** %7, align 8
  store i8 45, i8* %40, align 1
  br label %42

42:                                               ; preds = %35, %32, %28, %25
  %43 = load i32, i32* %8, align 4
  %44 = call i64 @isascii(i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %72

46:                                               ; preds = %42
  %47 = load i32, i32* %8, align 4
  %48 = call i64 @iscntrl(i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %72

50:                                               ; preds = %46
  %51 = load i32, i32* %8, align 4
  %52 = icmp eq i32 %51, 10
  br i1 %52, label %53, label %56

53:                                               ; preds = %50
  %54 = load i8*, i8** %7, align 8
  %55 = getelementptr inbounds i8, i8* %54, i32 1
  store i8* %55, i8** %7, align 8
  store i8 32, i8* %54, align 1
  br label %71

56:                                               ; preds = %50
  %57 = load i32, i32* %8, align 4
  %58 = icmp eq i32 %57, 9
  br i1 %58, label %59, label %62

59:                                               ; preds = %56
  %60 = load i8*, i8** %7, align 8
  %61 = getelementptr inbounds i8, i8* %60, i32 1
  store i8* %61, i8** %7, align 8
  store i8 9, i8* %60, align 1
  br label %70

62:                                               ; preds = %56
  %63 = load i8*, i8** %7, align 8
  %64 = getelementptr inbounds i8, i8* %63, i32 1
  store i8* %64, i8** %7, align 8
  store i8 94, i8* %63, align 1
  %65 = load i32, i32* %8, align 4
  %66 = xor i32 %65, 64
  %67 = trunc i32 %66 to i8
  %68 = load i8*, i8** %7, align 8
  %69 = getelementptr inbounds i8, i8* %68, i32 1
  store i8* %69, i8** %7, align 8
  store i8 %67, i8* %68, align 1
  br label %70

70:                                               ; preds = %62, %59
  br label %71

71:                                               ; preds = %70, %53
  br label %77

72:                                               ; preds = %46, %42
  %73 = load i32, i32* %8, align 4
  %74 = trunc i32 %73 to i8
  %75 = load i8*, i8** %7, align 8
  %76 = getelementptr inbounds i8, i8* %75, i32 1
  store i8* %76, i8** %7, align 8
  store i8 %74, i8* %75, align 1
  br label %77

77:                                               ; preds = %72, %71
  br label %10

78:                                               ; preds = %23
  %79 = load i8*, i8** %7, align 8
  store i8 0, i8* %79, align 1
  ret void
}

declare dso_local i64 @isascii(i32) #1

declare dso_local i64 @iscntrl(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
