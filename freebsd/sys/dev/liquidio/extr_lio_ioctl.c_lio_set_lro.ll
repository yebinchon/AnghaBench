; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/liquidio/extr_lio_ioctl.c_lio_set_lro.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/liquidio/extr_lio_ioctl.c_lio_set_lro.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifnet = type { i32 }
%struct.lio = type { i32 }

@IFCAP_LRO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"LRO capability not supported\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@IFCAP_RXCSUM = common dso_local global i32 0, align 4
@IFCAP_RXCSUM_IPV6 = common dso_local global i32 0, align 4
@lio_hwlro = common dso_local global i64 0, align 8
@LIO_CMD_LRO_ENABLE = common dso_local global i32 0, align 4
@LIO_LROIPV4 = common dso_local global i32 0, align 4
@LIO_LROIPV6 = common dso_local global i32 0, align 4
@LIO_CMD_LRO_DISABLE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"LRO requires RXCSUM\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ifnet*)* @lio_set_lro to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lio_set_lro(%struct.ifnet* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ifnet*, align 8
  %4 = alloca %struct.lio*, align 8
  %5 = alloca i32, align 4
  store %struct.ifnet* %0, %struct.ifnet** %3, align 8
  %6 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %7 = call %struct.lio* @if_getsoftc(%struct.ifnet* %6)
  store %struct.lio* %7, %struct.lio** %4, align 8
  store i32 0, i32* %5, align 4
  %8 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %9 = call i32 @if_getcapabilities(%struct.ifnet* %8)
  %10 = load i32, i32* @IFCAP_LRO, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %19, label %13

13:                                               ; preds = %1
  %14 = load %struct.lio*, %struct.lio** %4, align 8
  %15 = getelementptr inbounds %struct.lio, %struct.lio* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @lio_dev_info(i32 %16, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %18 = load i32, i32* @ENODEV, align 4
  store i32 %18, i32* %2, align 4
  br label %85

19:                                               ; preds = %1
  %20 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %21 = call i32 @if_getcapenable(%struct.ifnet* %20)
  %22 = load i32, i32* @IFCAP_LRO, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %51, label %25

25:                                               ; preds = %19
  %26 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %27 = call i32 @if_getcapenable(%struct.ifnet* %26)
  %28 = load i32, i32* @IFCAP_RXCSUM, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %51

31:                                               ; preds = %25
  %32 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %33 = call i32 @if_getcapenable(%struct.ifnet* %32)
  %34 = load i32, i32* @IFCAP_RXCSUM_IPV6, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %51

37:                                               ; preds = %31
  %38 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %39 = load i32, i32* @IFCAP_LRO, align 4
  %40 = call i32 @if_togglecapenable(%struct.ifnet* %38, i32 %39)
  %41 = load i64, i64* @lio_hwlro, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %50

43:                                               ; preds = %37
  %44 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %45 = load i32, i32* @LIO_CMD_LRO_ENABLE, align 4
  %46 = load i32, i32* @LIO_LROIPV4, align 4
  %47 = load i32, i32* @LIO_LROIPV6, align 4
  %48 = or i32 %46, %47
  %49 = call i32 @lio_set_feature(%struct.ifnet* %44, i32 %45, i32 %48)
  store i32 %49, i32* %5, align 4
  br label %50

50:                                               ; preds = %43, %37
  br label %77

51:                                               ; preds = %31, %25, %19
  %52 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %53 = call i32 @if_getcapenable(%struct.ifnet* %52)
  %54 = load i32, i32* @IFCAP_LRO, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %71

57:                                               ; preds = %51
  %58 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %59 = load i32, i32* @IFCAP_LRO, align 4
  %60 = call i32 @if_togglecapenable(%struct.ifnet* %58, i32 %59)
  %61 = load i64, i64* @lio_hwlro, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %70

63:                                               ; preds = %57
  %64 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %65 = load i32, i32* @LIO_CMD_LRO_DISABLE, align 4
  %66 = load i32, i32* @LIO_LROIPV4, align 4
  %67 = load i32, i32* @LIO_LROIPV6, align 4
  %68 = or i32 %66, %67
  %69 = call i32 @lio_set_feature(%struct.ifnet* %64, i32 %65, i32 %68)
  store i32 %69, i32* %5, align 4
  br label %70

70:                                               ; preds = %63, %57
  br label %76

71:                                               ; preds = %51
  %72 = load %struct.lio*, %struct.lio** %4, align 8
  %73 = getelementptr inbounds %struct.lio, %struct.lio* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @lio_dev_info(i32 %74, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  br label %76

76:                                               ; preds = %71, %70
  br label %77

77:                                               ; preds = %76, %50
  %78 = load i32, i32* %5, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %82

80:                                               ; preds = %77
  %81 = load i32, i32* @EINVAL, align 4
  br label %83

82:                                               ; preds = %77
  br label %83

83:                                               ; preds = %82, %80
  %84 = phi i32 [ %81, %80 ], [ 0, %82 ]
  store i32 %84, i32* %2, align 4
  br label %85

85:                                               ; preds = %83, %13
  %86 = load i32, i32* %2, align 4
  ret i32 %86
}

declare dso_local %struct.lio* @if_getsoftc(%struct.ifnet*) #1

declare dso_local i32 @if_getcapabilities(%struct.ifnet*) #1

declare dso_local i32 @lio_dev_info(i32, i8*) #1

declare dso_local i32 @if_getcapenable(%struct.ifnet*) #1

declare dso_local i32 @if_togglecapenable(%struct.ifnet*, i32) #1

declare dso_local i32 @lio_set_feature(%struct.ifnet*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
