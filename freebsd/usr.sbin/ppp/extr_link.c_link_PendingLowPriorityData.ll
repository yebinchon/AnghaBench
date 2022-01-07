; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_link.c_link_PendingLowPriorityData.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_link.c_link_PendingLowPriorityData.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.link = type { %struct.mqueue* }
%struct.mqueue = type { i64, %struct.mbuf* }
%struct.mbuf = type { i64, %struct.mbuf* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @link_PendingLowPriorityData(%struct.link* %0, i64* %1, i64* %2) #0 {
  %4 = alloca %struct.link*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca %struct.mqueue*, align 8
  %8 = alloca %struct.mqueue*, align 8
  %9 = alloca %struct.mbuf*, align 8
  %10 = alloca i64, align 8
  store %struct.link* %0, %struct.link** %4, align 8
  store i64* %1, i64** %5, align 8
  store i64* %2, i64** %6, align 8
  %11 = load %struct.link*, %struct.link** %4, align 8
  %12 = call %struct.mqueue* @LINK_HIGHQ(%struct.link* %11)
  store %struct.mqueue* %12, %struct.mqueue** %8, align 8
  %13 = load i64*, i64** %6, align 8
  store i64 0, i64* %13, align 8
  %14 = load i64*, i64** %5, align 8
  store i64 0, i64* %14, align 8
  %15 = load %struct.link*, %struct.link** %4, align 8
  %16 = getelementptr inbounds %struct.link, %struct.link* %15, i32 0, i32 0
  %17 = load %struct.mqueue*, %struct.mqueue** %16, align 8
  store %struct.mqueue* %17, %struct.mqueue** %7, align 8
  br label %18

18:                                               ; preds = %52, %3
  %19 = load %struct.mqueue*, %struct.mqueue** %7, align 8
  %20 = load %struct.mqueue*, %struct.mqueue** %8, align 8
  %21 = icmp ult %struct.mqueue* %19, %20
  br i1 %21, label %22, label %55

22:                                               ; preds = %18
  %23 = load %struct.mqueue*, %struct.mqueue** %7, align 8
  %24 = getelementptr inbounds %struct.mqueue, %struct.mqueue* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  store i64 %25, i64* %10, align 8
  %26 = load i64, i64* %10, align 8
  %27 = load i64*, i64** %5, align 8
  %28 = load i64, i64* %27, align 8
  %29 = add i64 %28, %26
  store i64 %29, i64* %27, align 8
  %30 = load %struct.mqueue*, %struct.mqueue** %7, align 8
  %31 = getelementptr inbounds %struct.mqueue, %struct.mqueue* %30, i32 0, i32 1
  %32 = load %struct.mbuf*, %struct.mbuf** %31, align 8
  store %struct.mbuf* %32, %struct.mbuf** %9, align 8
  br label %33

33:                                               ; preds = %47, %22
  %34 = load i64, i64* %10, align 8
  %35 = add i64 %34, -1
  store i64 %35, i64* %10, align 8
  %36 = icmp ne i64 %34, 0
  br i1 %36, label %37, label %51

37:                                               ; preds = %33
  %38 = load %struct.mbuf*, %struct.mbuf** %9, align 8
  %39 = call i64 @m_length(%struct.mbuf* %38)
  %40 = load %struct.mbuf*, %struct.mbuf** %9, align 8
  %41 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = sub nsw i64 %39, %42
  %44 = load i64*, i64** %6, align 8
  %45 = load i64, i64* %44, align 8
  %46 = add i64 %45, %43
  store i64 %46, i64* %44, align 8
  br label %47

47:                                               ; preds = %37
  %48 = load %struct.mbuf*, %struct.mbuf** %9, align 8
  %49 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %48, i32 0, i32 1
  %50 = load %struct.mbuf*, %struct.mbuf** %49, align 8
  store %struct.mbuf* %50, %struct.mbuf** %9, align 8
  br label %33

51:                                               ; preds = %33
  br label %52

52:                                               ; preds = %51
  %53 = load %struct.mqueue*, %struct.mqueue** %7, align 8
  %54 = getelementptr inbounds %struct.mqueue, %struct.mqueue* %53, i32 1
  store %struct.mqueue* %54, %struct.mqueue** %7, align 8
  br label %18

55:                                               ; preds = %18
  ret void
}

declare dso_local %struct.mqueue* @LINK_HIGHQ(%struct.link*) #1

declare dso_local i64 @m_length(%struct.mbuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
