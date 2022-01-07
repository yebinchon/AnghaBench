; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ichiic/extr_ig4_iic.c_ig4iic_read.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ichiic/extr_ig4_iic.c_ig4iic_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32 }

@IG4_REG_TXFLR = common dso_local global i32 0, align 4
@IG4_FIFOLVL_MASK = common dso_local global i32 0, align 4
@IG4_INTR_TX_EMPTY = common dso_local global i32 0, align 4
@IG4_DATA_COMMAND_RD = common dso_local global i32 0, align 4
@IG4_DATA_RESTART = common dso_local global i32 0, align 4
@IG4_DATA_STOP = common dso_local global i32 0, align 4
@IG4_REG_DATA_CMD = common dso_local global i32 0, align 4
@IG4_FIFO_LOWAT = common dso_local global i32 0, align 4
@IG4_REG_RXFLR = common dso_local global i32 0, align 4
@IG4_INTR_RX_FULL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*, i32*, i32, i32, i32)* @ig4iic_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ig4iic_read(%struct.TYPE_8__* %0, i32* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_8__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %17, align 4
  %19 = load i32, i32* %9, align 4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %5
  store i32 0, i32* %6, align 4
  br label %160

22:                                               ; preds = %5
  br label %23

23:                                               ; preds = %156, %22
  %24 = load i32, i32* %14, align 4
  %25 = load i32, i32* %9, align 4
  %26 = icmp slt i32 %24, %25
  br i1 %26, label %27, label %157

27:                                               ; preds = %23
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %33 = load i32, i32* @IG4_REG_TXFLR, align 4
  %34 = call i32 @reg_read(%struct.TYPE_8__* %32, i32 %33)
  %35 = load i32, i32* @IG4_FIFOLVL_MASK, align 4
  %36 = and i32 %34, %35
  %37 = sub nsw i32 %31, %36
  store i32 %37, i32* %15, align 4
  %38 = load i32, i32* %15, align 4
  %39 = icmp sle i32 %38, 0
  br i1 %39, label %40, label %52

40:                                               ; preds = %27
  %41 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %42 = load i32, i32* @IG4_INTR_TX_EMPTY, align 4
  %43 = call i32 @wait_intr(%struct.TYPE_8__* %41, i32 %42)
  store i32 %43, i32* %18, align 4
  %44 = load i32, i32* %18, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %40
  br label %157

47:                                               ; preds = %40
  %48 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  store i32 %51, i32* %15, align 4
  br label %52

52:                                               ; preds = %47, %27
  %53 = load i32, i32* %15, align 4
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* %17, align 4
  %59 = sub nsw i32 %57, %58
  %60 = call i32 @MIN(i32 %53, i32 %59)
  store i32 %60, i32* %15, align 4
  %61 = load i32, i32* %13, align 4
  %62 = load i32, i32* %15, align 4
  %63 = add nsw i32 %61, %62
  %64 = load i32, i32* %9, align 4
  %65 = call i32 @MIN(i32 %63, i32 %64)
  store i32 %65, i32* %16, align 4
  br label %66

66:                                               ; preds = %93, %52
  %67 = load i32, i32* %13, align 4
  %68 = load i32, i32* %16, align 4
  %69 = icmp slt i32 %67, %68
  br i1 %69, label %70, label %100

70:                                               ; preds = %66
  %71 = load i32, i32* @IG4_DATA_COMMAND_RD, align 4
  store i32 %71, i32* %12, align 4
  %72 = load i32, i32* %10, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %81

74:                                               ; preds = %70
  %75 = load i32, i32* %13, align 4
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %77, label %81

77:                                               ; preds = %74
  %78 = load i32, i32* @IG4_DATA_RESTART, align 4
  %79 = load i32, i32* %12, align 4
  %80 = or i32 %79, %78
  store i32 %80, i32* %12, align 4
  br label %81

81:                                               ; preds = %77, %74, %70
  %82 = load i32, i32* %11, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %93

84:                                               ; preds = %81
  %85 = load i32, i32* %13, align 4
  %86 = load i32, i32* %9, align 4
  %87 = sub nsw i32 %86, 1
  %88 = icmp eq i32 %85, %87
  br i1 %88, label %89, label %93

89:                                               ; preds = %84
  %90 = load i32, i32* @IG4_DATA_STOP, align 4
  %91 = load i32, i32* %12, align 4
  %92 = or i32 %91, %90
  store i32 %92, i32* %12, align 4
  br label %93

93:                                               ; preds = %89, %84, %81
  %94 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %95 = load i32, i32* @IG4_REG_DATA_CMD, align 4
  %96 = load i32, i32* %12, align 4
  %97 = call i32 @reg_write(%struct.TYPE_8__* %94, i32 %95, i32 %96)
  %98 = load i32, i32* %13, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %13, align 4
  br label %66

100:                                              ; preds = %66
  store i32 0, i32* %17, align 4
  %101 = load i32, i32* %13, align 4
  %102 = load i32, i32* %9, align 4
  %103 = icmp ne i32 %101, %102
  br i1 %103, label %104, label %112

104:                                              ; preds = %100
  %105 = load i32, i32* %13, align 4
  %106 = load i32, i32* %14, align 4
  %107 = sub nsw i32 %105, %106
  %108 = load i32, i32* @IG4_FIFO_LOWAT, align 4
  %109 = icmp sgt i32 %107, %108
  br i1 %109, label %110, label %112

110:                                              ; preds = %104
  %111 = load i32, i32* @IG4_FIFO_LOWAT, align 4
  store i32 %111, i32* %17, align 4
  br label %112

112:                                              ; preds = %110, %104, %100
  br label %113

113:                                              ; preds = %155, %112
  %114 = load i32, i32* %14, align 4
  %115 = load i32, i32* %13, align 4
  %116 = load i32, i32* %17, align 4
  %117 = sub nsw i32 %115, %116
  %118 = icmp slt i32 %114, %117
  br i1 %118, label %119, label %156

119:                                              ; preds = %113
  %120 = load i32, i32* %9, align 4
  %121 = load i32, i32* %14, align 4
  %122 = sub nsw i32 %120, %121
  %123 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %124 = load i32, i32* @IG4_REG_RXFLR, align 4
  %125 = call i32 @reg_read(%struct.TYPE_8__* %123, i32 %124)
  %126 = load i32, i32* @IG4_FIFOLVL_MASK, align 4
  %127 = and i32 %125, %126
  %128 = call i32 @MIN(i32 %122, i32 %127)
  store i32 %128, i32* %15, align 4
  %129 = load i32, i32* %15, align 4
  %130 = icmp sgt i32 %129, 0
  br i1 %130, label %131, label %147

131:                                              ; preds = %119
  br label %132

132:                                              ; preds = %136, %131
  %133 = load i32, i32* %15, align 4
  %134 = add nsw i32 %133, -1
  store i32 %134, i32* %15, align 4
  %135 = icmp ne i32 %133, 0
  br i1 %135, label %136, label %146

136:                                              ; preds = %132
  %137 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %138 = load i32, i32* @IG4_REG_DATA_CMD, align 4
  %139 = call i32 @reg_read(%struct.TYPE_8__* %137, i32 %138)
  %140 = and i32 255, %139
  %141 = load i32*, i32** %8, align 8
  %142 = load i32, i32* %14, align 4
  %143 = add nsw i32 %142, 1
  store i32 %143, i32* %14, align 4
  %144 = sext i32 %142 to i64
  %145 = getelementptr inbounds i32, i32* %141, i64 %144
  store i32 %140, i32* %145, align 4
  br label %132

146:                                              ; preds = %132
  br label %155

147:                                              ; preds = %119
  %148 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %149 = load i32, i32* @IG4_INTR_RX_FULL, align 4
  %150 = call i32 @wait_intr(%struct.TYPE_8__* %148, i32 %149)
  store i32 %150, i32* %18, align 4
  %151 = load i32, i32* %18, align 4
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %154

153:                                              ; preds = %147
  br label %158

154:                                              ; preds = %147
  br label %155

155:                                              ; preds = %154, %146
  br label %113

156:                                              ; preds = %113
  br label %23

157:                                              ; preds = %46, %23
  br label %158

158:                                              ; preds = %157, %153
  %159 = load i32, i32* %18, align 4
  store i32 %159, i32* %6, align 4
  br label %160

160:                                              ; preds = %158, %21
  %161 = load i32, i32* %6, align 4
  ret i32 %161
}

declare dso_local i32 @reg_read(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @wait_intr(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @MIN(i32, i32) #1

declare dso_local i32 @reg_write(%struct.TYPE_8__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
