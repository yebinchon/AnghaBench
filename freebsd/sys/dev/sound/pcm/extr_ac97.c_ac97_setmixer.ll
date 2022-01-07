; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pcm/extr_ac97.c_ac97_setmixer.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pcm/extr_ac97.c_ac97_setmixer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ac97_info = type { i32, %struct.ac97mixtable_entry* }
%struct.ac97mixtable_entry = type { i32, i32, i32, i32, i32, i64, i32 }

@AC97_MUTE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ac97_info*, i32, i32, i32)* @ac97_setmixer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ac97_setmixer(%struct.ac97_info* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ac97_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.ac97mixtable_entry*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.ac97_info* %0, %struct.ac97_info** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %16 = load %struct.ac97_info*, %struct.ac97_info** %6, align 8
  %17 = getelementptr inbounds %struct.ac97_info, %struct.ac97_info* %16, i32 0, i32 1
  %18 = load %struct.ac97mixtable_entry*, %struct.ac97mixtable_entry** %17, align 8
  %19 = load i32, i32* %7, align 4
  %20 = zext i32 %19 to i64
  %21 = getelementptr inbounds %struct.ac97mixtable_entry, %struct.ac97mixtable_entry* %18, i64 %20
  store %struct.ac97mixtable_entry* %21, %struct.ac97mixtable_entry** %10, align 8
  %22 = load %struct.ac97mixtable_entry*, %struct.ac97mixtable_entry** %10, align 8
  %23 = getelementptr inbounds %struct.ac97mixtable_entry, %struct.ac97mixtable_entry* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %175

26:                                               ; preds = %4
  %27 = load %struct.ac97mixtable_entry*, %struct.ac97mixtable_entry** %10, align 8
  %28 = getelementptr inbounds %struct.ac97mixtable_entry, %struct.ac97mixtable_entry* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %175

31:                                               ; preds = %26
  %32 = load %struct.ac97mixtable_entry*, %struct.ac97mixtable_entry** %10, align 8
  %33 = getelementptr inbounds %struct.ac97mixtable_entry, %struct.ac97mixtable_entry* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 8
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %175

36:                                               ; preds = %31
  %37 = load %struct.ac97mixtable_entry*, %struct.ac97mixtable_entry** %10, align 8
  %38 = getelementptr inbounds %struct.ac97mixtable_entry, %struct.ac97mixtable_entry* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = icmp sge i32 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %36
  %42 = load %struct.ac97mixtable_entry*, %struct.ac97mixtable_entry** %10, align 8
  %43 = getelementptr inbounds %struct.ac97mixtable_entry, %struct.ac97mixtable_entry* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  br label %50

45:                                               ; preds = %36
  %46 = load %struct.ac97mixtable_entry*, %struct.ac97mixtable_entry** %10, align 8
  %47 = getelementptr inbounds %struct.ac97mixtable_entry, %struct.ac97mixtable_entry* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = sub nsw i32 0, %48
  br label %50

50:                                               ; preds = %45, %41
  %51 = phi i32 [ %44, %41 ], [ %49, %45 ]
  store i32 %51, i32* %14, align 4
  %52 = load %struct.ac97mixtable_entry*, %struct.ac97mixtable_entry** %10, align 8
  %53 = getelementptr inbounds %struct.ac97mixtable_entry, %struct.ac97mixtable_entry* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 8
  %55 = shl i32 1, %54
  %56 = sub nsw i32 %55, 1
  store i32 %56, i32* %12, align 4
  %57 = load i32, i32* %12, align 4
  %58 = shl i32 %57, 8
  %59 = load i32, i32* %12, align 4
  %60 = or i32 %58, %59
  store i32 %60, i32* %11, align 4
  %61 = load %struct.ac97mixtable_entry*, %struct.ac97mixtable_entry** %10, align 8
  %62 = getelementptr inbounds %struct.ac97mixtable_entry, %struct.ac97mixtable_entry* %61, i32 0, i32 6
  %63 = load i32, i32* %62, align 8
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %67, label %65

65:                                               ; preds = %50
  %66 = load i32, i32* %8, align 4
  store i32 %66, i32* %9, align 4
  br label %67

67:                                               ; preds = %65, %50
  %68 = load %struct.ac97mixtable_entry*, %struct.ac97mixtable_entry** %10, align 8
  %69 = getelementptr inbounds %struct.ac97mixtable_entry, %struct.ac97mixtable_entry* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = icmp sgt i32 %70, 0
  br i1 %71, label %72, label %77

72:                                               ; preds = %67
  %73 = load i32, i32* %8, align 4
  %74 = sub i32 100, %73
  store i32 %74, i32* %8, align 4
  %75 = load i32, i32* %9, align 4
  %76 = sub i32 100, %75
  store i32 %76, i32* %9, align 4
  br label %77

77:                                               ; preds = %72, %67
  %78 = load i32, i32* %8, align 4
  %79 = load i32, i32* %12, align 4
  %80 = mul i32 %78, %79
  %81 = udiv i32 %80, 100
  store i32 %81, i32* %8, align 4
  %82 = load i32, i32* %9, align 4
  %83 = load i32, i32* %12, align 4
  %84 = mul i32 %82, %83
  %85 = udiv i32 %84, 100
  store i32 %85, i32* %9, align 4
  %86 = load i32, i32* %8, align 4
  %87 = shl i32 %86, 8
  %88 = load i32, i32* %9, align 4
  %89 = or i32 %87, %88
  store i32 %89, i32* %13, align 4
  %90 = load i32, i32* %8, align 4
  %91 = mul i32 %90, 100
  %92 = load i32, i32* %12, align 4
  %93 = udiv i32 %91, %92
  store i32 %93, i32* %8, align 4
  %94 = load i32, i32* %9, align 4
  %95 = mul i32 %94, 100
  %96 = load i32, i32* %12, align 4
  %97 = udiv i32 %95, %96
  store i32 %97, i32* %9, align 4
  %98 = load %struct.ac97mixtable_entry*, %struct.ac97mixtable_entry** %10, align 8
  %99 = getelementptr inbounds %struct.ac97mixtable_entry, %struct.ac97mixtable_entry* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = icmp sgt i32 %100, 0
  br i1 %101, label %102, label %107

102:                                              ; preds = %77
  %103 = load i32, i32* %8, align 4
  %104 = sub i32 100, %103
  store i32 %104, i32* %8, align 4
  %105 = load i32, i32* %9, align 4
  %106 = sub i32 100, %105
  store i32 %106, i32* %9, align 4
  br label %107

107:                                              ; preds = %102, %77
  %108 = load %struct.ac97mixtable_entry*, %struct.ac97mixtable_entry** %10, align 8
  %109 = getelementptr inbounds %struct.ac97mixtable_entry, %struct.ac97mixtable_entry* %108, i32 0, i32 3
  %110 = load i32, i32* %109, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %126

112:                                              ; preds = %107
  %113 = load i32, i32* %12, align 4
  %114 = load i32, i32* %13, align 4
  %115 = and i32 %114, %113
  store i32 %115, i32* %13, align 4
  %116 = load %struct.ac97mixtable_entry*, %struct.ac97mixtable_entry** %10, align 8
  %117 = getelementptr inbounds %struct.ac97mixtable_entry, %struct.ac97mixtable_entry* %116, i32 0, i32 3
  %118 = load i32, i32* %117, align 4
  %119 = load i32, i32* %13, align 4
  %120 = shl i32 %119, %118
  store i32 %120, i32* %13, align 4
  %121 = load i32, i32* %12, align 4
  %122 = load %struct.ac97mixtable_entry*, %struct.ac97mixtable_entry** %10, align 8
  %123 = getelementptr inbounds %struct.ac97mixtable_entry, %struct.ac97mixtable_entry* %122, i32 0, i32 3
  %124 = load i32, i32* %123, align 4
  %125 = shl i32 %121, %124
  store i32 %125, i32* %11, align 4
  br label %126

126:                                              ; preds = %112, %107
  %127 = load %struct.ac97mixtable_entry*, %struct.ac97mixtable_entry** %10, align 8
  %128 = getelementptr inbounds %struct.ac97mixtable_entry, %struct.ac97mixtable_entry* %127, i32 0, i32 4
  %129 = load i32, i32* %128, align 8
  %130 = icmp eq i32 %129, 1
  br i1 %130, label %131, label %143

131:                                              ; preds = %126
  %132 = load i32, i32* @AC97_MUTE, align 4
  %133 = load i32, i32* %11, align 4
  %134 = or i32 %133, %132
  store i32 %134, i32* %11, align 4
  %135 = load i32, i32* %8, align 4
  %136 = icmp eq i32 %135, 0
  br i1 %136, label %137, label %142

137:                                              ; preds = %131
  %138 = load i32, i32* %9, align 4
  %139 = icmp eq i32 %138, 0
  br i1 %139, label %140, label %142

140:                                              ; preds = %137
  %141 = load i32, i32* @AC97_MUTE, align 4
  store i32 %141, i32* %13, align 4
  br label %142

142:                                              ; preds = %140, %137, %131
  br label %143

143:                                              ; preds = %142, %126
  %144 = load %struct.ac97_info*, %struct.ac97_info** %6, align 8
  %145 = getelementptr inbounds %struct.ac97_info, %struct.ac97_info* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 8
  %147 = call i32 @snd_mtxlock(i32 %146)
  %148 = load %struct.ac97mixtable_entry*, %struct.ac97mixtable_entry** %10, align 8
  %149 = getelementptr inbounds %struct.ac97mixtable_entry, %struct.ac97mixtable_entry* %148, i32 0, i32 5
  %150 = load i64, i64* %149, align 8
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %152, label %162

152:                                              ; preds = %143
  %153 = load %struct.ac97_info*, %struct.ac97_info** %6, align 8
  %154 = load i32, i32* %14, align 4
  %155 = call i32 @ac97_rdcd(%struct.ac97_info* %153, i32 %154)
  store i32 %155, i32* %15, align 4
  %156 = load i32, i32* %15, align 4
  %157 = load i32, i32* %11, align 4
  %158 = xor i32 %157, -1
  %159 = and i32 %156, %158
  %160 = load i32, i32* %13, align 4
  %161 = or i32 %160, %159
  store i32 %161, i32* %13, align 4
  br label %162

162:                                              ; preds = %152, %143
  %163 = load %struct.ac97_info*, %struct.ac97_info** %6, align 8
  %164 = load i32, i32* %14, align 4
  %165 = load i32, i32* %13, align 4
  %166 = call i32 @ac97_wrcd(%struct.ac97_info* %163, i32 %164, i32 %165)
  %167 = load %struct.ac97_info*, %struct.ac97_info** %6, align 8
  %168 = getelementptr inbounds %struct.ac97_info, %struct.ac97_info* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 8
  %170 = call i32 @snd_mtxunlock(i32 %169)
  %171 = load i32, i32* %8, align 4
  %172 = load i32, i32* %9, align 4
  %173 = shl i32 %172, 8
  %174 = or i32 %171, %173
  store i32 %174, i32* %5, align 4
  br label %176

175:                                              ; preds = %31, %26, %4
  store i32 -1, i32* %5, align 4
  br label %176

176:                                              ; preds = %175, %162
  %177 = load i32, i32* %5, align 4
  ret i32 %177
}

declare dso_local i32 @snd_mtxlock(i32) #1

declare dso_local i32 @ac97_rdcd(%struct.ac97_info*, i32) #1

declare dso_local i32 @ac97_wrcd(%struct.ac97_info*, i32, i32) #1

declare dso_local i32 @snd_mtxunlock(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
