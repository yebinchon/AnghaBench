; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netpfil/pf/extr_pf_ioctl.c_pf_empty_pool.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netpfil/pf/extr_pf_ioctl.c_pf_empty_pool.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pf_palist = type { i32 }
%struct.pf_pooladdr = type { i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32*, i32 }

@entries = common dso_local global i32 0, align 4
@M_PFRULE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pf_palist*)* @pf_empty_pool to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pf_empty_pool(%struct.pf_palist* %0) #0 {
  %2 = alloca %struct.pf_palist*, align 8
  %3 = alloca %struct.pf_pooladdr*, align 8
  store %struct.pf_palist* %0, %struct.pf_palist** %2, align 8
  br label %4

4:                                                ; preds = %45, %1
  %5 = load %struct.pf_palist*, %struct.pf_palist** %2, align 8
  %6 = call %struct.pf_pooladdr* @TAILQ_FIRST(%struct.pf_palist* %5)
  store %struct.pf_pooladdr* %6, %struct.pf_pooladdr** %3, align 8
  %7 = icmp ne %struct.pf_pooladdr* %6, null
  br i1 %7, label %8, label %53

8:                                                ; preds = %4
  %9 = load %struct.pf_pooladdr*, %struct.pf_pooladdr** %3, align 8
  %10 = getelementptr inbounds %struct.pf_pooladdr, %struct.pf_pooladdr* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  switch i32 %12, label %35 [
    i32 129, label %13
    i32 128, label %20
  ]

13:                                               ; preds = %8
  %14 = load %struct.pf_pooladdr*, %struct.pf_pooladdr** %3, align 8
  %15 = getelementptr inbounds %struct.pf_pooladdr, %struct.pf_pooladdr* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @pfi_dynaddr_remove(i32 %18)
  br label %35

20:                                               ; preds = %8
  %21 = load %struct.pf_pooladdr*, %struct.pf_pooladdr** %3, align 8
  %22 = getelementptr inbounds %struct.pf_pooladdr, %struct.pf_pooladdr* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = icmp ne i32* %25, null
  br i1 %26, label %27, label %34

27:                                               ; preds = %20
  %28 = load %struct.pf_pooladdr*, %struct.pf_pooladdr** %3, align 8
  %29 = getelementptr inbounds %struct.pf_pooladdr, %struct.pf_pooladdr* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = call i32 @pfr_detach_table(i32* %32)
  br label %34

34:                                               ; preds = %27, %20
  br label %35

35:                                               ; preds = %8, %34, %13
  %36 = load %struct.pf_pooladdr*, %struct.pf_pooladdr** %3, align 8
  %37 = getelementptr inbounds %struct.pf_pooladdr, %struct.pf_pooladdr* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %35
  %41 = load %struct.pf_pooladdr*, %struct.pf_pooladdr** %3, align 8
  %42 = getelementptr inbounds %struct.pf_pooladdr, %struct.pf_pooladdr* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = call i32 @pfi_kif_unref(i64 %43)
  br label %45

45:                                               ; preds = %40, %35
  %46 = load %struct.pf_palist*, %struct.pf_palist** %2, align 8
  %47 = load %struct.pf_pooladdr*, %struct.pf_pooladdr** %3, align 8
  %48 = load i32, i32* @entries, align 4
  %49 = call i32 @TAILQ_REMOVE(%struct.pf_palist* %46, %struct.pf_pooladdr* %47, i32 %48)
  %50 = load %struct.pf_pooladdr*, %struct.pf_pooladdr** %3, align 8
  %51 = load i32, i32* @M_PFRULE, align 4
  %52 = call i32 @free(%struct.pf_pooladdr* %50, i32 %51)
  br label %4

53:                                               ; preds = %4
  ret void
}

declare dso_local %struct.pf_pooladdr* @TAILQ_FIRST(%struct.pf_palist*) #1

declare dso_local i32 @pfi_dynaddr_remove(i32) #1

declare dso_local i32 @pfr_detach_table(i32*) #1

declare dso_local i32 @pfi_kif_unref(i64) #1

declare dso_local i32 @TAILQ_REMOVE(%struct.pf_palist*, %struct.pf_pooladdr*, i32) #1

declare dso_local i32 @free(%struct.pf_pooladdr*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
