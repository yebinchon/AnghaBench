; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/boot0cfg/extr_boot0cfg.c_display_mbr.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/boot0cfg/extr_boot0cfg.c_display_mbr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i8* }
%struct.dos_partition = type { i32, i32, i32, i32, i32, i64, i64, i32, i64, i32 }

@DOSPARTOFF = common dso_local global i32 0, align 4
@fmt0 = common dso_local global i8* null, align 8
@NDOSPART = common dso_local global i32 0, align 4
@fmt1 = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.1 = private unnamed_addr constant [47 x i8] c"version=%d.%d  drive=0x%x  mask=0x%x  ticks=%u\00", align 1
@OFF_DRIVE = common dso_local global i64 0, align 8
@OFF_FLAGS = common dso_local global i64 0, align 8
@OFF_TICKS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [10 x i8] c"\0Aoptions=\00", align 1
@nopt = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [2 x i8] c",\00", align 1
@opttbl = common dso_local global %struct.TYPE_2__* null, align 8
@.str.4 = private unnamed_addr constant [3 x i8] c"no\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@b0_ver = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [36 x i8] c"volume serial ID %02x%02x-%02x%02x\0A\00", align 1
@OFF_SERIAL = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [24 x i8] c"default_selection=F%d (\00", align 1
@OFF_OPT = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [9 x i8] c"Slice %d\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"Drive 1\00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c"PXE\00", align 1
@.str.11 = private unnamed_addr constant [3 x i8] c")\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @display_mbr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @display_mbr(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.dos_partition*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  %6 = load i32*, i32** %2, align 8
  %7 = load i32, i32* @DOSPARTOFF, align 4
  %8 = sext i32 %7 to i64
  %9 = getelementptr inbounds i32, i32* %6, i64 %8
  %10 = bitcast i32* %9 to %struct.dos_partition*
  store %struct.dos_partition* %10, %struct.dos_partition** %3, align 8
  %11 = load i8*, i8** @fmt0, align 8
  %12 = call i32 (i8*, ...) @printf(i8* %11)
  store i32 0, i32* %4, align 4
  br label %13

13:                                               ; preds = %113, %1
  %14 = load i32, i32* %4, align 4
  %15 = load i32, i32* @NDOSPART, align 4
  %16 = icmp slt i32 %14, %15
  br i1 %16, label %17, label %116

17:                                               ; preds = %13
  %18 = load %struct.dos_partition*, %struct.dos_partition** %3, align 8
  %19 = load i32, i32* %4, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.dos_partition, %struct.dos_partition* %18, i64 %20
  %22 = getelementptr inbounds %struct.dos_partition, %struct.dos_partition* %21, i32 0, i32 6
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %112

25:                                               ; preds = %17
  %26 = load i8*, i8** @fmt1, align 8
  %27 = load i32, i32* %4, align 4
  %28 = add nsw i32 1, %27
  %29 = load %struct.dos_partition*, %struct.dos_partition** %3, align 8
  %30 = load i32, i32* %4, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.dos_partition, %struct.dos_partition* %29, i64 %31
  %33 = getelementptr inbounds %struct.dos_partition, %struct.dos_partition* %32, i32 0, i32 9
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.dos_partition*, %struct.dos_partition** %3, align 8
  %36 = load i32, i32* %4, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.dos_partition, %struct.dos_partition* %35, i64 %37
  %39 = getelementptr inbounds %struct.dos_partition, %struct.dos_partition* %38, i32 0, i32 8
  %40 = load i64, i64* %39, align 8
  %41 = load %struct.dos_partition*, %struct.dos_partition** %3, align 8
  %42 = load i32, i32* %4, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.dos_partition, %struct.dos_partition* %41, i64 %43
  %45 = getelementptr inbounds %struct.dos_partition, %struct.dos_partition* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = and i32 %46, 192
  %48 = shl i32 %47, 2
  %49 = sext i32 %48 to i64
  %50 = add nsw i64 %40, %49
  %51 = load %struct.dos_partition*, %struct.dos_partition** %3, align 8
  %52 = load i32, i32* %4, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.dos_partition, %struct.dos_partition* %51, i64 %53
  %55 = getelementptr inbounds %struct.dos_partition, %struct.dos_partition* %54, i32 0, i32 7
  %56 = load i32, i32* %55, align 8
  %57 = load %struct.dos_partition*, %struct.dos_partition** %3, align 8
  %58 = load i32, i32* %4, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.dos_partition, %struct.dos_partition* %57, i64 %59
  %61 = getelementptr inbounds %struct.dos_partition, %struct.dos_partition* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = and i32 %62, 63
  %64 = load %struct.dos_partition*, %struct.dos_partition** %3, align 8
  %65 = load i32, i32* %4, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.dos_partition, %struct.dos_partition* %64, i64 %66
  %68 = getelementptr inbounds %struct.dos_partition, %struct.dos_partition* %67, i32 0, i32 6
  %69 = load i64, i64* %68, align 8
  %70 = load %struct.dos_partition*, %struct.dos_partition** %3, align 8
  %71 = load i32, i32* %4, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.dos_partition, %struct.dos_partition* %70, i64 %72
  %74 = getelementptr inbounds %struct.dos_partition, %struct.dos_partition* %73, i32 0, i32 5
  %75 = load i64, i64* %74, align 8
  %76 = load %struct.dos_partition*, %struct.dos_partition** %3, align 8
  %77 = load i32, i32* %4, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.dos_partition, %struct.dos_partition* %76, i64 %78
  %80 = getelementptr inbounds %struct.dos_partition, %struct.dos_partition* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = and i32 %81, 192
  %83 = shl i32 %82, 2
  %84 = sext i32 %83 to i64
  %85 = add nsw i64 %75, %84
  %86 = load %struct.dos_partition*, %struct.dos_partition** %3, align 8
  %87 = load i32, i32* %4, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds %struct.dos_partition, %struct.dos_partition* %86, i64 %88
  %90 = getelementptr inbounds %struct.dos_partition, %struct.dos_partition* %89, i32 0, i32 4
  %91 = load i32, i32* %90, align 8
  %92 = load %struct.dos_partition*, %struct.dos_partition** %3, align 8
  %93 = load i32, i32* %4, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds %struct.dos_partition, %struct.dos_partition* %92, i64 %94
  %96 = getelementptr inbounds %struct.dos_partition, %struct.dos_partition* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = and i32 %97, 63
  %99 = load %struct.dos_partition*, %struct.dos_partition** %3, align 8
  %100 = load i32, i32* %4, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds %struct.dos_partition, %struct.dos_partition* %99, i64 %101
  %103 = getelementptr inbounds %struct.dos_partition, %struct.dos_partition* %102, i32 0, i32 3
  %104 = load i32, i32* %103, align 4
  %105 = load %struct.dos_partition*, %struct.dos_partition** %3, align 8
  %106 = load i32, i32* %4, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds %struct.dos_partition, %struct.dos_partition* %105, i64 %107
  %109 = getelementptr inbounds %struct.dos_partition, %struct.dos_partition* %108, i32 0, i32 2
  %110 = load i32, i32* %109, align 8
  %111 = call i32 (i8*, ...) @printf(i8* %26, i32 %28, i32 %34, i64 %50, i32 %56, i32 %63, i64 %69, i64 %85, i32 %91, i32 %98, i32 %104, i32 %110)
  br label %112

112:                                              ; preds = %25, %17
  br label %113

113:                                              ; preds = %112
  %114 = load i32, i32* %4, align 4
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %4, align 4
  br label %13

116:                                              ; preds = %13
  %117 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %118 = load i32*, i32** %2, align 8
  %119 = call i32 @boot0version(i32* %118)
  store i32 %119, i32* %5, align 4
  %120 = load i32, i32* %5, align 4
  %121 = ashr i32 %120, 8
  %122 = load i32, i32* %5, align 4
  %123 = and i32 %122, 255
  %124 = load i32*, i32** %2, align 8
  %125 = load i64, i64* @OFF_DRIVE, align 8
  %126 = getelementptr inbounds i32, i32* %124, i64 %125
  %127 = load i32, i32* %126, align 4
  %128 = load i32*, i32** %2, align 8
  %129 = load i64, i64* @OFF_FLAGS, align 8
  %130 = getelementptr inbounds i32, i32* %128, i64 %129
  %131 = load i32, i32* %130, align 4
  %132 = and i32 %131, 15
  %133 = load i32*, i32** %2, align 8
  %134 = load i32, i32* @OFF_TICKS, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds i32, i32* %133, i64 %135
  %137 = call i32 @cv2(i32* %136)
  %138 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0), i32 %121, i32 %123, i32 %127, i32 %132, i32 %137)
  %139 = load i32*, i32** %2, align 8
  %140 = call i32 @set_bell(i32* %139, i32 0, i32 1)
  %141 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %142

142:                                              ; preds = %181, %116
  %143 = load i32, i32* %4, align 4
  %144 = load i32, i32* @nopt, align 4
  %145 = icmp slt i32 %143, %144
  br i1 %145, label %146, label %184

146:                                              ; preds = %142
  %147 = load i32, i32* %4, align 4
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %151

149:                                              ; preds = %146
  %150 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  br label %151

151:                                              ; preds = %149, %146
  %152 = load i32*, i32** %2, align 8
  %153 = load i64, i64* @OFF_FLAGS, align 8
  %154 = getelementptr inbounds i32, i32* %152, i64 %153
  %155 = load i32, i32* %154, align 4
  %156 = load i32, i32* %4, align 4
  %157 = sub nsw i32 7, %156
  %158 = shl i32 1, %157
  %159 = and i32 %155, %158
  %160 = icmp ne i32 %159, 0
  %161 = xor i1 %160, true
  %162 = zext i1 %161 to i32
  %163 = load %struct.TYPE_2__*, %struct.TYPE_2__** @opttbl, align 8
  %164 = load i32, i32* %4, align 4
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %163, i64 %165
  %167 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 8
  %169 = xor i32 %162, %168
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %171, label %173

171:                                              ; preds = %151
  %172 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  br label %173

173:                                              ; preds = %171, %151
  %174 = load %struct.TYPE_2__*, %struct.TYPE_2__** @opttbl, align 8
  %175 = load i32, i32* %4, align 4
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %174, i64 %176
  %178 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %177, i32 0, i32 1
  %179 = load i8*, i8** %178, align 8
  %180 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i8* %179)
  br label %181

181:                                              ; preds = %173
  %182 = load i32, i32* %4, align 4
  %183 = add nsw i32 %182, 1
  store i32 %183, i32* %4, align 4
  br label %142

184:                                              ; preds = %142
  %185 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %186 = load i32, i32* @b0_ver, align 4
  %187 = icmp eq i32 %186, 2
  br i1 %187, label %188, label %209

188:                                              ; preds = %184
  %189 = load i32*, i32** %2, align 8
  %190 = load i64, i64* @OFF_SERIAL, align 8
  %191 = getelementptr inbounds i32, i32* %189, i64 %190
  %192 = load i32, i32* %191, align 4
  %193 = load i32*, i32** %2, align 8
  %194 = load i64, i64* @OFF_SERIAL, align 8
  %195 = add i64 %194, 1
  %196 = getelementptr inbounds i32, i32* %193, i64 %195
  %197 = load i32, i32* %196, align 4
  %198 = load i32*, i32** %2, align 8
  %199 = load i64, i64* @OFF_SERIAL, align 8
  %200 = add i64 %199, 2
  %201 = getelementptr inbounds i32, i32* %198, i64 %200
  %202 = load i32, i32* %201, align 4
  %203 = load i32*, i32** %2, align 8
  %204 = load i64, i64* @OFF_SERIAL, align 8
  %205 = add i64 %204, 3
  %206 = getelementptr inbounds i32, i32* %203, i64 %205
  %207 = load i32, i32* %206, align 4
  %208 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.6, i64 0, i64 0), i32 %192, i32 %197, i32 %202, i32 %207)
  br label %209

209:                                              ; preds = %188, %184
  %210 = load i32*, i32** %2, align 8
  %211 = load i64, i64* @OFF_OPT, align 8
  %212 = getelementptr inbounds i32, i32* %210, i64 %211
  %213 = load i32, i32* %212, align 4
  %214 = add nsw i32 %213, 1
  %215 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i64 0, i64 0), i32 %214)
  %216 = load i32*, i32** %2, align 8
  %217 = load i64, i64* @OFF_OPT, align 8
  %218 = getelementptr inbounds i32, i32* %216, i64 %217
  %219 = load i32, i32* %218, align 4
  %220 = icmp slt i32 %219, 4
  br i1 %220, label %221, label %228

221:                                              ; preds = %209
  %222 = load i32*, i32** %2, align 8
  %223 = load i64, i64* @OFF_OPT, align 8
  %224 = getelementptr inbounds i32, i32* %222, i64 %223
  %225 = load i32, i32* %224, align 4
  %226 = add nsw i32 %225, 1
  %227 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0), i32 %226)
  br label %239

228:                                              ; preds = %209
  %229 = load i32*, i32** %2, align 8
  %230 = load i64, i64* @OFF_OPT, align 8
  %231 = getelementptr inbounds i32, i32* %229, i64 %230
  %232 = load i32, i32* %231, align 4
  %233 = icmp eq i32 %232, 4
  br i1 %233, label %234, label %236

234:                                              ; preds = %228
  %235 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0))
  br label %238

236:                                              ; preds = %228
  %237 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i64 0, i64 0))
  br label %238

238:                                              ; preds = %236, %234
  br label %239

239:                                              ; preds = %238, %221
  %240 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.11, i64 0, i64 0))
  ret void
}

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @boot0version(i32*) #1

declare dso_local i32 @cv2(i32*) #1

declare dso_local i32 @set_bell(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
