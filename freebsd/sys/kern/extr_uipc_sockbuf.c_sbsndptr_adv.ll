; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_uipc_sockbuf.c_sbsndptr_adv.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_uipc_sockbuf.c_sbsndptr_adv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockbuf = type { %struct.mbuf*, i32 }
%struct.mbuf = type { i64, %struct.mbuf* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sbsndptr_adv(%struct.sockbuf* %0, %struct.mbuf* %1, i64 %2) #0 {
  %4 = alloca %struct.sockbuf*, align 8
  %5 = alloca %struct.mbuf*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.mbuf*, align 8
  store %struct.sockbuf* %0, %struct.sockbuf** %4, align 8
  store %struct.mbuf* %1, %struct.mbuf** %5, align 8
  store i64 %2, i64* %6, align 8
  %8 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %9 = load %struct.sockbuf*, %struct.sockbuf** %4, align 8
  %10 = getelementptr inbounds %struct.sockbuf, %struct.sockbuf* %9, i32 0, i32 0
  %11 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %12 = icmp ne %struct.mbuf* %8, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %3
  br label %61

14:                                               ; preds = %3
  %15 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  store %struct.mbuf* %15, %struct.mbuf** %7, align 8
  br label %16

16:                                               ; preds = %60, %14
  %17 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %18 = icmp ne %struct.mbuf* %17, null
  br i1 %18, label %19, label %22

19:                                               ; preds = %16
  %20 = load i64, i64* %6, align 8
  %21 = icmp sgt i64 %20, 0
  br label %22

22:                                               ; preds = %19, %16
  %23 = phi i1 [ false, %16 ], [ %21, %19 ]
  br i1 %23, label %24, label %61

24:                                               ; preds = %22
  %25 = load i64, i64* %6, align 8
  %26 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %27 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp sge i64 %25, %28
  br i1 %29, label %30, label %59

30:                                               ; preds = %24
  %31 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %32 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* %6, align 8
  %35 = sub nsw i64 %34, %33
  store i64 %35, i64* %6, align 8
  %36 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %37 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %36, i32 0, i32 1
  %38 = load %struct.mbuf*, %struct.mbuf** %37, align 8
  %39 = icmp ne %struct.mbuf* %38, null
  br i1 %39, label %40, label %55

40:                                               ; preds = %30
  %41 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %42 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load %struct.sockbuf*, %struct.sockbuf** %4, align 8
  %45 = getelementptr inbounds %struct.sockbuf, %struct.sockbuf* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = sext i32 %46 to i64
  %48 = add nsw i64 %47, %43
  %49 = trunc i64 %48 to i32
  store i32 %49, i32* %45, align 8
  %50 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %51 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %50, i32 0, i32 1
  %52 = load %struct.mbuf*, %struct.mbuf** %51, align 8
  %53 = load %struct.sockbuf*, %struct.sockbuf** %4, align 8
  %54 = getelementptr inbounds %struct.sockbuf, %struct.sockbuf* %53, i32 0, i32 0
  store %struct.mbuf* %52, %struct.mbuf** %54, align 8
  br label %55

55:                                               ; preds = %40, %30
  %56 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %57 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %56, i32 0, i32 1
  %58 = load %struct.mbuf*, %struct.mbuf** %57, align 8
  store %struct.mbuf* %58, %struct.mbuf** %7, align 8
  br label %60

59:                                               ; preds = %24
  store i64 0, i64* %6, align 8
  br label %60

60:                                               ; preds = %59, %55
  br label %16

61:                                               ; preds = %13, %22
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
