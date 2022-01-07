; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/modules/snmp_bridge/extr_bridge_sys.c_bridge_port_addm.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/modules/snmp_bridge/extr_bridge_sys.c_bridge_port_addm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bridge_port = type { i8*, i64 }
%struct.ifdrv = type { i32, i64, i32, %struct.ifdrv*, i32 }
%struct.ifbreq = type { i32, i64, i32, %struct.ifbreq*, i32 }

@begemotBridgeBaseSpanEnabled_enabled = common dso_local global i64 0, align 8
@BRDGADDS = common dso_local global i64 0, align 8
@BRDGADD = common dso_local global i64 0, align 8
@sock = common dso_local global i32 0, align 4
@SIOCSDRVSPEC = common dso_local global i32 0, align 4
@LOG_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"%s - add member : ioctl(%s) failed: %s\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"BRDGADDS\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"BRDGADD\00", align 1
@errno = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bridge_port_addm(%struct.bridge_port* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bridge_port*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.ifdrv, align 8
  %7 = alloca %struct.ifbreq, align 8
  store %struct.bridge_port* %0, %struct.bridge_port** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = call i32 @bzero(%struct.ifdrv* %6, i32 40)
  %9 = bitcast %struct.ifbreq* %7 to %struct.ifdrv*
  %10 = call i32 @bzero(%struct.ifdrv* %9, i32 40)
  %11 = getelementptr inbounds %struct.ifdrv, %struct.ifdrv* %6, i32 0, i32 4
  %12 = load i32, i32* %11, align 8
  %13 = load i8*, i8** %5, align 8
  %14 = call i32 @strlcpy(i32 %12, i8* %13, i32 4)
  %15 = getelementptr inbounds %struct.ifdrv, %struct.ifdrv* %6, i32 0, i32 0
  store i32 40, i32* %15, align 8
  %16 = bitcast %struct.ifbreq* %7 to %struct.ifdrv*
  %17 = getelementptr inbounds %struct.ifdrv, %struct.ifdrv* %6, i32 0, i32 3
  store %struct.ifdrv* %16, %struct.ifdrv** %17, align 8
  %18 = getelementptr inbounds %struct.ifbreq, %struct.ifbreq* %7, i32 0, i32 2
  %19 = load i32, i32* %18, align 8
  %20 = load %struct.bridge_port*, %struct.bridge_port** %4, align 8
  %21 = getelementptr inbounds %struct.bridge_port, %struct.bridge_port* %20, i32 0, i32 0
  %22 = load i8*, i8** %21, align 8
  %23 = call i32 @strlcpy(i32 %19, i8* %22, i32 4)
  %24 = load %struct.bridge_port*, %struct.bridge_port** %4, align 8
  %25 = getelementptr inbounds %struct.bridge_port, %struct.bridge_port* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @begemotBridgeBaseSpanEnabled_enabled, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %32

29:                                               ; preds = %2
  %30 = load i64, i64* @BRDGADDS, align 8
  %31 = getelementptr inbounds %struct.ifdrv, %struct.ifdrv* %6, i32 0, i32 1
  store i64 %30, i64* %31, align 8
  br label %35

32:                                               ; preds = %2
  %33 = load i64, i64* @BRDGADD, align 8
  %34 = getelementptr inbounds %struct.ifdrv, %struct.ifdrv* %6, i32 0, i32 1
  store i64 %33, i64* %34, align 8
  br label %35

35:                                               ; preds = %32, %29
  %36 = load i32, i32* @sock, align 4
  %37 = load i32, i32* @SIOCSDRVSPEC, align 4
  %38 = call i64 @ioctl(i32 %36, i32 %37, %struct.ifdrv* %6)
  %39 = icmp slt i64 %38, 0
  br i1 %39, label %40, label %54

40:                                               ; preds = %35
  %41 = load i32, i32* @LOG_ERR, align 4
  %42 = load %struct.bridge_port*, %struct.bridge_port** %4, align 8
  %43 = getelementptr inbounds %struct.bridge_port, %struct.bridge_port* %42, i32 0, i32 0
  %44 = load i8*, i8** %43, align 8
  %45 = getelementptr inbounds %struct.ifdrv, %struct.ifdrv* %6, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @BRDGADDS, align 8
  %48 = icmp eq i64 %46, %47
  %49 = zext i1 %48 to i64
  %50 = select i1 %48, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0)
  %51 = load i32, i32* @errno, align 4
  %52 = call i32 @strerror(i32 %51)
  %53 = call i32 @syslog(i32 %41, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i8* %44, i8* %50, i32 %52)
  store i32 -1, i32* %3, align 4
  br label %55

54:                                               ; preds = %35
  store i32 0, i32* %3, align 4
  br label %55

55:                                               ; preds = %54, %40
  %56 = load i32, i32* %3, align 4
  ret i32 %56
}

declare dso_local i32 @bzero(%struct.ifdrv*, i32) #1

declare dso_local i32 @strlcpy(i32, i8*, i32) #1

declare dso_local i64 @ioctl(i32, i32, %struct.ifdrv*) #1

declare dso_local i32 @syslog(i32, i8*, i8*, i8*, i32) #1

declare dso_local i32 @strerror(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
