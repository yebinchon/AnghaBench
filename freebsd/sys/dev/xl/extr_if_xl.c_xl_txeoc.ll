; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/xl/extr_if_xl.c_xl_txeoc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/xl/extr_if_xl.c_xl_txeoc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xl_softc = type { i64, i32, i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__*, %struct.xl_chain*, i64 }
%struct.TYPE_3__ = type { i32 }
%struct.xl_chain = type { i32 }

@XL_TX_STATUS = common dso_local global i32 0, align 4
@XL_TXSTATUS_UNDERRUN = common dso_local global i32 0, align 4
@XL_TXSTATUS_JABBER = common dso_local global i32 0, align 4
@XL_TXSTATUS_RECLAIM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"transmission error: 0x%02x\0A\00", align 1
@XL_COMMAND = common dso_local global i32 0, align 4
@XL_CMD_TX_RESET = common dso_local global i32 0, align 4
@XL_TYPE_905B = common dso_local global i64 0, align 8
@XL_DOWNLIST_PTR = common dso_local global i32 0, align 4
@XL_DOWN_POLL = common dso_local global i32 0, align 4
@XL_TX_FREETHRESH = common dso_local global i32 0, align 4
@XL_PACKET_SIZE = common dso_local global i32 0, align 4
@XL_MIN_FRAMELEN = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [56 x i8] c"tx underrun, increasing tx start threshold to %d bytes\0A\00", align 1
@XL_CMD_TX_SET_START = common dso_local global i32 0, align 4
@XL_CMD_SET_TX_RECLAIM = common dso_local global i32 0, align 4
@XL_CMD_TX_ENABLE = common dso_local global i32 0, align 4
@XL_CMD_DOWN_UNSTALL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xl_softc*)* @xl_txeoc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xl_txeoc(%struct.xl_softc* %0) #0 {
  %2 = alloca %struct.xl_softc*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.xl_chain*, align 8
  store %struct.xl_softc* %0, %struct.xl_softc** %2, align 8
  %6 = load %struct.xl_softc*, %struct.xl_softc** %2, align 8
  %7 = call i32 @XL_LOCK_ASSERT(%struct.xl_softc* %6)
  br label %8

8:                                                ; preds = %165, %1
  %9 = load %struct.xl_softc*, %struct.xl_softc** %2, align 8
  %10 = load i32, i32* @XL_TX_STATUS, align 4
  %11 = call i32 @CSR_READ_1(%struct.xl_softc* %9, i32 %10)
  store i32 %11, i32* %3, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %169

13:                                               ; preds = %8
  %14 = load i32, i32* %3, align 4
  %15 = load i32, i32* @XL_TXSTATUS_UNDERRUN, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %28, label %18

18:                                               ; preds = %13
  %19 = load i32, i32* %3, align 4
  %20 = load i32, i32* @XL_TXSTATUS_JABBER, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %28, label %23

23:                                               ; preds = %18
  %24 = load i32, i32* %3, align 4
  %25 = load i32, i32* @XL_TXSTATUS_RECLAIM, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %156

28:                                               ; preds = %23, %18, %13
  %29 = load %struct.xl_softc*, %struct.xl_softc** %2, align 8
  %30 = getelementptr inbounds %struct.xl_softc, %struct.xl_softc* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* %3, align 4
  %33 = call i32 @device_printf(i32 %31, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %32)
  %34 = load %struct.xl_softc*, %struct.xl_softc** %2, align 8
  %35 = load i32, i32* @XL_COMMAND, align 4
  %36 = load i32, i32* @XL_CMD_TX_RESET, align 4
  %37 = call i32 @CSR_WRITE_2(%struct.xl_softc* %34, i32 %35, i32 %36)
  %38 = load %struct.xl_softc*, %struct.xl_softc** %2, align 8
  %39 = call i32 @xl_wait(%struct.xl_softc* %38)
  %40 = load %struct.xl_softc*, %struct.xl_softc** %2, align 8
  %41 = getelementptr inbounds %struct.xl_softc, %struct.xl_softc* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @XL_TYPE_905B, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %75

45:                                               ; preds = %28
  %46 = load %struct.xl_softc*, %struct.xl_softc** %2, align 8
  %47 = getelementptr inbounds %struct.xl_softc, %struct.xl_softc* %46, i32 0, i32 4
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 3
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %74

51:                                               ; preds = %45
  %52 = load %struct.xl_softc*, %struct.xl_softc** %2, align 8
  %53 = getelementptr inbounds %struct.xl_softc, %struct.xl_softc* %52, i32 0, i32 4
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  store i32 %55, i32* %4, align 4
  %56 = load %struct.xl_softc*, %struct.xl_softc** %2, align 8
  %57 = getelementptr inbounds %struct.xl_softc, %struct.xl_softc* %56, i32 0, i32 4
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 2
  %59 = load %struct.xl_chain*, %struct.xl_chain** %58, align 8
  %60 = load i32, i32* %4, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.xl_chain, %struct.xl_chain* %59, i64 %61
  store %struct.xl_chain* %62, %struct.xl_chain** %5, align 8
  %63 = load %struct.xl_softc*, %struct.xl_softc** %2, align 8
  %64 = load i32, i32* @XL_DOWNLIST_PTR, align 4
  %65 = load %struct.xl_chain*, %struct.xl_chain** %5, align 8
  %66 = getelementptr inbounds %struct.xl_chain, %struct.xl_chain* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @CSR_WRITE_4(%struct.xl_softc* %63, i32 %64, i32 %67)
  %69 = load %struct.xl_softc*, %struct.xl_softc** %2, align 8
  %70 = load i32, i32* @XL_DOWN_POLL, align 4
  %71 = call i32 @CSR_WRITE_1(%struct.xl_softc* %69, i32 %70, i32 64)
  %72 = load %struct.xl_softc*, %struct.xl_softc** %2, align 8
  %73 = getelementptr inbounds %struct.xl_softc, %struct.xl_softc* %72, i32 0, i32 1
  store i32 5, i32* %73, align 8
  br label %74

74:                                               ; preds = %51, %45
  br label %94

75:                                               ; preds = %28
  %76 = load %struct.xl_softc*, %struct.xl_softc** %2, align 8
  %77 = getelementptr inbounds %struct.xl_softc, %struct.xl_softc* %76, i32 0, i32 4
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 1
  %79 = load %struct.TYPE_3__*, %struct.TYPE_3__** %78, align 8
  %80 = icmp ne %struct.TYPE_3__* %79, null
  br i1 %80, label %81, label %93

81:                                               ; preds = %75
  %82 = load %struct.xl_softc*, %struct.xl_softc** %2, align 8
  %83 = load i32, i32* @XL_DOWNLIST_PTR, align 4
  %84 = load %struct.xl_softc*, %struct.xl_softc** %2, align 8
  %85 = getelementptr inbounds %struct.xl_softc, %struct.xl_softc* %84, i32 0, i32 4
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 1
  %87 = load %struct.TYPE_3__*, %struct.TYPE_3__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @CSR_WRITE_4(%struct.xl_softc* %82, i32 %83, i32 %89)
  %91 = load %struct.xl_softc*, %struct.xl_softc** %2, align 8
  %92 = getelementptr inbounds %struct.xl_softc, %struct.xl_softc* %91, i32 0, i32 1
  store i32 5, i32* %92, align 8
  br label %93

93:                                               ; preds = %81, %75
  br label %94

94:                                               ; preds = %93, %74
  %95 = load %struct.xl_softc*, %struct.xl_softc** %2, align 8
  %96 = load i32, i32* @XL_TX_FREETHRESH, align 4
  %97 = load i32, i32* @XL_PACKET_SIZE, align 4
  %98 = ashr i32 %97, 8
  %99 = call i32 @CSR_WRITE_1(%struct.xl_softc* %95, i32 %96, i32 %98)
  %100 = load i32, i32* %3, align 4
  %101 = load i32, i32* @XL_TXSTATUS_UNDERRUN, align 4
  %102 = and i32 %100, %101
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %125

104:                                              ; preds = %94
  %105 = load %struct.xl_softc*, %struct.xl_softc** %2, align 8
  %106 = getelementptr inbounds %struct.xl_softc, %struct.xl_softc* %105, i32 0, i32 2
  %107 = load i32, i32* %106, align 4
  %108 = load i32, i32* @XL_PACKET_SIZE, align 4
  %109 = icmp slt i32 %107, %108
  br i1 %109, label %110, label %125

110:                                              ; preds = %104
  %111 = load i64, i64* @XL_MIN_FRAMELEN, align 8
  %112 = load %struct.xl_softc*, %struct.xl_softc** %2, align 8
  %113 = getelementptr inbounds %struct.xl_softc, %struct.xl_softc* %112, i32 0, i32 2
  %114 = load i32, i32* %113, align 4
  %115 = sext i32 %114 to i64
  %116 = add nsw i64 %115, %111
  %117 = trunc i64 %116 to i32
  store i32 %117, i32* %113, align 4
  %118 = load %struct.xl_softc*, %struct.xl_softc** %2, align 8
  %119 = getelementptr inbounds %struct.xl_softc, %struct.xl_softc* %118, i32 0, i32 3
  %120 = load i32, i32* %119, align 8
  %121 = load %struct.xl_softc*, %struct.xl_softc** %2, align 8
  %122 = getelementptr inbounds %struct.xl_softc, %struct.xl_softc* %121, i32 0, i32 2
  %123 = load i32, i32* %122, align 4
  %124 = call i32 @device_printf(i32 %120, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.1, i64 0, i64 0), i32 %123)
  br label %125

125:                                              ; preds = %110, %104, %94
  %126 = load %struct.xl_softc*, %struct.xl_softc** %2, align 8
  %127 = load i32, i32* @XL_COMMAND, align 4
  %128 = load i32, i32* @XL_CMD_TX_SET_START, align 4
  %129 = load %struct.xl_softc*, %struct.xl_softc** %2, align 8
  %130 = getelementptr inbounds %struct.xl_softc, %struct.xl_softc* %129, i32 0, i32 2
  %131 = load i32, i32* %130, align 4
  %132 = or i32 %128, %131
  %133 = call i32 @CSR_WRITE_2(%struct.xl_softc* %126, i32 %127, i32 %132)
  %134 = load %struct.xl_softc*, %struct.xl_softc** %2, align 8
  %135 = getelementptr inbounds %struct.xl_softc, %struct.xl_softc* %134, i32 0, i32 0
  %136 = load i64, i64* %135, align 8
  %137 = load i64, i64* @XL_TYPE_905B, align 8
  %138 = icmp eq i64 %136, %137
  br i1 %138, label %139, label %147

139:                                              ; preds = %125
  %140 = load %struct.xl_softc*, %struct.xl_softc** %2, align 8
  %141 = load i32, i32* @XL_COMMAND, align 4
  %142 = load i32, i32* @XL_CMD_SET_TX_RECLAIM, align 4
  %143 = load i32, i32* @XL_PACKET_SIZE, align 4
  %144 = ashr i32 %143, 4
  %145 = or i32 %142, %144
  %146 = call i32 @CSR_WRITE_2(%struct.xl_softc* %140, i32 %141, i32 %145)
  br label %147

147:                                              ; preds = %139, %125
  %148 = load %struct.xl_softc*, %struct.xl_softc** %2, align 8
  %149 = load i32, i32* @XL_COMMAND, align 4
  %150 = load i32, i32* @XL_CMD_TX_ENABLE, align 4
  %151 = call i32 @CSR_WRITE_2(%struct.xl_softc* %148, i32 %149, i32 %150)
  %152 = load %struct.xl_softc*, %struct.xl_softc** %2, align 8
  %153 = load i32, i32* @XL_COMMAND, align 4
  %154 = load i32, i32* @XL_CMD_DOWN_UNSTALL, align 4
  %155 = call i32 @CSR_WRITE_2(%struct.xl_softc* %152, i32 %153, i32 %154)
  br label %165

156:                                              ; preds = %23
  %157 = load %struct.xl_softc*, %struct.xl_softc** %2, align 8
  %158 = load i32, i32* @XL_COMMAND, align 4
  %159 = load i32, i32* @XL_CMD_TX_ENABLE, align 4
  %160 = call i32 @CSR_WRITE_2(%struct.xl_softc* %157, i32 %158, i32 %159)
  %161 = load %struct.xl_softc*, %struct.xl_softc** %2, align 8
  %162 = load i32, i32* @XL_COMMAND, align 4
  %163 = load i32, i32* @XL_CMD_DOWN_UNSTALL, align 4
  %164 = call i32 @CSR_WRITE_2(%struct.xl_softc* %161, i32 %162, i32 %163)
  br label %165

165:                                              ; preds = %156, %147
  %166 = load %struct.xl_softc*, %struct.xl_softc** %2, align 8
  %167 = load i32, i32* @XL_TX_STATUS, align 4
  %168 = call i32 @CSR_WRITE_1(%struct.xl_softc* %166, i32 %167, i32 1)
  br label %8

169:                                              ; preds = %8
  ret void
}

declare dso_local i32 @XL_LOCK_ASSERT(%struct.xl_softc*) #1

declare dso_local i32 @CSR_READ_1(%struct.xl_softc*, i32) #1

declare dso_local i32 @device_printf(i32, i8*, i32) #1

declare dso_local i32 @CSR_WRITE_2(%struct.xl_softc*, i32, i32) #1

declare dso_local i32 @xl_wait(%struct.xl_softc*) #1

declare dso_local i32 @CSR_WRITE_4(%struct.xl_softc*, i32, i32) #1

declare dso_local i32 @CSR_WRITE_1(%struct.xl_softc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
