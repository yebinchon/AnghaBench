; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cx/extr_csigma.c_cx_get_dsr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cx/extr_csigma.c_cx_get_dsr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i32, %struct.TYPE_4__*, i32, i32 }
%struct.TYPE_4__ = type { i64, i32 }

@B_SIGMA_2X = common dso_local global i64 0, align 8
@B_SIGMA_800 = common dso_local global i64 0, align 8
@M_ASYNC = common dso_local global i64 0, align 8
@MSV_DSR = common dso_local global i32 0, align 4
@T_UNIV_RS232 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cx_get_dsr(%struct.TYPE_5__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca i8, align 1
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  %5 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %6 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 2
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @B_SIGMA_2X, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %26, label %12

12:                                               ; preds = %1
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 2
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @B_SIGMA_800, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %26, label %20

20:                                               ; preds = %12
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @M_ASYNC, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %46

26:                                               ; preds = %20, %12, %1
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 4
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @CAR(i32 %29)
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = and i32 %33, 3
  %35 = call i32 @outb(i32 %30, i32 %34)
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 4
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @MSVR(i32 %38)
  %40 = call i32 @inb(i32 %39)
  %41 = load i32, i32* @MSV_DSR, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  %44 = zext i1 %43 to i64
  %45 = select i1 %43, i32 1, i32 0
  store i32 %45, i32* %2, align 4
  br label %98

46:                                               ; preds = %20
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  switch i32 %49, label %50 [
    i32 1, label %51
    i32 2, label %51
    i32 3, label %51
    i32 0, label %59
    i32 9, label %69
    i32 10, label %69
    i32 11, label %69
    i32 8, label %77
  ]

50:                                               ; preds = %46
  store i32 1, i32* %2, align 4
  br label %98

51:                                               ; preds = %46, %46, %46
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 3
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* @T_UNIV_RS232, align 4
  %56 = icmp eq i32 %54, %55
  br i1 %56, label %57, label %58

57:                                               ; preds = %51
  store i32 1, i32* %2, align 4
  br label %98

58:                                               ; preds = %51
  br label %59

59:                                               ; preds = %46, %58
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 2
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 8
  %65 = call i32 @BSR(i32 %64)
  %66 = call i32 @inw(i32 %65)
  %67 = ashr i32 %66, 8
  %68 = trunc i32 %67 to i8
  store i8 %68, i8* %4, align 1
  br label %88

69:                                               ; preds = %46, %46, %46
  %70 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 3
  %72 = load i32, i32* %71, align 8
  %73 = load i32, i32* @T_UNIV_RS232, align 4
  %74 = icmp eq i32 %72, %73
  br i1 %74, label %75, label %76

75:                                               ; preds = %69
  store i32 1, i32* %2, align 4
  br label %98

76:                                               ; preds = %69
  br label %77

77:                                               ; preds = %46, %76
  %78 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i32 0, i32 2
  %80 = load %struct.TYPE_4__*, %struct.TYPE_4__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 8
  %83 = add nsw i32 %82, 16
  %84 = call i32 @BSR(i32 %83)
  %85 = call i32 @inw(i32 %84)
  %86 = ashr i32 %85, 8
  %87 = trunc i32 %86 to i8
  store i8 %87, i8* %4, align 1
  br label %88

88:                                               ; preds = %77, %59
  %89 = load i8, i8* %4, align 1
  %90 = zext i8 %89 to i32
  %91 = xor i32 %90, -1
  %92 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %93 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 8
  %95 = and i32 %94, 3
  %96 = ashr i32 %91, %95
  %97 = and i32 %96, 1
  store i32 %97, i32* %2, align 4
  br label %98

98:                                               ; preds = %88, %75, %57, %50, %26
  %99 = load i32, i32* %2, align 4
  ret i32 %99
}

declare dso_local i32 @outb(i32, i32) #1

declare dso_local i32 @CAR(i32) #1

declare dso_local i32 @inb(i32) #1

declare dso_local i32 @MSVR(i32) #1

declare dso_local i32 @inw(i32) #1

declare dso_local i32 @BSR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
