; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cx/extr_if_cx.c_cx_carrier.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cx/extr_if_cx.c_cx_carrier.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i64, i32*, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32* }

@.str = private unnamed_addr constant [12 x i8] c"carrier on\0A\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"carrier loss\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @cx_carrier to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cx_carrier(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %8 = load i8*, i8** %2, align 8
  %9 = bitcast i8* %8 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %9, %struct.TYPE_5__** %3, align 8
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 3
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  store i32* %14, i32** %4, align 8
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 2
  %17 = load i32*, i32** %16, align 8
  store i32* %17, i32** %5, align 8
  %18 = call i32 (...) @splhigh()
  store i32 %18, i32* %6, align 4
  %19 = load i32*, i32** %4, align 8
  %20 = call i32 @CX_LOCK(i32* %19)
  %21 = load i32*, i32** %5, align 8
  %22 = call i32 @cx_get_cd(i32* %21)
  store i32 %22, i32* %7, align 4
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* %7, align 4
  %27 = icmp ne i32 %25, %26
  br i1 %27, label %28, label %70

28:                                               ; preds = %1
  %29 = load i32, i32* %7, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %50

31:                                               ; preds = %28
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %33 = call i32 @CX_DEBUG(%struct.TYPE_5__* %32, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  store i32 1, i32* %35, align 8
  %36 = load i32*, i32** %4, align 8
  %37 = call i32 @CX_UNLOCK(i32* %36)
  %38 = load i32, i32* %6, align 4
  %39 = call i32 @splx(i32 %38)
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %31
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = call i32 @ttyld_modem(i64 %47, i32 1)
  br label %49

49:                                               ; preds = %44, %31
  br label %69

50:                                               ; preds = %28
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %52 = call i32 @CX_DEBUG(%struct.TYPE_5__* %51, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 0
  store i32 0, i32* %54, align 8
  %55 = load i32*, i32** %4, align 8
  %56 = call i32 @CX_UNLOCK(i32* %55)
  %57 = load i32, i32* %6, align 4
  %58 = call i32 @splx(i32 %57)
  %59 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %68

63:                                               ; preds = %50
  %64 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = call i32 @ttyld_modem(i64 %66, i32 0)
  br label %68

68:                                               ; preds = %63, %50
  br label %69

69:                                               ; preds = %68, %49
  br label %75

70:                                               ; preds = %1
  %71 = load i32*, i32** %4, align 8
  %72 = call i32 @CX_UNLOCK(i32* %71)
  %73 = load i32, i32* %6, align 4
  %74 = call i32 @splx(i32 %73)
  br label %75

75:                                               ; preds = %70, %69
  ret void
}

declare dso_local i32 @splhigh(...) #1

declare dso_local i32 @CX_LOCK(i32*) #1

declare dso_local i32 @cx_get_cd(i32*) #1

declare dso_local i32 @CX_DEBUG(%struct.TYPE_5__*, i8*) #1

declare dso_local i32 @CX_UNLOCK(i32*) #1

declare dso_local i32 @splx(i32) #1

declare dso_local i32 @ttyld_modem(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
