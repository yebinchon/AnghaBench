; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/mfiutil/extr_mfi_drive.c_mfi_drive_name.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/mfiutil/extr_mfi_drive.c_mfi_drive_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mfi_pd_info = type { i32, i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@mfi_drive_name.buf = internal global [16 x i8] zeroinitializer, align 16
@MFI_DNAME_HONOR_OPTS = common dso_local global i32 0, align 4
@mfi_opts = common dso_local global i32 0, align 4
@MFI_DNAME_ES = common dso_local global i32 0, align 4
@MFI_DNAME_DEVICE_ID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"MISSING\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%2u\00", align 1
@mfi_unit = common dso_local global i32 0, align 4
@O_RDWR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [9 x i8] c"mfi_open\00", align 1
@.str.3 = private unnamed_addr constant [35 x i8] c"Failed to fetch info for drive %2u\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"S%u\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"E%u\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"E%u:S%u\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @mfi_drive_name(%struct.mfi_pd_info* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.mfi_pd_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.mfi_pd_info, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.mfi_pd_info* %0, %struct.mfi_pd_info** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %13 = load i32, i32* %7, align 4
  %14 = load i32, i32* @MFI_DNAME_HONOR_OPTS, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %30

17:                                               ; preds = %3
  %18 = load i32, i32* @mfi_opts, align 4
  %19 = load i32, i32* @MFI_DNAME_ES, align 4
  %20 = load i32, i32* @MFI_DNAME_DEVICE_ID, align 4
  %21 = or i32 %19, %20
  %22 = and i32 %18, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %17
  %25 = load i32, i32* @mfi_opts, align 4
  %26 = load i32, i32* @MFI_DNAME_ES, align 4
  %27 = load i32, i32* @MFI_DNAME_DEVICE_ID, align 4
  %28 = or i32 %26, %27
  %29 = and i32 %25, %28
  store i32 %29, i32* %7, align 4
  br label %30

30:                                               ; preds = %24, %17, %3
  store i8 0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @mfi_drive_name.buf, i64 0, i64 0), align 16
  %31 = load %struct.mfi_pd_info*, %struct.mfi_pd_info** %5, align 8
  %32 = icmp eq %struct.mfi_pd_info* %31, null
  br i1 %32, label %33, label %67

33:                                               ; preds = %30
  %34 = load i32, i32* %7, align 4
  %35 = load i32, i32* @MFI_DNAME_ES, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %67

38:                                               ; preds = %33
  %39 = load i32, i32* %6, align 4
  %40 = icmp eq i32 %39, 65535
  br i1 %40, label %41, label %43

41:                                               ; preds = %38
  %42 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @mfi_drive_name.buf, i64 0, i64 0), i32 16, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  br label %46

43:                                               ; preds = %38
  %44 = load i32, i32* %6, align 4
  %45 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @mfi_drive_name.buf, i64 0, i64 0), i32 16, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %44)
  br label %46

46:                                               ; preds = %43, %41
  %47 = load i32, i32* @mfi_unit, align 4
  %48 = load i32, i32* @O_RDWR, align 4
  %49 = call i32 @mfi_open(i32 %47, i32 %48)
  store i32 %49, i32* %11, align 4
  %50 = load i32, i32* %11, align 4
  %51 = icmp slt i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %46
  %53 = call i32 (i8*, ...) @warn(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @mfi_drive_name.buf, i64 0, i64 0), i8** %4, align 8
  br label %175

54:                                               ; preds = %46
  %55 = load i32, i32* %11, align 4
  %56 = load i32, i32* %6, align 4
  %57 = call i64 @mfi_pd_get_info(i32 %55, i32 %56, %struct.mfi_pd_info* %8, i32* null)
  %58 = icmp slt i64 %57, 0
  br i1 %58, label %59, label %64

59:                                               ; preds = %54
  %60 = load i32, i32* %6, align 4
  %61 = call i32 (i8*, ...) @warn(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0), i32 %60)
  %62 = load i32, i32* %11, align 4
  %63 = call i32 @close(i32 %62)
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @mfi_drive_name.buf, i64 0, i64 0), i8** %4, align 8
  br label %175

64:                                               ; preds = %54
  %65 = load i32, i32* %11, align 4
  %66 = call i32 @close(i32 %65)
  store %struct.mfi_pd_info* %8, %struct.mfi_pd_info** %5, align 8
  br label %67

67:                                               ; preds = %64, %33, %30
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @mfi_drive_name.buf, i64 0, i64 0), i8** %9, align 8
  store i32 16, i32* %12, align 4
  %68 = load i32, i32* %7, align 4
  %69 = load i32, i32* @MFI_DNAME_DEVICE_ID, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %96

72:                                               ; preds = %67
  %73 = load i32, i32* %6, align 4
  %74 = icmp eq i32 %73, 65535
  br i1 %74, label %75, label %79

75:                                               ; preds = %72
  %76 = load i8*, i8** %9, align 8
  %77 = load i32, i32* %12, align 4
  %78 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %76, i32 %77, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  store i32 %78, i32* %10, align 4
  br label %84

79:                                               ; preds = %72
  %80 = load i8*, i8** %9, align 8
  %81 = load i32, i32* %12, align 4
  %82 = load i32, i32* %6, align 4
  %83 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %80, i32 %81, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %82)
  store i32 %83, i32* %10, align 4
  br label %84

84:                                               ; preds = %79, %75
  %85 = load i32, i32* %10, align 4
  %86 = icmp sge i32 %85, 0
  br i1 %86, label %87, label %95

87:                                               ; preds = %84
  %88 = load i32, i32* %10, align 4
  %89 = load i8*, i8** %9, align 8
  %90 = sext i32 %88 to i64
  %91 = getelementptr inbounds i8, i8* %89, i64 %90
  store i8* %91, i8** %9, align 8
  %92 = load i32, i32* %10, align 4
  %93 = load i32, i32* %12, align 4
  %94 = sub nsw i32 %93, %92
  store i32 %94, i32* %12, align 4
  br label %95

95:                                               ; preds = %87, %84
  br label %96

96:                                               ; preds = %95, %67
  %97 = load i32, i32* %7, align 4
  %98 = load i32, i32* @MFI_DNAME_ES, align 4
  %99 = load i32, i32* @MFI_DNAME_DEVICE_ID, align 4
  %100 = or i32 %98, %99
  %101 = and i32 %97, %100
  %102 = load i32, i32* @MFI_DNAME_ES, align 4
  %103 = load i32, i32* @MFI_DNAME_DEVICE_ID, align 4
  %104 = or i32 %102, %103
  %105 = icmp eq i32 %101, %104
  br i1 %105, label %106, label %117

106:                                              ; preds = %96
  %107 = load i32, i32* %12, align 4
  %108 = icmp sge i32 %107, 2
  br i1 %108, label %109, label %117

109:                                              ; preds = %106
  %110 = load i8*, i8** %9, align 8
  %111 = getelementptr inbounds i8, i8* %110, i32 1
  store i8* %111, i8** %9, align 8
  store i8 32, i8* %110, align 1
  %112 = load i32, i32* %12, align 4
  %113 = add nsw i32 %112, -1
  store i32 %113, i32* %12, align 4
  %114 = load i8*, i8** %9, align 8
  store i8 0, i8* %114, align 1
  %115 = load i32, i32* %12, align 4
  %116 = add nsw i32 %115, -1
  store i32 %116, i32* %12, align 4
  br label %117

117:                                              ; preds = %109, %106, %96
  %118 = load i32, i32* %7, align 4
  %119 = load i32, i32* @MFI_DNAME_ES, align 4
  %120 = and i32 %118, %119
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %174

122:                                              ; preds = %117
  %123 = load %struct.mfi_pd_info*, %struct.mfi_pd_info** %5, align 8
  %124 = getelementptr inbounds %struct.mfi_pd_info, %struct.mfi_pd_info* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = icmp eq i32 %125, 65535
  br i1 %126, label %127, label %134

127:                                              ; preds = %122
  %128 = load i8*, i8** %9, align 8
  %129 = load i32, i32* %12, align 4
  %130 = load %struct.mfi_pd_info*, %struct.mfi_pd_info** %5, align 8
  %131 = getelementptr inbounds %struct.mfi_pd_info, %struct.mfi_pd_info* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 4
  %133 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %128, i32 %129, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32 %132)
  store i32 %133, i32* %10, align 4
  br label %162

134:                                              ; preds = %122
  %135 = load %struct.mfi_pd_info*, %struct.mfi_pd_info** %5, align 8
  %136 = getelementptr inbounds %struct.mfi_pd_info, %struct.mfi_pd_info* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 4
  %138 = load %struct.mfi_pd_info*, %struct.mfi_pd_info** %5, align 8
  %139 = getelementptr inbounds %struct.mfi_pd_info, %struct.mfi_pd_info* %138, i32 0, i32 3
  %140 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %139, i32 0, i32 0
  %141 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 4
  %143 = icmp eq i32 %137, %142
  br i1 %143, label %144, label %151

144:                                              ; preds = %134
  %145 = load i8*, i8** %9, align 8
  %146 = load i32, i32* %12, align 4
  %147 = load %struct.mfi_pd_info*, %struct.mfi_pd_info** %5, align 8
  %148 = getelementptr inbounds %struct.mfi_pd_info, %struct.mfi_pd_info* %147, i32 0, i32 2
  %149 = load i32, i32* %148, align 4
  %150 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %145, i32 %146, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i32 %149)
  store i32 %150, i32* %10, align 4
  br label %161

151:                                              ; preds = %134
  %152 = load i8*, i8** %9, align 8
  %153 = load i32, i32* %12, align 4
  %154 = load %struct.mfi_pd_info*, %struct.mfi_pd_info** %5, align 8
  %155 = getelementptr inbounds %struct.mfi_pd_info, %struct.mfi_pd_info* %154, i32 0, i32 2
  %156 = load i32, i32* %155, align 4
  %157 = load %struct.mfi_pd_info*, %struct.mfi_pd_info** %5, align 8
  %158 = getelementptr inbounds %struct.mfi_pd_info, %struct.mfi_pd_info* %157, i32 0, i32 1
  %159 = load i32, i32* %158, align 4
  %160 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %152, i32 %153, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), i32 %156, i32 %159)
  store i32 %160, i32* %10, align 4
  br label %161

161:                                              ; preds = %151, %144
  br label %162

162:                                              ; preds = %161, %127
  %163 = load i32, i32* %10, align 4
  %164 = icmp sge i32 %163, 0
  br i1 %164, label %165, label %173

165:                                              ; preds = %162
  %166 = load i32, i32* %10, align 4
  %167 = load i8*, i8** %9, align 8
  %168 = sext i32 %166 to i64
  %169 = getelementptr inbounds i8, i8* %167, i64 %168
  store i8* %169, i8** %9, align 8
  %170 = load i32, i32* %10, align 4
  %171 = load i32, i32* %12, align 4
  %172 = sub nsw i32 %171, %170
  store i32 %172, i32* %12, align 4
  br label %173

173:                                              ; preds = %165, %162
  br label %174

174:                                              ; preds = %173, %117
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @mfi_drive_name.buf, i64 0, i64 0), i8** %4, align 8
  br label %175

175:                                              ; preds = %174, %59, %52
  %176 = load i8*, i8** %4, align 8
  ret i8* %176
}

declare dso_local i32 @snprintf(i8*, i32, i8*, ...) #1

declare dso_local i32 @mfi_open(i32, i32) #1

declare dso_local i32 @warn(i8*, ...) #1

declare dso_local i64 @mfi_pd_get_info(i32, i32, %struct.mfi_pd_info*, i32*) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
