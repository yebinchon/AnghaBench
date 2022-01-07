; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cp/extr_cpddk.c_l907.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cp/extr_cpddk.c_l907.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, %struct.TYPE_7__*, i32* }
%struct.TYPE_7__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_6__*)* @l907 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @l907(%struct.TYPE_6__* %0) #0 {
  %2 = alloca %struct.TYPE_6__*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_7__*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %2, align 8
  br label %5

5:                                                ; preds = %69, %37, %1
  %6 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %7 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 2
  %8 = load i32*, i32** %7, align 8
  %9 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = getelementptr inbounds i32, i32* %8, i64 %11
  %13 = bitcast i32* %12 to i64*
  %14 = load volatile i64, i64* %13, align 8
  store i64 %14, i64* %3, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %5
  br label %70

17:                                               ; preds = %5
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 2
  %20 = load i32*, i32** %19, align 8
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = getelementptr inbounds i32, i32* %20, i64 %23
  %25 = bitcast i32* %24 to i64*
  store volatile i64 0, i64* %25, align 8
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = add i64 %28, 1
  store i64 %29, i64* %27, align 8
  %30 = urem i64 %29, 128
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  store i64 %30, i64* %32, align 8
  %33 = load i64, i64* %3, align 8
  %34 = and i64 %33, 3489660928
  %35 = icmp ne i64 %34, 3489660928
  br i1 %35, label %37, label %36

36:                                               ; preds = %17
  br label %38

37:                                               ; preds = %17
  br label %5

38:                                               ; preds = %36
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 1
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %40, align 8
  store %struct.TYPE_7__* %41, %struct.TYPE_7__** %4, align 8
  br label %42

42:                                               ; preds = %51, %38
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 1
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i64 4
  %48 = icmp ult %struct.TYPE_7__* %43, %47
  br i1 %48, label %50, label %49

49:                                               ; preds = %42
  br label %69

50:                                               ; preds = %42
  br label %54

51:                                               ; preds = %68
  %52 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 1
  store %struct.TYPE_7__* %53, %struct.TYPE_7__** %4, align 8
  br label %42

54:                                               ; preds = %50
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = icmp eq i32 %57, 3
  br i1 %58, label %59, label %64

59:                                               ; preds = %54
  %60 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %61 = call i32 @l90(%struct.TYPE_7__* %60, i32 7, i32 255)
  %62 = and i32 %61, 16
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %65, label %64

64:                                               ; preds = %59, %54
  br label %68

65:                                               ; preds = %59
  %66 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %67 = call i32 @l188(%struct.TYPE_7__* %66)
  br label %68

68:                                               ; preds = %65, %64
  br label %51

69:                                               ; preds = %49
  br label %5

70:                                               ; preds = %16
  ret void
}

declare dso_local i32 @l90(%struct.TYPE_7__*, i32, i32) #1

declare dso_local i32 @l188(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
