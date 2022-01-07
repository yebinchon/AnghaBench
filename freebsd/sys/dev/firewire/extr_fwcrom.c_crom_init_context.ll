; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/firewire/extr_fwcrom.c_crom_init_context.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/firewire/extr_fwcrom.c_crom_init_context.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crom_context = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, %struct.csrdirectory* }
%struct.csrdirectory = type { i64 }
%struct.csrhdr = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @crom_init_context(%struct.crom_context* %0, i32* %1) #0 {
  %3 = alloca %struct.crom_context*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.csrhdr*, align 8
  store %struct.crom_context* %0, %struct.crom_context** %3, align 8
  store i32* %1, i32** %4, align 8
  %6 = load i32*, i32** %4, align 8
  %7 = bitcast i32* %6 to %struct.csrhdr*
  store %struct.csrhdr* %7, %struct.csrhdr** %5, align 8
  %8 = load %struct.csrhdr*, %struct.csrhdr** %5, align 8
  %9 = getelementptr inbounds %struct.csrhdr, %struct.csrhdr* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = icmp sle i32 %10, 1
  br i1 %11, label %12, label %15

12:                                               ; preds = %2
  %13 = load %struct.crom_context*, %struct.crom_context** %3, align 8
  %14 = getelementptr inbounds %struct.crom_context, %struct.crom_context* %13, i32 0, i32 0
  store i32 -1, i32* %14, align 8
  br label %46

15:                                               ; preds = %2
  %16 = load %struct.csrhdr*, %struct.csrhdr** %5, align 8
  %17 = getelementptr inbounds %struct.csrhdr, %struct.csrhdr* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = add nsw i32 1, %18
  %20 = load i32*, i32** %4, align 8
  %21 = sext i32 %19 to i64
  %22 = getelementptr inbounds i32, i32* %20, i64 %21
  store i32* %22, i32** %4, align 8
  %23 = load i32*, i32** %4, align 8
  %24 = bitcast i32* %23 to %struct.csrdirectory*
  %25 = getelementptr inbounds %struct.csrdirectory, %struct.csrdirectory* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %15
  %29 = load %struct.crom_context*, %struct.crom_context** %3, align 8
  %30 = getelementptr inbounds %struct.crom_context, %struct.crom_context* %29, i32 0, i32 0
  store i32 -1, i32* %30, align 8
  br label %46

31:                                               ; preds = %15
  %32 = load %struct.crom_context*, %struct.crom_context** %3, align 8
  %33 = getelementptr inbounds %struct.crom_context, %struct.crom_context* %32, i32 0, i32 0
  store i32 0, i32* %33, align 8
  %34 = load i32*, i32** %4, align 8
  %35 = bitcast i32* %34 to %struct.csrdirectory*
  %36 = load %struct.crom_context*, %struct.crom_context** %3, align 8
  %37 = getelementptr inbounds %struct.crom_context, %struct.crom_context* %36, i32 0, i32 1
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i64 0
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 1
  store %struct.csrdirectory* %35, %struct.csrdirectory** %40, align 8
  %41 = load %struct.crom_context*, %struct.crom_context** %3, align 8
  %42 = getelementptr inbounds %struct.crom_context, %struct.crom_context* %41, i32 0, i32 1
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i64 0
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  store i64 0, i64* %45, align 8
  br label %46

46:                                               ; preds = %31, %28, %12
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
