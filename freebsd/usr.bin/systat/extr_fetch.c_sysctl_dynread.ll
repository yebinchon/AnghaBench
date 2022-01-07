; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/systat/extr_fetch.c_sysctl_dynread.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/systat/extr_fetch.c_sysctl_dynread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SD_MAXMIB = common dso_local global i32 0, align 4
@SD_MARGIN = common dso_local global i64 0, align 8
@errno = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [39 x i8] c"XXX: SD_MAXMIB too small, please bump!\00", align 1
@SD_NTRIES = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"Out of memory!\00", align 1
@SD_FACTOR = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @sysctl_dynread(i8* %0, i64* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i64* %1, i64** %5, align 8
  store i8* null, i8** %6, align 8
  %14 = load i32, i32* @SD_MAXMIB, align 4
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %7, align 8
  %17 = alloca i32, i64 %15, align 16
  store i64 %15, i64* %8, align 8
  %18 = load i32, i32* @SD_MAXMIB, align 4
  %19 = sext i32 %18 to i64
  store i64 %19, i64* %9, align 8
  %20 = load i64, i64* @SD_MARGIN, align 8
  store i64 %20, i64* %10, align 8
  %21 = load i8*, i8** %4, align 8
  %22 = call i32 @sysctlnametomib(i8* %21, i32* %17, i64* %9)
  %23 = icmp eq i32 %22, -1
  br i1 %23, label %24, label %31

24:                                               ; preds = %2
  %25 = load i64, i64* @errno, align 8
  %26 = load i64, i64* @ENOMEM, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %24
  %29 = call i32 @error(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  br label %30

30:                                               ; preds = %28, %24
  store i8* null, i8** %3, align 8
  store i32 1, i32* %13, align 4
  br label %87

31:                                               ; preds = %2
  store i32 0, i32* %12, align 4
  br label %32

32:                                               ; preds = %82, %31
  %33 = load i32, i32* %12, align 4
  %34 = load i32, i32* @SD_NTRIES, align 4
  %35 = icmp slt i32 %33, %34
  br i1 %35, label %36, label %85

36:                                               ; preds = %32
  %37 = load i64, i64* %9, align 8
  %38 = call i32 @sysctl(i32* %17, i64 %37, i8* null, i64* %11, i32* null, i32 0)
  %39 = icmp eq i32 %38, -1
  br i1 %39, label %40, label %41

40:                                               ; preds = %36
  br label %85

41:                                               ; preds = %36
  %42 = load i64, i64* %11, align 8
  %43 = load i64, i64* %10, align 8
  %44 = mul i64 %42, %43
  %45 = udiv i64 %44, 100
  %46 = load i64, i64* %11, align 8
  %47 = add i64 %46, %45
  store i64 %47, i64* %11, align 8
  %48 = load i64, i64* %11, align 8
  %49 = call i64 @malloc(i64 %48)
  %50 = inttoptr i64 %49 to i8*
  store i8* %50, i8** %6, align 8
  %51 = icmp eq i8* %50, null
  br i1 %51, label %52, label %54

52:                                               ; preds = %41
  %53 = call i32 @error(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  store i8* null, i8** %3, align 8
  store i32 1, i32* %13, align 4
  br label %87

54:                                               ; preds = %41
  %55 = load i64, i64* %9, align 8
  %56 = load i8*, i8** %6, align 8
  %57 = call i32 @sysctl(i32* %17, i64 %55, i8* %56, i64* %11, i32* null, i32 0)
  %58 = icmp eq i32 %57, -1
  br i1 %58, label %59, label %74

59:                                               ; preds = %54
  %60 = load i8*, i8** %6, align 8
  %61 = call i32 @free(i8* %60)
  store i8* null, i8** %6, align 8
  %62 = load i64, i64* @errno, align 8
  %63 = load i64, i64* @ENOMEM, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %65, label %72

65:                                               ; preds = %59
  %66 = load i64, i64* %10, align 8
  %67 = load i64, i64* @SD_FACTOR, align 8
  %68 = mul i64 %66, %67
  %69 = udiv i64 %68, 100
  %70 = load i64, i64* %10, align 8
  %71 = add i64 %70, %69
  store i64 %71, i64* %10, align 8
  br label %73

72:                                               ; preds = %59
  br label %85

73:                                               ; preds = %65
  br label %81

74:                                               ; preds = %54
  %75 = load i64*, i64** %5, align 8
  %76 = icmp ne i64* %75, null
  br i1 %76, label %77, label %80

77:                                               ; preds = %74
  %78 = load i64, i64* %11, align 8
  %79 = load i64*, i64** %5, align 8
  store i64 %78, i64* %79, align 8
  br label %80

80:                                               ; preds = %77, %74
  br label %85

81:                                               ; preds = %73
  br label %82

82:                                               ; preds = %81
  %83 = load i32, i32* %12, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %12, align 4
  br label %32

85:                                               ; preds = %80, %72, %40, %32
  %86 = load i8*, i8** %6, align 8
  store i8* %86, i8** %3, align 8
  store i32 1, i32* %13, align 4
  br label %87

87:                                               ; preds = %85, %52, %30
  %88 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %88)
  %89 = load i8*, i8** %3, align 8
  ret i8* %89
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @sysctlnametomib(i8*, i32*, i64*) #2

declare dso_local i32 @error(i8*) #2

declare dso_local i32 @sysctl(i32*, i64, i8*, i64*, i32*, i32) #2

declare dso_local i64 @malloc(i64) #2

declare dso_local i32 @free(i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
