; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_if_ix.c_ixgbe_if_media_change.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_if_ix.c_ixgbe_if_media_change.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i32, %struct.ixgbe_hw }
%struct.ixgbe_hw = type { %struct.TYPE_6__, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { i32 (%struct.ixgbe_hw.0*, i32, i32)* }
%struct.ixgbe_hw.0 = type opaque
%struct.TYPE_4__ = type { i64 }
%struct.ifmedia = type { i32 }

@.str = private unnamed_addr constant [29 x i8] c"ixgbe_if_media_change: begin\00", align 1
@IFM_ETHER = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@ixgbe_media_type_backplane = common dso_local global i64 0, align 8
@EPERM = common dso_local global i32 0, align 4
@IXGBE_LINK_SPEED_100_FULL = common dso_local global i32 0, align 4
@IXGBE_LINK_SPEED_1GB_FULL = common dso_local global i32 0, align 4
@IXGBE_LINK_SPEED_10GB_FULL = common dso_local global i32 0, align 4
@IXGBE_LINK_SPEED_10_FULL = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"Invalid media type!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @ixgbe_if_media_change to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ixgbe_if_media_change(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.adapter*, align 8
  %5 = alloca %struct.ifmedia*, align 8
  %6 = alloca %struct.ixgbe_hw*, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %8 = load i32, i32* %3, align 4
  %9 = call %struct.adapter* @iflib_get_softc(i32 %8)
  store %struct.adapter* %9, %struct.adapter** %4, align 8
  %10 = load i32, i32* %3, align 4
  %11 = call %struct.ifmedia* @iflib_get_media(i32 %10)
  store %struct.ifmedia* %11, %struct.ifmedia** %5, align 8
  %12 = load %struct.adapter*, %struct.adapter** %4, align 8
  %13 = getelementptr inbounds %struct.adapter, %struct.adapter* %12, i32 0, i32 1
  store %struct.ixgbe_hw* %13, %struct.ixgbe_hw** %6, align 8
  store i32 0, i32* %7, align 4
  %14 = call i32 @INIT_DEBUGOUT(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %15 = load %struct.ifmedia*, %struct.ifmedia** %5, align 8
  %16 = getelementptr inbounds %struct.ifmedia, %struct.ifmedia* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i64 @IFM_TYPE(i32 %17)
  %19 = load i64, i64* @IFM_ETHER, align 8
  %20 = icmp ne i64 %18, %19
  br i1 %20, label %21, label %23

21:                                               ; preds = %1
  %22 = load i32, i32* @EINVAL, align 4
  store i32 %22, i32* %2, align 4
  br label %127

23:                                               ; preds = %1
  %24 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %6, align 8
  %25 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @ixgbe_media_type_backplane, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %32

30:                                               ; preds = %23
  %31 = load i32, i32* @EPERM, align 4
  store i32 %31, i32* %2, align 4
  br label %127

32:                                               ; preds = %23
  %33 = load %struct.ifmedia*, %struct.ifmedia** %5, align 8
  %34 = getelementptr inbounds %struct.ifmedia, %struct.ifmedia* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @IFM_SUBTYPE(i32 %35)
  switch i32 %36, label %77 [
    i32 128, label %37
    i32 131, label %37
    i32 133, label %47
    i32 134, label %47
    i32 132, label %47
    i32 137, label %47
    i32 143, label %54
    i32 141, label %54
    i32 140, label %54
    i32 139, label %58
    i32 130, label %65
    i32 138, label %69
    i32 129, label %73
  ]

37:                                               ; preds = %32, %32
  %38 = load i32, i32* @IXGBE_LINK_SPEED_100_FULL, align 4
  %39 = load i32, i32* %7, align 4
  %40 = or i32 %39, %38
  store i32 %40, i32* %7, align 4
  %41 = load i32, i32* @IXGBE_LINK_SPEED_1GB_FULL, align 4
  %42 = load i32, i32* %7, align 4
  %43 = or i32 %42, %41
  store i32 %43, i32* %7, align 4
  %44 = load i32, i32* @IXGBE_LINK_SPEED_10GB_FULL, align 4
  %45 = load i32, i32* %7, align 4
  %46 = or i32 %45, %44
  store i32 %46, i32* %7, align 4
  br label %78

47:                                               ; preds = %32, %32, %32, %32
  %48 = load i32, i32* @IXGBE_LINK_SPEED_1GB_FULL, align 4
  %49 = load i32, i32* %7, align 4
  %50 = or i32 %49, %48
  store i32 %50, i32* %7, align 4
  %51 = load i32, i32* @IXGBE_LINK_SPEED_10GB_FULL, align 4
  %52 = load i32, i32* %7, align 4
  %53 = or i32 %52, %51
  store i32 %53, i32* %7, align 4
  br label %78

54:                                               ; preds = %32, %32, %32
  %55 = load i32, i32* @IXGBE_LINK_SPEED_1GB_FULL, align 4
  %56 = load i32, i32* %7, align 4
  %57 = or i32 %56, %55
  store i32 %57, i32* %7, align 4
  br label %78

58:                                               ; preds = %32
  %59 = load i32, i32* @IXGBE_LINK_SPEED_100_FULL, align 4
  %60 = load i32, i32* %7, align 4
  %61 = or i32 %60, %59
  store i32 %61, i32* %7, align 4
  %62 = load i32, i32* @IXGBE_LINK_SPEED_1GB_FULL, align 4
  %63 = load i32, i32* %7, align 4
  %64 = or i32 %63, %62
  store i32 %64, i32* %7, align 4
  br label %78

65:                                               ; preds = %32
  %66 = load i32, i32* @IXGBE_LINK_SPEED_10GB_FULL, align 4
  %67 = load i32, i32* %7, align 4
  %68 = or i32 %67, %66
  store i32 %68, i32* %7, align 4
  br label %78

69:                                               ; preds = %32
  %70 = load i32, i32* @IXGBE_LINK_SPEED_100_FULL, align 4
  %71 = load i32, i32* %7, align 4
  %72 = or i32 %71, %70
  store i32 %72, i32* %7, align 4
  br label %78

73:                                               ; preds = %32
  %74 = load i32, i32* @IXGBE_LINK_SPEED_10_FULL, align 4
  %75 = load i32, i32* %7, align 4
  %76 = or i32 %75, %74
  store i32 %76, i32* %7, align 4
  br label %78

77:                                               ; preds = %32
  br label %122

78:                                               ; preds = %73, %69, %65, %58, %54, %47, %37
  %79 = load i32, i32* @TRUE, align 4
  %80 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %6, align 8
  %81 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 1
  store i32 %79, i32* %82, align 8
  %83 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %6, align 8
  %84 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %85, i32 0, i32 0
  %87 = load i32 (%struct.ixgbe_hw.0*, i32, i32)*, i32 (%struct.ixgbe_hw.0*, i32, i32)** %86, align 8
  %88 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %6, align 8
  %89 = bitcast %struct.ixgbe_hw* %88 to %struct.ixgbe_hw.0*
  %90 = load i32, i32* %7, align 4
  %91 = load i32, i32* @TRUE, align 4
  %92 = call i32 %87(%struct.ixgbe_hw.0* %89, i32 %90, i32 %91)
  %93 = load i32, i32* %7, align 4
  %94 = load i32, i32* @IXGBE_LINK_SPEED_10GB_FULL, align 4
  %95 = and i32 %93, %94
  %96 = icmp ne i32 %95, 0
  %97 = zext i1 %96 to i64
  %98 = select i1 %96, i32 4, i32 0
  %99 = load i32, i32* %7, align 4
  %100 = load i32, i32* @IXGBE_LINK_SPEED_1GB_FULL, align 4
  %101 = and i32 %99, %100
  %102 = icmp ne i32 %101, 0
  %103 = zext i1 %102 to i64
  %104 = select i1 %102, i32 2, i32 0
  %105 = or i32 %98, %104
  %106 = load i32, i32* %7, align 4
  %107 = load i32, i32* @IXGBE_LINK_SPEED_100_FULL, align 4
  %108 = and i32 %106, %107
  %109 = icmp ne i32 %108, 0
  %110 = zext i1 %109 to i64
  %111 = select i1 %109, i32 1, i32 0
  %112 = or i32 %105, %111
  %113 = load i32, i32* %7, align 4
  %114 = load i32, i32* @IXGBE_LINK_SPEED_10_FULL, align 4
  %115 = and i32 %113, %114
  %116 = icmp ne i32 %115, 0
  %117 = zext i1 %116 to i64
  %118 = select i1 %116, i32 8, i32 0
  %119 = or i32 %112, %118
  %120 = load %struct.adapter*, %struct.adapter** %4, align 8
  %121 = getelementptr inbounds %struct.adapter, %struct.adapter* %120, i32 0, i32 0
  store i32 %119, i32* %121, align 8
  store i32 0, i32* %2, align 4
  br label %127

122:                                              ; preds = %77
  %123 = load i32, i32* %3, align 4
  %124 = call i32 @iflib_get_dev(i32 %123)
  %125 = call i32 @device_printf(i32 %124, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %126 = load i32, i32* @EINVAL, align 4
  store i32 %126, i32* %2, align 4
  br label %127

127:                                              ; preds = %122, %78, %30, %21
  %128 = load i32, i32* %2, align 4
  ret i32 %128
}

declare dso_local %struct.adapter* @iflib_get_softc(i32) #1

declare dso_local %struct.ifmedia* @iflib_get_media(i32) #1

declare dso_local i32 @INIT_DEBUGOUT(i8*) #1

declare dso_local i64 @IFM_TYPE(i32) #1

declare dso_local i32 @IFM_SUBTYPE(i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @iflib_get_dev(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
