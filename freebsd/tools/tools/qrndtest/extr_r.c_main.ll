; ModuleID = '/home/carl/AnghaBench/freebsd/tools/tools/qrndtest/extr_r.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/tools/qrndtest/extr_r.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (...)*, i32* }

@rndfuns = common dso_local global %struct.TYPE_2__* null, align 8
@.str = private unnamed_addr constant [21 x i8] c"%d: %ld %ld %ld %ld\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca [4 x i32], align 16
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32 (...)*, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %10 = bitcast [4 x i32]* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %10, i8 0, i64 16, i1 false)
  %11 = load i32, i32* %4, align 4
  %12 = icmp eq i32 %11, 1
  br i1 %12, label %13, label %18

13:                                               ; preds = %2
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** @rndfuns, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i64 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32 (...)*, i32 (...)** %16, align 8
  store i32 (...)* %17, i32 (...)** %9, align 8
  br label %60

18:                                               ; preds = %2
  store i32 0, i32* %8, align 4
  br label %19

19:                                               ; preds = %41, %18
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** @rndfuns, align 8
  %21 = load i32, i32* %8, align 4
  %22 = zext i32 %21 to i64
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i64 %22
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 1
  %25 = load i32*, i32** %24, align 8
  %26 = icmp ne i32* %25, null
  br i1 %26, label %27, label %44

27:                                               ; preds = %19
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** @rndfuns, align 8
  %29 = load i32, i32* %8, align 4
  %30 = zext i32 %29 to i64
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i64 %30
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 1
  %33 = load i32*, i32** %32, align 8
  %34 = load i8**, i8*** %5, align 8
  %35 = getelementptr inbounds i8*, i8** %34, i64 1
  %36 = load i8*, i8** %35, align 8
  %37 = call i64 @strcasecmp(i32* %33, i8* %36)
  %38 = icmp eq i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %27
  br label %44

40:                                               ; preds = %27
  br label %41

41:                                               ; preds = %40
  %42 = load i32, i32* %8, align 4
  %43 = add i32 %42, 1
  store i32 %43, i32* %8, align 4
  br label %19

44:                                               ; preds = %39, %19
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** @rndfuns, align 8
  %46 = load i32, i32* %8, align 4
  %47 = zext i32 %46 to i64
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 1
  %50 = load i32*, i32** %49, align 8
  %51 = icmp eq i32* %50, null
  br i1 %51, label %52, label %53

52:                                               ; preds = %44
  ret i32 1

53:                                               ; preds = %44
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** @rndfuns, align 8
  %55 = load i32, i32* %8, align 4
  %56 = zext i32 %55 to i64
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i64 %56
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  %59 = load i32 (...)*, i32 (...)** %58, align 8
  store i32 (...)* %59, i32 (...)** %9, align 8
  br label %60

60:                                               ; preds = %53, %13
  br label %61

61:                                               ; preds = %105, %60
  %62 = load i32 (...)*, i32 (...)** %9, align 8
  %63 = call i32 (...) %62()
  %64 = srem i32 %63, 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 %65
  %67 = load i32, i32* %66, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %66, align 4
  %69 = load i32, i32* %8, align 4
  %70 = add i32 %69, 1
  store i32 %70, i32* %8, align 4
  %71 = urem i32 %69, 4194304
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %73, label %105

73:                                               ; preds = %61
  %74 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 0
  %75 = load i32, i32* %74, align 16
  %76 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 1
  %77 = load i32, i32* %76, align 4
  %78 = add nsw i32 %75, %77
  %79 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 2
  %80 = load i32, i32* %79, align 8
  %81 = add nsw i32 %78, %80
  %82 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 3
  %83 = load i32, i32* %82, align 4
  %84 = add nsw i32 %81, %83
  store i32 %84, i32* %7, align 4
  %85 = load i32, i32* %7, align 4
  %86 = sdiv i32 %85, 4
  store i32 %86, i32* %7, align 4
  %87 = load i32, i32* %8, align 4
  %88 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 0
  %89 = load i32, i32* %88, align 16
  %90 = load i32, i32* %7, align 4
  %91 = sub nsw i32 %89, %90
  %92 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 1
  %93 = load i32, i32* %92, align 4
  %94 = load i32, i32* %7, align 4
  %95 = sub nsw i32 %93, %94
  %96 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 2
  %97 = load i32, i32* %96, align 8
  %98 = load i32, i32* %7, align 4
  %99 = sub nsw i32 %97, %98
  %100 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 3
  %101 = load i32, i32* %100, align 4
  %102 = load i32, i32* %7, align 4
  %103 = sub nsw i32 %101, %102
  %104 = call i32 @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %87, i32 %91, i32 %95, i32 %99, i32 %103)
  br label %105

105:                                              ; preds = %73, %61
  br label %61
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i64 @strcasecmp(i32*, i8*) #2

declare dso_local i32 @printf(i8*, i32, i32, i32, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
