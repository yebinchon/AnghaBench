; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/cc/extr_cc_vegas.c_vegas_cb_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/cc/extr_cc_vegas.c_vegas_cb_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cc_var = type { %struct.vegas* }
%struct.vegas = type { i32 }

@M_VEGAS = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cc_var*)* @vegas_cb_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vegas_cb_init(%struct.cc_var* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cc_var*, align 8
  %4 = alloca %struct.vegas*, align 8
  store %struct.cc_var* %0, %struct.cc_var** %3, align 8
  %5 = load i32, i32* @M_VEGAS, align 4
  %6 = load i32, i32* @M_NOWAIT, align 4
  %7 = call %struct.vegas* @malloc(i32 4, i32 %5, i32 %6)
  store %struct.vegas* %7, %struct.vegas** %4, align 8
  %8 = load %struct.vegas*, %struct.vegas** %4, align 8
  %9 = icmp eq %struct.vegas* %8, null
  br i1 %9, label %10, label %12

10:                                               ; preds = %1
  %11 = load i32, i32* @ENOMEM, align 4
  store i32 %11, i32* %2, align 4
  br label %18

12:                                               ; preds = %1
  %13 = load %struct.vegas*, %struct.vegas** %4, align 8
  %14 = getelementptr inbounds %struct.vegas, %struct.vegas* %13, i32 0, i32 0
  store i32 1, i32* %14, align 4
  %15 = load %struct.vegas*, %struct.vegas** %4, align 8
  %16 = load %struct.cc_var*, %struct.cc_var** %3, align 8
  %17 = getelementptr inbounds %struct.cc_var, %struct.cc_var* %16, i32 0, i32 0
  store %struct.vegas* %15, %struct.vegas** %17, align 8
  store i32 0, i32* %2, align 4
  br label %18

18:                                               ; preds = %12, %10
  %19 = load i32, i32* %2, align 4
  ret i32 %19
}

declare dso_local %struct.vegas* @malloc(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
