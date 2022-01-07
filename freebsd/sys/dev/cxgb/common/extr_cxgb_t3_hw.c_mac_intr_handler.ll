; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cxgb/common/extr_cxgb_t3_hw.c_mac_intr_handler.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cxgb/common/extr_cxgb_t3_hw.c_mac_intr_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.port_info = type { i32, %struct.cmac }
%struct.cmac = type { i64, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_4__ = type { i32 }

@A_XGM_INT_CAUSE = common dso_local global i64 0, align 8
@F_RXFIFO_OVERFLOW = common dso_local global i32 0, align 4
@M_TXFIFO_PRTY_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"port%d: MAC TX FIFO parity error\0A\00", align 1
@M_RXFIFO_PRTY_ERR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"port%d: MAC RX FIFO parity error\0A\00", align 1
@F_TXFIFO_UNDERRUN = common dso_local global i32 0, align 4
@M_SERDES_LOS = common dso_local global i32 0, align 4
@F_XAUIPCSCTCERR = common dso_local global i32 0, align 4
@F_XAUIPCSALIGNCHANGE = common dso_local global i32 0, align 4
@F_XGM_INT = common dso_local global i32 0, align 4
@A_XGM_INT_ENABLE = common dso_local global i64 0, align 8
@LF_MAYBE = common dso_local global i32 0, align 4
@XGM_INTR_FATAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32)* @mac_intr_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mac_intr_handler(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.port_info*, align 8
  %7 = alloca %struct.cmac*, align 8
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load i32, i32* %4, align 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  br label %16

11:                                               ; preds = %2
  %12 = load i32*, i32** %3, align 8
  %13 = call %struct.TYPE_4__* @adapter_info(i32* %12)
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  br label %16

16:                                               ; preds = %11, %10
  %17 = phi i32 [ 0, %10 ], [ %15, %11 ]
  store i32 %17, i32* %4, align 4
  %18 = load i32*, i32** %3, align 8
  %19 = load i32, i32* %4, align 4
  %20 = call %struct.port_info* @adap2pinfo(i32* %18, i32 %19)
  store %struct.port_info* %20, %struct.port_info** %6, align 8
  %21 = load %struct.port_info*, %struct.port_info** %6, align 8
  %22 = getelementptr inbounds %struct.port_info, %struct.port_info* %21, i32 0, i32 1
  store %struct.cmac* %22, %struct.cmac** %7, align 8
  %23 = load i32*, i32** %3, align 8
  %24 = load i64, i64* @A_XGM_INT_CAUSE, align 8
  %25 = load %struct.cmac*, %struct.cmac** %7, align 8
  %26 = getelementptr inbounds %struct.cmac, %struct.cmac* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = add nsw i64 %24, %27
  %29 = call i32 @t3_read_reg(i32* %23, i64 %28)
  %30 = load i32, i32* @F_RXFIFO_OVERFLOW, align 4
  %31 = xor i32 %30, -1
  %32 = and i32 %29, %31
  store i32 %32, i32* %5, align 4
  %33 = load i32, i32* %5, align 4
  %34 = load i32, i32* @M_TXFIFO_PRTY_ERR, align 4
  %35 = call i32 @V_TXFIFO_PRTY_ERR(i32 %34)
  %36 = and i32 %33, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %47

38:                                               ; preds = %16
  %39 = load %struct.cmac*, %struct.cmac** %7, align 8
  %40 = getelementptr inbounds %struct.cmac, %struct.cmac* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 6
  %42 = load i32, i32* %41, align 8
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %41, align 8
  %44 = load i32*, i32** %3, align 8
  %45 = load i32, i32* %4, align 4
  %46 = call i32 @CH_ALERT(i32* %44, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %45)
  br label %47

47:                                               ; preds = %38, %16
  %48 = load i32, i32* %5, align 4
  %49 = load i32, i32* @M_RXFIFO_PRTY_ERR, align 4
  %50 = call i32 @V_RXFIFO_PRTY_ERR(i32 %49)
  %51 = and i32 %48, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %62

53:                                               ; preds = %47
  %54 = load %struct.cmac*, %struct.cmac** %7, align 8
  %55 = getelementptr inbounds %struct.cmac, %struct.cmac* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 5
  %57 = load i32, i32* %56, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %56, align 4
  %59 = load i32*, i32** %3, align 8
  %60 = load i32, i32* %4, align 4
  %61 = call i32 @CH_ALERT(i32* %59, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %60)
  br label %62

62:                                               ; preds = %53, %47
  %63 = load i32, i32* %5, align 4
  %64 = load i32, i32* @F_TXFIFO_UNDERRUN, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %73

67:                                               ; preds = %62
  %68 = load %struct.cmac*, %struct.cmac** %7, align 8
  %69 = getelementptr inbounds %struct.cmac, %struct.cmac* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 4
  %71 = load i32, i32* %70, align 8
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %70, align 8
  br label %73

73:                                               ; preds = %67, %62
  %74 = load i32, i32* %5, align 4
  %75 = load i32, i32* @F_RXFIFO_OVERFLOW, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %84

78:                                               ; preds = %73
  %79 = load %struct.cmac*, %struct.cmac** %7, align 8
  %80 = getelementptr inbounds %struct.cmac, %struct.cmac* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i32 0, i32 3
  %82 = load i32, i32* %81, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %81, align 4
  br label %84

84:                                               ; preds = %78, %73
  %85 = load i32, i32* %5, align 4
  %86 = load i32, i32* @M_SERDES_LOS, align 4
  %87 = call i32 @V_SERDES_LOS(i32 %86)
  %88 = and i32 %85, %87
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %96

90:                                               ; preds = %84
  %91 = load %struct.cmac*, %struct.cmac** %7, align 8
  %92 = getelementptr inbounds %struct.cmac, %struct.cmac* %91, i32 0, i32 1
  %93 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 8
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %93, align 8
  br label %96

96:                                               ; preds = %90, %84
  %97 = load i32, i32* %5, align 4
  %98 = load i32, i32* @F_XAUIPCSCTCERR, align 4
  %99 = and i32 %97, %98
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %107

101:                                              ; preds = %96
  %102 = load %struct.cmac*, %struct.cmac** %7, align 8
  %103 = getelementptr inbounds %struct.cmac, %struct.cmac* %102, i32 0, i32 1
  %104 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %104, align 4
  br label %107

107:                                              ; preds = %101, %96
  %108 = load i32, i32* %5, align 4
  %109 = load i32, i32* @F_XAUIPCSALIGNCHANGE, align 4
  %110 = and i32 %108, %109
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %118

112:                                              ; preds = %107
  %113 = load %struct.cmac*, %struct.cmac** %7, align 8
  %114 = getelementptr inbounds %struct.cmac, %struct.cmac* %113, i32 0, i32 1
  %115 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* %115, align 8
  br label %118

118:                                              ; preds = %112, %107
  %119 = load i32, i32* %5, align 4
  %120 = load i32, i32* @F_XGM_INT, align 4
  %121 = and i32 %119, %120
  %122 = load i32*, i32** %3, align 8
  %123 = load i64, i64* @A_XGM_INT_ENABLE, align 8
  %124 = load %struct.cmac*, %struct.cmac** %7, align 8
  %125 = getelementptr inbounds %struct.cmac, %struct.cmac* %124, i32 0, i32 0
  %126 = load i64, i64* %125, align 8
  %127 = add nsw i64 %123, %126
  %128 = call i32 @t3_read_reg(i32* %122, i64 %127)
  %129 = and i32 %121, %128
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %145

131:                                              ; preds = %118
  %132 = load i32*, i32** %3, align 8
  %133 = load i64, i64* @A_XGM_INT_ENABLE, align 8
  %134 = load %struct.cmac*, %struct.cmac** %7, align 8
  %135 = getelementptr inbounds %struct.cmac, %struct.cmac* %134, i32 0, i32 0
  %136 = load i64, i64* %135, align 8
  %137 = add nsw i64 %133, %136
  %138 = load i32, i32* @F_XGM_INT, align 4
  %139 = call i32 @t3_set_reg_field(i32* %132, i64 %137, i32 %138, i32 0)
  %140 = load i32, i32* @LF_MAYBE, align 4
  %141 = load %struct.port_info*, %struct.port_info** %6, align 8
  %142 = getelementptr inbounds %struct.port_info, %struct.port_info* %141, i32 0, i32 0
  store i32 %140, i32* %142, align 8
  %143 = load %struct.port_info*, %struct.port_info** %6, align 8
  %144 = call i32 @t3_os_link_intr(%struct.port_info* %143)
  br label %145

145:                                              ; preds = %131, %118
  %146 = load i32, i32* %5, align 4
  %147 = load i32, i32* @XGM_INTR_FATAL, align 4
  %148 = and i32 %146, %147
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %153

150:                                              ; preds = %145
  %151 = load i32*, i32** %3, align 8
  %152 = call i32 @t3_fatal_err(i32* %151)
  br label %153

153:                                              ; preds = %150, %145
  %154 = load i32*, i32** %3, align 8
  %155 = load i64, i64* @A_XGM_INT_CAUSE, align 8
  %156 = load %struct.cmac*, %struct.cmac** %7, align 8
  %157 = getelementptr inbounds %struct.cmac, %struct.cmac* %156, i32 0, i32 0
  %158 = load i64, i64* %157, align 8
  %159 = add nsw i64 %155, %158
  %160 = load i32, i32* %5, align 4
  %161 = call i32 @t3_write_reg(i32* %154, i64 %159, i32 %160)
  %162 = load i32, i32* %5, align 4
  %163 = icmp ne i32 %162, 0
  %164 = zext i1 %163 to i32
  ret i32 %164
}

declare dso_local %struct.TYPE_4__* @adapter_info(i32*) #1

declare dso_local %struct.port_info* @adap2pinfo(i32*, i32) #1

declare dso_local i32 @t3_read_reg(i32*, i64) #1

declare dso_local i32 @V_TXFIFO_PRTY_ERR(i32) #1

declare dso_local i32 @CH_ALERT(i32*, i8*, i32) #1

declare dso_local i32 @V_RXFIFO_PRTY_ERR(i32) #1

declare dso_local i32 @V_SERDES_LOS(i32) #1

declare dso_local i32 @t3_set_reg_field(i32*, i64, i32, i32) #1

declare dso_local i32 @t3_os_link_intr(%struct.port_info*) #1

declare dso_local i32 @t3_fatal_err(i32*) #1

declare dso_local i32 @t3_write_reg(i32*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
