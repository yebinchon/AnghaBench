; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_tty_inq.c_ttyinq_free.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_tty_inq.c_ttyinq_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ttyinq = type { i64, %struct.ttyinq_block*, i64 }
%struct.ttyinq_block = type { i32 }

@ttyinq_zone = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ttyinq_free(%struct.ttyinq* %0) #0 {
  %2 = alloca %struct.ttyinq*, align 8
  %3 = alloca %struct.ttyinq_block*, align 8
  store %struct.ttyinq* %0, %struct.ttyinq** %2, align 8
  %4 = load %struct.ttyinq*, %struct.ttyinq** %2, align 8
  %5 = call i32 @ttyinq_flush(%struct.ttyinq* %4)
  %6 = load %struct.ttyinq*, %struct.ttyinq** %2, align 8
  %7 = getelementptr inbounds %struct.ttyinq, %struct.ttyinq* %6, i32 0, i32 2
  store i64 0, i64* %7, align 8
  br label %8

8:                                                ; preds = %13, %1
  %9 = load %struct.ttyinq*, %struct.ttyinq** %2, align 8
  %10 = getelementptr inbounds %struct.ttyinq, %struct.ttyinq* %9, i32 0, i32 1
  %11 = load %struct.ttyinq_block*, %struct.ttyinq_block** %10, align 8
  store %struct.ttyinq_block* %11, %struct.ttyinq_block** %3, align 8
  %12 = icmp ne %struct.ttyinq_block* %11, null
  br i1 %12, label %13, label %19

13:                                               ; preds = %8
  %14 = load %struct.ttyinq*, %struct.ttyinq** %2, align 8
  %15 = call i32 @TTYINQ_REMOVE_HEAD(%struct.ttyinq* %14)
  %16 = load i32, i32* @ttyinq_zone, align 4
  %17 = load %struct.ttyinq_block*, %struct.ttyinq_block** %3, align 8
  %18 = call i32 @uma_zfree(i32 %16, %struct.ttyinq_block* %17)
  br label %8

19:                                               ; preds = %8
  %20 = load %struct.ttyinq*, %struct.ttyinq** %2, align 8
  %21 = getelementptr inbounds %struct.ttyinq, %struct.ttyinq* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp eq i64 %22, 0
  %24 = zext i1 %23 to i32
  %25 = call i32 @MPASS(i32 %24)
  ret void
}

declare dso_local i32 @ttyinq_flush(%struct.ttyinq*) #1

declare dso_local i32 @TTYINQ_REMOVE_HEAD(%struct.ttyinq*) #1

declare dso_local i32 @uma_zfree(i32, %struct.ttyinq_block*) #1

declare dso_local i32 @MPASS(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
