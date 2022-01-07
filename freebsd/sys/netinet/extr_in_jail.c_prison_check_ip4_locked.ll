; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/extr_in_jail.c_prison_check_ip4_locked.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/extr_in_jail.c_prison_check_ip4_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.prison = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.in_addr = type { i64 }

@EADDRNOTAVAIL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @prison_check_ip4_locked(%struct.prison* %0, %struct.in_addr* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.prison*, align 8
  %5 = alloca %struct.in_addr*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.prison* %0, %struct.prison** %4, align 8
  store %struct.in_addr* %1, %struct.in_addr** %5, align 8
  %10 = load %struct.prison*, %struct.prison** %4, align 8
  %11 = getelementptr inbounds %struct.prison, %struct.prison* %10, i32 0, i32 1
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i64 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load %struct.in_addr*, %struct.in_addr** %5, align 8
  %17 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp eq i64 %15, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %60

21:                                               ; preds = %2
  store i32 0, i32* %7, align 4
  %22 = load %struct.prison*, %struct.prison** %4, align 8
  %23 = getelementptr inbounds %struct.prison, %struct.prison* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = sub nsw i32 %24, 2
  store i32 %25, i32* %8, align 4
  br label %26

26:                                               ; preds = %57, %21
  %27 = load i32, i32* %7, align 4
  %28 = load i32, i32* %8, align 4
  %29 = icmp sle i32 %27, %28
  br i1 %29, label %30, label %58

30:                                               ; preds = %26
  %31 = load i32, i32* %7, align 4
  %32 = load i32, i32* %8, align 4
  %33 = add nsw i32 %31, %32
  %34 = sdiv i32 %33, 2
  store i32 %34, i32* %6, align 4
  %35 = load %struct.prison*, %struct.prison** %4, align 8
  %36 = getelementptr inbounds %struct.prison, %struct.prison* %35, i32 0, i32 1
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = load i32, i32* %6, align 4
  %39 = add nsw i32 %38, 1
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i64 %40
  %42 = load %struct.in_addr*, %struct.in_addr** %5, align 8
  %43 = call i32 @prison_qcmp_v4(%struct.TYPE_2__* %41, %struct.in_addr* %42)
  store i32 %43, i32* %9, align 4
  %44 = load i32, i32* %9, align 4
  %45 = icmp sgt i32 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %30
  %47 = load i32, i32* %6, align 4
  %48 = sub nsw i32 %47, 1
  store i32 %48, i32* %8, align 4
  br label %57

49:                                               ; preds = %30
  %50 = load i32, i32* %9, align 4
  %51 = icmp slt i32 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %49
  %53 = load i32, i32* %6, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %7, align 4
  br label %56

55:                                               ; preds = %49
  store i32 0, i32* %3, align 4
  br label %60

56:                                               ; preds = %52
  br label %57

57:                                               ; preds = %56, %46
  br label %26

58:                                               ; preds = %26
  %59 = load i32, i32* @EADDRNOTAVAIL, align 4
  store i32 %59, i32* %3, align 4
  br label %60

60:                                               ; preds = %58, %55, %20
  %61 = load i32, i32* %3, align 4
  ret i32 %61
}

declare dso_local i32 @prison_qcmp_v4(%struct.TYPE_2__*, %struct.in_addr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
