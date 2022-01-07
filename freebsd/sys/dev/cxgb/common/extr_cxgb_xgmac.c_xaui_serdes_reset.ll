; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cxgb/common/extr_cxgb_xgmac.c_xaui_serdes_reset.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cxgb/common/extr_cxgb_xgmac.c_xaui_serdes_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cmac = type { i64, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32* }

@xaui_serdes_reset.clear = internal constant [6 x i32] [i32 137, i32 129, i32 133, i32 135, i32 128, i32 131], align 16
@A_XGM_SERDES_CTRL0 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cmac*)* @xaui_serdes_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xaui_serdes_reset(%struct.cmac* %0) #0 {
  %2 = alloca %struct.cmac*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca i64, align 8
  store %struct.cmac* %0, %struct.cmac** %2, align 8
  %6 = load %struct.cmac*, %struct.cmac** %2, align 8
  %7 = getelementptr inbounds %struct.cmac, %struct.cmac* %6, i32 0, i32 1
  %8 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  store %struct.TYPE_9__* %8, %struct.TYPE_9__** %4, align 8
  %9 = load i64, i64* @A_XGM_SERDES_CTRL0, align 8
  %10 = load %struct.cmac*, %struct.cmac** %2, align 8
  %11 = getelementptr inbounds %struct.cmac, %struct.cmac* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = add nsw i64 %9, %12
  store i64 %13, i64* %5, align 8
  %14 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %15 = load i64, i64* %5, align 8
  %16 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = load %struct.cmac*, %struct.cmac** %2, align 8
  %22 = call i64 @macidx(%struct.cmac* %21)
  %23 = getelementptr inbounds i32, i32* %20, i64 %22
  %24 = load i32, i32* %23, align 4
  %25 = or i32 %24, 130
  %26 = or i32 %25, 131
  %27 = or i32 %26, 132
  %28 = or i32 %27, 133
  %29 = or i32 %28, 134
  %30 = or i32 %29, 135
  %31 = or i32 %30, 136
  %32 = or i32 %31, 137
  %33 = or i32 %32, 128
  %34 = or i32 %33, 129
  %35 = call i32 @t3_write_reg(%struct.TYPE_9__* %14, i64 %15, i32 %34)
  %36 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %37 = load i64, i64* %5, align 8
  %38 = call i32 @t3_read_reg(%struct.TYPE_9__* %36, i64 %37)
  %39 = call i32 @udelay(i32 15)
  store i32 0, i32* %3, align 4
  br label %40

40:                                               ; preds = %53, %1
  %41 = load i32, i32* %3, align 4
  %42 = call i32 @ARRAY_SIZE(i32* getelementptr inbounds ([6 x i32], [6 x i32]* @xaui_serdes_reset.clear, i64 0, i64 0))
  %43 = icmp slt i32 %41, %42
  br i1 %43, label %44, label %56

44:                                               ; preds = %40
  %45 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %46 = load i64, i64* %5, align 8
  %47 = load i32, i32* %3, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds [6 x i32], [6 x i32]* @xaui_serdes_reset.clear, i64 0, i64 %48
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @t3_set_reg_field(%struct.TYPE_9__* %45, i64 %46, i32 %50, i32 0)
  %52 = call i32 @udelay(i32 15)
  br label %53

53:                                               ; preds = %44
  %54 = load i32, i32* %3, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %3, align 4
  br label %40

56:                                               ; preds = %40
  ret void
}

declare dso_local i32 @t3_write_reg(%struct.TYPE_9__*, i64, i32) #1

declare dso_local i64 @macidx(%struct.cmac*) #1

declare dso_local i32 @t3_read_reg(%struct.TYPE_9__*, i64) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @t3_set_reg_field(%struct.TYPE_9__*, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
