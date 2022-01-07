; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/modules/snmp_bridge/extr_bridge_sys.c_bridge_get_op_param.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/modules/snmp_bridge/extr_bridge_sys.c_bridge_get_op_param.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bridge_if = type { i32, i32, i32, i64, %struct.TYPE_3__, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_3__ = type { i64, i32 }
%struct.ifdrv = type { i32, i32, %struct.ifbropreq*, i32 }
%struct.ifbropreq = type { i32, i32, i32, i64, %struct.TYPE_4__, i32, i32, i32, i32 }
%struct.TYPE_4__ = type { i64, i32 }

@IFNAMSIZ = common dso_local global i32 0, align 4
@BRDGPARAM = common dso_local global i32 0, align 4
@sock = common dso_local global i32 0, align 4
@SIOCGDRVSPEC = common dso_local global i32 0, align 4
@LOG_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"update bridge: ioctl(BRDGPARAM) failed: %s\00", align 1
@errno = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bridge_get_op_param(%struct.bridge_if* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bridge_if*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ifdrv, align 8
  %6 = alloca %struct.ifbropreq, align 8
  store %struct.bridge_if* %0, %struct.bridge_if** %3, align 8
  %7 = getelementptr inbounds %struct.ifdrv, %struct.ifdrv* %5, i32 0, i32 3
  %8 = load i32, i32* %7, align 8
  %9 = load %struct.bridge_if*, %struct.bridge_if** %3, align 8
  %10 = getelementptr inbounds %struct.bridge_if, %struct.bridge_if* %9, i32 0, i32 10
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @IFNAMSIZ, align 4
  %13 = call i32 @strlcpy(i32 %8, i32 %11, i32 %12)
  %14 = getelementptr inbounds %struct.ifdrv, %struct.ifdrv* %5, i32 0, i32 0
  store i32 56, i32* %14, align 8
  %15 = getelementptr inbounds %struct.ifdrv, %struct.ifdrv* %5, i32 0, i32 2
  store %struct.ifbropreq* %6, %struct.ifbropreq** %15, align 8
  %16 = load i32, i32* @BRDGPARAM, align 4
  %17 = getelementptr inbounds %struct.ifdrv, %struct.ifdrv* %5, i32 0, i32 1
  store i32 %16, i32* %17, align 4
  %18 = load i32, i32* @sock, align 4
  %19 = load i32, i32* @SIOCGDRVSPEC, align 4
  %20 = call i64 @ioctl(i32 %18, i32 %19, %struct.ifdrv* %5)
  %21 = icmp slt i64 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %1
  %23 = load i32, i32* @LOG_ERR, align 4
  %24 = load i32, i32* @errno, align 4
  %25 = call i32 @strerror(i32 %24)
  %26 = call i32 @syslog(i32 %23, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %25)
  store i32 -1, i32* %2, align 4
  br label %109

27:                                               ; preds = %1
  %28 = getelementptr inbounds %struct.ifbropreq, %struct.ifbropreq* %6, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = mul nsw i32 100, %29
  %31 = load %struct.bridge_if*, %struct.bridge_if** %3, align 8
  %32 = getelementptr inbounds %struct.bridge_if, %struct.bridge_if* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 8
  %33 = getelementptr inbounds %struct.ifbropreq, %struct.ifbropreq* %6, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = mul nsw i32 100, %34
  %36 = load %struct.bridge_if*, %struct.bridge_if** %3, align 8
  %37 = getelementptr inbounds %struct.bridge_if, %struct.bridge_if* %36, i32 0, i32 1
  store i32 %35, i32* %37, align 4
  %38 = getelementptr inbounds %struct.ifbropreq, %struct.ifbropreq* %6, i32 0, i32 2
  %39 = load i32, i32* %38, align 8
  %40 = mul nsw i32 100, %39
  %41 = load %struct.bridge_if*, %struct.bridge_if** %3, align 8
  %42 = getelementptr inbounds %struct.bridge_if, %struct.bridge_if* %41, i32 0, i32 2
  store i32 %40, i32* %42, align 8
  %43 = getelementptr inbounds %struct.ifbropreq, %struct.ifbropreq* %6, i32 0, i32 8
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.bridge_if*, %struct.bridge_if** %3, align 8
  %46 = getelementptr inbounds %struct.bridge_if, %struct.bridge_if* %45, i32 0, i32 9
  store i32 %44, i32* %46, align 8
  %47 = getelementptr inbounds %struct.ifbropreq, %struct.ifbropreq* %6, i32 0, i32 7
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.bridge_if*, %struct.bridge_if** %3, align 8
  %50 = getelementptr inbounds %struct.bridge_if, %struct.bridge_if* %49, i32 0, i32 8
  store i32 %48, i32* %50, align 4
  %51 = getelementptr inbounds %struct.ifbropreq, %struct.ifbropreq* %6, i32 0, i32 3
  %52 = load i64, i64* %51, align 8
  %53 = icmp eq i64 %52, 0
  br i1 %53, label %54, label %62

54:                                               ; preds = %27
  %55 = load %struct.bridge_if*, %struct.bridge_if** %3, align 8
  %56 = getelementptr inbounds %struct.bridge_if, %struct.bridge_if* %55, i32 0, i32 3
  %57 = load i64, i64* %56, align 8
  %58 = getelementptr inbounds %struct.ifbropreq, %struct.ifbropreq* %6, i32 0, i32 3
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %57, %59
  br i1 %60, label %61, label %62

61:                                               ; preds = %54
  store i32 2, i32* %4, align 4
  br label %63

62:                                               ; preds = %54, %27
  store i32 0, i32* %4, align 4
  br label %63

63:                                               ; preds = %62, %61
  %64 = getelementptr inbounds %struct.ifbropreq, %struct.ifbropreq* %6, i32 0, i32 3
  %65 = load i64, i64* %64, align 8
  %66 = load %struct.bridge_if*, %struct.bridge_if** %3, align 8
  %67 = getelementptr inbounds %struct.bridge_if, %struct.bridge_if* %66, i32 0, i32 3
  store i64 %65, i64* %67, align 8
  %68 = getelementptr inbounds %struct.ifbropreq, %struct.ifbropreq* %6, i32 0, i32 6
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.bridge_if*, %struct.bridge_if** %3, align 8
  %71 = getelementptr inbounds %struct.bridge_if, %struct.bridge_if* %70, i32 0, i32 7
  store i32 %69, i32* %71, align 8
  %72 = getelementptr inbounds %struct.ifbropreq, %struct.ifbropreq* %6, i32 0, i32 5
  %73 = load i32, i32* %72, align 8
  %74 = load %struct.bridge_if*, %struct.bridge_if** %3, align 8
  %75 = getelementptr inbounds %struct.bridge_if, %struct.bridge_if* %74, i32 0, i32 6
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @snmp_uint64_to_bridgeid(i32 %73, i32 %76)
  %78 = load %struct.bridge_if*, %struct.bridge_if** %3, align 8
  %79 = getelementptr inbounds %struct.bridge_if, %struct.bridge_if* %78, i32 0, i32 4
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = getelementptr inbounds %struct.ifbropreq, %struct.ifbropreq* %6, i32 0, i32 4
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = icmp ne i64 %81, %84
  br i1 %85, label %86, label %107

86:                                               ; preds = %63
  %87 = load %struct.bridge_if*, %struct.bridge_if** %3, align 8
  %88 = getelementptr inbounds %struct.bridge_if, %struct.bridge_if* %87, i32 0, i32 5
  %89 = load i32, i32* %88, align 8
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %88, align 8
  %91 = getelementptr inbounds %struct.ifbropreq, %struct.ifbropreq* %6, i32 0, i32 4
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = load %struct.bridge_if*, %struct.bridge_if** %3, align 8
  %95 = getelementptr inbounds %struct.bridge_if, %struct.bridge_if* %94, i32 0, i32 4
  %96 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %95, i32 0, i32 0
  store i64 %93, i64* %96, align 8
  %97 = getelementptr inbounds %struct.ifbropreq, %struct.ifbropreq* %6, i32 0, i32 4
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 8
  %100 = load %struct.bridge_if*, %struct.bridge_if** %3, align 8
  %101 = getelementptr inbounds %struct.bridge_if, %struct.bridge_if* %100, i32 0, i32 4
  %102 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %101, i32 0, i32 1
  store i32 %99, i32* %102, align 8
  %103 = load i32, i32* %4, align 4
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %105, label %106

105:                                              ; preds = %86
  store i32 1, i32* %2, align 4
  br label %109

106:                                              ; preds = %86
  br label %107

107:                                              ; preds = %106, %63
  %108 = load i32, i32* %4, align 4
  store i32 %108, i32* %2, align 4
  br label %109

109:                                              ; preds = %107, %105, %22
  %110 = load i32, i32* %2, align 4
  ret i32 %110
}

declare dso_local i32 @strlcpy(i32, i32, i32) #1

declare dso_local i64 @ioctl(i32, i32, %struct.ifdrv*) #1

declare dso_local i32 @syslog(i32, i8*, i32) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i32 @snmp_uint64_to_bridgeid(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
