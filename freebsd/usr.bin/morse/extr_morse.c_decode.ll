; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/morse/extr_morse.c_decode.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/morse/extr_morse.c_decode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.morsetab = type { i8, i32 }

@mtab = common dso_local global %struct.morsetab* null, align 8
@hightab = common dso_local global %struct.morsetab* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @decode(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8, align 1
  %4 = alloca %struct.morsetab*, align 8
  store i8* %0, i8** %2, align 8
  store i8 32, i8* %3, align 1
  %5 = load %struct.morsetab*, %struct.morsetab** @mtab, align 8
  store %struct.morsetab* %5, %struct.morsetab** %4, align 8
  br label %6

6:                                                ; preds = %29, %1
  %7 = load %struct.morsetab*, %struct.morsetab** %4, align 8
  %8 = icmp ne %struct.morsetab* %7, null
  br i1 %8, label %9, label %15

9:                                                ; preds = %6
  %10 = load %struct.morsetab*, %struct.morsetab** %4, align 8
  %11 = getelementptr inbounds %struct.morsetab, %struct.morsetab* %10, i32 0, i32 0
  %12 = load i8, i8* %11, align 4
  %13 = sext i8 %12 to i32
  %14 = icmp ne i32 %13, 0
  br label %15

15:                                               ; preds = %9, %6
  %16 = phi i1 [ false, %6 ], [ %14, %9 ]
  br i1 %16, label %17, label %32

17:                                               ; preds = %15
  %18 = load %struct.morsetab*, %struct.morsetab** %4, align 8
  %19 = getelementptr inbounds %struct.morsetab, %struct.morsetab* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load i8*, i8** %2, align 8
  %22 = call i64 @strcmp(i32 %20, i8* %21)
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %17
  %25 = load %struct.morsetab*, %struct.morsetab** %4, align 8
  %26 = getelementptr inbounds %struct.morsetab, %struct.morsetab* %25, i32 0, i32 0
  %27 = load i8, i8* %26, align 4
  store i8 %27, i8* %3, align 1
  br label %32

28:                                               ; preds = %17
  br label %29

29:                                               ; preds = %28
  %30 = load %struct.morsetab*, %struct.morsetab** %4, align 8
  %31 = getelementptr inbounds %struct.morsetab, %struct.morsetab* %30, i32 1
  store %struct.morsetab* %31, %struct.morsetab** %4, align 8
  br label %6

32:                                               ; preds = %24, %15
  %33 = load i8, i8* %3, align 1
  %34 = sext i8 %33 to i32
  %35 = icmp eq i32 %34, 32
  br i1 %35, label %36, label %65

36:                                               ; preds = %32
  %37 = load %struct.morsetab*, %struct.morsetab** @hightab, align 8
  store %struct.morsetab* %37, %struct.morsetab** %4, align 8
  br label %38

38:                                               ; preds = %61, %36
  %39 = load %struct.morsetab*, %struct.morsetab** %4, align 8
  %40 = icmp ne %struct.morsetab* %39, null
  br i1 %40, label %41, label %47

41:                                               ; preds = %38
  %42 = load %struct.morsetab*, %struct.morsetab** %4, align 8
  %43 = getelementptr inbounds %struct.morsetab, %struct.morsetab* %42, i32 0, i32 0
  %44 = load i8, i8* %43, align 4
  %45 = sext i8 %44 to i32
  %46 = icmp ne i32 %45, 0
  br label %47

47:                                               ; preds = %41, %38
  %48 = phi i1 [ false, %38 ], [ %46, %41 ]
  br i1 %48, label %49, label %64

49:                                               ; preds = %47
  %50 = load %struct.morsetab*, %struct.morsetab** %4, align 8
  %51 = getelementptr inbounds %struct.morsetab, %struct.morsetab* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load i8*, i8** %2, align 8
  %54 = call i64 @strcmp(i32 %52, i8* %53)
  %55 = icmp eq i64 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %49
  %57 = load %struct.morsetab*, %struct.morsetab** %4, align 8
  %58 = getelementptr inbounds %struct.morsetab, %struct.morsetab* %57, i32 0, i32 0
  %59 = load i8, i8* %58, align 4
  store i8 %59, i8* %3, align 1
  br label %64

60:                                               ; preds = %49
  br label %61

61:                                               ; preds = %60
  %62 = load %struct.morsetab*, %struct.morsetab** %4, align 8
  %63 = getelementptr inbounds %struct.morsetab, %struct.morsetab* %62, i32 1
  store %struct.morsetab* %63, %struct.morsetab** %4, align 8
  br label %38

64:                                               ; preds = %56, %47
  br label %65

65:                                               ; preds = %64, %32
  %66 = load i8, i8* %3, align 1
  %67 = call i32 @putchar(i8 signext %66)
  ret void
}

declare dso_local i64 @strcmp(i32, i8*) #1

declare dso_local i32 @putchar(i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
