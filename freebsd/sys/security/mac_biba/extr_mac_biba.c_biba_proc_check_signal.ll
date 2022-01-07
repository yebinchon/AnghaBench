; ModuleID = '/home/carl/AnghaBench/freebsd/sys/security/mac_biba/extr_mac_biba.c_biba_proc_check_signal.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/security/mac_biba/extr_mac_biba.c_biba_proc_check_signal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ucred = type { i32 }
%struct.proc = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.mac_biba = type { i32 }

@biba_enabled = common dso_local global i32 0, align 4
@ESRCH = common dso_local global i32 0, align 4
@EACCES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ucred*, %struct.proc*, i32)* @biba_proc_check_signal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @biba_proc_check_signal(%struct.ucred* %0, %struct.proc* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ucred*, align 8
  %6 = alloca %struct.proc*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.mac_biba*, align 8
  %9 = alloca %struct.mac_biba*, align 8
  store %struct.ucred* %0, %struct.ucred** %5, align 8
  store %struct.proc* %1, %struct.proc** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load i32, i32* @biba_enabled, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %38

13:                                               ; preds = %3
  %14 = load %struct.ucred*, %struct.ucred** %5, align 8
  %15 = getelementptr inbounds %struct.ucred, %struct.ucred* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call %struct.mac_biba* @SLOT(i32 %16)
  store %struct.mac_biba* %17, %struct.mac_biba** %8, align 8
  %18 = load %struct.proc*, %struct.proc** %6, align 8
  %19 = getelementptr inbounds %struct.proc, %struct.proc* %18, i32 0, i32 0
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call %struct.mac_biba* @SLOT(i32 %22)
  store %struct.mac_biba* %23, %struct.mac_biba** %9, align 8
  %24 = load %struct.mac_biba*, %struct.mac_biba** %9, align 8
  %25 = load %struct.mac_biba*, %struct.mac_biba** %8, align 8
  %26 = call i32 @biba_dominate_effective(%struct.mac_biba* %24, %struct.mac_biba* %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %30, label %28

28:                                               ; preds = %13
  %29 = load i32, i32* @ESRCH, align 4
  store i32 %29, i32* %4, align 4
  br label %38

30:                                               ; preds = %13
  %31 = load %struct.mac_biba*, %struct.mac_biba** %8, align 8
  %32 = load %struct.mac_biba*, %struct.mac_biba** %9, align 8
  %33 = call i32 @biba_dominate_effective(%struct.mac_biba* %31, %struct.mac_biba* %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %37, label %35

35:                                               ; preds = %30
  %36 = load i32, i32* @EACCES, align 4
  store i32 %36, i32* %4, align 4
  br label %38

37:                                               ; preds = %30
  store i32 0, i32* %4, align 4
  br label %38

38:                                               ; preds = %37, %35, %28, %12
  %39 = load i32, i32* %4, align 4
  ret i32 %39
}

declare dso_local %struct.mac_biba* @SLOT(i32) #1

declare dso_local i32 @biba_dominate_effective(%struct.mac_biba*, %struct.mac_biba*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
