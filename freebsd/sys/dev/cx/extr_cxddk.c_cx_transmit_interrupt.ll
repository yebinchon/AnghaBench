; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cx/extr_cxddk.c_cx_transmit_interrupt.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cx/extr_cxddk.c_cx_transmit_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i32, i32, i32, i32*, i32 (%struct.TYPE_6__*, i32, i32)*, i32, i32 (%struct.TYPE_6__*, i32)*, i32 }

@TIS_UNDERRUN = common dso_local global i8 0, align 1
@CX_UNDERRUN = common dso_local global i32 0, align 4
@TIS_EOBUF = common dso_local global i8 0, align 1
@TIS_TXEMPTY = common dso_local global i8 0, align 1
@TIS_TXDATA = common dso_local global i8 0, align 1
@TIS_BB = common dso_local global i8 0, align 1
@M_ASYNC = common dso_local global i64 0, align 8
@BSTS_OWN24 = common dso_local global i8 0, align 1
@IER_RXD = common dso_local global i32 0, align 4
@IER_TXD = common dso_local global i32 0, align 4
@IER_TXMPTY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_6__*)* @cx_transmit_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cx_transmit_interrupt(%struct.TYPE_6__* %0) #0 {
  %2 = alloca %struct.TYPE_6__*, align 8
  %3 = alloca i8, align 1
  %4 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %2, align 8
  store i32 0, i32* %4, align 4
  %5 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %6 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 8
  %7 = load i32, i32* %6, align 8
  %8 = add nsw i32 %7, 1
  store i32 %8, i32* %6, align 8
  %9 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @TISR(i32 %11)
  %13 = call zeroext i8 @inb(i32 %12)
  store i8 %13, i8* %3, align 1
  %14 = load i8, i8* %3, align 1
  %15 = zext i8 %14 to i32
  %16 = load i8, i8* @TIS_UNDERRUN, align 1
  %17 = zext i8 %16 to i32
  %18 = and i32 %15, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %37

20:                                               ; preds = %1
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 7
  %23 = load i32 (%struct.TYPE_6__*, i32)*, i32 (%struct.TYPE_6__*, i32)** %22, align 8
  %24 = icmp ne i32 (%struct.TYPE_6__*, i32)* %23, null
  br i1 %24, label %25, label %32

25:                                               ; preds = %20
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 7
  %28 = load i32 (%struct.TYPE_6__*, i32)*, i32 (%struct.TYPE_6__*, i32)** %27, align 8
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %30 = load i32, i32* @CX_UNDERRUN, align 4
  %31 = call i32 %28(%struct.TYPE_6__* %29, i32 %30)
  br label %32

32:                                               ; preds = %25, %20
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 6
  %35 = load i32, i32* %34, align 8
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %34, align 8
  br label %124

37:                                               ; preds = %1
  %38 = load i8, i8* %3, align 1
  %39 = zext i8 %38 to i32
  %40 = load i8, i8* @TIS_EOBUF, align 1
  %41 = zext i8 %40 to i32
  %42 = load i8, i8* @TIS_TXEMPTY, align 1
  %43 = zext i8 %42 to i32
  %44 = or i32 %41, %43
  %45 = load i8, i8* @TIS_TXDATA, align 1
  %46 = zext i8 %45 to i32
  %47 = or i32 %44, %46
  %48 = and i32 %39, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %123

50:                                               ; preds = %37
  %51 = load i8, i8* %3, align 1
  %52 = zext i8 %51 to i32
  %53 = load i8, i8* @TIS_BB, align 1
  %54 = zext i8 %53 to i32
  %55 = and i32 %52, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %80

57:                                               ; preds = %50
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @BTBCNT(i32 %60)
  %62 = call i32 @inw(i32 %61)
  store i32 %62, i32* %4, align 4
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 5
  %65 = load i32 (%struct.TYPE_6__*, i32, i32)*, i32 (%struct.TYPE_6__*, i32, i32)** %64, align 8
  %66 = icmp ne i32 (%struct.TYPE_6__*, i32, i32)* %65, null
  br i1 %66, label %67, label %79

67:                                               ; preds = %57
  %68 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 5
  %70 = load i32 (%struct.TYPE_6__*, i32, i32)*, i32 (%struct.TYPE_6__*, i32, i32)** %69, align 8
  %71 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %72 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 4
  %74 = load i32*, i32** %73, align 8
  %75 = getelementptr inbounds i32, i32* %74, i64 1
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* %4, align 4
  %78 = call i32 %70(%struct.TYPE_6__* %71, i32 %76, i32 %77)
  br label %79

79:                                               ; preds = %67, %57
  br label %103

80:                                               ; preds = %50
  %81 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @ATBCNT(i32 %83)
  %85 = call i32 @inw(i32 %84)
  store i32 %85, i32* %4, align 4
  %86 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i32 0, i32 5
  %88 = load i32 (%struct.TYPE_6__*, i32, i32)*, i32 (%struct.TYPE_6__*, i32, i32)** %87, align 8
  %89 = icmp ne i32 (%struct.TYPE_6__*, i32, i32)* %88, null
  br i1 %89, label %90, label %102

90:                                               ; preds = %80
  %91 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i32 0, i32 5
  %93 = load i32 (%struct.TYPE_6__*, i32, i32)*, i32 (%struct.TYPE_6__*, i32, i32)** %92, align 8
  %94 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %95 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i32 0, i32 4
  %97 = load i32*, i32** %96, align 8
  %98 = getelementptr inbounds i32, i32* %97, i64 0
  %99 = load i32, i32* %98, align 4
  %100 = load i32, i32* %4, align 4
  %101 = call i32 %93(%struct.TYPE_6__* %94, i32 %99, i32 %100)
  br label %102

102:                                              ; preds = %90, %80
  br label %103

103:                                              ; preds = %102, %79
  %104 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %105 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = load i64, i64* @M_ASYNC, align 8
  %108 = icmp ne i64 %106, %107
  br i1 %108, label %109, label %117

109:                                              ; preds = %103
  %110 = load i32, i32* %4, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %117

112:                                              ; preds = %109
  %113 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %114 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %113, i32 0, i32 3
  %115 = load i32, i32* %114, align 8
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %114, align 8
  br label %117

117:                                              ; preds = %112, %109, %103
  %118 = load i32, i32* %4, align 4
  %119 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %120 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 8
  %122 = add nsw i32 %121, %118
  store i32 %122, i32* %120, align 8
  br label %123

123:                                              ; preds = %117, %37
  br label %124

124:                                              ; preds = %123, %32
  %125 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %126 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %125, i32 0, i32 0
  %127 = load i64, i64* %126, align 8
  %128 = load i64, i64* @M_ASYNC, align 8
  %129 = icmp ne i64 %127, %128
  br i1 %129, label %130, label %173

130:                                              ; preds = %124
  %131 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %132 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %131, i32 0, i32 2
  %133 = load i32, i32* %132, align 4
  %134 = call i32 @ATBSTS(i32 %133)
  %135 = call zeroext i8 @inb(i32 %134)
  %136 = zext i8 %135 to i32
  %137 = load i8, i8* @BSTS_OWN24, align 1
  %138 = zext i8 %137 to i32
  %139 = and i32 %136, %138
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %163

141:                                              ; preds = %130
  %142 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %143 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %142, i32 0, i32 2
  %144 = load i32, i32* %143, align 4
  %145 = call i32 @BTBSTS(i32 %144)
  %146 = call zeroext i8 @inb(i32 %145)
  %147 = zext i8 %146 to i32
  %148 = load i8, i8* @BSTS_OWN24, align 1
  %149 = zext i8 %148 to i32
  %150 = and i32 %147, %149
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %163

152:                                              ; preds = %141
  %153 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %154 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %153, i32 0, i32 2
  %155 = load i32, i32* %154, align 4
  %156 = call i32 @IER(i32 %155)
  %157 = load i32, i32* @IER_RXD, align 4
  %158 = load i32, i32* @IER_TXD, align 4
  %159 = or i32 %157, %158
  %160 = load i32, i32* @IER_TXMPTY, align 4
  %161 = or i32 %159, %160
  %162 = call i32 @outb(i32 %156, i32 %161)
  br label %172

163:                                              ; preds = %141, %130
  %164 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %165 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %164, i32 0, i32 2
  %166 = load i32, i32* %165, align 4
  %167 = call i32 @IER(i32 %166)
  %168 = load i32, i32* @IER_RXD, align 4
  %169 = load i32, i32* @IER_TXD, align 4
  %170 = or i32 %168, %169
  %171 = call i32 @outb(i32 %167, i32 %170)
  br label %172

172:                                              ; preds = %163, %152
  br label %173

173:                                              ; preds = %172, %124
  ret void
}

declare dso_local zeroext i8 @inb(i32) #1

declare dso_local i32 @TISR(i32) #1

declare dso_local i32 @inw(i32) #1

declare dso_local i32 @BTBCNT(i32) #1

declare dso_local i32 @ATBCNT(i32) #1

declare dso_local i32 @ATBSTS(i32) #1

declare dso_local i32 @BTBSTS(i32) #1

declare dso_local i32 @outb(i32, i32) #1

declare dso_local i32 @IER(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
