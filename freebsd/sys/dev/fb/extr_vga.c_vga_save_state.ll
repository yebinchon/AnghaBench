; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/fb/extr_vga.c_vga_save_state.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/fb/extr_vga.c_vga_save_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_8__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_10__ = type { i32*, i32 }

@V_ADP_STATESAVE = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@V_STATE_SIG = common dso_local global i32 0, align 4
@V_MODE_PARAM_SIZE = common dso_local global i32 0, align 4
@TSIDX = common dso_local global i32 0, align 4
@TSREG = common dso_local global i32 0, align 4
@MISC = common dso_local global i32 0, align 4
@ATC = common dso_local global i32 0, align 4
@GDCIDX = common dso_local global i32 0, align 4
@GDCREG = common dso_local global i32 0, align 4
@V_INFO_GRAPHICS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*, i8*, i64)* @vga_save_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vga_save_state(%struct.TYPE_9__* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_8__, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %14 = load i64, i64* %7, align 8
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %3
  %17 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %18 = load i32, i32* @V_ADP_STATESAVE, align 4
  %19 = call i32 @prologue(%struct.TYPE_9__* %17, i32 %18, i32 0)
  store i32 16, i32* %4, align 4
  br label %188

20:                                               ; preds = %3
  %21 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %22 = load i32, i32* @V_ADP_STATESAVE, align 4
  %23 = load i32, i32* @ENODEV, align 4
  %24 = call i32 @prologue(%struct.TYPE_9__* %21, i32 %22, i32 %23)
  %25 = load i64, i64* %7, align 8
  %26 = icmp ult i64 %25, 16
  br i1 %26, label %27, label %29

27:                                               ; preds = %20
  %28 = load i32, i32* @EINVAL, align 4
  store i32 %28, i32* %4, align 4
  br label %188

29:                                               ; preds = %20
  br label %30

30:                                               ; preds = %29
  %31 = load i32, i32* @V_STATE_SIG, align 4
  %32 = load i8*, i8** %6, align 8
  %33 = bitcast i8* %32 to %struct.TYPE_10__*
  %34 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %33, i32 0, i32 1
  store i32 %31, i32* %34, align 8
  %35 = load i8*, i8** %6, align 8
  %36 = bitcast i8* %35 to %struct.TYPE_10__*
  %37 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %36, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  store i32* %38, i32** %9, align 8
  %39 = load i32*, i32** %9, align 8
  %40 = load i32, i32* @V_MODE_PARAM_SIZE, align 4
  %41 = call i32 @bzero(i32* %39, i32 %40)
  %42 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %43 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  store i32 %44, i32* %10, align 4
  %45 = call i32 (...) @splhigh()
  store i32 %45, i32* %13, align 4
  %46 = load i32, i32* @TSIDX, align 4
  %47 = call i32 @outb(i32 %46, i32 0)
  %48 = load i32, i32* @TSREG, align 4
  %49 = call i32 @outb(i32 %48, i32 1)
  store i32 0, i32* %11, align 4
  store i32 5, i32* %12, align 4
  br label %50

50:                                               ; preds = %65, %30
  %51 = load i32, i32* %11, align 4
  %52 = icmp slt i32 %51, 4
  br i1 %52, label %53, label %68

53:                                               ; preds = %50
  %54 = load i32, i32* @TSIDX, align 4
  %55 = load i32, i32* %11, align 4
  %56 = add nsw i32 %55, 1
  %57 = call i32 @outb(i32 %54, i32 %56)
  %58 = load i32, i32* @TSREG, align 4
  %59 = call i32 @inb(i32 %58)
  %60 = load i32*, i32** %9, align 8
  %61 = load i32, i32* %12, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %12, align 4
  %63 = sext i32 %61 to i64
  %64 = getelementptr inbounds i32, i32* %60, i64 %63
  store i32 %59, i32* %64, align 4
  br label %65

65:                                               ; preds = %53
  %66 = load i32, i32* %11, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %11, align 4
  br label %50

68:                                               ; preds = %50
  %69 = load i32, i32* @MISC, align 4
  %70 = add nsw i32 %69, 10
  %71 = call i32 @inb(i32 %70)
  %72 = load i32*, i32** %9, align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 9
  store i32 %71, i32* %73, align 4
  %74 = load i32, i32* @TSIDX, align 4
  %75 = call i32 @outb(i32 %74, i32 0)
  %76 = load i32, i32* @TSREG, align 4
  %77 = call i32 @outb(i32 %76, i32 3)
  store i32 0, i32* %11, align 4
  store i32 10, i32* %12, align 4
  br label %78

78:                                               ; preds = %93, %68
  %79 = load i32, i32* %11, align 4
  %80 = icmp slt i32 %79, 25
  br i1 %80, label %81, label %96

81:                                               ; preds = %78
  %82 = load i32, i32* %10, align 4
  %83 = load i32, i32* %11, align 4
  %84 = call i32 @outb(i32 %82, i32 %83)
  %85 = load i32, i32* %10, align 4
  %86 = add nsw i32 %85, 1
  %87 = call i32 @inb(i32 %86)
  %88 = load i32*, i32** %9, align 8
  %89 = load i32, i32* %12, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %12, align 4
  %91 = sext i32 %89 to i64
  %92 = getelementptr inbounds i32, i32* %88, i64 %91
  store i32 %87, i32* %92, align 4
  br label %93

93:                                               ; preds = %81
  %94 = load i32, i32* %11, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %11, align 4
  br label %78

96:                                               ; preds = %78
  store i32 0, i32* %11, align 4
  store i32 35, i32* %12, align 4
  br label %97

97:                                               ; preds = %115, %96
  %98 = load i32, i32* %11, align 4
  %99 = icmp slt i32 %98, 20
  br i1 %99, label %100, label %118

100:                                              ; preds = %97
  %101 = load i32, i32* %10, align 4
  %102 = add nsw i32 %101, 6
  %103 = call i32 @inb(i32 %102)
  %104 = load i32, i32* @ATC, align 4
  %105 = load i32, i32* %11, align 4
  %106 = call i32 @outb(i32 %104, i32 %105)
  %107 = load i32, i32* @ATC, align 4
  %108 = add nsw i32 %107, 1
  %109 = call i32 @inb(i32 %108)
  %110 = load i32*, i32** %9, align 8
  %111 = load i32, i32* %12, align 4
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %12, align 4
  %113 = sext i32 %111 to i64
  %114 = getelementptr inbounds i32, i32* %110, i64 %113
  store i32 %109, i32* %114, align 4
  br label %115

115:                                              ; preds = %100
  %116 = load i32, i32* %11, align 4
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* %11, align 4
  br label %97

118:                                              ; preds = %97
  store i32 0, i32* %11, align 4
  store i32 55, i32* %12, align 4
  br label %119

119:                                              ; preds = %133, %118
  %120 = load i32, i32* %11, align 4
  %121 = icmp slt i32 %120, 9
  br i1 %121, label %122, label %136

122:                                              ; preds = %119
  %123 = load i32, i32* @GDCIDX, align 4
  %124 = load i32, i32* %11, align 4
  %125 = call i32 @outb(i32 %123, i32 %124)
  %126 = load i32, i32* @GDCREG, align 4
  %127 = call i32 @inb(i32 %126)
  %128 = load i32*, i32** %9, align 8
  %129 = load i32, i32* %12, align 4
  %130 = add nsw i32 %129, 1
  store i32 %130, i32* %12, align 4
  %131 = sext i32 %129 to i64
  %132 = getelementptr inbounds i32, i32* %128, i64 %131
  store i32 %127, i32* %132, align 4
  br label %133

133:                                              ; preds = %122
  %134 = load i32, i32* %11, align 4
  %135 = add nsw i32 %134, 1
  store i32 %135, i32* %11, align 4
  br label %119

136:                                              ; preds = %119
  %137 = load i32, i32* %10, align 4
  %138 = add nsw i32 %137, 6
  %139 = call i32 @inb(i32 %138)
  %140 = load i32, i32* @ATC, align 4
  %141 = call i32 @outb(i32 %140, i32 32)
  %142 = load i32, i32* %13, align 4
  %143 = call i32 @splx(i32 %142)
  %144 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %145 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %146 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %145, i32 0, i32 1
  %147 = load i32, i32* %146, align 4
  %148 = call i64 @vga_get_info(%struct.TYPE_9__* %144, i32 %147, %struct.TYPE_8__* %8)
  %149 = icmp eq i64 %148, 0
  br i1 %149, label %150, label %187

150:                                              ; preds = %136
  %151 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 0
  %152 = load i32, i32* %151, align 4
  %153 = load i32, i32* @V_INFO_GRAPHICS, align 4
  %154 = and i32 %152, %153
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %172

156:                                              ; preds = %150
  %157 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 1
  %158 = load i32, i32* %157, align 4
  %159 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 2
  %160 = load i32, i32* %159, align 4
  %161 = sdiv i32 %158, %160
  %162 = load i32*, i32** %9, align 8
  %163 = getelementptr inbounds i32, i32* %162, i64 0
  store i32 %161, i32* %163, align 4
  %164 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 3
  %165 = load i32, i32* %164, align 4
  %166 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 4
  %167 = load i32, i32* %166, align 4
  %168 = sdiv i32 %165, %167
  %169 = sub nsw i32 %168, 1
  %170 = load i32*, i32** %9, align 8
  %171 = getelementptr inbounds i32, i32* %170, i64 1
  store i32 %169, i32* %171, align 4
  br label %182

172:                                              ; preds = %150
  %173 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 1
  %174 = load i32, i32* %173, align 4
  %175 = load i32*, i32** %9, align 8
  %176 = getelementptr inbounds i32, i32* %175, i64 0
  store i32 %174, i32* %176, align 4
  %177 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 3
  %178 = load i32, i32* %177, align 4
  %179 = sub nsw i32 %178, 1
  %180 = load i32*, i32** %9, align 8
  %181 = getelementptr inbounds i32, i32* %180, i64 1
  store i32 %179, i32* %181, align 4
  br label %182

182:                                              ; preds = %172, %156
  %183 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 4
  %184 = load i32, i32* %183, align 4
  %185 = load i32*, i32** %9, align 8
  %186 = getelementptr inbounds i32, i32* %185, i64 2
  store i32 %184, i32* %186, align 4
  br label %187

187:                                              ; preds = %182, %136
  store i32 0, i32* %4, align 4
  br label %188

188:                                              ; preds = %187, %27, %16
  %189 = load i32, i32* %4, align 4
  ret i32 %189
}

declare dso_local i32 @prologue(%struct.TYPE_9__*, i32, i32) #1

declare dso_local i32 @bzero(i32*, i32) #1

declare dso_local i32 @splhigh(...) #1

declare dso_local i32 @outb(i32, i32) #1

declare dso_local i32 @inb(i32) #1

declare dso_local i32 @splx(i32) #1

declare dso_local i64 @vga_get_info(%struct.TYPE_9__*, i32, %struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
