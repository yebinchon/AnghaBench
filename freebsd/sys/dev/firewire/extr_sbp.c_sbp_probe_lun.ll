; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/firewire/extr_sbp.c_sbp_probe_lun.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/firewire/extr_sbp.c_sbp_probe_lun.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sbp_dev = type { i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.fw_device* }
%struct.fw_device = type { i32 }
%struct.crom_context = type { i32 }
%struct.csrreg = type { i64 }

@CSRKEY_VENDOR = common dso_local global i32 0, align 4
@CSRKEY_VER = common dso_local global i32 0, align 4
@CSRVAL_T10SBP2 = common dso_local global i64 0, align 8
@CSRKEY_FIRM_VER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"%06x\00", align 1
@CSRKEY_MODEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sbp_dev*)* @sbp_probe_lun to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sbp_probe_lun(%struct.sbp_dev* %0) #0 {
  %2 = alloca %struct.sbp_dev*, align 8
  %3 = alloca %struct.fw_device*, align 8
  %4 = alloca %struct.crom_context, align 4
  %5 = alloca %struct.crom_context*, align 8
  %6 = alloca %struct.csrreg*, align 8
  store %struct.sbp_dev* %0, %struct.sbp_dev** %2, align 8
  store %struct.crom_context* %4, %struct.crom_context** %5, align 8
  %7 = load %struct.sbp_dev*, %struct.sbp_dev** %2, align 8
  %8 = getelementptr inbounds %struct.sbp_dev, %struct.sbp_dev* %7, i32 0, i32 2
  %9 = load i32, i32* %8, align 8
  %10 = call i32 @bzero(i32 %9, i32 4)
  %11 = load %struct.sbp_dev*, %struct.sbp_dev** %2, align 8
  %12 = getelementptr inbounds %struct.sbp_dev, %struct.sbp_dev* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = call i32 @bzero(i32 %13, i32 4)
  %15 = load %struct.sbp_dev*, %struct.sbp_dev** %2, align 8
  %16 = getelementptr inbounds %struct.sbp_dev, %struct.sbp_dev* %15, i32 0, i32 3
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load %struct.fw_device*, %struct.fw_device** %18, align 8
  store %struct.fw_device* %19, %struct.fw_device** %3, align 8
  %20 = load %struct.crom_context*, %struct.crom_context** %5, align 8
  %21 = load %struct.fw_device*, %struct.fw_device** %3, align 8
  %22 = getelementptr inbounds %struct.fw_device, %struct.fw_device* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @crom_init_context(%struct.crom_context* %20, i32 %23)
  %25 = load %struct.crom_context*, %struct.crom_context** %5, align 8
  %26 = load i32, i32* @CSRKEY_VENDOR, align 4
  %27 = call %struct.csrreg* @crom_search_key(%struct.crom_context* %25, i32 %26)
  %28 = load %struct.crom_context*, %struct.crom_context** %5, align 8
  %29 = call i32 @crom_next(%struct.crom_context* %28)
  %30 = load %struct.crom_context*, %struct.crom_context** %5, align 8
  %31 = load %struct.sbp_dev*, %struct.sbp_dev** %2, align 8
  %32 = getelementptr inbounds %struct.sbp_dev, %struct.sbp_dev* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @crom_parse_text(%struct.crom_context* %30, i32 %33, i32 4)
  br label %35

35:                                               ; preds = %47, %1
  %36 = load %struct.crom_context*, %struct.crom_context** %5, align 8
  %37 = load i32, i32* @CSRKEY_VER, align 4
  %38 = call %struct.csrreg* @crom_search_key(%struct.crom_context* %36, i32 %37)
  store %struct.csrreg* %38, %struct.csrreg** %6, align 8
  %39 = icmp ne %struct.csrreg* %38, null
  br i1 %39, label %40, label %50

40:                                               ; preds = %35
  %41 = load %struct.csrreg*, %struct.csrreg** %6, align 8
  %42 = getelementptr inbounds %struct.csrreg, %struct.csrreg* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @CSRVAL_T10SBP2, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %40
  br label %50

47:                                               ; preds = %40
  %48 = load %struct.crom_context*, %struct.crom_context** %5, align 8
  %49 = call i32 @crom_next(%struct.crom_context* %48)
  br label %35

50:                                               ; preds = %46, %35
  %51 = load %struct.crom_context*, %struct.crom_context** %5, align 8
  %52 = load i32, i32* @CSRKEY_FIRM_VER, align 4
  %53 = call %struct.csrreg* @crom_search_key(%struct.crom_context* %51, i32 %52)
  store %struct.csrreg* %53, %struct.csrreg** %6, align 8
  %54 = load %struct.csrreg*, %struct.csrreg** %6, align 8
  %55 = icmp ne %struct.csrreg* %54, null
  br i1 %55, label %56, label %64

56:                                               ; preds = %50
  %57 = load %struct.sbp_dev*, %struct.sbp_dev** %2, align 8
  %58 = getelementptr inbounds %struct.sbp_dev, %struct.sbp_dev* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.csrreg*, %struct.csrreg** %6, align 8
  %61 = getelementptr inbounds %struct.csrreg, %struct.csrreg* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = call i32 @snprintf(i32 %59, i32 4, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i64 %62)
  br label %64

64:                                               ; preds = %56, %50
  %65 = load %struct.crom_context*, %struct.crom_context** %5, align 8
  %66 = load i32, i32* @CSRKEY_MODEL, align 4
  %67 = call %struct.csrreg* @crom_search_key(%struct.crom_context* %65, i32 %66)
  %68 = load %struct.crom_context*, %struct.crom_context** %5, align 8
  %69 = call i32 @crom_next(%struct.crom_context* %68)
  %70 = load %struct.crom_context*, %struct.crom_context** %5, align 8
  %71 = load %struct.sbp_dev*, %struct.sbp_dev** %2, align 8
  %72 = getelementptr inbounds %struct.sbp_dev, %struct.sbp_dev* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = call i32 @crom_parse_text(%struct.crom_context* %70, i32 %73, i32 4)
  ret void
}

declare dso_local i32 @bzero(i32, i32) #1

declare dso_local i32 @crom_init_context(%struct.crom_context*, i32) #1

declare dso_local %struct.csrreg* @crom_search_key(%struct.crom_context*, i32) #1

declare dso_local i32 @crom_next(%struct.crom_context*) #1

declare dso_local i32 @crom_parse_text(%struct.crom_context*, i32, i32) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
