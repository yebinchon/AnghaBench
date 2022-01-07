; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/isp/extr_isp.c_isp_rdnvram_word.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/isp/extr_isp.c_isp_rdnvram_word.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64 }

@BIU_NVRAM = common dso_local global i32 0, align 4
@BIU_NVRAM_SELECT = common dso_local global i32 0, align 4
@BIU_NVRAM_CLOCK = common dso_local global i32 0, align 4
@ISP2100_NVRAM_SIZE = common dso_local global i32 0, align 4
@ISP_NVRAM_READ = common dso_local global i32 0, align 4
@ISP1080_NVRAM_SIZE = common dso_local global i32 0, align 4
@ISP_NVRAM_SIZE = common dso_local global i32 0, align 4
@BIU_NVRAM_DATAOUT = common dso_local global i32 0, align 4
@BIU_NVRAM_DATAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_9__*, i32, i32*)* @isp_rdnvram_word to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @isp_rdnvram_word(%struct.TYPE_9__* %0, i32 %1, i32* %2) #0 {
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %13 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %14 = load i32, i32* @BIU_NVRAM, align 4
  %15 = load i32, i32* @BIU_NVRAM_SELECT, align 4
  %16 = call i32 @ISP_WRITE(%struct.TYPE_9__* %13, i32 %14, i32 %15)
  %17 = call i32 @ISP_DELAY(i32 10)
  %18 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %19 = load i32, i32* @BIU_NVRAM, align 4
  %20 = load i32, i32* @BIU_NVRAM_SELECT, align 4
  %21 = load i32, i32* @BIU_NVRAM_CLOCK, align 4
  %22 = or i32 %20, %21
  %23 = call i32 @ISP_WRITE(%struct.TYPE_9__* %18, i32 %19, i32 %22)
  %24 = call i32 @ISP_DELAY(i32 10)
  %25 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %26 = call i64 @IS_FC(%struct.TYPE_9__* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %50

28:                                               ; preds = %3
  %29 = load i32, i32* @ISP2100_NVRAM_SIZE, align 4
  %30 = ashr i32 %29, 1
  %31 = sub nsw i32 %30, 1
  %32 = load i32, i32* %5, align 4
  %33 = and i32 %32, %31
  store i32 %33, i32* %5, align 4
  %34 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %35 = call i64 @IS_2312(%struct.TYPE_9__* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %45

37:                                               ; preds = %28
  %38 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %37
  %43 = load i32, i32* %5, align 4
  %44 = add nsw i32 %43, 128
  store i32 %44, i32* %5, align 4
  br label %45

45:                                               ; preds = %42, %37, %28
  %46 = load i32, i32* @ISP_NVRAM_READ, align 4
  %47 = shl i32 %46, 8
  %48 = load i32, i32* %5, align 4
  %49 = or i32 %47, %48
  store i32 %49, i32* %10, align 4
  store i32 10, i32* %8, align 4
  br label %75

50:                                               ; preds = %3
  %51 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %52 = call i64 @IS_ULTRA2(%struct.TYPE_9__* %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %64

54:                                               ; preds = %50
  %55 = load i32, i32* @ISP1080_NVRAM_SIZE, align 4
  %56 = ashr i32 %55, 1
  %57 = sub nsw i32 %56, 1
  %58 = load i32, i32* %5, align 4
  %59 = and i32 %58, %57
  store i32 %59, i32* %5, align 4
  %60 = load i32, i32* @ISP_NVRAM_READ, align 4
  %61 = shl i32 %60, 8
  %62 = load i32, i32* %5, align 4
  %63 = or i32 %61, %62
  store i32 %63, i32* %10, align 4
  store i32 10, i32* %8, align 4
  br label %74

64:                                               ; preds = %50
  %65 = load i32, i32* @ISP_NVRAM_SIZE, align 4
  %66 = ashr i32 %65, 1
  %67 = sub nsw i32 %66, 1
  %68 = load i32, i32* %5, align 4
  %69 = and i32 %68, %67
  store i32 %69, i32* %5, align 4
  %70 = load i32, i32* @ISP_NVRAM_READ, align 4
  %71 = shl i32 %70, 6
  %72 = load i32, i32* %5, align 4
  %73 = or i32 %71, %72
  store i32 %73, i32* %10, align 4
  store i32 8, i32* %8, align 4
  br label %74

74:                                               ; preds = %64, %54
  br label %75

75:                                               ; preds = %74, %45
  %76 = load i32, i32* %8, align 4
  store i32 %76, i32* %7, align 4
  br label %77

77:                                               ; preds = %119, %75
  %78 = load i32, i32* %7, align 4
  %79 = icmp sge i32 %78, 0
  br i1 %79, label %80, label %122

80:                                               ; preds = %77
  %81 = load i32, i32* %10, align 4
  %82 = load i32, i32* %7, align 4
  %83 = ashr i32 %81, %82
  %84 = and i32 %83, 1
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %90

86:                                               ; preds = %80
  %87 = load i32, i32* @BIU_NVRAM_SELECT, align 4
  %88 = load i32, i32* @BIU_NVRAM_DATAOUT, align 4
  %89 = or i32 %87, %88
  store i32 %89, i32* %9, align 4
  br label %92

90:                                               ; preds = %80
  %91 = load i32, i32* @BIU_NVRAM_SELECT, align 4
  store i32 %91, i32* %9, align 4
  br label %92

92:                                               ; preds = %90, %86
  %93 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %94 = load i32, i32* @BIU_NVRAM, align 4
  %95 = load i32, i32* %9, align 4
  %96 = call i32 @ISP_WRITE(%struct.TYPE_9__* %93, i32 %94, i32 %95)
  %97 = call i32 @ISP_DELAY(i32 10)
  %98 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %99 = load i32, i32* @BIU_NVRAM, align 4
  %100 = call i32 @ISP_READ(%struct.TYPE_9__* %98, i32 %99)
  store i32 %100, i32* %11, align 4
  %101 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %102 = load i32, i32* @BIU_NVRAM, align 4
  %103 = load i32, i32* %9, align 4
  %104 = load i32, i32* @BIU_NVRAM_CLOCK, align 4
  %105 = or i32 %103, %104
  %106 = call i32 @ISP_WRITE(%struct.TYPE_9__* %101, i32 %102, i32 %105)
  %107 = call i32 @ISP_DELAY(i32 10)
  %108 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %109 = load i32, i32* @BIU_NVRAM, align 4
  %110 = call i32 @ISP_READ(%struct.TYPE_9__* %108, i32 %109)
  store i32 %110, i32* %11, align 4
  %111 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %112 = load i32, i32* @BIU_NVRAM, align 4
  %113 = load i32, i32* %9, align 4
  %114 = call i32 @ISP_WRITE(%struct.TYPE_9__* %111, i32 %112, i32 %113)
  %115 = call i32 @ISP_DELAY(i32 10)
  %116 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %117 = load i32, i32* @BIU_NVRAM, align 4
  %118 = call i32 @ISP_READ(%struct.TYPE_9__* %116, i32 %117)
  store i32 %118, i32* %11, align 4
  br label %119

119:                                              ; preds = %92
  %120 = load i32, i32* %7, align 4
  %121 = add nsw i32 %120, -1
  store i32 %121, i32* %7, align 4
  br label %77

122:                                              ; preds = %77
  %123 = load i32*, i32** %6, align 8
  store i32 0, i32* %123, align 4
  store i32 0, i32* %7, align 4
  br label %124

124:                                              ; preds = %159, %122
  %125 = load i32, i32* %7, align 4
  %126 = icmp slt i32 %125, 16
  br i1 %126, label %127, label %162

127:                                              ; preds = %124
  %128 = load i32*, i32** %6, align 8
  %129 = load i32, i32* %128, align 4
  %130 = shl i32 %129, 1
  store i32 %130, i32* %128, align 4
  %131 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %132 = load i32, i32* @BIU_NVRAM, align 4
  %133 = load i32, i32* @BIU_NVRAM_SELECT, align 4
  %134 = load i32, i32* @BIU_NVRAM_CLOCK, align 4
  %135 = or i32 %133, %134
  %136 = call i32 @ISP_WRITE(%struct.TYPE_9__* %131, i32 %132, i32 %135)
  %137 = call i32 @ISP_DELAY(i32 10)
  %138 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %139 = load i32, i32* @BIU_NVRAM, align 4
  %140 = call i32 @ISP_READ(%struct.TYPE_9__* %138, i32 %139)
  store i32 %140, i32* %12, align 4
  %141 = load i32, i32* %12, align 4
  %142 = load i32, i32* @BIU_NVRAM_DATAIN, align 4
  %143 = and i32 %141, %142
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %149

145:                                              ; preds = %127
  %146 = load i32*, i32** %6, align 8
  %147 = load i32, i32* %146, align 4
  %148 = or i32 %147, 1
  store i32 %148, i32* %146, align 4
  br label %149

149:                                              ; preds = %145, %127
  %150 = call i32 @ISP_DELAY(i32 10)
  %151 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %152 = load i32, i32* @BIU_NVRAM, align 4
  %153 = load i32, i32* @BIU_NVRAM_SELECT, align 4
  %154 = call i32 @ISP_WRITE(%struct.TYPE_9__* %151, i32 %152, i32 %153)
  %155 = call i32 @ISP_DELAY(i32 10)
  %156 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %157 = load i32, i32* @BIU_NVRAM, align 4
  %158 = call i32 @ISP_READ(%struct.TYPE_9__* %156, i32 %157)
  store i32 %158, i32* %11, align 4
  br label %159

159:                                              ; preds = %149
  %160 = load i32, i32* %7, align 4
  %161 = add nsw i32 %160, 1
  store i32 %161, i32* %7, align 4
  br label %124

162:                                              ; preds = %124
  %163 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %164 = load i32, i32* @BIU_NVRAM, align 4
  %165 = call i32 @ISP_WRITE(%struct.TYPE_9__* %163, i32 %164, i32 0)
  %166 = call i32 @ISP_DELAY(i32 10)
  %167 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %168 = load i32, i32* @BIU_NVRAM, align 4
  %169 = call i32 @ISP_READ(%struct.TYPE_9__* %167, i32 %168)
  store i32 %169, i32* %11, align 4
  %170 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %171 = load i32*, i32** %6, align 8
  %172 = call i32 @ISP_SWIZZLE_NVRAM_WORD(%struct.TYPE_9__* %170, i32* %171)
  ret void
}

declare dso_local i32 @ISP_WRITE(%struct.TYPE_9__*, i32, i32) #1

declare dso_local i32 @ISP_DELAY(i32) #1

declare dso_local i64 @IS_FC(%struct.TYPE_9__*) #1

declare dso_local i64 @IS_2312(%struct.TYPE_9__*) #1

declare dso_local i64 @IS_ULTRA2(%struct.TYPE_9__*) #1

declare dso_local i32 @ISP_READ(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @ISP_SWIZZLE_NVRAM_WORD(%struct.TYPE_9__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
