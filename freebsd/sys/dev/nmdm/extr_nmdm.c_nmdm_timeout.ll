; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/nmdm/extr_nmdm.c_nmdm_timeout.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/nmdm/extr_nmdm.c_nmdm_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nmdmpart = type { i64, i32, i32, i32, i32, i64 }

@QS = common dso_local global i32 0, align 4
@taskqueue_swi = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @nmdm_timeout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nmdm_timeout(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.nmdmpart*, align 8
  store i8* %0, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = bitcast i8* %4 to %struct.nmdmpart*
  store %struct.nmdmpart* %5, %struct.nmdmpart** %3, align 8
  %6 = load %struct.nmdmpart*, %struct.nmdmpart** %3, align 8
  %7 = getelementptr inbounds %struct.nmdmpart, %struct.nmdmpart* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  br label %46

11:                                               ; preds = %1
  %12 = load %struct.nmdmpart*, %struct.nmdmpart** %3, align 8
  %13 = getelementptr inbounds %struct.nmdmpart, %struct.nmdmpart* %12, i32 0, i32 5
  %14 = load i64, i64* %13, align 8
  %15 = load %struct.nmdmpart*, %struct.nmdmpart** %3, align 8
  %16 = getelementptr inbounds %struct.nmdmpart, %struct.nmdmpart* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = sext i32 %17 to i64
  %19 = add nsw i64 %18, %14
  %20 = trunc i64 %19 to i32
  store i32 %20, i32* %16, align 8
  %21 = load %struct.nmdmpart*, %struct.nmdmpart** %3, align 8
  %22 = getelementptr inbounds %struct.nmdmpart, %struct.nmdmpart* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @QS, align 4
  %25 = ashr i32 %23, %24
  %26 = load %struct.nmdmpart*, %struct.nmdmpart** %3, align 8
  %27 = getelementptr inbounds %struct.nmdmpart, %struct.nmdmpart* %26, i32 0, i32 2
  store i32 %25, i32* %27, align 4
  %28 = load i32, i32* @QS, align 4
  %29 = shl i32 1, %28
  %30 = sub nsw i32 %29, 1
  %31 = load %struct.nmdmpart*, %struct.nmdmpart** %3, align 8
  %32 = getelementptr inbounds %struct.nmdmpart, %struct.nmdmpart* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = and i32 %33, %30
  store i32 %34, i32* %32, align 8
  %35 = load i32, i32* @taskqueue_swi, align 4
  %36 = load %struct.nmdmpart*, %struct.nmdmpart** %3, align 8
  %37 = getelementptr inbounds %struct.nmdmpart, %struct.nmdmpart* %36, i32 0, i32 4
  %38 = call i32 @taskqueue_enqueue(i32 %35, i32* %37)
  %39 = load %struct.nmdmpart*, %struct.nmdmpart** %3, align 8
  %40 = getelementptr inbounds %struct.nmdmpart, %struct.nmdmpart* %39, i32 0, i32 3
  %41 = load %struct.nmdmpart*, %struct.nmdmpart** %3, align 8
  %42 = getelementptr inbounds %struct.nmdmpart, %struct.nmdmpart* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load %struct.nmdmpart*, %struct.nmdmpart** %3, align 8
  %45 = call i32 @callout_reset(i32* %40, i64 %43, void (i8*)* @nmdm_timeout, %struct.nmdmpart* %44)
  br label %46

46:                                               ; preds = %11, %10
  ret void
}

declare dso_local i32 @taskqueue_enqueue(i32, i32*) #1

declare dso_local i32 @callout_reset(i32*, i64, void (i8*)*, %struct.nmdmpart*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
