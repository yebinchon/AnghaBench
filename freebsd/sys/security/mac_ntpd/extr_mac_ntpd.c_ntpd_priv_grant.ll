; ModuleID = '/home/carl/AnghaBench/freebsd/sys/security/mac_ntpd/extr_mac_ntpd.c_ntpd_priv_grant.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/security/mac_ntpd/extr_mac_ntpd.c_ntpd_priv_grant.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ucred = type { i64 }

@ntpd_enabled = common dso_local global i64 0, align 8
@ntpd_uid = common dso_local global i64 0, align 8
@EPERM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ucred*, i32)* @ntpd_priv_grant to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ntpd_priv_grant(%struct.ucred* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ucred*, align 8
  %5 = alloca i32, align 4
  store %struct.ucred* %0, %struct.ucred** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i64, i64* @ntpd_enabled, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %19

8:                                                ; preds = %2
  %9 = load %struct.ucred*, %struct.ucred** %4, align 8
  %10 = getelementptr inbounds %struct.ucred, %struct.ucred* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @ntpd_uid, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %19

14:                                               ; preds = %8
  %15 = load i32, i32* %5, align 4
  switch i32 %15, label %17 [
    i32 132, label %16
    i32 131, label %16
    i32 128, label %16
    i32 130, label %16
    i32 129, label %16
  ]

16:                                               ; preds = %14, %14, %14, %14, %14
  store i32 0, i32* %3, align 4
  br label %21

17:                                               ; preds = %14
  br label %18

18:                                               ; preds = %17
  br label %19

19:                                               ; preds = %18, %8, %2
  %20 = load i32, i32* @EPERM, align 4
  store i32 %20, i32* %3, align 4
  br label %21

21:                                               ; preds = %19, %16
  %22 = load i32, i32* %3, align 4
  ret i32 %22
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
