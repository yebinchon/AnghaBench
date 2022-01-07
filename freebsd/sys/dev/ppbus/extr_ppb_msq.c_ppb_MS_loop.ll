; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ppbus/extr_ppb_msq.c_ppb_MS_loop.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ppbus/extr_ppb_msq.c_ppb_MS_loop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ppb_microseq = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i8* }

@MS_UNKNOWN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ppb_MS_loop(i32 %0, i32 %1, %struct.ppb_microseq* %2, %struct.ppb_microseq* %3, %struct.ppb_microseq* %4, i32 %5, i32* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.ppb_microseq*, align 8
  %11 = alloca %struct.ppb_microseq*, align 8
  %12 = alloca %struct.ppb_microseq*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca [6 x %struct.ppb_microseq], align 16
  store i32 %0, i32* %8, align 4
  store i32 %1, i32* %9, align 4
  store %struct.ppb_microseq* %2, %struct.ppb_microseq** %10, align 8
  store %struct.ppb_microseq* %3, %struct.ppb_microseq** %11, align 8
  store %struct.ppb_microseq* %4, %struct.ppb_microseq** %12, align 8
  store i32 %5, i32* %13, align 4
  store i32* %6, i32** %14, align 8
  %16 = getelementptr inbounds [6 x %struct.ppb_microseq], [6 x %struct.ppb_microseq]* %15, i64 0, i64 0
  %17 = call %struct.TYPE_2__* @MS_CALL(i32 0)
  %18 = getelementptr inbounds %struct.ppb_microseq, %struct.ppb_microseq* %16, i32 0, i32 0
  store %struct.TYPE_2__* %17, %struct.TYPE_2__** %18, align 8
  %19 = getelementptr inbounds %struct.ppb_microseq, %struct.ppb_microseq* %16, i64 1
  %20 = load i32, i32* @MS_UNKNOWN, align 4
  %21 = call %struct.TYPE_2__* @MS_SET(i32 %20)
  %22 = getelementptr inbounds %struct.ppb_microseq, %struct.ppb_microseq* %19, i32 0, i32 0
  store %struct.TYPE_2__* %21, %struct.TYPE_2__** %22, align 8
  %23 = getelementptr inbounds %struct.ppb_microseq, %struct.ppb_microseq* %19, i64 1
  %24 = call %struct.TYPE_2__* @MS_CALL(i32 0)
  %25 = getelementptr inbounds %struct.ppb_microseq, %struct.ppb_microseq* %23, i32 0, i32 0
  store %struct.TYPE_2__* %24, %struct.TYPE_2__** %25, align 8
  %26 = getelementptr inbounds %struct.ppb_microseq, %struct.ppb_microseq* %23, i64 1
  %27 = call %struct.TYPE_2__* @MS_DBRA(i32 -1)
  %28 = getelementptr inbounds %struct.ppb_microseq, %struct.ppb_microseq* %26, i32 0, i32 0
  store %struct.TYPE_2__* %27, %struct.TYPE_2__** %28, align 8
  %29 = getelementptr inbounds %struct.ppb_microseq, %struct.ppb_microseq* %26, i64 1
  %30 = call %struct.TYPE_2__* @MS_CALL(i32 0)
  %31 = getelementptr inbounds %struct.ppb_microseq, %struct.ppb_microseq* %29, i32 0, i32 0
  store %struct.TYPE_2__* %30, %struct.TYPE_2__** %31, align 8
  %32 = getelementptr inbounds %struct.ppb_microseq, %struct.ppb_microseq* %29, i64 1
  %33 = call %struct.TYPE_2__* @MS_RET(i32 0)
  %34 = getelementptr inbounds %struct.ppb_microseq, %struct.ppb_microseq* %32, i32 0, i32 0
  store %struct.TYPE_2__* %33, %struct.TYPE_2__** %34, align 8
  %35 = load %struct.ppb_microseq*, %struct.ppb_microseq** %10, align 8
  %36 = bitcast %struct.ppb_microseq* %35 to i8*
  %37 = getelementptr inbounds [6 x %struct.ppb_microseq], [6 x %struct.ppb_microseq]* %15, i64 0, i64 0
  %38 = getelementptr inbounds %struct.ppb_microseq, %struct.ppb_microseq* %37, i32 0, i32 0
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 16
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i64 0
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 1
  store i8* %36, i8** %41, align 8
  %42 = load i32, i32* %13, align 4
  %43 = getelementptr inbounds [6 x %struct.ppb_microseq], [6 x %struct.ppb_microseq]* %15, i64 0, i64 1
  %44 = getelementptr inbounds %struct.ppb_microseq, %struct.ppb_microseq* %43, i32 0, i32 0
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i64 0
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  store i32 %42, i32* %47, align 8
  %48 = load %struct.ppb_microseq*, %struct.ppb_microseq** %11, align 8
  %49 = bitcast %struct.ppb_microseq* %48 to i8*
  %50 = getelementptr inbounds [6 x %struct.ppb_microseq], [6 x %struct.ppb_microseq]* %15, i64 0, i64 2
  %51 = getelementptr inbounds %struct.ppb_microseq, %struct.ppb_microseq* %50, i32 0, i32 0
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** %51, align 16
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i64 0
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 1
  store i8* %49, i8** %54, align 8
  %55 = load %struct.ppb_microseq*, %struct.ppb_microseq** %12, align 8
  %56 = bitcast %struct.ppb_microseq* %55 to i8*
  %57 = getelementptr inbounds [6 x %struct.ppb_microseq], [6 x %struct.ppb_microseq]* %15, i64 0, i64 4
  %58 = getelementptr inbounds %struct.ppb_microseq, %struct.ppb_microseq* %57, i32 0, i32 0
  %59 = load %struct.TYPE_2__*, %struct.TYPE_2__** %58, align 16
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i64 0
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 1
  store i8* %56, i8** %61, align 8
  %62 = load i32, i32* %8, align 4
  %63 = load i32, i32* %9, align 4
  %64 = getelementptr inbounds [6 x %struct.ppb_microseq], [6 x %struct.ppb_microseq]* %15, i64 0, i64 0
  %65 = load i32*, i32** %14, align 8
  %66 = call i32 @ppb_MS_microseq(i32 %62, i32 %63, %struct.ppb_microseq* %64, i32* %65)
  ret i32 %66
}

declare dso_local %struct.TYPE_2__* @MS_CALL(i32) #1

declare dso_local %struct.TYPE_2__* @MS_SET(i32) #1

declare dso_local %struct.TYPE_2__* @MS_DBRA(i32) #1

declare dso_local %struct.TYPE_2__* @MS_RET(i32) #1

declare dso_local i32 @ppb_MS_microseq(i32, i32, %struct.ppb_microseq*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
