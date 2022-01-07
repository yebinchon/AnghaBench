; ModuleID = '/home/carl/AnghaBench/freebsd/tools/tools/net80211/w00t/redir/extr_redir.c_read_buddy_data.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/tools/net80211/w00t/redir/extr_redir.c_read_buddy_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.params = type { i32, %struct.queue*, i32, i32, i64 }
%struct.queue = type { i32, i32, i64, %struct.queue*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32*, i32, i32, i32 }
%struct.iovec = type { i8*, i32 }

@.str = private unnamed_addr constant [9 x i8] c"Diff ID\0A\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"Diff len\0A\00", align 1
@IEEE80211_FC1_DIR_TODS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [9 x i8] c"writev()\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"Short write %d\0A\00", align 1
@S_START = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @read_buddy_data(%struct.params* %0) #0 {
  %2 = alloca %struct.params*, align 8
  %3 = alloca i16*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.queue*, align 8
  %8 = alloca %struct.queue*, align 8
  %9 = alloca [12 x i8], align 1
  %10 = alloca [2 x %struct.iovec], align 16
  store %struct.params* %0, %struct.params** %2, align 8
  %11 = load %struct.params*, %struct.params** %2, align 8
  %12 = getelementptr inbounds %struct.params, %struct.params* %11, i32 0, i32 4
  %13 = load i64, i64* %12, align 8
  %14 = inttoptr i64 %13 to i16*
  store i16* %14, i16** %3, align 8
  %15 = load %struct.params*, %struct.params** %2, align 8
  %16 = getelementptr inbounds %struct.params, %struct.params* %15, i32 0, i32 1
  %17 = load %struct.queue*, %struct.queue** %16, align 8
  store %struct.queue* %17, %struct.queue** %7, align 8
  %18 = load %struct.params*, %struct.params** %2, align 8
  %19 = getelementptr inbounds %struct.params, %struct.params* %18, i32 0, i32 1
  %20 = load %struct.queue*, %struct.queue** %19, align 8
  store %struct.queue* %20, %struct.queue** %8, align 8
  %21 = load i16*, i16** %3, align 8
  %22 = getelementptr inbounds i16, i16* %21, i32 1
  store i16* %22, i16** %3, align 8
  %23 = load i16, i16* %21, align 2
  %24 = zext i16 %23 to i32
  %25 = call i32 @ntohs(i32 %24)
  store i32 %25, i32* %4, align 4
  %26 = load i16*, i16** %3, align 8
  %27 = getelementptr inbounds i16, i16* %26, i32 1
  store i16* %27, i16** %3, align 8
  %28 = load i16, i16* %26, align 2
  %29 = zext i16 %28 to i32
  %30 = call i32 @ntohs(i32 %29)
  store i32 %30, i32* %5, align 4
  %31 = load i32, i32* %5, align 4
  %32 = add nsw i32 %31, 4
  %33 = load %struct.params*, %struct.params** %2, align 8
  %34 = getelementptr inbounds %struct.params, %struct.params* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = sub nsw i32 %32, %35
  store i32 %36, i32* %6, align 4
  %37 = load i32, i32* %6, align 4
  %38 = icmp sgt i32 %37, 0
  %39 = zext i1 %38 to i32
  %40 = call i32 @assert(i32 %39)
  %41 = load %struct.params*, %struct.params** %2, align 8
  %42 = load i32, i32* %6, align 4
  %43 = call i32 @buddy_get(%struct.params* %41, i32 %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %46, label %45

45:                                               ; preds = %1
  br label %202

46:                                               ; preds = %1
  %47 = load %struct.params*, %struct.params** %2, align 8
  %48 = getelementptr inbounds %struct.params, %struct.params* %47, i32 0, i32 0
  store i32 0, i32* %48, align 8
  %49 = load %struct.queue*, %struct.queue** %7, align 8
  %50 = icmp ne %struct.queue* %49, null
  br i1 %50, label %52, label %51

51:                                               ; preds = %46
  br label %202

52:                                               ; preds = %46
  %53 = load %struct.queue*, %struct.queue** %7, align 8
  %54 = getelementptr inbounds %struct.queue, %struct.queue* %53, i32 0, i32 2
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %58, label %57

57:                                               ; preds = %52
  br label %202

58:                                               ; preds = %52
  %59 = load %struct.queue*, %struct.queue** %7, align 8
  %60 = getelementptr inbounds %struct.queue, %struct.queue* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = load i32, i32* %4, align 4
  %63 = icmp ne i32 %61, %62
  br i1 %63, label %64, label %66

64:                                               ; preds = %58
  %65 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  br label %202

66:                                               ; preds = %58
  %67 = load %struct.queue*, %struct.queue** %7, align 8
  %68 = getelementptr inbounds %struct.queue, %struct.queue* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = sext i32 %69 to i64
  %71 = sub i64 %70, 24
  %72 = sub i64 %71, 4
  %73 = sub i64 %72, 4
  %74 = trunc i64 %73 to i32
  store i32 %74, i32* %6, align 4
  %75 = load i32, i32* %6, align 4
  %76 = load i32, i32* %5, align 4
  %77 = icmp ne i32 %75, %76
  br i1 %77, label %78, label %80

78:                                               ; preds = %66
  %79 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  br label %202

80:                                               ; preds = %66
  %81 = load %struct.queue*, %struct.queue** %7, align 8
  %82 = getelementptr inbounds %struct.queue, %struct.queue* %81, i32 0, i32 4
  %83 = load %struct.TYPE_2__*, %struct.TYPE_2__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 0
  %85 = load i32*, i32** %84, align 8
  %86 = getelementptr inbounds i32, i32* %85, i64 1
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* @IEEE80211_FC1_DIR_TODS, align 4
  %89 = and i32 %87, %88
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %106

91:                                               ; preds = %80
  %92 = getelementptr inbounds [12 x i8], [12 x i8]* %9, i64 0, i64 0
  %93 = load %struct.queue*, %struct.queue** %7, align 8
  %94 = getelementptr inbounds %struct.queue, %struct.queue* %93, i32 0, i32 4
  %95 = load %struct.TYPE_2__*, %struct.TYPE_2__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 8
  %98 = call i32 @memcpy(i8* %92, i32 %97, i32 6)
  %99 = getelementptr inbounds [12 x i8], [12 x i8]* %9, i64 0, i64 6
  %100 = load %struct.queue*, %struct.queue** %7, align 8
  %101 = getelementptr inbounds %struct.queue, %struct.queue* %100, i32 0, i32 4
  %102 = load %struct.TYPE_2__*, %struct.TYPE_2__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %102, i32 0, i32 3
  %104 = load i32, i32* %103, align 8
  %105 = call i32 @memcpy(i8* %99, i32 %104, i32 6)
  br label %121

106:                                              ; preds = %80
  %107 = getelementptr inbounds [12 x i8], [12 x i8]* %9, i64 0, i64 0
  %108 = load %struct.queue*, %struct.queue** %7, align 8
  %109 = getelementptr inbounds %struct.queue, %struct.queue* %108, i32 0, i32 4
  %110 = load %struct.TYPE_2__*, %struct.TYPE_2__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %110, i32 0, i32 2
  %112 = load i32, i32* %111, align 4
  %113 = call i32 @memcpy(i8* %107, i32 %112, i32 6)
  %114 = getelementptr inbounds [12 x i8], [12 x i8]* %9, i64 0, i64 6
  %115 = load %struct.queue*, %struct.queue** %7, align 8
  %116 = getelementptr inbounds %struct.queue, %struct.queue* %115, i32 0, i32 4
  %117 = load %struct.TYPE_2__*, %struct.TYPE_2__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 8
  %120 = call i32 @memcpy(i8* %114, i32 %119, i32 6)
  br label %121

121:                                              ; preds = %106, %91
  %122 = getelementptr inbounds [12 x i8], [12 x i8]* %9, i64 0, i64 0
  %123 = getelementptr inbounds [2 x %struct.iovec], [2 x %struct.iovec]* %10, i64 0, i64 0
  %124 = getelementptr inbounds %struct.iovec, %struct.iovec* %123, i32 0, i32 0
  store i8* %122, i8** %124, align 16
  %125 = getelementptr inbounds [2 x %struct.iovec], [2 x %struct.iovec]* %10, i64 0, i64 0
  %126 = getelementptr inbounds %struct.iovec, %struct.iovec* %125, i32 0, i32 1
  store i32 12, i32* %126, align 8
  %127 = load i16*, i16** %3, align 8
  %128 = bitcast i16* %127 to i8*
  %129 = getelementptr inbounds i8, i8* %128, i64 8
  %130 = getelementptr inbounds i8, i8* %129, i64 -2
  %131 = getelementptr inbounds [2 x %struct.iovec], [2 x %struct.iovec]* %10, i64 0, i64 1
  %132 = getelementptr inbounds %struct.iovec, %struct.iovec* %131, i32 0, i32 0
  store i8* %130, i8** %132, align 16
  %133 = load i32, i32* %5, align 4
  %134 = sub nsw i32 %133, 8
  %135 = add nsw i32 %134, 2
  %136 = getelementptr inbounds [2 x %struct.iovec], [2 x %struct.iovec]* %10, i64 0, i64 1
  %137 = getelementptr inbounds %struct.iovec, %struct.iovec* %136, i32 0, i32 1
  store i32 %135, i32* %137, align 8
  %138 = load %struct.params*, %struct.params** %2, align 8
  %139 = getelementptr inbounds %struct.params, %struct.params* %138, i32 0, i32 3
  %140 = load i32, i32* %139, align 4
  %141 = getelementptr inbounds [2 x %struct.iovec], [2 x %struct.iovec]* %10, i64 0, i64 0
  %142 = call i32 @writev(i32 %140, %struct.iovec* %141, i32 2)
  store i32 %142, i32* %6, align 4
  %143 = load i32, i32* %6, align 4
  %144 = icmp eq i32 %143, -1
  br i1 %144, label %145, label %147

145:                                              ; preds = %121
  %146 = call i32 @err(i32 1, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  br label %147

147:                                              ; preds = %145, %121
  %148 = load i32, i32* %6, align 4
  %149 = load i32, i32* %5, align 4
  %150 = sub nsw i32 %149, 8
  %151 = add nsw i32 14, %150
  %152 = icmp ne i32 %148, %151
  br i1 %152, label %153, label %157

153:                                              ; preds = %147
  %154 = load i32, i32* %6, align 4
  %155 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i32 %154)
  %156 = call i32 @exit(i32 1) #3
  unreachable

157:                                              ; preds = %147
  %158 = load %struct.queue*, %struct.queue** %7, align 8
  %159 = getelementptr inbounds %struct.queue, %struct.queue* %158, i32 0, i32 2
  store i64 0, i64* %159, align 8
  %160 = load %struct.queue*, %struct.queue** %7, align 8
  %161 = getelementptr inbounds %struct.queue, %struct.queue* %160, i32 0, i32 3
  %162 = load %struct.queue*, %struct.queue** %161, align 8
  %163 = icmp ne %struct.queue* %162, null
  br i1 %163, label %164, label %189

164:                                              ; preds = %157
  %165 = load %struct.queue*, %struct.queue** %7, align 8
  %166 = getelementptr inbounds %struct.queue, %struct.queue* %165, i32 0, i32 3
  %167 = load %struct.queue*, %struct.queue** %166, align 8
  %168 = load %struct.params*, %struct.params** %2, align 8
  %169 = getelementptr inbounds %struct.params, %struct.params* %168, i32 0, i32 1
  store %struct.queue* %167, %struct.queue** %169, align 8
  br label %170

170:                                              ; preds = %184, %164
  %171 = load %struct.queue*, %struct.queue** %8, align 8
  %172 = icmp ne %struct.queue* %171, null
  br i1 %172, label %173, label %188

173:                                              ; preds = %170
  %174 = load %struct.queue*, %struct.queue** %8, align 8
  %175 = getelementptr inbounds %struct.queue, %struct.queue* %174, i32 0, i32 3
  %176 = load %struct.queue*, %struct.queue** %175, align 8
  %177 = icmp ne %struct.queue* %176, null
  br i1 %177, label %184, label %178

178:                                              ; preds = %173
  %179 = load %struct.queue*, %struct.queue** %7, align 8
  %180 = load %struct.queue*, %struct.queue** %8, align 8
  %181 = getelementptr inbounds %struct.queue, %struct.queue* %180, i32 0, i32 3
  store %struct.queue* %179, %struct.queue** %181, align 8
  %182 = load %struct.queue*, %struct.queue** %7, align 8
  %183 = getelementptr inbounds %struct.queue, %struct.queue* %182, i32 0, i32 3
  store %struct.queue* null, %struct.queue** %183, align 8
  br label %188

184:                                              ; preds = %173
  %185 = load %struct.queue*, %struct.queue** %8, align 8
  %186 = getelementptr inbounds %struct.queue, %struct.queue* %185, i32 0, i32 3
  %187 = load %struct.queue*, %struct.queue** %186, align 8
  store %struct.queue* %187, %struct.queue** %8, align 8
  br label %170

188:                                              ; preds = %178, %170
  br label %189

189:                                              ; preds = %188, %157
  %190 = load i32, i32* @S_START, align 4
  %191 = load %struct.params*, %struct.params** %2, align 8
  %192 = getelementptr inbounds %struct.params, %struct.params* %191, i32 0, i32 2
  store i32 %190, i32* %192, align 8
  %193 = load %struct.params*, %struct.params** %2, align 8
  %194 = getelementptr inbounds %struct.params, %struct.params* %193, i32 0, i32 1
  %195 = load %struct.queue*, %struct.queue** %194, align 8
  %196 = getelementptr inbounds %struct.queue, %struct.queue* %195, i32 0, i32 2
  %197 = load i64, i64* %196, align 8
  %198 = icmp ne i64 %197, 0
  br i1 %198, label %199, label %202

199:                                              ; preds = %189
  %200 = load %struct.params*, %struct.params** %2, align 8
  %201 = call i32 @send_queue(%struct.params* %200)
  br label %202

202:                                              ; preds = %45, %51, %57, %64, %78, %199, %189
  ret void
}

declare dso_local i32 @ntohs(i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @buddy_get(%struct.params*, i32) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @memcpy(i8*, i32, i32) #1

declare dso_local i32 @writev(i32, %struct.iovec*, i32) #1

declare dso_local i32 @err(i32, i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @send_queue(%struct.params*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
