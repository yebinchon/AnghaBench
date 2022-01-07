; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_ncpaddr.c_ncpaddr_isdefault.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_ncpaddr.c_ncpaddr_isdefault.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ncpaddr = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@INADDR_ANY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ncpaddr_isdefault(%struct.ncpaddr* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ncpaddr*, align 8
  store %struct.ncpaddr* %0, %struct.ncpaddr** %3, align 8
  %4 = load %struct.ncpaddr*, %struct.ncpaddr** %3, align 8
  %5 = getelementptr inbounds %struct.ncpaddr, %struct.ncpaddr* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  switch i32 %6, label %23 [
    i32 129, label %7
    i32 128, label %16
  ]

7:                                                ; preds = %1
  %8 = load %struct.ncpaddr*, %struct.ncpaddr** %3, align 8
  %9 = getelementptr inbounds %struct.ncpaddr, %struct.ncpaddr* %8, i32 0, i32 2
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @INADDR_ANY, align 4
  %13 = icmp eq i32 %11, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %7
  store i32 1, i32* %2, align 4
  br label %24

15:                                               ; preds = %7
  br label %23

16:                                               ; preds = %1
  %17 = load %struct.ncpaddr*, %struct.ncpaddr** %3, align 8
  %18 = getelementptr inbounds %struct.ncpaddr, %struct.ncpaddr* %17, i32 0, i32 1
  %19 = call i32 @IN6_IS_ADDR_UNSPECIFIED(i32* %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %16
  store i32 1, i32* %2, align 4
  br label %24

22:                                               ; preds = %16
  br label %23

23:                                               ; preds = %1, %22, %15
  store i32 0, i32* %2, align 4
  br label %24

24:                                               ; preds = %23, %21, %14
  %25 = load i32, i32* %2, align 4
  ret i32 %25
}

declare dso_local i32 @IN6_IS_ADDR_UNSPECIFIED(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
