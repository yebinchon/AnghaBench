; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/mips/extr_freebsd32_machdep.c_set_mcontext32.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/mips/extr_freebsd32_machdep.c_set_mcontext32.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32 }
%struct.TYPE_6__ = type { i64, i32, i32*, i32, i32, i32, i32, i32*, i32, i32 }
%struct.TYPE_5__ = type { i8*, i32, i32*, i32, i32, i32, i32, i32*, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.thread*, %struct.TYPE_6__*)* @set_mcontext32 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_mcontext32(%struct.thread* %0, %struct.TYPE_6__* %1) #0 {
  %3 = alloca %struct.thread*, align 8
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca %struct.TYPE_5__, align 8
  %6 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %3, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %4, align 8
  %7 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %8 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 9
  %9 = load i32, i32* %8, align 4
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 9
  store i32 %9, i32* %10, align 4
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 8
  %13 = load i32, i32* %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 8
  store i32 %13, i32* %14, align 8
  store i32 0, i32* %6, align 4
  br label %15

15:                                               ; preds = %31, %2
  %16 = load i32, i32* %6, align 4
  %17 = icmp ult i32 %16, 32
  br i1 %17, label %18, label %34

18:                                               ; preds = %15
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 7
  %21 = load i32*, i32** %20, align 8
  %22 = load i32, i32* %6, align 4
  %23 = zext i32 %22 to i64
  %24 = getelementptr inbounds i32, i32* %21, i64 %23
  %25 = load i32, i32* %24, align 4
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 7
  %27 = load i32*, i32** %26, align 8
  %28 = load i32, i32* %6, align 4
  %29 = zext i32 %28 to i64
  %30 = getelementptr inbounds i32, i32* %27, i64 %29
  store i32 %25, i32* %30, align 4
  br label %31

31:                                               ; preds = %18
  %32 = load i32, i32* %6, align 4
  %33 = add i32 %32, 1
  store i32 %33, i32* %6, align 4
  br label %15

34:                                               ; preds = %15
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 6
  %37 = load i32, i32* %36, align 4
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 6
  store i32 %37, i32* %38, align 4
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 5
  %41 = load i32, i32* %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 5
  store i32 %41, i32* %42, align 8
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 4
  %45 = load i32, i32* %44, align 4
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 4
  store i32 %45, i32* %46, align 4
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 3
  %49 = load i32, i32* %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 3
  store i32 %49, i32* %50, align 8
  store i32 0, i32* %6, align 4
  br label %51

51:                                               ; preds = %67, %34
  %52 = load i32, i32* %6, align 4
  %53 = icmp ult i32 %52, 33
  br i1 %53, label %54, label %70

54:                                               ; preds = %51
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 2
  %57 = load i32*, i32** %56, align 8
  %58 = load i32, i32* %6, align 4
  %59 = zext i32 %58 to i64
  %60 = getelementptr inbounds i32, i32* %57, i64 %59
  %61 = load i32, i32* %60, align 4
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 2
  %63 = load i32*, i32** %62, align 8
  %64 = load i32, i32* %6, align 4
  %65 = zext i32 %64 to i64
  %66 = getelementptr inbounds i32, i32* %63, i64 %65
  store i32 %61, i32* %66, align 4
  br label %67

67:                                               ; preds = %54
  %68 = load i32, i32* %6, align 4
  %69 = add i32 %68, 1
  store i32 %69, i32* %6, align 4
  br label %51

70:                                               ; preds = %51
  %71 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 1
  store i32 %73, i32* %74, align 8
  %75 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = inttoptr i64 %77 to i8*
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 0
  store i8* %78, i8** %79, align 8
  %80 = load %struct.thread*, %struct.thread** %3, align 8
  %81 = call i32 @set_mcontext(%struct.thread* %80, %struct.TYPE_5__* %5)
  ret i32 %81
}

declare dso_local i32 @set_mcontext(%struct.thread*, %struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
