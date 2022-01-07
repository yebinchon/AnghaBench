; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_tty_inq.c_ttyinq_flush.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_tty_inq.c_ttyinq_flush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ttyinq = type { %struct.ttyinq_block*, i64, i64, i64, i64 }
%struct.ttyinq_block = type { i32, %struct.ttyinq_block* }

@ttyinq_flush_secure = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ttyinq_flush(%struct.ttyinq* %0) #0 {
  %2 = alloca %struct.ttyinq*, align 8
  %3 = alloca %struct.ttyinq_block*, align 8
  store %struct.ttyinq* %0, %struct.ttyinq** %2, align 8
  %4 = load %struct.ttyinq*, %struct.ttyinq** %2, align 8
  %5 = getelementptr inbounds %struct.ttyinq, %struct.ttyinq* %4, i32 0, i32 4
  store i64 0, i64* %5, align 8
  %6 = load %struct.ttyinq*, %struct.ttyinq** %2, align 8
  %7 = getelementptr inbounds %struct.ttyinq, %struct.ttyinq* %6, i32 0, i32 3
  store i64 0, i64* %7, align 8
  %8 = load %struct.ttyinq*, %struct.ttyinq** %2, align 8
  %9 = getelementptr inbounds %struct.ttyinq, %struct.ttyinq* %8, i32 0, i32 2
  store i64 0, i64* %9, align 8
  %10 = load %struct.ttyinq*, %struct.ttyinq** %2, align 8
  %11 = getelementptr inbounds %struct.ttyinq, %struct.ttyinq* %10, i32 0, i32 1
  store i64 0, i64* %11, align 8
  %12 = load i64, i64* @ttyinq_flush_secure, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %30

14:                                               ; preds = %1
  %15 = load %struct.ttyinq*, %struct.ttyinq** %2, align 8
  %16 = getelementptr inbounds %struct.ttyinq, %struct.ttyinq* %15, i32 0, i32 0
  %17 = load %struct.ttyinq_block*, %struct.ttyinq_block** %16, align 8
  store %struct.ttyinq_block* %17, %struct.ttyinq_block** %3, align 8
  br label %18

18:                                               ; preds = %25, %14
  %19 = load %struct.ttyinq_block*, %struct.ttyinq_block** %3, align 8
  %20 = icmp ne %struct.ttyinq_block* %19, null
  br i1 %20, label %21, label %29

21:                                               ; preds = %18
  %22 = load %struct.ttyinq_block*, %struct.ttyinq_block** %3, align 8
  %23 = getelementptr inbounds %struct.ttyinq_block, %struct.ttyinq_block* %22, i32 0, i32 0
  %24 = call i32 @bzero(i32* %23, i32 4)
  br label %25

25:                                               ; preds = %21
  %26 = load %struct.ttyinq_block*, %struct.ttyinq_block** %3, align 8
  %27 = getelementptr inbounds %struct.ttyinq_block, %struct.ttyinq_block* %26, i32 0, i32 1
  %28 = load %struct.ttyinq_block*, %struct.ttyinq_block** %27, align 8
  store %struct.ttyinq_block* %28, %struct.ttyinq_block** %3, align 8
  br label %18

29:                                               ; preds = %18
  br label %30

30:                                               ; preds = %29, %1
  ret void
}

declare dso_local i32 @bzero(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
