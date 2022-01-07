; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/cc/extr_cc_cubic.c_cubic_cb_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/cc/extr_cc_cubic.c_cubic_cb_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cc_var = type { %struct.cubic* }
%struct.cubic = type { i32, i32, i32 }

@M_CUBIC = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ticks = common dso_local global i32 0, align 4
@TCPTV_SRTTBASE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cc_var*)* @cubic_cb_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cubic_cb_init(%struct.cc_var* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cc_var*, align 8
  %4 = alloca %struct.cubic*, align 8
  store %struct.cc_var* %0, %struct.cc_var** %3, align 8
  %5 = load i32, i32* @M_CUBIC, align 4
  %6 = load i32, i32* @M_NOWAIT, align 4
  %7 = load i32, i32* @M_ZERO, align 4
  %8 = or i32 %6, %7
  %9 = call %struct.cubic* @malloc(i32 12, i32 %5, i32 %8)
  store %struct.cubic* %9, %struct.cubic** %4, align 8
  %10 = load %struct.cubic*, %struct.cubic** %4, align 8
  %11 = icmp eq %struct.cubic* %10, null
  br i1 %11, label %12, label %14

12:                                               ; preds = %1
  %13 = load i32, i32* @ENOMEM, align 4
  store i32 %13, i32* %2, align 4
  br label %26

14:                                               ; preds = %1
  %15 = load i32, i32* @ticks, align 4
  %16 = load %struct.cubic*, %struct.cubic** %4, align 8
  %17 = getelementptr inbounds %struct.cubic, %struct.cubic* %16, i32 0, i32 2
  store i32 %15, i32* %17, align 4
  %18 = load i32, i32* @TCPTV_SRTTBASE, align 4
  %19 = load %struct.cubic*, %struct.cubic** %4, align 8
  %20 = getelementptr inbounds %struct.cubic, %struct.cubic* %19, i32 0, i32 1
  store i32 %18, i32* %20, align 4
  %21 = load %struct.cubic*, %struct.cubic** %4, align 8
  %22 = getelementptr inbounds %struct.cubic, %struct.cubic* %21, i32 0, i32 0
  store i32 1, i32* %22, align 4
  %23 = load %struct.cubic*, %struct.cubic** %4, align 8
  %24 = load %struct.cc_var*, %struct.cc_var** %3, align 8
  %25 = getelementptr inbounds %struct.cc_var, %struct.cc_var* %24, i32 0, i32 0
  store %struct.cubic* %23, %struct.cubic** %25, align 8
  store i32 0, i32* %2, align 4
  br label %26

26:                                               ; preds = %14, %12
  %27 = load i32, i32* %2, align 4
  ret i32 %27
}

declare dso_local %struct.cubic* @malloc(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
