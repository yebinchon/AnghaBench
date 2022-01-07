; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/tip/tip/extr_value.c_vtoken.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/tip/tip/extr_value.c_vtoken.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32 }

@NUMBER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"record\00", align 1
@READ = common dso_local global i32 0, align 4
@NOVAL = common dso_local global %struct.TYPE_6__* null, align 8
@.str.1 = private unnamed_addr constant [23 x i8] c"%s: unknown variable\0D\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @vtoken to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vtoken(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = call i8* @strchr(i8* %5, i8 signext 61)
  store i8* %6, i8** %4, align 8
  %7 = icmp ne i8* %6, null
  br i1 %7, label %8, label %41

8:                                                ; preds = %1
  %9 = load i8*, i8** %4, align 8
  store i8 0, i8* %9, align 1
  %10 = load i8*, i8** %2, align 8
  %11 = call %struct.TYPE_6__* @vlookup(i8* %10)
  store %struct.TYPE_6__* %11, %struct.TYPE_6__** %3, align 8
  %12 = icmp ne %struct.TYPE_6__* %11, null
  br i1 %12, label %13, label %40

13:                                               ; preds = %8
  %14 = load i8*, i8** %4, align 8
  %15 = getelementptr inbounds i8, i8* %14, i32 1
  store i8* %15, i8** %4, align 8
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @NUMBER, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %28

22:                                               ; preds = %13
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %24 = load i8*, i8** %4, align 8
  %25 = call i64 @atoi(i8* %24)
  %26 = inttoptr i64 %25 to i8*
  %27 = call i32 @vassign(%struct.TYPE_6__* %23, i8* %26)
  br label %39

28:                                               ; preds = %13
  %29 = load i8*, i8** %2, align 8
  %30 = call i64 @strcmp(i8* %29, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %28
  %33 = load i8*, i8** %4, align 8
  %34 = call i8* @expand(i8* %33)
  store i8* %34, i8** %4, align 8
  br label %35

35:                                               ; preds = %32, %28
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %37 = load i8*, i8** %4, align 8
  %38 = call i32 @vassign(%struct.TYPE_6__* %36, i8* %37)
  br label %39

39:                                               ; preds = %35, %22
  br label %86

40:                                               ; preds = %8
  br label %83

41:                                               ; preds = %1
  %42 = load i8*, i8** %2, align 8
  %43 = call i8* @strchr(i8* %42, i8 signext 63)
  store i8* %43, i8** %4, align 8
  %44 = icmp ne i8* %43, null
  br i1 %44, label %45, label %61

45:                                               ; preds = %41
  %46 = load i8*, i8** %4, align 8
  store i8 0, i8* %46, align 1
  %47 = load i8*, i8** %2, align 8
  %48 = call %struct.TYPE_6__* @vlookup(i8* %47)
  store %struct.TYPE_6__* %48, %struct.TYPE_6__** %3, align 8
  %49 = icmp ne %struct.TYPE_6__* %48, null
  br i1 %49, label %50, label %60

50:                                               ; preds = %45
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @READ, align 4
  %55 = call i64 @vaccess(i32 %53, i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %50
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %59 = call i32 @vprint(%struct.TYPE_6__* %58)
  br label %86

60:                                               ; preds = %50, %45
  br label %82

61:                                               ; preds = %41
  %62 = load i8*, i8** %2, align 8
  %63 = load i8, i8* %62, align 1
  %64 = sext i8 %63 to i32
  %65 = icmp ne i32 %64, 33
  br i1 %65, label %66, label %69

66:                                               ; preds = %61
  %67 = load i8*, i8** %2, align 8
  %68 = call %struct.TYPE_6__* @vlookup(i8* %67)
  store %struct.TYPE_6__* %68, %struct.TYPE_6__** %3, align 8
  br label %73

69:                                               ; preds = %61
  %70 = load i8*, i8** %2, align 8
  %71 = getelementptr inbounds i8, i8* %70, i64 1
  %72 = call %struct.TYPE_6__* @vlookup(i8* %71)
  store %struct.TYPE_6__* %72, %struct.TYPE_6__** %3, align 8
  br label %73

73:                                               ; preds = %69, %66
  %74 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %75 = load %struct.TYPE_6__*, %struct.TYPE_6__** @NOVAL, align 8
  %76 = icmp ne %struct.TYPE_6__* %74, %75
  br i1 %76, label %77, label %81

77:                                               ; preds = %73
  %78 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %79 = load i8*, i8** %2, align 8
  %80 = call i32 @vassign(%struct.TYPE_6__* %78, i8* %79)
  br label %86

81:                                               ; preds = %73
  br label %82

82:                                               ; preds = %81, %60
  br label %83

83:                                               ; preds = %82, %40
  %84 = load i8*, i8** %2, align 8
  %85 = call i32 @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* %84)
  br label %86

86:                                               ; preds = %83, %77, %57, %39
  ret void
}

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local %struct.TYPE_6__* @vlookup(i8*) #1

declare dso_local i32 @vassign(%struct.TYPE_6__*, i8*) #1

declare dso_local i64 @atoi(i8*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i8* @expand(i8*) #1

declare dso_local i64 @vaccess(i32, i32) #1

declare dso_local i32 @vprint(%struct.TYPE_6__*) #1

declare dso_local i32 @printf(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
