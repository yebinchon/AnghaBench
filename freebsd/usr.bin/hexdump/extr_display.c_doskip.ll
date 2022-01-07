; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/hexdump/extr_display.c_doskip.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/hexdump/extr_display.c_doskip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i64, i32 }

@stdin = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@skip = common dso_local global i64 0, align 8
@address = common dso_local global i32 0, align 4
@FIODTYPE = common dso_local global i32 0, align 4
@D_TAPE = common dso_local global i32 0, align 4
@SEEK_SET = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @doskip(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.stat, align 8
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %39

9:                                                ; preds = %2
  %10 = load i32, i32* @stdin, align 4
  %11 = call i32 @fileno(i32 %10)
  %12 = call i64 @fstat(i32 %11, %struct.stat* %6)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %9
  %15 = load i8*, i8** %3, align 8
  %16 = call i32 @err(i32 1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %15)
  br label %17

17:                                               ; preds = %14, %9
  %18 = getelementptr inbounds %struct.stat, %struct.stat* %6, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = call i64 @S_ISREG(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %38

22:                                               ; preds = %17
  %23 = load i64, i64* @skip, align 8
  %24 = getelementptr inbounds %struct.stat, %struct.stat* %6, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp sgt i64 %23, %25
  br i1 %26, label %27, label %38

27:                                               ; preds = %22
  %28 = getelementptr inbounds %struct.stat, %struct.stat* %6, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i32, i32* @address, align 4
  %31 = sext i32 %30 to i64
  %32 = add nsw i64 %31, %29
  %33 = trunc i64 %32 to i32
  store i32 %33, i32* @address, align 4
  %34 = getelementptr inbounds %struct.stat, %struct.stat* %6, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @skip, align 8
  %37 = sub nsw i64 %36, %35
  store i64 %37, i64* @skip, align 8
  br label %95

38:                                               ; preds = %22, %17
  br label %39

39:                                               ; preds = %38, %2
  %40 = load i32, i32* %4, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %52

42:                                               ; preds = %39
  %43 = getelementptr inbounds %struct.stat, %struct.stat* %6, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = call i64 @S_ISFIFO(i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %52, label %47

47:                                               ; preds = %42
  %48 = getelementptr inbounds %struct.stat, %struct.stat* %6, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = call i64 @S_ISSOCK(i32 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %47, %42, %39
  %53 = call i32 (...) @noseek()
  br label %95

54:                                               ; preds = %47
  %55 = getelementptr inbounds %struct.stat, %struct.stat* %6, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = call i64 @S_ISCHR(i32 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %64, label %59

59:                                               ; preds = %54
  %60 = getelementptr inbounds %struct.stat, %struct.stat* %6, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = call i64 @S_ISBLK(i32 %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %81

64:                                               ; preds = %59, %54
  %65 = load i32, i32* @stdin, align 4
  %66 = call i32 @fileno(i32 %65)
  %67 = load i32, i32* @FIODTYPE, align 4
  %68 = call i64 @ioctl(i32 %66, i32 %67, i32* %5)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %73

70:                                               ; preds = %64
  %71 = load i8*, i8** %3, align 8
  %72 = call i32 @err(i32 1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %71)
  br label %73

73:                                               ; preds = %70, %64
  %74 = load i32, i32* %5, align 4
  %75 = load i32, i32* @D_TAPE, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %80

78:                                               ; preds = %73
  %79 = call i32 (...) @noseek()
  br label %95

80:                                               ; preds = %73
  br label %81

81:                                               ; preds = %80, %59
  %82 = load i32, i32* @stdin, align 4
  %83 = load i64, i64* @skip, align 8
  %84 = load i32, i32* @SEEK_SET, align 4
  %85 = call i64 @fseeko(i32 %82, i64 %83, i32 %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %89

87:                                               ; preds = %81
  %88 = call i32 (...) @noseek()
  br label %95

89:                                               ; preds = %81
  %90 = load i64, i64* @skip, align 8
  %91 = load i32, i32* @address, align 4
  %92 = sext i32 %91 to i64
  %93 = add nsw i64 %92, %90
  %94 = trunc i64 %93 to i32
  store i32 %94, i32* @address, align 4
  store i64 0, i64* @skip, align 8
  br label %95

95:                                               ; preds = %89, %87, %78, %52, %27
  ret void
}

declare dso_local i64 @fstat(i32, %struct.stat*) #1

declare dso_local i32 @fileno(i32) #1

declare dso_local i32 @err(i32, i8*, i8*) #1

declare dso_local i64 @S_ISREG(i32) #1

declare dso_local i64 @S_ISFIFO(i32) #1

declare dso_local i64 @S_ISSOCK(i32) #1

declare dso_local i32 @noseek(...) #1

declare dso_local i64 @S_ISCHR(i32) #1

declare dso_local i64 @S_ISBLK(i32) #1

declare dso_local i64 @ioctl(i32, i32, i32*) #1

declare dso_local i64 @fseeko(i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
