; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/modules/snmp_bridge/extr_bridge_sys.c_bridge_port_set_admin_ptp.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/modules/snmp_bridge/extr_bridge_sys.c_bridge_port_set_admin_ptp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bridge_port = type { i32, i8* }
%struct.ifdrv = type { i32, i32, %struct.ifbreq*, i32 }
%struct.ifbreq = type { i32, i32 }

@BRDGGIFFLGS = common dso_local global i32 0, align 4
@sock = common dso_local global i32 0, align 4
@SIOCGDRVSPEC = common dso_local global i32 0, align 4
@LOG_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"get member %s param: ioctl(BRDGGIFFLGS) failed: %s\00", align 1
@errno = common dso_local global i32 0, align 4
@IFBIF_BSTP_AUTOPTP = common dso_local global i32 0, align 4
@IFBIF_BSTP_PTP = common dso_local global i32 0, align 4
@BRDGSIFFLGS = common dso_local global i32 0, align 4
@SIOCSDRVSPEC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [51 x i8] c"set member %s param: ioctl(BRDGSIFFLGS) failed: %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bridge_port_set_admin_ptp(i8* %0, %struct.bridge_port* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.bridge_port*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ifdrv, align 8
  %9 = alloca %struct.ifbreq, align 4
  store i8* %0, i8** %5, align 8
  store %struct.bridge_port* %1, %struct.bridge_port** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.bridge_port*, %struct.bridge_port** %6, align 8
  %11 = getelementptr inbounds %struct.bridge_port, %struct.bridge_port* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* %7, align 4
  %14 = icmp eq i32 %12, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %91

16:                                               ; preds = %3
  %17 = call i32 @bzero(%struct.ifbreq* %9, i32 8)
  %18 = getelementptr inbounds %struct.ifdrv, %struct.ifdrv* %8, i32 0, i32 3
  %19 = load i32, i32* %18, align 8
  %20 = load i8*, i8** %5, align 8
  %21 = call i32 @strlcpy(i32 %19, i8* %20, i32 4)
  %22 = getelementptr inbounds %struct.ifdrv, %struct.ifdrv* %8, i32 0, i32 0
  store i32 8, i32* %22, align 8
  %23 = getelementptr inbounds %struct.ifdrv, %struct.ifdrv* %8, i32 0, i32 2
  store %struct.ifbreq* %9, %struct.ifbreq** %23, align 8
  %24 = getelementptr inbounds %struct.ifbreq, %struct.ifbreq* %9, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.bridge_port*, %struct.bridge_port** %6, align 8
  %27 = getelementptr inbounds %struct.bridge_port, %struct.bridge_port* %26, i32 0, i32 1
  %28 = load i8*, i8** %27, align 8
  %29 = call i32 @strlcpy(i32 %25, i8* %28, i32 4)
  %30 = load i32, i32* @BRDGGIFFLGS, align 4
  %31 = getelementptr inbounds %struct.ifdrv, %struct.ifdrv* %8, i32 0, i32 1
  store i32 %30, i32* %31, align 4
  %32 = load i32, i32* @sock, align 4
  %33 = load i32, i32* @SIOCGDRVSPEC, align 4
  %34 = call i64 @ioctl(i32 %32, i32 %33, %struct.ifdrv* %8)
  %35 = icmp slt i64 %34, 0
  br i1 %35, label %36, label %44

36:                                               ; preds = %16
  %37 = load i32, i32* @LOG_ERR, align 4
  %38 = load %struct.bridge_port*, %struct.bridge_port** %6, align 8
  %39 = getelementptr inbounds %struct.bridge_port, %struct.bridge_port* %38, i32 0, i32 1
  %40 = load i8*, i8** %39, align 8
  %41 = load i32, i32* @errno, align 4
  %42 = call i32 @strerror(i32 %41)
  %43 = call i32 @syslog(i32 %37, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i8* %40, i32 %42)
  store i32 -1, i32* %4, align 4
  br label %91

44:                                               ; preds = %16
  %45 = load i32, i32* %7, align 4
  switch i32 %45, label %72 [
    i32 128, label %46
    i32 129, label %56
    i32 130, label %67
  ]

46:                                               ; preds = %44
  %47 = load i32, i32* @IFBIF_BSTP_AUTOPTP, align 4
  %48 = xor i32 %47, -1
  %49 = getelementptr inbounds %struct.ifbreq, %struct.ifbreq* %9, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = and i32 %50, %48
  store i32 %51, i32* %49, align 4
  %52 = load i32, i32* @IFBIF_BSTP_PTP, align 4
  %53 = getelementptr inbounds %struct.ifbreq, %struct.ifbreq* %9, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = or i32 %54, %52
  store i32 %55, i32* %53, align 4
  br label %72

56:                                               ; preds = %44
  %57 = load i32, i32* @IFBIF_BSTP_AUTOPTP, align 4
  %58 = xor i32 %57, -1
  %59 = getelementptr inbounds %struct.ifbreq, %struct.ifbreq* %9, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = and i32 %60, %58
  store i32 %61, i32* %59, align 4
  %62 = load i32, i32* @IFBIF_BSTP_PTP, align 4
  %63 = xor i32 %62, -1
  %64 = getelementptr inbounds %struct.ifbreq, %struct.ifbreq* %9, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = and i32 %65, %63
  store i32 %66, i32* %64, align 4
  br label %72

67:                                               ; preds = %44
  %68 = load i32, i32* @IFBIF_BSTP_AUTOPTP, align 4
  %69 = getelementptr inbounds %struct.ifbreq, %struct.ifbreq* %9, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = or i32 %70, %68
  store i32 %71, i32* %69, align 4
  br label %72

72:                                               ; preds = %44, %67, %56, %46
  %73 = load i32, i32* @BRDGSIFFLGS, align 4
  %74 = getelementptr inbounds %struct.ifdrv, %struct.ifdrv* %8, i32 0, i32 1
  store i32 %73, i32* %74, align 4
  %75 = load i32, i32* @sock, align 4
  %76 = load i32, i32* @SIOCSDRVSPEC, align 4
  %77 = call i64 @ioctl(i32 %75, i32 %76, %struct.ifdrv* %8)
  %78 = icmp slt i64 %77, 0
  br i1 %78, label %79, label %87

79:                                               ; preds = %72
  %80 = load i32, i32* @LOG_ERR, align 4
  %81 = load %struct.bridge_port*, %struct.bridge_port** %6, align 8
  %82 = getelementptr inbounds %struct.bridge_port, %struct.bridge_port* %81, i32 0, i32 1
  %83 = load i8*, i8** %82, align 8
  %84 = load i32, i32* @errno, align 4
  %85 = call i32 @strerror(i32 %84)
  %86 = call i32 @syslog(i32 %80, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0), i8* %83, i32 %85)
  store i32 -1, i32* %4, align 4
  br label %91

87:                                               ; preds = %72
  %88 = load i32, i32* %7, align 4
  %89 = load %struct.bridge_port*, %struct.bridge_port** %6, align 8
  %90 = getelementptr inbounds %struct.bridge_port, %struct.bridge_port* %89, i32 0, i32 0
  store i32 %88, i32* %90, align 8
  store i32 0, i32* %4, align 4
  br label %91

91:                                               ; preds = %87, %79, %36, %15
  %92 = load i32, i32* %4, align 4
  ret i32 %92
}

declare dso_local i32 @bzero(%struct.ifbreq*, i32) #1

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
