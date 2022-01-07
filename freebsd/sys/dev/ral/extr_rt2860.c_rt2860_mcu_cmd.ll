; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ral/extr_rt2860.c_rt2860_mcu_cmd.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ral/extr_rt2860.c_rt2860_mcu_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rt2860_softc = type { i32 }

@RT2860_H2M_MAILBOX = common dso_local global i32 0, align 4
@RT2860_H2M_BUSY = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@RT2860_TOKEN_NO_INTR = common dso_local global i32 0, align 4
@RT2860_HOST_CMD = common dso_local global i32 0, align 4
@RT2860_H2M_MAILBOX_CID = common dso_local global i32 0, align 4
@RT2860_H2M_MAILBOX_STATUS = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"MCU command=0x%02x slot=%d status=0x%02x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rt2860_mcu_cmd(%struct.rt2860_softc* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.rt2860_softc*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.rt2860_softc* %0, %struct.rt2860_softc** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %11, align 4
  br label %14

14:                                               ; preds = %27, %4
  %15 = load i32, i32* %11, align 4
  %16 = icmp slt i32 %15, 100
  br i1 %16, label %17, label %30

17:                                               ; preds = %14
  %18 = load %struct.rt2860_softc*, %struct.rt2860_softc** %6, align 8
  %19 = load i32, i32* @RT2860_H2M_MAILBOX, align 4
  %20 = call i32 @RAL_READ(%struct.rt2860_softc* %18, i32 %19)
  %21 = load i32, i32* @RT2860_H2M_BUSY, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %17
  br label %30

25:                                               ; preds = %17
  %26 = call i32 @DELAY(i32 2)
  br label %27

27:                                               ; preds = %25
  %28 = load i32, i32* %11, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %11, align 4
  br label %14

30:                                               ; preds = %24, %14
  %31 = load i32, i32* %11, align 4
  %32 = icmp eq i32 %31, 100
  br i1 %32, label %33, label %35

33:                                               ; preds = %30
  %34 = load i32, i32* @EIO, align 4
  store i32 %34, i32* %5, align 4
  br label %133

35:                                               ; preds = %30
  %36 = load i32, i32* %9, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %35
  %39 = load i32, i32* %7, align 4
  br label %42

40:                                               ; preds = %35
  %41 = load i32, i32* @RT2860_TOKEN_NO_INTR, align 4
  br label %42

42:                                               ; preds = %40, %38
  %43 = phi i32 [ %39, %38 ], [ %41, %40 ]
  store i32 %43, i32* %13, align 4
  %44 = load %struct.rt2860_softc*, %struct.rt2860_softc** %6, align 8
  %45 = load i32, i32* @RT2860_H2M_MAILBOX, align 4
  %46 = load i32, i32* @RT2860_H2M_BUSY, align 4
  %47 = load i32, i32* %13, align 4
  %48 = shl i32 %47, 16
  %49 = or i32 %46, %48
  %50 = load i32, i32* %8, align 4
  %51 = or i32 %49, %50
  %52 = call i32 @RAL_WRITE(%struct.rt2860_softc* %44, i32 %45, i32 %51)
  %53 = load %struct.rt2860_softc*, %struct.rt2860_softc** %6, align 8
  %54 = call i32 @RAL_BARRIER_WRITE(%struct.rt2860_softc* %53)
  %55 = load %struct.rt2860_softc*, %struct.rt2860_softc** %6, align 8
  %56 = load i32, i32* @RT2860_HOST_CMD, align 4
  %57 = load i32, i32* %7, align 4
  %58 = call i32 @RAL_WRITE(%struct.rt2860_softc* %55, i32 %56, i32 %57)
  %59 = load i32, i32* %9, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %62, label %61

61:                                               ; preds = %42
  store i32 0, i32* %5, align 4
  br label %133

62:                                               ; preds = %42
  store i32 0, i32* %11, align 4
  br label %63

63:                                               ; preds = %91, %62
  %64 = load i32, i32* %11, align 4
  %65 = icmp slt i32 %64, 200
  br i1 %65, label %66, label %94

66:                                               ; preds = %63
  %67 = load %struct.rt2860_softc*, %struct.rt2860_softc** %6, align 8
  %68 = load i32, i32* @RT2860_H2M_MAILBOX_CID, align 4
  %69 = call i32 @RAL_READ(%struct.rt2860_softc* %67, i32 %68)
  store i32 %69, i32* %12, align 4
  store i32 0, i32* %10, align 4
  br label %70

70:                                               ; preds = %80, %66
  %71 = load i32, i32* %10, align 4
  %72 = icmp slt i32 %71, 4
  br i1 %72, label %73, label %85

73:                                               ; preds = %70
  %74 = load i32, i32* %12, align 4
  %75 = and i32 %74, 255
  %76 = load i32, i32* %13, align 4
  %77 = icmp eq i32 %75, %76
  br i1 %77, label %78, label %79

78:                                               ; preds = %73
  br label %85

79:                                               ; preds = %73
  br label %80

80:                                               ; preds = %79
  %81 = load i32, i32* %10, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %10, align 4
  %83 = load i32, i32* %12, align 4
  %84 = ashr i32 %83, 8
  store i32 %84, i32* %12, align 4
  br label %70

85:                                               ; preds = %78, %70
  %86 = load i32, i32* %10, align 4
  %87 = icmp slt i32 %86, 4
  br i1 %87, label %88, label %89

88:                                               ; preds = %85
  br label %94

89:                                               ; preds = %85
  %90 = call i32 @DELAY(i32 100)
  br label %91

91:                                               ; preds = %89
  %92 = load i32, i32* %11, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %11, align 4
  br label %63

94:                                               ; preds = %88, %63
  %95 = load i32, i32* %11, align 4
  %96 = icmp eq i32 %95, 200
  br i1 %96, label %97, label %105

97:                                               ; preds = %94
  %98 = load %struct.rt2860_softc*, %struct.rt2860_softc** %6, align 8
  %99 = load i32, i32* @RT2860_H2M_MAILBOX_STATUS, align 4
  %100 = call i32 @RAL_WRITE(%struct.rt2860_softc* %98, i32 %99, i32 -1)
  %101 = load %struct.rt2860_softc*, %struct.rt2860_softc** %6, align 8
  %102 = load i32, i32* @RT2860_H2M_MAILBOX_CID, align 4
  %103 = call i32 @RAL_WRITE(%struct.rt2860_softc* %101, i32 %102, i32 -1)
  %104 = load i32, i32* @ETIMEDOUT, align 4
  store i32 %104, i32* %5, align 4
  br label %133

105:                                              ; preds = %94
  %106 = load %struct.rt2860_softc*, %struct.rt2860_softc** %6, align 8
  %107 = load i32, i32* @RT2860_H2M_MAILBOX_STATUS, align 4
  %108 = call i32 @RAL_READ(%struct.rt2860_softc* %106, i32 %107)
  store i32 %108, i32* %12, align 4
  %109 = load i32, i32* %12, align 4
  %110 = load i32, i32* %10, align 4
  %111 = mul nsw i32 %110, 8
  %112 = ashr i32 %109, %111
  %113 = and i32 %112, 255
  store i32 %113, i32* %12, align 4
  %114 = load i32, i32* %7, align 4
  %115 = load i32, i32* %10, align 4
  %116 = load i32, i32* %12, align 4
  %117 = sext i32 %116 to i64
  %118 = inttoptr i64 %117 to i8*
  %119 = call i32 @DPRINTF(i8* %118)
  %120 = load %struct.rt2860_softc*, %struct.rt2860_softc** %6, align 8
  %121 = load i32, i32* @RT2860_H2M_MAILBOX_STATUS, align 4
  %122 = call i32 @RAL_WRITE(%struct.rt2860_softc* %120, i32 %121, i32 -1)
  %123 = load %struct.rt2860_softc*, %struct.rt2860_softc** %6, align 8
  %124 = load i32, i32* @RT2860_H2M_MAILBOX_CID, align 4
  %125 = call i32 @RAL_WRITE(%struct.rt2860_softc* %123, i32 %124, i32 -1)
  %126 = load i32, i32* %12, align 4
  %127 = icmp eq i32 %126, 1
  br i1 %127, label %128, label %129

128:                                              ; preds = %105
  br label %131

129:                                              ; preds = %105
  %130 = load i32, i32* @EIO, align 4
  br label %131

131:                                              ; preds = %129, %128
  %132 = phi i32 [ 0, %128 ], [ %130, %129 ]
  store i32 %132, i32* %5, align 4
  br label %133

133:                                              ; preds = %131, %97, %61, %33
  %134 = load i32, i32* %5, align 4
  ret i32 %134
}

declare dso_local i32 @RAL_READ(%struct.rt2860_softc*, i32) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @RAL_WRITE(%struct.rt2860_softc*, i32, i32) #1

declare dso_local i32 @RAL_BARRIER_WRITE(%struct.rt2860_softc*) #1

declare dso_local i32 @DPRINTF(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
