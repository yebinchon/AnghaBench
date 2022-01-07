; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/isa/extr_ess.c_ess_setupch.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/isa/extr_ess.c_ess_setupch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ess_info = type { i64 }

@PCMDIR_PLAY = common dso_local global i32 0, align 4
@AFMT_16BIT = common dso_local global i32 0, align 4
@AFMT_U8 = common dso_local global i32 0, align 4
@AFMT_U16_LE = common dso_local global i32 0, align 4
@PCMDIR_REC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"ess_setupch: dir1 bad\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"ess_setupch: dir2 bad\00", align 1
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
  %36 = load i32, i32* @AFMT_U8, align 4
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %42, label %38

38:                                               ; preds = %6
  %39 = load i32, i32* %11, align 4
  %40 = load i32, i32* @AFMT_U16_LE, align 4
  %41 = icmp eq i32 %39, %40
  br label %42

42:                                               ; preds = %38, %6
  %43 = phi i1 [ true, %6 ], [ %41, %38 ]
  %44 = zext i1 %43 to i64
  %45 = select i1 %43, i32 1, i32 0
  store i32 %45, i32* %16, align 4
  %46 = load %struct.ess_info*, %struct.ess_info** %7, align 8
  %47 = getelementptr inbounds %struct.ess_info, %struct.ess_info* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %42
  %51 = call i32 @ess_calcspeed9(i32* %10)
  br label %54

52:                                               ; preds = %42
  %53 = call i32 @ess_calcspeed8(i32* %10)
  br label %54

54:                                               ; preds = %52, %50
  %55 = phi i32 [ %51, %50 ], [ %53, %52 ]
  store i32 %55, i32* %17, align 4
  %56 = load i32, i32* %12, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %12, align 4
  %58 = load i32, i32* %8, align 4
  %59 = icmp eq i32 %58, 1
  br i1 %59, label %60, label %153

60:                                               ; preds = %54
  %61 = load i32, i32* %9, align 4
  %62 = load i32, i32* @PCMDIR_PLAY, align 4
  %63 = icmp eq i32 %61, %62
  br i1 %63, label %68, label %64

64:                                               ; preds = %60
  %65 = load i32, i32* %9, align 4
  %66 = load i32, i32* @PCMDIR_REC, align 4
  %67 = icmp eq i32 %65, %66
  br label %68

68:                                               ; preds = %64, %60
  %69 = phi i1 [ true, %60 ], [ %67, %64 ]
  %70 = zext i1 %69 to i32
  %71 = call i32 @KASSERT(i32 %70, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %72 = load %struct.ess_info*, %struct.ess_info** %7, align 8
  %73 = load i32, i32* %12, align 4
  %74 = and i32 %73, 255
  %75 = call i32 @ess_write(%struct.ess_info* %72, i32 164, i32 %74)
  %76 = load %struct.ess_info*, %struct.ess_info** %7, align 8
  %77 = load i32, i32* %12, align 4
  %78 = and i32 %77, 65280
  %79 = ashr i32 %78, 8
  %80 = call i32 @ess_write(%struct.ess_info* %76, i32 165, i32 %79)
  %81 = load %struct.ess_info*, %struct.ess_info** %7, align 8
  %82 = load i32, i32* %13, align 4
  %83 = icmp ne i32 %82, 0
  %84 = zext i1 %83 to i64
  %85 = select i1 %83, i32 0, i32 10
  %86 = or i32 4, %85
  %87 = call i32 @ess_write(%struct.ess_info* %81, i32 184, i32 %86)
  %88 = load %struct.ess_info*, %struct.ess_info** %7, align 8
  %89 = load %struct.ess_info*, %struct.ess_info** %7, align 8
  %90 = call i32 @ess_read(%struct.ess_info* %89, i32 168)
  %91 = and i32 %90, -4
  %92 = load i32, i32* %15, align 4
  %93 = icmp ne i32 %92, 0
  %94 = zext i1 %93 to i64
  %95 = select i1 %93, i32 1, i32 2
  %96 = or i32 %91, %95
  %97 = call i32 @ess_write(%struct.ess_info* %88, i32 168, i32 %96)
  %98 = load %struct.ess_info*, %struct.ess_info** %7, align 8
  %99 = call i32 @ess_write(%struct.ess_info* %98, i32 185, i32 2)
  %100 = load %struct.ess_info*, %struct.ess_info** %7, align 8
  %101 = load i32, i32* %17, align 4
  %102 = call i32 @ess_write(%struct.ess_info* %100, i32 161, i32 %101)
  %103 = load %struct.ess_info*, %struct.ess_info** %7, align 8
  %104 = load i32, i32* %10, align 4
  %105 = call i32 @ess_calcfilter(i32 %104)
  %106 = call i32 @ess_write(%struct.ess_info* %103, i32 162, i32 %105)
  %107 = load i32, i32* %13, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %116

109:                                              ; preds = %68
  %110 = load %struct.ess_info*, %struct.ess_info** %7, align 8
  %111 = load i32, i32* %16, align 4
  %112 = icmp ne i32 %111, 0
  %113 = zext i1 %112 to i64
  %114 = select i1 %112, i32 128, i32 0
  %115 = call i32 @ess_write(%struct.ess_info* %110, i32 182, i32 %114)
  br label %116

116:                                              ; preds = %109, %68
  %117 = load %struct.ess_info*, %struct.ess_info** %7, align 8
  %118 = load i32, i32* %16, align 4
  %119 = icmp ne i32 %118, 0
  %120 = zext i1 %119 to i64
  %121 = select i1 %119, i32 0, i32 32
  %122 = or i32 81, %121
  %123 = call i32 @ess_write(%struct.ess_info* %117, i32 183, i32 %122)
  %124 = load %struct.ess_info*, %struct.ess_info** %7, align 8
  %125 = load i32, i32* %16, align 4
  %126 = icmp ne i32 %125, 0
  %127 = zext i1 %126 to i64
  %128 = select i1 %126, i32 0, i32 32
  %129 = or i32 144, %128
  %130 = load i32, i32* %14, align 4
  %131 = icmp ne i32 %130, 0
  %132 = zext i1 %131 to i64
  %133 = select i1 %131, i32 4, i32 0
  %134 = or i32 %129, %133
  %135 = load i32, i32* %15, align 4
  %136 = icmp ne i32 %135, 0
  %137 = zext i1 %136 to i64
  %138 = select i1 %136, i32 8, i32 64
  %139 = or i32 %134, %138
  %140 = call i32 @ess_write(%struct.ess_info* %124, i32 183, i32 %139)
  %141 = load %struct.ess_info*, %struct.ess_info** %7, align 8
  %142 = load %struct.ess_info*, %struct.ess_info** %7, align 8
  %143 = call i32 @ess_read(%struct.ess_info* %142, i32 177)
  %144 = and i32 %143, 15
  %145 = or i32 %144, 80
  %146 = call i32 @ess_write(%struct.ess_info* %141, i32 177, i32 %145)
  %147 = load %struct.ess_info*, %struct.ess_info** %7, align 8
  %148 = load %struct.ess_info*, %struct.ess_info** %7, align 8
  %149 = call i32 @ess_read(%struct.ess_info* %148, i32 178)
  %150 = and i32 %149, 15
  %151 = or i32 %150, 80
  %152 = call i32 @ess_write(%struct.ess_info* %147, i32 178, i32 %151)
  br label %198

153:                                              ; preds = %54
  %154 = load i32, i32* %8, align 4
  %155 = icmp eq i32 %154, 2
  br i1 %155, label %156, label %197

156:                                              ; preds = %153
  %157 = load i32, i32* %9, align 4
  %158 = load i32, i32* @PCMDIR_PLAY, align 4
  %159 = icmp eq i32 %157, %158
  %160 = zext i1 %159 to i32
  %161 = call i32 @KASSERT(i32 %160, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  %162 = load %struct.ess_info*, %struct.ess_info** %7, align 8
  %163 = load i32, i32* %12, align 4
  %164 = and i32 %163, 255
  %165 = call i32 @ess_setmixer(%struct.ess_info* %162, i32 116, i32 %164)
  %166 = load %struct.ess_info*, %struct.ess_info** %7, align 8
  %167 = load i32, i32* %12, align 4
  %168 = and i32 %167, 65280
  %169 = ashr i32 %168, 8
  %170 = call i32 @ess_setmixer(%struct.ess_info* %166, i32 118, i32 %169)
  %171 = load %struct.ess_info*, %struct.ess_info** %7, align 8
  %172 = call i32 @ess_setmixer(%struct.ess_info* %171, i32 120, i32 144)
  %173 = load i32, i32* %14, align 4
  %174 = load i32, i32* %15, align 4
  %175 = shl i32 %174, 1
  %176 = or i32 %173, %175
  %177 = load i32, i32* %16, align 4
  %178 = shl i32 %177, 2
  %179 = or i32 %176, %178
  store i32 %179, i32* %18, align 4
  %180 = load %struct.ess_info*, %struct.ess_info** %7, align 8
  %181 = load i32, i32* %18, align 4
  %182 = or i32 64, %181
  %183 = call i32 @ess_setmixer(%struct.ess_info* %180, i32 122, i32 %182)
  %184 = load %struct.ess_info*, %struct.ess_info** %7, align 8
  %185 = getelementptr inbounds %struct.ess_info, %struct.ess_info* %184, i32 0, i32 0
  %186 = load i64, i64* %185, align 8
  %187 = icmp ne i64 %186, 0
  br i1 %187, label %188, label %196

188:                                              ; preds = %156
  %189 = load %struct.ess_info*, %struct.ess_info** %7, align 8
  %190 = load i32, i32* %17, align 4
  %191 = call i32 @ess_setmixer(%struct.ess_info* %189, i32 112, i32 %190)
  %192 = load %struct.ess_info*, %struct.ess_info** %7, align 8
  %193 = load i32, i32* %10, align 4
  %194 = call i32 @ess_calcfilter(i32 %193)
  %195 = call i32 @ess_setmixer(%struct.ess_info* %192, i32 114, i32 %194)
  br label %196

196:                                              ; preds = %188, %156
  br label %197

197:                                              ; preds = %196, %153
  br label %198

198:                                              ; preds = %197, %116
  ret i32 0
}

declare dso_local i32 @AFMT_CHANNEL(i32) #1

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
