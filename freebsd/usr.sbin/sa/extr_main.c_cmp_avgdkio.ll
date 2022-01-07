; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/sa/extr_main.c_cmp_avgdkio.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/sa/extr_main.c_cmp_avgdkio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.cmdinfo = type { double, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*, %struct.TYPE_4__*)* @cmp_avgdkio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cmp_avgdkio(%struct.TYPE_4__* %0, %struct.TYPE_4__* %1) #0 {
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
  %13 = call i32 @memcpy(%struct.cmdinfo* %6, i32 %12, i32 16)
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @memcpy(%struct.cmdinfo* %7, i32 %16, i32 16)
  %18 = getelementptr inbounds %struct.cmdinfo, %struct.cmdinfo* %6, i32 0, i32 0
  %19 = load double, double* %18, align 8
  %20 = getelementptr inbounds %struct.cmdinfo, %struct.cmdinfo* %6, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %2
  %24 = getelementptr inbounds %struct.cmdinfo, %struct.cmdinfo* %6, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  br label %27

26:                                               ; preds = %2
  br label %27

27:                                               ; preds = %26, %23
  %28 = phi i32 [ %25, %23 ], [ 1, %26 ]
  %29 = sitofp i32 %28 to double
  %30 = fdiv double %19, %29
  store double %30, double* %8, align 8
  %31 = getelementptr inbounds %struct.cmdinfo, %struct.cmdinfo* %7, i32 0, i32 0
  %32 = load double, double* %31, align 8
  %33 = getelementptr inbounds %struct.cmdinfo, %struct.cmdinfo* %7, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %27
  %37 = getelementptr inbounds %struct.cmdinfo, %struct.cmdinfo* %7, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  br label %40

39:                                               ; preds = %27
  br label %40

40:                                               ; preds = %39, %36
  %41 = phi i32 [ %38, %36 ], [ 1, %39 ]
  %42 = sitofp i32 %41 to double
  %43 = fdiv double %32, %42
  store double %43, double* %9, align 8
  %44 = load double, double* %8, align 8
  %45 = load double, double* %9, align 8
  %46 = fcmp olt double %44, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %40
  store i32 -1, i32* %3, align 4
  br label %59

48:                                               ; preds = %40
  %49 = load double, double* %8, align 8
  %50 = load double, double* %9, align 8
  %51 = fcmp oeq double %49, %50
  br i1 %51, label %52, label %58

52:                                               ; preds = %48
  %53 = getelementptr inbounds %struct.cmdinfo, %struct.cmdinfo* %6, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  %55 = getelementptr inbounds %struct.cmdinfo, %struct.cmdinfo* %7, i32 0, i32 2
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @cmp_comm(i32 %54, i32 %56)
  store i32 %57, i32* %3, align 4
  br label %59

58:                                               ; preds = %48
  store i32 1, i32* %3, align 4
  br label %59

59:                                               ; preds = %58, %52, %47
  %60 = load i32, i32* %3, align 4
  ret i32 %60
}

declare dso_local i32 @memcpy(%struct.cmdinfo*, i32, i32) #1

declare dso_local i32 @cmp_comm(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
