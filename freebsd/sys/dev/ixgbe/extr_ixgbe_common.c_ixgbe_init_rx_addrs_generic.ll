; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_ixgbe_common.c_ixgbe_init_rx_addrs_generic.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_ixgbe_common.c_ixgbe_init_rx_addrs_generic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_hw = type { %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32, i32, i32, %struct.TYPE_4__, i32* }
%struct.TYPE_4__ = type { i32 (%struct.ixgbe_hw.0*, i32, i32)*, i32 (%struct.ixgbe_hw.1*, i32, i32*, i32, i32)*, i32 (%struct.ixgbe_hw.2*, i32*)* }
%struct.ixgbe_hw.0 = type opaque
%struct.ixgbe_hw.1 = type opaque
%struct.ixgbe_hw.2 = type opaque
%struct.TYPE_5__ = type { i32, i64, i64 }

@.str = private unnamed_addr constant [28 x i8] c"ixgbe_init_rx_addrs_generic\00", align 1
@IXGBE_ERR_INVALID_MAC_ADDR = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [44 x i8] c" Keeping Current RAR0 Addr =%.2X %.2X %.2X \00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"%.2X %.2X %.2X\0A\00", align 1
@.str.3 = private unnamed_addr constant [34 x i8] c"Overriding MAC Address in RAR[0]\0A\00", align 1
@.str.4 = private unnamed_addr constant [31 x i8] c" New MAC Addr =%.2X %.2X %.2X \00", align 1
@IXGBE_RAH_AV = common dso_local global i32 0, align 4
@IXGBE_CLEAR_VMDQ_ALL = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [20 x i8] c"Clearing RAR[1-%d]\0A\00", align 1
@IXGBE_MCSTCTRL = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [15 x i8] c" Clearing MTA\0A\00", align 1
@IXGBE_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ixgbe_init_rx_addrs_generic(%struct.ixgbe_hw* %0) #0 {
  %2 = alloca %struct.ixgbe_hw*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.ixgbe_hw* %0, %struct.ixgbe_hw** %2, align 8
  %5 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %6 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  store i32 %8, i32* %4, align 4
  %9 = call i32 @DEBUGFUNC(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %10 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %11 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 4
  %13 = load i32*, i32** %12, align 8
  %14 = call i64 @ixgbe_validate_mac_addr(i32* %13)
  %15 = load i64, i64* @IXGBE_ERR_INVALID_MAC_ADDR, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %68

17:                                               ; preds = %1
  %18 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %19 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 3
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 2
  %22 = load i32 (%struct.ixgbe_hw.2*, i32*)*, i32 (%struct.ixgbe_hw.2*, i32*)** %21, align 8
  %23 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %24 = bitcast %struct.ixgbe_hw* %23 to %struct.ixgbe_hw.2*
  %25 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %26 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 4
  %28 = load i32*, i32** %27, align 8
  %29 = call i32 %22(%struct.ixgbe_hw.2* %24, i32* %28)
  %30 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %31 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 4
  %33 = load i32*, i32** %32, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 0
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %37 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 4
  %39 = load i32*, i32** %38, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 1
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %43 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 4
  %45 = load i32*, i32** %44, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 2
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @DEBUGOUT3(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i32 %35, i32 %41, i32 %47)
  %49 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %50 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 4
  %52 = load i32*, i32** %51, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 3
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %56 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 4
  %58 = load i32*, i32** %57, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 4
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %62 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 4
  %64 = load i32*, i32** %63, align 8
  %65 = getelementptr inbounds i32, i32* %64, i64 5
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @DEBUGOUT3(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i32 %54, i32 %60, i32 %66)
  br label %121

68:                                               ; preds = %1
  %69 = call i32 @DEBUGOUT(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0))
  %70 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %71 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 4
  %73 = load i32*, i32** %72, align 8
  %74 = getelementptr inbounds i32, i32* %73, i64 0
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %77 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 4
  %79 = load i32*, i32** %78, align 8
  %80 = getelementptr inbounds i32, i32* %79, i64 1
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %83 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 4
  %85 = load i32*, i32** %84, align 8
  %86 = getelementptr inbounds i32, i32* %85, i64 2
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @DEBUGOUT3(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0), i32 %75, i32 %81, i32 %87)
  %89 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %90 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i32 0, i32 4
  %92 = load i32*, i32** %91, align 8
  %93 = getelementptr inbounds i32, i32* %92, i64 3
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %96 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i32 0, i32 4
  %98 = load i32*, i32** %97, align 8
  %99 = getelementptr inbounds i32, i32* %98, i64 4
  %100 = load i32, i32* %99, align 4
  %101 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %102 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %102, i32 0, i32 4
  %104 = load i32*, i32** %103, align 8
  %105 = getelementptr inbounds i32, i32* %104, i64 5
  %106 = load i32, i32* %105, align 4
  %107 = call i32 @DEBUGOUT3(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i32 %94, i32 %100, i32 %106)
  %108 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %109 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %109, i32 0, i32 3
  %111 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %110, i32 0, i32 1
  %112 = load i32 (%struct.ixgbe_hw.1*, i32, i32*, i32, i32)*, i32 (%struct.ixgbe_hw.1*, i32, i32*, i32, i32)** %111, align 8
  %113 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %114 = bitcast %struct.ixgbe_hw* %113 to %struct.ixgbe_hw.1*
  %115 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %116 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %116, i32 0, i32 4
  %118 = load i32*, i32** %117, align 8
  %119 = load i32, i32* @IXGBE_RAH_AV, align 4
  %120 = call i32 %112(%struct.ixgbe_hw.1* %114, i32 0, i32* %118, i32 0, i32 %119)
  br label %121

121:                                              ; preds = %68, %17
  %122 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %123 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %123, i32 0, i32 3
  %125 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %124, i32 0, i32 0
  %126 = load i32 (%struct.ixgbe_hw.0*, i32, i32)*, i32 (%struct.ixgbe_hw.0*, i32, i32)** %125, align 8
  %127 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %128 = bitcast %struct.ixgbe_hw* %127 to %struct.ixgbe_hw.0*
  %129 = load i32, i32* @IXGBE_CLEAR_VMDQ_ALL, align 4
  %130 = call i32 %126(%struct.ixgbe_hw.0* %128, i32 0, i32 %129)
  %131 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %132 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %131, i32 0, i32 1
  %133 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %132, i32 0, i32 2
  store i64 0, i64* %133, align 8
  %134 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %135 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %134, i32 0, i32 1
  %136 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %135, i32 0, i32 0
  store i32 1, i32* %136, align 8
  %137 = load i32, i32* %4, align 4
  %138 = sub nsw i32 %137, 1
  %139 = call i32 @DEBUGOUT1(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0), i32 %138)
  store i32 1, i32* %3, align 4
  br label %140

140:                                              ; preds = %153, %121
  %141 = load i32, i32* %3, align 4
  %142 = load i32, i32* %4, align 4
  %143 = icmp slt i32 %141, %142
  br i1 %143, label %144, label %156

144:                                              ; preds = %140
  %145 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %146 = load i32, i32* %3, align 4
  %147 = call i32 @IXGBE_RAL(i32 %146)
  %148 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %145, i32 %147, i32 0)
  %149 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %150 = load i32, i32* %3, align 4
  %151 = call i32 @IXGBE_RAH(i32 %150)
  %152 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %149, i32 %151, i32 0)
  br label %153

153:                                              ; preds = %144
  %154 = load i32, i32* %3, align 4
  %155 = add nsw i32 %154, 1
  store i32 %155, i32* %3, align 4
  br label %140

156:                                              ; preds = %140
  %157 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %158 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %157, i32 0, i32 1
  %159 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %158, i32 0, i32 1
  store i64 0, i64* %159, align 8
  %160 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %161 = load i32, i32* @IXGBE_MCSTCTRL, align 4
  %162 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %163 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %162, i32 0, i32 0
  %164 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %163, i32 0, i32 2
  %165 = load i32, i32* %164, align 8
  %166 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %160, i32 %161, i32 %165)
  %167 = call i32 @DEBUGOUT(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %168

168:                                              ; preds = %180, %156
  %169 = load i32, i32* %3, align 4
  %170 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %171 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %170, i32 0, i32 0
  %172 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %171, i32 0, i32 1
  %173 = load i32, i32* %172, align 4
  %174 = icmp slt i32 %169, %173
  br i1 %174, label %175, label %183

175:                                              ; preds = %168
  %176 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %177 = load i32, i32* %3, align 4
  %178 = call i32 @IXGBE_MTA(i32 %177)
  %179 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %176, i32 %178, i32 0)
  br label %180

180:                                              ; preds = %175
  %181 = load i32, i32* %3, align 4
  %182 = add nsw i32 %181, 1
  store i32 %182, i32* %3, align 4
  br label %168

183:                                              ; preds = %168
  %184 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %185 = call i32 @ixgbe_init_uta_tables(%struct.ixgbe_hw* %184)
  %186 = load i32, i32* @IXGBE_SUCCESS, align 4
  ret i32 %186
}

declare dso_local i32 @DEBUGFUNC(i8*) #1

declare dso_local i64 @ixgbe_validate_mac_addr(i32*) #1

declare dso_local i32 @DEBUGOUT3(i8*, i32, i32, i32) #1

declare dso_local i32 @DEBUGOUT(i8*) #1

declare dso_local i32 @DEBUGOUT1(i8*, i32) #1

declare dso_local i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw*, i32, i32) #1

declare dso_local i32 @IXGBE_RAL(i32) #1

declare dso_local i32 @IXGBE_RAH(i32) #1

declare dso_local i32 @IXGBE_MTA(i32) #1

declare dso_local i32 @ixgbe_init_uta_tables(%struct.ixgbe_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
