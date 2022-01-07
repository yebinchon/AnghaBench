; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/an/extr_if_an.c_an_cmd.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/an/extr_if_an.c_an_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.an_softc = type { i32 }

@AN_TIMEOUT = common dso_local global i32 0, align 4
@AN_EV_CMD = common dso_local global i32 0, align 4
@AN_STAT_CMD_CODE = common dso_local global i32 0, align 4
@AN_CMD_BUSY = common dso_local global i32 0, align 4
@AN_EV_CLR_STUCK_BUSY = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.an_softc*, i32, i32)* @an_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @an_cmd(%struct.an_softc* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.an_softc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.an_softc* %0, %struct.an_softc** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %9, align 4
  %10 = load %struct.an_softc*, %struct.an_softc** %5, align 8
  %11 = call i32 @AN_LOCK_ASSERT(%struct.an_softc* %10)
  %12 = load %struct.an_softc*, %struct.an_softc** %5, align 8
  %13 = load %struct.an_softc*, %struct.an_softc** %5, align 8
  %14 = getelementptr inbounds %struct.an_softc, %struct.an_softc* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @AN_PARAM0(i32 %15)
  %17 = load i32, i32* %7, align 4
  %18 = call i32 @CSR_WRITE_2(%struct.an_softc* %12, i32 %16, i32 %17)
  %19 = load %struct.an_softc*, %struct.an_softc** %5, align 8
  %20 = load %struct.an_softc*, %struct.an_softc** %5, align 8
  %21 = getelementptr inbounds %struct.an_softc, %struct.an_softc* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @AN_PARAM1(i32 %22)
  %24 = call i32 @CSR_WRITE_2(%struct.an_softc* %19, i32 %23, i32 0)
  %25 = load %struct.an_softc*, %struct.an_softc** %5, align 8
  %26 = load %struct.an_softc*, %struct.an_softc** %5, align 8
  %27 = getelementptr inbounds %struct.an_softc, %struct.an_softc* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @AN_PARAM2(i32 %28)
  %30 = call i32 @CSR_WRITE_2(%struct.an_softc* %25, i32 %29, i32 0)
  %31 = load %struct.an_softc*, %struct.an_softc** %5, align 8
  %32 = load %struct.an_softc*, %struct.an_softc** %5, align 8
  %33 = getelementptr inbounds %struct.an_softc, %struct.an_softc* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @AN_COMMAND(i32 %34)
  %36 = load i32, i32* %6, align 4
  %37 = call i32 @CSR_WRITE_2(%struct.an_softc* %31, i32 %35, i32 %36)
  store i32 0, i32* %8, align 4
  br label %38

38:                                               ; preds = %72, %3
  %39 = load i32, i32* %8, align 4
  %40 = load i32, i32* @AN_TIMEOUT, align 4
  %41 = icmp slt i32 %39, %40
  br i1 %41, label %42, label %75

42:                                               ; preds = %38
  %43 = load %struct.an_softc*, %struct.an_softc** %5, align 8
  %44 = load %struct.an_softc*, %struct.an_softc** %5, align 8
  %45 = getelementptr inbounds %struct.an_softc, %struct.an_softc* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @AN_EVENT_STAT(i32 %46)
  %48 = call i32 @CSR_READ_2(%struct.an_softc* %43, i32 %47)
  %49 = load i32, i32* @AN_EV_CMD, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %42
  br label %75

53:                                               ; preds = %42
  %54 = load %struct.an_softc*, %struct.an_softc** %5, align 8
  %55 = load %struct.an_softc*, %struct.an_softc** %5, align 8
  %56 = getelementptr inbounds %struct.an_softc, %struct.an_softc* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @AN_COMMAND(i32 %57)
  %59 = call i32 @CSR_READ_2(%struct.an_softc* %54, i32 %58)
  %60 = load i32, i32* %6, align 4
  %61 = icmp eq i32 %59, %60
  br i1 %61, label %62, label %70

62:                                               ; preds = %53
  %63 = load %struct.an_softc*, %struct.an_softc** %5, align 8
  %64 = load %struct.an_softc*, %struct.an_softc** %5, align 8
  %65 = getelementptr inbounds %struct.an_softc, %struct.an_softc* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @AN_COMMAND(i32 %66)
  %68 = load i32, i32* %6, align 4
  %69 = call i32 @CSR_WRITE_2(%struct.an_softc* %63, i32 %67, i32 %68)
  br label %70

70:                                               ; preds = %62, %53
  br label %71

71:                                               ; preds = %70
  br label %72

72:                                               ; preds = %71
  %73 = load i32, i32* %8, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %8, align 4
  br label %38

75:                                               ; preds = %52, %38
  store i32 0, i32* %8, align 4
  br label %76

76:                                               ; preds = %114, %75
  %77 = load i32, i32* %8, align 4
  %78 = load i32, i32* @AN_TIMEOUT, align 4
  %79 = icmp slt i32 %77, %78
  br i1 %79, label %80, label %117

80:                                               ; preds = %76
  %81 = load %struct.an_softc*, %struct.an_softc** %5, align 8
  %82 = load %struct.an_softc*, %struct.an_softc** %5, align 8
  %83 = getelementptr inbounds %struct.an_softc, %struct.an_softc* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @AN_RESP0(i32 %84)
  %86 = call i32 @CSR_READ_2(%struct.an_softc* %81, i32 %85)
  %87 = load %struct.an_softc*, %struct.an_softc** %5, align 8
  %88 = load %struct.an_softc*, %struct.an_softc** %5, align 8
  %89 = getelementptr inbounds %struct.an_softc, %struct.an_softc* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @AN_RESP1(i32 %90)
  %92 = call i32 @CSR_READ_2(%struct.an_softc* %87, i32 %91)
  %93 = load %struct.an_softc*, %struct.an_softc** %5, align 8
  %94 = load %struct.an_softc*, %struct.an_softc** %5, align 8
  %95 = getelementptr inbounds %struct.an_softc, %struct.an_softc* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @AN_RESP2(i32 %96)
  %98 = call i32 @CSR_READ_2(%struct.an_softc* %93, i32 %97)
  %99 = load %struct.an_softc*, %struct.an_softc** %5, align 8
  %100 = load %struct.an_softc*, %struct.an_softc** %5, align 8
  %101 = getelementptr inbounds %struct.an_softc, %struct.an_softc* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = call i32 @AN_STATUS(i32 %102)
  %104 = call i32 @CSR_READ_2(%struct.an_softc* %99, i32 %103)
  store i32 %104, i32* %9, align 4
  %105 = load i32, i32* %9, align 4
  %106 = load i32, i32* @AN_STAT_CMD_CODE, align 4
  %107 = and i32 %105, %106
  %108 = load i32, i32* %6, align 4
  %109 = load i32, i32* @AN_STAT_CMD_CODE, align 4
  %110 = and i32 %108, %109
  %111 = icmp eq i32 %107, %110
  br i1 %111, label %112, label %113

112:                                              ; preds = %80
  br label %117

113:                                              ; preds = %80
  br label %114

114:                                              ; preds = %113
  %115 = load i32, i32* %8, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %8, align 4
  br label %76

117:                                              ; preds = %112, %76
  %118 = load %struct.an_softc*, %struct.an_softc** %5, align 8
  %119 = load %struct.an_softc*, %struct.an_softc** %5, align 8
  %120 = getelementptr inbounds %struct.an_softc, %struct.an_softc* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = call i32 @AN_EVENT_ACK(i32 %121)
  %123 = load i32, i32* @AN_EV_CMD, align 4
  %124 = call i32 @CSR_WRITE_2(%struct.an_softc* %118, i32 %122, i32 %123)
  %125 = load %struct.an_softc*, %struct.an_softc** %5, align 8
  %126 = load %struct.an_softc*, %struct.an_softc** %5, align 8
  %127 = getelementptr inbounds %struct.an_softc, %struct.an_softc* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 4
  %129 = call i32 @AN_COMMAND(i32 %128)
  %130 = call i32 @CSR_READ_2(%struct.an_softc* %125, i32 %129)
  %131 = load i32, i32* @AN_CMD_BUSY, align 4
  %132 = and i32 %130, %131
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %142

134:                                              ; preds = %117
  %135 = load %struct.an_softc*, %struct.an_softc** %5, align 8
  %136 = load %struct.an_softc*, %struct.an_softc** %5, align 8
  %137 = getelementptr inbounds %struct.an_softc, %struct.an_softc* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 4
  %139 = call i32 @AN_EVENT_ACK(i32 %138)
  %140 = load i32, i32* @AN_EV_CLR_STUCK_BUSY, align 4
  %141 = call i32 @CSR_WRITE_2(%struct.an_softc* %135, i32 %139, i32 %140)
  br label %142

142:                                              ; preds = %134, %117
  %143 = load i32, i32* %8, align 4
  %144 = load i32, i32* @AN_TIMEOUT, align 4
  %145 = icmp eq i32 %143, %144
  br i1 %145, label %146, label %148

146:                                              ; preds = %142
  %147 = load i32, i32* @ETIMEDOUT, align 4
  store i32 %147, i32* %4, align 4
  br label %149

148:                                              ; preds = %142
  store i32 0, i32* %4, align 4
  br label %149

149:                                              ; preds = %148, %146
  %150 = load i32, i32* %4, align 4
  ret i32 %150
}

declare dso_local i32 @AN_LOCK_ASSERT(%struct.an_softc*) #1

declare dso_local i32 @CSR_WRITE_2(%struct.an_softc*, i32, i32) #1

declare dso_local i32 @AN_PARAM0(i32) #1

declare dso_local i32 @AN_PARAM1(i32) #1

declare dso_local i32 @AN_PARAM2(i32) #1

declare dso_local i32 @AN_COMMAND(i32) #1

declare dso_local i32 @CSR_READ_2(%struct.an_softc*, i32) #1

declare dso_local i32 @AN_EVENT_STAT(i32) #1

declare dso_local i32 @AN_RESP0(i32) #1

declare dso_local i32 @AN_RESP1(i32) #1

declare dso_local i32 @AN_RESP2(i32) #1

declare dso_local i32 @AN_STATUS(i32) #1

declare dso_local i32 @AN_EVENT_ACK(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
