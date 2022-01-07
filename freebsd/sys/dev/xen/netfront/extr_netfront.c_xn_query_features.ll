; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/xen/netfront/extr_netfront.c_xn_query_features.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/xen/netfront/extr_netfront.c_xn_query_features.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netfront_info = type { i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [18 x i8] c"backend features:\00", align 1
@XST_NIL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"feature-sg\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@MAX_TX_REQ_FRAGS = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [12 x i8] c" feature-sg\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"feature-gso-tcpv4\00", align 1
@IFCAP_TSO4 = common dso_local global i32 0, align 4
@IFCAP_LRO = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [18 x i8] c" feature-gso-tcp4\00", align 1
@.str.6 = private unnamed_addr constant [24 x i8] c"feature-no-csum-offload\00", align 1
@IFCAP_HWCSUM = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [25 x i8] c" feature-no-csum-offload\00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.netfront_info*)* @xn_query_features to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xn_query_features(%struct.netfront_info* %0) #0 {
  %2 = alloca %struct.netfront_info*, align 8
  %3 = alloca i32, align 4
  store %struct.netfront_info* %0, %struct.netfront_info** %2, align 8
  %4 = load %struct.netfront_info*, %struct.netfront_info** %2, align 8
  %5 = getelementptr inbounds %struct.netfront_info, %struct.netfront_info* %4, i32 0, i32 2
  %6 = load i32, i32* %5, align 8
  %7 = call i32 @device_printf(i32 %6, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %8 = load i32, i32* @XST_NIL, align 4
  %9 = load %struct.netfront_info*, %struct.netfront_info** %2, align 8
  %10 = getelementptr inbounds %struct.netfront_info, %struct.netfront_info* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 8
  %12 = call i32 @xenbus_get_otherend_path(i32 %11)
  %13 = call i64 @xs_scanf(i32 %8, i32 %12, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32* null, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32* %3)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %1
  store i32 0, i32* %3, align 4
  br label %16

16:                                               ; preds = %15, %1
  %17 = load %struct.netfront_info*, %struct.netfront_info** %2, align 8
  %18 = getelementptr inbounds %struct.netfront_info, %struct.netfront_info* %17, i32 0, i32 0
  store i32 1, i32* %18, align 8
  %19 = load i32, i32* %3, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %16
  %22 = load i32, i32* @MAX_TX_REQ_FRAGS, align 4
  %23 = load %struct.netfront_info*, %struct.netfront_info** %2, align 8
  %24 = getelementptr inbounds %struct.netfront_info, %struct.netfront_info* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 8
  %25 = call i32 @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0))
  br label %26

26:                                               ; preds = %21, %16
  %27 = load i32, i32* @XST_NIL, align 4
  %28 = load %struct.netfront_info*, %struct.netfront_info** %2, align 8
  %29 = getelementptr inbounds %struct.netfront_info, %struct.netfront_info* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @xenbus_get_otherend_path(i32 %30)
  %32 = call i64 @xs_scanf(i32 %27, i32 %31, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0), i32* null, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32* %3)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %26
  store i32 0, i32* %3, align 4
  br label %35

35:                                               ; preds = %34, %26
  %36 = load i32, i32* @IFCAP_TSO4, align 4
  %37 = load i32, i32* @IFCAP_LRO, align 4
  %38 = or i32 %36, %37
  %39 = xor i32 %38, -1
  %40 = load %struct.netfront_info*, %struct.netfront_info** %2, align 8
  %41 = getelementptr inbounds %struct.netfront_info, %struct.netfront_info* %40, i32 0, i32 1
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = and i32 %44, %39
  store i32 %45, i32* %43, align 4
  %46 = load i32, i32* %3, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %59

48:                                               ; preds = %35
  %49 = load i32, i32* @IFCAP_TSO4, align 4
  %50 = load i32, i32* @IFCAP_LRO, align 4
  %51 = or i32 %49, %50
  %52 = load %struct.netfront_info*, %struct.netfront_info** %2, align 8
  %53 = getelementptr inbounds %struct.netfront_info, %struct.netfront_info* %52, i32 0, i32 1
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = or i32 %56, %51
  store i32 %57, i32* %55, align 4
  %58 = call i32 @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0))
  br label %59

59:                                               ; preds = %48, %35
  %60 = load i32, i32* @XST_NIL, align 4
  %61 = load %struct.netfront_info*, %struct.netfront_info** %2, align 8
  %62 = getelementptr inbounds %struct.netfront_info, %struct.netfront_info* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 8
  %64 = call i32 @xenbus_get_otherend_path(i32 %63)
  %65 = call i64 @xs_scanf(i32 %60, i32 %64, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i64 0, i64 0), i32* null, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32* %3)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %59
  store i32 0, i32* %3, align 4
  br label %68

68:                                               ; preds = %67, %59
  %69 = load i32, i32* @IFCAP_HWCSUM, align 4
  %70 = load %struct.netfront_info*, %struct.netfront_info** %2, align 8
  %71 = getelementptr inbounds %struct.netfront_info, %struct.netfront_info* %70, i32 0, i32 1
  %72 = load %struct.TYPE_2__*, %struct.TYPE_2__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = or i32 %74, %69
  store i32 %75, i32* %73, align 4
  %76 = load i32, i32* %3, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %88

78:                                               ; preds = %68
  %79 = load i32, i32* @IFCAP_HWCSUM, align 4
  %80 = xor i32 %79, -1
  %81 = load %struct.netfront_info*, %struct.netfront_info** %2, align 8
  %82 = getelementptr inbounds %struct.netfront_info, %struct.netfront_info* %81, i32 0, i32 1
  %83 = load %struct.TYPE_2__*, %struct.TYPE_2__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = and i32 %85, %80
  store i32 %86, i32* %84, align 4
  %87 = call i32 @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.7, i64 0, i64 0))
  br label %88

88:                                               ; preds = %78, %68
  %89 = call i32 @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0))
  ret void
}

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i64 @xs_scanf(i32, i32, i8*, i32*, i8*, i32*) #1

declare dso_local i32 @xenbus_get_otherend_path(i32) #1

declare dso_local i32 @printf(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
