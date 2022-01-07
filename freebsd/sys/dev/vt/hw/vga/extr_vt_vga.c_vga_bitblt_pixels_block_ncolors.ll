; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/vt/hw/vga/extr_vt_vga.c_vga_bitblt_pixels_block_ncolors.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/vt/hw/vga/extr_vt_vga.c_vga_bitblt_pixels_block_ncolors.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vt_device = type { %struct.vga_softc* }
%struct.vga_softc = type { i32 }

@VGA_SEQ_ADDRESS = common dso_local global i32 0, align 4
@VGA_SEQ_MAP_MASK = common dso_local global i32 0, align 4
@VGA_SEQ_DATA = common dso_local global i32 0, align 4
@VT_VGA_WIDTH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vt_device*, i32*, i32, i32, i32)* @vga_bitblt_pixels_block_ncolors to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vga_bitblt_pixels_block_ncolors(%struct.vt_device* %0, i32* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.vt_device*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.vga_softc*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i8*, align 8
  %19 = alloca i64, align 8
  store %struct.vt_device* %0, %struct.vt_device** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %20 = load i32, i32* %10, align 4
  %21 = mul i32 %20, 4
  %22 = zext i32 %21 to i64
  %23 = call i8* @llvm.stacksave()
  store i8* %23, i8** %18, align 8
  %24 = alloca i32, i64 %22, align 16
  store i64 %22, i64* %19, align 8
  %25 = load %struct.vt_device*, %struct.vt_device** %6, align 8
  %26 = getelementptr inbounds %struct.vt_device, %struct.vt_device* %25, i32 0, i32 0
  %27 = load %struct.vga_softc*, %struct.vga_softc** %26, align 8
  store %struct.vga_softc* %27, %struct.vga_softc** %16, align 8
  %28 = mul nuw i64 4, %22
  %29 = trunc i64 %28 to i32
  %30 = call i32 @memset(i32* %24, i32 0, i32 %29)
  store i32 0, i32* %11, align 4
  br label %31

31:                                               ; preds = %95, %5
  %32 = load i32, i32* %11, align 4
  %33 = load i32, i32* %10, align 4
  %34 = icmp ult i32 %32, %33
  br i1 %34, label %35, label %98

35:                                               ; preds = %31
  store i32 0, i32* %14, align 4
  br label %36

36:                                               ; preds = %91, %35
  %37 = load i32, i32* %14, align 4
  %38 = icmp ult i32 %37, 16
  br i1 %38, label %39, label %94

39:                                               ; preds = %36
  %40 = load i32*, i32** %7, align 8
  %41 = load i32, i32* %11, align 4
  %42 = mul i32 %41, 16
  %43 = load i32, i32* %14, align 4
  %44 = add i32 %42, %43
  %45 = zext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %40, i64 %45
  %47 = load i32, i32* %46, align 4
  store i32 %47, i32* %17, align 4
  %48 = load i32, i32* %17, align 4
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %39
  br label %91

51:                                               ; preds = %39
  store i32 0, i32* %12, align 4
  br label %52

52:                                               ; preds = %87, %51
  %53 = load i32, i32* %12, align 4
  %54 = icmp ult i32 %53, 8
  br i1 %54, label %55, label %90

55:                                               ; preds = %52
  %56 = load i32, i32* %17, align 4
  %57 = load i32, i32* %12, align 4
  %58 = sub i32 7, %57
  %59 = ashr i32 %56, %58
  %60 = and i32 %59, 1
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %63, label %62

62:                                               ; preds = %55
  br label %87

63:                                               ; preds = %55
  store i32 0, i32* %13, align 4
  br label %64

64:                                               ; preds = %83, %63
  %65 = load i32, i32* %13, align 4
  %66 = icmp ult i32 %65, 4
  br i1 %66, label %67, label %86

67:                                               ; preds = %64
  %68 = load i32, i32* %14, align 4
  %69 = load i32, i32* %13, align 4
  %70 = lshr i32 %68, %69
  %71 = and i32 %70, 1
  %72 = load i32, i32* %12, align 4
  %73 = sub i32 7, %72
  %74 = shl i32 %71, %73
  %75 = load i32, i32* %11, align 4
  %76 = mul i32 %75, 4
  %77 = load i32, i32* %13, align 4
  %78 = add i32 %76, %77
  %79 = zext i32 %78 to i64
  %80 = getelementptr inbounds i32, i32* %24, i64 %79
  %81 = load i32, i32* %80, align 4
  %82 = or i32 %81, %74
  store i32 %82, i32* %80, align 4
  br label %83

83:                                               ; preds = %67
  %84 = load i32, i32* %13, align 4
  %85 = add i32 %84, 1
  store i32 %85, i32* %13, align 4
  br label %64

86:                                               ; preds = %64
  br label %87

87:                                               ; preds = %86, %62
  %88 = load i32, i32* %12, align 4
  %89 = add i32 %88, 1
  store i32 %89, i32* %12, align 4
  br label %52

90:                                               ; preds = %52
  br label %91

91:                                               ; preds = %90, %50
  %92 = load i32, i32* %14, align 4
  %93 = add i32 %92, 1
  store i32 %93, i32* %14, align 4
  br label %36

94:                                               ; preds = %36
  br label %95

95:                                               ; preds = %94
  %96 = load i32, i32* %11, align 4
  %97 = add i32 %96, 1
  store i32 %97, i32* %11, align 4
  br label %31

98:                                               ; preds = %31
  %99 = load %struct.vt_device*, %struct.vt_device** %6, align 8
  %100 = call i32 @vga_setwmode(%struct.vt_device* %99, i32 0)
  %101 = load %struct.vga_softc*, %struct.vga_softc** %16, align 8
  %102 = load i32, i32* @VGA_SEQ_ADDRESS, align 4
  %103 = load i32, i32* @VGA_SEQ_MAP_MASK, align 4
  %104 = call i32 @REG_WRITE1(%struct.vga_softc* %101, i32 %102, i32 %103)
  store i32 0, i32* %13, align 4
  br label %105

105:                                              ; preds = %141, %98
  %106 = load i32, i32* %13, align 4
  %107 = icmp ult i32 %106, 4
  br i1 %107, label %108, label %144

108:                                              ; preds = %105
  %109 = load %struct.vga_softc*, %struct.vga_softc** %16, align 8
  %110 = load i32, i32* @VGA_SEQ_DATA, align 4
  %111 = load i32, i32* %13, align 4
  %112 = shl i32 1, %111
  %113 = call i32 @REG_WRITE1(%struct.vga_softc* %109, i32 %110, i32 %112)
  store i32 0, i32* %11, align 4
  br label %114

114:                                              ; preds = %137, %108
  %115 = load i32, i32* %11, align 4
  %116 = load i32, i32* %10, align 4
  %117 = icmp ult i32 %115, %116
  br i1 %117, label %118, label %140

118:                                              ; preds = %114
  %119 = load i32, i32* @VT_VGA_WIDTH, align 4
  %120 = load i32, i32* %9, align 4
  %121 = load i32, i32* %11, align 4
  %122 = add i32 %120, %121
  %123 = mul i32 %119, %122
  %124 = load i32, i32* %8, align 4
  %125 = add i32 %123, %124
  %126 = udiv i32 %125, 8
  store i32 %126, i32* %15, align 4
  %127 = load %struct.vga_softc*, %struct.vga_softc** %16, align 8
  %128 = load i32, i32* %15, align 4
  %129 = load i32, i32* %11, align 4
  %130 = mul i32 %129, 4
  %131 = load i32, i32* %13, align 4
  %132 = add i32 %130, %131
  %133 = zext i32 %132 to i64
  %134 = getelementptr inbounds i32, i32* %24, i64 %133
  %135 = load i32, i32* %134, align 4
  %136 = call i32 @MEM_WRITE1(%struct.vga_softc* %127, i32 %128, i32 %135)
  br label %137

137:                                              ; preds = %118
  %138 = load i32, i32* %11, align 4
  %139 = add i32 %138, 1
  store i32 %139, i32* %11, align 4
  br label %114

140:                                              ; preds = %114
  br label %141

141:                                              ; preds = %140
  %142 = load i32, i32* %13, align 4
  %143 = add i32 %142, 1
  store i32 %143, i32* %13, align 4
  br label %105

144:                                              ; preds = %105
  %145 = load i8*, i8** %18, align 8
  call void @llvm.stackrestore(i8* %145)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @memset(i32*, i32, i32) #2

declare dso_local i32 @vga_setwmode(%struct.vt_device*, i32) #2

declare dso_local i32 @REG_WRITE1(%struct.vga_softc*, i32, i32) #2

declare dso_local i32 @MEM_WRITE1(%struct.vga_softc*, i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
