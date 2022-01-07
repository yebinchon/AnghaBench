; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_physical.c_physical_LockedDevice.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_physical.c_physical_LockedDevice.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.physical = type { i64, i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i8*, i8* }

@PHYS_DIRECT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @physical_LockedDevice(%struct.physical* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.physical*, align 8
  store %struct.physical* %0, %struct.physical** %3, align 8
  %4 = load %struct.physical*, %struct.physical** %3, align 8
  %5 = getelementptr inbounds %struct.physical, %struct.physical* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = icmp sge i64 %6, 0
  br i1 %7, label %8, label %27

8:                                                ; preds = %1
  %9 = load %struct.physical*, %struct.physical** %3, align 8
  %10 = getelementptr inbounds %struct.physical, %struct.physical* %9, i32 0, i32 2
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i8*, i8** %11, align 8
  %13 = load i8, i8* %12, align 1
  %14 = sext i8 %13 to i32
  %15 = icmp eq i32 %14, 47
  br i1 %15, label %16, label %27

16:                                               ; preds = %8
  %17 = load %struct.physical*, %struct.physical** %3, align 8
  %18 = getelementptr inbounds %struct.physical, %struct.physical* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @PHYS_DIRECT, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %22, label %27

22:                                               ; preds = %16
  %23 = load %struct.physical*, %struct.physical** %3, align 8
  %24 = getelementptr inbounds %struct.physical, %struct.physical* %23, i32 0, i32 2
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 1
  %26 = load i8*, i8** %25, align 8
  store i8* %26, i8** %2, align 8
  br label %28

27:                                               ; preds = %16, %8, %1
  store i8* null, i8** %2, align 8
  br label %28

28:                                               ; preds = %27, %22
  %29 = load i8*, i8** %2, align 8
  ret i8* %29
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
