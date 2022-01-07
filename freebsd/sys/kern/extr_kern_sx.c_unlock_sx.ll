; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_sx.c_unlock_sx.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_sx.c_unlock_sx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lock_object = type { i32 }
%struct.sx = type { i32 }

@SA_LOCKED = common dso_local global i32 0, align 4
@SA_NOTRECURSED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @unlock_sx(%struct.lock_object* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.lock_object*, align 8
  %4 = alloca %struct.sx*, align 8
  store %struct.lock_object* %0, %struct.lock_object** %3, align 8
  %5 = load %struct.lock_object*, %struct.lock_object** %3, align 8
  %6 = bitcast %struct.lock_object* %5 to %struct.sx*
  store %struct.sx* %6, %struct.sx** %4, align 8
  %7 = load %struct.sx*, %struct.sx** %4, align 8
  %8 = load i32, i32* @SA_LOCKED, align 4
  %9 = load i32, i32* @SA_NOTRECURSED, align 4
  %10 = or i32 %8, %9
  %11 = call i32 @sx_assert(%struct.sx* %7, i32 %10)
  %12 = load %struct.sx*, %struct.sx** %4, align 8
  %13 = call i64 @sx_xlocked(%struct.sx* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %1
  %16 = load %struct.sx*, %struct.sx** %4, align 8
  %17 = call i32 @sx_xunlock(%struct.sx* %16)
  store i64 0, i64* %2, align 8
  br label %21

18:                                               ; preds = %1
  %19 = load %struct.sx*, %struct.sx** %4, align 8
  %20 = call i32 @sx_sunlock(%struct.sx* %19)
  store i64 1, i64* %2, align 8
  br label %21

21:                                               ; preds = %18, %15
  %22 = load i64, i64* %2, align 8
  ret i64 %22
}

declare dso_local i32 @sx_assert(%struct.sx*, i32) #1

declare dso_local i64 @sx_xlocked(%struct.sx*) #1

declare dso_local i32 @sx_xunlock(%struct.sx*) #1

declare dso_local i32 @sx_sunlock(%struct.sx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
