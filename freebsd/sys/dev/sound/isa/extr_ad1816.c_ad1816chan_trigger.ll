; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/isa/extr_ad1816.c_ad1816chan_trigger.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/isa/extr_ad1816.c_ad1816chan_trigger.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ad1816_chinfo = type { i64, i32, i32, %struct.ad1816_info* }
%struct.ad1816_info = type { i32 }

@PCMDIR_PLAY = common dso_local global i64 0, align 8
@AD1816_PLAY = common dso_local global i32 0, align 4
@AD1816_CAPT = common dso_local global i32 0, align 4
@AD1816_ENABLE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"ad1816: failed to start %s DMA!\0A\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"play\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"rec\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"ad1816: failed to stop %s DMA!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, i32)* @ad1816chan_trigger to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ad1816chan_trigger(i32 %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ad1816_chinfo*, align 8
  %9 = alloca %struct.ad1816_info*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = load i8*, i8** %6, align 8
  %14 = bitcast i8* %13 to %struct.ad1816_chinfo*
  store %struct.ad1816_chinfo* %14, %struct.ad1816_chinfo** %8, align 8
  %15 = load %struct.ad1816_chinfo*, %struct.ad1816_chinfo** %8, align 8
  %16 = getelementptr inbounds %struct.ad1816_chinfo, %struct.ad1816_chinfo* %15, i32 0, i32 3
  %17 = load %struct.ad1816_info*, %struct.ad1816_info** %16, align 8
  store %struct.ad1816_info* %17, %struct.ad1816_info** %9, align 8
  %18 = load i32, i32* %7, align 4
  %19 = call i32 @PCMTRIG_COMMON(i32 %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %154

22:                                               ; preds = %3
  %23 = load %struct.ad1816_chinfo*, %struct.ad1816_chinfo** %8, align 8
  %24 = getelementptr inbounds %struct.ad1816_chinfo, %struct.ad1816_chinfo* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* %7, align 4
  %27 = call i32 @sndbuf_dma(i32 %25, i32 %26)
  %28 = load %struct.ad1816_chinfo*, %struct.ad1816_chinfo** %8, align 8
  %29 = getelementptr inbounds %struct.ad1816_chinfo, %struct.ad1816_chinfo* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @PCMDIR_PLAY, align 8
  %32 = icmp eq i64 %30, %31
  %33 = zext i1 %32 to i32
  store i32 %33, i32* %10, align 4
  %34 = load i32, i32* %10, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %22
  %37 = load i32, i32* @AD1816_PLAY, align 4
  br label %40

38:                                               ; preds = %22
  %39 = load i32, i32* @AD1816_CAPT, align 4
  br label %40

40:                                               ; preds = %38, %36
  %41 = phi i32 [ %37, %36 ], [ %39, %38 ]
  store i32 %41, i32* %11, align 4
  %42 = load %struct.ad1816_info*, %struct.ad1816_info** %9, align 8
  %43 = call i32 @ad1816_lock(%struct.ad1816_info* %42)
  %44 = load i32, i32* %7, align 4
  switch i32 %44, label %151 [
    i32 129, label %45
    i32 128, label %102
    i32 130, label %102
  ]

45:                                               ; preds = %40
  %46 = load %struct.ad1816_info*, %struct.ad1816_info** %9, align 8
  %47 = load i32, i32* %11, align 4
  %48 = call i32 @io_rd(%struct.ad1816_info* %46, i32 %47)
  %49 = load i32, i32* @AD1816_ENABLE, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %101, label %52

52:                                               ; preds = %45
  %53 = load %struct.ad1816_chinfo*, %struct.ad1816_chinfo** %8, align 8
  %54 = getelementptr inbounds %struct.ad1816_chinfo, %struct.ad1816_chinfo* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  %56 = ashr i32 %55, 2
  %57 = sub nsw i32 %56, 1
  store i32 %57, i32* %12, align 4
  %58 = load %struct.ad1816_info*, %struct.ad1816_info** %9, align 8
  %59 = load i32, i32* %10, align 4
  %60 = icmp ne i32 %59, 0
  %61 = zext i1 %60 to i64
  %62 = select i1 %60, i32 8, i32 10
  %63 = load i32, i32* %12, align 4
  %64 = call i32 @ad1816_write(%struct.ad1816_info* %58, i32 %62, i32 %63)
  %65 = load %struct.ad1816_info*, %struct.ad1816_info** %9, align 8
  %66 = load i32, i32* %10, align 4
  %67 = icmp ne i32 %66, 0
  %68 = zext i1 %67 to i64
  %69 = select i1 %67, i32 9, i32 11
  %70 = call i32 @ad1816_write(%struct.ad1816_info* %65, i32 %69, i32 0)
  %71 = load %struct.ad1816_info*, %struct.ad1816_info** %9, align 8
  %72 = load %struct.ad1816_info*, %struct.ad1816_info** %9, align 8
  %73 = call i32 @ad1816_read(%struct.ad1816_info* %72, i32 1)
  %74 = load i32, i32* %10, align 4
  %75 = icmp ne i32 %74, 0
  %76 = zext i1 %75 to i64
  %77 = select i1 %75, i32 32768, i32 16384
  %78 = or i32 %73, %77
  %79 = call i32 @ad1816_write(%struct.ad1816_info* %71, i32 1, i32 %78)
  %80 = load %struct.ad1816_info*, %struct.ad1816_info** %9, align 8
  %81 = load i32, i32* %11, align 4
  %82 = load %struct.ad1816_info*, %struct.ad1816_info** %9, align 8
  %83 = load i32, i32* %11, align 4
  %84 = call i32 @io_rd(%struct.ad1816_info* %82, i32 %83)
  %85 = load i32, i32* @AD1816_ENABLE, align 4
  %86 = or i32 %84, %85
  %87 = call i32 @io_wr(%struct.ad1816_info* %80, i32 %81, i32 %86)
  %88 = load %struct.ad1816_info*, %struct.ad1816_info** %9, align 8
  %89 = load i32, i32* %11, align 4
  %90 = call i32 @io_rd(%struct.ad1816_info* %88, i32 %89)
  %91 = load i32, i32* @AD1816_ENABLE, align 4
  %92 = and i32 %90, %91
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %100, label %94

94:                                               ; preds = %52
  %95 = load i32, i32* %10, align 4
  %96 = icmp ne i32 %95, 0
  %97 = zext i1 %96 to i64
  %98 = select i1 %96, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)
  %99 = call i32 @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i8* %98)
  br label %100

100:                                              ; preds = %94, %52
  br label %101

101:                                              ; preds = %100, %45
  br label %151

102:                                              ; preds = %40, %40
  %103 = load i32, i32* %10, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %150

105:                                              ; preds = %102
  %106 = load %struct.ad1816_info*, %struct.ad1816_info** %9, align 8
  %107 = load %struct.ad1816_info*, %struct.ad1816_info** %9, align 8
  %108 = call i32 @ad1816_read(%struct.ad1816_info* %107, i32 1)
  %109 = load i32, i32* %10, align 4
  %110 = icmp ne i32 %109, 0
  %111 = zext i1 %110 to i64
  %112 = select i1 %110, i32 32768, i32 16384
  %113 = xor i32 %112, -1
  %114 = and i32 %108, %113
  %115 = call i32 @ad1816_write(%struct.ad1816_info* %106, i32 1, i32 %114)
  %116 = load %struct.ad1816_info*, %struct.ad1816_info** %9, align 8
  %117 = load i32, i32* %11, align 4
  %118 = load %struct.ad1816_info*, %struct.ad1816_info** %9, align 8
  %119 = load i32, i32* %11, align 4
  %120 = call i32 @io_rd(%struct.ad1816_info* %118, i32 %119)
  %121 = load i32, i32* @AD1816_ENABLE, align 4
  %122 = xor i32 %121, -1
  %123 = and i32 %120, %122
  %124 = call i32 @io_wr(%struct.ad1816_info* %116, i32 %117, i32 %123)
  %125 = load %struct.ad1816_info*, %struct.ad1816_info** %9, align 8
  %126 = load i32, i32* %11, align 4
  %127 = call i32 @io_rd(%struct.ad1816_info* %125, i32 %126)
  %128 = load i32, i32* @AD1816_ENABLE, align 4
  %129 = and i32 %127, %128
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %137

131:                                              ; preds = %105
  %132 = load i32, i32* %10, align 4
  %133 = icmp ne i32 %132, 0
  %134 = zext i1 %133 to i64
  %135 = select i1 %133, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)
  %136 = call i32 @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0), i8* %135)
  br label %137

137:                                              ; preds = %131, %105
  %138 = load %struct.ad1816_info*, %struct.ad1816_info** %9, align 8
  %139 = load i32, i32* %10, align 4
  %140 = icmp ne i32 %139, 0
  %141 = zext i1 %140 to i64
  %142 = select i1 %140, i32 8, i32 10
  %143 = call i32 @ad1816_write(%struct.ad1816_info* %138, i32 %142, i32 0)
  %144 = load %struct.ad1816_info*, %struct.ad1816_info** %9, align 8
  %145 = load i32, i32* %10, align 4
  %146 = icmp ne i32 %145, 0
  %147 = zext i1 %146 to i64
  %148 = select i1 %146, i32 9, i32 11
  %149 = call i32 @ad1816_write(%struct.ad1816_info* %144, i32 %148, i32 0)
  br label %150

150:                                              ; preds = %137, %102
  br label %151

151:                                              ; preds = %40, %150, %101
  %152 = load %struct.ad1816_info*, %struct.ad1816_info** %9, align 8
  %153 = call i32 @ad1816_unlock(%struct.ad1816_info* %152)
  store i32 0, i32* %4, align 4
  br label %154

154:                                              ; preds = %151, %21
  %155 = load i32, i32* %4, align 4
  ret i32 %155
}

declare dso_local i32 @PCMTRIG_COMMON(i32) #1

declare dso_local i32 @sndbuf_dma(i32, i32) #1

declare dso_local i32 @ad1816_lock(%struct.ad1816_info*) #1

declare dso_local i32 @io_rd(%struct.ad1816_info*, i32) #1

declare dso_local i32 @ad1816_write(%struct.ad1816_info*, i32, i32) #1

declare dso_local i32 @ad1816_read(%struct.ad1816_info*, i32) #1

declare dso_local i32 @io_wr(%struct.ad1816_info*, i32, i32) #1

declare dso_local i32 @printf(i8*, i8*) #1

declare dso_local i32 @ad1816_unlock(%struct.ad1816_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
