; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_bio.c_runningbufwakeup.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_bio.c_runningbufwakeup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.buf = type { i64 }

@runningbufspace = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"runningbufspace underflow %ld %ld\00", align 1
@lorunningspace = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @runningbufwakeup(%struct.buf* %0) #0 {
  %2 = alloca %struct.buf*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store %struct.buf* %0, %struct.buf** %2, align 8
  %5 = load %struct.buf*, %struct.buf** %2, align 8
  %6 = getelementptr inbounds %struct.buf, %struct.buf* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  store i64 %7, i64* %4, align 8
  %8 = load i64, i64* %4, align 8
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  br label %38

11:                                               ; preds = %1
  %12 = load i64, i64* %4, align 8
  %13 = sub nsw i64 0, %12
  %14 = call i64 @atomic_fetchadd_long(i32* @runningbufspace, i64 %13)
  store i64 %14, i64* %3, align 8
  %15 = load i64, i64* %3, align 8
  %16 = load i64, i64* %4, align 8
  %17 = icmp sge i64 %15, %16
  %18 = zext i1 %17 to i32
  %19 = load i64, i64* %3, align 8
  %20 = load i64, i64* %4, align 8
  %21 = inttoptr i64 %20 to i8*
  %22 = call i32 @KASSERT(i32 %18, i8* %21)
  %23 = load %struct.buf*, %struct.buf** %2, align 8
  %24 = getelementptr inbounds %struct.buf, %struct.buf* %23, i32 0, i32 0
  store i64 0, i64* %24, align 8
  %25 = load i64, i64* %3, align 8
  %26 = load i64, i64* @lorunningspace, align 8
  %27 = icmp slt i64 %25, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %11
  br label %38

29:                                               ; preds = %11
  %30 = load i64, i64* %3, align 8
  %31 = load i64, i64* %4, align 8
  %32 = sub nsw i64 %30, %31
  %33 = load i64, i64* @lorunningspace, align 8
  %34 = icmp sgt i64 %32, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %29
  br label %38

36:                                               ; preds = %29
  %37 = call i32 (...) @runningwakeup()
  br label %38

38:                                               ; preds = %36, %35, %28, %10
  ret void
}

declare dso_local i64 @atomic_fetchadd_long(i32*, i64) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @runningwakeup(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
