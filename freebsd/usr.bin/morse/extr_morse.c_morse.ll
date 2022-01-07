; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/morse/extr_morse.c_morse.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/morse/extr_morse.c_morse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.morsetab = type { i8, i8* }

@pflag = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [2 x i8] c" \00", align 1
@device = common dso_local global i64 0, align 8
@lflag = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@mtab = common dso_local global %struct.morsetab* null, align 8
@hightab = common dso_local global %struct.morsetab* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8)* @morse to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @morse(i8 signext %0) #0 {
  %2 = alloca i8, align 1
  %3 = alloca %struct.morsetab*, align 8
  store i8 %0, i8* %2, align 1
  %4 = load i8, i8* %2, align 1
  %5 = call i64 @isalpha(i8 zeroext %4)
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %10

7:                                                ; preds = %1
  %8 = load i8, i8* %2, align 1
  %9 = call signext i8 @tolower(i8 zeroext %8)
  store i8 %9, i8* %2, align 1
  br label %10

10:                                               ; preds = %7, %1
  %11 = load i8, i8* %2, align 1
  %12 = sext i8 %11 to i32
  %13 = icmp eq i32 %12, 13
  br i1 %13, label %18, label %14

14:                                               ; preds = %10
  %15 = load i8, i8* %2, align 1
  %16 = sext i8 %15 to i32
  %17 = icmp eq i32 %16, 10
  br i1 %17, label %18, label %19

18:                                               ; preds = %14, %10
  store i8 32, i8* %2, align 1
  br label %19

19:                                               ; preds = %18, %14
  %20 = load i8, i8* %2, align 1
  %21 = sext i8 %20 to i32
  %22 = icmp eq i32 %21, 32
  br i1 %22, label %23, label %43

23:                                               ; preds = %19
  %24 = load i64, i64* @pflag, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %23
  %27 = call i32 @play(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  br label %42

28:                                               ; preds = %23
  %29 = load i64, i64* @device, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %28
  %32 = call i32 @ttyout(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  br label %41

33:                                               ; preds = %28
  %34 = load i64, i64* @lflag, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %33
  %37 = call i32 @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  br label %40

38:                                               ; preds = %33
  %39 = call i32 @show(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0))
  br label %40

40:                                               ; preds = %38, %36
  br label %41

41:                                               ; preds = %40, %31
  br label %42

42:                                               ; preds = %41, %26
  br label %99

43:                                               ; preds = %19
  %44 = load i8, i8* %2, align 1
  %45 = zext i8 %44 to i32
  %46 = icmp slt i32 %45, 128
  br i1 %46, label %47, label %49

47:                                               ; preds = %43
  %48 = load %struct.morsetab*, %struct.morsetab** @mtab, align 8
  br label %51

49:                                               ; preds = %43
  %50 = load %struct.morsetab*, %struct.morsetab** @hightab, align 8
  br label %51

51:                                               ; preds = %49, %47
  %52 = phi %struct.morsetab* [ %48, %47 ], [ %50, %49 ]
  store %struct.morsetab* %52, %struct.morsetab** %3, align 8
  br label %53

53:                                               ; preds = %96, %51
  %54 = load %struct.morsetab*, %struct.morsetab** %3, align 8
  %55 = icmp ne %struct.morsetab* %54, null
  br i1 %55, label %56, label %62

56:                                               ; preds = %53
  %57 = load %struct.morsetab*, %struct.morsetab** %3, align 8
  %58 = getelementptr inbounds %struct.morsetab, %struct.morsetab* %57, i32 0, i32 0
  %59 = load i8, i8* %58, align 8
  %60 = sext i8 %59 to i32
  %61 = icmp ne i32 %60, 0
  br label %62

62:                                               ; preds = %56, %53
  %63 = phi i1 [ false, %53 ], [ %61, %56 ]
  br i1 %63, label %64, label %99

64:                                               ; preds = %62
  %65 = load %struct.morsetab*, %struct.morsetab** %3, align 8
  %66 = getelementptr inbounds %struct.morsetab, %struct.morsetab* %65, i32 0, i32 0
  %67 = load i8, i8* %66, align 8
  %68 = sext i8 %67 to i32
  %69 = load i8, i8* %2, align 1
  %70 = sext i8 %69 to i32
  %71 = icmp eq i32 %68, %70
  br i1 %71, label %72, label %95

72:                                               ; preds = %64
  %73 = load i64, i64* @pflag, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %80

75:                                               ; preds = %72
  %76 = load %struct.morsetab*, %struct.morsetab** %3, align 8
  %77 = getelementptr inbounds %struct.morsetab, %struct.morsetab* %76, i32 0, i32 1
  %78 = load i8*, i8** %77, align 8
  %79 = call i32 @play(i8* %78)
  br label %94

80:                                               ; preds = %72
  %81 = load i64, i64* @device, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %88

83:                                               ; preds = %80
  %84 = load %struct.morsetab*, %struct.morsetab** %3, align 8
  %85 = getelementptr inbounds %struct.morsetab, %struct.morsetab* %84, i32 0, i32 1
  %86 = load i8*, i8** %85, align 8
  %87 = call i32 @ttyout(i8* %86)
  br label %93

88:                                               ; preds = %80
  %89 = load %struct.morsetab*, %struct.morsetab** %3, align 8
  %90 = getelementptr inbounds %struct.morsetab, %struct.morsetab* %89, i32 0, i32 1
  %91 = load i8*, i8** %90, align 8
  %92 = call i32 @show(i8* %91)
  br label %93

93:                                               ; preds = %88, %83
  br label %94

94:                                               ; preds = %93, %75
  br label %95

95:                                               ; preds = %94, %64
  br label %96

96:                                               ; preds = %95
  %97 = load %struct.morsetab*, %struct.morsetab** %3, align 8
  %98 = getelementptr inbounds %struct.morsetab, %struct.morsetab* %97, i32 1
  store %struct.morsetab* %98, %struct.morsetab** %3, align 8
  br label %53

99:                                               ; preds = %42, %62
  ret void
}

declare dso_local i64 @isalpha(i8 zeroext) #1

declare dso_local signext i8 @tolower(i8 zeroext) #1

declare dso_local i32 @play(i8*) #1

declare dso_local i32 @ttyout(i8*) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @show(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
