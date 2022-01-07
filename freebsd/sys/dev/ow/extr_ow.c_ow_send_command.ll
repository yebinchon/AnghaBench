; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ow/extr_ow.c_ow_send_command.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ow/extr_ow.c_ow_send_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ow_timing = type { i32 }
%struct.ow_cmd = type { i32, i32, i32*, i32, i32, i32*, i32, i32*, i32* }

@timing_regular = common dso_local global %struct.ow_timing zeroinitializer, align 4
@.str = private unnamed_addr constant [31 x i8] c"Reset said no device on bus?.\0A\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"Reset said the device wasn't there.\0A\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [35 x i8] c"Reset discovered bus wired wrong.\0A\00", align 1
@OW_FLAG_OVERDRIVE = common dso_local global i32 0, align 4
@timing_overdrive = common dso_local global %struct.ow_timing zeroinitializer, align 4
@OW_FLAG_READ_BIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, %struct.ow_cmd*)* @ow_send_command to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ow_send_command(i32 %0, i32 %1, %struct.ow_cmd* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.ow_cmd*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.ow_timing*, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store %struct.ow_cmd* %2, %struct.ow_cmd** %7, align 8
  %14 = load i32, i32* %5, align 4
  %15 = call i32 @device_get_parent(i32 %14)
  store i32 %15, i32* %12, align 4
  store i32 4, i32* %11, align 4
  br label %16

16:                                               ; preds = %32, %3
  %17 = load i32, i32* %12, align 4
  %18 = call i32 @OWLL_RESET_AND_PRESENCE(i32 %17, %struct.ow_timing* @timing_regular, i32* %8)
  %19 = load i32, i32* %8, align 4
  %20 = icmp eq i32 %19, 1
  br i1 %20, label %21, label %24

21:                                               ; preds = %16
  %22 = load i32, i32* %5, align 4
  %23 = call i32 @device_printf(i32 %22, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  br label %24

24:                                               ; preds = %21, %16
  br label %25

25:                                               ; preds = %24
  %26 = load i32, i32* %8, align 4
  %27 = icmp eq i32 %26, 1
  br i1 %27, label %28, label %32

28:                                               ; preds = %25
  %29 = load i32, i32* %11, align 4
  %30 = add nsw i32 %29, -1
  store i32 %30, i32* %11, align 4
  %31 = icmp sgt i32 %29, 0
  br label %32

32:                                               ; preds = %28, %25
  %33 = phi i1 [ false, %25 ], [ %31, %28 ]
  br i1 %33, label %16, label %34

34:                                               ; preds = %32
  %35 = load i32, i32* %8, align 4
  %36 = icmp eq i32 %35, 1
  br i1 %36, label %37, label %41

37:                                               ; preds = %34
  %38 = load i32, i32* %5, align 4
  %39 = call i32 @device_printf(i32 %38, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  %40 = load i32, i32* @ENOENT, align 4
  store i32 %40, i32* %4, align 4
  br label %188

41:                                               ; preds = %34
  %42 = load i32, i32* %8, align 4
  %43 = icmp eq i32 %42, -1
  br i1 %43, label %44, label %48

44:                                               ; preds = %41
  %45 = load i32, i32* %5, align 4
  %46 = call i32 @device_printf(i32 %45, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0))
  %47 = load i32, i32* @ENOENT, align 4
  store i32 %47, i32* %4, align 4
  br label %188

48:                                               ; preds = %41
  store i32 0, i32* %9, align 4
  br label %49

49:                                               ; preds = %65, %48
  %50 = load i32, i32* %9, align 4
  %51 = load %struct.ow_cmd*, %struct.ow_cmd** %7, align 8
  %52 = getelementptr inbounds %struct.ow_cmd, %struct.ow_cmd* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = icmp slt i32 %50, %53
  br i1 %54, label %55, label %68

55:                                               ; preds = %49
  %56 = load i32, i32* %12, align 4
  %57 = load %struct.ow_cmd*, %struct.ow_cmd** %7, align 8
  %58 = getelementptr inbounds %struct.ow_cmd, %struct.ow_cmd* %57, i32 0, i32 8
  %59 = load i32*, i32** %58, align 8
  %60 = load i32, i32* %9, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %59, i64 %61
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @ow_send_byte(i32 %56, %struct.ow_timing* @timing_regular, i32 %63)
  br label %65

65:                                               ; preds = %55
  %66 = load i32, i32* %9, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %9, align 4
  br label %49

68:                                               ; preds = %49
  store i32 0, i32* %9, align 4
  br label %69

69:                                               ; preds = %84, %68
  %70 = load i32, i32* %9, align 4
  %71 = load %struct.ow_cmd*, %struct.ow_cmd** %7, align 8
  %72 = getelementptr inbounds %struct.ow_cmd, %struct.ow_cmd* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = icmp slt i32 %70, %73
  br i1 %74, label %75, label %87

75:                                               ; preds = %69
  %76 = load i32, i32* %12, align 4
  %77 = load %struct.ow_cmd*, %struct.ow_cmd** %7, align 8
  %78 = getelementptr inbounds %struct.ow_cmd, %struct.ow_cmd* %77, i32 0, i32 2
  %79 = load i32*, i32** %78, align 8
  %80 = load i32, i32* %9, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i32, i32* %79, i64 %81
  %83 = call i32 @ow_read_byte(i32 %76, %struct.ow_timing* @timing_regular, i32* %82)
  br label %84

84:                                               ; preds = %75
  %85 = load i32, i32* %9, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %9, align 4
  br label %69

87:                                               ; preds = %69
  %88 = load %struct.ow_cmd*, %struct.ow_cmd** %7, align 8
  %89 = getelementptr inbounds %struct.ow_cmd, %struct.ow_cmd* %88, i32 0, i32 3
  %90 = load i32, i32* %89, align 8
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %187

92:                                               ; preds = %87
  %93 = load %struct.ow_cmd*, %struct.ow_cmd** %7, align 8
  %94 = getelementptr inbounds %struct.ow_cmd, %struct.ow_cmd* %93, i32 0, i32 4
  %95 = load i32, i32* %94, align 4
  %96 = load i32, i32* @OW_FLAG_OVERDRIVE, align 4
  %97 = and i32 %95, %96
  %98 = icmp ne i32 %97, 0
  %99 = zext i1 %98 to i64
  %100 = select i1 %98, %struct.ow_timing* @timing_overdrive, %struct.ow_timing* @timing_regular
  store %struct.ow_timing* %100, %struct.ow_timing** %13, align 8
  store i32 0, i32* %9, align 4
  br label %101

101:                                              ; preds = %118, %92
  %102 = load i32, i32* %9, align 4
  %103 = load %struct.ow_cmd*, %struct.ow_cmd** %7, align 8
  %104 = getelementptr inbounds %struct.ow_cmd, %struct.ow_cmd* %103, i32 0, i32 3
  %105 = load i32, i32* %104, align 8
  %106 = icmp slt i32 %102, %105
  br i1 %106, label %107, label %121

107:                                              ; preds = %101
  %108 = load i32, i32* %12, align 4
  %109 = load %struct.ow_timing*, %struct.ow_timing** %13, align 8
  %110 = load %struct.ow_cmd*, %struct.ow_cmd** %7, align 8
  %111 = getelementptr inbounds %struct.ow_cmd, %struct.ow_cmd* %110, i32 0, i32 7
  %112 = load i32*, i32** %111, align 8
  %113 = load i32, i32* %9, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i32, i32* %112, i64 %114
  %116 = load i32, i32* %115, align 4
  %117 = call i32 @ow_send_byte(i32 %108, %struct.ow_timing* %109, i32 %116)
  br label %118

118:                                              ; preds = %107
  %119 = load i32, i32* %9, align 4
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %9, align 4
  br label %101

121:                                              ; preds = %101
  %122 = load %struct.ow_cmd*, %struct.ow_cmd** %7, align 8
  %123 = getelementptr inbounds %struct.ow_cmd, %struct.ow_cmd* %122, i32 0, i32 4
  %124 = load i32, i32* %123, align 4
  %125 = load i32, i32* @OW_FLAG_READ_BIT, align 4
  %126 = and i32 %124, %125
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %165

128:                                              ; preds = %121
  %129 = load %struct.ow_cmd*, %struct.ow_cmd** %7, align 8
  %130 = getelementptr inbounds %struct.ow_cmd, %struct.ow_cmd* %129, i32 0, i32 5
  %131 = load i32*, i32** %130, align 8
  %132 = load %struct.ow_cmd*, %struct.ow_cmd** %7, align 8
  %133 = getelementptr inbounds %struct.ow_cmd, %struct.ow_cmd* %132, i32 0, i32 6
  %134 = load i32, i32* %133, align 8
  %135 = add nsw i32 %134, 7
  %136 = sdiv i32 %135, 8
  %137 = call i32 @memset(i32* %131, i32 0, i32 %136)
  store i32 0, i32* %9, align 4
  br label %138

138:                                              ; preds = %161, %128
  %139 = load i32, i32* %9, align 4
  %140 = load %struct.ow_cmd*, %struct.ow_cmd** %7, align 8
  %141 = getelementptr inbounds %struct.ow_cmd, %struct.ow_cmd* %140, i32 0, i32 6
  %142 = load i32, i32* %141, align 8
  %143 = icmp slt i32 %139, %142
  br i1 %143, label %144, label %164

144:                                              ; preds = %138
  %145 = load i32, i32* %12, align 4
  %146 = load %struct.ow_timing*, %struct.ow_timing** %13, align 8
  %147 = call i32 @OWLL_READ_DATA(i32 %145, %struct.ow_timing* %146, i32* %10)
  %148 = load i32, i32* %10, align 4
  %149 = load i32, i32* %9, align 4
  %150 = srem i32 %149, 8
  %151 = shl i32 %148, %150
  %152 = load %struct.ow_cmd*, %struct.ow_cmd** %7, align 8
  %153 = getelementptr inbounds %struct.ow_cmd, %struct.ow_cmd* %152, i32 0, i32 5
  %154 = load i32*, i32** %153, align 8
  %155 = load i32, i32* %9, align 4
  %156 = sdiv i32 %155, 8
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds i32, i32* %154, i64 %157
  %159 = load i32, i32* %158, align 4
  %160 = or i32 %159, %151
  store i32 %160, i32* %158, align 4
  br label %161

161:                                              ; preds = %144
  %162 = load i32, i32* %9, align 4
  %163 = add nsw i32 %162, 1
  store i32 %163, i32* %9, align 4
  br label %138

164:                                              ; preds = %138
  br label %186

165:                                              ; preds = %121
  store i32 0, i32* %9, align 4
  br label %166

166:                                              ; preds = %182, %165
  %167 = load i32, i32* %9, align 4
  %168 = load %struct.ow_cmd*, %struct.ow_cmd** %7, align 8
  %169 = getelementptr inbounds %struct.ow_cmd, %struct.ow_cmd* %168, i32 0, i32 6
  %170 = load i32, i32* %169, align 8
  %171 = icmp slt i32 %167, %170
  br i1 %171, label %172, label %185

172:                                              ; preds = %166
  %173 = load i32, i32* %12, align 4
  %174 = load %struct.ow_timing*, %struct.ow_timing** %13, align 8
  %175 = load %struct.ow_cmd*, %struct.ow_cmd** %7, align 8
  %176 = getelementptr inbounds %struct.ow_cmd, %struct.ow_cmd* %175, i32 0, i32 5
  %177 = load i32*, i32** %176, align 8
  %178 = load i32, i32* %9, align 4
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds i32, i32* %177, i64 %179
  %181 = call i32 @ow_read_byte(i32 %173, %struct.ow_timing* %174, i32* %180)
  br label %182

182:                                              ; preds = %172
  %183 = load i32, i32* %9, align 4
  %184 = add nsw i32 %183, 1
  store i32 %184, i32* %9, align 4
  br label %166

185:                                              ; preds = %166
  br label %186

186:                                              ; preds = %185, %164
  br label %187

187:                                              ; preds = %186, %87
  store i32 0, i32* %4, align 4
  br label %188

188:                                              ; preds = %187, %44, %37
  %189 = load i32, i32* %4, align 4
  ret i32 %189
}

declare dso_local i32 @device_get_parent(i32) #1

declare dso_local i32 @OWLL_RESET_AND_PRESENCE(i32, %struct.ow_timing*, i32*) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @ow_send_byte(i32, %struct.ow_timing*, i32) #1

declare dso_local i32 @ow_read_byte(i32, %struct.ow_timing*, i32*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @OWLL_READ_DATA(i32, %struct.ow_timing*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
