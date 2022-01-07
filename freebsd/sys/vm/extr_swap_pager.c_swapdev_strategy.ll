; ModuleID = '/home/carl/AnghaBench/freebsd/sys/vm/extr_swap_pager.c_swapdev_strategy.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/vm/extr_swap_pager.c_swapdev_strategy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.buf = type { i64, i64, i32, %struct.vnode*, i32* }
%struct.vnode = type { i32 }
%struct.swdevt = type { %struct.vnode*, i64 }

@BIO_WRITE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.buf*, %struct.swdevt*)* @swapdev_strategy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @swapdev_strategy(%struct.buf* %0, %struct.swdevt* %1) #0 {
  %3 = alloca %struct.buf*, align 8
  %4 = alloca %struct.swdevt*, align 8
  %5 = alloca %struct.vnode*, align 8
  store %struct.buf* %0, %struct.buf** %3, align 8
  store %struct.swdevt* %1, %struct.swdevt** %4, align 8
  %6 = load %struct.buf*, %struct.buf** %3, align 8
  %7 = getelementptr inbounds %struct.buf, %struct.buf* %6, i32 0, i32 1
  %8 = load i64, i64* %7, align 8
  %9 = load %struct.swdevt*, %struct.swdevt** %4, align 8
  %10 = getelementptr inbounds %struct.swdevt, %struct.swdevt* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = sub nsw i64 %8, %11
  %13 = call i64 @ctodb(i64 %12)
  %14 = load %struct.buf*, %struct.buf** %3, align 8
  %15 = getelementptr inbounds %struct.buf, %struct.buf* %14, i32 0, i32 1
  store i64 %13, i64* %15, align 8
  %16 = load %struct.swdevt*, %struct.swdevt** %4, align 8
  %17 = getelementptr inbounds %struct.swdevt, %struct.swdevt* %16, i32 0, i32 0
  %18 = load %struct.vnode*, %struct.vnode** %17, align 8
  store %struct.vnode* %18, %struct.vnode** %5, align 8
  %19 = load %struct.vnode*, %struct.vnode** %5, align 8
  %20 = call i32 @vhold(%struct.vnode* %19)
  %21 = load %struct.buf*, %struct.buf** %3, align 8
  %22 = getelementptr inbounds %struct.buf, %struct.buf* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @BIO_WRITE, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %40

26:                                               ; preds = %2
  %27 = load %struct.buf*, %struct.buf** %3, align 8
  %28 = getelementptr inbounds %struct.buf, %struct.buf* %27, i32 0, i32 4
  %29 = load i32*, i32** %28, align 8
  %30 = icmp ne i32* %29, null
  br i1 %30, label %31, label %36

31:                                               ; preds = %26
  %32 = load %struct.buf*, %struct.buf** %3, align 8
  %33 = getelementptr inbounds %struct.buf, %struct.buf* %32, i32 0, i32 4
  %34 = load i32*, i32** %33, align 8
  %35 = call i32 @bufobj_wdrop(i32* %34)
  br label %36

36:                                               ; preds = %31, %26
  %37 = load %struct.vnode*, %struct.vnode** %5, align 8
  %38 = getelementptr inbounds %struct.vnode, %struct.vnode* %37, i32 0, i32 0
  %39 = call i32 @bufobj_wref(i32* %38)
  br label %40

40:                                               ; preds = %36, %2
  %41 = load %struct.buf*, %struct.buf** %3, align 8
  %42 = getelementptr inbounds %struct.buf, %struct.buf* %41, i32 0, i32 4
  %43 = load i32*, i32** %42, align 8
  %44 = load %struct.vnode*, %struct.vnode** %5, align 8
  %45 = getelementptr inbounds %struct.vnode, %struct.vnode* %44, i32 0, i32 0
  %46 = icmp ne i32* %43, %45
  br i1 %46, label %47, label %52

47:                                               ; preds = %40
  %48 = load %struct.vnode*, %struct.vnode** %5, align 8
  %49 = getelementptr inbounds %struct.vnode, %struct.vnode* %48, i32 0, i32 0
  %50 = load %struct.buf*, %struct.buf** %3, align 8
  %51 = getelementptr inbounds %struct.buf, %struct.buf* %50, i32 0, i32 4
  store i32* %49, i32** %51, align 8
  br label %52

52:                                               ; preds = %47, %40
  %53 = load %struct.vnode*, %struct.vnode** %5, align 8
  %54 = load %struct.buf*, %struct.buf** %3, align 8
  %55 = getelementptr inbounds %struct.buf, %struct.buf* %54, i32 0, i32 3
  store %struct.vnode* %53, %struct.vnode** %55, align 8
  %56 = load %struct.buf*, %struct.buf** %3, align 8
  %57 = getelementptr inbounds %struct.buf, %struct.buf* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = call i32 @dbtob(i64 %58)
  %60 = load %struct.buf*, %struct.buf** %3, align 8
  %61 = getelementptr inbounds %struct.buf, %struct.buf* %60, i32 0, i32 2
  store i32 %59, i32* %61, align 8
  %62 = load %struct.buf*, %struct.buf** %3, align 8
  %63 = call i32 @bstrategy(%struct.buf* %62)
  ret void
}

declare dso_local i64 @ctodb(i64) #1

declare dso_local i32 @vhold(%struct.vnode*) #1

declare dso_local i32 @bufobj_wdrop(i32*) #1

declare dso_local i32 @bufobj_wref(i32*) #1

declare dso_local i32 @dbtob(i64) #1

declare dso_local i32 @bstrategy(%struct.buf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
