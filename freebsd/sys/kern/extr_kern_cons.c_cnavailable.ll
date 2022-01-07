; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_cons.c_cnavailable.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_cons.c_cnavailable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { %struct.consdev* }
%struct.consdev = type { i32 }

@CNDEVTAB_SIZE = common dso_local global i32 0, align 4
@cn_devtab = common dso_local global %struct.TYPE_2__* null, align 8
@cons_avail_mask = common dso_local global i32 0, align 4
@CN_FLAG_NOAVAIL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cnavailable(%struct.consdev* %0, i32 %1) #0 {
  %3 = alloca %struct.consdev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.consdev* %0, %struct.consdev** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  br label %6

6:                                                ; preds = %21, %2
  %7 = load i32, i32* %5, align 4
  %8 = load i32, i32* @CNDEVTAB_SIZE, align 4
  %9 = icmp slt i32 %7, %8
  br i1 %9, label %10, label %24

10:                                               ; preds = %6
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cn_devtab, align 8
  %12 = load i32, i32* %5, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i64 %13
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load %struct.consdev*, %struct.consdev** %15, align 8
  %17 = load %struct.consdev*, %struct.consdev** %3, align 8
  %18 = icmp eq %struct.consdev* %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %10
  br label %24

20:                                               ; preds = %10
  br label %21

21:                                               ; preds = %20
  %22 = load i32, i32* %5, align 4
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* %5, align 4
  br label %6

24:                                               ; preds = %19, %6
  %25 = load i32, i32* %4, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %43

27:                                               ; preds = %24
  %28 = load i32, i32* %5, align 4
  %29 = load i32, i32* @CNDEVTAB_SIZE, align 4
  %30 = icmp slt i32 %28, %29
  br i1 %30, label %31, label %36

31:                                               ; preds = %27
  %32 = load i32, i32* %5, align 4
  %33 = shl i32 1, %32
  %34 = load i32, i32* @cons_avail_mask, align 4
  %35 = or i32 %34, %33
  store i32 %35, i32* @cons_avail_mask, align 4
  br label %36

36:                                               ; preds = %31, %27
  %37 = load i32, i32* @CN_FLAG_NOAVAIL, align 4
  %38 = xor i32 %37, -1
  %39 = load %struct.consdev*, %struct.consdev** %3, align 8
  %40 = getelementptr inbounds %struct.consdev, %struct.consdev* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = and i32 %41, %38
  store i32 %42, i32* %40, align 4
  br label %59

43:                                               ; preds = %24
  %44 = load i32, i32* %5, align 4
  %45 = load i32, i32* @CNDEVTAB_SIZE, align 4
  %46 = icmp slt i32 %44, %45
  br i1 %46, label %47, label %53

47:                                               ; preds = %43
  %48 = load i32, i32* %5, align 4
  %49 = shl i32 1, %48
  %50 = xor i32 %49, -1
  %51 = load i32, i32* @cons_avail_mask, align 4
  %52 = and i32 %51, %50
  store i32 %52, i32* @cons_avail_mask, align 4
  br label %53

53:                                               ; preds = %47, %43
  %54 = load i32, i32* @CN_FLAG_NOAVAIL, align 4
  %55 = load %struct.consdev*, %struct.consdev** %3, align 8
  %56 = getelementptr inbounds %struct.consdev, %struct.consdev* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = or i32 %57, %54
  store i32 %58, i32* %56, align 4
  br label %59

59:                                               ; preds = %53, %36
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
