; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_ncpaddr.c_ncprange_equal.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_ncpaddr.c_ncprange_equal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ncprange = type { i32, i32, i32, %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ncprange_equal(%struct.ncprange* %0, %struct.ncprange* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ncprange*, align 8
  %5 = alloca %struct.ncprange*, align 8
  store %struct.ncprange* %0, %struct.ncprange** %4, align 8
  store %struct.ncprange* %1, %struct.ncprange** %5, align 8
  %6 = load %struct.ncprange*, %struct.ncprange** %4, align 8
  %7 = getelementptr inbounds %struct.ncprange, %struct.ncprange* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load %struct.ncprange*, %struct.ncprange** %5, align 8
  %10 = getelementptr inbounds %struct.ncprange, %struct.ncprange* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = icmp ne i32 %8, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %60

14:                                               ; preds = %2
  %15 = load %struct.ncprange*, %struct.ncprange** %4, align 8
  %16 = getelementptr inbounds %struct.ncprange, %struct.ncprange* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  switch i32 %17, label %59 [
    i32 130, label %18
    i32 129, label %40
    i32 128, label %58
  ]

18:                                               ; preds = %14
  %19 = load %struct.ncprange*, %struct.ncprange** %4, align 8
  %20 = getelementptr inbounds %struct.ncprange, %struct.ncprange* %19, i32 0, i32 4
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.ncprange*, %struct.ncprange** %5, align 8
  %24 = getelementptr inbounds %struct.ncprange, %struct.ncprange* %23, i32 0, i32 4
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = icmp ne i32 %22, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %18
  store i32 0, i32* %3, align 4
  br label %60

29:                                               ; preds = %18
  %30 = load %struct.ncprange*, %struct.ncprange** %4, align 8
  %31 = getelementptr inbounds %struct.ncprange, %struct.ncprange* %30, i32 0, i32 3
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.ncprange*, %struct.ncprange** %5, align 8
  %35 = getelementptr inbounds %struct.ncprange, %struct.ncprange* %34, i32 0, i32 3
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = icmp eq i32 %33, %37
  %39 = zext i1 %38 to i32
  store i32 %39, i32* %3, align 4
  br label %60

40:                                               ; preds = %14
  %41 = load %struct.ncprange*, %struct.ncprange** %4, align 8
  %42 = getelementptr inbounds %struct.ncprange, %struct.ncprange* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.ncprange*, %struct.ncprange** %5, align 8
  %45 = getelementptr inbounds %struct.ncprange, %struct.ncprange* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = icmp ne i32 %43, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %40
  store i32 0, i32* %3, align 4
  br label %60

49:                                               ; preds = %40
  %50 = load %struct.ncprange*, %struct.ncprange** %4, align 8
  %51 = getelementptr inbounds %struct.ncprange, %struct.ncprange* %50, i32 0, i32 1
  %52 = load %struct.ncprange*, %struct.ncprange** %5, align 8
  %53 = getelementptr inbounds %struct.ncprange, %struct.ncprange* %52, i32 0, i32 1
  %54 = call i32 @memcmp(i32* %51, i32* %53, i32 4)
  %55 = icmp ne i32 %54, 0
  %56 = xor i1 %55, true
  %57 = zext i1 %56 to i32
  store i32 %57, i32* %3, align 4
  br label %60

58:                                               ; preds = %14
  store i32 1, i32* %3, align 4
  br label %60

59:                                               ; preds = %14
  store i32 0, i32* %3, align 4
  br label %60

60:                                               ; preds = %59, %58, %49, %48, %29, %28, %13
  %61 = load i32, i32* %3, align 4
  ret i32 %61
}

declare dso_local i32 @memcmp(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
