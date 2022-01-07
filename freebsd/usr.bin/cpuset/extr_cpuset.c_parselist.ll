; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/cpuset/extr_cpuset.c_parselist.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/cpuset/extr_cpuset.c_parselist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bitset = type { i32 }

@EXIT_FAILURE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"List entry %d exceeds maximum of %d\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"Malformed list %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.bitset*, i32)* @parselist to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @parselist(i8* %0, %struct.bitset* %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.bitset*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store %struct.bitset* %1, %struct.bitset** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %11 = load i8*, i8** %4, align 8
  store i8* %11, i8** %10, align 8
  br label %12

12:                                               ; preds = %84, %63, %3
  %13 = load i8*, i8** %10, align 8
  %14 = load i8, i8* %13, align 1
  %15 = sext i8 %14 to i32
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %87

17:                                               ; preds = %12
  %18 = load i8*, i8** %10, align 8
  %19 = load i8, i8* %18, align 1
  %20 = call i64 @isdigit(i8 signext %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %64

22:                                               ; preds = %17
  %23 = load i8*, i8** %10, align 8
  %24 = call i32 @atoi(i8* %23)
  store i32 %24, i32* %9, align 4
  %25 = load i32, i32* %9, align 4
  %26 = load i32, i32* %6, align 4
  %27 = icmp sge i32 %25, %26
  br i1 %27, label %28, label %34

28:                                               ; preds = %22
  %29 = load i32, i32* @EXIT_FAILURE, align 4
  %30 = load i32, i32* %9, align 4
  %31 = load i32, i32* %6, align 4
  %32 = sub nsw i32 %31, 1
  %33 = call i32 (i32, i8*, ...) @errx(i32 %29, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %30, i32 %32)
  br label %34

34:                                               ; preds = %28, %22
  br label %35

35:                                               ; preds = %40, %34
  %36 = load i8*, i8** %10, align 8
  %37 = load i8, i8* %36, align 1
  %38 = call i64 @isdigit(i8 signext %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %35
  %41 = load i8*, i8** %10, align 8
  %42 = getelementptr inbounds i8, i8* %41, i32 1
  store i8* %42, i8** %10, align 8
  br label %35

43:                                               ; preds = %35
  %44 = load i32, i32* %7, align 4
  switch i32 %44, label %62 [
    i32 0, label %45
    i32 2, label %47
    i32 1, label %61
  ]

45:                                               ; preds = %43
  %46 = load i32, i32* %9, align 4
  store i32 %46, i32* %8, align 4
  store i32 1, i32* %7, align 4
  br label %63

47:                                               ; preds = %43
  br label %48

48:                                               ; preds = %57, %47
  %49 = load i32, i32* %8, align 4
  %50 = load i32, i32* %9, align 4
  %51 = icmp sle i32 %49, %50
  br i1 %51, label %52, label %60

52:                                               ; preds = %48
  %53 = load i32, i32* %6, align 4
  %54 = load i32, i32* %8, align 4
  %55 = load %struct.bitset*, %struct.bitset** %5, align 8
  %56 = call i32 @BIT_SET(i32 %53, i32 %54, %struct.bitset* %55)
  br label %57

57:                                               ; preds = %52
  %58 = load i32, i32* %8, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %8, align 4
  br label %48

60:                                               ; preds = %48
  store i32 0, i32* %7, align 4
  br label %63

61:                                               ; preds = %43
  br label %62

62:                                               ; preds = %43, %61
  br label %97

63:                                               ; preds = %60, %45
  br label %12

64:                                               ; preds = %17
  %65 = load i8*, i8** %10, align 8
  %66 = load i8, i8* %65, align 1
  %67 = sext i8 %66 to i32
  switch i32 %67, label %83 [
    i32 44, label %68
    i32 45, label %78
  ]

68:                                               ; preds = %64
  %69 = load i32, i32* %7, align 4
  switch i32 %69, label %77 [
    i32 0, label %70
    i32 1, label %71
    i32 2, label %76
  ]

70:                                               ; preds = %68
  br label %77

71:                                               ; preds = %68
  %72 = load i32, i32* %6, align 4
  %73 = load i32, i32* %9, align 4
  %74 = load %struct.bitset*, %struct.bitset** %5, align 8
  %75 = call i32 @BIT_SET(i32 %72, i32 %73, %struct.bitset* %74)
  store i32 0, i32* %7, align 4
  br label %77

76:                                               ; preds = %68
  br label %97

77:                                               ; preds = %68, %71, %70
  br label %84

78:                                               ; preds = %64
  %79 = load i32, i32* %7, align 4
  %80 = icmp ne i32 %79, 1
  br i1 %80, label %81, label %82

81:                                               ; preds = %78
  br label %97

82:                                               ; preds = %78
  store i32 2, i32* %7, align 4
  br label %84

83:                                               ; preds = %64
  br label %97

84:                                               ; preds = %82, %77
  %85 = load i8*, i8** %10, align 8
  %86 = getelementptr inbounds i8, i8* %85, i32 1
  store i8* %86, i8** %10, align 8
  br label %12

87:                                               ; preds = %12
  %88 = load i32, i32* %7, align 4
  switch i32 %88, label %96 [
    i32 0, label %89
    i32 1, label %90
    i32 2, label %95
  ]

89:                                               ; preds = %87
  br label %96

90:                                               ; preds = %87
  %91 = load i32, i32* %6, align 4
  %92 = load i32, i32* %9, align 4
  %93 = load %struct.bitset*, %struct.bitset** %5, align 8
  %94 = call i32 @BIT_SET(i32 %91, i32 %92, %struct.bitset* %93)
  br label %96

95:                                               ; preds = %87
  br label %97

96:                                               ; preds = %87, %90, %89
  br label %101

97:                                               ; preds = %95, %83, %81, %76, %62
  %98 = load i32, i32* @EXIT_FAILURE, align 4
  %99 = load i8*, i8** %4, align 8
  %100 = call i32 (i32, i8*, ...) @errx(i32 %98, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i8* %99)
  br label %101

101:                                              ; preds = %97, %96
  ret void
}

declare dso_local i64 @isdigit(i8 signext) #1

declare dso_local i32 @atoi(i8*) #1

declare dso_local i32 @errx(i32, i8*, ...) #1

declare dso_local i32 @BIT_SET(i32, i32, %struct.bitset*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
