; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/gprof/extr_printgprof.c_membercmp.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/gprof/extr_printgprof.c_membercmp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { double, double, i64, i64 }

@GREATERTHAN = common dso_local global i32 0, align 4
@LESSTHAN = common dso_local global i32 0, align 4
@EQUALTO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @membercmp(%struct.TYPE_4__* %0, %struct.TYPE_4__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %4, align 8
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** %5, align 8
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load double, double* %11, align 8
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 1
  %15 = load double, double* %14, align 8
  %16 = fadd double %12, %15
  store double %16, double* %6, align 8
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load double, double* %18, align 8
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 1
  %22 = load double, double* %21, align 8
  %23 = fadd double %19, %22
  store double %23, double* %7, align 8
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 2
  %26 = load i64, i64* %25, align 8
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 3
  %29 = load i64, i64* %28, align 8
  %30 = add nsw i64 %26, %29
  store i64 %30, i64* %8, align 8
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 2
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 3
  %36 = load i64, i64* %35, align 8
  %37 = add nsw i64 %33, %36
  store i64 %37, i64* %9, align 8
  %38 = load double, double* %6, align 8
  %39 = load double, double* %7, align 8
  %40 = fcmp ogt double %38, %39
  br i1 %40, label %41, label %43

41:                                               ; preds = %2
  %42 = load i32, i32* @GREATERTHAN, align 4
  store i32 %42, i32* %3, align 4
  br label %63

43:                                               ; preds = %2
  %44 = load double, double* %6, align 8
  %45 = load double, double* %7, align 8
  %46 = fcmp olt double %44, %45
  br i1 %46, label %47, label %49

47:                                               ; preds = %43
  %48 = load i32, i32* @LESSTHAN, align 4
  store i32 %48, i32* %3, align 4
  br label %63

49:                                               ; preds = %43
  %50 = load i64, i64* %8, align 8
  %51 = load i64, i64* %9, align 8
  %52 = icmp sgt i64 %50, %51
  br i1 %52, label %53, label %55

53:                                               ; preds = %49
  %54 = load i32, i32* @GREATERTHAN, align 4
  store i32 %54, i32* %3, align 4
  br label %63

55:                                               ; preds = %49
  %56 = load i64, i64* %8, align 8
  %57 = load i64, i64* %9, align 8
  %58 = icmp slt i64 %56, %57
  br i1 %58, label %59, label %61

59:                                               ; preds = %55
  %60 = load i32, i32* @LESSTHAN, align 4
  store i32 %60, i32* %3, align 4
  br label %63

61:                                               ; preds = %55
  %62 = load i32, i32* @EQUALTO, align 4
  store i32 %62, i32* %3, align 4
  br label %63

63:                                               ; preds = %61, %59, %53, %47, %41
  %64 = load i32, i32* %3, align 4
  ret i32 %64
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
