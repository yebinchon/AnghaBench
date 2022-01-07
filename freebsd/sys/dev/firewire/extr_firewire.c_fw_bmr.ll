; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/firewire/extr_firewire.c_fw_bmr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/firewire/extr_firewire.c_fw_bmr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.firewire_comm = type { i32, i32, i64, i32 }
%struct.fw_device = type { i32, i32, i32, i64, %struct.firewire_comm* }
%union.fw_self_id = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64 }

@.str = private unnamed_addr constant [39 x i8] c"root node is not cycle master capable\0A\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"bus manager %d %s\0A\00", align 1
@BUS_MGR_ID = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"(me)\00", align 1
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@MAX_GAPHOP = common dso_local global i64 0, align 8
@gap_cnt = common dso_local global i32* null, align 8
@FWDEVINIT = common dso_local global i32 0, align 4
@STATE_SET = common dso_local global i32 0, align 4
@fw_asy_callback_free = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.firewire_comm*)* @fw_bmr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fw_bmr(%struct.firewire_comm* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.firewire_comm*, align 8
  %4 = alloca %struct.fw_device, align 8
  %5 = alloca %union.fw_self_id*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.firewire_comm* %0, %struct.firewire_comm** %3, align 8
  %8 = load %struct.firewire_comm*, %struct.firewire_comm** %3, align 8
  %9 = load %struct.firewire_comm*, %struct.firewire_comm** %3, align 8
  %10 = getelementptr inbounds %struct.firewire_comm, %struct.firewire_comm* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = call %union.fw_self_id* @fw_find_self_id(%struct.firewire_comm* %8, i32 %11)
  store %union.fw_self_id* %12, %union.fw_self_id** %5, align 8
  %13 = load %struct.firewire_comm*, %struct.firewire_comm** %3, align 8
  %14 = getelementptr inbounds %struct.firewire_comm, %struct.firewire_comm* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp sgt i32 %15, 0
  br i1 %16, label %17, label %42

17:                                               ; preds = %1
  %18 = load %union.fw_self_id*, %union.fw_self_id** %5, align 8
  %19 = bitcast %union.fw_self_id* %18 to %struct.TYPE_2__*
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %33

23:                                               ; preds = %17
  %24 = load %union.fw_self_id*, %union.fw_self_id** %5, align 8
  %25 = bitcast %union.fw_self_id* %24 to %struct.TYPE_2__*
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %23
  %30 = load %struct.firewire_comm*, %struct.firewire_comm** %3, align 8
  %31 = getelementptr inbounds %struct.firewire_comm, %struct.firewire_comm* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  store i32 %32, i32* %6, align 4
  br label %41

33:                                               ; preds = %23, %17
  %34 = load %struct.firewire_comm*, %struct.firewire_comm** %3, align 8
  %35 = getelementptr inbounds %struct.firewire_comm, %struct.firewire_comm* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 8
  %37 = call i32 (i32, i8*, ...) @device_printf(i32 %36, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  %38 = load %struct.firewire_comm*, %struct.firewire_comm** %3, align 8
  %39 = getelementptr inbounds %struct.firewire_comm, %struct.firewire_comm* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  store i32 %40, i32* %6, align 4
  br label %41

41:                                               ; preds = %33, %29
  br label %43

42:                                               ; preds = %1
  store i32 -1, i32* %6, align 4
  br label %43

43:                                               ; preds = %42, %41
  %44 = load %struct.firewire_comm*, %struct.firewire_comm** %3, align 8
  %45 = getelementptr inbounds %struct.firewire_comm, %struct.firewire_comm* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 8
  %47 = load %struct.firewire_comm*, %struct.firewire_comm** %3, align 8
  %48 = load i32, i32* @BUS_MGR_ID, align 4
  %49 = call i32 @CSRARC(%struct.firewire_comm* %47, i32 %48)
  %50 = load %struct.firewire_comm*, %struct.firewire_comm** %3, align 8
  %51 = load i32, i32* @BUS_MGR_ID, align 4
  %52 = call i32 @CSRARC(%struct.firewire_comm* %50, i32 %51)
  %53 = load %struct.firewire_comm*, %struct.firewire_comm** %3, align 8
  %54 = getelementptr inbounds %struct.firewire_comm, %struct.firewire_comm* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = icmp ne i32 %52, %55
  %57 = zext i1 %56 to i64
  %58 = select i1 %56, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0)
  %59 = call i32 (i32, i8*, ...) @device_printf(i32 %46, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 %49, i8* %58)
  %60 = load %struct.firewire_comm*, %struct.firewire_comm** %3, align 8
  %61 = load i32, i32* @BUS_MGR_ID, align 4
  %62 = call i32 @CSRARC(%struct.firewire_comm* %60, i32 %61)
  %63 = load %struct.firewire_comm*, %struct.firewire_comm** %3, align 8
  %64 = getelementptr inbounds %struct.firewire_comm, %struct.firewire_comm* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = icmp ne i32 %62, %65
  br i1 %66, label %67, label %68

67:                                               ; preds = %43
  store i32 0, i32* %2, align 4
  br label %109

68:                                               ; preds = %43
  %69 = load %struct.firewire_comm*, %struct.firewire_comm** %3, align 8
  %70 = getelementptr inbounds %struct.firewire_comm, %struct.firewire_comm* %69, i32 0, i32 2
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* @MAX_GAPHOP, align 8
  %73 = icmp ule i64 %71, %72
  br i1 %73, label %74, label %84

74:                                               ; preds = %68
  %75 = load %struct.firewire_comm*, %struct.firewire_comm** %3, align 8
  %76 = load i32, i32* %6, align 4
  %77 = load i32*, i32** @gap_cnt, align 8
  %78 = load %struct.firewire_comm*, %struct.firewire_comm** %3, align 8
  %79 = getelementptr inbounds %struct.firewire_comm, %struct.firewire_comm* %78, i32 0, i32 2
  %80 = load i64, i64* %79, align 8
  %81 = getelementptr inbounds i32, i32* %77, i64 %80
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @fw_phy_config(%struct.firewire_comm* %75, i32 %76, i32 %82)
  br label %84

84:                                               ; preds = %74, %68
  %85 = load i32, i32* %6, align 4
  %86 = load %struct.firewire_comm*, %struct.firewire_comm** %3, align 8
  %87 = getelementptr inbounds %struct.firewire_comm, %struct.firewire_comm* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = icmp eq i32 %85, %88
  br i1 %89, label %93, label %90

90:                                               ; preds = %84
  %91 = load i32, i32* %6, align 4
  %92 = icmp eq i32 %91, -1
  br i1 %92, label %93, label %94

93:                                               ; preds = %90, %84
  store i32 0, i32* %2, align 4
  br label %109

94:                                               ; preds = %90
  %95 = call i32 @bzero(%struct.fw_device* %4, i32 32)
  %96 = load %struct.firewire_comm*, %struct.firewire_comm** %3, align 8
  %97 = getelementptr inbounds %struct.fw_device, %struct.fw_device* %4, i32 0, i32 4
  store %struct.firewire_comm* %96, %struct.firewire_comm** %97, align 8
  %98 = load i32, i32* %6, align 4
  %99 = getelementptr inbounds %struct.fw_device, %struct.fw_device* %4, i32 0, i32 0
  store i32 %98, i32* %99, align 8
  %100 = getelementptr inbounds %struct.fw_device, %struct.fw_device* %4, i32 0, i32 3
  store i64 0, i64* %100, align 8
  %101 = getelementptr inbounds %struct.fw_device, %struct.fw_device* %4, i32 0, i32 1
  store i32 8, i32* %101, align 4
  %102 = load i32, i32* @FWDEVINIT, align 4
  %103 = getelementptr inbounds %struct.fw_device, %struct.fw_device* %4, i32 0, i32 2
  store i32 %102, i32* %103, align 8
  %104 = call i32 @htonl(i32 256)
  store i32 %104, i32* %7, align 4
  %105 = load i32, i32* @STATE_SET, align 4
  %106 = or i32 -268435456, %105
  %107 = load i32, i32* @fw_asy_callback_free, align 4
  %108 = call i32 @fwmem_write_quad(%struct.fw_device* %4, i32* null, i32 0, i32 65535, i32 %106, i32* %7, i32 %107)
  store i32 0, i32* %2, align 4
  br label %109

109:                                              ; preds = %94, %93, %67
  %110 = load i32, i32* %2, align 4
  ret i32 %110
}

declare dso_local %union.fw_self_id* @fw_find_self_id(%struct.firewire_comm*, i32) #1

declare dso_local i32 @device_printf(i32, i8*, ...) #1

declare dso_local i32 @CSRARC(%struct.firewire_comm*, i32) #1

declare dso_local i32 @fw_phy_config(%struct.firewire_comm*, i32, i32) #1

declare dso_local i32 @bzero(%struct.fw_device*, i32) #1

declare dso_local i32 @htonl(i32) #1

declare dso_local i32 @fwmem_write_quad(%struct.fw_device*, i32*, i32, i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
