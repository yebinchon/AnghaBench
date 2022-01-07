; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/sa/extr_main.c_cmp_avgcpumem.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/sa/extr_main.c_cmp_avgcpumem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.cmdinfo = type { double, double, double, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*, %struct.TYPE_4__*)* @cmp_avgcpumem to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cmp_avgcpumem(%struct.TYPE_4__* %0, %struct.TYPE_4__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca %struct.cmdinfo, align 8
  %7 = alloca %struct.cmdinfo, align 8
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  %11 = alloca double, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %4, align 8
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** %5, align 8
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @memcpy(%struct.cmdinfo* %6, i32 %14, i32 32)
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @memcpy(%struct.cmdinfo* %7, i32 %18, i32 32)
  %20 = getelementptr inbounds %struct.cmdinfo, %struct.cmdinfo* %6, i32 0, i32 0
  %21 = load double, double* %20, align 8
  %22 = getelementptr inbounds %struct.cmdinfo, %struct.cmdinfo* %6, i32 0, i32 1
  %23 = load double, double* %22, align 8
  %24 = fadd double %21, %23
  store double %24, double* %8, align 8
  %25 = getelementptr inbounds %struct.cmdinfo, %struct.cmdinfo* %7, i32 0, i32 0
  %26 = load double, double* %25, align 8
  %27 = getelementptr inbounds %struct.cmdinfo, %struct.cmdinfo* %7, i32 0, i32 1
  %28 = load double, double* %27, align 8
  %29 = fadd double %26, %28
  store double %29, double* %9, align 8
  %30 = getelementptr inbounds %struct.cmdinfo, %struct.cmdinfo* %6, i32 0, i32 2
  %31 = load double, double* %30, align 8
  %32 = load double, double* %8, align 8
  %33 = fcmp une double %32, 0.000000e+00
  br i1 %33, label %34, label %36

34:                                               ; preds = %2
  %35 = load double, double* %8, align 8
  br label %37

36:                                               ; preds = %2
  br label %37

37:                                               ; preds = %36, %34
  %38 = phi double [ %35, %34 ], [ 1.000000e+00, %36 ]
  %39 = fdiv double %31, %38
  store double %39, double* %10, align 8
  %40 = getelementptr inbounds %struct.cmdinfo, %struct.cmdinfo* %7, i32 0, i32 2
  %41 = load double, double* %40, align 8
  %42 = load double, double* %9, align 8
  %43 = fcmp une double %42, 0.000000e+00
  br i1 %43, label %44, label %46

44:                                               ; preds = %37
  %45 = load double, double* %9, align 8
  br label %47

46:                                               ; preds = %37
  br label %47

47:                                               ; preds = %46, %44
  %48 = phi double [ %45, %44 ], [ 1.000000e+00, %46 ]
  %49 = fdiv double %41, %48
  store double %49, double* %11, align 8
  %50 = load double, double* %10, align 8
  %51 = load double, double* %11, align 8
  %52 = fcmp olt double %50, %51
  br i1 %52, label %53, label %54

53:                                               ; preds = %47
  store i32 -1, i32* %3, align 4
  br label %65

54:                                               ; preds = %47
  %55 = load double, double* %10, align 8
  %56 = load double, double* %11, align 8
  %57 = fcmp oeq double %55, %56
  br i1 %57, label %58, label %64

58:                                               ; preds = %54
  %59 = getelementptr inbounds %struct.cmdinfo, %struct.cmdinfo* %6, i32 0, i32 3
  %60 = load i32, i32* %59, align 8
  %61 = getelementptr inbounds %struct.cmdinfo, %struct.cmdinfo* %7, i32 0, i32 3
  %62 = load i32, i32* %61, align 8
  %63 = call i32 @cmp_comm(i32 %60, i32 %62)
  store i32 %63, i32* %3, align 4
  br label %65

64:                                               ; preds = %54
  store i32 1, i32* %3, align 4
  br label %65

65:                                               ; preds = %64, %58, %53
  %66 = load i32, i32* %3, align 4
  ret i32 %66
}

declare dso_local i32 @memcpy(%struct.cmdinfo*, i32, i32) #1

declare dso_local i32 @cmp_comm(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
