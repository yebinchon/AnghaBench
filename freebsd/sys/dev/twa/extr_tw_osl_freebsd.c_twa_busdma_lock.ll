; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/twa/extr_tw_osl_freebsd.c_twa_busdma_lock.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/twa/extr_tw_osl_freebsd.c_twa_busdma_lock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtx = type { i32 }

@.str = private unnamed_addr constant [44 x i8] c"Unknown operation 0x%x for twa_busdma_lock!\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @twa_busdma_lock(i32* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.mtx*, align 8
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32*, i32** %4, align 8
  %8 = bitcast i32* %7 to %struct.mtx*
  store %struct.mtx* %8, %struct.mtx** %6, align 8
  %9 = load i32, i32* %5, align 4
  switch i32 %9, label %16 [
    i32 129, label %10
    i32 128, label %13
  ]

10:                                               ; preds = %2
  %11 = load %struct.mtx*, %struct.mtx** %6, align 8
  %12 = call i32 @mtx_lock_spin(%struct.mtx* %11)
  br label %19

13:                                               ; preds = %2
  %14 = load %struct.mtx*, %struct.mtx** %6, align 8
  %15 = call i32 @mtx_unlock_spin(%struct.mtx* %14)
  br label %19

16:                                               ; preds = %2
  %17 = load i32, i32* %5, align 4
  %18 = call i32 @panic(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %17)
  br label %19

19:                                               ; preds = %16, %13, %10
  %20 = load i32, i32* %3, align 4
  ret i32 %20
}

declare dso_local i32 @mtx_lock_spin(%struct.mtx*) #1

declare dso_local i32 @mtx_unlock_spin(%struct.mtx*) #1

declare dso_local i32 @panic(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
