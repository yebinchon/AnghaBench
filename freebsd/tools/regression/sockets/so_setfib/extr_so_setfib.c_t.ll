; ModuleID = '/home/carl/AnghaBench/freebsd/tools/regression/sockets/so_setfib/extr_so_setfib.c_t.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/regression/sockets/so_setfib/extr_so_setfib.c_t.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i8* }
%struct.TYPE_3__ = type { i64, i8* }

@t_dom = common dso_local global %struct.TYPE_4__* null, align 8
@PF_ROUTE = common dso_local global i64 0, align 8
@t_type = common dso_local global %struct.TYPE_3__* null, align 8
@SOCK_RAW = common dso_local global i64 0, align 8
@PF_LOCAL = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [32 x i8] c"not ok %d %s_%s # socket(): %s\0A\00", align 1
@testno = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@rt_numfibs = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, i64)* @t to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @t(i64 %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i64 %0, i64* %3, align 8
  store i64 %1, i64* %4, align 8
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** @t_dom, align 8
  %8 = load i64, i64* %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i64 %8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @PF_ROUTE, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %23

14:                                               ; preds = %2
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** @t_type, align 8
  %16 = load i64, i64* %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i64 %16
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @SOCK_RAW, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %14
  br label %103

23:                                               ; preds = %14, %2
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** @t_dom, align 8
  %25 = load i64, i64* %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i64 %25
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @PF_LOCAL, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %40

31:                                               ; preds = %23
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** @t_type, align 8
  %33 = load i64, i64* %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @SOCK_RAW, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %31
  br label %103

40:                                               ; preds = %31, %23
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** @t_dom, align 8
  %42 = load i64, i64* %3, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** @t_type, align 8
  %47 = load i64, i64* %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = call i32 @socket(i64 %45, i64 %50, i32 0)
  store i32 %51, i32* %6, align 4
  %52 = load i32, i32* %6, align 4
  %53 = icmp eq i32 %52, -1
  br i1 %53, label %54, label %71

54:                                               ; preds = %40
  %55 = load i32, i32* @testno, align 4
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** @t_dom, align 8
  %57 = load i64, i64* %3, align 8
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 1
  %60 = load i8*, i8** %59, align 8
  %61 = load %struct.TYPE_3__*, %struct.TYPE_3__** @t_type, align 8
  %62 = load i64, i64* %4, align 8
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i64 %62
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 1
  %65 = load i8*, i8** %64, align 8
  %66 = load i32, i32* @errno, align 4
  %67 = call i8* @strerror(i32 %66)
  %68 = call i32 @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %55, i8* %60, i8* %65, i8* %67)
  %69 = load i32, i32* @testno, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* @testno, align 4
  br label %103

71:                                               ; preds = %40
  store i32 -2, i32* %5, align 4
  br label %72

72:                                               ; preds = %83, %71
  %73 = load i32, i32* %5, align 4
  %74 = load i32, i32* @rt_numfibs, align 4
  %75 = add nsw i32 %74, 2
  %76 = icmp sle i32 %73, %75
  br i1 %76, label %77, label %86

77:                                               ; preds = %72
  %78 = load i32, i32* %6, align 4
  %79 = load i32, i32* %5, align 4
  %80 = load i64, i64* %3, align 8
  %81 = load i64, i64* %4, align 8
  %82 = call i32 @so_setfib(i32 %78, i32 %79, i64 %80, i64 %81)
  br label %83

83:                                               ; preds = %77
  %84 = load i32, i32* %5, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %5, align 4
  br label %72

86:                                               ; preds = %72
  store i32 0, i32* %5, align 4
  br label %87

87:                                               ; preds = %97, %86
  %88 = load i32, i32* %5, align 4
  %89 = icmp slt i32 %88, 3
  br i1 %89, label %90, label %100

90:                                               ; preds = %87
  %91 = load i32, i32* %6, align 4
  %92 = call i64 (...) @random()
  %93 = trunc i64 %92 to i32
  %94 = load i64, i64* %3, align 8
  %95 = load i64, i64* %4, align 8
  %96 = call i32 @so_setfib(i32 %91, i32 %93, i64 %94, i64 %95)
  br label %97

97:                                               ; preds = %90
  %98 = load i32, i32* %5, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %5, align 4
  br label %87

100:                                              ; preds = %87
  %101 = load i32, i32* %6, align 4
  %102 = call i32 @close(i32 %101)
  br label %103

103:                                              ; preds = %100, %54, %39, %22
  ret void
}

declare dso_local i32 @socket(i64, i64, i32) #1

declare dso_local i32 @printf(i8*, i32, i8*, i8*, i8*) #1

declare dso_local i8* @strerror(i32) #1

declare dso_local i32 @so_setfib(i32, i32, i64, i64) #1

declare dso_local i64 @random(...) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
