; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/syscons/extr_scvesactl.c_vesa_ioctl.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/syscons/extr_scvesactl.c_vesa_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty = type { i32 }
%struct.thread = type { i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }

@V_ADP_MODECHANGE = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@M_VESA_BASE = common dso_local global i32 0, align 4
@IOC_DIRMASK = common dso_local global i32 0, align 4
@IOC_VOID = common dso_local global i32 0, align 4
@M_VESA_FULL_1280 = common dso_local global i32 0, align 4
@M_VESA_MODE_MAX = common dso_local global i32 0, align 4
@ENOIOCTL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tty*, i32, i32, %struct.thread*)* @vesa_ioctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vesa_ioctl(%struct.tty* %0, i32 %1, i32 %2, %struct.thread* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.tty*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.thread*, align 8
  %10 = alloca %struct.TYPE_9__*, align 8
  %11 = alloca i32, align 4
  store %struct.tty* %0, %struct.tty** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store %struct.thread* %3, %struct.thread** %9, align 8
  %12 = load %struct.tty*, %struct.tty** %6, align 8
  %13 = call %struct.TYPE_9__* @SC_STAT(%struct.tty* %12)
  store %struct.TYPE_9__* %13, %struct.TYPE_9__** %10, align 8
  %14 = load i32, i32* %7, align 4
  switch i32 %14, label %78 [
    i32 160, label %15
    i32 159, label %15
    i32 158, label %15
    i32 157, label %15
    i32 156, label %15
    i32 138, label %34
    i32 142, label %34
    i32 141, label %34
    i32 140, label %34
    i32 139, label %34
    i32 151, label %56
    i32 146, label %56
    i32 130, label %56
    i32 135, label %56
    i32 134, label %56
    i32 150, label %56
    i32 145, label %56
    i32 129, label %56
    i32 143, label %56
    i32 133, label %56
    i32 149, label %56
    i32 144, label %56
    i32 128, label %56
    i32 155, label %56
    i32 137, label %56
    i32 153, label %56
    i32 148, label %56
    i32 132, label %56
    i32 154, label %56
    i32 136, label %56
    i32 152, label %56
    i32 147, label %56
    i32 131, label %56
  ]

15:                                               ; preds = %4, %4, %4, %4, %4
  %16 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %17 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @V_ADP_MODECHANGE, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %28, label %26

26:                                               ; preds = %15
  %27 = load i32, i32* @ENODEV, align 4
  store i32 %27, i32* %5, align 4
  br label %130

28:                                               ; preds = %15
  %29 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %30 = load %struct.tty*, %struct.tty** %6, align 8
  %31 = load i32, i32* %7, align 4
  %32 = and i32 %31, 255
  %33 = call i32 @sc_set_text_mode(%struct.TYPE_9__* %29, %struct.tty* %30, i32 %32, i32 0, i32 0, i32 0, i32 0)
  store i32 %33, i32* %5, align 4
  br label %130

34:                                               ; preds = %4, %4, %4, %4, %4
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i32 0, i32 0
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 0
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @V_ADP_MODECHANGE, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %47, label %45

45:                                               ; preds = %34
  %46 = load i32, i32* @ENODEV, align 4
  store i32 %46, i32* %5, align 4
  br label %130

47:                                               ; preds = %34
  %48 = load i32, i32* %7, align 4
  %49 = and i32 %48, 255
  %50 = load i32, i32* @M_VESA_BASE, align 4
  %51 = add nsw i32 %49, %50
  store i32 %51, i32* %11, align 4
  %52 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %53 = load %struct.tty*, %struct.tty** %6, align 8
  %54 = load i32, i32* %11, align 4
  %55 = call i32 @sc_set_text_mode(%struct.TYPE_9__* %52, %struct.tty* %53, i32 %54, i32 0, i32 0, i32 0, i32 0)
  store i32 %55, i32* %5, align 4
  br label %130

56:                                               ; preds = %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4
  %57 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %58 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %57, i32 0, i32 0
  %59 = load %struct.TYPE_8__*, %struct.TYPE_8__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 0
  %61 = load %struct.TYPE_7__*, %struct.TYPE_7__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @V_ADP_MODECHANGE, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %69, label %67

67:                                               ; preds = %56
  %68 = load i32, i32* @ENODEV, align 4
  store i32 %68, i32* %5, align 4
  br label %130

69:                                               ; preds = %56
  %70 = load i32, i32* %7, align 4
  %71 = and i32 %70, 255
  %72 = load i32, i32* @M_VESA_BASE, align 4
  %73 = add nsw i32 %71, %72
  store i32 %73, i32* %11, align 4
  %74 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %75 = load %struct.tty*, %struct.tty** %6, align 8
  %76 = load i32, i32* %11, align 4
  %77 = call i32 @sc_set_graphics_mode(%struct.TYPE_9__* %74, %struct.tty* %75, i32 %76)
  store i32 %77, i32* %5, align 4
  br label %130

78:                                               ; preds = %4
  %79 = load i32, i32* %7, align 4
  %80 = call signext i8 @IOCGROUP(i32 %79)
  %81 = sext i8 %80 to i32
  %82 = icmp eq i32 %81, 86
  br i1 %82, label %83, label %120

83:                                               ; preds = %78
  %84 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %85 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %84, i32 0, i32 0
  %86 = load %struct.TYPE_8__*, %struct.TYPE_8__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %86, i32 0, i32 0
  %88 = load %struct.TYPE_7__*, %struct.TYPE_7__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* @V_ADP_MODECHANGE, align 4
  %92 = and i32 %90, %91
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %96, label %94

94:                                               ; preds = %83
  %95 = load i32, i32* @ENODEV, align 4
  store i32 %95, i32* %5, align 4
  br label %130

96:                                               ; preds = %83
  %97 = load i32, i32* %7, align 4
  %98 = and i32 %97, 255
  %99 = load i32, i32* @M_VESA_BASE, align 4
  %100 = add nsw i32 %98, %99
  store i32 %100, i32* %11, align 4
  %101 = load i32, i32* %7, align 4
  %102 = load i32, i32* @IOC_DIRMASK, align 4
  %103 = and i32 %101, %102
  %104 = load i32, i32* @IOC_VOID, align 4
  %105 = icmp eq i32 %103, %104
  br i1 %105, label %106, label %119

106:                                              ; preds = %96
  %107 = load i32, i32* %11, align 4
  %108 = load i32, i32* @M_VESA_FULL_1280, align 4
  %109 = icmp sgt i32 %107, %108
  br i1 %109, label %110, label %119

110:                                              ; preds = %106
  %111 = load i32, i32* %11, align 4
  %112 = load i32, i32* @M_VESA_MODE_MAX, align 4
  %113 = icmp slt i32 %111, %112
  br i1 %113, label %114, label %119

114:                                              ; preds = %110
  %115 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %116 = load %struct.tty*, %struct.tty** %6, align 8
  %117 = load i32, i32* %11, align 4
  %118 = call i32 @sc_set_graphics_mode(%struct.TYPE_9__* %115, %struct.tty* %116, i32 %117)
  store i32 %118, i32* %5, align 4
  br label %130

119:                                              ; preds = %110, %106, %96
  br label %120

120:                                              ; preds = %119, %78
  br label %121

121:                                              ; preds = %120
  br i1 true, label %122, label %128

122:                                              ; preds = %121
  %123 = load %struct.tty*, %struct.tty** %6, align 8
  %124 = load i32, i32* %7, align 4
  %125 = load i32, i32* %8, align 4
  %126 = load %struct.thread*, %struct.thread** %9, align 8
  %127 = call i32 @prev_user_ioctl(%struct.tty* %123, i32 %124, i32 %125, %struct.thread* %126)
  store i32 %127, i32* %5, align 4
  br label %130

128:                                              ; preds = %121
  %129 = load i32, i32* @ENOIOCTL, align 4
  store i32 %129, i32* %5, align 4
  br label %130

130:                                              ; preds = %128, %122, %114, %94, %69, %67, %47, %45, %28, %26
  %131 = load i32, i32* %5, align 4
  ret i32 %131
}

declare dso_local %struct.TYPE_9__* @SC_STAT(%struct.tty*) #1

declare dso_local i32 @sc_set_text_mode(%struct.TYPE_9__*, %struct.tty*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @sc_set_graphics_mode(%struct.TYPE_9__*, %struct.tty*, i32) #1

declare dso_local signext i8 @IOCGROUP(i32) #1

declare dso_local i32 @prev_user_ioctl(%struct.tty*, i32, i32, %struct.thread*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
