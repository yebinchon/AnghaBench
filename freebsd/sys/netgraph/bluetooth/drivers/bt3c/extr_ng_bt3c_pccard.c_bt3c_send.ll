; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netgraph/bluetooth/drivers/bt3c/extr_ng_bt3c_pccard.c_bt3c_send.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netgraph/bluetooth/drivers/bt3c/extr_ng_bt3c_pccard.c_bt3c_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32, i32 }
%struct.mbuf = type { i64, i32* }

@BT3C_XMIT = common dso_local global i32 0, align 4
@BT3C_FIFO_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"Wrote %d bytes\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i8*, i32)* @bt3c_send to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bt3c_send(i32 %0, i32 %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_5__*, align 8
  %10 = alloca %struct.mbuf*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %14 = load i32, i32* %5, align 4
  %15 = call i32 @NG_NODE_PRIVATE(i32 %14)
  %16 = sext i32 %15 to i64
  %17 = inttoptr i64 %16 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %17, %struct.TYPE_5__** %9, align 8
  store %struct.mbuf* null, %struct.mbuf** %10, align 8
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %19 = icmp eq %struct.TYPE_5__* %18, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %4
  br label %142

21:                                               ; preds = %4
  %22 = load i32, i32* %8, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %31

24:                                               ; preds = %21
  %25 = load i32, i32* @BT3C_XMIT, align 4
  %26 = xor i32 %25, -1
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = and i32 %29, %26
  store i32 %30, i32* %28, align 4
  br label %31

31:                                               ; preds = %24, %21
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @BT3C_XMIT, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %31
  br label %142

39:                                               ; preds = %31
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %41 = call i32 @bt3c_set_address(%struct.TYPE_5__* %40, i32 28800)
  store i32 0, i32* %12, align 4
  br label %42

42:                                               ; preds = %115, %39
  %43 = load i32, i32* %12, align 4
  %44 = load i32, i32* @BT3C_FIFO_SIZE, align 4
  %45 = icmp slt i32 %43, %44
  br i1 %45, label %46, label %120

46:                                               ; preds = %42
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 3
  %49 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %50 = call i32 @IF_DEQUEUE(i32* %48, %struct.mbuf* %49)
  %51 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %52 = icmp eq %struct.mbuf* %51, null
  br i1 %52, label %53, label %54

53:                                               ; preds = %46
  br label %120

54:                                               ; preds = %46
  br label %55

55:                                               ; preds = %104, %54
  %56 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %57 = icmp ne %struct.mbuf* %56, null
  br i1 %57, label %58, label %107

58:                                               ; preds = %55
  %59 = load i32, i32* @BT3C_FIFO_SIZE, align 4
  %60 = load i32, i32* %12, align 4
  %61 = sub nsw i32 %59, %60
  %62 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %63 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = call i32 @min(i32 %61, i64 %64)
  store i32 %65, i32* %13, align 4
  store i32 0, i32* %11, align 4
  br label %66

66:                                               ; preds = %80, %58
  %67 = load i32, i32* %11, align 4
  %68 = load i32, i32* %13, align 4
  %69 = icmp slt i32 %67, %68
  br i1 %69, label %70, label %83

70:                                               ; preds = %66
  %71 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %72 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %73 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %72, i32 0, i32 1
  %74 = load i32*, i32** %73, align 8
  %75 = load i32, i32* %11, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i32, i32* %74, i64 %76
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @bt3c_write_data(%struct.TYPE_5__* %71, i32 %78)
  br label %80

80:                                               ; preds = %70
  %81 = load i32, i32* %11, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %11, align 4
  br label %66

83:                                               ; preds = %66
  %84 = load i32, i32* %13, align 4
  %85 = load i32, i32* %12, align 4
  %86 = add nsw i32 %85, %84
  store i32 %86, i32* %12, align 4
  %87 = load i32, i32* %13, align 4
  %88 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %89 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %88, i32 0, i32 1
  %90 = load i32*, i32** %89, align 8
  %91 = sext i32 %87 to i64
  %92 = getelementptr inbounds i32, i32* %90, i64 %91
  store i32* %92, i32** %89, align 8
  %93 = load i32, i32* %13, align 4
  %94 = sext i32 %93 to i64
  %95 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %96 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = sub nsw i64 %97, %94
  store i64 %98, i64* %96, align 8
  %99 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %100 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = icmp sgt i64 %101, 0
  br i1 %102, label %103, label %104

103:                                              ; preds = %83
  br label %107

104:                                              ; preds = %83
  %105 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %106 = call %struct.mbuf* @m_free(%struct.mbuf* %105)
  store %struct.mbuf* %106, %struct.mbuf** %10, align 8
  br label %55

107:                                              ; preds = %103, %55
  %108 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %109 = icmp ne %struct.mbuf* %108, null
  br i1 %109, label %110, label %115

110:                                              ; preds = %107
  %111 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %112 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %111, i32 0, i32 3
  %113 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %114 = call i32 @IF_PREPEND(i32* %112, %struct.mbuf* %113)
  br label %120

115:                                              ; preds = %107
  %116 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %117 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = call i32 @NG_BT3C_STAT_PCKTS_SENT(i32 %118)
  br label %42

120:                                              ; preds = %110, %53, %42
  %121 = load i32, i32* %12, align 4
  %122 = icmp sgt i32 %121, 0
  br i1 %122, label %123, label %142

123:                                              ; preds = %120
  %124 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %125 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %124, i32 0, i32 2
  %126 = load i32, i32* %125, align 4
  %127 = load i32, i32* %12, align 4
  %128 = call i32 @NG_BT3C_INFO(i32 %126, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %127)
  %129 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %130 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 4
  %132 = load i32, i32* %12, align 4
  %133 = call i32 @NG_BT3C_STAT_BYTES_SENT(i32 %131, i32 %132)
  %134 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %135 = load i32, i32* %12, align 4
  %136 = call i32 @bt3c_write(%struct.TYPE_5__* %134, i32 28677, i32 %135)
  %137 = load i32, i32* @BT3C_XMIT, align 4
  %138 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %139 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 4
  %141 = or i32 %140, %137
  store i32 %141, i32* %139, align 4
  br label %142

142:                                              ; preds = %20, %38, %123, %120
  ret void
}

declare dso_local i32 @NG_NODE_PRIVATE(i32) #1

declare dso_local i32 @bt3c_set_address(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @IF_DEQUEUE(i32*, %struct.mbuf*) #1

declare dso_local i32 @min(i32, i64) #1

declare dso_local i32 @bt3c_write_data(%struct.TYPE_5__*, i32) #1

declare dso_local %struct.mbuf* @m_free(%struct.mbuf*) #1

declare dso_local i32 @IF_PREPEND(i32*, %struct.mbuf*) #1

declare dso_local i32 @NG_BT3C_STAT_PCKTS_SENT(i32) #1

declare dso_local i32 @NG_BT3C_INFO(i32, i8*, i32) #1

declare dso_local i32 @NG_BT3C_STAT_BYTES_SENT(i32, i32) #1

declare dso_local i32 @bt3c_write(%struct.TYPE_5__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
