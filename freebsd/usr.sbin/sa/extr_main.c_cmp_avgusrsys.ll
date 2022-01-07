; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/sa/extr_main.c_cmp_avgusrsys.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/sa/extr_main.c_cmp_avgusrsys.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.cmdinfo = type { double, double, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*, %struct.TYPE_4__*)* @cmp_avgusrsys to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cmp_avgusrsys(%struct.TYPE_4__* %0, %struct.TYPE_4__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca %struct.cmdinfo, align 8
  %7 = alloca %struct.cmdinfo, align 8
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %4, align 8
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** %5, align 8
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @memcpy(%struct.cmdinfo* %6, i32 %12, i32 24)
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @memcpy(%struct.cmdinfo* %7, i32 %16, i32 24)
  %18 = getelementptr inbounds %struct.cmdinfo, %struct.cmdinfo* %6, i32 0, i32 0
  %19 = load double, double* %18, align 8
  %20 = getelementptr inbounds %struct.cmdinfo, %struct.cmdinfo* %6, i32 0, i32 1
  %21 = load double, double* %20, align 8
  %22 = fadd double %19, %21
  store double %22, double* %8, align 8
  %23 = getelementptr inbounds %struct.cmdinfo, %struct.cmdinfo* %6, i32 0, i32 2
  %24 = load i32, i32* %23, align 8
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %2
  %27 = getelementptr inbounds %struct.cmdinfo, %struct.cmdinfo* %6, i32 0, i32 2
  %28 = load i32, i32* %27, align 8
  br label %30

29:                                               ; preds = %2
  br label %30

30:                                               ; preds = %29, %26
  %31 = phi i32 [ %28, %26 ], [ 1, %29 ]
  %32 = sitofp i32 %31 to double
  %33 = load double, double* %8, align 8
  %34 = fdiv double %33, %32
  store double %34, double* %8, align 8
  %35 = getelementptr inbounds %struct.cmdinfo, %struct.cmdinfo* %7, i32 0, i32 0
  %36 = load double, double* %35, align 8
  %37 = getelementptr inbounds %struct.cmdinfo, %struct.cmdinfo* %7, i32 0, i32 1
  %38 = load double, double* %37, align 8
  %39 = fadd double %36, %38
  store double %39, double* %9, align 8
  %40 = getelementptr inbounds %struct.cmdinfo, %struct.cmdinfo* %7, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %30
  %44 = getelementptr inbounds %struct.cmdinfo, %struct.cmdinfo* %7, i32 0, i32 2
  %45 = load i32, i32* %44, align 8
  br label %47

46:                                               ; preds = %30
  br label %47

47:                                               ; preds = %46, %43
  %48 = phi i32 [ %45, %43 ], [ 1, %46 ]
  %49 = sitofp i32 %48 to double
  %50 = load double, double* %9, align 8
  %51 = fdiv double %50, %49
  store double %51, double* %9, align 8
  %52 = load double, double* %8, align 8
  %53 = load double, double* %9, align 8
  %54 = fcmp olt double %52, %53
  br i1 %54, label %55, label %56

55:                                               ; preds = %47
  store i32 -1, i32* %3, align 4
  br label %67

56:                                               ; preds = %47
  %57 = load double, double* %8, align 8
  %58 = load double, double* %9, align 8
  %59 = fcmp oeq double %57, %58
  br i1 %59, label %60, label %66

60:                                               ; preds = %56
  %61 = getelementptr inbounds %struct.cmdinfo, %struct.cmdinfo* %6, i32 0, i32 3
  %62 = load i32, i32* %61, align 4
  %63 = getelementptr inbounds %struct.cmdinfo, %struct.cmdinfo* %7, i32 0, i32 3
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @cmp_comm(i32 %62, i32 %64)
  store i32 %65, i32* %3, align 4
  br label %67

66:                                               ; preds = %56
  store i32 1, i32* %3, align 4
  br label %67

67:                                               ; preds = %66, %60, %55
  %68 = load i32, i32* %3, align 4
  ret i32 %68
}

declare dso_local i32 @memcpy(%struct.cmdinfo*, i32, i32) #1

declare dso_local i32 @cmp_comm(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
