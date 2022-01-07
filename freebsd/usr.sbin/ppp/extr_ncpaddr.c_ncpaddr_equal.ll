; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_ncpaddr.c_ncpaddr_equal.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_ncpaddr.c_ncpaddr_equal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ncpaddr = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ncpaddr_equal(%struct.ncpaddr* %0, %struct.ncpaddr* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ncpaddr*, align 8
  %5 = alloca %struct.ncpaddr*, align 8
  store %struct.ncpaddr* %0, %struct.ncpaddr** %4, align 8
  store %struct.ncpaddr* %1, %struct.ncpaddr** %5, align 8
  %6 = load %struct.ncpaddr*, %struct.ncpaddr** %4, align 8
  %7 = getelementptr inbounds %struct.ncpaddr, %struct.ncpaddr* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load %struct.ncpaddr*, %struct.ncpaddr** %5, align 8
  %10 = getelementptr inbounds %struct.ncpaddr, %struct.ncpaddr* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = icmp ne i32 %8, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %40

14:                                               ; preds = %2
  %15 = load %struct.ncpaddr*, %struct.ncpaddr** %4, align 8
  %16 = getelementptr inbounds %struct.ncpaddr, %struct.ncpaddr* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  switch i32 %17, label %39 [
    i32 130, label %18
    i32 129, label %29
    i32 128, label %38
  ]

18:                                               ; preds = %14
  %19 = load %struct.ncpaddr*, %struct.ncpaddr** %4, align 8
  %20 = getelementptr inbounds %struct.ncpaddr, %struct.ncpaddr* %19, i32 0, i32 2
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.ncpaddr*, %struct.ncpaddr** %5, align 8
  %24 = getelementptr inbounds %struct.ncpaddr, %struct.ncpaddr* %23, i32 0, i32 2
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = icmp eq i32 %22, %26
  %28 = zext i1 %27 to i32
  store i32 %28, i32* %3, align 4
  br label %40

29:                                               ; preds = %14
  %30 = load %struct.ncpaddr*, %struct.ncpaddr** %4, align 8
  %31 = getelementptr inbounds %struct.ncpaddr, %struct.ncpaddr* %30, i32 0, i32 1
  %32 = load %struct.ncpaddr*, %struct.ncpaddr** %5, align 8
  %33 = getelementptr inbounds %struct.ncpaddr, %struct.ncpaddr* %32, i32 0, i32 1
  %34 = call i32 @memcmp(i32* %31, i32* %33, i32 4)
  %35 = icmp ne i32 %34, 0
  %36 = xor i1 %35, true
  %37 = zext i1 %36 to i32
  store i32 %37, i32* %3, align 4
  br label %40

38:                                               ; preds = %14
  store i32 1, i32* %3, align 4
  br label %40

39:                                               ; preds = %14
  store i32 0, i32* %3, align 4
  br label %40

40:                                               ; preds = %39, %38, %29, %18, %13
  %41 = load i32, i32* %3, align 4
  ret i32 %41
}

declare dso_local i32 @memcmp(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
