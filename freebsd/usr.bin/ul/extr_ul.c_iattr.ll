; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/ul/extr_ul.c_iattr.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/ul/extr_ul.c_iattr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@maxcol = common dso_local global i32 0, align 4
@obuf = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @iattr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iattr() #0 {
  %1 = alloca i32, align 4
  %2 = alloca [256 x i8], align 16
  %3 = alloca i8*, align 8
  %4 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 0
  store i8* %4, i8** %3, align 8
  store i32 0, i32* %1, align 4
  br label %5

5:                                                ; preds = %38, %0
  %6 = load i32, i32* %1, align 4
  %7 = load i32, i32* @maxcol, align 4
  %8 = icmp slt i32 %6, %7
  br i1 %8, label %9, label %41

9:                                                ; preds = %5
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** @obuf, align 8
  %11 = load i32, i32* %1, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i64 %12
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  switch i32 %15, label %34 [
    i32 131, label %16
    i32 133, label %19
    i32 129, label %22
    i32 130, label %25
    i32 128, label %28
    i32 132, label %31
  ]

16:                                               ; preds = %9
  %17 = load i8*, i8** %3, align 8
  %18 = getelementptr inbounds i8, i8* %17, i32 1
  store i8* %18, i8** %3, align 8
  store i8 32, i8* %17, align 1
  br label %37

19:                                               ; preds = %9
  %20 = load i8*, i8** %3, align 8
  %21 = getelementptr inbounds i8, i8* %20, i32 1
  store i8* %21, i8** %3, align 8
  store i8 103, i8* %20, align 1
  br label %37

22:                                               ; preds = %9
  %23 = load i8*, i8** %3, align 8
  %24 = getelementptr inbounds i8, i8* %23, i32 1
  store i8* %24, i8** %3, align 8
  store i8 94, i8* %23, align 1
  br label %37

25:                                               ; preds = %9
  %26 = load i8*, i8** %3, align 8
  %27 = getelementptr inbounds i8, i8* %26, i32 1
  store i8* %27, i8** %3, align 8
  store i8 118, i8* %26, align 1
  br label %37

28:                                               ; preds = %9
  %29 = load i8*, i8** %3, align 8
  %30 = getelementptr inbounds i8, i8* %29, i32 1
  store i8* %30, i8** %3, align 8
  store i8 95, i8* %29, align 1
  br label %37

31:                                               ; preds = %9
  %32 = load i8*, i8** %3, align 8
  %33 = getelementptr inbounds i8, i8* %32, i32 1
  store i8* %33, i8** %3, align 8
  store i8 33, i8* %32, align 1
  br label %37

34:                                               ; preds = %9
  %35 = load i8*, i8** %3, align 8
  %36 = getelementptr inbounds i8, i8* %35, i32 1
  store i8* %36, i8** %3, align 8
  store i8 88, i8* %35, align 1
  br label %37

37:                                               ; preds = %34, %31, %28, %25, %22, %19, %16
  br label %38

38:                                               ; preds = %37
  %39 = load i32, i32* %1, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %1, align 4
  br label %5

41:                                               ; preds = %5
  %42 = load i8*, i8** %3, align 8
  store i8 32, i8* %42, align 1
  br label %43

43:                                               ; preds = %50, %41
  %44 = load i8*, i8** %3, align 8
  %45 = load i8, i8* %44, align 1
  %46 = sext i8 %45 to i32
  %47 = icmp eq i32 %46, 32
  br i1 %47, label %48, label %53

48:                                               ; preds = %43
  %49 = load i8*, i8** %3, align 8
  store i8 0, i8* %49, align 1
  br label %50

50:                                               ; preds = %48
  %51 = load i8*, i8** %3, align 8
  %52 = getelementptr inbounds i8, i8* %51, i32 -1
  store i8* %52, i8** %3, align 8
  br label %43

53:                                               ; preds = %43
  %54 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 0
  store i8* %54, i8** %3, align 8
  br label %55

55:                                               ; preds = %63, %53
  %56 = load i8*, i8** %3, align 8
  %57 = load i8, i8* %56, align 1
  %58 = icmp ne i8 %57, 0
  br i1 %58, label %59, label %66

59:                                               ; preds = %55
  %60 = load i8*, i8** %3, align 8
  %61 = load i8, i8* %60, align 1
  %62 = call i32 @putwchar(i8 signext %61)
  br label %63

63:                                               ; preds = %59
  %64 = load i8*, i8** %3, align 8
  %65 = getelementptr inbounds i8, i8* %64, i32 1
  store i8* %65, i8** %3, align 8
  br label %55

66:                                               ; preds = %55
  %67 = call i32 @putwchar(i8 signext 10)
  ret void
}

declare dso_local i32 @putwchar(i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
