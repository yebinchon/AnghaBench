; ModuleID = '/home/carl/AnghaBench/freebsd/tools/regression/sockets/so_setfib/extr_so_setfib.c_so_setfib.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/regression/sockets/so_setfib/extr_so_setfib.c_so_setfib.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i8* }
%struct.TYPE_3__ = type { i8* }

@SOL_SOCKET = common dso_local global i32 0, align 4
@SO_SETFIB = common dso_local global i32 0, align 4
@rt_numfibs = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"ok %d %s_%s_%d\0A\00", align 1
@testno = common dso_local global i32 0, align 4
@t_dom = common dso_local global %struct.TYPE_4__* null, align 8
@t_type = common dso_local global %struct.TYPE_3__* null, align 8
@.str.1 = private unnamed_addr constant [91 x i8] c"not ok %d %s_%s_%d # setsockopt(%d, SOL_SOCKET, SO_SETFIB, %d, ..) unexpectedly succeeded\0A\00", align 1
@errno = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [89 x i8] c"not ok %d %s_%s_%d # setsockopt(%d, SOL_SOCKET, SO_SETFIB, %d, ..) unexpected error: %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"not ok %d %s_%s_%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i64, i64)* @so_setfib to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @so_setfib(i32 %0, i32 %1, i64 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  %10 = load i32, i32* %5, align 4
  %11 = load i32, i32* @SOL_SOCKET, align 4
  %12 = load i32, i32* @SO_SETFIB, align 4
  %13 = call i32 @setsockopt(i32 %10, i32 %11, i32 %12, i32* %6, i32 4)
  store i32 %13, i32* %9, align 4
  %14 = load i32, i32* %9, align 4
  %15 = icmp eq i32 %14, -1
  br i1 %15, label %16, label %37

16:                                               ; preds = %4
  %17 = load i32, i32* %6, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %23, label %19

19:                                               ; preds = %16
  %20 = load i32, i32* %6, align 4
  %21 = load i32, i32* @rt_numfibs, align 4
  %22 = icmp sgt i32 %20, %21
  br i1 %22, label %23, label %37

23:                                               ; preds = %19, %16
  %24 = load i32, i32* @testno, align 4
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** @t_dom, align 8
  %26 = load i64, i64* %7, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i64 %26
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i8*, i8** %28, align 8
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** @t_type, align 8
  %31 = load i64, i64* %8, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load i8*, i8** %33, align 8
  %35 = load i32, i32* %6, align 4
  %36 = call i32 (i8*, i32, i8*, i8*, i32, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %24, i8* %29, i8* %34, i32 %35)
  br label %119

37:                                               ; preds = %19, %4
  %38 = load i32, i32* %9, align 4
  %39 = icmp ne i32 %38, -1
  br i1 %39, label %40, label %63

40:                                               ; preds = %37
  %41 = load i32, i32* %6, align 4
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %47, label %43

43:                                               ; preds = %40
  %44 = load i32, i32* %6, align 4
  %45 = load i32, i32* @rt_numfibs, align 4
  %46 = icmp sgt i32 %44, %45
  br i1 %46, label %47, label %63

47:                                               ; preds = %43, %40
  %48 = load i32, i32* @testno, align 4
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** @t_dom, align 8
  %50 = load i64, i64* %7, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i64 %50
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = load i8*, i8** %52, align 8
  %54 = load %struct.TYPE_3__*, %struct.TYPE_3__** @t_type, align 8
  %55 = load i64, i64* %8, align 8
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i64 %55
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 0
  %58 = load i8*, i8** %57, align 8
  %59 = load i32, i32* %6, align 4
  %60 = load i32, i32* %5, align 4
  %61 = load i32, i32* %6, align 4
  %62 = call i32 (i8*, i32, i8*, i8*, i32, ...) @printf(i8* getelementptr inbounds ([91 x i8], [91 x i8]* @.str.1, i64 0, i64 0), i32 %48, i8* %53, i8* %58, i32 %59, i32 %60, i32 %61)
  br label %118

63:                                               ; preds = %43, %37
  %64 = load i32, i32* %9, align 4
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %80

66:                                               ; preds = %63
  %67 = load i32, i32* @testno, align 4
  %68 = load %struct.TYPE_4__*, %struct.TYPE_4__** @t_dom, align 8
  %69 = load i64, i64* %7, align 8
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i64 %69
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 0
  %72 = load i8*, i8** %71, align 8
  %73 = load %struct.TYPE_3__*, %struct.TYPE_3__** @t_type, align 8
  %74 = load i64, i64* %8, align 8
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i64 %74
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 0
  %77 = load i8*, i8** %76, align 8
  %78 = load i32, i32* %6, align 4
  %79 = call i32 (i8*, i32, i8*, i8*, i32, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %67, i8* %72, i8* %77, i32 %78)
  br label %117

80:                                               ; preds = %63
  %81 = load i64, i64* @errno, align 8
  %82 = load i64, i64* @EINVAL, align 8
  %83 = icmp ne i64 %81, %82
  br i1 %83, label %84, label %102

84:                                               ; preds = %80
  %85 = load i32, i32* @testno, align 4
  %86 = load %struct.TYPE_4__*, %struct.TYPE_4__** @t_dom, align 8
  %87 = load i64, i64* %7, align 8
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i64 %87
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 0
  %90 = load i8*, i8** %89, align 8
  %91 = load %struct.TYPE_3__*, %struct.TYPE_3__** @t_type, align 8
  %92 = load i64, i64* %8, align 8
  %93 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %91, i64 %92
  %94 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %93, i32 0, i32 0
  %95 = load i8*, i8** %94, align 8
  %96 = load i32, i32* %6, align 4
  %97 = load i32, i32* %5, align 4
  %98 = load i32, i32* %6, align 4
  %99 = load i64, i64* @errno, align 8
  %100 = call i8* @strerror(i64 %99)
  %101 = call i32 (i8*, i32, i8*, i8*, i32, ...) @printf(i8* getelementptr inbounds ([89 x i8], [89 x i8]* @.str.2, i64 0, i64 0), i32 %85, i8* %90, i8* %95, i32 %96, i32 %97, i32 %98, i8* %100)
  br label %116

102:                                              ; preds = %80
  %103 = load i32, i32* @testno, align 4
  %104 = load %struct.TYPE_4__*, %struct.TYPE_4__** @t_dom, align 8
  %105 = load i64, i64* %7, align 8
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i64 %105
  %107 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %106, i32 0, i32 0
  %108 = load i8*, i8** %107, align 8
  %109 = load %struct.TYPE_3__*, %struct.TYPE_3__** @t_type, align 8
  %110 = load i64, i64* %8, align 8
  %111 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %109, i64 %110
  %112 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %111, i32 0, i32 0
  %113 = load i8*, i8** %112, align 8
  %114 = load i32, i32* %6, align 4
  %115 = call i32 (i8*, i32, i8*, i8*, i32, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i32 %103, i8* %108, i8* %113, i32 %114)
  br label %116

116:                                              ; preds = %102, %84
  br label %117

117:                                              ; preds = %116, %66
  br label %118

118:                                              ; preds = %117, %47
  br label %119

119:                                              ; preds = %118, %23
  %120 = load i32, i32* @testno, align 4
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* @testno, align 4
  ret void
}

declare dso_local i32 @setsockopt(i32, i32, i32, i32*, i32) #1

declare dso_local i32 @printf(i8*, i32, i8*, i8*, i32, ...) #1

declare dso_local i8* @strerror(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
