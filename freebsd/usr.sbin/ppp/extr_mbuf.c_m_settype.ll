; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_mbuf.c_m_settype.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_mbuf.c_m_settype.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }
%struct.mbuf = type { i32, i64, %struct.mbuf* }

@MemMap = common dso_local global %struct.TYPE_2__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @m_settype(%struct.mbuf* %0, i32 %1) #0 {
  %3 = alloca %struct.mbuf*, align 8
  %4 = alloca i32, align 4
  store %struct.mbuf* %0, %struct.mbuf** %3, align 8
  store i32 %1, i32* %4, align 4
  br label %5

5:                                                ; preds = %61, %2
  %6 = load %struct.mbuf*, %struct.mbuf** %3, align 8
  %7 = icmp ne %struct.mbuf* %6, null
  br i1 %7, label %8, label %65

8:                                                ; preds = %5
  %9 = load i32, i32* %4, align 4
  %10 = load %struct.mbuf*, %struct.mbuf** %3, align 8
  %11 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp ne i32 %9, %12
  br i1 %13, label %14, label %60

14:                                               ; preds = %8
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** @MemMap, align 8
  %16 = load %struct.mbuf*, %struct.mbuf** %3, align 8
  %17 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i64 %19
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = add nsw i32 %22, -1
  store i32 %23, i32* %21, align 4
  %24 = load %struct.mbuf*, %struct.mbuf** %3, align 8
  %25 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** @MemMap, align 8
  %28 = load %struct.mbuf*, %struct.mbuf** %3, align 8
  %29 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = sext i32 %34 to i64
  %36 = sub nsw i64 %35, %26
  %37 = trunc i64 %36 to i32
  store i32 %37, i32* %33, align 4
  %38 = load i32, i32* %4, align 4
  %39 = load %struct.mbuf*, %struct.mbuf** %3, align 8
  %40 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %39, i32 0, i32 0
  store i32 %38, i32* %40, align 8
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** @MemMap, align 8
  %42 = load i32, i32* %4, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %45, align 4
  %48 = load %struct.mbuf*, %struct.mbuf** %3, align 8
  %49 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** @MemMap, align 8
  %52 = load i32, i32* %4, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i64 %53
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = sext i32 %56 to i64
  %58 = add nsw i64 %57, %50
  %59 = trunc i64 %58 to i32
  store i32 %59, i32* %55, align 4
  br label %60

60:                                               ; preds = %14, %8
  br label %61

61:                                               ; preds = %60
  %62 = load %struct.mbuf*, %struct.mbuf** %3, align 8
  %63 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %62, i32 0, i32 2
  %64 = load %struct.mbuf*, %struct.mbuf** %63, align 8
  store %struct.mbuf* %64, %struct.mbuf** %3, align 8
  br label %5

65:                                               ; preds = %5
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
