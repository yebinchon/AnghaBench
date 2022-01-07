; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/an/extr_if_an.c_an_cmd_struct.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/an/extr_if_an.c_an_cmd_struct.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.an_softc = type { i32 }
%struct.an_command = type { i32, i32, i32, i32 }
%struct.an_reply = type { i32, i32, i32, i32 }

@AN_TIMEOUT = common dso_local global i32 0, align 4
@AN_CMD_BUSY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"BUSY\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@AN_EV_CMD = common dso_local global i32 0, align 4
@AN_EV_CLR_STUCK_BUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.an_softc*, %struct.an_command*, %struct.an_reply*)* @an_cmd_struct to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @an_cmd_struct(%struct.an_softc* %0, %struct.an_command* %1, %struct.an_reply* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.an_softc*, align 8
  %6 = alloca %struct.an_command*, align 8
  %7 = alloca %struct.an_reply*, align 8
  %8 = alloca i32, align 4
  store %struct.an_softc* %0, %struct.an_softc** %5, align 8
  store %struct.an_command* %1, %struct.an_command** %6, align 8
  store %struct.an_reply* %2, %struct.an_reply** %7, align 8
  %9 = load %struct.an_softc*, %struct.an_softc** %5, align 8
  %10 = call i32 @AN_LOCK_ASSERT(%struct.an_softc* %9)
  store i32 0, i32* %8, align 4
  br label %11

11:                                               ; preds = %29, %3
  %12 = load i32, i32* %8, align 4
  %13 = load i32, i32* @AN_TIMEOUT, align 4
  %14 = icmp ne i32 %12, %13
  br i1 %14, label %15, label %32

15:                                               ; preds = %11
  %16 = load %struct.an_softc*, %struct.an_softc** %5, align 8
  %17 = load %struct.an_softc*, %struct.an_softc** %5, align 8
  %18 = getelementptr inbounds %struct.an_softc, %struct.an_softc* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @AN_COMMAND(i32 %19)
  %21 = call i32 @CSR_READ_2(%struct.an_softc* %16, i32 %20)
  %22 = load i32, i32* @AN_CMD_BUSY, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %15
  %26 = call i32 @DELAY(i32 1000)
  br label %28

27:                                               ; preds = %15
  br label %32

28:                                               ; preds = %25
  br label %29

29:                                               ; preds = %28
  %30 = load i32, i32* %8, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %8, align 4
  br label %11

32:                                               ; preds = %27, %11
  %33 = load i32, i32* %8, align 4
  %34 = load i32, i32* @AN_TIMEOUT, align 4
  %35 = icmp eq i32 %33, %34
  br i1 %35, label %36, label %39

36:                                               ; preds = %32
  %37 = call i32 @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %38 = load i32, i32* @ETIMEDOUT, align 4
  store i32 %38, i32* %4, align 4
  br label %160

39:                                               ; preds = %32
  %40 = load %struct.an_softc*, %struct.an_softc** %5, align 8
  %41 = load %struct.an_softc*, %struct.an_softc** %5, align 8
  %42 = getelementptr inbounds %struct.an_softc, %struct.an_softc* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @AN_PARAM0(i32 %43)
  %45 = load %struct.an_command*, %struct.an_command** %6, align 8
  %46 = getelementptr inbounds %struct.an_command, %struct.an_command* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @CSR_WRITE_2(%struct.an_softc* %40, i32 %44, i32 %47)
  %49 = load %struct.an_softc*, %struct.an_softc** %5, align 8
  %50 = load %struct.an_softc*, %struct.an_softc** %5, align 8
  %51 = getelementptr inbounds %struct.an_softc, %struct.an_softc* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @AN_PARAM1(i32 %52)
  %54 = load %struct.an_command*, %struct.an_command** %6, align 8
  %55 = getelementptr inbounds %struct.an_command, %struct.an_command* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @CSR_WRITE_2(%struct.an_softc* %49, i32 %53, i32 %56)
  %58 = load %struct.an_softc*, %struct.an_softc** %5, align 8
  %59 = load %struct.an_softc*, %struct.an_softc** %5, align 8
  %60 = getelementptr inbounds %struct.an_softc, %struct.an_softc* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @AN_PARAM2(i32 %61)
  %63 = load %struct.an_command*, %struct.an_command** %6, align 8
  %64 = getelementptr inbounds %struct.an_command, %struct.an_command* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @CSR_WRITE_2(%struct.an_softc* %58, i32 %62, i32 %65)
  %67 = load %struct.an_softc*, %struct.an_softc** %5, align 8
  %68 = load %struct.an_softc*, %struct.an_softc** %5, align 8
  %69 = getelementptr inbounds %struct.an_softc, %struct.an_softc* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @AN_COMMAND(i32 %70)
  %72 = load %struct.an_command*, %struct.an_command** %6, align 8
  %73 = getelementptr inbounds %struct.an_command, %struct.an_command* %72, i32 0, i32 3
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @CSR_WRITE_2(%struct.an_softc* %67, i32 %71, i32 %74)
  store i32 0, i32* %8, align 4
  br label %76

76:                                               ; preds = %93, %39
  %77 = load i32, i32* %8, align 4
  %78 = load i32, i32* @AN_TIMEOUT, align 4
  %79 = icmp slt i32 %77, %78
  br i1 %79, label %80, label %96

80:                                               ; preds = %76
  %81 = load %struct.an_softc*, %struct.an_softc** %5, align 8
  %82 = load %struct.an_softc*, %struct.an_softc** %5, align 8
  %83 = getelementptr inbounds %struct.an_softc, %struct.an_softc* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @AN_EVENT_STAT(i32 %84)
  %86 = call i32 @CSR_READ_2(%struct.an_softc* %81, i32 %85)
  %87 = load i32, i32* @AN_EV_CMD, align 4
  %88 = and i32 %86, %87
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %80
  br label %96

91:                                               ; preds = %80
  %92 = call i32 @DELAY(i32 1000)
  br label %93

93:                                               ; preds = %91
  %94 = load i32, i32* %8, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %8, align 4
  br label %76

96:                                               ; preds = %90, %76
  %97 = load %struct.an_softc*, %struct.an_softc** %5, align 8
  %98 = load %struct.an_softc*, %struct.an_softc** %5, align 8
  %99 = getelementptr inbounds %struct.an_softc, %struct.an_softc* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = call i32 @AN_RESP0(i32 %100)
  %102 = call i32 @CSR_READ_2(%struct.an_softc* %97, i32 %101)
  %103 = load %struct.an_reply*, %struct.an_reply** %7, align 8
  %104 = getelementptr inbounds %struct.an_reply, %struct.an_reply* %103, i32 0, i32 0
  store i32 %102, i32* %104, align 4
  %105 = load %struct.an_softc*, %struct.an_softc** %5, align 8
  %106 = load %struct.an_softc*, %struct.an_softc** %5, align 8
  %107 = getelementptr inbounds %struct.an_softc, %struct.an_softc* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = call i32 @AN_RESP1(i32 %108)
  %110 = call i32 @CSR_READ_2(%struct.an_softc* %105, i32 %109)
  %111 = load %struct.an_reply*, %struct.an_reply** %7, align 8
  %112 = getelementptr inbounds %struct.an_reply, %struct.an_reply* %111, i32 0, i32 1
  store i32 %110, i32* %112, align 4
  %113 = load %struct.an_softc*, %struct.an_softc** %5, align 8
  %114 = load %struct.an_softc*, %struct.an_softc** %5, align 8
  %115 = getelementptr inbounds %struct.an_softc, %struct.an_softc* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = call i32 @AN_RESP2(i32 %116)
  %118 = call i32 @CSR_READ_2(%struct.an_softc* %113, i32 %117)
  %119 = load %struct.an_reply*, %struct.an_reply** %7, align 8
  %120 = getelementptr inbounds %struct.an_reply, %struct.an_reply* %119, i32 0, i32 2
  store i32 %118, i32* %120, align 4
  %121 = load %struct.an_softc*, %struct.an_softc** %5, align 8
  %122 = load %struct.an_softc*, %struct.an_softc** %5, align 8
  %123 = getelementptr inbounds %struct.an_softc, %struct.an_softc* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = call i32 @AN_STATUS(i32 %124)
  %126 = call i32 @CSR_READ_2(%struct.an_softc* %121, i32 %125)
  %127 = load %struct.an_reply*, %struct.an_reply** %7, align 8
  %128 = getelementptr inbounds %struct.an_reply, %struct.an_reply* %127, i32 0, i32 3
  store i32 %126, i32* %128, align 4
  %129 = load %struct.an_softc*, %struct.an_softc** %5, align 8
  %130 = load %struct.an_softc*, %struct.an_softc** %5, align 8
  %131 = getelementptr inbounds %struct.an_softc, %struct.an_softc* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 4
  %133 = call i32 @AN_COMMAND(i32 %132)
  %134 = call i32 @CSR_READ_2(%struct.an_softc* %129, i32 %133)
  %135 = load i32, i32* @AN_CMD_BUSY, align 4
  %136 = and i32 %134, %135
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %146

138:                                              ; preds = %96
  %139 = load %struct.an_softc*, %struct.an_softc** %5, align 8
  %140 = load %struct.an_softc*, %struct.an_softc** %5, align 8
  %141 = getelementptr inbounds %struct.an_softc, %struct.an_softc* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 4
  %143 = call i32 @AN_EVENT_ACK(i32 %142)
  %144 = load i32, i32* @AN_EV_CLR_STUCK_BUSY, align 4
  %145 = call i32 @CSR_WRITE_2(%struct.an_softc* %139, i32 %143, i32 %144)
  br label %146

146:                                              ; preds = %138, %96
  %147 = load %struct.an_softc*, %struct.an_softc** %5, align 8
  %148 = load %struct.an_softc*, %struct.an_softc** %5, align 8
  %149 = getelementptr inbounds %struct.an_softc, %struct.an_softc* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 4
  %151 = call i32 @AN_EVENT_ACK(i32 %150)
  %152 = load i32, i32* @AN_EV_CMD, align 4
  %153 = call i32 @CSR_WRITE_2(%struct.an_softc* %147, i32 %151, i32 %152)
  %154 = load i32, i32* %8, align 4
  %155 = load i32, i32* @AN_TIMEOUT, align 4
  %156 = icmp eq i32 %154, %155
  br i1 %156, label %157, label %159

157:                                              ; preds = %146
  %158 = load i32, i32* @ETIMEDOUT, align 4
  store i32 %158, i32* %4, align 4
  br label %160

159:                                              ; preds = %146
  store i32 0, i32* %4, align 4
  br label %160

160:                                              ; preds = %159, %157, %36
  %161 = load i32, i32* %4, align 4
  ret i32 %161
}

declare dso_local i32 @AN_LOCK_ASSERT(%struct.an_softc*) #1

declare dso_local i32 @CSR_READ_2(%struct.an_softc*, i32) #1

declare dso_local i32 @AN_COMMAND(i32) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @CSR_WRITE_2(%struct.an_softc*, i32, i32) #1

declare dso_local i32 @AN_PARAM0(i32) #1

declare dso_local i32 @AN_PARAM1(i32) #1

declare dso_local i32 @AN_PARAM2(i32) #1

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
