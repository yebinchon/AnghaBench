; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/isa/extr_sb16.c_sb_intr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/isa/extr_sb16.c_sb_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sb_info = type { i32, %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i32, i32, i64 }
%struct.TYPE_3__ = type { i32, i32, i32, i64 }

@IRQ_STAT = common dso_local global i32 0, align 4
@DSP_DATA_AVAIL = common dso_local global i32 0, align 4
@DSP_DATA_AVL16 = common dso_local global i32 0, align 4
@BD_F_SB16X = common dso_local global i32 0, align 4
@AFMT_8BIT = common dso_local global i32 0, align 4
@AFMT_16BIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @sb_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sb_intr(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.sb_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %6 = load i8*, i8** %2, align 8
  %7 = bitcast i8* %6 to %struct.sb_info*
  store %struct.sb_info* %7, %struct.sb_info** %3, align 8
  store i32 0, i32* %4, align 4
  %8 = load %struct.sb_info*, %struct.sb_info** %3, align 8
  %9 = call i32 @sb_lock(%struct.sb_info* %8)
  %10 = load %struct.sb_info*, %struct.sb_info** %3, align 8
  %11 = load i32, i32* @IRQ_STAT, align 4
  %12 = call i32 @sb_getmixer(%struct.sb_info* %10, i32 %11)
  store i32 %12, i32* %5, align 4
  %13 = load i32, i32* %5, align 4
  %14 = and i32 %13, 1
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %1
  %17 = load %struct.sb_info*, %struct.sb_info** %3, align 8
  %18 = load i32, i32* @DSP_DATA_AVAIL, align 4
  %19 = call i32 @sb_rd(%struct.sb_info* %17, i32 %18)
  br label %20

20:                                               ; preds = %16, %1
  %21 = load i32, i32* %5, align 4
  %22 = and i32 %21, 2
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %20
  %25 = load %struct.sb_info*, %struct.sb_info** %3, align 8
  %26 = load i32, i32* @DSP_DATA_AVL16, align 4
  %27 = call i32 @sb_rd(%struct.sb_info* %25, i32 %26)
  br label %28

28:                                               ; preds = %24, %20
  %29 = load %struct.sb_info*, %struct.sb_info** %3, align 8
  %30 = call i32 @sb_unlock(%struct.sb_info* %29)
  %31 = load %struct.sb_info*, %struct.sb_info** %3, align 8
  %32 = getelementptr inbounds %struct.sb_info, %struct.sb_info* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* @BD_F_SB16X, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %92

37:                                               ; preds = %28
  %38 = load i32, i32* %5, align 4
  %39 = and i32 %38, 1
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %64

41:                                               ; preds = %37
  %42 = load %struct.sb_info*, %struct.sb_info** %3, align 8
  %43 = getelementptr inbounds %struct.sb_info, %struct.sb_info* %42, i32 0, i32 2
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* @AFMT_8BIT, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %41
  %50 = load i32, i32* %4, align 4
  %51 = or i32 %50, 1
  store i32 %51, i32* %4, align 4
  br label %52

52:                                               ; preds = %49, %41
  %53 = load %struct.sb_info*, %struct.sb_info** %3, align 8
  %54 = getelementptr inbounds %struct.sb_info, %struct.sb_info* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* @AFMT_8BIT, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %52
  %61 = load i32, i32* %4, align 4
  %62 = or i32 %61, 2
  store i32 %62, i32* %4, align 4
  br label %63

63:                                               ; preds = %60, %52
  br label %64

64:                                               ; preds = %63, %37
  %65 = load i32, i32* %5, align 4
  %66 = and i32 %65, 2
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %91

68:                                               ; preds = %64
  %69 = load %struct.sb_info*, %struct.sb_info** %3, align 8
  %70 = getelementptr inbounds %struct.sb_info, %struct.sb_info* %69, i32 0, i32 2
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = load i32, i32* @AFMT_16BIT, align 4
  %74 = and i32 %72, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %79

76:                                               ; preds = %68
  %77 = load i32, i32* %4, align 4
  %78 = or i32 %77, 1
  store i32 %78, i32* %4, align 4
  br label %79

79:                                               ; preds = %76, %68
  %80 = load %struct.sb_info*, %struct.sb_info** %3, align 8
  %81 = getelementptr inbounds %struct.sb_info, %struct.sb_info* %80, i32 0, i32 1
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = load i32, i32* @AFMT_16BIT, align 4
  %85 = and i32 %83, %84
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %90

87:                                               ; preds = %79
  %88 = load i32, i32* %4, align 4
  %89 = or i32 %88, 2
  store i32 %89, i32* %4, align 4
  br label %90

90:                                               ; preds = %87, %79
  br label %91

91:                                               ; preds = %90, %64
  br label %139

92:                                               ; preds = %28
  %93 = load i32, i32* %5, align 4
  %94 = and i32 %93, 1
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %115

96:                                               ; preds = %92
  %97 = load %struct.sb_info*, %struct.sb_info** %3, align 8
  %98 = getelementptr inbounds %struct.sb_info, %struct.sb_info* %97, i32 0, i32 2
  %99 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = icmp eq i32 %100, 1
  br i1 %101, label %102, label %105

102:                                              ; preds = %96
  %103 = load i32, i32* %4, align 4
  %104 = or i32 %103, 1
  store i32 %104, i32* %4, align 4
  br label %105

105:                                              ; preds = %102, %96
  %106 = load %struct.sb_info*, %struct.sb_info** %3, align 8
  %107 = getelementptr inbounds %struct.sb_info, %struct.sb_info* %106, i32 0, i32 1
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = icmp eq i32 %109, 1
  br i1 %110, label %111, label %114

111:                                              ; preds = %105
  %112 = load i32, i32* %4, align 4
  %113 = or i32 %112, 2
  store i32 %113, i32* %4, align 4
  br label %114

114:                                              ; preds = %111, %105
  br label %115

115:                                              ; preds = %114, %92
  %116 = load i32, i32* %5, align 4
  %117 = and i32 %116, 2
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %138

119:                                              ; preds = %115
  %120 = load %struct.sb_info*, %struct.sb_info** %3, align 8
  %121 = getelementptr inbounds %struct.sb_info, %struct.sb_info* %120, i32 0, i32 2
  %122 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 4
  %124 = icmp eq i32 %123, 2
  br i1 %124, label %125, label %128

125:                                              ; preds = %119
  %126 = load i32, i32* %4, align 4
  %127 = or i32 %126, 1
  store i32 %127, i32* %4, align 4
  br label %128

128:                                              ; preds = %125, %119
  %129 = load %struct.sb_info*, %struct.sb_info** %3, align 8
  %130 = getelementptr inbounds %struct.sb_info, %struct.sb_info* %129, i32 0, i32 1
  %131 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 4
  %133 = icmp eq i32 %132, 2
  br i1 %133, label %134, label %137

134:                                              ; preds = %128
  %135 = load i32, i32* %4, align 4
  %136 = or i32 %135, 2
  store i32 %136, i32* %4, align 4
  br label %137

137:                                              ; preds = %134, %128
  br label %138

138:                                              ; preds = %137, %115
  br label %139

139:                                              ; preds = %138, %91
  %140 = load i32, i32* %4, align 4
  %141 = and i32 %140, 1
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %155

143:                                              ; preds = %139
  %144 = load %struct.sb_info*, %struct.sb_info** %3, align 8
  %145 = getelementptr inbounds %struct.sb_info, %struct.sb_info* %144, i32 0, i32 2
  %146 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %145, i32 0, i32 3
  %147 = load i64, i64* %146, align 8
  %148 = icmp ne i64 %147, 0
  br i1 %148, label %149, label %155

149:                                              ; preds = %143
  %150 = load %struct.sb_info*, %struct.sb_info** %3, align 8
  %151 = getelementptr inbounds %struct.sb_info, %struct.sb_info* %150, i32 0, i32 2
  %152 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %151, i32 0, i32 2
  %153 = load i32, i32* %152, align 8
  %154 = call i32 @chn_intr(i32 %153)
  br label %155

155:                                              ; preds = %149, %143, %139
  %156 = load i32, i32* %4, align 4
  %157 = and i32 %156, 2
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %171

159:                                              ; preds = %155
  %160 = load %struct.sb_info*, %struct.sb_info** %3, align 8
  %161 = getelementptr inbounds %struct.sb_info, %struct.sb_info* %160, i32 0, i32 1
  %162 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %161, i32 0, i32 3
  %163 = load i64, i64* %162, align 8
  %164 = icmp ne i64 %163, 0
  br i1 %164, label %165, label %171

165:                                              ; preds = %159
  %166 = load %struct.sb_info*, %struct.sb_info** %3, align 8
  %167 = getelementptr inbounds %struct.sb_info, %struct.sb_info* %166, i32 0, i32 1
  %168 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %167, i32 0, i32 2
  %169 = load i32, i32* %168, align 8
  %170 = call i32 @chn_intr(i32 %169)
  br label %171

171:                                              ; preds = %165, %159, %155
  ret void
}

declare dso_local i32 @sb_lock(%struct.sb_info*) #1

declare dso_local i32 @sb_getmixer(%struct.sb_info*, i32) #1

declare dso_local i32 @sb_rd(%struct.sb_info*, i32) #1

declare dso_local i32 @sb_unlock(%struct.sb_info*) #1

declare dso_local i32 @chn_intr(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
