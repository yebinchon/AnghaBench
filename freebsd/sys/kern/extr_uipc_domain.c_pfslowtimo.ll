; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_uipc_domain.c_pfslowtimo.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_uipc_domain.c_pfslowtimo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.domain = type { %struct.protosw*, %struct.protosw*, %struct.domain* }
%struct.protosw = type { i32 (...)* }
%struct.epoch_tracker = type { i32 }

@domains = common dso_local global %struct.domain* null, align 8
@pfslow_callout = common dso_local global i32 0, align 4
@hz = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @pfslowtimo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pfslowtimo(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.epoch_tracker, align 4
  %4 = alloca %struct.domain*, align 8
  %5 = alloca %struct.protosw*, align 8
  store i8* %0, i8** %2, align 8
  %6 = getelementptr inbounds %struct.epoch_tracker, %struct.epoch_tracker* %3, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = call i32 @NET_EPOCH_ENTER(i32 %7)
  %9 = load %struct.domain*, %struct.domain** @domains, align 8
  store %struct.domain* %9, %struct.domain** %4, align 8
  br label %10

10:                                               ; preds = %38, %1
  %11 = load %struct.domain*, %struct.domain** %4, align 8
  %12 = icmp ne %struct.domain* %11, null
  br i1 %12, label %13, label %42

13:                                               ; preds = %10
  %14 = load %struct.domain*, %struct.domain** %4, align 8
  %15 = getelementptr inbounds %struct.domain, %struct.domain* %14, i32 0, i32 1
  %16 = load %struct.protosw*, %struct.protosw** %15, align 8
  store %struct.protosw* %16, %struct.protosw** %5, align 8
  br label %17

17:                                               ; preds = %34, %13
  %18 = load %struct.protosw*, %struct.protosw** %5, align 8
  %19 = load %struct.domain*, %struct.domain** %4, align 8
  %20 = getelementptr inbounds %struct.domain, %struct.domain* %19, i32 0, i32 0
  %21 = load %struct.protosw*, %struct.protosw** %20, align 8
  %22 = icmp ult %struct.protosw* %18, %21
  br i1 %22, label %23, label %37

23:                                               ; preds = %17
  %24 = load %struct.protosw*, %struct.protosw** %5, align 8
  %25 = getelementptr inbounds %struct.protosw, %struct.protosw* %24, i32 0, i32 0
  %26 = load i32 (...)*, i32 (...)** %25, align 8
  %27 = icmp ne i32 (...)* %26, null
  br i1 %27, label %28, label %33

28:                                               ; preds = %23
  %29 = load %struct.protosw*, %struct.protosw** %5, align 8
  %30 = getelementptr inbounds %struct.protosw, %struct.protosw* %29, i32 0, i32 0
  %31 = load i32 (...)*, i32 (...)** %30, align 8
  %32 = call i32 (...) %31()
  br label %33

33:                                               ; preds = %28, %23
  br label %34

34:                                               ; preds = %33
  %35 = load %struct.protosw*, %struct.protosw** %5, align 8
  %36 = getelementptr inbounds %struct.protosw, %struct.protosw* %35, i32 1
  store %struct.protosw* %36, %struct.protosw** %5, align 8
  br label %17

37:                                               ; preds = %17
  br label %38

38:                                               ; preds = %37
  %39 = load %struct.domain*, %struct.domain** %4, align 8
  %40 = getelementptr inbounds %struct.domain, %struct.domain* %39, i32 0, i32 2
  %41 = load %struct.domain*, %struct.domain** %40, align 8
  store %struct.domain* %41, %struct.domain** %4, align 8
  br label %10

42:                                               ; preds = %10
  %43 = getelementptr inbounds %struct.epoch_tracker, %struct.epoch_tracker* %3, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @NET_EPOCH_EXIT(i32 %44)
  %46 = load i32, i32* @hz, align 4
  %47 = sdiv i32 %46, 2
  %48 = call i32 @callout_reset(i32* @pfslow_callout, i32 %47, void (i8*)* @pfslowtimo, i32* null)
  ret void
}

declare dso_local i32 @NET_EPOCH_ENTER(i32) #1

declare dso_local i32 @NET_EPOCH_EXIT(i32) #1

declare dso_local i32 @callout_reset(i32*, i32, void (i8*)*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
