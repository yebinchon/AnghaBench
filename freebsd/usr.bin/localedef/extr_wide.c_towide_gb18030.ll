; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/localedef/extr_wide.c_towide_gb18030.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/localedef/extr_wide.c_towide_gb18030.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [35 x i8] c"incomplete character sequence (%s)\00", align 1
@.str.1 = private unnamed_addr constant [42 x i8] c"incomplete 4-byte character sequence (%s)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @towide_gb18030(i32* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load i8*, i8** %6, align 8
  %10 = bitcast i8* %9 to i32*
  %11 = load i32, i32* %10, align 4
  store i32 %11, i32* %8, align 4
  %12 = load i32, i32* %8, align 4
  %13 = and i32 %12, 128
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %3
  %16 = load i32, i32* %8, align 4
  %17 = load i32*, i32** %5, align 8
  store i32 %16, i32* %17, align 4
  store i32 1, i32* %4, align 4
  br label %70

18:                                               ; preds = %3
  %19 = load i32, i32* %7, align 4
  %20 = icmp ult i32 %19, 2
  br i1 %20, label %21, label %25

21:                                               ; preds = %18
  %22 = load i8*, i8** %6, align 8
  %23 = call i32 @show_mb(i8* %22)
  %24 = call i32 @werr(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %23)
  store i32 -1, i32* %4, align 4
  br label %70

25:                                               ; preds = %18
  %26 = load i32, i32* %8, align 4
  %27 = shl i32 %26, 8
  store i32 %27, i32* %8, align 4
  %28 = load i8*, i8** %6, align 8
  %29 = getelementptr inbounds i8, i8* %28, i64 1
  %30 = load i8, i8* %29, align 1
  %31 = sext i8 %30 to i32
  %32 = load i32, i32* %8, align 4
  %33 = or i32 %32, %31
  store i32 %33, i32* %8, align 4
  %34 = load i32, i32* %8, align 4
  %35 = and i32 %34, 255
  %36 = icmp sge i32 %35, 48
  br i1 %36, label %37, label %67

37:                                               ; preds = %25
  %38 = load i32, i32* %8, align 4
  %39 = and i32 %38, 255
  %40 = icmp sle i32 %39, 57
  br i1 %40, label %41, label %67

41:                                               ; preds = %37
  %42 = load i32, i32* %7, align 4
  %43 = icmp ult i32 %42, 4
  br i1 %43, label %44, label %48

44:                                               ; preds = %41
  %45 = load i8*, i8** %6, align 8
  %46 = call i32 @show_mb(i8* %45)
  %47 = call i32 @werr(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i32 %46)
  store i32 -1, i32* %4, align 4
  br label %70

48:                                               ; preds = %41
  %49 = load i32, i32* %8, align 4
  %50 = shl i32 %49, 8
  store i32 %50, i32* %8, align 4
  %51 = load i8*, i8** %6, align 8
  %52 = getelementptr inbounds i8, i8* %51, i64 2
  %53 = load i8, i8* %52, align 1
  %54 = sext i8 %53 to i32
  %55 = load i32, i32* %8, align 4
  %56 = or i32 %55, %54
  store i32 %56, i32* %8, align 4
  %57 = load i32, i32* %8, align 4
  %58 = shl i32 %57, 8
  store i32 %58, i32* %8, align 4
  %59 = load i8*, i8** %6, align 8
  %60 = getelementptr inbounds i8, i8* %59, i64 3
  %61 = load i8, i8* %60, align 1
  %62 = sext i8 %61 to i32
  %63 = load i32, i32* %8, align 4
  %64 = or i32 %63, %62
  store i32 %64, i32* %8, align 4
  %65 = load i32, i32* %8, align 4
  %66 = load i32*, i32** %5, align 8
  store i32 %65, i32* %66, align 4
  store i32 4, i32* %4, align 4
  br label %70

67:                                               ; preds = %37, %25
  %68 = load i32, i32* %8, align 4
  %69 = load i32*, i32** %5, align 8
  store i32 %68, i32* %69, align 4
  store i32 2, i32* %4, align 4
  br label %70

70:                                               ; preds = %67, %48, %44, %21, %15
  %71 = load i32, i32* %4, align 4
  ret i32 %71
}

declare dso_local i32 @werr(i8*, i32) #1

declare dso_local i32 @show_mb(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
