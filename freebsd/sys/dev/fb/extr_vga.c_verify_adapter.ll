; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/fb/extr_vga.c_verify_adapter.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/fb/extr_vga.c_verify_adapter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i8*, i32, i32 }

@ENXIO = common dso_local global i32 0, align 4
@KD_VGA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"vga\00", align 1
@V_ADP_STATESAVE = common dso_local global i32 0, align 4
@V_ADP_PALETTE = common dso_local global i32 0, align 4
@V_ADP_STATELOAD = common dso_local global i32 0, align 4
@V_ADP_BORDER = common dso_local global i32 0, align 4
@V_MODE_PARAM_SIZE = common dso_local global i32 0, align 4
@video_mode_ptr = common dso_local global i32* null, align 8
@V_ADP_COLOR = common dso_local global i32 0, align 4
@video_mode_ptr2 = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*)* @verify_adapter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @verify_adapter(%struct.TYPE_3__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  %7 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = call i64 @BIOS_PADDRTOVADDR(i32 %9)
  store i64 %10, i64* %4, align 8
  %11 = load i64, i64* %4, align 8
  %12 = call i32 @readw(i64 %11)
  store i32 %12, i32* %5, align 4
  %13 = load i64, i64* %4, align 8
  %14 = call i32 @writew(i64 %13, i32 42330)
  %15 = load i64, i64* %4, align 8
  %16 = call i32 @readw(i64 %15)
  %17 = icmp ne i32 %16, 42330
  br i1 %17, label %18, label %20

18:                                               ; preds = %1
  %19 = load i32, i32* @ENXIO, align 4
  store i32 %19, i32* %2, align 4
  br label %109

20:                                               ; preds = %1
  %21 = load i64, i64* %4, align 8
  %22 = load i32, i32* %5, align 4
  %23 = call i32 @writew(i64 %21, i32 %22)
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  switch i32 %26, label %108 [
    i32 129, label %27
    i32 130, label %83
    i32 128, label %99
  ]

27:                                               ; preds = %20
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 4
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @outb(i32 %30, i32 7)
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 4
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @inb(i32 %34)
  %36 = icmp eq i32 %35, 7
  br i1 %36, label %37, label %50

37:                                               ; preds = %27
  %38 = load i32, i32* @KD_VGA, align 4
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 1
  store i32 %38, i32* %40, align 4
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 2
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8** %42, align 8
  %43 = load i32, i32* @V_ADP_STATESAVE, align 4
  %44 = load i32, i32* @V_ADP_PALETTE, align 4
  %45 = or i32 %43, %44
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 3
  %48 = load i32, i32* %47, align 8
  %49 = or i32 %48, %45
  store i32 %49, i32* %47, align 8
  br label %50

50:                                               ; preds = %37, %27
  %51 = load i32, i32* @V_ADP_STATELOAD, align 4
  %52 = load i32, i32* @V_ADP_BORDER, align 4
  %53 = or i32 %51, %52
  %54 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 3
  %56 = load i32, i32* %55, align 8
  %57 = or i32 %56, %53
  store i32 %57, i32* %55, align 8
  %58 = call i64 @BIOS_PADDRTOVADDR(i32 1192)
  %59 = inttoptr i64 %58 to i32*
  %60 = load i32, i32* %59, align 4
  store i32 %60, i32* %6, align 4
  %61 = load i32, i32* %6, align 4
  %62 = call i32 @BIOS_SADDRTOLADDR(i32 %61)
  store i32 %62, i32* %6, align 4
  %63 = load i32, i32* %6, align 4
  %64 = call i32 @ISMAPPED(i32 %63, i32 4)
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %82

66:                                               ; preds = %50
  %67 = load i32, i32* %6, align 4
  %68 = call i64 @BIOS_PADDRTOVADDR(i32 %67)
  %69 = inttoptr i64 %68 to i32*
  %70 = load i32, i32* %69, align 4
  store i32 %70, i32* %6, align 4
  %71 = load i32, i32* %6, align 4
  %72 = call i32 @BIOS_SADDRTOLADDR(i32 %71)
  store i32 %72, i32* %6, align 4
  %73 = load i32, i32* %6, align 4
  %74 = load i32, i32* @V_MODE_PARAM_SIZE, align 4
  %75 = call i32 @ISMAPPED(i32 %73, i32 %74)
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %81

77:                                               ; preds = %66
  %78 = load i32, i32* %6, align 4
  %79 = call i64 @BIOS_PADDRTOVADDR(i32 %78)
  %80 = inttoptr i64 %79 to i32*
  store i32* %80, i32** @video_mode_ptr, align 8
  br label %81

81:                                               ; preds = %77, %66
  br label %82

82:                                               ; preds = %81, %50
  br label %108

83:                                               ; preds = %20
  %84 = load i32, i32* @V_ADP_COLOR, align 4
  %85 = load i32, i32* @V_ADP_BORDER, align 4
  %86 = or i32 %84, %85
  %87 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %87, i32 0, i32 3
  %89 = load i32, i32* %88, align 8
  %90 = or i32 %89, %86
  store i32 %90, i32* %88, align 8
  %91 = call i64 @BIOS_PADDRTOVADDR(i32 116)
  %92 = inttoptr i64 %91 to i32*
  %93 = load i32, i32* %92, align 4
  store i32 %93, i32* %6, align 4
  %94 = load i32, i32* %6, align 4
  %95 = call i32 @BIOS_SADDRTOLADDR(i32 %94)
  store i32 %95, i32* %6, align 4
  %96 = load i32, i32* %6, align 4
  %97 = call i64 @BIOS_PADDRTOVADDR(i32 %96)
  %98 = inttoptr i64 %97 to i32*
  store i32* %98, i32** @video_mode_ptr2, align 8
  br label %108

99:                                               ; preds = %20
  %100 = call i64 @BIOS_PADDRTOVADDR(i32 116)
  %101 = inttoptr i64 %100 to i32*
  %102 = load i32, i32* %101, align 4
  store i32 %102, i32* %6, align 4
  %103 = load i32, i32* %6, align 4
  %104 = call i32 @BIOS_SADDRTOLADDR(i32 %103)
  store i32 %104, i32* %6, align 4
  %105 = load i32, i32* %6, align 4
  %106 = call i64 @BIOS_PADDRTOVADDR(i32 %105)
  %107 = inttoptr i64 %106 to i32*
  store i32* %107, i32** @video_mode_ptr2, align 8
  br label %108

108:                                              ; preds = %20, %99, %83, %82
  store i32 0, i32* %2, align 4
  br label %109

109:                                              ; preds = %108, %18
  %110 = load i32, i32* %2, align 4
  ret i32 %110
}

declare dso_local i64 @BIOS_PADDRTOVADDR(i32) #1

declare dso_local i32 @readw(i64) #1

declare dso_local i32 @writew(i64, i32) #1

declare dso_local i32 @outb(i32, i32) #1

declare dso_local i32 @inb(i32) #1

declare dso_local i32 @BIOS_SADDRTOLADDR(i32) #1

declare dso_local i32 @ISMAPPED(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
