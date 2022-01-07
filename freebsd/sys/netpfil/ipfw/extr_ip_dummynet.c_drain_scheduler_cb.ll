; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_ip_dummynet.c_drain_scheduler_cb.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_ip_dummynet.c_drain_scheduler_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dn_sch_inst = type { i32, i64, %struct.TYPE_6__, %struct.TYPE_10__*, %struct.TYPE_8__ }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_10__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32* }

@DN_ACTIVE = common dso_local global i32 0, align 4
@DN_MULTIQUEUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*)* @drain_scheduler_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @drain_scheduler_cb(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.dn_sch_inst*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = bitcast i8* %7 to %struct.dn_sch_inst*
  store %struct.dn_sch_inst* %8, %struct.dn_sch_inst** %6, align 8
  %9 = load %struct.dn_sch_inst*, %struct.dn_sch_inst** %6, align 8
  %10 = getelementptr inbounds %struct.dn_sch_inst, %struct.dn_sch_inst* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* @DN_ACTIVE, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %22, label %15

15:                                               ; preds = %2
  %16 = load %struct.dn_sch_inst*, %struct.dn_sch_inst** %6, align 8
  %17 = getelementptr inbounds %struct.dn_sch_inst, %struct.dn_sch_inst* %16, i32 0, i32 4
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = icmp ne i32* %20, null
  br i1 %21, label %22, label %23

22:                                               ; preds = %15, %2
  store i32 0, i32* %3, align 4
  br label %54

23:                                               ; preds = %15
  %24 = load %struct.dn_sch_inst*, %struct.dn_sch_inst** %6, align 8
  %25 = getelementptr inbounds %struct.dn_sch_inst, %struct.dn_sch_inst* %24, i32 0, i32 3
  %26 = load %struct.TYPE_10__*, %struct.TYPE_10__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %26, i32 0, i32 0
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @DN_MULTIQUEUE, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %43

34:                                               ; preds = %23
  %35 = load %struct.dn_sch_inst*, %struct.dn_sch_inst** %6, align 8
  %36 = getelementptr inbounds %struct.dn_sch_inst, %struct.dn_sch_inst* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = icmp eq i64 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %34
  %40 = load %struct.dn_sch_inst*, %struct.dn_sch_inst** %6, align 8
  %41 = call i32 @si_destroy(%struct.dn_sch_inst* %40, i32* null)
  store i32 %41, i32* %3, align 4
  br label %54

42:                                               ; preds = %34
  store i32 0, i32* %3, align 4
  br label %54

43:                                               ; preds = %23
  %44 = load %struct.dn_sch_inst*, %struct.dn_sch_inst** %6, align 8
  %45 = getelementptr inbounds %struct.dn_sch_inst, %struct.dn_sch_inst* %44, i64 1
  %46 = getelementptr inbounds %struct.dn_sch_inst, %struct.dn_sch_inst* %45, i32 0, i32 2
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = icmp eq i64 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %43
  %51 = load %struct.dn_sch_inst*, %struct.dn_sch_inst** %6, align 8
  %52 = call i32 @si_destroy(%struct.dn_sch_inst* %51, i32* null)
  store i32 %52, i32* %3, align 4
  br label %54

53:                                               ; preds = %43
  store i32 0, i32* %3, align 4
  br label %54

54:                                               ; preds = %53, %50, %42, %39, %22
  %55 = load i32, i32* %3, align 4
  ret i32 %55
}

declare dso_local i32 @si_destroy(%struct.dn_sch_inst*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
