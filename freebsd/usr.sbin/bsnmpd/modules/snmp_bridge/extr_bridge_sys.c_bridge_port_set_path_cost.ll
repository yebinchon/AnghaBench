; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/modules/snmp_bridge/extr_bridge_sys.c_bridge_port_set_path_cost.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/modules/snmp_bridge/extr_bridge_sys.c_bridge_port_set_path_cost.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bridge_port = type { i8*, i64 }
%struct.ifdrv = type { i32, i32, %struct.ifbreq*, i32 }
%struct.ifbreq = type { i64, i32 }

@SNMP_PORT_MIN_PATHCOST = common dso_local global i64 0, align 8
@SNMP_PORT_PATHCOST_OBSOLETE = common dso_local global i64 0, align 8
@BRDGSIFCOST = common dso_local global i32 0, align 4
@sock = common dso_local global i32 0, align 4
@SIOCSDRVSPEC = common dso_local global i32 0, align 4
@LOG_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"set member %s param: ioctl(BRDGSIFCOST) failed: %s\00", align 1
@errno = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bridge_port_set_path_cost(i8* %0, %struct.bridge_port* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.bridge_port*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.ifdrv, align 8
  %9 = alloca %struct.ifbreq, align 8
  store i8* %0, i8** %5, align 8
  store %struct.bridge_port* %1, %struct.bridge_port** %6, align 8
  store i64 %2, i64* %7, align 8
  %10 = load i64, i64* %7, align 8
  %11 = load i64, i64* @SNMP_PORT_MIN_PATHCOST, align 8
  %12 = icmp slt i64 %10, %11
  br i1 %12, label %17, label %13

13:                                               ; preds = %3
  %14 = load i64, i64* %7, align 8
  %15 = load i64, i64* @SNMP_PORT_PATHCOST_OBSOLETE, align 8
  %16 = icmp sgt i64 %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %13, %3
  store i32 -2, i32* %4, align 4
  br label %51

18:                                               ; preds = %13
  %19 = getelementptr inbounds %struct.ifdrv, %struct.ifdrv* %8, i32 0, i32 3
  %20 = load i32, i32* %19, align 8
  %21 = load i8*, i8** %5, align 8
  %22 = call i32 @strlcpy(i32 %20, i8* %21, i32 4)
  %23 = getelementptr inbounds %struct.ifdrv, %struct.ifdrv* %8, i32 0, i32 0
  store i32 16, i32* %23, align 8
  %24 = getelementptr inbounds %struct.ifdrv, %struct.ifdrv* %8, i32 0, i32 2
  store %struct.ifbreq* %9, %struct.ifbreq** %24, align 8
  %25 = getelementptr inbounds %struct.ifbreq, %struct.ifbreq* %9, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.bridge_port*, %struct.bridge_port** %6, align 8
  %28 = getelementptr inbounds %struct.bridge_port, %struct.bridge_port* %27, i32 0, i32 0
  %29 = load i8*, i8** %28, align 8
  %30 = call i32 @strlcpy(i32 %26, i8* %29, i32 4)
  %31 = load i64, i64* %7, align 8
  %32 = getelementptr inbounds %struct.ifbreq, %struct.ifbreq* %9, i32 0, i32 0
  store i64 %31, i64* %32, align 8
  %33 = load i32, i32* @BRDGSIFCOST, align 4
  %34 = getelementptr inbounds %struct.ifdrv, %struct.ifdrv* %8, i32 0, i32 1
  store i32 %33, i32* %34, align 4
  %35 = load i32, i32* @sock, align 4
  %36 = load i32, i32* @SIOCSDRVSPEC, align 4
  %37 = call i64 @ioctl(i32 %35, i32 %36, %struct.ifdrv* %8)
  %38 = icmp slt i64 %37, 0
  br i1 %38, label %39, label %47

39:                                               ; preds = %18
  %40 = load i32, i32* @LOG_ERR, align 4
  %41 = load %struct.bridge_port*, %struct.bridge_port** %6, align 8
  %42 = getelementptr inbounds %struct.bridge_port, %struct.bridge_port* %41, i32 0, i32 0
  %43 = load i8*, i8** %42, align 8
  %44 = load i32, i32* @errno, align 4
  %45 = call i32 @strerror(i32 %44)
  %46 = call i32 @syslog(i32 %40, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i8* %43, i32 %45)
  store i32 -1, i32* %4, align 4
  br label %51

47:                                               ; preds = %18
  %48 = load i64, i64* %7, align 8
  %49 = load %struct.bridge_port*, %struct.bridge_port** %6, align 8
  %50 = getelementptr inbounds %struct.bridge_port, %struct.bridge_port* %49, i32 0, i32 1
  store i64 %48, i64* %50, align 8
  store i32 0, i32* %4, align 4
  br label %51

51:                                               ; preds = %47, %39, %17
  %52 = load i32, i32* %4, align 4
  ret i32 %52
}

declare dso_local i32 @strlcpy(i32, i8*, i32) #1

declare dso_local i64 @ioctl(i32, i32, %struct.ifdrv*) #1

declare dso_local i32 @syslog(i32, i8*, i8*, i32) #1

declare dso_local i32 @strerror(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
