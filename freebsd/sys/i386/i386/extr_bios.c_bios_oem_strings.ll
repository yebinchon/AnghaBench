; ModuleID = '/home/carl/AnghaBench/freebsd/sys/i386/i386/extr_bios.c_bios_oem_strings.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/i386/i386/extr_bios.c_bios_oem_strings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bios_oem = type { %struct.TYPE_2__, %struct.bios_oem_signature* }
%struct.TYPE_2__ = type { i64, i64 }
%struct.bios_oem_signature = type { i8*, i64, i64 }

@BIOS_START = common dso_local global i64 0, align 8
@BIOS_SIZE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [95 x i8] c"sys/i386/i386/bios.c: sig '%s' from 0x%0x to 0x%0x offset %d out of BIOS bounds 0x%0x - 0x%0x\0A\00", align 1
@.str.1 = private unnamed_addr constant [67 x i8] c"sys/i386/i386/bios.c: sig '%s' idx %d + tot %d = %d > maxlen-1 %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bios_oem_strings(%struct.bios_oem* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.bios_oem*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.bios_oem_signature*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8, align 1
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  store %struct.bios_oem* %0, %struct.bios_oem** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 0, i64* %8, align 8
  %21 = load %struct.bios_oem*, %struct.bios_oem** %5, align 8
  %22 = icmp ne %struct.bios_oem* %21, null
  br i1 %22, label %23, label %29

23:                                               ; preds = %3
  %24 = load i8*, i8** %6, align 8
  %25 = icmp ne i8* %24, null
  br i1 %25, label %26, label %29

26:                                               ; preds = %23
  %27 = load i64, i64* %7, align 8
  %28 = icmp ult i64 %27, 2
  br i1 %28, label %29, label %30

29:                                               ; preds = %26, %23, %3
  store i32 -1, i32* %4, align 4
  br label %231

30:                                               ; preds = %26
  %31 = load %struct.bios_oem*, %struct.bios_oem** %5, align 8
  %32 = getelementptr inbounds %struct.bios_oem, %struct.bios_oem* %31, i32 0, i32 1
  %33 = load %struct.bios_oem_signature*, %struct.bios_oem_signature** %32, align 8
  store %struct.bios_oem_signature* %33, %struct.bios_oem_signature** %9, align 8
  %34 = load %struct.bios_oem_signature*, %struct.bios_oem_signature** %9, align 8
  %35 = icmp ne %struct.bios_oem_signature* %34, null
  br i1 %35, label %37, label %36

36:                                               ; preds = %30
  store i32 -2, i32* %4, align 4
  br label %231

37:                                               ; preds = %30
  %38 = load %struct.bios_oem*, %struct.bios_oem** %5, align 8
  %39 = getelementptr inbounds %struct.bios_oem, %struct.bios_oem* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  store i64 %41, i64* %10, align 8
  %42 = load %struct.bios_oem*, %struct.bios_oem** %5, align 8
  %43 = getelementptr inbounds %struct.bios_oem, %struct.bios_oem* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  store i64 %45, i64* %11, align 8
  %46 = load i64, i64* %11, align 8
  %47 = load i64, i64* %10, align 8
  %48 = icmp sle i64 %46, %47
  br i1 %48, label %59, label %49

49:                                               ; preds = %37
  %50 = load i64, i64* %10, align 8
  %51 = load i64, i64* @BIOS_START, align 8
  %52 = icmp slt i64 %50, %51
  br i1 %52, label %59, label %53

53:                                               ; preds = %49
  %54 = load i64, i64* %11, align 8
  %55 = load i64, i64* @BIOS_START, align 8
  %56 = load i64, i64* @BIOS_SIZE, align 8
  %57 = add nsw i64 %55, %56
  %58 = icmp sgt i64 %54, %57
  br i1 %58, label %59, label %60

59:                                               ; preds = %53, %49, %37
  store i32 -3, i32* %4, align 4
  br label %231

60:                                               ; preds = %53
  br label %61

61:                                               ; preds = %208, %60
  %62 = load %struct.bios_oem_signature*, %struct.bios_oem_signature** %9, align 8
  %63 = getelementptr inbounds %struct.bios_oem_signature, %struct.bios_oem_signature* %62, i32 0, i32 0
  %64 = load i8*, i8** %63, align 8
  %65 = icmp ne i8* %64, null
  br i1 %65, label %66, label %211

66:                                               ; preds = %61
  %67 = load %struct.bios_oem_signature*, %struct.bios_oem_signature** %9, align 8
  %68 = getelementptr inbounds %struct.bios_oem_signature, %struct.bios_oem_signature* %67, i32 0, i32 0
  %69 = load i8*, i8** %68, align 8
  store i8* %69, i8** %15, align 8
  %70 = load i8*, i8** %15, align 8
  %71 = call i64 @strlen(i8* %70)
  store i64 %71, i64* %19, align 8
  %72 = load %struct.bios_oem_signature*, %struct.bios_oem_signature** %9, align 8
  %73 = getelementptr inbounds %struct.bios_oem_signature, %struct.bios_oem_signature* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  store i64 %74, i64* %18, align 8
  %75 = load %struct.bios_oem_signature*, %struct.bios_oem_signature** %9, align 8
  %76 = getelementptr inbounds %struct.bios_oem_signature, %struct.bios_oem_signature* %75, i32 0, i32 2
  %77 = load i64, i64* %76, align 8
  store i64 %77, i64* %20, align 8
  %78 = load i64, i64* %11, align 8
  %79 = load i64, i64* %18, align 8
  %80 = add i64 %78, %79
  %81 = load i64, i64* @BIOS_START, align 8
  %82 = load i64, i64* @BIOS_SIZE, align 8
  %83 = add nsw i64 %81, %82
  %84 = icmp ugt i64 %80, %83
  br i1 %84, label %91, label %85

85:                                               ; preds = %66
  %86 = load i64, i64* %10, align 8
  %87 = load i64, i64* %18, align 8
  %88 = add i64 %86, %87
  %89 = load i64, i64* @BIOS_START, align 8
  %90 = icmp ult i64 %88, %89
  br i1 %90, label %91, label %101

91:                                               ; preds = %85, %66
  %92 = load i8*, i8** %15, align 8
  %93 = load i64, i64* %10, align 8
  %94 = load i64, i64* %11, align 8
  %95 = load i64, i64* %18, align 8
  %96 = load i64, i64* @BIOS_START, align 8
  %97 = load i64, i64* @BIOS_START, align 8
  %98 = load i64, i64* @BIOS_SIZE, align 8
  %99 = add nsw i64 %97, %98
  %100 = call i32 (i8*, i8*, i64, i64, i64, i64, ...) @printf(i8* getelementptr inbounds ([95 x i8], [95 x i8]* @.str, i64 0, i64 0), i8* %92, i64 %93, i64 %94, i64 %95, i64 %96, i64 %99)
  store i32 -4, i32* %4, align 4
  br label %231

101:                                              ; preds = %85
  %102 = load i64, i64* %8, align 8
  %103 = load i64, i64* %20, align 8
  %104 = add i64 %102, %103
  %105 = load i64, i64* %7, align 8
  %106 = sub i64 %105, 1
  %107 = icmp ugt i64 %104, %106
  br i1 %107, label %108, label %118

108:                                              ; preds = %101
  %109 = load i8*, i8** %15, align 8
  %110 = load i64, i64* %8, align 8
  %111 = load i64, i64* %20, align 8
  %112 = load i64, i64* %8, align 8
  %113 = load i64, i64* %20, align 8
  %114 = add i64 %112, %113
  %115 = load i64, i64* %7, align 8
  %116 = sub i64 %115, 1
  %117 = call i32 (i8*, i8*, i64, i64, i64, i64, ...) @printf(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.1, i64 0, i64 0), i8* %109, i64 %110, i64 %111, i64 %114, i64 %116)
  store i32 -5, i32* %4, align 4
  br label %231

118:                                              ; preds = %101
  store i8* null, i8** %16, align 8
  %119 = load i64, i64* %10, align 8
  %120 = call i64 @BIOS_PADDRTOVADDR(i64 %119)
  %121 = inttoptr i64 %120 to i8*
  store i8* %121, i8** %13, align 8
  %122 = load i64, i64* %11, align 8
  %123 = load i64, i64* %19, align 8
  %124 = sub i64 %122, %123
  %125 = call i64 @BIOS_PADDRTOVADDR(i64 %124)
  %126 = inttoptr i64 %125 to i8*
  store i8* %126, i8** %14, align 8
  br label %127

127:                                              ; preds = %140, %118
  %128 = load i8*, i8** %13, align 8
  %129 = load i8*, i8** %14, align 8
  %130 = icmp ult i8* %128, %129
  br i1 %130, label %131, label %143

131:                                              ; preds = %127
  %132 = load i8*, i8** %15, align 8
  %133 = load i8*, i8** %13, align 8
  %134 = load i64, i64* %19, align 8
  %135 = call i32 @bcmp(i8* %132, i8* %133, i64 %134)
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %139, label %137

137:                                              ; preds = %131
  %138 = load i8*, i8** %13, align 8
  store i8* %138, i8** %16, align 8
  br label %143

139:                                              ; preds = %131
  br label %140

140:                                              ; preds = %139
  %141 = load i8*, i8** %13, align 8
  %142 = getelementptr inbounds i8, i8* %141, i32 1
  store i8* %142, i8** %13, align 8
  br label %127

143:                                              ; preds = %137, %127
  %144 = load i8*, i8** %16, align 8
  %145 = icmp ne i8* %144, null
  br i1 %145, label %146, label %208

146:                                              ; preds = %143
  store i64 0, i64* %17, align 8
  br label %147

147:                                              ; preds = %204, %146
  %148 = load i64, i64* %17, align 8
  %149 = load i64, i64* %20, align 8
  %150 = icmp ult i64 %148, %149
  br i1 %150, label %151, label %207

151:                                              ; preds = %147
  %152 = load i8*, i8** %16, align 8
  %153 = load i64, i64* %17, align 8
  %154 = load i64, i64* %18, align 8
  %155 = add i64 %153, %154
  %156 = getelementptr inbounds i8, i8* %152, i64 %155
  %157 = load i8, i8* %156, align 1
  store i8 %157, i8* %12, align 1
  %158 = load i8, i8* %12, align 1
  %159 = sext i8 %158 to i32
  %160 = icmp slt i32 %159, 32
  br i1 %160, label %165, label %161

161:                                              ; preds = %151
  %162 = load i8, i8* %12, align 1
  %163 = sext i8 %162 to i32
  %164 = icmp sgt i32 %163, 126
  br i1 %164, label %165, label %166

165:                                              ; preds = %161, %151
  store i8 32, i8* %12, align 1
  br label %166

166:                                              ; preds = %165, %161
  %167 = load i64, i64* %8, align 8
  %168 = icmp eq i64 %167, 0
  br i1 %168, label %169, label %180

169:                                              ; preds = %166
  %170 = load i8, i8* %12, align 1
  %171 = sext i8 %170 to i32
  %172 = icmp ne i32 %171, 32
  br i1 %172, label %173, label %179

173:                                              ; preds = %169
  %174 = load i8, i8* %12, align 1
  %175 = load i8*, i8** %6, align 8
  %176 = load i64, i64* %8, align 8
  %177 = add i64 %176, 1
  store i64 %177, i64* %8, align 8
  %178 = getelementptr inbounds i8, i8* %175, i64 %176
  store i8 %174, i8* %178, align 1
  br label %179

179:                                              ; preds = %173, %169
  br label %203

180:                                              ; preds = %166
  %181 = load i8, i8* %12, align 1
  %182 = sext i8 %181 to i32
  %183 = icmp ne i32 %182, 32
  br i1 %183, label %196, label %184

184:                                              ; preds = %180
  %185 = load i8, i8* %12, align 1
  %186 = sext i8 %185 to i32
  %187 = icmp eq i32 %186, 32
  br i1 %187, label %188, label %202

188:                                              ; preds = %184
  %189 = load i8*, i8** %6, align 8
  %190 = load i64, i64* %8, align 8
  %191 = sub i64 %190, 1
  %192 = getelementptr inbounds i8, i8* %189, i64 %191
  %193 = load i8, i8* %192, align 1
  %194 = sext i8 %193 to i32
  %195 = icmp ne i32 %194, 32
  br i1 %195, label %196, label %202

196:                                              ; preds = %188, %180
  %197 = load i8, i8* %12, align 1
  %198 = load i8*, i8** %6, align 8
  %199 = load i64, i64* %8, align 8
  %200 = add i64 %199, 1
  store i64 %200, i64* %8, align 8
  %201 = getelementptr inbounds i8, i8* %198, i64 %199
  store i8 %197, i8* %201, align 1
  br label %202

202:                                              ; preds = %196, %188, %184
  br label %203

203:                                              ; preds = %202, %179
  br label %204

204:                                              ; preds = %203
  %205 = load i64, i64* %17, align 8
  %206 = add i64 %205, 1
  store i64 %206, i64* %17, align 8
  br label %147

207:                                              ; preds = %147
  br label %208

208:                                              ; preds = %207, %143
  %209 = load %struct.bios_oem_signature*, %struct.bios_oem_signature** %9, align 8
  %210 = getelementptr inbounds %struct.bios_oem_signature, %struct.bios_oem_signature* %209, i32 1
  store %struct.bios_oem_signature* %210, %struct.bios_oem_signature** %9, align 8
  br label %61

211:                                              ; preds = %61
  %212 = load i64, i64* %8, align 8
  %213 = icmp ugt i64 %212, 1
  br i1 %213, label %214, label %225

214:                                              ; preds = %211
  %215 = load i8*, i8** %6, align 8
  %216 = load i64, i64* %8, align 8
  %217 = sub i64 %216, 1
  %218 = getelementptr inbounds i8, i8* %215, i64 %217
  %219 = load i8, i8* %218, align 1
  %220 = sext i8 %219 to i32
  %221 = icmp eq i32 %220, 32
  br i1 %221, label %222, label %225

222:                                              ; preds = %214
  %223 = load i64, i64* %8, align 8
  %224 = add i64 %223, -1
  store i64 %224, i64* %8, align 8
  br label %225

225:                                              ; preds = %222, %214, %211
  %226 = load i8*, i8** %6, align 8
  %227 = load i64, i64* %8, align 8
  %228 = getelementptr inbounds i8, i8* %226, i64 %227
  store i8 0, i8* %228, align 1
  %229 = load i64, i64* %8, align 8
  %230 = trunc i64 %229 to i32
  store i32 %230, i32* %4, align 4
  br label %231

231:                                              ; preds = %225, %108, %91, %59, %36, %29
  %232 = load i32, i32* %4, align 4
  ret i32 %232
}

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @printf(i8*, i8*, i64, i64, i64, i64, ...) #1

declare dso_local i64 @BIOS_PADDRTOVADDR(i64) #1

declare dso_local i32 @bcmp(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
