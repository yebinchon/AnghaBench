; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_sglist.c_sglist_clone.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_sglist.c_sglist_clone.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sglist = type { i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.sglist* @sglist_clone(%struct.sglist* %0, i32 %1) #0 {
  %3 = alloca %struct.sglist*, align 8
  %4 = alloca %struct.sglist*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.sglist*, align 8
  store %struct.sglist* %0, %struct.sglist** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.sglist*, %struct.sglist** %4, align 8
  %8 = icmp eq %struct.sglist* %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %2
  store %struct.sglist* null, %struct.sglist** %3, align 8
  br label %39

10:                                               ; preds = %2
  %11 = load %struct.sglist*, %struct.sglist** %4, align 8
  %12 = getelementptr inbounds %struct.sglist, %struct.sglist* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* %5, align 4
  %15 = call %struct.sglist* @sglist_alloc(i32 %13, i32 %14)
  store %struct.sglist* %15, %struct.sglist** %6, align 8
  %16 = load %struct.sglist*, %struct.sglist** %6, align 8
  %17 = icmp eq %struct.sglist* %16, null
  br i1 %17, label %18, label %19

18:                                               ; preds = %10
  store %struct.sglist* null, %struct.sglist** %3, align 8
  br label %39

19:                                               ; preds = %10
  %20 = load %struct.sglist*, %struct.sglist** %4, align 8
  %21 = getelementptr inbounds %struct.sglist, %struct.sglist* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.sglist*, %struct.sglist** %6, align 8
  %24 = getelementptr inbounds %struct.sglist, %struct.sglist* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 4
  %25 = load %struct.sglist*, %struct.sglist** %4, align 8
  %26 = getelementptr inbounds %struct.sglist, %struct.sglist* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.sglist*, %struct.sglist** %6, align 8
  %29 = getelementptr inbounds %struct.sglist, %struct.sglist* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.sglist*, %struct.sglist** %4, align 8
  %32 = getelementptr inbounds %struct.sglist, %struct.sglist* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = sext i32 %33 to i64
  %35 = mul i64 4, %34
  %36 = trunc i64 %35 to i32
  %37 = call i32 @bcopy(i32 %27, i32 %30, i32 %36)
  %38 = load %struct.sglist*, %struct.sglist** %6, align 8
  store %struct.sglist* %38, %struct.sglist** %3, align 8
  br label %39

39:                                               ; preds = %19, %18, %9
  %40 = load %struct.sglist*, %struct.sglist** %3, align 8
  ret %struct.sglist* %40
}

declare dso_local %struct.sglist* @sglist_alloc(i32, i32) #1

declare dso_local i32 @bcopy(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
