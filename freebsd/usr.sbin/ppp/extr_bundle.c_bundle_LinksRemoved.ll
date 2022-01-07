; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_bundle.c_bundle_LinksRemoved.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_bundle.c_bundle_LinksRemoved.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bundle = type { %struct.TYPE_5__, %struct.TYPE_6__, %struct.TYPE_4__, %struct.datalink* }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.datalink = type { %struct.datalink* }

@PHYS_DEDICATED = common dso_local global i32 0, align 4
@PHYS_DDIAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bundle_LinksRemoved(%struct.bundle* %0) #0 {
  %2 = alloca %struct.bundle*, align 8
  %3 = alloca %struct.datalink*, align 8
  store %struct.bundle* %0, %struct.bundle** %2, align 8
  %4 = load %struct.bundle*, %struct.bundle** %2, align 8
  %5 = getelementptr inbounds %struct.bundle, %struct.bundle* %4, i32 0, i32 1
  %6 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 1
  store i32 0, i32* %6, align 4
  %7 = load %struct.bundle*, %struct.bundle** %2, align 8
  %8 = getelementptr inbounds %struct.bundle, %struct.bundle* %7, i32 0, i32 1
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 0
  store i32 0, i32* %9, align 8
  %10 = load %struct.bundle*, %struct.bundle** %2, align 8
  %11 = getelementptr inbounds %struct.bundle, %struct.bundle* %10, i32 0, i32 3
  %12 = load %struct.datalink*, %struct.datalink** %11, align 8
  store %struct.datalink* %12, %struct.datalink** %3, align 8
  br label %13

13:                                               ; preds = %20, %1
  %14 = load %struct.datalink*, %struct.datalink** %3, align 8
  %15 = icmp ne %struct.datalink* %14, null
  br i1 %15, label %16, label %24

16:                                               ; preds = %13
  %17 = load %struct.bundle*, %struct.bundle** %2, align 8
  %18 = load %struct.datalink*, %struct.datalink** %3, align 8
  %19 = call i32 @bundle_LinkAdded(%struct.bundle* %17, %struct.datalink* %18)
  br label %20

20:                                               ; preds = %16
  %21 = load %struct.datalink*, %struct.datalink** %3, align 8
  %22 = getelementptr inbounds %struct.datalink, %struct.datalink* %21, i32 0, i32 0
  %23 = load %struct.datalink*, %struct.datalink** %22, align 8
  store %struct.datalink* %23, %struct.datalink** %3, align 8
  br label %13

24:                                               ; preds = %13
  %25 = load %struct.bundle*, %struct.bundle** %2, align 8
  %26 = call i32 @bundle_CalculateBandwidth(%struct.bundle* %25)
  %27 = load %struct.bundle*, %struct.bundle** %2, align 8
  %28 = getelementptr inbounds %struct.bundle, %struct.bundle* %27, i32 0, i32 2
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = call i32 @mp_CheckAutoloadTimer(i32* %29)
  %31 = load %struct.bundle*, %struct.bundle** %2, align 8
  %32 = getelementptr inbounds %struct.bundle, %struct.bundle* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @PHYS_DEDICATED, align 4
  %36 = load i32, i32* @PHYS_DDIAL, align 4
  %37 = or i32 %35, %36
  %38 = and i32 %34, %37
  %39 = load %struct.bundle*, %struct.bundle** %2, align 8
  %40 = getelementptr inbounds %struct.bundle, %struct.bundle* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = icmp eq i32 %38, %42
  br i1 %43, label %44, label %56

44:                                               ; preds = %24
  %45 = load %struct.bundle*, %struct.bundle** %2, align 8
  %46 = getelementptr inbounds %struct.bundle, %struct.bundle* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %44
  %51 = load %struct.bundle*, %struct.bundle** %2, align 8
  %52 = call i32 @bundle_StopSessionTimer(%struct.bundle* %51)
  br label %53

53:                                               ; preds = %50, %44
  %54 = load %struct.bundle*, %struct.bundle** %2, align 8
  %55 = call i32 @bundle_StopIdleTimer(%struct.bundle* %54)
  br label %56

56:                                               ; preds = %53, %24
  ret void
}

declare dso_local i32 @bundle_LinkAdded(%struct.bundle*, %struct.datalink*) #1

declare dso_local i32 @bundle_CalculateBandwidth(%struct.bundle*) #1

declare dso_local i32 @mp_CheckAutoloadTimer(i32*) #1

declare dso_local i32 @bundle_StopSessionTimer(%struct.bundle*) #1

declare dso_local i32 @bundle_StopIdleTimer(%struct.bundle*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
