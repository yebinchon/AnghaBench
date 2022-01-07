; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/diff3/extr_diff3.c_duplicate.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/diff3/extr_diff3.c_duplicate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.range = type { i32, i32 }

@fp = common dso_local global i32* null, align 8
@EXIT_FAILURE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"logic error\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.range*, %struct.range*)* @duplicate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @duplicate(%struct.range* %0, %struct.range* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.range*, align 8
  %5 = alloca %struct.range*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.range* %0, %struct.range** %4, align 8
  store %struct.range* %1, %struct.range** %5, align 8
  %10 = load %struct.range*, %struct.range** %4, align 8
  %11 = getelementptr inbounds %struct.range, %struct.range* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.range*, %struct.range** %4, align 8
  %14 = getelementptr inbounds %struct.range, %struct.range* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = sub nsw i32 %12, %15
  %17 = load %struct.range*, %struct.range** %5, align 8
  %18 = getelementptr inbounds %struct.range, %struct.range* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.range*, %struct.range** %5, align 8
  %21 = getelementptr inbounds %struct.range, %struct.range* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = sub nsw i32 %19, %22
  %24 = icmp ne i32 %16, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %83

26:                                               ; preds = %2
  %27 = load %struct.range*, %struct.range** %4, align 8
  %28 = getelementptr inbounds %struct.range, %struct.range* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @skip(i32 0, i32 %29, i32* null)
  %31 = load %struct.range*, %struct.range** %5, align 8
  %32 = getelementptr inbounds %struct.range, %struct.range* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @skip(i32 1, i32 %33, i32* null)
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %35

35:                                               ; preds = %77, %26
  %36 = load i32, i32* %9, align 4
  %37 = load %struct.range*, %struct.range** %4, align 8
  %38 = getelementptr inbounds %struct.range, %struct.range* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.range*, %struct.range** %4, align 8
  %41 = getelementptr inbounds %struct.range, %struct.range* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = sub nsw i32 %39, %42
  %44 = icmp slt i32 %36, %43
  br i1 %44, label %45, label %80

45:                                               ; preds = %35
  br label %46

46:                                               ; preds = %73, %45
  %47 = load i32*, i32** @fp, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @getc(i32 %49)
  store i32 %50, i32* %6, align 4
  %51 = load i32*, i32** @fp, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 1
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @getc(i32 %53)
  store i32 %54, i32* %7, align 4
  %55 = load i32, i32* %6, align 4
  %56 = icmp eq i32 %55, -1
  br i1 %56, label %60, label %57

57:                                               ; preds = %46
  %58 = load i32, i32* %7, align 4
  %59 = icmp eq i32 %58, -1
  br i1 %59, label %60, label %63

60:                                               ; preds = %57, %46
  %61 = load i32, i32* @EXIT_FAILURE, align 4
  %62 = call i32 @errx(i32 %61, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  br label %63

63:                                               ; preds = %60, %57
  %64 = load i32, i32* %8, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %8, align 4
  %66 = load i32, i32* %6, align 4
  %67 = load i32, i32* %7, align 4
  %68 = icmp ne i32 %66, %67
  br i1 %68, label %69, label %72

69:                                               ; preds = %63
  %70 = load i32, i32* %8, align 4
  %71 = call i32 @repos(i32 %70)
  store i32 0, i32* %3, align 4
  br label %83

72:                                               ; preds = %63
  br label %73

73:                                               ; preds = %72
  %74 = load i32, i32* %6, align 4
  %75 = icmp ne i32 %74, 10
  br i1 %75, label %46, label %76

76:                                               ; preds = %73
  br label %77

77:                                               ; preds = %76
  %78 = load i32, i32* %9, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %9, align 4
  br label %35

80:                                               ; preds = %35
  %81 = load i32, i32* %8, align 4
  %82 = call i32 @repos(i32 %81)
  store i32 1, i32* %3, align 4
  br label %83

83:                                               ; preds = %80, %69, %25
  %84 = load i32, i32* %3, align 4
  ret i32 %84
}

declare dso_local i32 @skip(i32, i32, i32*) #1

declare dso_local i32 @getc(i32) #1

declare dso_local i32 @errx(i32, i8*) #1

declare dso_local i32 @repos(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
