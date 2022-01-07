; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/syscons/extr_syscons.c_sc_cngetc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/syscons/extr_syscons.c_sc_cngetc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.consdev = type { i32 }
%struct.sc_cnstate = type { i32 }

@sc_console = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.consdev*)* @sc_cngetc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sc_cngetc(%struct.consdev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.consdev*, align 8
  %4 = alloca %struct.sc_cnstate, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.consdev* %0, %struct.consdev** %3, align 8
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** @sc_console, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @sccnopen(i32 %9, %struct.sc_cnstate* %4, i32 1)
  %11 = call i32 (...) @spltty()
  store i32 %11, i32* %6, align 4
  %12 = getelementptr inbounds %struct.sc_cnstate, %struct.sc_cnstate* %4, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %22, label %15

15:                                               ; preds = %1
  %16 = load i32, i32* %6, align 4
  %17 = call i32 @splx(i32 %16)
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** @sc_console, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @sccnclose(i32 %20, %struct.sc_cnstate* %4)
  store i32 -1, i32* %2, align 4
  br label %31

22:                                               ; preds = %1
  %23 = call i32 @sc_cngetc_locked(%struct.sc_cnstate* %4)
  store i32 %23, i32* %5, align 4
  %24 = load i32, i32* %6, align 4
  %25 = call i32 @splx(i32 %24)
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** @sc_console, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @sccnclose(i32 %28, %struct.sc_cnstate* %4)
  %30 = load i32, i32* %5, align 4
  store i32 %30, i32* %2, align 4
  br label %31

31:                                               ; preds = %22, %15
  %32 = load i32, i32* %2, align 4
  ret i32 %32
}

declare dso_local i32 @sccnopen(i32, %struct.sc_cnstate*, i32) #1

declare dso_local i32 @spltty(...) #1

declare dso_local i32 @splx(i32) #1

declare dso_local i32 @sccnclose(i32, %struct.sc_cnstate*) #1

declare dso_local i32 @sc_cngetc_locked(%struct.sc_cnstate*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
