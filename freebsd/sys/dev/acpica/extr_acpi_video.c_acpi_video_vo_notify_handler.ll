; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/acpica/extr_acpi_video.c_acpi_video_vo_notify_handler.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/acpica/extr_acpi_video.c_acpi_video_vo_notify_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_video_output = type { i64, i32, i32*, i32 }

@video_output = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"unknown notify event 0x%x from %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, i32, i8*)* @acpi_video_vo_notify_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @acpi_video_vo_notify_handler(i64 %0, i32 %1, i8* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.acpi_video_output*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i64 %0, i64* %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %12 = load i8*, i8** %6, align 8
  %13 = bitcast i8* %12 to %struct.acpi_video_output*
  store %struct.acpi_video_output* %13, %struct.acpi_video_output** %7, align 8
  %14 = load i32, i32* @video_output, align 4
  %15 = call i32 @ACPI_SERIAL_BEGIN(i32 %14)
  %16 = load %struct.acpi_video_output*, %struct.acpi_video_output** %7, align 8
  %17 = getelementptr inbounds %struct.acpi_video_output, %struct.acpi_video_output* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* %4, align 8
  %20 = icmp ne i64 %18, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %3
  br label %184

22:                                               ; preds = %3
  %23 = load i32, i32* %5, align 4
  switch i32 %23, label %44 [
    i32 131, label %24
    i32 129, label %31
    i32 130, label %31
    i32 128, label %31
  ]

24:                                               ; preds = %22
  %25 = load %struct.acpi_video_output*, %struct.acpi_video_output** %7, align 8
  %26 = getelementptr inbounds %struct.acpi_video_output, %struct.acpi_video_output* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = icmp sle i32 %27, 3
  br i1 %28, label %29, label %30

29:                                               ; preds = %24
  br label %184

30:                                               ; preds = %24
  br label %31

31:                                               ; preds = %22, %22, %22, %30
  %32 = load %struct.acpi_video_output*, %struct.acpi_video_output** %7, align 8
  %33 = getelementptr inbounds %struct.acpi_video_output, %struct.acpi_video_output* %32, i32 0, i32 2
  %34 = load i32*, i32** %33, align 8
  %35 = icmp eq i32* %34, null
  br i1 %35, label %36, label %37

36:                                               ; preds = %31
  br label %184

37:                                               ; preds = %31
  %38 = load i64, i64* %4, align 8
  %39 = call i32 @vo_get_brightness(i64 %38)
  store i32 %39, i32* %10, align 4
  %40 = load i32, i32* %10, align 4
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %37
  br label %184

43:                                               ; preds = %37
  br label %49

44:                                               ; preds = %22
  %45 = load i32, i32* %5, align 4
  %46 = load i64, i64* %4, align 8
  %47 = call i8* @acpi_name(i64 %46)
  %48 = call i32 @printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %45, i8* %47)
  br label %184

49:                                               ; preds = %43
  %50 = load i32, i32* %10, align 4
  store i32 %50, i32* %11, align 4
  %51 = load i32, i32* %5, align 4
  switch i32 %51, label %172 [
    i32 131, label %52
    i32 129, label %98
    i32 130, label %98
    i32 128, label %150
  ]

52:                                               ; preds = %49
  store i32 2, i32* %8, align 4
  br label %53

53:                                               ; preds = %94, %52
  %54 = load i32, i32* %8, align 4
  %55 = load %struct.acpi_video_output*, %struct.acpi_video_output** %7, align 8
  %56 = getelementptr inbounds %struct.acpi_video_output, %struct.acpi_video_output* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  %58 = icmp slt i32 %54, %57
  br i1 %58, label %59, label %97

59:                                               ; preds = %53
  %60 = load %struct.acpi_video_output*, %struct.acpi_video_output** %7, align 8
  %61 = getelementptr inbounds %struct.acpi_video_output, %struct.acpi_video_output* %60, i32 0, i32 2
  %62 = load i32*, i32** %61, align 8
  %63 = load i32, i32* %8, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i32, i32* %62, i64 %64
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* %10, align 4
  %68 = icmp eq i32 %66, %67
  br i1 %68, label %69, label %93

69:                                               ; preds = %59
  %70 = load %struct.acpi_video_output*, %struct.acpi_video_output** %7, align 8
  %71 = getelementptr inbounds %struct.acpi_video_output, %struct.acpi_video_output* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 8
  %73 = load i32, i32* %8, align 4
  %74 = add nsw i32 %73, 1
  %75 = icmp sgt i32 %72, %74
  br i1 %75, label %76, label %85

76:                                               ; preds = %69
  %77 = load %struct.acpi_video_output*, %struct.acpi_video_output** %7, align 8
  %78 = getelementptr inbounds %struct.acpi_video_output, %struct.acpi_video_output* %77, i32 0, i32 2
  %79 = load i32*, i32** %78, align 8
  %80 = load i32, i32* %8, align 4
  %81 = add nsw i32 %80, 1
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i32, i32* %79, i64 %82
  %84 = load i32, i32* %83, align 4
  br label %91

85:                                               ; preds = %69
  %86 = load %struct.acpi_video_output*, %struct.acpi_video_output** %7, align 8
  %87 = getelementptr inbounds %struct.acpi_video_output, %struct.acpi_video_output* %86, i32 0, i32 2
  %88 = load i32*, i32** %87, align 8
  %89 = getelementptr inbounds i32, i32* %88, i64 2
  %90 = load i32, i32* %89, align 4
  br label %91

91:                                               ; preds = %85, %76
  %92 = phi i32 [ %84, %76 ], [ %90, %85 ]
  store i32 %92, i32* %11, align 4
  br label %97

93:                                               ; preds = %59
  br label %94

94:                                               ; preds = %93
  %95 = load i32, i32* %8, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %8, align 4
  br label %53

97:                                               ; preds = %91, %53
  br label %172

98:                                               ; preds = %49, %49
  store i32 0, i32* %8, align 4
  br label %99

99:                                               ; preds = %146, %98
  %100 = load i32, i32* %8, align 4
  %101 = load %struct.acpi_video_output*, %struct.acpi_video_output** %7, align 8
  %102 = getelementptr inbounds %struct.acpi_video_output, %struct.acpi_video_output* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 8
  %104 = icmp slt i32 %100, %103
  br i1 %104, label %105, label %149

105:                                              ; preds = %99
  %106 = load %struct.acpi_video_output*, %struct.acpi_video_output** %7, align 8
  %107 = getelementptr inbounds %struct.acpi_video_output, %struct.acpi_video_output* %106, i32 0, i32 2
  %108 = load i32*, i32** %107, align 8
  %109 = load i32, i32* %8, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i32, i32* %108, i64 %110
  %112 = load i32, i32* %111, align 4
  store i32 %112, i32* %9, align 4
  %113 = load i32, i32* %5, align 4
  %114 = icmp eq i32 %113, 129
  br i1 %114, label %115, label %130

115:                                              ; preds = %105
  %116 = load i32, i32* %9, align 4
  %117 = load i32, i32* %10, align 4
  %118 = icmp sgt i32 %116, %117
  br i1 %118, label %119, label %129

119:                                              ; preds = %115
  %120 = load i32, i32* %9, align 4
  %121 = load i32, i32* %11, align 4
  %122 = icmp slt i32 %120, %121
  br i1 %122, label %127, label %123

123:                                              ; preds = %119
  %124 = load i32, i32* %10, align 4
  %125 = load i32, i32* %11, align 4
  %126 = icmp eq i32 %124, %125
  br i1 %126, label %127, label %129

127:                                              ; preds = %123, %119
  %128 = load i32, i32* %9, align 4
  store i32 %128, i32* %11, align 4
  br label %129

129:                                              ; preds = %127, %123, %115
  br label %145

130:                                              ; preds = %105
  %131 = load i32, i32* %9, align 4
  %132 = load i32, i32* %10, align 4
  %133 = icmp slt i32 %131, %132
  br i1 %133, label %134, label %144

134:                                              ; preds = %130
  %135 = load i32, i32* %9, align 4
  %136 = load i32, i32* %11, align 4
  %137 = icmp sgt i32 %135, %136
  br i1 %137, label %142, label %138

138:                                              ; preds = %134
  %139 = load i32, i32* %10, align 4
  %140 = load i32, i32* %11, align 4
  %141 = icmp eq i32 %139, %140
  br i1 %141, label %142, label %144

142:                                              ; preds = %138, %134
  %143 = load i32, i32* %9, align 4
  store i32 %143, i32* %11, align 4
  br label %144

144:                                              ; preds = %142, %138, %130
  br label %145

145:                                              ; preds = %144, %129
  br label %146

146:                                              ; preds = %145
  %147 = load i32, i32* %8, align 4
  %148 = add nsw i32 %147, 1
  store i32 %148, i32* %8, align 4
  br label %99

149:                                              ; preds = %99
  br label %172

150:                                              ; preds = %49
  store i32 0, i32* %8, align 4
  br label %151

151:                                              ; preds = %168, %150
  %152 = load i32, i32* %8, align 4
  %153 = load %struct.acpi_video_output*, %struct.acpi_video_output** %7, align 8
  %154 = getelementptr inbounds %struct.acpi_video_output, %struct.acpi_video_output* %153, i32 0, i32 1
  %155 = load i32, i32* %154, align 8
  %156 = icmp slt i32 %152, %155
  br i1 %156, label %157, label %171

157:                                              ; preds = %151
  %158 = load %struct.acpi_video_output*, %struct.acpi_video_output** %7, align 8
  %159 = getelementptr inbounds %struct.acpi_video_output, %struct.acpi_video_output* %158, i32 0, i32 2
  %160 = load i32*, i32** %159, align 8
  %161 = load i32, i32* %8, align 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds i32, i32* %160, i64 %162
  %164 = load i32, i32* %163, align 4
  %165 = icmp eq i32 %164, 0
  br i1 %165, label %166, label %167

166:                                              ; preds = %157
  store i32 0, i32* %11, align 4
  br label %171

167:                                              ; preds = %157
  br label %168

168:                                              ; preds = %167
  %169 = load i32, i32* %8, align 4
  %170 = add nsw i32 %169, 1
  store i32 %170, i32* %8, align 4
  br label %151

171:                                              ; preds = %166, %151
  br label %172

172:                                              ; preds = %49, %171, %149, %97
  %173 = load i32, i32* %11, align 4
  %174 = load i32, i32* %10, align 4
  %175 = icmp ne i32 %173, %174
  br i1 %175, label %176, label %183

176:                                              ; preds = %172
  %177 = load i64, i64* %4, align 8
  %178 = load i32, i32* %11, align 4
  %179 = call i32 @vo_set_brightness(i64 %177, i32 %178)
  %180 = load i32, i32* %11, align 4
  %181 = load %struct.acpi_video_output*, %struct.acpi_video_output** %7, align 8
  %182 = getelementptr inbounds %struct.acpi_video_output, %struct.acpi_video_output* %181, i32 0, i32 3
  store i32 %180, i32* %182, align 8
  br label %183

183:                                              ; preds = %176, %172
  br label %184

184:                                              ; preds = %183, %44, %42, %36, %29, %21
  %185 = load i32, i32* @video_output, align 4
  %186 = call i32 @ACPI_SERIAL_END(i32 %185)
  ret void
}

declare dso_local i32 @ACPI_SERIAL_BEGIN(i32) #1

declare dso_local i32 @vo_get_brightness(i64) #1

declare dso_local i32 @printf(i8*, i32, i8*) #1

declare dso_local i8* @acpi_name(i64) #1

declare dso_local i32 @vo_set_brightness(i64, i32) #1

declare dso_local i32 @ACPI_SERIAL_END(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
