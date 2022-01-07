; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/cc/extr_cc_chd.c_chd_conn_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/cc/extr_cc_chd.c_chd_conn_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cc_var = type { %struct.chd* }
%struct.chd = type { i32, i64, i64, i64 }

@snd_cwnd = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cc_var*)* @chd_conn_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @chd_conn_init(%struct.cc_var* %0) #0 {
  %2 = alloca %struct.cc_var*, align 8
  %3 = alloca %struct.chd*, align 8
  store %struct.cc_var* %0, %struct.cc_var** %2, align 8
  %4 = load %struct.cc_var*, %struct.cc_var** %2, align 8
  %5 = getelementptr inbounds %struct.cc_var, %struct.cc_var* %4, i32 0, i32 0
  %6 = load %struct.chd*, %struct.chd** %5, align 8
  store %struct.chd* %6, %struct.chd** %3, align 8
  %7 = load %struct.chd*, %struct.chd** %3, align 8
  %8 = getelementptr inbounds %struct.chd, %struct.chd* %7, i32 0, i32 3
  store i64 0, i64* %8, align 8
  %9 = load %struct.chd*, %struct.chd** %3, align 8
  %10 = getelementptr inbounds %struct.chd, %struct.chd* %9, i32 0, i32 2
  store i64 0, i64* %10, align 8
  %11 = load %struct.chd*, %struct.chd** %3, align 8
  %12 = getelementptr inbounds %struct.chd, %struct.chd* %11, i32 0, i32 1
  store i64 0, i64* %12, align 8
  %13 = load %struct.cc_var*, %struct.cc_var** %2, align 8
  %14 = load i32, i32* @snd_cwnd, align 4
  %15 = call i32 @CCV(%struct.cc_var* %13, i32 %14)
  %16 = load %struct.chd*, %struct.chd** %3, align 8
  %17 = getelementptr inbounds %struct.chd, %struct.chd* %16, i32 0, i32 0
  store i32 %15, i32* %17, align 8
  ret void
}

declare dso_local i32 @CCV(%struct.cc_var*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
