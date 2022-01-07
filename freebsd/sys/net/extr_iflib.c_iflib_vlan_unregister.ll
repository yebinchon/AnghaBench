; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net/extr_iflib.c_iflib_vlan_unregister.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net/extr_iflib.c_iflib_vlan_unregister.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@IFCAP_VLAN_HWFILTER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32, i32)* @iflib_vlan_unregister to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iflib_vlan_unregister(i8* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* %5, align 4
  %9 = call i64 @if_getsoftc(i32 %8)
  store i64 %9, i64* %7, align 8
  %10 = load i64, i64* %7, align 8
  %11 = inttoptr i64 %10 to i8*
  %12 = load i8*, i8** %4, align 8
  %13 = icmp ne i8* %11, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %3
  br label %39

15:                                               ; preds = %3
  %16 = load i32, i32* %6, align 4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %15
  %19 = load i32, i32* %6, align 4
  %20 = icmp sgt i32 %19, 4095
  br i1 %20, label %21, label %22

21:                                               ; preds = %18, %15
  br label %39

22:                                               ; preds = %18
  %23 = load i64, i64* %7, align 8
  %24 = call i32 @CTX_LOCK(i64 %23)
  %25 = load i64, i64* %7, align 8
  %26 = load i32, i32* %6, align 4
  %27 = call i32 @IFDI_VLAN_UNREGISTER(i64 %25, i32 %26)
  %28 = load i32, i32* %5, align 4
  %29 = call i32 @if_getcapenable(i32 %28)
  %30 = load i32, i32* @IFCAP_VLAN_HWFILTER, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %22
  %34 = load i64, i64* %7, align 8
  %35 = call i32 @iflib_if_init_locked(i64 %34)
  br label %36

36:                                               ; preds = %33, %22
  %37 = load i64, i64* %7, align 8
  %38 = call i32 @CTX_UNLOCK(i64 %37)
  br label %39

39:                                               ; preds = %36, %21, %14
  ret void
}

declare dso_local i64 @if_getsoftc(i32) #1

declare dso_local i32 @CTX_LOCK(i64) #1

declare dso_local i32 @IFDI_VLAN_UNREGISTER(i64, i32) #1

declare dso_local i32 @if_getcapenable(i32) #1

declare dso_local i32 @iflib_if_init_locked(i64) #1

declare dso_local i32 @CTX_UNLOCK(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
