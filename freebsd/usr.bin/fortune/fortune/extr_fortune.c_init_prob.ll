; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/fortune/fortune/extr_fortune.c_init_prob.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/fortune/fortune/extr_fortune.c_init_prob.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, %struct.TYPE_3__* }

@File_tail = common dso_local global %struct.TYPE_3__* null, align 8
@NO_PROB = common dso_local global i32 0, align 4
@Equal_probs = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"summing probabilities:%d%% with %d NO_PROB's\00", align 1
@.str.1 = private unnamed_addr constant [45 x i8] c"fortune: probabilities sum to %d%% > 100%%!\0A\00", align 1
@.str.2 = private unnamed_addr constant [62 x i8] c"fortune: no place to put residual probability (%d%% < 100%%)\0A\00", align 1
@.str.3 = private unnamed_addr constant [63 x i8] c"fortune: no probability left to put in residual files (100%%)\0A\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c", frac = %d%%\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c", residual = %d%%\00", align 1
@.str.6 = private unnamed_addr constant [44 x i8] c", %d%% distributed over remaining fortunes\0A\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@Debug = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @init_prob to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_prob() #0 {
  %1 = alloca %struct.TYPE_3__*, align 8
  %2 = alloca %struct.TYPE_3__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.TYPE_3__* null, %struct.TYPE_3__** %2, align 8
  store i32 0, i32* %3, align 4
  store i32 0, i32* %4, align 4
  %6 = load %struct.TYPE_3__*, %struct.TYPE_3__** @File_tail, align 8
  store %struct.TYPE_3__* %6, %struct.TYPE_3__** %1, align 8
  br label %7

7:                                                ; preds = %31, %0
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %9 = icmp ne %struct.TYPE_3__* %8, null
  br i1 %9, label %10, label %35

10:                                               ; preds = %7
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* @NO_PROB, align 4
  %15 = icmp eq i32 %13, %14
  br i1 %15, label %16, label %24

16:                                               ; preds = %10
  %17 = load i32, i32* %4, align 4
  %18 = add nsw i32 %17, 1
  store i32 %18, i32* %4, align 4
  %19 = load i64, i64* @Equal_probs, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %16
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  store %struct.TYPE_3__* %22, %struct.TYPE_3__** %2, align 8
  br label %23

23:                                               ; preds = %21, %16
  br label %30

24:                                               ; preds = %10
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* %3, align 4
  %29 = add nsw i32 %28, %27
  store i32 %29, i32* %3, align 4
  br label %30

30:                                               ; preds = %24, %23
  br label %31

31:                                               ; preds = %30
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 1
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %33, align 8
  store %struct.TYPE_3__* %34, %struct.TYPE_3__** %1, align 8
  br label %7

35:                                               ; preds = %7
  %36 = load i32, i32* @stderr, align 4
  %37 = load i32, i32* %3, align 4
  %38 = load i32, i32* %4, align 4
  %39 = call i32 @DPRINTF(i32 1, i32 %38)
  %40 = load i32, i32* %3, align 4
  %41 = icmp sgt i32 %40, 100
  br i1 %41, label %42, label %47

42:                                               ; preds = %35
  %43 = load i32, i32* @stderr, align 4
  %44 = load i32, i32* %3, align 4
  %45 = call i32 (i32, i8*, ...) @fprintf(i32 %43, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), i32 %44)
  %46 = call i32 @exit(i32 1) #3
  unreachable

47:                                               ; preds = %35
  %48 = load i32, i32* %3, align 4
  %49 = icmp slt i32 %48, 100
  br i1 %49, label %50, label %58

50:                                               ; preds = %47
  %51 = load i32, i32* %4, align 4
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %58

53:                                               ; preds = %50
  %54 = load i32, i32* @stderr, align 4
  %55 = load i32, i32* %3, align 4
  %56 = call i32 (i32, i8*, ...) @fprintf(i32 %54, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.2, i64 0, i64 0), i32 %55)
  %57 = call i32 @exit(i32 1) #3
  unreachable

58:                                               ; preds = %50, %47
  %59 = load i32, i32* %3, align 4
  %60 = icmp eq i32 %59, 100
  br i1 %60, label %61, label %68

61:                                               ; preds = %58
  %62 = load i32, i32* %4, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %68

64:                                               ; preds = %61
  %65 = load i32, i32* @stderr, align 4
  %66 = call i32 (i32, i8*, ...) @fprintf(i32 %65, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.3, i64 0, i64 0))
  %67 = call i32 @exit(i32 1) #3
  unreachable

68:                                               ; preds = %61, %58
  br label %69

69:                                               ; preds = %68
  br label %70

70:                                               ; preds = %69
  %71 = load i32, i32* %3, align 4
  %72 = sub nsw i32 100, %71
  store i32 %72, i32* %3, align 4
  %73 = load i64, i64* @Equal_probs, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %124

75:                                               ; preds = %70
  %76 = load i32, i32* %4, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %119

78:                                               ; preds = %75
  %79 = load i32, i32* %4, align 4
  %80 = icmp sgt i32 %79, 1
  br i1 %80, label %81, label %112

81:                                               ; preds = %78
  %82 = load i32, i32* %3, align 4
  %83 = load i32, i32* %4, align 4
  %84 = sdiv i32 %82, %83
  store i32 %84, i32* %5, align 4
  %85 = load i32, i32* @stderr, align 4
  %86 = load i32, i32* %5, align 4
  %87 = call i32 @DPRINTF(i32 1, i32 %86)
  %88 = load %struct.TYPE_3__*, %struct.TYPE_3__** @File_tail, align 8
  store %struct.TYPE_3__* %88, %struct.TYPE_3__** %1, align 8
  br label %89

89:                                               ; preds = %107, %81
  %90 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %91 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %92 = icmp ne %struct.TYPE_3__* %90, %91
  br i1 %92, label %93, label %111

93:                                               ; preds = %89
  %94 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %95 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = load i32, i32* @NO_PROB, align 4
  %98 = icmp eq i32 %96, %97
  br i1 %98, label %99, label %106

99:                                               ; preds = %93
  %100 = load i32, i32* %5, align 4
  %101 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %102 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %101, i32 0, i32 0
  store i32 %100, i32* %102, align 8
  %103 = load i32, i32* %5, align 4
  %104 = load i32, i32* %3, align 4
  %105 = sub nsw i32 %104, %103
  store i32 %105, i32* %3, align 4
  br label %106

106:                                              ; preds = %99, %93
  br label %107

107:                                              ; preds = %106
  %108 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %109 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %108, i32 0, i32 1
  %110 = load %struct.TYPE_3__*, %struct.TYPE_3__** %109, align 8
  store %struct.TYPE_3__* %110, %struct.TYPE_3__** %1, align 8
  br label %89

111:                                              ; preds = %89
  br label %112

112:                                              ; preds = %111, %78
  %113 = load i32, i32* %3, align 4
  %114 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %115 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %114, i32 0, i32 0
  store i32 %113, i32* %115, align 8
  %116 = load i32, i32* @stderr, align 4
  %117 = load i32, i32* %3, align 4
  %118 = call i32 @DPRINTF(i32 1, i32 %117)
  br label %123

119:                                              ; preds = %75
  %120 = load i32, i32* @stderr, align 4
  %121 = load i32, i32* %3, align 4
  %122 = call i32 @DPRINTF(i32 1, i32 %121)
  br label %123

123:                                              ; preds = %119, %112
  br label %124

124:                                              ; preds = %123, %70
  %125 = load i32, i32* @stderr, align 4
  %126 = call i32 @DPRINTF(i32 1, i32 ptrtoint ([2 x i8]* @.str.7 to i32))
  ret void
}

declare dso_local i32 @DPRINTF(i32, i32) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
