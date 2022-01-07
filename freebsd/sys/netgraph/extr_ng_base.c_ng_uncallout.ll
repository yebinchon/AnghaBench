; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netgraph/extr_ng_base.c_ng_uncallout.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netgraph/extr_ng_base.c_ng_uncallout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.callout = type { i32*, i32* }

@.str = private unnamed_addr constant [27 x i8] c"ng_uncallout: NULL callout\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"ng_uncallout: NULL node\00", align 1
@ng_callout_trampoline = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ng_uncallout(%struct.callout* %0, i32* %1) #0 {
  %3 = alloca %struct.callout*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  store %struct.callout* %0, %struct.callout** %3, align 8
  store i32* %1, i32** %4, align 8
  %7 = load %struct.callout*, %struct.callout** %3, align 8
  %8 = icmp ne %struct.callout* %7, null
  %9 = zext i1 %8 to i32
  %10 = call i32 @KASSERT(i32 %9, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %11 = load i32*, i32** %4, align 8
  %12 = icmp ne i32* %11, null
  %13 = zext i1 %12 to i32
  %14 = call i32 @KASSERT(i32 %13, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %15 = load %struct.callout*, %struct.callout** %3, align 8
  %16 = call i32 @callout_stop(%struct.callout* %15)
  store i32 %16, i32* %6, align 4
  %17 = load %struct.callout*, %struct.callout** %3, align 8
  %18 = getelementptr inbounds %struct.callout, %struct.callout* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  store i32* %19, i32** %5, align 8
  %20 = load i32, i32* %6, align 4
  %21 = icmp sgt i32 %20, 0
  br i1 %21, label %22, label %38

22:                                               ; preds = %2
  %23 = load %struct.callout*, %struct.callout** %3, align 8
  %24 = getelementptr inbounds %struct.callout, %struct.callout* %23, i32 0, i32 1
  %25 = load i32*, i32** %24, align 8
  %26 = icmp eq i32* %25, @ng_callout_trampoline
  br i1 %26, label %27, label %38

27:                                               ; preds = %22
  %28 = load i32*, i32** %5, align 8
  %29 = icmp ne i32* %28, null
  br i1 %29, label %30, label %38

30:                                               ; preds = %27
  %31 = load i32*, i32** %5, align 8
  %32 = call i32* @NGI_NODE(i32* %31)
  %33 = load i32*, i32** %4, align 8
  %34 = icmp eq i32* %32, %33
  br i1 %34, label %35, label %38

35:                                               ; preds = %30
  %36 = load i32*, i32** %5, align 8
  %37 = call i32 @NG_FREE_ITEM(i32* %36)
  br label %38

38:                                               ; preds = %35, %30, %27, %22, %2
  %39 = load %struct.callout*, %struct.callout** %3, align 8
  %40 = getelementptr inbounds %struct.callout, %struct.callout* %39, i32 0, i32 0
  store i32* null, i32** %40, align 8
  %41 = load i32, i32* %6, align 4
  %42 = icmp sgt i32 %41, 0
  %43 = zext i1 %42 to i32
  ret i32 %43
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @callout_stop(%struct.callout*) #1

declare dso_local i32* @NGI_NODE(i32*) #1

declare dso_local i32 @NG_FREE_ITEM(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
