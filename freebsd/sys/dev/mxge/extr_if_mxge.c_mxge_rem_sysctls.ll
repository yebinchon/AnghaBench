; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mxge/extr_if_mxge.c_mxge_rem_sysctls.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mxge/extr_if_mxge.c_mxge_rem_sysctls.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32*, i32, %struct.mxge_slice_state* }
%struct.mxge_slice_state = type { i32*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*)* @mxge_rem_sysctls to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mxge_rem_sysctls(%struct.TYPE_3__* %0) #0 {
  %2 = alloca %struct.TYPE_3__*, align 8
  %3 = alloca %struct.mxge_slice_state*, align 8
  %4 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %2, align 8
  %5 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %6 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 1
  %7 = load i32*, i32** %6, align 8
  %8 = icmp eq i32* %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  br label %47

10:                                               ; preds = %1
  store i32 0, i32* %4, align 4
  br label %11

11:                                               ; preds = %38, %10
  %12 = load i32, i32* %4, align 4
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp slt i32 %12, %15
  br i1 %16, label %17, label %41

17:                                               ; preds = %11
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 3
  %20 = load %struct.mxge_slice_state*, %struct.mxge_slice_state** %19, align 8
  %21 = load i32, i32* %4, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.mxge_slice_state, %struct.mxge_slice_state* %20, i64 %22
  store %struct.mxge_slice_state* %23, %struct.mxge_slice_state** %3, align 8
  %24 = load %struct.mxge_slice_state*, %struct.mxge_slice_state** %3, align 8
  %25 = icmp eq %struct.mxge_slice_state* %24, null
  br i1 %25, label %31, label %26

26:                                               ; preds = %17
  %27 = load %struct.mxge_slice_state*, %struct.mxge_slice_state** %3, align 8
  %28 = getelementptr inbounds %struct.mxge_slice_state, %struct.mxge_slice_state* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = icmp eq i32* %29, null
  br i1 %30, label %31, label %32

31:                                               ; preds = %26, %17
  br label %38

32:                                               ; preds = %26
  %33 = load %struct.mxge_slice_state*, %struct.mxge_slice_state** %3, align 8
  %34 = getelementptr inbounds %struct.mxge_slice_state, %struct.mxge_slice_state* %33, i32 0, i32 1
  %35 = call i32 @sysctl_ctx_free(i32* %34)
  %36 = load %struct.mxge_slice_state*, %struct.mxge_slice_state** %3, align 8
  %37 = getelementptr inbounds %struct.mxge_slice_state, %struct.mxge_slice_state* %36, i32 0, i32 0
  store i32* null, i32** %37, align 8
  br label %38

38:                                               ; preds = %32, %31
  %39 = load i32, i32* %4, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %4, align 4
  br label %11

41:                                               ; preds = %11
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 2
  %44 = call i32 @sysctl_ctx_free(i32* %43)
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 1
  store i32* null, i32** %46, align 8
  br label %47

47:                                               ; preds = %41, %9
  ret void
}

declare dso_local i32 @sysctl_ctx_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
