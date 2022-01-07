; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/isa/extr_ess.c_ess_intr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/isa/extr_ess.c_ess_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ess_info = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i64, i32, i64, i32 }
%struct.TYPE_3__ = type { i32, i64, i32, i64, i32 }

@PCMTRIG_STOP = common dso_local global i32 0, align 4
@DSP_DATA_AVAIL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @ess_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ess_intr(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.ess_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %7 = load i8*, i8** %2, align 8
  %8 = bitcast i8* %7 to %struct.ess_info*
  store %struct.ess_info* %8, %struct.ess_info** %3, align 8
  %9 = load %struct.ess_info*, %struct.ess_info** %3, align 8
  %10 = call i32 @ess_lock(%struct.ess_info* %9)
  store i32 0, i32* %4, align 4
  %11 = load %struct.ess_info*, %struct.ess_info** %3, align 8
  %12 = call i32 @ess_getmixer(%struct.ess_info* %11, i32 122)
  %13 = and i32 %12, 128
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %1
  %16 = load i32, i32* %4, align 4
  %17 = or i32 %16, 2
  store i32 %17, i32* %4, align 4
  br label %18

18:                                               ; preds = %15, %1
  %19 = load %struct.ess_info*, %struct.ess_info** %3, align 8
  %20 = call i32 @ess_rd(%struct.ess_info* %19, i32 12)
  %21 = and i32 %20, 1
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %18
  %24 = load i32, i32* %4, align 4
  %25 = or i32 %24, 1
  store i32 %25, i32* %4, align 4
  br label %26

26:                                               ; preds = %23, %18
  %27 = load i32, i32* %4, align 4
  %28 = load %struct.ess_info*, %struct.ess_info** %3, align 8
  %29 = getelementptr inbounds %struct.ess_info, %struct.ess_info* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = and i32 %27, %31
  %33 = icmp ne i32 %32, 0
  %34 = zext i1 %33 to i64
  %35 = select i1 %33, i32 1, i32 0
  store i32 %35, i32* %5, align 4
  %36 = load i32, i32* %4, align 4
  %37 = load %struct.ess_info*, %struct.ess_info** %3, align 8
  %38 = getelementptr inbounds %struct.ess_info, %struct.ess_info* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = and i32 %36, %40
  %42 = icmp ne i32 %41, 0
  %43 = zext i1 %42 to i64
  %44 = select i1 %42, i32 1, i32 0
  store i32 %44, i32* %6, align 4
  %45 = load i32, i32* %5, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %101

47:                                               ; preds = %26
  %48 = load %struct.ess_info*, %struct.ess_info** %3, align 8
  %49 = getelementptr inbounds %struct.ess_info, %struct.ess_info* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 3
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %63

53:                                               ; preds = %47
  %54 = load %struct.ess_info*, %struct.ess_info** %3, align 8
  %55 = call i32 @ess_unlock(%struct.ess_info* %54)
  %56 = load %struct.ess_info*, %struct.ess_info** %3, align 8
  %57 = getelementptr inbounds %struct.ess_info, %struct.ess_info* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 4
  %59 = load i32, i32* %58, align 8
  %60 = call i32 @chn_intr(i32 %59)
  %61 = load %struct.ess_info*, %struct.ess_info** %3, align 8
  %62 = call i32 @ess_lock(%struct.ess_info* %61)
  br label %63

63:                                               ; preds = %53, %47
  %64 = load %struct.ess_info*, %struct.ess_info** %3, align 8
  %65 = getelementptr inbounds %struct.ess_info, %struct.ess_info* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %100

69:                                               ; preds = %63
  %70 = load %struct.ess_info*, %struct.ess_info** %3, align 8
  %71 = getelementptr inbounds %struct.ess_info, %struct.ess_info* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 3
  store i64 0, i64* %72, align 8
  %73 = load %struct.ess_info*, %struct.ess_info** %3, align 8
  %74 = getelementptr inbounds %struct.ess_info, %struct.ess_info* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 8
  %77 = load i32, i32* @PCMTRIG_STOP, align 4
  %78 = call i32 @sndbuf_dma(i32 %76, i32 %77)
  %79 = load %struct.ess_info*, %struct.ess_info** %3, align 8
  %80 = getelementptr inbounds %struct.ess_info, %struct.ess_info* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i32 0, i32 1
  store i64 0, i64* %81, align 8
  %82 = load %struct.ess_info*, %struct.ess_info** %3, align 8
  %83 = getelementptr inbounds %struct.ess_info, %struct.ess_info* %82, i32 0, i32 1
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = icmp eq i32 %85, 1
  br i1 %86, label %87, label %93

87:                                               ; preds = %69
  %88 = load %struct.ess_info*, %struct.ess_info** %3, align 8
  %89 = load %struct.ess_info*, %struct.ess_info** %3, align 8
  %90 = call i32 @ess_read(%struct.ess_info* %89, i32 184)
  %91 = and i32 %90, -2
  %92 = call i32 @ess_write(%struct.ess_info* %88, i32 184, i32 %91)
  br label %99

93:                                               ; preds = %69
  %94 = load %struct.ess_info*, %struct.ess_info** %3, align 8
  %95 = load %struct.ess_info*, %struct.ess_info** %3, align 8
  %96 = call i32 @ess_getmixer(%struct.ess_info* %95, i32 120)
  %97 = and i32 %96, -4
  %98 = call i32 @ess_setmixer(%struct.ess_info* %94, i32 120, i32 %97)
  br label %99

99:                                               ; preds = %93, %87
  br label %100

100:                                              ; preds = %99, %63
  br label %101

101:                                              ; preds = %100, %26
  %102 = load i32, i32* %6, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %145

104:                                              ; preds = %101
  %105 = load %struct.ess_info*, %struct.ess_info** %3, align 8
  %106 = getelementptr inbounds %struct.ess_info, %struct.ess_info* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %106, i32 0, i32 3
  %108 = load i64, i64* %107, align 8
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %120

110:                                              ; preds = %104
  %111 = load %struct.ess_info*, %struct.ess_info** %3, align 8
  %112 = call i32 @ess_unlock(%struct.ess_info* %111)
  %113 = load %struct.ess_info*, %struct.ess_info** %3, align 8
  %114 = getelementptr inbounds %struct.ess_info, %struct.ess_info* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %114, i32 0, i32 4
  %116 = load i32, i32* %115, align 8
  %117 = call i32 @chn_intr(i32 %116)
  %118 = load %struct.ess_info*, %struct.ess_info** %3, align 8
  %119 = call i32 @ess_lock(%struct.ess_info* %118)
  br label %120

120:                                              ; preds = %110, %104
  %121 = load %struct.ess_info*, %struct.ess_info** %3, align 8
  %122 = getelementptr inbounds %struct.ess_info, %struct.ess_info* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %122, i32 0, i32 1
  %124 = load i64, i64* %123, align 8
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %144

126:                                              ; preds = %120
  %127 = load %struct.ess_info*, %struct.ess_info** %3, align 8
  %128 = getelementptr inbounds %struct.ess_info, %struct.ess_info* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %128, i32 0, i32 3
  store i64 0, i64* %129, align 8
  %130 = load %struct.ess_info*, %struct.ess_info** %3, align 8
  %131 = getelementptr inbounds %struct.ess_info, %struct.ess_info* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %131, i32 0, i32 2
  %133 = load i32, i32* %132, align 8
  %134 = load i32, i32* @PCMTRIG_STOP, align 4
  %135 = call i32 @sndbuf_dma(i32 %133, i32 %134)
  %136 = load %struct.ess_info*, %struct.ess_info** %3, align 8
  %137 = getelementptr inbounds %struct.ess_info, %struct.ess_info* %136, i32 0, i32 0
  %138 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %137, i32 0, i32 1
  store i64 0, i64* %138, align 8
  %139 = load %struct.ess_info*, %struct.ess_info** %3, align 8
  %140 = load %struct.ess_info*, %struct.ess_info** %3, align 8
  %141 = call i32 @ess_read(%struct.ess_info* %140, i32 184)
  %142 = and i32 %141, -2
  %143 = call i32 @ess_write(%struct.ess_info* %139, i32 184, i32 %142)
  br label %144

144:                                              ; preds = %126, %120
  br label %145

145:                                              ; preds = %144, %101
  %146 = load i32, i32* %4, align 4
  %147 = and i32 %146, 2
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %155

149:                                              ; preds = %145
  %150 = load %struct.ess_info*, %struct.ess_info** %3, align 8
  %151 = load %struct.ess_info*, %struct.ess_info** %3, align 8
  %152 = call i32 @ess_getmixer(%struct.ess_info* %151, i32 122)
  %153 = and i32 %152, -129
  %154 = call i32 @ess_setmixer(%struct.ess_info* %150, i32 122, i32 %153)
  br label %155

155:                                              ; preds = %149, %145
  %156 = load i32, i32* %4, align 4
  %157 = and i32 %156, 1
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %163

159:                                              ; preds = %155
  %160 = load %struct.ess_info*, %struct.ess_info** %3, align 8
  %161 = load i32, i32* @DSP_DATA_AVAIL, align 4
  %162 = call i32 @ess_rd(%struct.ess_info* %160, i32 %161)
  br label %163

163:                                              ; preds = %159, %155
  %164 = load %struct.ess_info*, %struct.ess_info** %3, align 8
  %165 = call i32 @ess_unlock(%struct.ess_info* %164)
  ret void
}

declare dso_local i32 @ess_lock(%struct.ess_info*) #1

declare dso_local i32 @ess_getmixer(%struct.ess_info*, i32) #1

declare dso_local i32 @ess_rd(%struct.ess_info*, i32) #1

declare dso_local i32 @ess_unlock(%struct.ess_info*) #1

declare dso_local i32 @chn_intr(i32) #1

declare dso_local i32 @sndbuf_dma(i32, i32) #1

declare dso_local i32 @ess_write(%struct.ess_info*, i32, i32) #1

declare dso_local i32 @ess_read(%struct.ess_info*, i32) #1

declare dso_local i32 @ess_setmixer(%struct.ess_info*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
