; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_intr.c_isrc_add_handler.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_intr.c_isrc_add_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intr_irqsrc = type { i32* }

@isrc_table_lock = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intr_irqsrc*, i8*, i32, i32, i8*, i32, i8**)* @isrc_add_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @isrc_add_handler(%struct.intr_irqsrc* %0, i8* %1, i32 %2, i32 %3, i8* %4, i32 %5, i8** %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.intr_irqsrc*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i8**, align 8
  %16 = alloca i32, align 4
  store %struct.intr_irqsrc* %0, %struct.intr_irqsrc** %9, align 8
  store i8* %1, i8** %10, align 8
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i8* %4, i8** %13, align 8
  store i32 %5, i32* %14, align 4
  store i8** %6, i8*** %15, align 8
  %17 = load %struct.intr_irqsrc*, %struct.intr_irqsrc** %9, align 8
  %18 = getelementptr inbounds %struct.intr_irqsrc, %struct.intr_irqsrc* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  %20 = icmp eq i32* %19, null
  br i1 %20, label %21, label %29

21:                                               ; preds = %7
  %22 = load %struct.intr_irqsrc*, %struct.intr_irqsrc** %9, align 8
  %23 = call i32 @isrc_event_create(%struct.intr_irqsrc* %22)
  store i32 %23, i32* %16, align 4
  %24 = load i32, i32* %16, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %21
  %27 = load i32, i32* %16, align 4
  store i32 %27, i32* %8, align 4
  br label %51

28:                                               ; preds = %21
  br label %29

29:                                               ; preds = %28, %7
  %30 = load %struct.intr_irqsrc*, %struct.intr_irqsrc** %9, align 8
  %31 = getelementptr inbounds %struct.intr_irqsrc, %struct.intr_irqsrc* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = load i8*, i8** %10, align 8
  %34 = load i32, i32* %11, align 4
  %35 = load i32, i32* %12, align 4
  %36 = load i8*, i8** %13, align 8
  %37 = load i32, i32* %14, align 4
  %38 = call i32 @intr_priority(i32 %37)
  %39 = load i32, i32* %14, align 4
  %40 = load i8**, i8*** %15, align 8
  %41 = call i32 @intr_event_add_handler(i32* %32, i8* %33, i32 %34, i32 %35, i8* %36, i32 %38, i32 %39, i8** %40)
  store i32 %41, i32* %16, align 4
  %42 = load i32, i32* %16, align 4
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %29
  %45 = call i32 @mtx_lock(i32* @isrc_table_lock)
  %46 = load %struct.intr_irqsrc*, %struct.intr_irqsrc** %9, align 8
  %47 = call i32 @intrcnt_updatename(%struct.intr_irqsrc* %46)
  %48 = call i32 @mtx_unlock(i32* @isrc_table_lock)
  br label %49

49:                                               ; preds = %44, %29
  %50 = load i32, i32* %16, align 4
  store i32 %50, i32* %8, align 4
  br label %51

51:                                               ; preds = %49, %26
  %52 = load i32, i32* %8, align 4
  ret i32 %52
}

declare dso_local i32 @isrc_event_create(%struct.intr_irqsrc*) #1

declare dso_local i32 @intr_event_add_handler(i32*, i8*, i32, i32, i8*, i32, i32, i8**) #1

declare dso_local i32 @intr_priority(i32) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @intrcnt_updatename(%struct.intr_irqsrc*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
