; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/modules/snmp_bridge/extr_bridge_addrs.c_bridge_new_addrs.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/modules/snmp_bridge/extr_bridge_addrs.c_bridge_new_addrs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tp_entry = type { i32, i32 }
%struct.bridge_if = type { i32, i32 }

@LOG_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"bridge new address: failed: %s\00", align 1
@errno = common dso_local global i32 0, align 4
@ETHER_ADDR_LEN = common dso_local global i32 0, align 4
@tp_entries = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.tp_entry* @bridge_new_addrs(i32* %0, %struct.bridge_if* %1) #0 {
  %3 = alloca %struct.tp_entry*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.bridge_if*, align 8
  %6 = alloca %struct.tp_entry*, align 8
  store i32* %0, i32** %4, align 8
  store %struct.bridge_if* %1, %struct.bridge_if** %5, align 8
  %7 = call i64 @malloc(i32 8)
  %8 = inttoptr i64 %7 to %struct.tp_entry*
  store %struct.tp_entry* %8, %struct.tp_entry** %6, align 8
  %9 = icmp eq %struct.tp_entry* %8, null
  br i1 %9, label %10, label %15

10:                                               ; preds = %2
  %11 = load i32, i32* @LOG_ERR, align 4
  %12 = load i32, i32* @errno, align 4
  %13 = call i32 @strerror(i32 %12)
  %14 = call i32 @syslog(i32 %11, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %13)
  store %struct.tp_entry* null, %struct.tp_entry** %3, align 8
  br label %34

15:                                               ; preds = %2
  %16 = load %struct.tp_entry*, %struct.tp_entry** %6, align 8
  %17 = call i32 @bzero(%struct.tp_entry* %16, i32 8)
  %18 = load %struct.bridge_if*, %struct.bridge_if** %5, align 8
  %19 = getelementptr inbounds %struct.bridge_if, %struct.bridge_if* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.tp_entry*, %struct.tp_entry** %6, align 8
  %22 = getelementptr inbounds %struct.tp_entry, %struct.tp_entry* %21, i32 0, i32 1
  store i32 %20, i32* %22, align 4
  %23 = load i32*, i32** %4, align 8
  %24 = load %struct.tp_entry*, %struct.tp_entry** %6, align 8
  %25 = getelementptr inbounds %struct.tp_entry, %struct.tp_entry* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @ETHER_ADDR_LEN, align 4
  %28 = call i32 @bcopy(i32* %23, i32 %26, i32 %27)
  %29 = load %struct.tp_entry*, %struct.tp_entry** %6, align 8
  %30 = load %struct.bridge_if*, %struct.bridge_if** %5, align 8
  %31 = getelementptr inbounds %struct.bridge_if, %struct.bridge_if* %30, i32 0, i32 0
  %32 = call i32 @bridge_addrs_bif_insert(i32* @tp_entries, %struct.tp_entry* %29, i32* %31)
  %33 = load %struct.tp_entry*, %struct.tp_entry** %6, align 8
  store %struct.tp_entry* %33, %struct.tp_entry** %3, align 8
  br label %34

34:                                               ; preds = %15, %10
  %35 = load %struct.tp_entry*, %struct.tp_entry** %3, align 8
  ret %struct.tp_entry* %35
}

declare dso_local i64 @malloc(i32) #1

declare dso_local i32 @syslog(i32, i8*, i32) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i32 @bzero(%struct.tp_entry*, i32) #1

declare dso_local i32 @bcopy(i32*, i32, i32) #1

declare dso_local i32 @bridge_addrs_bif_insert(i32*, %struct.tp_entry*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
