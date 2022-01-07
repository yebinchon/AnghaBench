; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_atkbdc.c_atkbdc_data_handler.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_atkbdc.c_atkbdc_data_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmctx = type { i32 }
%struct.atkbdc_softc = type { i32, i32, i32, i32*, i32, i32, i32, i32 }

@KBDS_CTRL_FLAG = common dso_local global i32 0, align 4
@KBD_SYS_FLAG_BIT = common dso_local global i32 0, align 4
@KBDS_SYS_FLAG = common dso_local global i32 0, align 4
@KBDS_AUX_BUFFER_FULL = common dso_local global i32 0, align 4
@KBDS_KBD_BUFFER_FULL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vmctx*, i32, i32, i32, i32, i32*, i8*)* @atkbdc_data_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atkbdc_data_handler(%struct.vmctx* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32* %5, i8* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.vmctx*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca %struct.atkbdc_softc*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.vmctx* %0, %struct.vmctx** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32* %5, i32** %14, align 8
  store i8* %6, i8** %15, align 8
  %20 = load i32, i32* %13, align 4
  %21 = icmp ne i32 %20, 1
  br i1 %21, label %22, label %23

22:                                               ; preds = %7
  store i32 -1, i32* %8, align 4
  br label %189

23:                                               ; preds = %7
  %24 = load i8*, i8** %15, align 8
  %25 = bitcast i8* %24 to %struct.atkbdc_softc*
  store %struct.atkbdc_softc* %25, %struct.atkbdc_softc** %16, align 8
  store i32 0, i32* %18, align 4
  %26 = load %struct.atkbdc_softc*, %struct.atkbdc_softc** %16, align 8
  %27 = getelementptr inbounds %struct.atkbdc_softc, %struct.atkbdc_softc* %26, i32 0, i32 5
  %28 = call i32 @pthread_mutex_lock(i32* %27)
  %29 = load i32, i32* %11, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %62

31:                                               ; preds = %23
  %32 = load %struct.atkbdc_softc*, %struct.atkbdc_softc** %16, align 8
  %33 = getelementptr inbounds %struct.atkbdc_softc, %struct.atkbdc_softc* %32, i32 0, i32 0
  store i32 0, i32* %33, align 8
  %34 = load %struct.atkbdc_softc*, %struct.atkbdc_softc** %16, align 8
  %35 = getelementptr inbounds %struct.atkbdc_softc, %struct.atkbdc_softc* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %46

38:                                               ; preds = %31
  %39 = load %struct.atkbdc_softc*, %struct.atkbdc_softc** %16, align 8
  %40 = getelementptr inbounds %struct.atkbdc_softc, %struct.atkbdc_softc* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = and i32 %41, 255
  %43 = load i32*, i32** %14, align 8
  store i32 %42, i32* %43, align 4
  %44 = load %struct.atkbdc_softc*, %struct.atkbdc_softc** %16, align 8
  %45 = getelementptr inbounds %struct.atkbdc_softc, %struct.atkbdc_softc* %44, i32 0, i32 1
  store i32 0, i32* %45, align 4
  br label %51

46:                                               ; preds = %31
  %47 = load %struct.atkbdc_softc*, %struct.atkbdc_softc** %16, align 8
  %48 = call i32 @atkbdc_dequeue_data(%struct.atkbdc_softc* %47, i32* %17)
  %49 = load i32, i32* %17, align 4
  %50 = load i32*, i32** %14, align 8
  store i32 %49, i32* %50, align 4
  br label %51

51:                                               ; preds = %46, %38
  %52 = load i32, i32* @KBDS_CTRL_FLAG, align 4
  %53 = xor i32 %52, -1
  %54 = load %struct.atkbdc_softc*, %struct.atkbdc_softc** %16, align 8
  %55 = getelementptr inbounds %struct.atkbdc_softc, %struct.atkbdc_softc* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 8
  %57 = and i32 %56, %53
  store i32 %57, i32* %55, align 8
  %58 = load %struct.atkbdc_softc*, %struct.atkbdc_softc** %16, align 8
  %59 = getelementptr inbounds %struct.atkbdc_softc, %struct.atkbdc_softc* %58, i32 0, i32 5
  %60 = call i32 @pthread_mutex_unlock(i32* %59)
  %61 = load i32, i32* %18, align 4
  store i32 %61, i32* %8, align 4
  br label %189

62:                                               ; preds = %23
  %63 = load %struct.atkbdc_softc*, %struct.atkbdc_softc** %16, align 8
  %64 = getelementptr inbounds %struct.atkbdc_softc, %struct.atkbdc_softc* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 8
  %66 = load i32, i32* @KBDS_CTRL_FLAG, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %176

69:                                               ; preds = %62
  %70 = load %struct.atkbdc_softc*, %struct.atkbdc_softc** %16, align 8
  %71 = getelementptr inbounds %struct.atkbdc_softc, %struct.atkbdc_softc* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  switch i32 %72, label %137 [
    i32 132, label %73
    i32 129, label %102
    i32 128, label %107
    i32 130, label %116
    i32 131, label %121
  ]

73:                                               ; preds = %69
  %74 = load i32*, i32** %14, align 8
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.atkbdc_softc*, %struct.atkbdc_softc** %16, align 8
  %77 = getelementptr inbounds %struct.atkbdc_softc, %struct.atkbdc_softc* %76, i32 0, i32 3
  %78 = load i32*, i32** %77, align 8
  %79 = getelementptr inbounds i32, i32* %78, i64 0
  store i32 %75, i32* %79, align 4
  %80 = load %struct.atkbdc_softc*, %struct.atkbdc_softc** %16, align 8
  %81 = getelementptr inbounds %struct.atkbdc_softc, %struct.atkbdc_softc* %80, i32 0, i32 3
  %82 = load i32*, i32** %81, align 8
  %83 = getelementptr inbounds i32, i32* %82, i64 0
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* @KBD_SYS_FLAG_BIT, align 4
  %86 = and i32 %84, %85
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %94

88:                                               ; preds = %73
  %89 = load i32, i32* @KBDS_SYS_FLAG, align 4
  %90 = load %struct.atkbdc_softc*, %struct.atkbdc_softc** %16, align 8
  %91 = getelementptr inbounds %struct.atkbdc_softc, %struct.atkbdc_softc* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 8
  %93 = or i32 %92, %89
  store i32 %93, i32* %91, align 8
  br label %101

94:                                               ; preds = %73
  %95 = load i32, i32* @KBDS_SYS_FLAG, align 4
  %96 = xor i32 %95, -1
  %97 = load %struct.atkbdc_softc*, %struct.atkbdc_softc** %16, align 8
  %98 = getelementptr inbounds %struct.atkbdc_softc, %struct.atkbdc_softc* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 8
  %100 = and i32 %99, %96
  store i32 %100, i32* %98, align 8
  br label %101

101:                                              ; preds = %94, %88
  br label %163

102:                                              ; preds = %69
  %103 = load i32*, i32** %14, align 8
  %104 = load i32, i32* %103, align 4
  %105 = load %struct.atkbdc_softc*, %struct.atkbdc_softc** %16, align 8
  %106 = getelementptr inbounds %struct.atkbdc_softc, %struct.atkbdc_softc* %105, i32 0, i32 4
  store i32 %104, i32* %106, align 8
  br label %163

107:                                              ; preds = %69
  %108 = load %struct.atkbdc_softc*, %struct.atkbdc_softc** %16, align 8
  %109 = getelementptr inbounds %struct.atkbdc_softc, %struct.atkbdc_softc* %108, i32 0, i32 7
  %110 = load i32, i32* %109, align 4
  %111 = load i32*, i32** %14, align 8
  %112 = load i32, i32* %111, align 4
  %113 = call i32 @ps2mouse_write(i32 %110, i32 %112, i32 0)
  %114 = load %struct.atkbdc_softc*, %struct.atkbdc_softc** %16, align 8
  %115 = call i32 @atkbdc_poll(%struct.atkbdc_softc* %114)
  br label %163

116:                                              ; preds = %69
  %117 = load %struct.atkbdc_softc*, %struct.atkbdc_softc** %16, align 8
  %118 = load i32*, i32** %14, align 8
  %119 = load i32, i32* %118, align 4
  %120 = call i32 @atkbdc_kbd_queue_data(%struct.atkbdc_softc* %117, i32 %119)
  br label %163

121:                                              ; preds = %69
  %122 = load %struct.atkbdc_softc*, %struct.atkbdc_softc** %16, align 8
  %123 = getelementptr inbounds %struct.atkbdc_softc, %struct.atkbdc_softc* %122, i32 0, i32 7
  %124 = load i32, i32* %123, align 4
  %125 = load i32*, i32** %14, align 8
  %126 = load i32, i32* %125, align 4
  %127 = call i32 @ps2mouse_write(i32 %124, i32 %126, i32 1)
  %128 = load i32, i32* @KBDS_AUX_BUFFER_FULL, align 4
  %129 = load i32, i32* @KBDS_KBD_BUFFER_FULL, align 4
  %130 = or i32 %128, %129
  %131 = load %struct.atkbdc_softc*, %struct.atkbdc_softc** %16, align 8
  %132 = getelementptr inbounds %struct.atkbdc_softc, %struct.atkbdc_softc* %131, i32 0, i32 2
  %133 = load i32, i32* %132, align 8
  %134 = or i32 %133, %130
  store i32 %134, i32* %132, align 8
  %135 = load %struct.atkbdc_softc*, %struct.atkbdc_softc** %16, align 8
  %136 = call i32 @atkbdc_aux_poll(%struct.atkbdc_softc* %135)
  br label %163

137:                                              ; preds = %69
  %138 = load %struct.atkbdc_softc*, %struct.atkbdc_softc** %16, align 8
  %139 = getelementptr inbounds %struct.atkbdc_softc, %struct.atkbdc_softc* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 8
  %141 = icmp sge i32 %140, 97
  br i1 %141, label %142, label %162

142:                                              ; preds = %137
  %143 = load %struct.atkbdc_softc*, %struct.atkbdc_softc** %16, align 8
  %144 = getelementptr inbounds %struct.atkbdc_softc, %struct.atkbdc_softc* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 8
  %146 = icmp sle i32 %145, 127
  br i1 %146, label %147, label %162

147:                                              ; preds = %142
  %148 = load %struct.atkbdc_softc*, %struct.atkbdc_softc** %16, align 8
  %149 = getelementptr inbounds %struct.atkbdc_softc, %struct.atkbdc_softc* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 8
  %151 = sub nsw i32 %150, 96
  %152 = and i32 %151, 31
  store i32 %152, i32* %19, align 4
  %153 = load i32*, i32** %14, align 8
  %154 = load i32, i32* %153, align 4
  %155 = and i32 %154, 255
  %156 = load %struct.atkbdc_softc*, %struct.atkbdc_softc** %16, align 8
  %157 = getelementptr inbounds %struct.atkbdc_softc, %struct.atkbdc_softc* %156, i32 0, i32 3
  %158 = load i32*, i32** %157, align 8
  %159 = load i32, i32* %19, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds i32, i32* %158, i64 %160
  store i32 %155, i32* %161, align 4
  br label %162

162:                                              ; preds = %147, %142, %137
  br label %163

163:                                              ; preds = %162, %121, %116, %107, %102, %101
  %164 = load %struct.atkbdc_softc*, %struct.atkbdc_softc** %16, align 8
  %165 = getelementptr inbounds %struct.atkbdc_softc, %struct.atkbdc_softc* %164, i32 0, i32 0
  store i32 0, i32* %165, align 8
  %166 = load i32, i32* @KBDS_CTRL_FLAG, align 4
  %167 = xor i32 %166, -1
  %168 = load %struct.atkbdc_softc*, %struct.atkbdc_softc** %16, align 8
  %169 = getelementptr inbounds %struct.atkbdc_softc, %struct.atkbdc_softc* %168, i32 0, i32 2
  %170 = load i32, i32* %169, align 8
  %171 = and i32 %170, %167
  store i32 %171, i32* %169, align 8
  %172 = load %struct.atkbdc_softc*, %struct.atkbdc_softc** %16, align 8
  %173 = getelementptr inbounds %struct.atkbdc_softc, %struct.atkbdc_softc* %172, i32 0, i32 5
  %174 = call i32 @pthread_mutex_unlock(i32* %173)
  %175 = load i32, i32* %18, align 4
  store i32 %175, i32* %8, align 4
  br label %189

176:                                              ; preds = %62
  %177 = load %struct.atkbdc_softc*, %struct.atkbdc_softc** %16, align 8
  %178 = getelementptr inbounds %struct.atkbdc_softc, %struct.atkbdc_softc* %177, i32 0, i32 6
  %179 = load i32, i32* %178, align 8
  %180 = load i32*, i32** %14, align 8
  %181 = load i32, i32* %180, align 4
  %182 = call i32 @ps2kbd_write(i32 %179, i32 %181)
  %183 = load %struct.atkbdc_softc*, %struct.atkbdc_softc** %16, align 8
  %184 = call i32 @atkbdc_poll(%struct.atkbdc_softc* %183)
  %185 = load %struct.atkbdc_softc*, %struct.atkbdc_softc** %16, align 8
  %186 = getelementptr inbounds %struct.atkbdc_softc, %struct.atkbdc_softc* %185, i32 0, i32 5
  %187 = call i32 @pthread_mutex_unlock(i32* %186)
  %188 = load i32, i32* %18, align 4
  store i32 %188, i32* %8, align 4
  br label %189

189:                                              ; preds = %176, %163, %51, %22
  %190 = load i32, i32* %8, align 4
  ret i32 %190
}

declare dso_local i32 @pthread_mutex_lock(i32*) #1

declare dso_local i32 @atkbdc_dequeue_data(%struct.atkbdc_softc*, i32*) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

declare dso_local i32 @ps2mouse_write(i32, i32, i32) #1

declare dso_local i32 @atkbdc_poll(%struct.atkbdc_softc*) #1

declare dso_local i32 @atkbdc_kbd_queue_data(%struct.atkbdc_softc*, i32) #1

declare dso_local i32 @atkbdc_aux_poll(%struct.atkbdc_softc*) #1

declare dso_local i32 @ps2kbd_write(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
