; ModuleID = '/home/carl/AnghaBench/freebsd/tools/test/testfloat/extr_slowfloat-64.c_float32ToFloatX.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/test/testfloat/extr_slowfloat-64.c_float32ToFloatX.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, %struct.TYPE_4__, i8*, i8*, i8* }
%struct.TYPE_4__ = type { i32, i64 }

@FALSE = common dso_local global i8* null, align 8
@TRUE = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_5__*, i32)* @float32ToFloatX to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @float32ToFloatX(%struct.TYPE_5__* noalias sret %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %1, i32* %3, align 4
  %5 = load i8*, i8** @FALSE, align 8
  %6 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %0, i32 0, i32 3
  store i8* %5, i8** %6, align 8
  %7 = load i8*, i8** @FALSE, align 8
  %8 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %0, i32 0, i32 4
  store i8* %7, i8** %8, align 8
  %9 = load i8*, i8** @FALSE, align 8
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %0, i32 0, i32 5
  store i8* %9, i8** %10, align 8
  %11 = load i32, i32* %3, align 4
  %12 = and i32 %11, -2147483648
  %13 = icmp ne i32 %12, 0
  %14 = zext i1 %13 to i32
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %0, i32 0, i32 0
  store i32 %14, i32* %15, align 8
  %16 = load i32, i32* %3, align 4
  %17 = ashr i32 %16, 23
  %18 = and i32 %17, 255
  store i32 %18, i32* %4, align 4
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %0, i32 0, i32 2
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 1
  store i64 0, i64* %20, align 8
  %21 = load i32, i32* %3, align 4
  %22 = and i32 %21, 8388607
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %0, i32 0, i32 2
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %0, i32 0, i32 2
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = shl i32 %27, 32
  store i32 %28, i32* %26, align 8
  %29 = load i32, i32* %4, align 4
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %57

31:                                               ; preds = %2
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %0, i32 0, i32 2
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %31
  %37 = load i8*, i8** @TRUE, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %0, i32 0, i32 5
  store i8* %37, i8** %38, align 8
  br label %56

39:                                               ; preds = %31
  store i32 -126, i32* %4, align 4
  br label %40

40:                                               ; preds = %47, %39
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %0, i32 0, i32 2
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = shl i32 %43, 1
  store i32 %44, i32* %42, align 8
  %45 = load i32, i32* %4, align 4
  %46 = add nsw i32 %45, -1
  store i32 %46, i32* %4, align 4
  br label %47

47:                                               ; preds = %40
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %0, i32 0, i32 2
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @LIT64(i32 0)
  %52 = icmp slt i32 %50, %51
  br i1 %52, label %40, label %53

53:                                               ; preds = %47
  %54 = load i32, i32* %4, align 4
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %0, i32 0, i32 1
  store i32 %54, i32* %55, align 4
  br label %56

56:                                               ; preds = %53, %36
  br label %82

57:                                               ; preds = %2
  %58 = load i32, i32* %4, align 4
  %59 = icmp eq i32 %58, 255
  br i1 %59, label %60, label %72

60:                                               ; preds = %57
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %0, i32 0, i32 2
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %60
  %66 = load i8*, i8** @TRUE, align 8
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %0, i32 0, i32 4
  store i8* %66, i8** %67, align 8
  br label %71

68:                                               ; preds = %60
  %69 = load i8*, i8** @TRUE, align 8
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %0, i32 0, i32 3
  store i8* %69, i8** %70, align 8
  br label %71

71:                                               ; preds = %68, %65
  br label %81

72:                                               ; preds = %57
  %73 = call i32 @LIT64(i32 0)
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %0, i32 0, i32 2
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = or i32 %76, %73
  store i32 %77, i32* %75, align 8
  %78 = load i32, i32* %4, align 4
  %79 = sub nsw i32 %78, 127
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %0, i32 0, i32 1
  store i32 %79, i32* %80, align 4
  br label %81

81:                                               ; preds = %72, %71
  br label %82

82:                                               ; preds = %81, %56
  ret void
}

declare dso_local i32 @LIT64(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
