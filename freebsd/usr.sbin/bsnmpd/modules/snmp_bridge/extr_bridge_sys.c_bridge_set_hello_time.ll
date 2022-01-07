; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/modules/snmp_bridge/extr_bridge_sys.c_bridge_set_hello_time.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/modules/snmp_bridge/extr_bridge_sys.c_bridge_set_hello_time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bridge_if = type { i32, i32 }
%struct.ifdrv = type { i32, i32, %struct.ifbrparam*, i32 }
%struct.ifbrparam = type { i32 }

@IFNAMSIZ = common dso_local global i32 0, align 4
@BRDGSHT = common dso_local global i32 0, align 4
@sock = common dso_local global i32 0, align 4
@SIOCSDRVSPEC = common dso_local global i32 0, align 4
@LOG_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"set bridge param: ioctl(BRDGSHT) failed: %s\00", align 1
@errno = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bridge_set_hello_time(%struct.bridge_if* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bridge_if*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ifdrv, align 8
  %7 = alloca %struct.ifbrparam, align 4
  store %struct.bridge_if* %0, %struct.bridge_if** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = getelementptr inbounds %struct.ifdrv, %struct.ifdrv* %6, i32 0, i32 3
  %9 = load i32, i32* %8, align 8
  %10 = load %struct.bridge_if*, %struct.bridge_if** %4, align 8
  %11 = getelementptr inbounds %struct.bridge_if, %struct.bridge_if* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @IFNAMSIZ, align 4
  %14 = call i32 @strlcpy(i32 %9, i32 %12, i32 %13)
  %15 = getelementptr inbounds %struct.ifdrv, %struct.ifdrv* %6, i32 0, i32 0
  store i32 4, i32* %15, align 8
  %16 = getelementptr inbounds %struct.ifdrv, %struct.ifdrv* %6, i32 0, i32 2
  store %struct.ifbrparam* %7, %struct.ifbrparam** %16, align 8
  %17 = load i32, i32* %5, align 4
  %18 = call i32 @snmp_timeout2_sec(i32 %17)
  %19 = getelementptr inbounds %struct.ifbrparam, %struct.ifbrparam* %7, i32 0, i32 0
  store i32 %18, i32* %19, align 4
  %20 = load i32, i32* @BRDGSHT, align 4
  %21 = getelementptr inbounds %struct.ifdrv, %struct.ifdrv* %6, i32 0, i32 1
  store i32 %20, i32* %21, align 4
  %22 = load i32, i32* @sock, align 4
  %23 = load i32, i32* @SIOCSDRVSPEC, align 4
  %24 = call i64 @ioctl(i32 %22, i32 %23, %struct.ifdrv* %6)
  %25 = icmp slt i64 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %2
  %27 = load i32, i32* @LOG_ERR, align 4
  %28 = load i32, i32* @errno, align 4
  %29 = call i32 @strerror(i32 %28)
  %30 = call i32 @syslog(i32 %27, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %29)
  store i32 -1, i32* %3, align 4
  br label %36

31:                                               ; preds = %2
  %32 = getelementptr inbounds %struct.ifbrparam, %struct.ifbrparam* %7, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.bridge_if*, %struct.bridge_if** %4, align 8
  %35 = getelementptr inbounds %struct.bridge_if, %struct.bridge_if* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 4
  store i32 0, i32* %3, align 4
  br label %36

36:                                               ; preds = %31, %26
  %37 = load i32, i32* %3, align 4
  ret i32 %37
}

declare dso_local i32 @strlcpy(i32, i32, i32) #1

declare dso_local i32 @snmp_timeout2_sec(i32) #1

declare dso_local i64 @ioctl(i32, i32, %struct.ifdrv*) #1

declare dso_local i32 @syslog(i32, i8*, i32) #1

declare dso_local i32 @strerror(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
