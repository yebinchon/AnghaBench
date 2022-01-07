; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netgraph/extr_ng_lmi.c_LMI_ticker.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netgraph/extr_ng_lmi.c_LMI_ticker.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i64, i32, i32, i32 }

@SCF_AUTO = common dso_local global i32 0, align 4
@NG_LMI_POLL_RATE = common dso_local global i32 0, align 4
@hz = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i8*, i32)* @LMI_ticker to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @LMI_ticker(i32 %0, i32 %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_5__*, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %10 = load i32, i32* %5, align 4
  %11 = call %struct.TYPE_5__* @NG_NODE_PRIVATE(i32 %10)
  store %struct.TYPE_5__* %11, %struct.TYPE_5__** %9, align 8
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* @SCF_AUTO, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %28

18:                                               ; preds = %4
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %20 = call i32 @ngauto_state_machine(%struct.TYPE_5__* %19)
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 3
  %23 = load i32, i32* %5, align 4
  %24 = load i32, i32* @NG_LMI_POLL_RATE, align 4
  %25 = load i32, i32* @hz, align 4
  %26 = mul nsw i32 %24, %25
  %27 = call i32 @ng_callout(i32* %22, i32 %23, i32* null, i32 %26, void (i32, i32, i8*, i32)* @LMI_ticker, i32* null, i32 0)
  br label %54

28:                                               ; preds = %4
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 4
  %31 = load i32, i32* %30, align 8
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %30, align 8
  %33 = sext i32 %31 to i64
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = icmp sge i64 %33, %36
  br i1 %37, label %38, label %41

38:                                               ; preds = %28
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %40 = call i32 @nglmi_inquire(%struct.TYPE_5__* %39, i32 1)
  br label %44

41:                                               ; preds = %28
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %43 = call i32 @nglmi_inquire(%struct.TYPE_5__* %42, i32 0)
  br label %44

44:                                               ; preds = %41, %38
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 3
  %47 = load i32, i32* %5, align 4
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* @hz, align 4
  %52 = mul nsw i32 %50, %51
  %53 = call i32 @ng_callout(i32* %46, i32 %47, i32* null, i32 %52, void (i32, i32, i8*, i32)* @LMI_ticker, i32* null, i32 0)
  br label %54

54:                                               ; preds = %44, %18
  ret void
}

declare dso_local %struct.TYPE_5__* @NG_NODE_PRIVATE(i32) #1

declare dso_local i32 @ngauto_state_machine(%struct.TYPE_5__*) #1

declare dso_local i32 @ng_callout(i32*, i32, i32*, i32, void (i32, i32, i8*, i32)*, i32*, i32) #1

declare dso_local i32 @nglmi_inquire(%struct.TYPE_5__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
