; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/lptcontrol/extr_lptcontrol.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/lptcontrol/extr_lptcontrol.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DEFAULT_DEVICE = common dso_local global i8* null, align 8
@IRQ_UNSPECIFIED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"d:eips\00", align 1
@optarg = common dso_local global i8* null, align 8
@USE_EXT_MODE = common dso_local global i32 0, align 4
@USE_IRQ = common dso_local global i32 0, align 4
@DO_POLL = common dso_local global i32 0, align 4
@USE_STD_MODE = common dso_local global i32 0, align 4
@optind = common dso_local global i64 0, align 8
@O_WRONLY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"open\00", align 1
@LPT_IRQ = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [6 x i8] c"ioctl\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %10 = load i8*, i8** @DEFAULT_DEVICE, align 8
  store i8* %10, i8** %6, align 8
  %11 = load i32, i32* @IRQ_UNSPECIFIED, align 4
  store i32 %11, i32* %8, align 4
  br label %12

12:                                               ; preds = %32, %2
  %13 = load i32, i32* %4, align 4
  %14 = load i8**, i8*** %5, align 8
  %15 = call i32 @getopt(i32 %13, i8** %14, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  store i32 %15, i32* %9, align 4
  %16 = icmp ne i32 %15, -1
  br i1 %16, label %17, label %33

17:                                               ; preds = %12
  %18 = load i32, i32* %9, align 4
  switch i32 %18, label %30 [
    i32 100, label %19
    i32 101, label %21
    i32 105, label %23
    i32 112, label %25
    i32 115, label %27
    i32 63, label %29
  ]

19:                                               ; preds = %17
  %20 = load i8*, i8** @optarg, align 8
  store i8* %20, i8** %6, align 8
  br label %32

21:                                               ; preds = %17
  %22 = load i32, i32* @USE_EXT_MODE, align 4
  store i32 %22, i32* %8, align 4
  br label %32

23:                                               ; preds = %17
  %24 = load i32, i32* @USE_IRQ, align 4
  store i32 %24, i32* %8, align 4
  br label %32

25:                                               ; preds = %17
  %26 = load i32, i32* @DO_POLL, align 4
  store i32 %26, i32* %8, align 4
  br label %32

27:                                               ; preds = %17
  %28 = load i32, i32* @USE_STD_MODE, align 4
  store i32 %28, i32* %8, align 4
  br label %32

29:                                               ; preds = %17
  br label %30

30:                                               ; preds = %17, %29
  %31 = call i32 (...) @usage()
  br label %32

32:                                               ; preds = %30, %27, %25, %23, %21, %19
  br label %12

33:                                               ; preds = %12
  %34 = load i64, i64* @optind, align 8
  %35 = load i32, i32* %4, align 4
  %36 = sext i32 %35 to i64
  %37 = sub nsw i64 %36, %34
  %38 = trunc i64 %37 to i32
  store i32 %38, i32* %4, align 4
  %39 = load i64, i64* @optind, align 8
  %40 = load i8**, i8*** %5, align 8
  %41 = getelementptr inbounds i8*, i8** %40, i64 %39
  store i8** %41, i8*** %5, align 8
  %42 = load i32, i32* %4, align 4
  %43 = icmp eq i32 %42, 1
  br i1 %43, label %44, label %50

44:                                               ; preds = %33
  %45 = load i8**, i8*** %5, align 8
  %46 = getelementptr inbounds i8*, i8** %45, i64 0
  %47 = load i8*, i8** %46, align 8
  store i8* %47, i8** %6, align 8
  %48 = load i32, i32* %4, align 4
  %49 = add nsw i32 %48, -1
  store i32 %49, i32* %4, align 4
  br label %50

50:                                               ; preds = %44, %33
  %51 = load i32, i32* %8, align 4
  %52 = load i32, i32* @IRQ_UNSPECIFIED, align 4
  %53 = icmp eq i32 %51, %52
  br i1 %53, label %57, label %54

54:                                               ; preds = %50
  %55 = load i32, i32* %4, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %54, %50
  %58 = call i32 (...) @usage()
  br label %59

59:                                               ; preds = %57, %54
  %60 = load i8*, i8** %6, align 8
  %61 = load i32, i32* @O_WRONLY, align 4
  %62 = call i32 @open(i8* %60, i32 %61)
  store i32 %62, i32* %7, align 4
  %63 = icmp slt i32 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %59
  %65 = call i32 @err(i32 1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  br label %66

66:                                               ; preds = %64, %59
  %67 = load i32, i32* %7, align 4
  %68 = load i32, i32* @LPT_IRQ, align 4
  %69 = call i64 @ioctl(i32 %67, i32 %68, i32* %8)
  %70 = icmp slt i64 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %66
  %72 = call i32 @err(i32 1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  br label %73

73:                                               ; preds = %71, %66
  %74 = load i32, i32* %7, align 4
  %75 = call i32 @close(i32 %74)
  ret i32 0
}

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i32 @usage(...) #1

declare dso_local i32 @open(i8*, i32) #1

declare dso_local i32 @err(i32, i8*) #1

declare dso_local i64 @ioctl(i32, i32, i32*) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
