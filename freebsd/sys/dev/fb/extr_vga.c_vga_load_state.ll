; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/fb/extr_vga.c_vga_load_state.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/fb/extr_vga.c_vga_load_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i64 }
%struct.TYPE_6__ = type { i64, i32* }

@V_ADP_STATELOAD = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@V_STATE_SIG = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@TSIDX = common dso_local global i32 0, align 4
@TSREG = common dso_local global i32 0, align 4
@MISC = common dso_local global i32 0, align 4
@ATC = common dso_local global i32 0, align 4
@GDCIDX = common dso_local global i32 0, align 4
@GDCREG = common dso_local global i32 0, align 4
@V_ADP_PRIMARY = common dso_local global i64 0, align 8
@V_MODE_PARAM_SIZE = common dso_local global i32 0, align 4
@rows_offset = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*, i8*)* @vga_load_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vga_load_state(%struct.TYPE_5__* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store i8* %1, i8** %5, align 8
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %11 = load i32, i32* @V_ADP_STATELOAD, align 4
  %12 = load i32, i32* @ENODEV, align 4
  %13 = call i32 @prologue(%struct.TYPE_5__* %10, i32 %11, i32 %12)
  %14 = load i8*, i8** %5, align 8
  %15 = bitcast i8* %14 to %struct.TYPE_6__*
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @V_STATE_SIG, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %20, label %22

20:                                               ; preds = %2
  %21 = load i32, i32* @EINVAL, align 4
  store i32 %21, i32* %3, align 4
  br label %141

22:                                               ; preds = %2
  %23 = load i8*, i8** %5, align 8
  %24 = bitcast i8* %23 to %struct.TYPE_6__*
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 1
  %26 = load i32*, i32** %25, align 8
  store i32* %26, i32** %6, align 8
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  store i32 %29, i32* %7, align 4
  %30 = call i32 (...) @splhigh()
  store i32 %30, i32* %8, align 4
  %31 = load i32, i32* @TSIDX, align 4
  %32 = call i32 @outb(i32 %31, i32 0)
  %33 = load i32, i32* @TSREG, align 4
  %34 = call i32 @outb(i32 %33, i32 1)
  store i32 0, i32* %9, align 4
  br label %35

35:                                               ; preds = %51, %22
  %36 = load i32, i32* %9, align 4
  %37 = icmp slt i32 %36, 4
  br i1 %37, label %38, label %54

38:                                               ; preds = %35
  %39 = load i32, i32* @TSIDX, align 4
  %40 = load i32, i32* %9, align 4
  %41 = add nsw i32 %40, 1
  %42 = call i32 @outb(i32 %39, i32 %41)
  %43 = load i32, i32* @TSREG, align 4
  %44 = load i32*, i32** %6, align 8
  %45 = load i32, i32* %9, align 4
  %46 = add nsw i32 %45, 5
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %44, i64 %47
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @outb(i32 %43, i32 %49)
  br label %51

51:                                               ; preds = %38
  %52 = load i32, i32* %9, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %9, align 4
  br label %35

54:                                               ; preds = %35
  %55 = load i32, i32* @MISC, align 4
  %56 = load i32*, i32** %6, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 9
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @outb(i32 %55, i32 %58)
  %60 = load i32, i32* @TSIDX, align 4
  %61 = call i32 @outb(i32 %60, i32 0)
  %62 = load i32, i32* @TSREG, align 4
  %63 = call i32 @outb(i32 %62, i32 3)
  %64 = load i32, i32* %7, align 4
  %65 = call i32 @outb(i32 %64, i32 17)
  %66 = load i32, i32* %7, align 4
  %67 = add nsw i32 %66, 1
  %68 = load i32, i32* %7, align 4
  %69 = add nsw i32 %68, 1
  %70 = call i32 @inb(i32 %69)
  %71 = and i32 %70, 127
  %72 = call i32 @outb(i32 %67, i32 %71)
  store i32 0, i32* %9, align 4
  br label %73

73:                                               ; preds = %89, %54
  %74 = load i32, i32* %9, align 4
  %75 = icmp slt i32 %74, 25
  br i1 %75, label %76, label %92

76:                                               ; preds = %73
  %77 = load i32, i32* %7, align 4
  %78 = load i32, i32* %9, align 4
  %79 = call i32 @outb(i32 %77, i32 %78)
  %80 = load i32, i32* %7, align 4
  %81 = add nsw i32 %80, 1
  %82 = load i32*, i32** %6, align 8
  %83 = load i32, i32* %9, align 4
  %84 = add nsw i32 %83, 10
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i32, i32* %82, i64 %85
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @outb(i32 %81, i32 %87)
  br label %89

89:                                               ; preds = %76
  %90 = load i32, i32* %9, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %9, align 4
  br label %73

92:                                               ; preds = %73
  %93 = load i32, i32* %7, align 4
  %94 = add nsw i32 %93, 6
  %95 = call i32 @inb(i32 %94)
  store i32 0, i32* %9, align 4
  br label %96

96:                                               ; preds = %111, %92
  %97 = load i32, i32* %9, align 4
  %98 = icmp slt i32 %97, 20
  br i1 %98, label %99, label %114

99:                                               ; preds = %96
  %100 = load i32, i32* @ATC, align 4
  %101 = load i32, i32* %9, align 4
  %102 = call i32 @outb(i32 %100, i32 %101)
  %103 = load i32, i32* @ATC, align 4
  %104 = load i32*, i32** %6, align 8
  %105 = load i32, i32* %9, align 4
  %106 = add nsw i32 %105, 35
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i32, i32* %104, i64 %107
  %109 = load i32, i32* %108, align 4
  %110 = call i32 @outb(i32 %103, i32 %109)
  br label %111

111:                                              ; preds = %99
  %112 = load i32, i32* %9, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %9, align 4
  br label %96

114:                                              ; preds = %96
  store i32 0, i32* %9, align 4
  br label %115

115:                                              ; preds = %130, %114
  %116 = load i32, i32* %9, align 4
  %117 = icmp slt i32 %116, 9
  br i1 %117, label %118, label %133

118:                                              ; preds = %115
  %119 = load i32, i32* @GDCIDX, align 4
  %120 = load i32, i32* %9, align 4
  %121 = call i32 @outb(i32 %119, i32 %120)
  %122 = load i32, i32* @GDCREG, align 4
  %123 = load i32*, i32** %6, align 8
  %124 = load i32, i32* %9, align 4
  %125 = add nsw i32 %124, 55
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds i32, i32* %123, i64 %126
  %128 = load i32, i32* %127, align 4
  %129 = call i32 @outb(i32 %122, i32 %128)
  br label %130

130:                                              ; preds = %118
  %131 = load i32, i32* %9, align 4
  %132 = add nsw i32 %131, 1
  store i32 %132, i32* %9, align 4
  br label %115

133:                                              ; preds = %115
  %134 = load i32, i32* %7, align 4
  %135 = add nsw i32 %134, 6
  %136 = call i32 @inb(i32 %135)
  %137 = load i32, i32* @ATC, align 4
  %138 = call i32 @outb(i32 %137, i32 32)
  %139 = load i32, i32* %8, align 4
  %140 = call i32 @splx(i32 %139)
  store i32 0, i32* %3, align 4
  br label %141

141:                                              ; preds = %133, %20
  %142 = load i32, i32* %3, align 4
  ret i32 %142
}

declare dso_local i32 @prologue(%struct.TYPE_5__*, i32, i32) #1

declare dso_local i32 @splhigh(...) #1

declare dso_local i32 @outb(i32, i32) #1

declare dso_local i32 @inb(i32) #1

declare dso_local i32 @splx(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
