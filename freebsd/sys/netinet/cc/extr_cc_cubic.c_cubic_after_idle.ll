; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/cc/extr_cc_cubic.c_cubic_after_idle.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/cc/extr_cc_cubic.c_cubic_after_idle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (%struct.cc_var*)* }
%struct.cc_var = type { %struct.cubic* }
%struct.cubic = type { i32, i32, i32 }

@snd_cwnd = common dso_local global i32 0, align 4
@t_maxseg = common dso_local global i32 0, align 4
@newreno_cc_algo = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@ticks = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cc_var*)* @cubic_after_idle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cubic_after_idle(%struct.cc_var* %0) #0 {
  %2 = alloca %struct.cc_var*, align 8
  %3 = alloca %struct.cubic*, align 8
  store %struct.cc_var* %0, %struct.cc_var** %2, align 8
  %4 = load %struct.cc_var*, %struct.cc_var** %2, align 8
  %5 = getelementptr inbounds %struct.cc_var, %struct.cc_var* %4, i32 0, i32 0
  %6 = load %struct.cubic*, %struct.cubic** %5, align 8
  store %struct.cubic* %6, %struct.cubic** %3, align 8
  %7 = load %struct.cubic*, %struct.cubic** %3, align 8
  %8 = getelementptr inbounds %struct.cubic, %struct.cubic* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.cc_var*, %struct.cc_var** %2, align 8
  %11 = load i32, i32* @snd_cwnd, align 4
  %12 = call i32 @CCV(%struct.cc_var* %10, i32 %11)
  %13 = call i32 @ulmax(i32 %9, i32 %12)
  %14 = load %struct.cubic*, %struct.cubic** %3, align 8
  %15 = getelementptr inbounds %struct.cubic, %struct.cubic* %14, i32 0, i32 0
  store i32 %13, i32* %15, align 4
  %16 = load %struct.cubic*, %struct.cubic** %3, align 8
  %17 = getelementptr inbounds %struct.cubic, %struct.cubic* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.cc_var*, %struct.cc_var** %2, align 8
  %20 = load i32, i32* @t_maxseg, align 4
  %21 = call i32 @CCV(%struct.cc_var* %19, i32 %20)
  %22 = sdiv i32 %18, %21
  %23 = call i32 @cubic_k(i32 %22)
  %24 = load %struct.cubic*, %struct.cubic** %3, align 8
  %25 = getelementptr inbounds %struct.cubic, %struct.cubic* %24, i32 0, i32 2
  store i32 %23, i32* %25, align 4
  %26 = load i32 (%struct.cc_var*)*, i32 (%struct.cc_var*)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @newreno_cc_algo, i32 0, i32 0), align 8
  %27 = load %struct.cc_var*, %struct.cc_var** %2, align 8
  %28 = call i32 %26(%struct.cc_var* %27)
  %29 = load i32, i32* @ticks, align 4
  %30 = load %struct.cubic*, %struct.cubic** %3, align 8
  %31 = getelementptr inbounds %struct.cubic, %struct.cubic* %30, i32 0, i32 1
  store i32 %29, i32* %31, align 4
  ret void
}

declare dso_local i32 @ulmax(i32, i32) #1

declare dso_local i32 @CCV(%struct.cc_var*, i32) #1

declare dso_local i32 @cubic_k(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
