; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/mfiutil/extr_mfi_bbu.c_update_bbu_props.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/mfiutil/extr_mfi_bbu.c_update_bbu_props.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mfi_bbu_properties = type { i64, i32, i8 }

@MFI_STAT_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [33 x i8] c"bbu: property and value required\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@mfi_unit = common dso_local global i32 0, align 4
@O_RDWR = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"mfi_open\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"Failed to get BBU properties\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"Failed to get BBU properties: %s\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [12 x i8] c"learn-delay\00", align 1
@.str.5 = private unnamed_addr constant [25 x i8] c"Invalid learn delay '%s'\00", align 1
@.str.6 = private unnamed_addr constant [15 x i8] c"autolearn-mode\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"enable\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"disable\00", align 1
@.str.9 = private unnamed_addr constant [18 x i8] c"Invalid mode '%s'\00", align 1
@.str.10 = private unnamed_addr constant [9 x i8] c"bbu-mode\00", align 1
@.str.11 = private unnamed_addr constant [44 x i8] c"This BBU does not implement different modes\00", align 1
@.str.12 = private unnamed_addr constant [26 x i8] c"bbu: Invalid command '%s'\00", align 1
@.str.13 = private unnamed_addr constant [29 x i8] c"Failed to set BBU properties\00", align 1
@.str.14 = private unnamed_addr constant [33 x i8] c"Failed to set BBU properties: %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8**)* @update_bbu_props to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @update_bbu_props(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.mfi_bbu_properties, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %13 = load i64, i64* @MFI_STAT_OK, align 8
  store i64 %13, i64* %8, align 8
  store i32 0, i32* %9, align 4
  %14 = load i32, i32* %4, align 4
  %15 = icmp ne i32 %14, 3
  br i1 %15, label %16, label %19

16:                                               ; preds = %2
  %17 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %18 = load i32, i32* @EINVAL, align 4
  store i32 %18, i32* %3, align 4
  br label %213

19:                                               ; preds = %2
  %20 = load i32, i32* @mfi_unit, align 4
  %21 = load i32, i32* @O_RDWR, align 4
  %22 = call i32 @mfi_open(i32 %20, i32 %21)
  store i32 %22, i32* %10, align 4
  %23 = load i32, i32* %10, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %19
  %26 = load i32, i32* @errno, align 4
  store i32 %26, i32* %9, align 4
  %27 = call i32 @warn(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  %28 = load i32, i32* %9, align 4
  store i32 %28, i32* %3, align 4
  br label %213

29:                                               ; preds = %19
  %30 = load i32, i32* %10, align 4
  %31 = call i64 @mfi_bbu_get_props(i32 %30, %struct.mfi_bbu_properties* %6, i64* %8)
  %32 = icmp slt i64 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %29
  %34 = load i32, i32* @errno, align 4
  store i32 %34, i32* %9, align 4
  %35 = call i32 @warn(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  br label %209

36:                                               ; preds = %29
  %37 = load i64, i64* %8, align 8
  %38 = load i64, i64* @MFI_STAT_OK, align 8
  %39 = icmp ne i64 %37, %38
  br i1 %39, label %40, label %45

40:                                               ; preds = %36
  %41 = load i64, i64* %8, align 8
  %42 = call i8* @mfi_status(i64 %41)
  %43 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0), i8* %42)
  %44 = load i32, i32* @EIO, align 4
  store i32 %44, i32* %9, align 4
  br label %209

45:                                               ; preds = %36
  br label %46

46:                                               ; preds = %45
  %47 = load i8**, i8*** %5, align 8
  %48 = getelementptr inbounds i8*, i8** %47, i64 1
  %49 = load i8*, i8** %48, align 8
  %50 = call i64 @strcmp(i8* %49, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0))
  %51 = icmp eq i64 %50, 0
  br i1 %51, label %52, label %79

52:                                               ; preds = %46
  %53 = load i8**, i8*** %5, align 8
  %54 = getelementptr inbounds i8*, i8** %53, i64 2
  %55 = load i8*, i8** %54, align 8
  %56 = call i64 @strtoul(i8* %55, i8** %12, i32 10)
  store i64 %56, i64* %7, align 8
  %57 = load i8**, i8*** %5, align 8
  %58 = getelementptr inbounds i8*, i8** %57, i64 2
  %59 = load i8*, i8** %58, align 8
  %60 = call i64 @strlen(i8* %59)
  %61 = icmp eq i64 %60, 0
  br i1 %61, label %70, label %62

62:                                               ; preds = %52
  %63 = load i8*, i8** %12, align 8
  %64 = load i8, i8* %63, align 1
  %65 = sext i8 %64 to i32
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %70, label %67

67:                                               ; preds = %62
  %68 = load i64, i64* %7, align 8
  %69 = icmp ugt i64 %68, 255
  br i1 %69, label %70, label %76

70:                                               ; preds = %67, %62, %52
  %71 = load i8**, i8*** %5, align 8
  %72 = getelementptr inbounds i8*, i8** %71, i64 2
  %73 = load i8*, i8** %72, align 8
  %74 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0), i8* %73)
  %75 = load i32, i32* @EINVAL, align 4
  store i32 %75, i32* %9, align 4
  br label %209

76:                                               ; preds = %67
  %77 = load i64, i64* %7, align 8
  %78 = getelementptr inbounds %struct.mfi_bbu_properties, %struct.mfi_bbu_properties* %6, i32 0, i32 0
  store i64 %77, i64* %78, align 8
  br label %191

79:                                               ; preds = %46
  %80 = load i8**, i8*** %5, align 8
  %81 = getelementptr inbounds i8*, i8** %80, i64 1
  %82 = load i8*, i8** %81, align 8
  %83 = call i64 @strcmp(i8* %82, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0))
  %84 = icmp eq i64 %83, 0
  br i1 %84, label %85, label %136

85:                                               ; preds = %79
  %86 = load i8**, i8*** %5, align 8
  %87 = getelementptr inbounds i8*, i8** %86, i64 2
  %88 = load i8*, i8** %87, align 8
  store i8* %88, i8** %11, align 8
  %89 = load i8**, i8*** %5, align 8
  %90 = getelementptr inbounds i8*, i8** %89, i64 2
  %91 = load i8*, i8** %90, align 8
  %92 = call i64 @strcmp(i8* %91, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0))
  %93 = icmp eq i64 %92, 0
  br i1 %93, label %94, label %96

94:                                               ; preds = %85
  %95 = getelementptr inbounds %struct.mfi_bbu_properties, %struct.mfi_bbu_properties* %6, i32 0, i32 1
  store i32 0, i32* %95, align 8
  br label %135

96:                                               ; preds = %85
  %97 = load i8**, i8*** %5, align 8
  %98 = getelementptr inbounds i8*, i8** %97, i64 2
  %99 = load i8*, i8** %98, align 8
  %100 = call i64 @strcmp(i8* %99, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0))
  %101 = icmp eq i64 %100, 0
  br i1 %101, label %102, label %104

102:                                              ; preds = %96
  %103 = getelementptr inbounds %struct.mfi_bbu_properties, %struct.mfi_bbu_properties* %6, i32 0, i32 1
  store i32 1, i32* %103, align 8
  br label %134

104:                                              ; preds = %96
  %105 = load i8*, i8** %11, align 8
  %106 = getelementptr inbounds i8, i8* %105, i64 0
  %107 = load i8, i8* %106, align 1
  %108 = sext i8 %107 to i32
  %109 = icmp sge i32 %108, 48
  br i1 %109, label %110, label %129

110:                                              ; preds = %104
  %111 = load i8*, i8** %11, align 8
  %112 = getelementptr inbounds i8, i8* %111, i64 0
  %113 = load i8, i8* %112, align 1
  %114 = sext i8 %113 to i32
  %115 = icmp sle i32 %114, 50
  br i1 %115, label %116, label %129

116:                                              ; preds = %110
  %117 = load i8*, i8** %11, align 8
  %118 = getelementptr inbounds i8, i8* %117, i64 1
  %119 = load i8, i8* %118, align 1
  %120 = sext i8 %119 to i32
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %122, label %129

122:                                              ; preds = %116
  %123 = load i8*, i8** %11, align 8
  %124 = getelementptr inbounds i8, i8* %123, i64 0
  %125 = load i8, i8* %124, align 1
  %126 = sext i8 %125 to i32
  %127 = sub nsw i32 %126, 48
  %128 = getelementptr inbounds %struct.mfi_bbu_properties, %struct.mfi_bbu_properties* %6, i32 0, i32 1
  store i32 %127, i32* %128, align 8
  br label %133

129:                                              ; preds = %116, %110, %104
  %130 = load i8*, i8** %11, align 8
  %131 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.9, i64 0, i64 0), i8* %130)
  %132 = load i32, i32* @EINVAL, align 4
  store i32 %132, i32* %9, align 4
  br label %209

133:                                              ; preds = %122
  br label %134

134:                                              ; preds = %133, %102
  br label %135

135:                                              ; preds = %134, %94
  br label %190

136:                                              ; preds = %79
  %137 = load i8**, i8*** %5, align 8
  %138 = getelementptr inbounds i8*, i8** %137, i64 1
  %139 = load i8*, i8** %138, align 8
  %140 = call i64 @strcmp(i8* %139, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i64 0, i64 0))
  %141 = icmp eq i64 %140, 0
  br i1 %141, label %142, label %183

142:                                              ; preds = %136
  %143 = getelementptr inbounds %struct.mfi_bbu_properties, %struct.mfi_bbu_properties* %6, i32 0, i32 2
  %144 = load i8, i8* %143, align 4
  %145 = sext i8 %144 to i32
  %146 = icmp eq i32 %145, 0
  br i1 %146, label %147, label %150

147:                                              ; preds = %142
  %148 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.11, i64 0, i64 0))
  %149 = load i32, i32* @EINVAL, align 4
  store i32 %149, i32* %9, align 4
  br label %209

150:                                              ; preds = %142
  %151 = load i8**, i8*** %5, align 8
  %152 = getelementptr inbounds i8*, i8** %151, i64 2
  %153 = load i8*, i8** %152, align 8
  store i8* %153, i8** %11, align 8
  %154 = load i8*, i8** %11, align 8
  %155 = getelementptr inbounds i8, i8* %154, i64 0
  %156 = load i8, i8* %155, align 1
  %157 = sext i8 %156 to i32
  %158 = icmp slt i32 %157, 49
  br i1 %158, label %171, label %159

159:                                              ; preds = %150
  %160 = load i8*, i8** %11, align 8
  %161 = getelementptr inbounds i8, i8* %160, i64 0
  %162 = load i8, i8* %161, align 1
  %163 = sext i8 %162 to i32
  %164 = icmp sgt i32 %163, 53
  br i1 %164, label %171, label %165

165:                                              ; preds = %159
  %166 = load i8*, i8** %11, align 8
  %167 = getelementptr inbounds i8, i8* %166, i64 1
  %168 = load i8, i8* %167, align 1
  %169 = sext i8 %168 to i32
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %171, label %175

171:                                              ; preds = %165, %159, %150
  %172 = load i8*, i8** %11, align 8
  %173 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.9, i64 0, i64 0), i8* %172)
  %174 = load i32, i32* @EINVAL, align 4
  store i32 %174, i32* %9, align 4
  br label %209

175:                                              ; preds = %165
  %176 = load i8*, i8** %11, align 8
  %177 = getelementptr inbounds i8, i8* %176, i64 0
  %178 = load i8, i8* %177, align 1
  %179 = sext i8 %178 to i32
  %180 = sub nsw i32 %179, 48
  %181 = trunc i32 %180 to i8
  %182 = getelementptr inbounds %struct.mfi_bbu_properties, %struct.mfi_bbu_properties* %6, i32 0, i32 2
  store i8 %181, i8* %182, align 4
  br label %189

183:                                              ; preds = %136
  %184 = load i8**, i8*** %5, align 8
  %185 = getelementptr inbounds i8*, i8** %184, i64 1
  %186 = load i8*, i8** %185, align 8
  %187 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.12, i64 0, i64 0), i8* %186)
  %188 = load i32, i32* @EINVAL, align 4
  store i32 %188, i32* %9, align 4
  br label %209

189:                                              ; preds = %175
  br label %190

190:                                              ; preds = %189, %135
  br label %191

191:                                              ; preds = %190, %76
  %192 = load i32, i32* %10, align 4
  %193 = call i64 @mfi_bbu_set_props(i32 %192, %struct.mfi_bbu_properties* %6, i64* %8)
  %194 = icmp slt i64 %193, 0
  br i1 %194, label %195, label %198

195:                                              ; preds = %191
  %196 = load i32, i32* @errno, align 4
  store i32 %196, i32* %9, align 4
  %197 = call i32 @warn(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.13, i64 0, i64 0))
  br label %209

198:                                              ; preds = %191
  %199 = load i64, i64* %8, align 8
  %200 = load i64, i64* @MFI_STAT_OK, align 8
  %201 = icmp ne i64 %199, %200
  br i1 %201, label %202, label %207

202:                                              ; preds = %198
  %203 = load i64, i64* %8, align 8
  %204 = call i8* @mfi_status(i64 %203)
  %205 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.14, i64 0, i64 0), i8* %204)
  %206 = load i32, i32* @EIO, align 4
  store i32 %206, i32* %9, align 4
  br label %209

207:                                              ; preds = %198
  br label %208

208:                                              ; preds = %207
  br label %209

209:                                              ; preds = %208, %202, %195, %183, %171, %147, %129, %70, %40, %33
  %210 = load i32, i32* %10, align 4
  %211 = call i32 @close(i32 %210)
  %212 = load i32, i32* %9, align 4
  store i32 %212, i32* %3, align 4
  br label %213

213:                                              ; preds = %209, %25, %16
  %214 = load i32, i32* %3, align 4
  ret i32 %214
}

declare dso_local i32 @warnx(i8*, ...) #1

declare dso_local i32 @mfi_open(i32, i32) #1

declare dso_local i32 @warn(i8*) #1

declare dso_local i64 @mfi_bbu_get_props(i32, %struct.mfi_bbu_properties*, i64*) #1

declare dso_local i8* @mfi_status(i64) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i64 @strtoul(i8*, i8**, i32) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i64 @mfi_bbu_set_props(i32, %struct.mfi_bbu_properties*, i64*) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
