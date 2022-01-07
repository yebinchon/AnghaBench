; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ichiic/extr_ig4_iic.c_ig4iic_write.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ichiic/extr_ig4_iic.c_ig4iic_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }

@IG4_REG_TXFLR = common dso_local global i32 0, align 4
@IG4_FIFOLVL_MASK = common dso_local global i32 0, align 4
@IG4_REG_TX_TL = common dso_local global i32 0, align 4
@IG4_FIFO_LOWAT = common dso_local global i32 0, align 4
@IG4_DATA_RESTART = common dso_local global i32 0, align 4
@IG4_DATA_STOP = common dso_local global i32 0, align 4
@IG4_REG_DATA_CMD = common dso_local global i32 0, align 4
@IG4_INTR_TX_EMPTY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*, i32*, i32, i32, i32)* @ig4iic_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ig4iic_write(%struct.TYPE_8__* %0, i32* %1, i32 %2, i32 %3, i32 %4) #0 {
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
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %17, align 4
  %18 = load i32, i32* %9, align 4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %5
  store i32 0, i32* %6, align 4
  br label %114

21:                                               ; preds = %5
  br label %22

22:                                               ; preds = %104, %21
  %23 = load i32, i32* %13, align 4
  %24 = load i32, i32* %9, align 4
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %26, label %105

26:                                               ; preds = %22
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %32 = load i32, i32* @IG4_REG_TXFLR, align 4
  %33 = call i32 @reg_read(%struct.TYPE_8__* %31, i32 %32)
  %34 = load i32, i32* @IG4_FIFOLVL_MASK, align 4
  %35 = and i32 %33, %34
  %36 = sub nsw i32 %30, %35
  store i32 %36, i32* %14, align 4
  %37 = load i32, i32* %13, align 4
  %38 = load i32, i32* %14, align 4
  %39 = add nsw i32 %37, %38
  %40 = load i32, i32* %9, align 4
  %41 = call i32 @MIN(i32 %39, i32 %40)
  store i32 %41, i32* %15, align 4
  %42 = load i32, i32* %17, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %53, label %44

44:                                               ; preds = %26
  %45 = load i32, i32* %15, align 4
  %46 = load i32, i32* %9, align 4
  %47 = icmp ne i32 %45, %46
  br i1 %47, label %48, label %53

48:                                               ; preds = %44
  store i32 1, i32* %17, align 4
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %50 = load i32, i32* @IG4_REG_TX_TL, align 4
  %51 = load i32, i32* @IG4_FIFO_LOWAT, align 4
  %52 = call i32 @reg_write(%struct.TYPE_8__* %49, i32 %50, i32 %51)
  br label %53

53:                                               ; preds = %48, %44, %26
  br label %54

54:                                               ; preds = %85, %53
  %55 = load i32, i32* %13, align 4
  %56 = load i32, i32* %15, align 4
  %57 = icmp slt i32 %55, %56
  br i1 %57, label %58, label %92

58:                                               ; preds = %54
  %59 = load i32*, i32** %8, align 8
  %60 = load i32, i32* %13, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %59, i64 %61
  %63 = load i32, i32* %62, align 4
  store i32 %63, i32* %12, align 4
  %64 = load i32, i32* %10, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %73

66:                                               ; preds = %58
  %67 = load i32, i32* %13, align 4
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %73

69:                                               ; preds = %66
  %70 = load i32, i32* @IG4_DATA_RESTART, align 4
  %71 = load i32, i32* %12, align 4
  %72 = or i32 %71, %70
  store i32 %72, i32* %12, align 4
  br label %73

73:                                               ; preds = %69, %66, %58
  %74 = load i32, i32* %11, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %85

76:                                               ; preds = %73
  %77 = load i32, i32* %13, align 4
  %78 = load i32, i32* %9, align 4
  %79 = sub nsw i32 %78, 1
  %80 = icmp eq i32 %77, %79
  br i1 %80, label %81, label %85

81:                                               ; preds = %76
  %82 = load i32, i32* @IG4_DATA_STOP, align 4
  %83 = load i32, i32* %12, align 4
  %84 = or i32 %83, %82
  store i32 %84, i32* %12, align 4
  br label %85

85:                                               ; preds = %81, %76, %73
  %86 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %87 = load i32, i32* @IG4_REG_DATA_CMD, align 4
  %88 = load i32, i32* %12, align 4
  %89 = call i32 @reg_write(%struct.TYPE_8__* %86, i32 %87, i32 %88)
  %90 = load i32, i32* %13, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %13, align 4
  br label %54

92:                                               ; preds = %54
  %93 = load i32, i32* %13, align 4
  %94 = load i32, i32* %9, align 4
  %95 = icmp slt i32 %93, %94
  br i1 %95, label %96, label %104

96:                                               ; preds = %92
  %97 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %98 = load i32, i32* @IG4_INTR_TX_EMPTY, align 4
  %99 = call i32 @wait_intr(%struct.TYPE_8__* %97, i32 %98)
  store i32 %99, i32* %16, align 4
  %100 = load i32, i32* %16, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %103

102:                                              ; preds = %96
  br label %105

103:                                              ; preds = %96
  br label %104

104:                                              ; preds = %103, %92
  br label %22

105:                                              ; preds = %102, %22
  %106 = load i32, i32* %17, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %112

108:                                              ; preds = %105
  %109 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %110 = load i32, i32* @IG4_REG_TX_TL, align 4
  %111 = call i32 @reg_write(%struct.TYPE_8__* %109, i32 %110, i32 0)
  br label %112

112:                                              ; preds = %108, %105
  %113 = load i32, i32* %16, align 4
  store i32 %113, i32* %6, align 4
  br label %114

114:                                              ; preds = %112, %20
  %115 = load i32, i32* %6, align 4
  ret i32 %115
}

declare dso_local i32 @reg_read(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @MIN(i32, i32) #1

declare dso_local i32 @reg_write(%struct.TYPE_8__*, i32, i32) #1

declare dso_local i32 @wait_intr(%struct.TYPE_8__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
