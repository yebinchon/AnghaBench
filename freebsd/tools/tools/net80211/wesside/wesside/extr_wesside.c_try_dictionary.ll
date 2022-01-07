; ModuleID = '/home/carl/AnghaBench/freebsd/tools/tools/net80211/wesside/wesside/extr_wesside.c_try_dictionary.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/tools/net80211/wesside/wesside/extr_wesside.c_try_dictionary.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_frame = type { i32*, i8*, i8*, i8* }
%struct.ether_header = type { i32, i32 }

@.str = private unnamed_addr constant [5 x i8] c"%.2X\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"%s/%s/%s/%s\00", align 1
@DICT_PATH = common dso_local global i8* null, align 8
@O_RDONLY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"read()\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.4 = private unnamed_addr constant [38 x i8] c"Had PRGA (%s) but too little (%d/%d)\0A\00", align 1
@Z_NULL = common dso_local global i8* null, align 8
@.str.5 = private unnamed_addr constant [42 x i8] c"HAD PRGA (%s) checksum mismatch! (%x %x)\0A\00", align 1
@IEEE80211_FC1_DIR_FROMDS = common dso_local global i32 0, align 4
@IEEE80211_FC1_DIR_TODS = common dso_local global i32 0, align 4
@tapfd = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [8 x i8] c"write()\00", align 1
@.str.7 = private unnamed_addr constant [15 x i8] c"Wrote %d / %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @try_dictionary(%struct.ieee80211_frame* %0, i32 %1) #0 {
  %3 = alloca %struct.ieee80211_frame*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca [52 x i8], align 16
  %7 = alloca [3 x [3 x i8]], align 1
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca [4096 x i8], align 16
  %12 = alloca i32, align 4
  %13 = alloca %struct.ether_header*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  store %struct.ieee80211_frame* %0, %struct.ieee80211_frame** %3, align 8
  store i32 %1, i32* %4, align 4
  %18 = load i32, i32* %4, align 4
  %19 = sext i32 %18 to i64
  %20 = icmp ult i64 %19, 4104
  %21 = zext i1 %20 to i32
  %22 = call i32 @assert(i32 %21)
  %23 = load %struct.ieee80211_frame*, %struct.ieee80211_frame** %3, align 8
  %24 = bitcast %struct.ieee80211_frame* %23 to i8*
  %25 = getelementptr inbounds i8, i8* %24, i64 32
  store i8* %25, i8** %5, align 8
  store i32 0, i32* %8, align 4
  br label %26

26:                                               ; preds = %40, %2
  %27 = load i32, i32* %8, align 4
  %28 = icmp slt i32 %27, 3
  br i1 %28, label %29, label %43

29:                                               ; preds = %26
  %30 = load i32, i32* %8, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds [3 x [3 x i8]], [3 x [3 x i8]]* %7, i64 0, i64 %31
  %33 = getelementptr inbounds [3 x i8], [3 x i8]* %32, i64 0, i64 0
  %34 = load i8*, i8** %5, align 8
  %35 = load i32, i32* %8, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i8, i8* %34, i64 %36
  %38 = load i8, i8* %37, align 1
  %39 = call i32 @snprintf(i8* %33, i32 3, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8 zeroext %38)
  br label %40

40:                                               ; preds = %29
  %41 = load i32, i32* %8, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %8, align 4
  br label %26

43:                                               ; preds = %26
  %44 = getelementptr inbounds [52 x i8], [52 x i8]* %6, i64 0, i64 0
  %45 = load i8*, i8** @DICT_PATH, align 8
  %46 = getelementptr inbounds [3 x [3 x i8]], [3 x [3 x i8]]* %7, i64 0, i64 0
  %47 = getelementptr inbounds [3 x i8], [3 x i8]* %46, i64 0, i64 0
  %48 = getelementptr inbounds [3 x [3 x i8]], [3 x [3 x i8]]* %7, i64 0, i64 1
  %49 = getelementptr inbounds [3 x i8], [3 x i8]* %48, i64 0, i64 0
  %50 = getelementptr inbounds [3 x [3 x i8]], [3 x [3 x i8]]* %7, i64 0, i64 2
  %51 = getelementptr inbounds [3 x i8], [3 x i8]* %50, i64 0, i64 0
  %52 = call i32 @sprintf(i8* %44, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i8* %45, i8* %47, i8* %49, i8* %51)
  %53 = getelementptr inbounds [52 x i8], [52 x i8]* %6, i64 0, i64 0
  %54 = load i32, i32* @O_RDONLY, align 4
  %55 = call i32 @open(i8* %53, i32 %54)
  store i32 %55, i32* %9, align 4
  %56 = load i32, i32* %9, align 4
  %57 = icmp eq i32 %56, -1
  br i1 %57, label %58, label %59

58:                                               ; preds = %43
  br label %206

59:                                               ; preds = %43
  %60 = load i32, i32* %9, align 4
  %61 = getelementptr inbounds [4096 x i8], [4096 x i8]* %11, i64 0, i64 6
  %62 = call i32 @read(i32 %60, i8* %61, i32 4090)
  store i32 %62, i32* %10, align 4
  %63 = load i32, i32* %10, align 4
  %64 = icmp eq i32 %63, -1
  br i1 %64, label %65, label %68

65:                                               ; preds = %59
  %66 = call i32 @perror(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %67 = call i32 @exit(i32 1) #3
  unreachable

68:                                               ; preds = %59
  %69 = load i32, i32* %9, align 4
  %70 = call i32 @close(i32 %69)
  %71 = load i32, i32* %4, align 4
  %72 = sext i32 %71 to i64
  %73 = sub i64 %72, 32
  %74 = sub i64 %73, 4
  %75 = trunc i64 %74 to i32
  store i32 %75, i32* %12, align 4
  %76 = load i32, i32* %12, align 4
  %77 = load i32, i32* %10, align 4
  %78 = icmp sgt i32 %76, %77
  br i1 %78, label %79, label %85

79:                                               ; preds = %68
  %80 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %81 = getelementptr inbounds [52 x i8], [52 x i8]* %6, i64 0, i64 0
  %82 = load i32, i32* %10, align 4
  %83 = load i32, i32* %12, align 4
  %84 = call i32 (i8*, ...) @time_print(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.4, i64 0, i64 0), i8* %81, i32 %82, i32 %83)
  br label %206

85:                                               ; preds = %68
  %86 = load i8*, i8** %5, align 8
  %87 = getelementptr inbounds i8, i8* %86, i64 4
  store i8* %87, i8** %5, align 8
  store i32 0, i32* %8, align 4
  br label %88

88:                                               ; preds = %107, %85
  %89 = load i32, i32* %8, align 4
  %90 = load i32, i32* %12, align 4
  %91 = icmp slt i32 %89, %90
  br i1 %91, label %92, label %110

92:                                               ; preds = %88
  %93 = load i8*, i8** %5, align 8
  %94 = load i32, i32* %8, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i8, i8* %93, i64 %95
  %97 = load i8, i8* %96, align 1
  %98 = zext i8 %97 to i32
  %99 = load i32, i32* %8, align 4
  %100 = add nsw i32 6, %99
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds [4096 x i8], [4096 x i8]* %11, i64 0, i64 %101
  %103 = load i8, i8* %102, align 1
  %104 = zext i8 %103 to i32
  %105 = xor i32 %104, %98
  %106 = trunc i32 %105 to i8
  store i8 %106, i8* %102, align 1
  br label %107

107:                                              ; preds = %92
  %108 = load i32, i32* %8, align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %8, align 4
  br label %88

110:                                              ; preds = %88
  %111 = load i32, i32* %12, align 4
  %112 = sub nsw i32 %111, 4
  store i32 %112, i32* %12, align 4
  %113 = load i8*, i8** @Z_NULL, align 8
  %114 = call i64 @crc32(i64 0, i8* %113, i32 0)
  store i64 %114, i64* %14, align 8
  %115 = load i64, i64* %14, align 8
  %116 = getelementptr inbounds [4096 x i8], [4096 x i8]* %11, i64 0, i64 6
  %117 = load i32, i32* %12, align 4
  %118 = call i64 @crc32(i64 %115, i8* %116, i32 %117)
  store i64 %118, i64* %14, align 8
  %119 = load i32, i32* %12, align 4
  %120 = add nsw i32 6, %119
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds [4096 x i8], [4096 x i8]* %11, i64 0, i64 %121
  %123 = bitcast i8* %122 to i64*
  store i64* %123, i64** %15, align 8
  %124 = load i64*, i64** %15, align 8
  %125 = load i64, i64* %124, align 8
  %126 = load i64, i64* %14, align 8
  %127 = icmp ne i64 %125, %126
  br i1 %127, label %128, label %135

128:                                              ; preds = %110
  %129 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %130 = getelementptr inbounds [52 x i8], [52 x i8]* %6, i64 0, i64 0
  %131 = load i64*, i64** %15, align 8
  %132 = load i64, i64* %131, align 8
  %133 = load i64, i64* %14, align 8
  %134 = call i32 (i8*, ...) @time_print(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.5, i64 0, i64 0), i8* %130, i64 %132, i64 %133)
  br label %206

135:                                              ; preds = %110
  %136 = getelementptr inbounds [4096 x i8], [4096 x i8]* %11, i64 0, i64 0
  %137 = bitcast i8* %136 to %struct.ether_header*
  store %struct.ether_header* %137, %struct.ether_header** %13, align 8
  %138 = load %struct.ieee80211_frame*, %struct.ieee80211_frame** %3, align 8
  %139 = getelementptr inbounds %struct.ieee80211_frame, %struct.ieee80211_frame* %138, i32 0, i32 0
  %140 = load i32*, i32** %139, align 8
  %141 = getelementptr inbounds i32, i32* %140, i64 1
  %142 = load i32, i32* %141, align 4
  %143 = load i32, i32* @IEEE80211_FC1_DIR_FROMDS, align 4
  %144 = and i32 %142, %143
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %150

146:                                              ; preds = %135
  %147 = load %struct.ieee80211_frame*, %struct.ieee80211_frame** %3, align 8
  %148 = getelementptr inbounds %struct.ieee80211_frame, %struct.ieee80211_frame* %147, i32 0, i32 1
  %149 = load i8*, i8** %148, align 8
  store i8* %149, i8** %17, align 8
  br label %154

150:                                              ; preds = %135
  %151 = load %struct.ieee80211_frame*, %struct.ieee80211_frame** %3, align 8
  %152 = getelementptr inbounds %struct.ieee80211_frame, %struct.ieee80211_frame* %151, i32 0, i32 2
  %153 = load i8*, i8** %152, align 8
  store i8* %153, i8** %17, align 8
  br label %154

154:                                              ; preds = %150, %146
  %155 = load %struct.ieee80211_frame*, %struct.ieee80211_frame** %3, align 8
  %156 = getelementptr inbounds %struct.ieee80211_frame, %struct.ieee80211_frame* %155, i32 0, i32 0
  %157 = load i32*, i32** %156, align 8
  %158 = getelementptr inbounds i32, i32* %157, i64 1
  %159 = load i32, i32* %158, align 4
  %160 = load i32, i32* @IEEE80211_FC1_DIR_TODS, align 4
  %161 = and i32 %159, %160
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %167

163:                                              ; preds = %154
  %164 = load %struct.ieee80211_frame*, %struct.ieee80211_frame** %3, align 8
  %165 = getelementptr inbounds %struct.ieee80211_frame, %struct.ieee80211_frame* %164, i32 0, i32 1
  %166 = load i8*, i8** %165, align 8
  store i8* %166, i8** %16, align 8
  br label %171

167:                                              ; preds = %154
  %168 = load %struct.ieee80211_frame*, %struct.ieee80211_frame** %3, align 8
  %169 = getelementptr inbounds %struct.ieee80211_frame, %struct.ieee80211_frame* %168, i32 0, i32 3
  %170 = load i8*, i8** %169, align 8
  store i8* %170, i8** %16, align 8
  br label %171

171:                                              ; preds = %167, %163
  %172 = load %struct.ether_header*, %struct.ether_header** %13, align 8
  %173 = getelementptr inbounds %struct.ether_header, %struct.ether_header* %172, i32 0, i32 1
  %174 = load i32, i32* %173, align 4
  %175 = load i8*, i8** %16, align 8
  %176 = call i32 @memcpy(i32 %174, i8* %175, i32 6)
  %177 = load %struct.ether_header*, %struct.ether_header** %13, align 8
  %178 = getelementptr inbounds %struct.ether_header, %struct.ether_header* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 4
  %180 = load i8*, i8** %17, align 8
  %181 = call i32 @memcpy(i32 %179, i8* %180, i32 6)
  %182 = load i32, i32* %12, align 4
  %183 = sub nsw i32 %182, 8
  store i32 %183, i32* %12, align 4
  %184 = load i32, i32* %12, align 4
  %185 = sext i32 %184 to i64
  %186 = add i64 %185, 8
  %187 = trunc i64 %186 to i32
  store i32 %187, i32* %12, align 4
  %188 = load i32, i32* @tapfd, align 4
  %189 = getelementptr inbounds [4096 x i8], [4096 x i8]* %11, i64 0, i64 0
  %190 = load i32, i32* %12, align 4
  %191 = call i32 @write(i32 %188, i8* %189, i32 %190)
  store i32 %191, i32* %10, align 4
  %192 = load i32, i32* %10, align 4
  %193 = icmp eq i32 %192, -1
  br i1 %193, label %194, label %197

194:                                              ; preds = %171
  %195 = call i32 @perror(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0))
  %196 = call i32 @exit(i32 1) #3
  unreachable

197:                                              ; preds = %171
  %198 = load i32, i32* %10, align 4
  %199 = load i32, i32* %12, align 4
  %200 = icmp ne i32 %198, %199
  br i1 %200, label %201, label %206

201:                                              ; preds = %197
  %202 = load i32, i32* %10, align 4
  %203 = load i32, i32* %12, align 4
  %204 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i64 0, i64 0), i32 %202, i32 %203)
  %205 = call i32 @exit(i32 1) #3
  unreachable

206:                                              ; preds = %58, %79, %128, %197
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8 zeroext) #1

declare dso_local i32 @sprintf(i8*, i8*, i8*, i8*, i8*, i8*) #1

declare dso_local i32 @open(i8*, i32) #1

declare dso_local i32 @read(i32, i8*, i32) #1

declare dso_local i32 @perror(i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @close(i32) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @time_print(i8*, ...) #1

declare dso_local i64 @crc32(i64, i8*, i32) #1

declare dso_local i32 @memcpy(i32, i8*, i32) #1

declare dso_local i32 @write(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
