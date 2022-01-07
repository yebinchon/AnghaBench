; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_mchain.c_mb_put_mbuf.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_mchain.c_mb_put_mbuf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mbchain = type { %struct.mbuf*, i32, i32 }
%struct.mbuf = type { %struct.mbuf*, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mb_put_mbuf(%struct.mbchain* %0, %struct.mbuf* %1) #0 {
  %3 = alloca %struct.mbchain*, align 8
  %4 = alloca %struct.mbuf*, align 8
  store %struct.mbchain* %0, %struct.mbchain** %3, align 8
  store %struct.mbuf* %1, %struct.mbuf** %4, align 8
  %5 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %6 = load %struct.mbchain*, %struct.mbchain** %3, align 8
  %7 = getelementptr inbounds %struct.mbchain, %struct.mbchain* %6, i32 0, i32 0
  %8 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %9 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %8, i32 0, i32 0
  store %struct.mbuf* %5, %struct.mbuf** %9, align 8
  br label %10

10:                                               ; preds = %28, %2
  %11 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %12 = icmp ne %struct.mbuf* %11, null
  br i1 %12, label %13, label %32

13:                                               ; preds = %10
  %14 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %15 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = load %struct.mbchain*, %struct.mbchain** %3, align 8
  %18 = getelementptr inbounds %struct.mbchain, %struct.mbchain* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  %20 = sext i32 %19 to i64
  %21 = add nsw i64 %20, %16
  %22 = trunc i64 %21 to i32
  store i32 %22, i32* %18, align 4
  %23 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %24 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %23, i32 0, i32 0
  %25 = load %struct.mbuf*, %struct.mbuf** %24, align 8
  %26 = icmp eq %struct.mbuf* %25, null
  br i1 %26, label %27, label %28

27:                                               ; preds = %13
  br label %32

28:                                               ; preds = %13
  %29 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %30 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %29, i32 0, i32 0
  %31 = load %struct.mbuf*, %struct.mbuf** %30, align 8
  store %struct.mbuf* %31, %struct.mbuf** %4, align 8
  br label %10

32:                                               ; preds = %27, %10
  %33 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %34 = call i32 @M_TRAILINGSPACE(%struct.mbuf* %33)
  %35 = load %struct.mbchain*, %struct.mbchain** %3, align 8
  %36 = getelementptr inbounds %struct.mbchain, %struct.mbchain* %35, i32 0, i32 1
  store i32 %34, i32* %36, align 8
  %37 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %38 = load %struct.mbchain*, %struct.mbchain** %3, align 8
  %39 = getelementptr inbounds %struct.mbchain, %struct.mbchain* %38, i32 0, i32 0
  store %struct.mbuf* %37, %struct.mbuf** %39, align 8
  ret i32 0
}

declare dso_local i32 @M_TRAILINGSPACE(%struct.mbuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
