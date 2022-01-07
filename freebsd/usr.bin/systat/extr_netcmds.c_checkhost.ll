; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/systat/extr_netcmds.c_checkhost.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/systat/extr_netcmds.c_checkhost.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hitem = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 }
%struct.in_conninfo = type { %struct.TYPE_6__, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_4__ = type { i64 }

@hosts = common dso_local global %struct.hitem* null, align 8
@nhosts = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @checkhost(%struct.in_conninfo* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.in_conninfo*, align 8
  %4 = alloca %struct.hitem*, align 8
  store %struct.in_conninfo* %0, %struct.in_conninfo** %3, align 8
  %5 = load %struct.hitem*, %struct.hitem** @hosts, align 8
  %6 = icmp ne %struct.hitem* %5, null
  br i1 %6, label %7, label %45

7:                                                ; preds = %1
  %8 = load %struct.hitem*, %struct.hitem** @hosts, align 8
  store %struct.hitem* %8, %struct.hitem** %4, align 8
  br label %9

9:                                                ; preds = %41, %7
  %10 = load %struct.hitem*, %struct.hitem** %4, align 8
  %11 = load %struct.hitem*, %struct.hitem** @hosts, align 8
  %12 = load i32, i32* @nhosts, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds %struct.hitem, %struct.hitem* %11, i64 %13
  %15 = icmp ult %struct.hitem* %10, %14
  br i1 %15, label %16, label %44

16:                                               ; preds = %9
  %17 = load %struct.hitem*, %struct.hitem** %4, align 8
  %18 = getelementptr inbounds %struct.hitem, %struct.hitem* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load %struct.in_conninfo*, %struct.in_conninfo** %3, align 8
  %22 = getelementptr inbounds %struct.in_conninfo, %struct.in_conninfo* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp eq i64 %20, %24
  br i1 %25, label %36, label %26

26:                                               ; preds = %16
  %27 = load %struct.hitem*, %struct.hitem** %4, align 8
  %28 = getelementptr inbounds %struct.hitem, %struct.hitem* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.in_conninfo*, %struct.in_conninfo** %3, align 8
  %32 = getelementptr inbounds %struct.in_conninfo, %struct.in_conninfo* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp eq i64 %30, %34
  br i1 %35, label %36, label %40

36:                                               ; preds = %26, %16
  %37 = load %struct.hitem*, %struct.hitem** %4, align 8
  %38 = getelementptr inbounds %struct.hitem, %struct.hitem* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  store i32 %39, i32* %2, align 4
  br label %46

40:                                               ; preds = %26
  br label %41

41:                                               ; preds = %40
  %42 = load %struct.hitem*, %struct.hitem** %4, align 8
  %43 = getelementptr inbounds %struct.hitem, %struct.hitem* %42, i32 1
  store %struct.hitem* %43, %struct.hitem** %4, align 8
  br label %9

44:                                               ; preds = %9
  br label %45

45:                                               ; preds = %44, %1
  store i32 1, i32* %2, align 4
  br label %46

46:                                               ; preds = %45, %36
  %47 = load i32, i32* %2, align 4
  ret i32 %47
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
