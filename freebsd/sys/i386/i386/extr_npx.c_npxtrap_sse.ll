; ModuleID = '/home/carl/AnghaBench/freebsd/sys/i386/i386/extr_npx.c_npxtrap_sse.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/i386/i386/extr_npx.c_npxtrap_sse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }

@hw_float = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [62 x i8] c"npxtrap_sse: fpcurthread = %p, curthread = %p, hw_float = %d\0A\00", align 1
@fpcurthread = common dso_local global i32 0, align 4
@curthread = common dso_local global %struct.TYPE_13__* null, align 8
@.str.1 = private unnamed_addr constant [21 x i8] c"npxtrap from nowhere\00", align 1
@fpetable = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @npxtrap_sse() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @hw_float, align 4
  %3 = icmp ne i32 %2, 0
  br i1 %3, label %11, label %4

4:                                                ; preds = %0
  %5 = load i32, i32* @fpcurthread, align 4
  %6 = call %struct.TYPE_13__* @PCPU_GET(i32 %5)
  %7 = load %struct.TYPE_13__*, %struct.TYPE_13__** @curthread, align 8
  %8 = load i32, i32* @hw_float, align 4
  %9 = call i32 @printf(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str, i64 0, i64 0), %struct.TYPE_13__* %6, %struct.TYPE_13__* %7, i32 %8)
  %10 = call i32 @panic(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  br label %11

11:                                               ; preds = %4, %0
  %12 = call i32 (...) @critical_enter()
  %13 = load i32, i32* @fpcurthread, align 4
  %14 = call %struct.TYPE_13__* @PCPU_GET(i32 %13)
  %15 = load %struct.TYPE_13__*, %struct.TYPE_13__** @curthread, align 8
  %16 = icmp ne %struct.TYPE_13__* %14, %15
  br i1 %16, label %17, label %27

17:                                               ; preds = %11
  %18 = load %struct.TYPE_13__*, %struct.TYPE_13__** @curthread, align 8
  %19 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_12__*, %struct.TYPE_12__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_11__*, %struct.TYPE_11__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %1, align 4
  br label %29

27:                                               ; preds = %11
  %28 = call i32 @stmxcsr(i32* %1)
  br label %29

29:                                               ; preds = %27, %17
  %30 = call i32 (...) @critical_exit()
  %31 = load i32*, i32** @fpetable, align 8
  %32 = load i32, i32* %1, align 4
  %33 = load i32, i32* %1, align 4
  %34 = xor i32 %33, -1
  %35 = ashr i32 %34, 7
  %36 = and i32 %32, %35
  %37 = and i32 %36, 63
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %31, i64 %38
  %40 = load i32, i32* %39, align 4
  ret i32 %40
}

declare dso_local i32 @printf(i8*, %struct.TYPE_13__*, %struct.TYPE_13__*, i32) #1

declare dso_local %struct.TYPE_13__* @PCPU_GET(i32) #1

declare dso_local i32 @panic(i8*) #1

declare dso_local i32 @critical_enter(...) #1

declare dso_local i32 @stmxcsr(i32*) #1

declare dso_local i32 @critical_exit(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
