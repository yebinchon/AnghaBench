; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/fwcontrol/extr_fwcontrol.c_dump_phy_registers.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/fwcontrol/extr_fwcontrol.c_dump_phy_registers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phyreg_base = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.phyreg_page0 = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.phyreg_page1 = type { i32, i32*, i32* }

@.str = private unnamed_addr constant [23 x i8] c"=== base register ===\0A\00", align 1
@.str.1 = private unnamed_addr constant [270 x i8] c"Physical_ID:%d  R:%d  CPS:%d\0ARHB:%d  IBR:%d  Gap_Count:%d\0AExtended:%d Num_Ports:%d\0APHY_Speed:%d Delay:%d\0ALCtrl:%d C:%d Jitter:%d Pwr_Class:%d\0AWDIE:%d ISBR:%d CTOI:%d CPSI:%d STOI:%d PEI:%d EAA:%d EMC:%d\0AMax_Legacy_SPD:%d BLINK:%d Bridge:%d\0APage_Select:%d Port_Select%d\0A\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"\0A=== page 0 port %d ===\0A\00", align 1
@.str.3 = private unnamed_addr constant [276 x i8] c"Astat:%d BStat:%d Ch:%d Con:%d RXOK:%d Dis:%d\0ANegotiated_speed:%d PIE:%d Fault:%d Stanby_fault:%d Disscrm:%d B_Only:%d\0ADC_connected:%d Max_port_speed:%d LPP:%d Cable_speed:%d\0AConnection_unreliable:%d Beta_mode:%d\0APort_error:0x%x\0ALoop_disable:%d In_standby:%d Hard_disable:%d\0A\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"\0A=== page 1 ===\0A\00", align 1
@.str.5 = private unnamed_addr constant [50 x i8] c"Compliance:%d\0AVendor_ID:0x%06x\0AProduct_ID:0x%06x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @dump_phy_registers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dump_phy_registers(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.phyreg_base, align 4
  %4 = alloca %struct.phyreg_page0, align 4
  %5 = alloca %struct.phyreg_page1, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %7 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %8 = load i32, i32* %2, align 4
  %9 = bitcast %struct.phyreg_base* %3 to i32*
  %10 = call i32 @read_phy_registers(i32 %8, i32* %9, i32 0, i32 8)
  %11 = getelementptr inbounds %struct.phyreg_base, %struct.phyreg_base* %3, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = getelementptr inbounds %struct.phyreg_base, %struct.phyreg_base* %3, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = getelementptr inbounds %struct.phyreg_base, %struct.phyreg_base* %3, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = getelementptr inbounds %struct.phyreg_base, %struct.phyreg_base* %3, i32 0, i32 3
  %18 = load i32, i32* %17, align 4
  %19 = getelementptr inbounds %struct.phyreg_base, %struct.phyreg_base* %3, i32 0, i32 4
  %20 = load i32, i32* %19, align 4
  %21 = getelementptr inbounds %struct.phyreg_base, %struct.phyreg_base* %3, i32 0, i32 5
  %22 = load i32, i32* %21, align 4
  %23 = getelementptr inbounds %struct.phyreg_base, %struct.phyreg_base* %3, i32 0, i32 6
  %24 = load i32, i32* %23, align 4
  %25 = getelementptr inbounds %struct.phyreg_base, %struct.phyreg_base* %3, i32 0, i32 7
  %26 = load i32, i32* %25, align 4
  %27 = getelementptr inbounds %struct.phyreg_base, %struct.phyreg_base* %3, i32 0, i32 8
  %28 = load i32, i32* %27, align 4
  %29 = getelementptr inbounds %struct.phyreg_base, %struct.phyreg_base* %3, i32 0, i32 9
  %30 = load i32, i32* %29, align 4
  %31 = getelementptr inbounds %struct.phyreg_base, %struct.phyreg_base* %3, i32 0, i32 10
  %32 = load i32, i32* %31, align 4
  %33 = getelementptr inbounds %struct.phyreg_base, %struct.phyreg_base* %3, i32 0, i32 11
  %34 = load i32, i32* %33, align 4
  %35 = getelementptr inbounds %struct.phyreg_base, %struct.phyreg_base* %3, i32 0, i32 12
  %36 = load i32, i32* %35, align 4
  %37 = getelementptr inbounds %struct.phyreg_base, %struct.phyreg_base* %3, i32 0, i32 13
  %38 = load i32, i32* %37, align 4
  %39 = getelementptr inbounds %struct.phyreg_base, %struct.phyreg_base* %3, i32 0, i32 14
  %40 = load i32, i32* %39, align 4
  %41 = getelementptr inbounds %struct.phyreg_base, %struct.phyreg_base* %3, i32 0, i32 15
  %42 = load i32, i32* %41, align 4
  %43 = getelementptr inbounds %struct.phyreg_base, %struct.phyreg_base* %3, i32 0, i32 16
  %44 = load i32, i32* %43, align 4
  %45 = getelementptr inbounds %struct.phyreg_base, %struct.phyreg_base* %3, i32 0, i32 17
  %46 = load i32, i32* %45, align 4
  %47 = getelementptr inbounds %struct.phyreg_base, %struct.phyreg_base* %3, i32 0, i32 18
  %48 = load i32, i32* %47, align 4
  %49 = getelementptr inbounds %struct.phyreg_base, %struct.phyreg_base* %3, i32 0, i32 19
  %50 = load i32, i32* %49, align 4
  %51 = getelementptr inbounds %struct.phyreg_base, %struct.phyreg_base* %3, i32 0, i32 20
  %52 = load i32, i32* %51, align 4
  %53 = getelementptr inbounds %struct.phyreg_base, %struct.phyreg_base* %3, i32 0, i32 21
  %54 = load i32, i32* %53, align 4
  %55 = getelementptr inbounds %struct.phyreg_base, %struct.phyreg_base* %3, i32 0, i32 22
  %56 = load i32, i32* %55, align 4
  %57 = getelementptr inbounds %struct.phyreg_base, %struct.phyreg_base* %3, i32 0, i32 23
  %58 = load i32, i32* %57, align 4
  %59 = getelementptr inbounds %struct.phyreg_base, %struct.phyreg_base* %3, i32 0, i32 24
  %60 = load i32, i32* %59, align 4
  %61 = getelementptr inbounds %struct.phyreg_base, %struct.phyreg_base* %3, i32 0, i32 25
  %62 = load i32, i32* %61, align 4
  %63 = getelementptr inbounds %struct.phyreg_base, %struct.phyreg_base* %3, i32 0, i32 26
  %64 = load i32, i32* %63, align 4
  %65 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([270 x i8], [270 x i8]* @.str.1, i64 0, i64 0), i32 %12, i32 %14, i32 %16, i32 %18, i32 %20, i32 %22, i32 %24, i32 %26, i32 %28, i32 %30, i32 %32, i32 %34, i32 %36, i32 %38, i32 %40, i32 %42, i32 %44, i32 %46, i32 %48, i32 %50, i32 %52, i32 %54, i32 %56, i32 %58, i32 %60, i32 %62, i32 %64)
  store i32 0, i32* %6, align 4
  br label %66

66:                                               ; preds = %123, %1
  %67 = load i32, i32* %6, align 4
  %68 = getelementptr inbounds %struct.phyreg_base, %struct.phyreg_base* %3, i32 0, i32 7
  %69 = load i32, i32* %68, align 4
  %70 = icmp slt i32 %67, %69
  br i1 %70, label %71, label %126

71:                                               ; preds = %66
  %72 = load i32, i32* %6, align 4
  %73 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 %72)
  %74 = load i32, i32* %2, align 4
  %75 = bitcast %struct.phyreg_page0* %4 to i32*
  %76 = load i32, i32* %6, align 4
  %77 = call i32 @read_phy_page(i32 %74, i32* %75, i32 0, i32 %76)
  %78 = getelementptr inbounds %struct.phyreg_page0, %struct.phyreg_page0* %4, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = getelementptr inbounds %struct.phyreg_page0, %struct.phyreg_page0* %4, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = getelementptr inbounds %struct.phyreg_page0, %struct.phyreg_page0* %4, i32 0, i32 2
  %83 = load i32, i32* %82, align 4
  %84 = getelementptr inbounds %struct.phyreg_page0, %struct.phyreg_page0* %4, i32 0, i32 3
  %85 = load i32, i32* %84, align 4
  %86 = getelementptr inbounds %struct.phyreg_page0, %struct.phyreg_page0* %4, i32 0, i32 4
  %87 = load i32, i32* %86, align 4
  %88 = getelementptr inbounds %struct.phyreg_page0, %struct.phyreg_page0* %4, i32 0, i32 5
  %89 = load i32, i32* %88, align 4
  %90 = getelementptr inbounds %struct.phyreg_page0, %struct.phyreg_page0* %4, i32 0, i32 6
  %91 = load i32, i32* %90, align 4
  %92 = getelementptr inbounds %struct.phyreg_page0, %struct.phyreg_page0* %4, i32 0, i32 7
  %93 = load i32, i32* %92, align 4
  %94 = getelementptr inbounds %struct.phyreg_page0, %struct.phyreg_page0* %4, i32 0, i32 8
  %95 = load i32, i32* %94, align 4
  %96 = getelementptr inbounds %struct.phyreg_page0, %struct.phyreg_page0* %4, i32 0, i32 9
  %97 = load i32, i32* %96, align 4
  %98 = getelementptr inbounds %struct.phyreg_page0, %struct.phyreg_page0* %4, i32 0, i32 10
  %99 = load i32, i32* %98, align 4
  %100 = getelementptr inbounds %struct.phyreg_page0, %struct.phyreg_page0* %4, i32 0, i32 11
  %101 = load i32, i32* %100, align 4
  %102 = getelementptr inbounds %struct.phyreg_page0, %struct.phyreg_page0* %4, i32 0, i32 12
  %103 = load i32, i32* %102, align 4
  %104 = getelementptr inbounds %struct.phyreg_page0, %struct.phyreg_page0* %4, i32 0, i32 13
  %105 = load i32, i32* %104, align 4
  %106 = getelementptr inbounds %struct.phyreg_page0, %struct.phyreg_page0* %4, i32 0, i32 14
  %107 = load i32, i32* %106, align 4
  %108 = getelementptr inbounds %struct.phyreg_page0, %struct.phyreg_page0* %4, i32 0, i32 15
  %109 = load i32, i32* %108, align 4
  %110 = getelementptr inbounds %struct.phyreg_page0, %struct.phyreg_page0* %4, i32 0, i32 16
  %111 = load i32, i32* %110, align 4
  %112 = getelementptr inbounds %struct.phyreg_page0, %struct.phyreg_page0* %4, i32 0, i32 17
  %113 = load i32, i32* %112, align 4
  %114 = getelementptr inbounds %struct.phyreg_page0, %struct.phyreg_page0* %4, i32 0, i32 18
  %115 = load i32, i32* %114, align 4
  %116 = getelementptr inbounds %struct.phyreg_page0, %struct.phyreg_page0* %4, i32 0, i32 19
  %117 = load i32, i32* %116, align 4
  %118 = getelementptr inbounds %struct.phyreg_page0, %struct.phyreg_page0* %4, i32 0, i32 20
  %119 = load i32, i32* %118, align 4
  %120 = getelementptr inbounds %struct.phyreg_page0, %struct.phyreg_page0* %4, i32 0, i32 21
  %121 = load i32, i32* %120, align 4
  %122 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([276 x i8], [276 x i8]* @.str.3, i64 0, i64 0), i32 %79, i32 %81, i32 %83, i32 %85, i32 %87, i32 %89, i32 %91, i32 %93, i32 %95, i32 %97, i32 %99, i32 %101, i32 %103, i32 %105, i32 %107, i32 %109, i32 %111, i32 %113, i32 %115, i32 %117, i32 %119, i32 %121)
  br label %123

123:                                              ; preds = %71
  %124 = load i32, i32* %6, align 4
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* %6, align 4
  br label %66

126:                                              ; preds = %66
  %127 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0))
  %128 = load i32, i32* %2, align 4
  %129 = bitcast %struct.phyreg_page1* %5 to i32*
  %130 = call i32 @read_phy_page(i32 %128, i32* %129, i32 1, i32 0)
  %131 = getelementptr inbounds %struct.phyreg_page1, %struct.phyreg_page1* %5, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  %133 = getelementptr inbounds %struct.phyreg_page1, %struct.phyreg_page1* %5, i32 0, i32 1
  %134 = load i32*, i32** %133, align 8
  %135 = getelementptr inbounds i32, i32* %134, i64 0
  %136 = load i32, i32* %135, align 4
  %137 = shl i32 %136, 16
  %138 = getelementptr inbounds %struct.phyreg_page1, %struct.phyreg_page1* %5, i32 0, i32 1
  %139 = load i32*, i32** %138, align 8
  %140 = getelementptr inbounds i32, i32* %139, i64 1
  %141 = load i32, i32* %140, align 4
  %142 = shl i32 %141, 8
  %143 = or i32 %137, %142
  %144 = getelementptr inbounds %struct.phyreg_page1, %struct.phyreg_page1* %5, i32 0, i32 1
  %145 = load i32*, i32** %144, align 8
  %146 = getelementptr inbounds i32, i32* %145, i64 2
  %147 = load i32, i32* %146, align 4
  %148 = or i32 %143, %147
  %149 = getelementptr inbounds %struct.phyreg_page1, %struct.phyreg_page1* %5, i32 0, i32 2
  %150 = load i32*, i32** %149, align 8
  %151 = getelementptr inbounds i32, i32* %150, i64 0
  %152 = load i32, i32* %151, align 4
  %153 = shl i32 %152, 16
  %154 = getelementptr inbounds %struct.phyreg_page1, %struct.phyreg_page1* %5, i32 0, i32 2
  %155 = load i32*, i32** %154, align 8
  %156 = getelementptr inbounds i32, i32* %155, i64 1
  %157 = load i32, i32* %156, align 4
  %158 = shl i32 %157, 8
  %159 = or i32 %153, %158
  %160 = getelementptr inbounds %struct.phyreg_page1, %struct.phyreg_page1* %5, i32 0, i32 2
  %161 = load i32*, i32** %160, align 8
  %162 = getelementptr inbounds i32, i32* %161, i64 2
  %163 = load i32, i32* %162, align 4
  %164 = or i32 %159, %163
  %165 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.5, i64 0, i64 0), i32 %132, i32 %148, i32 %164)
  ret void
}

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @read_phy_registers(i32, i32*, i32, i32) #1

declare dso_local i32 @read_phy_page(i32, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
