; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/firewire/extr_firewire.c_fw_find_self_id.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/firewire/extr_firewire.c_fw_find_self_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.fw_self_id = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i64 }
%struct.firewire_comm = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64, %union.fw_self_id* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%union.fw_self_id* (%struct.firewire_comm*, i32)* @fw_find_self_id to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %union.fw_self_id* @fw_find_self_id(%struct.firewire_comm* %0, i32 %1) #0 {
  %3 = alloca %union.fw_self_id*, align 8
  %4 = alloca %struct.firewire_comm*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %union.fw_self_id*, align 8
  store %struct.firewire_comm* %0, %struct.firewire_comm** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64 0, i64* %6, align 8
  br label %8

8:                                                ; preds = %40, %2
  %9 = load i64, i64* %6, align 8
  %10 = load %struct.firewire_comm*, %struct.firewire_comm** %4, align 8
  %11 = getelementptr inbounds %struct.firewire_comm, %struct.firewire_comm* %10, i32 0, i32 0
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp ult i64 %9, %14
  br i1 %15, label %16, label %43

16:                                               ; preds = %8
  %17 = load %struct.firewire_comm*, %struct.firewire_comm** %4, align 8
  %18 = getelementptr inbounds %struct.firewire_comm, %struct.firewire_comm* %17, i32 0, i32 0
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 1
  %21 = load %union.fw_self_id*, %union.fw_self_id** %20, align 8
  %22 = load i64, i64* %6, align 8
  %23 = getelementptr inbounds %union.fw_self_id, %union.fw_self_id* %21, i64 %22
  store %union.fw_self_id* %23, %union.fw_self_id** %7, align 8
  %24 = load %union.fw_self_id*, %union.fw_self_id** %7, align 8
  %25 = bitcast %union.fw_self_id* %24 to %struct.TYPE_4__*
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %16
  br label %40

30:                                               ; preds = %16
  %31 = load %union.fw_self_id*, %union.fw_self_id** %7, align 8
  %32 = bitcast %union.fw_self_id* %31 to %struct.TYPE_4__*
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* %5, align 4
  %36 = icmp eq i32 %34, %35
  br i1 %36, label %37, label %39

37:                                               ; preds = %30
  %38 = load %union.fw_self_id*, %union.fw_self_id** %7, align 8
  store %union.fw_self_id* %38, %union.fw_self_id** %3, align 8
  br label %44

39:                                               ; preds = %30
  br label %40

40:                                               ; preds = %39, %29
  %41 = load i64, i64* %6, align 8
  %42 = add i64 %41, 1
  store i64 %42, i64* %6, align 8
  br label %8

43:                                               ; preds = %8
  store %union.fw_self_id* null, %union.fw_self_id** %3, align 8
  br label %44

44:                                               ; preds = %43, %37
  %45 = load %union.fw_self_id*, %union.fw_self_id** %3, align 8
  ret %union.fw_self_id* %45
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
