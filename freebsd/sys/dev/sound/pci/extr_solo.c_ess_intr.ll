; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_solo.c_ess_intr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_solo.c_ess_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ess_info = type { i64, %struct.TYPE_4__, %struct.TYPE_3__, i64 }
%struct.TYPE_4__ = type { i32, i32, i64 }
%struct.TYPE_3__ = type { i32, i32, i64 }

@PCMDIR_PLAY = common dso_local global i64 0, align 8
@PCMDIR_REC = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [37 x i8] c"solo: IRQ neither playback nor rec!\0A\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"ess_intr: pirq:%d rirq:%d\0A\00", align 1
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
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
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
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %26
  %30 = load %struct.ess_info*, %struct.ess_info** %3, align 8
  %31 = call i32 @ess_unlock(%struct.ess_info* %30)
  br label %185

32:                                               ; preds = %26
  %33 = load %struct.ess_info*, %struct.ess_info** %3, align 8
  %34 = getelementptr inbounds %struct.ess_info, %struct.ess_info* %33, i32 0, i32 3
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %56

37:                                               ; preds = %32
  %38 = load i32, i32* %4, align 4
  %39 = load %struct.ess_info*, %struct.ess_info** %3, align 8
  %40 = getelementptr inbounds %struct.ess_info, %struct.ess_info* %39, i32 0, i32 2
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = and i32 %38, %42
  %44 = icmp ne i32 %43, 0
  %45 = zext i1 %44 to i64
  %46 = select i1 %44, i32 1, i32 0
  store i32 %46, i32* %5, align 4
  %47 = load i32, i32* %4, align 4
  %48 = load %struct.ess_info*, %struct.ess_info** %3, align 8
  %49 = getelementptr inbounds %struct.ess_info, %struct.ess_info* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = and i32 %47, %51
  %53 = icmp ne i32 %52, 0
  %54 = zext i1 %53 to i64
  %55 = select i1 %53, i32 1, i32 0
  store i32 %55, i32* %6, align 4
  br label %79

56:                                               ; preds = %32
  %57 = load %struct.ess_info*, %struct.ess_info** %3, align 8
  %58 = getelementptr inbounds %struct.ess_info, %struct.ess_info* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @PCMDIR_PLAY, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %62, label %63

62:                                               ; preds = %56
  store i32 1, i32* %5, align 4
  br label %63

63:                                               ; preds = %62, %56
  %64 = load %struct.ess_info*, %struct.ess_info** %3, align 8
  %65 = getelementptr inbounds %struct.ess_info, %struct.ess_info* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @PCMDIR_REC, align 8
  %68 = icmp eq i64 %66, %67
  br i1 %68, label %69, label %70

69:                                               ; preds = %63
  store i32 1, i32* %6, align 4
  br label %70

70:                                               ; preds = %69, %63
  %71 = load i32, i32* %5, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %78, label %73

73:                                               ; preds = %70
  %74 = load i32, i32* %6, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %78, label %76

76:                                               ; preds = %73
  %77 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  br label %78

78:                                               ; preds = %76, %73, %70
  br label %79

79:                                               ; preds = %78, %37
  %80 = load i32, i32* %5, align 4
  %81 = load i32, i32* %6, align 4
  %82 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %80, i32 %81)
  %83 = call i32 @DEB(i32 %82)
  %84 = load i32, i32* %5, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %130

86:                                               ; preds = %79
  %87 = load %struct.ess_info*, %struct.ess_info** %3, align 8
  %88 = getelementptr inbounds %struct.ess_info, %struct.ess_info* %87, i32 0, i32 2
  %89 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %88, i32 0, i32 2
  %90 = load i64, i64* %89, align 8
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %120

92:                                               ; preds = %86
  %93 = load %struct.ess_info*, %struct.ess_info** %3, align 8
  %94 = load %struct.ess_info*, %struct.ess_info** %3, align 8
  %95 = getelementptr inbounds %struct.ess_info, %struct.ess_info* %94, i32 0, i32 2
  %96 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = call i32 @ess_dmatrigger(%struct.ess_info* %93, i32 %97, i32 0)
  %99 = load %struct.ess_info*, %struct.ess_info** %3, align 8
  %100 = getelementptr inbounds %struct.ess_info, %struct.ess_info* %99, i32 0, i32 2
  %101 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %100, i32 0, i32 2
  store i64 0, i64* %101, align 8
  %102 = load %struct.ess_info*, %struct.ess_info** %3, align 8
  %103 = getelementptr inbounds %struct.ess_info, %struct.ess_info* %102, i32 0, i32 2
  %104 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = icmp eq i32 %105, 1
  br i1 %106, label %107, label %113

107:                                              ; preds = %92
  %108 = load %struct.ess_info*, %struct.ess_info** %3, align 8
  %109 = load %struct.ess_info*, %struct.ess_info** %3, align 8
  %110 = call i32 @ess_read(%struct.ess_info* %109, i32 184)
  %111 = and i32 %110, -2
  %112 = call i32 @ess_write(%struct.ess_info* %108, i32 184, i32 %111)
  br label %119

113:                                              ; preds = %92
  %114 = load %struct.ess_info*, %struct.ess_info** %3, align 8
  %115 = load %struct.ess_info*, %struct.ess_info** %3, align 8
  %116 = call i32 @ess_getmixer(%struct.ess_info* %115, i32 120)
  %117 = and i32 %116, -4
  %118 = call i32 @ess_setmixer(%struct.ess_info* %114, i32 120, i32 %117)
  br label %119

119:                                              ; preds = %113, %107
  br label %120

120:                                              ; preds = %119, %86
  %121 = load %struct.ess_info*, %struct.ess_info** %3, align 8
  %122 = call i32 @ess_unlock(%struct.ess_info* %121)
  %123 = load %struct.ess_info*, %struct.ess_info** %3, align 8
  %124 = getelementptr inbounds %struct.ess_info, %struct.ess_info* %123, i32 0, i32 2
  %125 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 4
  %127 = call i32 @chn_intr(i32 %126)
  %128 = load %struct.ess_info*, %struct.ess_info** %3, align 8
  %129 = call i32 @ess_lock(%struct.ess_info* %128)
  br label %130

130:                                              ; preds = %120, %79
  %131 = load i32, i32* %6, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %164

133:                                              ; preds = %130
  %134 = load %struct.ess_info*, %struct.ess_info** %3, align 8
  %135 = getelementptr inbounds %struct.ess_info, %struct.ess_info* %134, i32 0, i32 1
  %136 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %135, i32 0, i32 2
  %137 = load i64, i64* %136, align 8
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %139, label %154

139:                                              ; preds = %133
  %140 = load %struct.ess_info*, %struct.ess_info** %3, align 8
  %141 = load %struct.ess_info*, %struct.ess_info** %3, align 8
  %142 = getelementptr inbounds %struct.ess_info, %struct.ess_info* %141, i32 0, i32 1
  %143 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 8
  %145 = call i32 @ess_dmatrigger(%struct.ess_info* %140, i32 %144, i32 0)
  %146 = load %struct.ess_info*, %struct.ess_info** %3, align 8
  %147 = getelementptr inbounds %struct.ess_info, %struct.ess_info* %146, i32 0, i32 1
  %148 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %147, i32 0, i32 2
  store i64 0, i64* %148, align 8
  %149 = load %struct.ess_info*, %struct.ess_info** %3, align 8
  %150 = load %struct.ess_info*, %struct.ess_info** %3, align 8
  %151 = call i32 @ess_read(%struct.ess_info* %150, i32 184)
  %152 = and i32 %151, -2
  %153 = call i32 @ess_write(%struct.ess_info* %149, i32 184, i32 %152)
  br label %154

154:                                              ; preds = %139, %133
  %155 = load %struct.ess_info*, %struct.ess_info** %3, align 8
  %156 = call i32 @ess_unlock(%struct.ess_info* %155)
  %157 = load %struct.ess_info*, %struct.ess_info** %3, align 8
  %158 = getelementptr inbounds %struct.ess_info, %struct.ess_info* %157, i32 0, i32 1
  %159 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %158, i32 0, i32 1
  %160 = load i32, i32* %159, align 4
  %161 = call i32 @chn_intr(i32 %160)
  %162 = load %struct.ess_info*, %struct.ess_info** %3, align 8
  %163 = call i32 @ess_lock(%struct.ess_info* %162)
  br label %164

164:                                              ; preds = %154, %130
  %165 = load i32, i32* %4, align 4
  %166 = and i32 %165, 2
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %174

168:                                              ; preds = %164
  %169 = load %struct.ess_info*, %struct.ess_info** %3, align 8
  %170 = load %struct.ess_info*, %struct.ess_info** %3, align 8
  %171 = call i32 @ess_getmixer(%struct.ess_info* %170, i32 122)
  %172 = and i32 %171, -129
  %173 = call i32 @ess_setmixer(%struct.ess_info* %169, i32 122, i32 %172)
  br label %174

174:                                              ; preds = %168, %164
  %175 = load i32, i32* %4, align 4
  %176 = and i32 %175, 1
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %178, label %182

178:                                              ; preds = %174
  %179 = load %struct.ess_info*, %struct.ess_info** %3, align 8
  %180 = load i32, i32* @DSP_DATA_AVAIL, align 4
  %181 = call i32 @ess_rd(%struct.ess_info* %179, i32 %180)
  br label %182

182:                                              ; preds = %178, %174
  %183 = load %struct.ess_info*, %struct.ess_info** %3, align 8
  %184 = call i32 @ess_unlock(%struct.ess_info* %183)
  br label %185

185:                                              ; preds = %182, %29
  ret void
}

declare dso_local i32 @ess_lock(%struct.ess_info*) #1

declare dso_local i32 @ess_getmixer(%struct.ess_info*, i32) #1

declare dso_local i32 @ess_rd(%struct.ess_info*, i32) #1

declare dso_local i32 @ess_unlock(%struct.ess_info*) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @DEB(i32) #1

declare dso_local i32 @ess_dmatrigger(%struct.ess_info*, i32, i32) #1

declare dso_local i32 @ess_write(%struct.ess_info*, i32, i32) #1

declare dso_local i32 @ess_read(%struct.ess_info*, i32) #1

declare dso_local i32 @ess_setmixer(%struct.ess_info*, i32, i32) #1

declare dso_local i32 @chn_intr(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
