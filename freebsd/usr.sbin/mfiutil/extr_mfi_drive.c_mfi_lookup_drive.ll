; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/mfiutil/extr_mfi_drive.c_mfi_lookup_drive.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/mfiutil/extr_mfi_drive.c_mfi_lookup_drive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mfi_pd_list = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i32, i32, i32, i64 }

@errno = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Failed to fetch drive list\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"Unknown drive %s\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [24 x i8] c"Invalid drive number %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mfi_lookup_drive(i32 %0, i8* %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca %struct.mfi_pd_list*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i8* %1, i8** %6, align 8
  store i64* %2, i64** %7, align 8
  %15 = load i8*, i8** %6, align 8
  %16 = call i64 @strtol(i8* %15, i8** %12, i32 0)
  store i64 %16, i64* %9, align 8
  %17 = load i8*, i8** %12, align 8
  %18 = load i8, i8* %17, align 1
  %19 = sext i8 %18 to i32
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %31

21:                                               ; preds = %3
  %22 = load i64, i64* %9, align 8
  %23 = icmp slt i64 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %21
  %25 = load i64, i64* %9, align 8
  %26 = icmp sge i64 %25, 65535
  br i1 %26, label %27, label %28

27:                                               ; preds = %24, %21
  br label %192

28:                                               ; preds = %24
  %29 = load i64, i64* %9, align 8
  %30 = load i64*, i64** %7, align 8
  store i64 %29, i64* %30, align 8
  store i32 0, i32* %4, align 4
  br label %196

31:                                               ; preds = %3
  %32 = load i8*, i8** %6, align 8
  %33 = getelementptr inbounds i8, i8* %32, i64 0
  %34 = load i8, i8* %33, align 1
  %35 = call signext i8 @toupper(i8 signext %34)
  %36 = sext i8 %35 to i32
  %37 = icmp eq i32 %36, 69
  br i1 %37, label %45, label %38

38:                                               ; preds = %31
  %39 = load i8*, i8** %6, align 8
  %40 = getelementptr inbounds i8, i8* %39, i64 0
  %41 = load i8, i8* %40, align 1
  %42 = call signext i8 @toupper(i8 signext %41)
  %43 = sext i8 %42 to i32
  %44 = icmp eq i32 %43, 83
  br i1 %44, label %45, label %191

45:                                               ; preds = %38, %31
  %46 = load i8*, i8** %6, align 8
  %47 = getelementptr inbounds i8, i8* %46, i64 1
  %48 = load i8, i8* %47, align 1
  %49 = sext i8 %48 to i32
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %45
  br label %192

52:                                               ; preds = %45
  %53 = load i8*, i8** %6, align 8
  store i8* %53, i8** %12, align 8
  %54 = load i8*, i8** %6, align 8
  %55 = getelementptr inbounds i8, i8* %54, i64 0
  %56 = load i8, i8* %55, align 1
  %57 = call signext i8 @toupper(i8 signext %56)
  %58 = sext i8 %57 to i32
  %59 = icmp eq i32 %58, 69
  br i1 %59, label %60, label %88

60:                                               ; preds = %52
  %61 = load i8*, i8** %12, align 8
  %62 = getelementptr inbounds i8, i8* %61, i32 1
  store i8* %62, i8** %12, align 8
  %63 = load i8*, i8** %12, align 8
  %64 = call i64 @strtol(i8* %63, i8** %12, i32 0)
  store i64 %64, i64* %9, align 8
  %65 = load i64, i64* %9, align 8
  %66 = icmp slt i64 %65, 0
  br i1 %66, label %75, label %67

67:                                               ; preds = %60
  %68 = load i64, i64* %9, align 8
  %69 = icmp sgt i64 %68, 255
  br i1 %69, label %75, label %70

70:                                               ; preds = %67
  %71 = load i8*, i8** %12, align 8
  %72 = load i8, i8* %71, align 1
  %73 = sext i8 %72 to i32
  %74 = icmp ne i32 %73, 58
  br i1 %74, label %75, label %76

75:                                               ; preds = %70, %67, %60
  br label %192

76:                                               ; preds = %70
  %77 = load i64, i64* %9, align 8
  %78 = trunc i64 %77 to i32
  store i32 %78, i32* %13, align 4
  %79 = load i8*, i8** %12, align 8
  %80 = getelementptr inbounds i8, i8* %79, i32 1
  store i8* %80, i8** %12, align 8
  %81 = load i8*, i8** %12, align 8
  %82 = load i8, i8* %81, align 1
  %83 = call signext i8 @toupper(i8 signext %82)
  %84 = sext i8 %83 to i32
  %85 = icmp ne i32 %84, 83
  br i1 %85, label %86, label %87

86:                                               ; preds = %76
  br label %192

87:                                               ; preds = %76
  br label %89

88:                                               ; preds = %52
  store i32 255, i32* %13, align 4
  br label %89

89:                                               ; preds = %88, %87
  %90 = load i8*, i8** %12, align 8
  %91 = getelementptr inbounds i8, i8* %90, i32 1
  store i8* %91, i8** %12, align 8
  %92 = load i8*, i8** %12, align 8
  %93 = load i8, i8* %92, align 1
  %94 = sext i8 %93 to i32
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %96, label %97

96:                                               ; preds = %89
  br label %192

97:                                               ; preds = %89
  %98 = load i8*, i8** %12, align 8
  %99 = call i64 @strtol(i8* %98, i8** %12, i32 0)
  store i64 %99, i64* %9, align 8
  %100 = load i64, i64* %9, align 8
  %101 = icmp slt i64 %100, 0
  br i1 %101, label %110, label %102

102:                                              ; preds = %97
  %103 = load i64, i64* %9, align 8
  %104 = icmp sgt i64 %103, 255
  br i1 %104, label %110, label %105

105:                                              ; preds = %102
  %106 = load i8*, i8** %12, align 8
  %107 = load i8, i8* %106, align 1
  %108 = sext i8 %107 to i32
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %111

110:                                              ; preds = %105, %102, %97
  br label %192

111:                                              ; preds = %105
  %112 = load i64, i64* %9, align 8
  %113 = trunc i64 %112 to i32
  store i32 %113, i32* %14, align 4
  %114 = load i32, i32* %5, align 4
  %115 = call i64 @mfi_pd_get_list(i32 %114, %struct.mfi_pd_list** %8, i32* null)
  %116 = icmp slt i64 %115, 0
  br i1 %116, label %117, label %121

117:                                              ; preds = %111
  %118 = load i32, i32* @errno, align 4
  store i32 %118, i32* %10, align 4
  %119 = call i32 @warn(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %120 = load i32, i32* %10, align 4
  store i32 %120, i32* %4, align 4
  br label %196

121:                                              ; preds = %111
  store i64 0, i64* %11, align 8
  br label %122

122:                                              ; preds = %182, %121
  %123 = load i64, i64* %11, align 8
  %124 = load %struct.mfi_pd_list*, %struct.mfi_pd_list** %8, align 8
  %125 = getelementptr inbounds %struct.mfi_pd_list, %struct.mfi_pd_list* %124, i32 0, i32 0
  %126 = load i64, i64* %125, align 8
  %127 = icmp ult i64 %123, %126
  br i1 %127, label %128, label %185

128:                                              ; preds = %122
  %129 = load %struct.mfi_pd_list*, %struct.mfi_pd_list** %8, align 8
  %130 = getelementptr inbounds %struct.mfi_pd_list, %struct.mfi_pd_list* %129, i32 0, i32 1
  %131 = load %struct.TYPE_2__*, %struct.TYPE_2__** %130, align 8
  %132 = load i64, i64* %11, align 8
  %133 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %131, i64 %132
  %134 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %133, i32 0, i32 0
  %135 = load i64, i64* %134, align 8
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %138

137:                                              ; preds = %128
  br label %182

138:                                              ; preds = %128
  %139 = load i32, i32* %13, align 4
  %140 = icmp eq i32 %139, 255
  br i1 %140, label %141, label %150

141:                                              ; preds = %138
  %142 = load %struct.mfi_pd_list*, %struct.mfi_pd_list** %8, align 8
  %143 = getelementptr inbounds %struct.mfi_pd_list, %struct.mfi_pd_list* %142, i32 0, i32 1
  %144 = load %struct.TYPE_2__*, %struct.TYPE_2__** %143, align 8
  %145 = load i64, i64* %11, align 8
  %146 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %144, i64 %145
  %147 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %146, i32 0, i32 1
  %148 = load i32, i32* %147, align 8
  %149 = icmp eq i32 %148, 65535
  br i1 %149, label %160, label %150

150:                                              ; preds = %141, %138
  %151 = load %struct.mfi_pd_list*, %struct.mfi_pd_list** %8, align 8
  %152 = getelementptr inbounds %struct.mfi_pd_list, %struct.mfi_pd_list* %151, i32 0, i32 1
  %153 = load %struct.TYPE_2__*, %struct.TYPE_2__** %152, align 8
  %154 = load i64, i64* %11, align 8
  %155 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %153, i64 %154
  %156 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %155, i32 0, i32 2
  %157 = load i32, i32* %156, align 4
  %158 = load i32, i32* %13, align 4
  %159 = icmp eq i32 %157, %158
  br i1 %159, label %160, label %181

160:                                              ; preds = %150, %141
  %161 = load %struct.mfi_pd_list*, %struct.mfi_pd_list** %8, align 8
  %162 = getelementptr inbounds %struct.mfi_pd_list, %struct.mfi_pd_list* %161, i32 0, i32 1
  %163 = load %struct.TYPE_2__*, %struct.TYPE_2__** %162, align 8
  %164 = load i64, i64* %11, align 8
  %165 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %163, i64 %164
  %166 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %165, i32 0, i32 3
  %167 = load i32, i32* %166, align 8
  %168 = load i32, i32* %14, align 4
  %169 = icmp eq i32 %167, %168
  br i1 %169, label %170, label %181

170:                                              ; preds = %160
  %171 = load %struct.mfi_pd_list*, %struct.mfi_pd_list** %8, align 8
  %172 = getelementptr inbounds %struct.mfi_pd_list, %struct.mfi_pd_list* %171, i32 0, i32 1
  %173 = load %struct.TYPE_2__*, %struct.TYPE_2__** %172, align 8
  %174 = load i64, i64* %11, align 8
  %175 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %173, i64 %174
  %176 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %175, i32 0, i32 4
  %177 = load i64, i64* %176, align 8
  %178 = load i64*, i64** %7, align 8
  store i64 %177, i64* %178, align 8
  %179 = load %struct.mfi_pd_list*, %struct.mfi_pd_list** %8, align 8
  %180 = call i32 @free(%struct.mfi_pd_list* %179)
  store i32 0, i32* %4, align 4
  br label %196

181:                                              ; preds = %160, %150
  br label %182

182:                                              ; preds = %181, %137
  %183 = load i64, i64* %11, align 8
  %184 = add i64 %183, 1
  store i64 %184, i64* %11, align 8
  br label %122

185:                                              ; preds = %122
  %186 = load %struct.mfi_pd_list*, %struct.mfi_pd_list** %8, align 8
  %187 = call i32 @free(%struct.mfi_pd_list* %186)
  %188 = load i8*, i8** %6, align 8
  %189 = call i32 @warnx(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i8* %188)
  %190 = load i32, i32* @EINVAL, align 4
  store i32 %190, i32* %4, align 4
  br label %196

191:                                              ; preds = %38
  br label %192

192:                                              ; preds = %191, %110, %96, %86, %75, %51, %27
  %193 = load i8*, i8** %6, align 8
  %194 = call i32 @warnx(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i8* %193)
  %195 = load i32, i32* @EINVAL, align 4
  store i32 %195, i32* %4, align 4
  br label %196

196:                                              ; preds = %192, %185, %170, %117, %28
  %197 = load i32, i32* %4, align 4
  ret i32 %197
}

declare dso_local i64 @strtol(i8*, i8**, i32) #1

declare dso_local signext i8 @toupper(i8 signext) #1

declare dso_local i64 @mfi_pd_get_list(i32, %struct.mfi_pd_list**, i32*) #1

declare dso_local i32 @warn(i8*) #1

declare dso_local i32 @free(%struct.mfi_pd_list*) #1

declare dso_local i32 @warnx(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
