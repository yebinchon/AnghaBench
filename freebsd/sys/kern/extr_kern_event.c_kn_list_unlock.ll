; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_event.c_kn_list_unlock.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_event.c_kn_list_unlock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.knlist = type { i32, i32 (i32)*, i64 }

@M_KQUEUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.knlist*)* @kn_list_unlock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @kn_list_unlock(%struct.knlist* %0) #0 {
  %2 = alloca %struct.knlist*, align 8
  %3 = alloca i32, align 4
  store %struct.knlist* %0, %struct.knlist** %2, align 8
  %4 = load %struct.knlist*, %struct.knlist** %2, align 8
  %5 = icmp eq %struct.knlist* %4, null
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  br label %34

7:                                                ; preds = %1
  %8 = load %struct.knlist*, %struct.knlist** %2, align 8
  %9 = getelementptr inbounds %struct.knlist, %struct.knlist* %8, i32 0, i32 2
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %7
  %13 = load %struct.knlist*, %struct.knlist** %2, align 8
  %14 = call i64 @knlist_empty(%struct.knlist* %13)
  %15 = icmp ne i64 %14, 0
  br label %16

16:                                               ; preds = %12, %7
  %17 = phi i1 [ false, %7 ], [ %15, %12 ]
  %18 = zext i1 %17 to i32
  store i32 %18, i32* %3, align 4
  %19 = load %struct.knlist*, %struct.knlist** %2, align 8
  %20 = getelementptr inbounds %struct.knlist, %struct.knlist* %19, i32 0, i32 1
  %21 = load i32 (i32)*, i32 (i32)** %20, align 8
  %22 = load %struct.knlist*, %struct.knlist** %2, align 8
  %23 = getelementptr inbounds %struct.knlist, %struct.knlist* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = call i32 %21(i32 %24)
  %26 = load i32, i32* %3, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %34

28:                                               ; preds = %16
  %29 = load %struct.knlist*, %struct.knlist** %2, align 8
  %30 = call i32 @knlist_destroy(%struct.knlist* %29)
  %31 = load %struct.knlist*, %struct.knlist** %2, align 8
  %32 = load i32, i32* @M_KQUEUE, align 4
  %33 = call i32 @free(%struct.knlist* %31, i32 %32)
  br label %34

34:                                               ; preds = %6, %28, %16
  ret void
}

declare dso_local i64 @knlist_empty(%struct.knlist*) #1

declare dso_local i32 @knlist_destroy(%struct.knlist*) #1

declare dso_local i32 @free(%struct.knlist*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
