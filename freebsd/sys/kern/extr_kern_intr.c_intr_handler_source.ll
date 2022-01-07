; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_intr.c_intr_handler_source.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_intr.c_intr_handler_source.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intr_handler = type { i32, %struct.intr_event* }
%struct.intr_event = type { i8* }

@.str = private unnamed_addr constant [50 x i8] c"interrupt handler \22%s\22 has a NULL interrupt event\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @intr_handler_source(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.intr_handler*, align 8
  %5 = alloca %struct.intr_event*, align 8
  store i8* %0, i8** %3, align 8
  %6 = load i8*, i8** %3, align 8
  %7 = bitcast i8* %6 to %struct.intr_handler*
  store %struct.intr_handler* %7, %struct.intr_handler** %4, align 8
  %8 = load %struct.intr_handler*, %struct.intr_handler** %4, align 8
  %9 = icmp eq %struct.intr_handler* %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  store i8* null, i8** %2, align 8
  br label %27

11:                                               ; preds = %1
  %12 = load %struct.intr_handler*, %struct.intr_handler** %4, align 8
  %13 = getelementptr inbounds %struct.intr_handler, %struct.intr_handler* %12, i32 0, i32 1
  %14 = load %struct.intr_event*, %struct.intr_event** %13, align 8
  store %struct.intr_event* %14, %struct.intr_event** %5, align 8
  %15 = load %struct.intr_event*, %struct.intr_event** %5, align 8
  %16 = icmp ne %struct.intr_event* %15, null
  %17 = zext i1 %16 to i32
  %18 = load %struct.intr_handler*, %struct.intr_handler** %4, align 8
  %19 = getelementptr inbounds %struct.intr_handler, %struct.intr_handler* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = sext i32 %20 to i64
  %22 = inttoptr i64 %21 to i8*
  %23 = call i32 @KASSERT(i32 %17, i8* %22)
  %24 = load %struct.intr_event*, %struct.intr_event** %5, align 8
  %25 = getelementptr inbounds %struct.intr_event, %struct.intr_event* %24, i32 0, i32 0
  %26 = load i8*, i8** %25, align 8
  store i8* %26, i8** %2, align 8
  br label %27

27:                                               ; preds = %11, %10
  %28 = load i8*, i8** %2, align 8
  ret i8* %28
}

declare dso_local i32 @KASSERT(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
