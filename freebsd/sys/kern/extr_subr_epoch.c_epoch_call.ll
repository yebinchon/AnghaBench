; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_epoch.c_epoch_call.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_epoch.c_epoch_call.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@inited = common dso_local global i32 0, align 4
@epoch_cb_count = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @epoch_call(i32* %0, i64 %1, void (i64)* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca void (i64)*, align 8
  %7 = alloca %struct.TYPE_3__*, align 8
  %8 = alloca i32*, align 8
  store i32* %0, i32** %4, align 8
  store i64 %1, i64* %5, align 8
  store void (i64)* %2, void (i64)** %6, align 8
  %9 = load i64, i64* %5, align 8
  %10 = inttoptr i64 %9 to i8*
  %11 = bitcast i8* %10 to i32*
  store i32* %11, i32** %8, align 8
  %12 = load void (i64)*, void (i64)** %6, align 8
  %13 = call i32 @MPASS(void (i64)* %12)
  %14 = load i32*, i32** %4, align 8
  %15 = icmp eq i32* %14, null
  %16 = zext i1 %15 to i32
  %17 = call i64 @__predict_false(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %3
  br label %42

20:                                               ; preds = %3
  %21 = load i32, i32* @inited, align 4
  %22 = icmp slt i32 %21, 2
  %23 = zext i1 %22 to i32
  %24 = call i64 @__predict_false(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %20
  br label %42

27:                                               ; preds = %20
  %28 = call i32 (...) @critical_enter()
  %29 = load i32, i32* @epoch_cb_count, align 4
  %30 = call i32* @DPCPU_PTR(i32 %29)
  %31 = load i32, i32* %30, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %30, align 4
  %33 = load i32*, i32** %4, align 8
  %34 = call %struct.TYPE_3__* @epoch_currecord(i32* %33)
  store %struct.TYPE_3__* %34, %struct.TYPE_3__** %7, align 8
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = load i32*, i32** %8, align 8
  %38 = load void (i64)*, void (i64)** %6, align 8
  %39 = bitcast void (i64)* %38 to i32*
  %40 = call i32 @ck_epoch_call(i32* %36, i32* %37, i32* %39)
  %41 = call i32 (...) @critical_exit()
  br label %45

42:                                               ; preds = %26, %19
  %43 = load void (i64)*, void (i64)** %6, align 8
  %44 = load i64, i64* %5, align 8
  call void %43(i64 %44)
  br label %45

45:                                               ; preds = %42, %27
  ret void
}

declare dso_local i32 @MPASS(void (i64)*) #1

declare dso_local i64 @__predict_false(i32) #1

declare dso_local i32 @critical_enter(...) #1

declare dso_local i32* @DPCPU_PTR(i32) #1

declare dso_local %struct.TYPE_3__* @epoch_currecord(i32*) #1

declare dso_local i32 @ck_epoch_call(i32*, i32*, i32*) #1

declare dso_local i32 @critical_exit(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
