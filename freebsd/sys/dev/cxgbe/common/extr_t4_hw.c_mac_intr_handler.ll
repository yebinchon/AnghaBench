; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/common/extr_t4_hw.c_mac_intr_handler.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/common/extr_t4_hw.c_mac_intr_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intr_details = type { i32, i8* }
%struct.adapter = type { i32 }
%struct.intr_info = type { i8*, i32, i32*, %struct.intr_details*, i64, i8*, i8* }

@mac_intr_handler.mac_intr_details = internal constant [3 x %struct.intr_details] [%struct.intr_details { i32 128, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i32 0, i32 0) }, %struct.intr_details { i32 129, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i32 0, i32 0) }, %struct.intr_details zeroinitializer], align 16
@.str = private unnamed_addr constant [25 x i8] c"MAC Tx FIFO parity error\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"MAC Rx FIFO parity error\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"XGMAC_PORT%u_INT_CAUSE\00", align 1
@A_XGMAC_PORT_INT_CAUSE = common dso_local global i32 0, align 4
@A_XGMAC_PORT_INT_EN = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [21 x i8] c"MAC_PORT%u_INT_CAUSE\00", align 1
@A_MAC_PORT_INT_CAUSE = common dso_local global i32 0, align 4
@A_MAC_PORT_INT_EN = common dso_local global i32 0, align 4
@CHELSIO_T5 = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [26 x i8] c"MAC_PORT%u_PERR_INT_CAUSE\00", align 1
@A_MAC_PORT_PERR_INT_CAUSE = common dso_local global i32 0, align 4
@A_MAC_PORT_PERR_INT_EN = common dso_local global i32 0, align 4
@CHELSIO_T6 = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [31 x i8] c"MAC_PORT%u_PERR_INT_CAUSE_100G\00", align 1
@A_MAC_PORT_PERR_INT_CAUSE_100G = common dso_local global i32 0, align 4
@A_MAC_PORT_PERR_INT_EN_100G = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.adapter*, i32, i32)* @mac_intr_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mac_intr_handler(%struct.adapter* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.adapter*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca [32 x i8], align 16
  %8 = alloca %struct.intr_info, align 8
  %9 = alloca i32, align 4
  store %struct.adapter* %0, %struct.adapter** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %9, align 4
  %10 = load %struct.adapter*, %struct.adapter** %4, align 8
  %11 = call i64 @is_t4(%struct.adapter* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %31

13:                                               ; preds = %3
  %14 = getelementptr inbounds [32 x i8], [32 x i8]* %7, i64 0, i64 0
  %15 = load i32, i32* %5, align 4
  %16 = call i32 @snprintf(i8* %14, i32 32, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i32 %15)
  %17 = getelementptr inbounds [32 x i8], [32 x i8]* %7, i64 0, i64 0
  %18 = getelementptr inbounds %struct.intr_info, %struct.intr_info* %8, i32 0, i32 0
  store i8* %17, i8** %18, align 8
  %19 = load i32, i32* %5, align 4
  %20 = load i32, i32* @A_XGMAC_PORT_INT_CAUSE, align 4
  %21 = call i8* @PORT_REG(i32 %19, i32 %20)
  %22 = getelementptr inbounds %struct.intr_info, %struct.intr_info* %8, i32 0, i32 6
  store i8* %21, i8** %22, align 8
  %23 = load i32, i32* %5, align 4
  %24 = load i32, i32* @A_XGMAC_PORT_INT_EN, align 4
  %25 = call i8* @PORT_REG(i32 %23, i32 %24)
  %26 = getelementptr inbounds %struct.intr_info, %struct.intr_info* %8, i32 0, i32 5
  store i8* %25, i8** %26, align 8
  %27 = getelementptr inbounds %struct.intr_info, %struct.intr_info* %8, i32 0, i32 1
  store i32 129, i32* %27, align 8
  %28 = getelementptr inbounds %struct.intr_info, %struct.intr_info* %8, i32 0, i32 4
  store i64 0, i64* %28, align 8
  %29 = getelementptr inbounds %struct.intr_info, %struct.intr_info* %8, i32 0, i32 3
  store %struct.intr_details* getelementptr inbounds ([3 x %struct.intr_details], [3 x %struct.intr_details]* @mac_intr_handler.mac_intr_details, i64 0, i64 0), %struct.intr_details** %29, align 8
  %30 = getelementptr inbounds %struct.intr_info, %struct.intr_info* %8, i32 0, i32 2
  store i32* null, i32** %30, align 8
  br label %49

31:                                               ; preds = %3
  %32 = getelementptr inbounds [32 x i8], [32 x i8]* %7, i64 0, i64 0
  %33 = load i32, i32* %5, align 4
  %34 = call i32 @snprintf(i8* %32, i32 32, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i32 %33)
  %35 = getelementptr inbounds [32 x i8], [32 x i8]* %7, i64 0, i64 0
  %36 = getelementptr inbounds %struct.intr_info, %struct.intr_info* %8, i32 0, i32 0
  store i8* %35, i8** %36, align 8
  %37 = load i32, i32* %5, align 4
  %38 = load i32, i32* @A_MAC_PORT_INT_CAUSE, align 4
  %39 = call i8* @T5_PORT_REG(i32 %37, i32 %38)
  %40 = getelementptr inbounds %struct.intr_info, %struct.intr_info* %8, i32 0, i32 6
  store i8* %39, i8** %40, align 8
  %41 = load i32, i32* %5, align 4
  %42 = load i32, i32* @A_MAC_PORT_INT_EN, align 4
  %43 = call i8* @T5_PORT_REG(i32 %41, i32 %42)
  %44 = getelementptr inbounds %struct.intr_info, %struct.intr_info* %8, i32 0, i32 5
  store i8* %43, i8** %44, align 8
  %45 = getelementptr inbounds %struct.intr_info, %struct.intr_info* %8, i32 0, i32 1
  store i32 129, i32* %45, align 8
  %46 = getelementptr inbounds %struct.intr_info, %struct.intr_info* %8, i32 0, i32 4
  store i64 0, i64* %46, align 8
  %47 = getelementptr inbounds %struct.intr_info, %struct.intr_info* %8, i32 0, i32 3
  store %struct.intr_details* getelementptr inbounds ([3 x %struct.intr_details], [3 x %struct.intr_details]* @mac_intr_handler.mac_intr_details, i64 0, i64 0), %struct.intr_details** %47, align 8
  %48 = getelementptr inbounds %struct.intr_info, %struct.intr_info* %8, i32 0, i32 2
  store i32* null, i32** %48, align 8
  br label %49

49:                                               ; preds = %31, %13
  %50 = load %struct.adapter*, %struct.adapter** %4, align 8
  %51 = load i32, i32* %6, align 4
  %52 = call i32 @t4_handle_intr(%struct.adapter* %50, %struct.intr_info* %8, i32 0, i32 %51)
  %53 = load i32, i32* %9, align 4
  %54 = or i32 %53, %52
  store i32 %54, i32* %9, align 4
  %55 = load %struct.adapter*, %struct.adapter** %4, align 8
  %56 = call i64 @chip_id(%struct.adapter* %55)
  %57 = load i64, i64* @CHELSIO_T5, align 8
  %58 = icmp sge i64 %56, %57
  br i1 %58, label %59, label %82

59:                                               ; preds = %49
  %60 = getelementptr inbounds [32 x i8], [32 x i8]* %7, i64 0, i64 0
  %61 = load i32, i32* %5, align 4
  %62 = call i32 @snprintf(i8* %60, i32 32, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0), i32 %61)
  %63 = getelementptr inbounds [32 x i8], [32 x i8]* %7, i64 0, i64 0
  %64 = getelementptr inbounds %struct.intr_info, %struct.intr_info* %8, i32 0, i32 0
  store i8* %63, i8** %64, align 8
  %65 = load i32, i32* %5, align 4
  %66 = load i32, i32* @A_MAC_PORT_PERR_INT_CAUSE, align 4
  %67 = call i8* @T5_PORT_REG(i32 %65, i32 %66)
  %68 = getelementptr inbounds %struct.intr_info, %struct.intr_info* %8, i32 0, i32 6
  store i8* %67, i8** %68, align 8
  %69 = load i32, i32* %5, align 4
  %70 = load i32, i32* @A_MAC_PORT_PERR_INT_EN, align 4
  %71 = call i8* @T5_PORT_REG(i32 %69, i32 %70)
  %72 = getelementptr inbounds %struct.intr_info, %struct.intr_info* %8, i32 0, i32 5
  store i8* %71, i8** %72, align 8
  %73 = getelementptr inbounds %struct.intr_info, %struct.intr_info* %8, i32 0, i32 1
  store i32 0, i32* %73, align 8
  %74 = getelementptr inbounds %struct.intr_info, %struct.intr_info* %8, i32 0, i32 4
  store i64 0, i64* %74, align 8
  %75 = getelementptr inbounds %struct.intr_info, %struct.intr_info* %8, i32 0, i32 3
  store %struct.intr_details* null, %struct.intr_details** %75, align 8
  %76 = getelementptr inbounds %struct.intr_info, %struct.intr_info* %8, i32 0, i32 2
  store i32* null, i32** %76, align 8
  %77 = load %struct.adapter*, %struct.adapter** %4, align 8
  %78 = load i32, i32* %6, align 4
  %79 = call i32 @t4_handle_intr(%struct.adapter* %77, %struct.intr_info* %8, i32 0, i32 %78)
  %80 = load i32, i32* %9, align 4
  %81 = or i32 %80, %79
  store i32 %81, i32* %9, align 4
  br label %82

82:                                               ; preds = %59, %49
  %83 = load %struct.adapter*, %struct.adapter** %4, align 8
  %84 = call i64 @chip_id(%struct.adapter* %83)
  %85 = load i64, i64* @CHELSIO_T6, align 8
  %86 = icmp sge i64 %84, %85
  br i1 %86, label %87, label %110

87:                                               ; preds = %82
  %88 = getelementptr inbounds [32 x i8], [32 x i8]* %7, i64 0, i64 0
  %89 = load i32, i32* %5, align 4
  %90 = call i32 @snprintf(i8* %88, i32 32, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0), i32 %89)
  %91 = getelementptr inbounds [32 x i8], [32 x i8]* %7, i64 0, i64 0
  %92 = getelementptr inbounds %struct.intr_info, %struct.intr_info* %8, i32 0, i32 0
  store i8* %91, i8** %92, align 8
  %93 = load i32, i32* %5, align 4
  %94 = load i32, i32* @A_MAC_PORT_PERR_INT_CAUSE_100G, align 4
  %95 = call i8* @T5_PORT_REG(i32 %93, i32 %94)
  %96 = getelementptr inbounds %struct.intr_info, %struct.intr_info* %8, i32 0, i32 6
  store i8* %95, i8** %96, align 8
  %97 = load i32, i32* %5, align 4
  %98 = load i32, i32* @A_MAC_PORT_PERR_INT_EN_100G, align 4
  %99 = call i8* @T5_PORT_REG(i32 %97, i32 %98)
  %100 = getelementptr inbounds %struct.intr_info, %struct.intr_info* %8, i32 0, i32 5
  store i8* %99, i8** %100, align 8
  %101 = getelementptr inbounds %struct.intr_info, %struct.intr_info* %8, i32 0, i32 1
  store i32 0, i32* %101, align 8
  %102 = getelementptr inbounds %struct.intr_info, %struct.intr_info* %8, i32 0, i32 4
  store i64 0, i64* %102, align 8
  %103 = getelementptr inbounds %struct.intr_info, %struct.intr_info* %8, i32 0, i32 3
  store %struct.intr_details* null, %struct.intr_details** %103, align 8
  %104 = getelementptr inbounds %struct.intr_info, %struct.intr_info* %8, i32 0, i32 2
  store i32* null, i32** %104, align 8
  %105 = load %struct.adapter*, %struct.adapter** %4, align 8
  %106 = load i32, i32* %6, align 4
  %107 = call i32 @t4_handle_intr(%struct.adapter* %105, %struct.intr_info* %8, i32 0, i32 %106)
  %108 = load i32, i32* %9, align 4
  %109 = or i32 %108, %107
  store i32 %109, i32* %9, align 4
  br label %110

110:                                              ; preds = %87, %82
  %111 = load i32, i32* %9, align 4
  ret i32 %111
}

declare dso_local i64 @is_t4(%struct.adapter*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local i8* @PORT_REG(i32, i32) #1

declare dso_local i8* @T5_PORT_REG(i32, i32) #1

declare dso_local i32 @t4_handle_intr(%struct.adapter*, %struct.intr_info*, i32, i32) #1

declare dso_local i64 @chip_id(%struct.adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
