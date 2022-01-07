; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/route6d/extr_route6d.c_tobeadv.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/route6d/extr_route6d.c_tobeadv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.riprt = type { i32, i64 }
%struct.ifc = type { i64 }

@RTF_STATIC = common dso_local global i32 0, align 4
@RTF_REJECT = common dso_local global i32 0, align 4
@RTF_BLACKHOLE = common dso_local global i32 0, align 4
@Sflag = common dso_local global i64 0, align 8
@sflag = common dso_local global i64 0, align 8
@hflag = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.riprt*, %struct.ifc*)* @tobeadv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tobeadv(%struct.riprt* %0, %struct.ifc* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.riprt*, align 8
  %5 = alloca %struct.ifc*, align 8
  store %struct.riprt* %0, %struct.riprt** %4, align 8
  store %struct.ifc* %1, %struct.ifc** %5, align 8
  %6 = load %struct.riprt*, %struct.riprt** %4, align 8
  %7 = getelementptr inbounds %struct.riprt, %struct.riprt* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = load i32, i32* @RTF_STATIC, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %39

12:                                               ; preds = %2
  %13 = load %struct.riprt*, %struct.riprt** %4, align 8
  %14 = getelementptr inbounds %struct.riprt, %struct.riprt* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @RTF_REJECT, align 4
  %17 = load i32, i32* @RTF_BLACKHOLE, align 4
  %18 = or i32 %16, %17
  %19 = and i32 %15, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %12
  store i32 0, i32* %3, align 4
  br label %52

22:                                               ; preds = %12
  %23 = load i64, i64* @Sflag, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %22
  store i32 1, i32* %3, align 4
  br label %52

26:                                               ; preds = %22
  %27 = load i64, i64* @sflag, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %38

29:                                               ; preds = %26
  %30 = load %struct.riprt*, %struct.riprt** %4, align 8
  %31 = getelementptr inbounds %struct.riprt, %struct.riprt* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.ifc*, %struct.ifc** %5, align 8
  %34 = getelementptr inbounds %struct.ifc, %struct.ifc* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %32, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %29
  store i32 1, i32* %3, align 4
  br label %52

38:                                               ; preds = %29, %26
  store i32 0, i32* %3, align 4
  br label %52

39:                                               ; preds = %2
  %40 = load i64, i64* @hflag, align 8
  %41 = icmp eq i64 %40, 0
  br i1 %41, label %42, label %51

42:                                               ; preds = %39
  %43 = load %struct.riprt*, %struct.riprt** %4, align 8
  %44 = getelementptr inbounds %struct.riprt, %struct.riprt* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = load %struct.ifc*, %struct.ifc** %5, align 8
  %47 = getelementptr inbounds %struct.ifc, %struct.ifc* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = icmp eq i64 %45, %48
  br i1 %49, label %50, label %51

50:                                               ; preds = %42
  store i32 0, i32* %3, align 4
  br label %52

51:                                               ; preds = %42, %39
  store i32 1, i32* %3, align 4
  br label %52

52:                                               ; preds = %51, %50, %38, %37, %25, %21
  %53 = load i32, i32* %3, align 4
  ret i32 %53
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
