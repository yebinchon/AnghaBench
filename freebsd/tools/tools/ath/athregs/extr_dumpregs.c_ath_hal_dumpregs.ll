; ModuleID = '/home/carl/AnghaBench/freebsd/tools/tools/ath/athregs/extr_dumpregs.c_ath_hal_dumpregs.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/tools/ath/athregs/extr_dumpregs.c_ath_hal_dumpregs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i64, i64, %struct.dumpreg**, i32 }
%struct.dumpreg = type { i32, i32, i32* }

@state = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"%s%-8s\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c" [%04x]\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"%s%04x\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c" %08x\00", align 1
@ah = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32)* @ath_hal_dumpregs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ath_hal_dumpregs(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.dumpreg*, align 8
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @state, i32 0, i32 4), i32** %5, align 8
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %6, align 8
  store i32 0, i32* %8, align 4
  store i32 4, i32* %9, align 4
  %11 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @state, i32 0, i32 2), align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %19

13:                                               ; preds = %2
  %14 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @state, i32 0, i32 1), align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %13
  %17 = load i32, i32* %9, align 4
  %18 = add nsw i32 %17, -1
  store i32 %18, i32* %9, align 4
  br label %19

19:                                               ; preds = %16, %13, %2
  store i32 0, i32* %7, align 4
  br label %20

20:                                               ; preds = %88, %19
  %21 = load i32, i32* %7, align 4
  %22 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @state, i32 0, i32 0), align 8
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %24, label %91

24:                                               ; preds = %20
  %25 = load %struct.dumpreg**, %struct.dumpreg*** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @state, i32 0, i32 3), align 8
  %26 = load i32, i32* %7, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.dumpreg*, %struct.dumpreg** %25, i64 %27
  %29 = load %struct.dumpreg*, %struct.dumpreg** %28, align 8
  store %struct.dumpreg* %29, %struct.dumpreg** %10, align 8
  %30 = load i32, i32* %4, align 4
  %31 = load %struct.dumpreg*, %struct.dumpreg** %10, align 8
  %32 = getelementptr inbounds %struct.dumpreg, %struct.dumpreg* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = and i32 %30, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %87

36:                                               ; preds = %24
  %37 = load %struct.dumpreg*, %struct.dumpreg** %10, align 8
  %38 = load i32*, i32** %5, align 8
  %39 = call i64 @match(%struct.dumpreg* %37, i32* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %87

41:                                               ; preds = %36
  %42 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @state, i32 0, i32 2), align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %65

44:                                               ; preds = %41
  %45 = load %struct.dumpreg*, %struct.dumpreg** %10, align 8
  %46 = getelementptr inbounds %struct.dumpreg, %struct.dumpreg* %45, i32 0, i32 2
  %47 = load i32*, i32** %46, align 8
  %48 = icmp ne i32* %47, null
  br i1 %48, label %49, label %65

49:                                               ; preds = %44
  %50 = load i32*, i32** %3, align 8
  %51 = load i8*, i8** %6, align 8
  %52 = load %struct.dumpreg*, %struct.dumpreg** %10, align 8
  %53 = getelementptr inbounds %struct.dumpreg, %struct.dumpreg* %52, i32 0, i32 2
  %54 = load i32*, i32** %53, align 8
  %55 = call i32 (i32*, i8*, ...) @fprintf(i32* %50, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* %51, i32* %54)
  %56 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @state, i32 0, i32 1), align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %64

58:                                               ; preds = %49
  %59 = load i32*, i32** %3, align 8
  %60 = load %struct.dumpreg*, %struct.dumpreg** %10, align 8
  %61 = getelementptr inbounds %struct.dumpreg, %struct.dumpreg* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = call i32 (i32*, i8*, ...) @fprintf(i32* %59, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 %62)
  br label %64

64:                                               ; preds = %58, %49
  br label %72

65:                                               ; preds = %44, %41
  %66 = load i32*, i32** %3, align 8
  %67 = load i8*, i8** %6, align 8
  %68 = load %struct.dumpreg*, %struct.dumpreg** %10, align 8
  %69 = getelementptr inbounds %struct.dumpreg, %struct.dumpreg* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = call i32 (i32*, i8*, ...) @fprintf(i32* %66, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i8* %67, i32 %70)
  br label %72

72:                                               ; preds = %65, %64
  %73 = load i32*, i32** %3, align 8
  %74 = load i32, i32* @ah, align 4
  %75 = load %struct.dumpreg*, %struct.dumpreg** %10, align 8
  %76 = getelementptr inbounds %struct.dumpreg, %struct.dumpreg* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @OS_REG_READ(i32 %74, i32 %77)
  %79 = call i32 (i32*, i8*, ...) @fprintf(i32* %73, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i32 %78)
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0), i8** %6, align 8
  %80 = load i32, i32* %8, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %8, align 4
  %82 = load i32, i32* %9, align 4
  %83 = srem i32 %81, %82
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %72
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0), i8** %6, align 8
  br label %86

86:                                               ; preds = %85, %72
  br label %87

87:                                               ; preds = %86, %36, %24
  br label %88

88:                                               ; preds = %87
  %89 = load i32, i32* %7, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %7, align 4
  br label %20

91:                                               ; preds = %20
  %92 = load i32, i32* %8, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %97

94:                                               ; preds = %91
  %95 = load i32*, i32** %3, align 8
  %96 = call i32 (i32*, i8*, ...) @fprintf(i32* %95, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0))
  br label %97

97:                                               ; preds = %94, %91
  ret void
}

declare dso_local i64 @match(%struct.dumpreg*, i32*) #1

declare dso_local i32 @fprintf(i32*, i8*, ...) #1

declare dso_local i32 @OS_REG_READ(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
