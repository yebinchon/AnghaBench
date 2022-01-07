; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/modules/snmp_bridge/extr_bridge_sys.c_bridge_getinfo_bif_addrs.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/modules/snmp_bridge/extr_bridge_sys.c_bridge_getinfo_bif_addrs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bridge_if = type { i32 }
%struct.ifbareq = type { i32 }
%struct.tp_entry = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bridge_getinfo_bif_addrs(%struct.bridge_if* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bridge_if*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.ifbareq*, align 8
  %7 = alloca %struct.ifbareq*, align 8
  %8 = alloca %struct.tp_entry*, align 8
  store %struct.bridge_if* %0, %struct.bridge_if** %3, align 8
  %9 = load %struct.bridge_if*, %struct.bridge_if** %3, align 8
  %10 = call i32 @bridge_addrs_getinfo_ifalist(%struct.bridge_if* %9, %struct.ifbareq** %6)
  store i32 %10, i32* %5, align 4
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %44

13:                                               ; preds = %1
  store i32 0, i32* %4, align 4
  br label %14

14:                                               ; preds = %37, %13
  %15 = load i32, i32* %4, align 4
  %16 = sext i32 %15 to i64
  %17 = load i32, i32* %5, align 4
  %18 = sext i32 %17 to i64
  %19 = udiv i64 %18, 4
  %20 = icmp ult i64 %16, %19
  br i1 %20, label %21, label %40

21:                                               ; preds = %14
  %22 = load %struct.ifbareq*, %struct.ifbareq** %6, align 8
  %23 = load i32, i32* %4, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.ifbareq, %struct.ifbareq* %22, i64 %24
  store %struct.ifbareq* %25, %struct.ifbareq** %7, align 8
  %26 = load %struct.ifbareq*, %struct.ifbareq** %7, align 8
  %27 = getelementptr inbounds %struct.ifbareq, %struct.ifbareq* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.bridge_if*, %struct.bridge_if** %3, align 8
  %30 = call %struct.tp_entry* @bridge_new_addrs(i32 %28, %struct.bridge_if* %29)
  store %struct.tp_entry* %30, %struct.tp_entry** %8, align 8
  %31 = icmp ne %struct.tp_entry* %30, null
  br i1 %31, label %32, label %36

32:                                               ; preds = %21
  %33 = load %struct.ifbareq*, %struct.ifbareq** %7, align 8
  %34 = load %struct.tp_entry*, %struct.tp_entry** %8, align 8
  %35 = call i32 @bridge_addrs_info_ifaddrlist(%struct.ifbareq* %33, %struct.tp_entry* %34)
  br label %36

36:                                               ; preds = %32, %21
  br label %37

37:                                               ; preds = %36
  %38 = load i32, i32* %4, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %4, align 4
  br label %14

40:                                               ; preds = %14
  %41 = load %struct.ifbareq*, %struct.ifbareq** %6, align 8
  %42 = call i32 @free(%struct.ifbareq* %41)
  %43 = load i32, i32* %4, align 4
  store i32 %43, i32* %2, align 4
  br label %44

44:                                               ; preds = %40, %12
  %45 = load i32, i32* %2, align 4
  ret i32 %45
}

declare dso_local i32 @bridge_addrs_getinfo_ifalist(%struct.bridge_if*, %struct.ifbareq**) #1

declare dso_local %struct.tp_entry* @bridge_new_addrs(i32, %struct.bridge_if*) #1

declare dso_local i32 @bridge_addrs_info_ifaddrlist(%struct.ifbareq*, %struct.tp_entry*) #1

declare dso_local i32 @free(%struct.ifbareq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
