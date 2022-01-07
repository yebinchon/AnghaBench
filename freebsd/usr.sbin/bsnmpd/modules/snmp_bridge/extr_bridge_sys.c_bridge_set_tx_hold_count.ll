; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/modules/snmp_bridge/extr_bridge_sys.c_bridge_set_tx_hold_count.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/modules/snmp_bridge/extr_bridge_sys.c_bridge_set_tx_hold_count.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bridge_if = type { i64, i32 }
%struct.ifdrv = type { i32, i32, %struct.ifbrparam*, i32 }
%struct.ifbrparam = type { i64 }

@SNMP_BRIDGE_MIN_TXHC = common dso_local global i64 0, align 8
@SNMP_BRIDGE_MAX_TXHC = common dso_local global i64 0, align 8
@IFNAMSIZ = common dso_local global i32 0, align 4
@BRDGSTXHC = common dso_local global i32 0, align 4
@sock = common dso_local global i32 0, align 4
@SIOCSDRVSPEC = common dso_local global i32 0, align 4
@LOG_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"set bridge param: ioctl(BRDGSTXHC) failed: %s\00", align 1
@errno = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bridge_set_tx_hold_count(%struct.bridge_if* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bridge_if*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.ifdrv, align 8
  %7 = alloca %struct.ifbrparam, align 8
  store %struct.bridge_if* %0, %struct.bridge_if** %4, align 8
  store i64 %1, i64* %5, align 8
  %8 = load i64, i64* %5, align 8
  %9 = load i64, i64* @SNMP_BRIDGE_MIN_TXHC, align 8
  %10 = icmp slt i64 %8, %9
  br i1 %10, label %15, label %11

11:                                               ; preds = %2
  %12 = load i64, i64* %5, align 8
  %13 = load i64, i64* @SNMP_BRIDGE_MAX_TXHC, align 8
  %14 = icmp sgt i64 %12, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %11, %2
  store i32 -1, i32* %3, align 4
  br label %44

16:                                               ; preds = %11
  %17 = getelementptr inbounds %struct.ifdrv, %struct.ifdrv* %6, i32 0, i32 3
  %18 = load i32, i32* %17, align 8
  %19 = load %struct.bridge_if*, %struct.bridge_if** %4, align 8
  %20 = getelementptr inbounds %struct.bridge_if, %struct.bridge_if* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @IFNAMSIZ, align 4
  %23 = call i32 @strlcpy(i32 %18, i32 %21, i32 %22)
  %24 = getelementptr inbounds %struct.ifdrv, %struct.ifdrv* %6, i32 0, i32 0
  store i32 8, i32* %24, align 8
  %25 = getelementptr inbounds %struct.ifdrv, %struct.ifdrv* %6, i32 0, i32 2
  store %struct.ifbrparam* %7, %struct.ifbrparam** %25, align 8
  %26 = load i64, i64* %5, align 8
  %27 = getelementptr inbounds %struct.ifbrparam, %struct.ifbrparam* %7, i32 0, i32 0
  store i64 %26, i64* %27, align 8
  %28 = load i32, i32* @BRDGSTXHC, align 4
  %29 = getelementptr inbounds %struct.ifdrv, %struct.ifdrv* %6, i32 0, i32 1
  store i32 %28, i32* %29, align 4
  %30 = load i32, i32* @sock, align 4
  %31 = load i32, i32* @SIOCSDRVSPEC, align 4
  %32 = call i64 @ioctl(i32 %30, i32 %31, %struct.ifdrv* %6)
  %33 = icmp slt i64 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %16
  %35 = load i32, i32* @LOG_ERR, align 4
  %36 = load i32, i32* @errno, align 4
  %37 = call i32 @strerror(i32 %36)
  %38 = call i32 @syslog(i32 %35, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %37)
  store i32 -1, i32* %3, align 4
  br label %44

39:                                               ; preds = %16
  %40 = getelementptr inbounds %struct.ifbrparam, %struct.ifbrparam* %7, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.bridge_if*, %struct.bridge_if** %4, align 8
  %43 = getelementptr inbounds %struct.bridge_if, %struct.bridge_if* %42, i32 0, i32 0
  store i64 %41, i64* %43, align 8
  store i32 0, i32* %3, align 4
  br label %44

44:                                               ; preds = %39, %34, %15
  %45 = load i32, i32* %3, align 4
  ret i32 %45
}

declare dso_local i32 @strlcpy(i32, i32, i32) #1

declare dso_local i64 @ioctl(i32, i32, %struct.ifdrv*) #1

declare dso_local i32 @syslog(i32, i8*, i32) #1

declare dso_local i32 @strerror(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
