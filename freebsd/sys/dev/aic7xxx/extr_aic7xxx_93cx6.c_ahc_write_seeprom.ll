; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/aic7xxx/extr_aic7xxx_93cx6.c_ahc_write_seeprom.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/aic7xxx/extr_aic7xxx_93cx6.c_ahc_write_seeprom.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seeprom_cmd = type { i32 }
%struct.seeprom_descriptor = type { i64, i32, i32, i32, i32, i32, i32 }

@C46 = common dso_local global i64 0, align 8
@seeprom_ewen = common dso_local global %struct.seeprom_cmd zeroinitializer, align 4
@seeprom_ewds = common dso_local global %struct.seeprom_cmd zeroinitializer, align 4
@C56_66 = common dso_local global i64 0, align 8
@seeprom_long_ewen = common dso_local global %struct.seeprom_cmd zeroinitializer, align 4
@seeprom_long_ewds = common dso_local global %struct.seeprom_cmd zeroinitializer, align 4
@.str = private unnamed_addr constant [48 x i8] c"ahc_write_seeprom: unsupported seeprom type %d\0A\00", align 1
@seeprom_write = common dso_local global %struct.seeprom_cmd zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ahc_write_seeprom(%struct.seeprom_descriptor* %0, i32* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.seeprom_descriptor*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.seeprom_cmd*, align 8
  %11 = alloca %struct.seeprom_cmd*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.seeprom_descriptor* %0, %struct.seeprom_descriptor** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %16 = load %struct.seeprom_descriptor*, %struct.seeprom_descriptor** %6, align 8
  %17 = getelementptr inbounds %struct.seeprom_descriptor, %struct.seeprom_descriptor* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @C46, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %4
  store %struct.seeprom_cmd* @seeprom_ewen, %struct.seeprom_cmd** %10, align 8
  store %struct.seeprom_cmd* @seeprom_ewds, %struct.seeprom_cmd** %11, align 8
  br label %35

22:                                               ; preds = %4
  %23 = load %struct.seeprom_descriptor*, %struct.seeprom_descriptor** %6, align 8
  %24 = getelementptr inbounds %struct.seeprom_descriptor, %struct.seeprom_descriptor* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @C56_66, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %22
  store %struct.seeprom_cmd* @seeprom_long_ewen, %struct.seeprom_cmd** %10, align 8
  store %struct.seeprom_cmd* @seeprom_long_ewds, %struct.seeprom_cmd** %11, align 8
  br label %34

29:                                               ; preds = %22
  %30 = load %struct.seeprom_descriptor*, %struct.seeprom_descriptor** %6, align 8
  %31 = getelementptr inbounds %struct.seeprom_descriptor, %struct.seeprom_descriptor* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = call i32 @printf(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i64 %32)
  store i32 0, i32* %5, align 4
  br label %233

34:                                               ; preds = %28
  br label %35

35:                                               ; preds = %34, %21
  %36 = load %struct.seeprom_descriptor*, %struct.seeprom_descriptor** %6, align 8
  %37 = load %struct.seeprom_cmd*, %struct.seeprom_cmd** %10, align 8
  %38 = call i32 @send_seeprom_cmd(%struct.seeprom_descriptor* %36, %struct.seeprom_cmd* %37)
  %39 = load %struct.seeprom_descriptor*, %struct.seeprom_descriptor** %6, align 8
  %40 = call i32 @reset_seeprom(%struct.seeprom_descriptor* %39)
  %41 = load %struct.seeprom_descriptor*, %struct.seeprom_descriptor** %6, align 8
  %42 = getelementptr inbounds %struct.seeprom_descriptor, %struct.seeprom_descriptor* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.seeprom_descriptor*, %struct.seeprom_descriptor** %6, align 8
  %45 = getelementptr inbounds %struct.seeprom_descriptor, %struct.seeprom_descriptor* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = xor i32 %43, %46
  store i32 %47, i32* %13, align 4
  %48 = load i32, i32* %8, align 4
  store i32 %48, i32* %15, align 4
  br label %49

49:                                               ; preds = %224, %35
  %50 = load i32, i32* %15, align 4
  %51 = load i32, i32* %9, align 4
  %52 = load i32, i32* %8, align 4
  %53 = add nsw i32 %51, %52
  %54 = icmp slt i32 %50, %53
  br i1 %54, label %55, label %227

55:                                               ; preds = %49
  %56 = load %struct.seeprom_descriptor*, %struct.seeprom_descriptor** %6, align 8
  %57 = call i32 @send_seeprom_cmd(%struct.seeprom_descriptor* %56, %struct.seeprom_cmd* @seeprom_write)
  %58 = load %struct.seeprom_descriptor*, %struct.seeprom_descriptor** %6, align 8
  %59 = getelementptr inbounds %struct.seeprom_descriptor, %struct.seeprom_descriptor* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = sub nsw i64 %60, 1
  %62 = trunc i64 %61 to i32
  store i32 %62, i32* %14, align 4
  br label %63

63:                                               ; preds = %111, %55
  %64 = load i32, i32* %14, align 4
  %65 = icmp sge i32 %64, 0
  br i1 %65, label %66, label %114

66:                                               ; preds = %63
  %67 = load i32, i32* %15, align 4
  %68 = load i32, i32* %14, align 4
  %69 = shl i32 1, %68
  %70 = and i32 %67, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %78

72:                                               ; preds = %66
  %73 = load %struct.seeprom_descriptor*, %struct.seeprom_descriptor** %6, align 8
  %74 = getelementptr inbounds %struct.seeprom_descriptor, %struct.seeprom_descriptor* %73, i32 0, i32 3
  %75 = load i32, i32* %74, align 8
  %76 = load i32, i32* %13, align 4
  %77 = xor i32 %76, %75
  store i32 %77, i32* %13, align 4
  br label %78

78:                                               ; preds = %72, %66
  %79 = load %struct.seeprom_descriptor*, %struct.seeprom_descriptor** %6, align 8
  %80 = load i32, i32* %13, align 4
  %81 = call i32 @SEEPROM_OUTB(%struct.seeprom_descriptor* %79, i32 %80)
  %82 = load %struct.seeprom_descriptor*, %struct.seeprom_descriptor** %6, align 8
  %83 = load %struct.seeprom_descriptor*, %struct.seeprom_descriptor** %6, align 8
  %84 = getelementptr inbounds %struct.seeprom_descriptor, %struct.seeprom_descriptor* %83, i32 0, i32 6
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @CLOCK_PULSE(%struct.seeprom_descriptor* %82, i32 %85)
  %87 = load %struct.seeprom_descriptor*, %struct.seeprom_descriptor** %6, align 8
  %88 = load i32, i32* %13, align 4
  %89 = load %struct.seeprom_descriptor*, %struct.seeprom_descriptor** %6, align 8
  %90 = getelementptr inbounds %struct.seeprom_descriptor, %struct.seeprom_descriptor* %89, i32 0, i32 4
  %91 = load i32, i32* %90, align 4
  %92 = xor i32 %88, %91
  %93 = call i32 @SEEPROM_OUTB(%struct.seeprom_descriptor* %87, i32 %92)
  %94 = load %struct.seeprom_descriptor*, %struct.seeprom_descriptor** %6, align 8
  %95 = load %struct.seeprom_descriptor*, %struct.seeprom_descriptor** %6, align 8
  %96 = getelementptr inbounds %struct.seeprom_descriptor, %struct.seeprom_descriptor* %95, i32 0, i32 6
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @CLOCK_PULSE(%struct.seeprom_descriptor* %94, i32 %97)
  %99 = load i32, i32* %15, align 4
  %100 = load i32, i32* %14, align 4
  %101 = shl i32 1, %100
  %102 = and i32 %99, %101
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %110

104:                                              ; preds = %78
  %105 = load %struct.seeprom_descriptor*, %struct.seeprom_descriptor** %6, align 8
  %106 = getelementptr inbounds %struct.seeprom_descriptor, %struct.seeprom_descriptor* %105, i32 0, i32 3
  %107 = load i32, i32* %106, align 8
  %108 = load i32, i32* %13, align 4
  %109 = xor i32 %108, %107
  store i32 %109, i32* %13, align 4
  br label %110

110:                                              ; preds = %104, %78
  br label %111

111:                                              ; preds = %110
  %112 = load i32, i32* %14, align 4
  %113 = add nsw i32 %112, -1
  store i32 %113, i32* %14, align 4
  br label %63

114:                                              ; preds = %63
  %115 = load i32*, i32** %7, align 8
  %116 = load i32, i32* %15, align 4
  %117 = load i32, i32* %8, align 4
  %118 = sub nsw i32 %116, %117
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds i32, i32* %115, i64 %119
  %121 = load i32, i32* %120, align 4
  store i32 %121, i32* %12, align 4
  store i32 15, i32* %14, align 4
  br label %122

122:                                              ; preds = %170, %114
  %123 = load i32, i32* %14, align 4
  %124 = icmp sge i32 %123, 0
  br i1 %124, label %125, label %173

125:                                              ; preds = %122
  %126 = load i32, i32* %12, align 4
  %127 = load i32, i32* %14, align 4
  %128 = shl i32 1, %127
  %129 = and i32 %126, %128
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %137

131:                                              ; preds = %125
  %132 = load %struct.seeprom_descriptor*, %struct.seeprom_descriptor** %6, align 8
  %133 = getelementptr inbounds %struct.seeprom_descriptor, %struct.seeprom_descriptor* %132, i32 0, i32 3
  %134 = load i32, i32* %133, align 8
  %135 = load i32, i32* %13, align 4
  %136 = xor i32 %135, %134
  store i32 %136, i32* %13, align 4
  br label %137

137:                                              ; preds = %131, %125
  %138 = load %struct.seeprom_descriptor*, %struct.seeprom_descriptor** %6, align 8
  %139 = load i32, i32* %13, align 4
  %140 = call i32 @SEEPROM_OUTB(%struct.seeprom_descriptor* %138, i32 %139)
  %141 = load %struct.seeprom_descriptor*, %struct.seeprom_descriptor** %6, align 8
  %142 = load %struct.seeprom_descriptor*, %struct.seeprom_descriptor** %6, align 8
  %143 = getelementptr inbounds %struct.seeprom_descriptor, %struct.seeprom_descriptor* %142, i32 0, i32 6
  %144 = load i32, i32* %143, align 4
  %145 = call i32 @CLOCK_PULSE(%struct.seeprom_descriptor* %141, i32 %144)
  %146 = load %struct.seeprom_descriptor*, %struct.seeprom_descriptor** %6, align 8
  %147 = load i32, i32* %13, align 4
  %148 = load %struct.seeprom_descriptor*, %struct.seeprom_descriptor** %6, align 8
  %149 = getelementptr inbounds %struct.seeprom_descriptor, %struct.seeprom_descriptor* %148, i32 0, i32 4
  %150 = load i32, i32* %149, align 4
  %151 = xor i32 %147, %150
  %152 = call i32 @SEEPROM_OUTB(%struct.seeprom_descriptor* %146, i32 %151)
  %153 = load %struct.seeprom_descriptor*, %struct.seeprom_descriptor** %6, align 8
  %154 = load %struct.seeprom_descriptor*, %struct.seeprom_descriptor** %6, align 8
  %155 = getelementptr inbounds %struct.seeprom_descriptor, %struct.seeprom_descriptor* %154, i32 0, i32 6
  %156 = load i32, i32* %155, align 4
  %157 = call i32 @CLOCK_PULSE(%struct.seeprom_descriptor* %153, i32 %156)
  %158 = load i32, i32* %12, align 4
  %159 = load i32, i32* %14, align 4
  %160 = shl i32 1, %159
  %161 = and i32 %158, %160
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %169

163:                                              ; preds = %137
  %164 = load %struct.seeprom_descriptor*, %struct.seeprom_descriptor** %6, align 8
  %165 = getelementptr inbounds %struct.seeprom_descriptor, %struct.seeprom_descriptor* %164, i32 0, i32 3
  %166 = load i32, i32* %165, align 8
  %167 = load i32, i32* %13, align 4
  %168 = xor i32 %167, %166
  store i32 %168, i32* %13, align 4
  br label %169

169:                                              ; preds = %163, %137
  br label %170

170:                                              ; preds = %169
  %171 = load i32, i32* %14, align 4
  %172 = add nsw i32 %171, -1
  store i32 %172, i32* %14, align 4
  br label %122

173:                                              ; preds = %122
  %174 = load %struct.seeprom_descriptor*, %struct.seeprom_descriptor** %6, align 8
  %175 = getelementptr inbounds %struct.seeprom_descriptor, %struct.seeprom_descriptor* %174, i32 0, i32 1
  %176 = load i32, i32* %175, align 8
  store i32 %176, i32* %13, align 4
  %177 = load %struct.seeprom_descriptor*, %struct.seeprom_descriptor** %6, align 8
  %178 = load i32, i32* %13, align 4
  %179 = call i32 @SEEPROM_OUTB(%struct.seeprom_descriptor* %177, i32 %178)
  %180 = load %struct.seeprom_descriptor*, %struct.seeprom_descriptor** %6, align 8
  %181 = load %struct.seeprom_descriptor*, %struct.seeprom_descriptor** %6, align 8
  %182 = getelementptr inbounds %struct.seeprom_descriptor, %struct.seeprom_descriptor* %181, i32 0, i32 6
  %183 = load i32, i32* %182, align 4
  %184 = call i32 @CLOCK_PULSE(%struct.seeprom_descriptor* %180, i32 %183)
  %185 = load %struct.seeprom_descriptor*, %struct.seeprom_descriptor** %6, align 8
  %186 = getelementptr inbounds %struct.seeprom_descriptor, %struct.seeprom_descriptor* %185, i32 0, i32 1
  %187 = load i32, i32* %186, align 8
  %188 = load %struct.seeprom_descriptor*, %struct.seeprom_descriptor** %6, align 8
  %189 = getelementptr inbounds %struct.seeprom_descriptor, %struct.seeprom_descriptor* %188, i32 0, i32 2
  %190 = load i32, i32* %189, align 4
  %191 = xor i32 %187, %190
  store i32 %191, i32* %13, align 4
  br label %192

192:                                              ; preds = %213, %173
  %193 = load %struct.seeprom_descriptor*, %struct.seeprom_descriptor** %6, align 8
  %194 = load i32, i32* %13, align 4
  %195 = call i32 @SEEPROM_OUTB(%struct.seeprom_descriptor* %193, i32 %194)
  %196 = load %struct.seeprom_descriptor*, %struct.seeprom_descriptor** %6, align 8
  %197 = load %struct.seeprom_descriptor*, %struct.seeprom_descriptor** %6, align 8
  %198 = getelementptr inbounds %struct.seeprom_descriptor, %struct.seeprom_descriptor* %197, i32 0, i32 6
  %199 = load i32, i32* %198, align 4
  %200 = call i32 @CLOCK_PULSE(%struct.seeprom_descriptor* %196, i32 %199)
  %201 = load %struct.seeprom_descriptor*, %struct.seeprom_descriptor** %6, align 8
  %202 = load i32, i32* %13, align 4
  %203 = load %struct.seeprom_descriptor*, %struct.seeprom_descriptor** %6, align 8
  %204 = getelementptr inbounds %struct.seeprom_descriptor, %struct.seeprom_descriptor* %203, i32 0, i32 4
  %205 = load i32, i32* %204, align 4
  %206 = xor i32 %202, %205
  %207 = call i32 @SEEPROM_OUTB(%struct.seeprom_descriptor* %201, i32 %206)
  %208 = load %struct.seeprom_descriptor*, %struct.seeprom_descriptor** %6, align 8
  %209 = load %struct.seeprom_descriptor*, %struct.seeprom_descriptor** %6, align 8
  %210 = getelementptr inbounds %struct.seeprom_descriptor, %struct.seeprom_descriptor* %209, i32 0, i32 6
  %211 = load i32, i32* %210, align 4
  %212 = call i32 @CLOCK_PULSE(%struct.seeprom_descriptor* %208, i32 %211)
  br label %213

213:                                              ; preds = %192
  %214 = load %struct.seeprom_descriptor*, %struct.seeprom_descriptor** %6, align 8
  %215 = call i32 @SEEPROM_DATA_INB(%struct.seeprom_descriptor* %214)
  %216 = load %struct.seeprom_descriptor*, %struct.seeprom_descriptor** %6, align 8
  %217 = getelementptr inbounds %struct.seeprom_descriptor, %struct.seeprom_descriptor* %216, i32 0, i32 5
  %218 = load i32, i32* %217, align 8
  %219 = and i32 %215, %218
  %220 = icmp eq i32 %219, 0
  br i1 %220, label %192, label %221

221:                                              ; preds = %213
  %222 = load %struct.seeprom_descriptor*, %struct.seeprom_descriptor** %6, align 8
  %223 = call i32 @reset_seeprom(%struct.seeprom_descriptor* %222)
  br label %224

224:                                              ; preds = %221
  %225 = load i32, i32* %15, align 4
  %226 = add nsw i32 %225, 1
  store i32 %226, i32* %15, align 4
  br label %49

227:                                              ; preds = %49
  %228 = load %struct.seeprom_descriptor*, %struct.seeprom_descriptor** %6, align 8
  %229 = load %struct.seeprom_cmd*, %struct.seeprom_cmd** %11, align 8
  %230 = call i32 @send_seeprom_cmd(%struct.seeprom_descriptor* %228, %struct.seeprom_cmd* %229)
  %231 = load %struct.seeprom_descriptor*, %struct.seeprom_descriptor** %6, align 8
  %232 = call i32 @reset_seeprom(%struct.seeprom_descriptor* %231)
  store i32 1, i32* %5, align 4
  br label %233

233:                                              ; preds = %227, %29
  %234 = load i32, i32* %5, align 4
  ret i32 %234
}

declare dso_local i32 @printf(i8*, i64) #1

declare dso_local i32 @send_seeprom_cmd(%struct.seeprom_descriptor*, %struct.seeprom_cmd*) #1

declare dso_local i32 @reset_seeprom(%struct.seeprom_descriptor*) #1

declare dso_local i32 @SEEPROM_OUTB(%struct.seeprom_descriptor*, i32) #1

declare dso_local i32 @CLOCK_PULSE(%struct.seeprom_descriptor*, i32) #1

declare dso_local i32 @SEEPROM_DATA_INB(%struct.seeprom_descriptor*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
