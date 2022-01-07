; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/powerpc/extr_clock.c_decr_intr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/powerpc/extr_clock.c_decr_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 (%struct.TYPE_3__*, i32)*, i64 }
%struct.trapframe = type { i32 }
%struct.decr_state = type { i32, i64 }

@decr_state = common dso_local global i32 0, align 4
@initialized = common dso_local global i32 0, align 4
@decr_counts = common dso_local global i32** null, align 8
@curcpu = common dso_local global i64 0, align 8
@decr_et = common dso_local global %struct.TYPE_3__ zeroinitializer, align 8
@SPR_TSR = common dso_local global i32 0, align 4
@TSR_DIS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @decr_intr(%struct.trapframe* %0) #0 {
  %2 = alloca %struct.trapframe*, align 8
  %3 = alloca %struct.decr_state*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store %struct.trapframe* %0, %struct.trapframe** %2, align 8
  %6 = load i32, i32* @decr_state, align 4
  %7 = call %struct.decr_state* @DPCPU_PTR(i32 %6)
  store %struct.decr_state* %7, %struct.decr_state** %3, align 8
  store i32 0, i32* %4, align 4
  %8 = load i32, i32* @initialized, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  br label %67

11:                                               ; preds = %1
  %12 = load i32**, i32*** @decr_counts, align 8
  %13 = load i64, i64* @curcpu, align 8
  %14 = getelementptr inbounds i32*, i32** %12, i64 %13
  %15 = load i32*, i32** %14, align 8
  %16 = load i32, i32* %15, align 4
  %17 = add nsw i32 %16, 1
  store i32 %17, i32* %15, align 4
  %18 = load %struct.decr_state*, %struct.decr_state** %3, align 8
  %19 = getelementptr inbounds %struct.decr_state, %struct.decr_state* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp eq i32 %20, 1
  br i1 %21, label %22, label %38

22:                                               ; preds = %11
  %23 = call i64 asm "mfdec $0", "=r,~{dirflag},~{fpsr},~{flags}"() #2, !srcloc !2
  store i64 %23, i64* %5, align 8
  br label %24

24:                                               ; preds = %27, %22
  %25 = load i64, i64* %5, align 8
  %26 = icmp slt i64 %25, 0
  br i1 %26, label %27, label %35

27:                                               ; preds = %24
  %28 = load %struct.decr_state*, %struct.decr_state** %3, align 8
  %29 = getelementptr inbounds %struct.decr_state, %struct.decr_state* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* %5, align 8
  %32 = add nsw i64 %31, %30
  store i64 %32, i64* %5, align 8
  %33 = load i32, i32* %4, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %4, align 4
  br label %24

35:                                               ; preds = %24
  %36 = load i64, i64* %5, align 8
  %37 = call i32 @mtdec(i64 %36)
  br label %54

38:                                               ; preds = %11
  %39 = load %struct.decr_state*, %struct.decr_state** %3, align 8
  %40 = getelementptr inbounds %struct.decr_state, %struct.decr_state* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = icmp eq i32 %41, 2
  br i1 %42, label %43, label %45

43:                                               ; preds = %38
  store i32 1, i32* %4, align 4
  %44 = call i32 @decr_et_stop(i32* null)
  br label %53

45:                                               ; preds = %38
  %46 = load %struct.decr_state*, %struct.decr_state** %3, align 8
  %47 = getelementptr inbounds %struct.decr_state, %struct.decr_state* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %45
  %51 = call i32 @decr_et_stop(i32* null)
  br label %52

52:                                               ; preds = %50, %45
  br label %53

53:                                               ; preds = %52, %43
  br label %54

54:                                               ; preds = %53, %35
  br label %55

55:                                               ; preds = %66, %54
  %56 = load i32, i32* %4, align 4
  %57 = add nsw i32 %56, -1
  store i32 %57, i32* %4, align 4
  %58 = icmp sgt i32 %56, 0
  br i1 %58, label %59, label %67

59:                                               ; preds = %55
  %60 = load i64, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @decr_et, i32 0, i32 2), align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %66

62:                                               ; preds = %59
  %63 = load i32 (%struct.TYPE_3__*, i32)*, i32 (%struct.TYPE_3__*, i32)** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @decr_et, i32 0, i32 1), align 8
  %64 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @decr_et, i32 0, i32 0), align 8
  %65 = call i32 %63(%struct.TYPE_3__* @decr_et, i32 %64)
  br label %66

66:                                               ; preds = %62, %59
  br label %55

67:                                               ; preds = %10, %55
  ret void
}

declare dso_local %struct.decr_state* @DPCPU_PTR(i32) #1

declare dso_local i32 @mtdec(i64) #1

declare dso_local i32 @decr_et_stop(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{i32 868}
