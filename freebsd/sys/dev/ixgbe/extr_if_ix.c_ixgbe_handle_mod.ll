; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_if_ix.c_ixgbe_handle_mod.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_if_ix.c_ixgbe_handle_mod.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i32, %struct.ixgbe_hw }
%struct.ixgbe_hw = type { %struct.TYPE_8__, %struct.TYPE_6__, i64 }
%struct.TYPE_8__ = type { i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64 (%struct.ixgbe_hw.0*)* }
%struct.ixgbe_hw.0 = type opaque
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 (%struct.ixgbe_hw.1*)*, i64 (%struct.ixgbe_hw.2*)* }
%struct.ixgbe_hw.1 = type opaque
%struct.ixgbe_hw.2 = type opaque

@IXGBE_ESDP = common dso_local global i32 0, align 4
@IXGBE_ESDP_SDP2 = common dso_local global i64 0, align 8
@IXGBE_ESDP_SDP0 = common dso_local global i64 0, align 8
@IXGBE_ERR_SFP_NOT_SUPPORTED = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [44 x i8] c"Unsupported SFP+ module type was detected.\0A\00", align 1
@ixgbe_mac_82598EB = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [47 x i8] c"Setup failure - unsupported SFP+ module type.\0A\00", align 1
@IXGBE_REQUEST_TASK_MSF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @ixgbe_handle_mod to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ixgbe_handle_mod(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.adapter*, align 8
  %5 = alloca %struct.ixgbe_hw*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store i8* %0, i8** %2, align 8
  %9 = load i8*, i8** %2, align 8
  store i8* %9, i8** %3, align 8
  %10 = load i8*, i8** %3, align 8
  %11 = call %struct.adapter* @iflib_get_softc(i8* %10)
  store %struct.adapter* %11, %struct.adapter** %4, align 8
  %12 = load %struct.adapter*, %struct.adapter** %4, align 8
  %13 = getelementptr inbounds %struct.adapter, %struct.adapter* %12, i32 0, i32 1
  store %struct.ixgbe_hw* %13, %struct.ixgbe_hw** %5, align 8
  %14 = load i8*, i8** %3, align 8
  %15 = call i32 @iflib_get_dev(i8* %14)
  store i32 %15, i32* %6, align 4
  store i64 0, i64* %8, align 8
  %16 = load %struct.adapter*, %struct.adapter** %4, align 8
  %17 = getelementptr inbounds %struct.adapter, %struct.adapter* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %17, i32 0, i32 2
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %44

21:                                               ; preds = %1
  %22 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %23 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  switch i32 %25, label %38 [
    i32 130, label %26
    i32 128, label %32
    i32 129, label %32
  ]

26:                                               ; preds = %21
  %27 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %28 = load i32, i32* @IXGBE_ESDP, align 4
  %29 = call i64 @IXGBE_READ_REG(%struct.ixgbe_hw* %27, i32 %28)
  %30 = load i64, i64* @IXGBE_ESDP_SDP2, align 8
  %31 = and i64 %29, %30
  store i64 %31, i64* %8, align 8
  br label %39

32:                                               ; preds = %21, %21
  %33 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %34 = load i32, i32* @IXGBE_ESDP, align 4
  %35 = call i64 @IXGBE_READ_REG(%struct.ixgbe_hw* %33, i32 %34)
  %36 = load i64, i64* @IXGBE_ESDP_SDP0, align 8
  %37 = and i64 %35, %36
  store i64 %37, i64* %8, align 8
  br label %39

38:                                               ; preds = %21
  br label %39

39:                                               ; preds = %38, %32, %26
  %40 = load i64, i64* %8, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %43, label %42

42:                                               ; preds = %39
  br label %97

43:                                               ; preds = %39
  br label %44

44:                                               ; preds = %43, %1
  %45 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %46 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 0
  %49 = load i64 (%struct.ixgbe_hw.1*)*, i64 (%struct.ixgbe_hw.1*)** %48, align 8
  %50 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %51 = bitcast %struct.ixgbe_hw* %50 to %struct.ixgbe_hw.1*
  %52 = call i64 %49(%struct.ixgbe_hw.1* %51)
  store i64 %52, i64* %7, align 8
  %53 = load i64, i64* %7, align 8
  %54 = load i64, i64* @IXGBE_ERR_SFP_NOT_SUPPORTED, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %56, label %59

56:                                               ; preds = %44
  %57 = load i32, i32* %6, align 4
  %58 = call i32 @device_printf(i32 %57, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  br label %97

59:                                               ; preds = %44
  %60 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %61 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* @ixgbe_mac_82598EB, align 4
  %65 = icmp eq i32 %63, %64
  br i1 %65, label %66, label %75

66:                                               ; preds = %59
  %67 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %68 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 1
  %71 = load i64 (%struct.ixgbe_hw.2*)*, i64 (%struct.ixgbe_hw.2*)** %70, align 8
  %72 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %73 = bitcast %struct.ixgbe_hw* %72 to %struct.ixgbe_hw.2*
  %74 = call i64 %71(%struct.ixgbe_hw.2* %73)
  store i64 %74, i64* %7, align 8
  br label %84

75:                                               ; preds = %59
  %76 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %77 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %78, i32 0, i32 0
  %80 = load i64 (%struct.ixgbe_hw.0*)*, i64 (%struct.ixgbe_hw.0*)** %79, align 8
  %81 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %82 = bitcast %struct.ixgbe_hw* %81 to %struct.ixgbe_hw.0*
  %83 = call i64 %80(%struct.ixgbe_hw.0* %82)
  store i64 %83, i64* %7, align 8
  br label %84

84:                                               ; preds = %75, %66
  %85 = load i64, i64* %7, align 8
  %86 = load i64, i64* @IXGBE_ERR_SFP_NOT_SUPPORTED, align 8
  %87 = icmp eq i64 %85, %86
  br i1 %87, label %88, label %91

88:                                               ; preds = %84
  %89 = load i32, i32* %6, align 4
  %90 = call i32 @device_printf(i32 %89, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0))
  br label %97

91:                                               ; preds = %84
  %92 = load i32, i32* @IXGBE_REQUEST_TASK_MSF, align 4
  %93 = load %struct.adapter*, %struct.adapter** %4, align 8
  %94 = getelementptr inbounds %struct.adapter, %struct.adapter* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = or i32 %95, %92
  store i32 %96, i32* %94, align 8
  br label %104

97:                                               ; preds = %88, %56, %42
  %98 = load i32, i32* @IXGBE_REQUEST_TASK_MSF, align 4
  %99 = xor i32 %98, -1
  %100 = load %struct.adapter*, %struct.adapter** %4, align 8
  %101 = getelementptr inbounds %struct.adapter, %struct.adapter* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = and i32 %102, %99
  store i32 %103, i32* %101, align 8
  br label %104

104:                                              ; preds = %97, %91
  ret void
}

declare dso_local %struct.adapter* @iflib_get_softc(i8*) #1

declare dso_local i32 @iflib_get_dev(i8*) #1

declare dso_local i64 @IXGBE_READ_REG(%struct.ixgbe_hw*, i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
