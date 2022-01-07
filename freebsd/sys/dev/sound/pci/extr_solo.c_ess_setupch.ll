; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_solo.c_ess_setupch.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_solo.c_ess_setupch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ess_info = type { i32, i64 }

@PCMDIR_PLAY = common dso_local global i32 0, align 4
@AFMT_16BIT = common dso_local global i32 0, align 4
@AFMT_SIGNED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"ess_setupch\0A\00", align 1
@PCMDIR_REC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"ess_setupch: dir1 bad\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"ess_setupch: dir2 bad\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ess_info*, i32, i32, i32, i32, i32)* @ess_setupch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ess_setupch(%struct.ess_info* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.ess_info*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.ess_info* %0, %struct.ess_info** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %19 = load i32, i32* %9, align 4
  %20 = load i32, i32* @PCMDIR_PLAY, align 4
  %21 = icmp eq i32 %19, %20
  %22 = zext i1 %21 to i64
  %23 = select i1 %21, i32 1, i32 0
  store i32 %23, i32* %13, align 4
  %24 = load i32, i32* %11, align 4
  %25 = load i32, i32* @AFMT_16BIT, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  %28 = zext i1 %27 to i64
  %29 = select i1 %27, i32 1, i32 0
  store i32 %29, i32* %14, align 4
  %30 = load i32, i32* %11, align 4
  %31 = call i32 @AFMT_CHANNEL(i32 %30)
  %32 = icmp sgt i32 %31, 1
  %33 = zext i1 %32 to i64
  %34 = select i1 %32, i32 1, i32 0
  store i32 %34, i32* %15, align 4
  %35 = load i32, i32* %11, align 4
  %36 = load i32, i32* @AFMT_SIGNED, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  %39 = xor i1 %38, true
  %40 = zext i1 %39 to i64
  %41 = select i1 %39, i32 1, i32 0
  store i32 %41, i32* %16, align 4
  %42 = call i32 @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %43 = call i32 @DEB(i32 %42)
  %44 = load %struct.ess_info*, %struct.ess_info** %7, align 8
  %45 = getelementptr inbounds %struct.ess_info, %struct.ess_info* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %6
  %49 = call i32 @ess_calcspeed9(i32* %10)
  br label %52

50:                                               ; preds = %6
  %51 = call i32 @ess_calcspeed8(i32* %10)
  br label %52

52:                                               ; preds = %50, %48
  %53 = phi i32 [ %49, %48 ], [ %51, %50 ]
  store i32 %53, i32* %17, align 4
  %54 = load i32, i32* %13, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %52
  %57 = load i32, i32* @PCMDIR_PLAY, align 4
  br label %60

58:                                               ; preds = %52
  %59 = load i32, i32* @PCMDIR_REC, align 4
  br label %60

60:                                               ; preds = %58, %56
  %61 = phi i32 [ %57, %56 ], [ %59, %58 ]
  %62 = load %struct.ess_info*, %struct.ess_info** %7, align 8
  %63 = getelementptr inbounds %struct.ess_info, %struct.ess_info* %62, i32 0, i32 0
  store i32 %61, i32* %63, align 8
  %64 = load i32, i32* %8, align 4
  %65 = icmp eq i32 %64, 1
  br i1 %65, label %66, label %144

66:                                               ; preds = %60
  %67 = load i32, i32* %9, align 4
  %68 = load i32, i32* @PCMDIR_PLAY, align 4
  %69 = icmp eq i32 %67, %68
  br i1 %69, label %74, label %70

70:                                               ; preds = %66
  %71 = load i32, i32* %9, align 4
  %72 = load i32, i32* @PCMDIR_REC, align 4
  %73 = icmp eq i32 %71, %72
  br label %74

74:                                               ; preds = %70, %66
  %75 = phi i1 [ true, %66 ], [ %73, %70 ]
  %76 = zext i1 %75 to i32
  %77 = call i32 @KASSERT(i32 %76, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  %78 = load i32, i32* %12, align 4
  %79 = sub nsw i32 0, %78
  store i32 %79, i32* %12, align 4
  %80 = load %struct.ess_info*, %struct.ess_info** %7, align 8
  %81 = load i32, i32* %12, align 4
  %82 = and i32 %81, 255
  %83 = call i32 @ess_write(%struct.ess_info* %80, i32 164, i32 %82)
  %84 = load %struct.ess_info*, %struct.ess_info** %7, align 8
  %85 = load i32, i32* %12, align 4
  %86 = and i32 %85, 65280
  %87 = ashr i32 %86, 8
  %88 = call i32 @ess_write(%struct.ess_info* %84, i32 165, i32 %87)
  %89 = load %struct.ess_info*, %struct.ess_info** %7, align 8
  %90 = load i32, i32* %13, align 4
  %91 = icmp ne i32 %90, 0
  %92 = zext i1 %91 to i64
  %93 = select i1 %91, i32 0, i32 10
  %94 = or i32 4, %93
  %95 = call i32 @ess_write(%struct.ess_info* %89, i32 184, i32 %94)
  %96 = load %struct.ess_info*, %struct.ess_info** %7, align 8
  %97 = load %struct.ess_info*, %struct.ess_info** %7, align 8
  %98 = call i32 @ess_read(%struct.ess_info* %97, i32 168)
  %99 = and i32 %98, -4
  %100 = load i32, i32* %15, align 4
  %101 = icmp ne i32 %100, 0
  %102 = zext i1 %101 to i64
  %103 = select i1 %101, i32 1, i32 2
  %104 = or i32 %99, %103
  %105 = call i32 @ess_write(%struct.ess_info* %96, i32 168, i32 %104)
  %106 = load %struct.ess_info*, %struct.ess_info** %7, align 8
  %107 = call i32 @ess_write(%struct.ess_info* %106, i32 185, i32 2)
  %108 = load %struct.ess_info*, %struct.ess_info** %7, align 8
  %109 = load i32, i32* %17, align 4
  %110 = call i32 @ess_write(%struct.ess_info* %108, i32 161, i32 %109)
  %111 = load %struct.ess_info*, %struct.ess_info** %7, align 8
  %112 = load i32, i32* %10, align 4
  %113 = call i32 @ess_calcfilter(i32 %112)
  %114 = call i32 @ess_write(%struct.ess_info* %111, i32 162, i32 %113)
  %115 = load %struct.ess_info*, %struct.ess_info** %7, align 8
  %116 = load i32, i32* %16, align 4
  %117 = icmp ne i32 %116, 0
  %118 = zext i1 %117 to i64
  %119 = select i1 %117, i32 0, i32 32
  %120 = or i32 145, %119
  %121 = load i32, i32* %14, align 4
  %122 = icmp ne i32 %121, 0
  %123 = zext i1 %122 to i64
  %124 = select i1 %122, i32 4, i32 0
  %125 = or i32 %120, %124
  %126 = load i32, i32* %15, align 4
  %127 = icmp ne i32 %126, 0
  %128 = zext i1 %127 to i64
  %129 = select i1 %127, i32 8, i32 64
  %130 = or i32 %125, %129
  %131 = call i32 @ess_write(%struct.ess_info* %115, i32 183, i32 %130)
  %132 = load %struct.ess_info*, %struct.ess_info** %7, align 8
  %133 = load %struct.ess_info*, %struct.ess_info** %7, align 8
  %134 = call i32 @ess_read(%struct.ess_info* %133, i32 177)
  %135 = and i32 %134, 15
  %136 = or i32 %135, 80
  %137 = call i32 @ess_write(%struct.ess_info* %132, i32 177, i32 %136)
  %138 = load %struct.ess_info*, %struct.ess_info** %7, align 8
  %139 = load %struct.ess_info*, %struct.ess_info** %7, align 8
  %140 = call i32 @ess_read(%struct.ess_info* %139, i32 178)
  %141 = and i32 %140, 15
  %142 = or i32 %141, 80
  %143 = call i32 @ess_write(%struct.ess_info* %138, i32 178, i32 %142)
  br label %196

144:                                              ; preds = %60
  %145 = load i32, i32* %8, align 4
  %146 = icmp eq i32 %145, 2
  br i1 %146, label %147, label %195

147:                                              ; preds = %144
  %148 = load i32, i32* %9, align 4
  %149 = load i32, i32* @PCMDIR_PLAY, align 4
  %150 = icmp eq i32 %148, %149
  %151 = zext i1 %150 to i32
  %152 = call i32 @KASSERT(i32 %151, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  %153 = load i32, i32* %12, align 4
  %154 = ashr i32 %153, 1
  store i32 %154, i32* %12, align 4
  %155 = load i32, i32* %12, align 4
  %156 = sub nsw i32 0, %155
  store i32 %156, i32* %12, align 4
  %157 = load %struct.ess_info*, %struct.ess_info** %7, align 8
  %158 = load i32, i32* %12, align 4
  %159 = and i32 %158, 255
  %160 = call i32 @ess_setmixer(%struct.ess_info* %157, i32 116, i32 %159)
  %161 = load %struct.ess_info*, %struct.ess_info** %7, align 8
  %162 = load i32, i32* %12, align 4
  %163 = and i32 %162, 65280
  %164 = ashr i32 %163, 8
  %165 = call i32 @ess_setmixer(%struct.ess_info* %161, i32 118, i32 %164)
  %166 = load %struct.ess_info*, %struct.ess_info** %7, align 8
  %167 = call i32 @ess_setmixer(%struct.ess_info* %166, i32 120, i32 16)
  %168 = load i32, i32* %14, align 4
  %169 = load i32, i32* %15, align 4
  %170 = shl i32 %169, 1
  %171 = or i32 %168, %170
  %172 = load i32, i32* %16, align 4
  %173 = icmp ne i32 %172, 0
  %174 = xor i1 %173, true
  %175 = zext i1 %174 to i32
  %176 = shl i32 %175, 2
  %177 = or i32 %171, %176
  store i32 %177, i32* %18, align 4
  %178 = load %struct.ess_info*, %struct.ess_info** %7, align 8
  %179 = load i32, i32* %18, align 4
  %180 = or i32 64, %179
  %181 = call i32 @ess_setmixer(%struct.ess_info* %178, i32 122, i32 %180)
  %182 = load %struct.ess_info*, %struct.ess_info** %7, align 8
  %183 = getelementptr inbounds %struct.ess_info, %struct.ess_info* %182, i32 0, i32 1
  %184 = load i64, i64* %183, align 8
  %185 = icmp ne i64 %184, 0
  br i1 %185, label %186, label %194

186:                                              ; preds = %147
  %187 = load %struct.ess_info*, %struct.ess_info** %7, align 8
  %188 = load i32, i32* %17, align 4
  %189 = call i32 @ess_setmixer(%struct.ess_info* %187, i32 112, i32 %188)
  %190 = load %struct.ess_info*, %struct.ess_info** %7, align 8
  %191 = load i32, i32* %10, align 4
  %192 = call i32 @ess_calcfilter(i32 %191)
  %193 = call i32 @ess_setmixer(%struct.ess_info* %190, i32 114, i32 %192)
  br label %194

194:                                              ; preds = %186, %147
  br label %195

195:                                              ; preds = %194, %144
  br label %196

196:                                              ; preds = %195, %74
  ret i32 0
}

declare dso_local i32 @AFMT_CHANNEL(i32) #1

declare dso_local i32 @DEB(i32) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @ess_calcspeed9(i32*) #1

declare dso_local i32 @ess_calcspeed8(i32*) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @ess_write(%struct.ess_info*, i32, i32) #1

declare dso_local i32 @ess_read(%struct.ess_info*, i32) #1

declare dso_local i32 @ess_calcfilter(i32) #1

declare dso_local i32 @ess_setmixer(%struct.ess_info*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
