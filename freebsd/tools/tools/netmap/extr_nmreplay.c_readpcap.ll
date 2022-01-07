; ModuleID = '/home/carl/AnghaBench/freebsd/tools/tools/netmap/extr_nmreplay.c_readpcap.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/tools/netmap/extr_nmreplay.c_readpcap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nm_pcap_file = type { i64, i32, i64, i64, i64, i64, i32, i32, i64, i64, i32, i32, i32 }

@O_RDONLY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"cannot open file %s\00", align 1
@SEEK_END = common dso_local global i32 0, align 4
@SEEK_SET = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"filesize is %lu\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"file too short %s\00", align 1
@PROT_READ = common dso_local global i32 0, align 4
@MAP_SHARED = common dso_local global i32 0, align 4
@MAP_FAILED = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [20 x i8] c"cannot mmap file %s\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"magic is 0x%x\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"unknown magic 0x%x\00", align 1
@.str.6 = private unnamed_addr constant [16 x i8] c"swap %d res %d\0A\00", align 1
@NS_SCALE = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [35 x i8] c"end of pcap file after %d packets\0A\00", align 1
@.str.8 = private unnamed_addr constant [21 x i8] c"reordered packet %d\0A\00", align 1
@.str.9 = private unnamed_addr constant [55 x i8] c"tot_pkt %lu tot_bytes %lu tx_time %.6f s first_len %lu\00", align 1
@.str.10 = private unnamed_addr constant [22 x i8] c"first_pkt_time %.6f s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.nm_pcap_file* (i8*)* @readpcap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.nm_pcap_file* @readpcap(i8* %0) #0 {
  %2 = alloca %struct.nm_pcap_file*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.nm_pcap_file, align 8
  %5 = alloca %struct.nm_pcap_file*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store %struct.nm_pcap_file* %4, %struct.nm_pcap_file** %5, align 8
  store i32 0, i32* %9, align 4
  %14 = load %struct.nm_pcap_file*, %struct.nm_pcap_file** %5, align 8
  %15 = call i32 @bzero(%struct.nm_pcap_file* %14, i32 88)
  %16 = load i8*, i8** %3, align 8
  %17 = load i32, i32* @O_RDONLY, align 4
  %18 = call i64 @open(i8* %16, i32 %17)
  %19 = load %struct.nm_pcap_file*, %struct.nm_pcap_file** %5, align 8
  %20 = getelementptr inbounds %struct.nm_pcap_file, %struct.nm_pcap_file* %19, i32 0, i32 0
  store i64 %18, i64* %20, align 8
  %21 = load %struct.nm_pcap_file*, %struct.nm_pcap_file** %5, align 8
  %22 = getelementptr inbounds %struct.nm_pcap_file, %struct.nm_pcap_file* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp slt i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %1
  %26 = load i8*, i8** %3, align 8
  %27 = call i32 (i8*, ...) @EEE(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i8* %26)
  store %struct.nm_pcap_file* null, %struct.nm_pcap_file** %2, align 8
  br label %328

28:                                               ; preds = %1
  %29 = load %struct.nm_pcap_file*, %struct.nm_pcap_file** %5, align 8
  %30 = getelementptr inbounds %struct.nm_pcap_file, %struct.nm_pcap_file* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i32, i32* @SEEK_END, align 4
  %33 = call i32 @lseek(i64 %31, i32 0, i32 %32)
  %34 = load %struct.nm_pcap_file*, %struct.nm_pcap_file** %5, align 8
  %35 = getelementptr inbounds %struct.nm_pcap_file, %struct.nm_pcap_file* %34, i32 0, i32 1
  store i32 %33, i32* %35, align 8
  %36 = load %struct.nm_pcap_file*, %struct.nm_pcap_file** %5, align 8
  %37 = getelementptr inbounds %struct.nm_pcap_file, %struct.nm_pcap_file* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i32, i32* @SEEK_SET, align 4
  %40 = call i32 @lseek(i64 %38, i32 0, i32 %39)
  %41 = load %struct.nm_pcap_file*, %struct.nm_pcap_file** %5, align 8
  %42 = getelementptr inbounds %struct.nm_pcap_file, %struct.nm_pcap_file* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = call i32 (i8*, i32, ...) @ED(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 %43)
  %45 = load %struct.nm_pcap_file*, %struct.nm_pcap_file** %5, align 8
  %46 = getelementptr inbounds %struct.nm_pcap_file, %struct.nm_pcap_file* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = sext i32 %47 to i64
  %49 = icmp ult i64 %48, 4
  br i1 %49, label %50, label %57

50:                                               ; preds = %28
  %51 = load i8*, i8** %3, align 8
  %52 = call i32 (i8*, ...) @EEE(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i8* %51)
  %53 = load %struct.nm_pcap_file*, %struct.nm_pcap_file** %5, align 8
  %54 = getelementptr inbounds %struct.nm_pcap_file, %struct.nm_pcap_file* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = call i32 @close(i64 %55)
  store %struct.nm_pcap_file* null, %struct.nm_pcap_file** %2, align 8
  br label %328

57:                                               ; preds = %28
  %58 = load %struct.nm_pcap_file*, %struct.nm_pcap_file** %5, align 8
  %59 = getelementptr inbounds %struct.nm_pcap_file, %struct.nm_pcap_file* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  %61 = load i32, i32* @PROT_READ, align 4
  %62 = load i32, i32* @MAP_SHARED, align 4
  %63 = load %struct.nm_pcap_file*, %struct.nm_pcap_file** %5, align 8
  %64 = getelementptr inbounds %struct.nm_pcap_file, %struct.nm_pcap_file* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = call i64 @mmap(i32* null, i32 %60, i32 %61, i32 %62, i64 %65, i32 0)
  %67 = load %struct.nm_pcap_file*, %struct.nm_pcap_file** %5, align 8
  %68 = getelementptr inbounds %struct.nm_pcap_file, %struct.nm_pcap_file* %67, i32 0, i32 2
  store i64 %66, i64* %68, align 8
  %69 = load %struct.nm_pcap_file*, %struct.nm_pcap_file** %5, align 8
  %70 = getelementptr inbounds %struct.nm_pcap_file, %struct.nm_pcap_file* %69, i32 0, i32 2
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* @MAP_FAILED, align 8
  %73 = icmp eq i64 %71, %72
  br i1 %73, label %74, label %81

74:                                               ; preds = %57
  %75 = load i8*, i8** %3, align 8
  %76 = call i32 (i8*, ...) @EEE(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i8* %75)
  %77 = load %struct.nm_pcap_file*, %struct.nm_pcap_file** %5, align 8
  %78 = getelementptr inbounds %struct.nm_pcap_file, %struct.nm_pcap_file* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = call i32 @close(i64 %79)
  store %struct.nm_pcap_file* null, %struct.nm_pcap_file** %2, align 8
  br label %328

81:                                               ; preds = %57
  %82 = load %struct.nm_pcap_file*, %struct.nm_pcap_file** %5, align 8
  %83 = getelementptr inbounds %struct.nm_pcap_file, %struct.nm_pcap_file* %82, i32 0, i32 2
  %84 = load i64, i64* %83, align 8
  %85 = load %struct.nm_pcap_file*, %struct.nm_pcap_file** %5, align 8
  %86 = getelementptr inbounds %struct.nm_pcap_file, %struct.nm_pcap_file* %85, i32 0, i32 3
  store i64 %84, i64* %86, align 8
  %87 = load %struct.nm_pcap_file*, %struct.nm_pcap_file** %5, align 8
  %88 = getelementptr inbounds %struct.nm_pcap_file, %struct.nm_pcap_file* %87, i32 0, i32 2
  %89 = load i64, i64* %88, align 8
  %90 = load %struct.nm_pcap_file*, %struct.nm_pcap_file** %5, align 8
  %91 = getelementptr inbounds %struct.nm_pcap_file, %struct.nm_pcap_file* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 8
  %93 = sext i32 %92 to i64
  %94 = add nsw i64 %89, %93
  %95 = load %struct.nm_pcap_file*, %struct.nm_pcap_file** %5, align 8
  %96 = getelementptr inbounds %struct.nm_pcap_file, %struct.nm_pcap_file* %95, i32 0, i32 4
  store i64 %94, i64* %96, align 8
  %97 = load %struct.nm_pcap_file*, %struct.nm_pcap_file** %5, align 8
  %98 = getelementptr inbounds %struct.nm_pcap_file, %struct.nm_pcap_file* %97, i32 0, i32 5
  store i64 0, i64* %98, align 8
  %99 = load %struct.nm_pcap_file*, %struct.nm_pcap_file** %5, align 8
  %100 = getelementptr inbounds %struct.nm_pcap_file, %struct.nm_pcap_file* %99, i32 0, i32 6
  store i32 0, i32* %100, align 8
  %101 = load %struct.nm_pcap_file*, %struct.nm_pcap_file** %5, align 8
  %102 = call i32 @read_next_info(%struct.nm_pcap_file* %101, i32 4)
  store i32 %102, i32* %8, align 4
  %103 = load i32, i32* %8, align 4
  %104 = call i32 (i8*, i32, ...) @ED(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0), i32 %103)
  %105 = load i32, i32* %8, align 4
  switch i32 %105, label %126 [
    i32 -1582119980, label %106
    i32 -725372255, label %111
    i32 -1582154675, label %116
    i32 1295823521, label %121
  ]

106:                                              ; preds = %81
  %107 = load %struct.nm_pcap_file*, %struct.nm_pcap_file** %5, align 8
  %108 = getelementptr inbounds %struct.nm_pcap_file, %struct.nm_pcap_file* %107, i32 0, i32 6
  store i32 0, i32* %108, align 8
  %109 = load %struct.nm_pcap_file*, %struct.nm_pcap_file** %5, align 8
  %110 = getelementptr inbounds %struct.nm_pcap_file, %struct.nm_pcap_file* %109, i32 0, i32 7
  store i32 1000, i32* %110, align 4
  br label %129

111:                                              ; preds = %81
  %112 = load %struct.nm_pcap_file*, %struct.nm_pcap_file** %5, align 8
  %113 = getelementptr inbounds %struct.nm_pcap_file, %struct.nm_pcap_file* %112, i32 0, i32 6
  store i32 1, i32* %113, align 8
  %114 = load %struct.nm_pcap_file*, %struct.nm_pcap_file** %5, align 8
  %115 = getelementptr inbounds %struct.nm_pcap_file, %struct.nm_pcap_file* %114, i32 0, i32 7
  store i32 1000, i32* %115, align 4
  br label %129

116:                                              ; preds = %81
  %117 = load %struct.nm_pcap_file*, %struct.nm_pcap_file** %5, align 8
  %118 = getelementptr inbounds %struct.nm_pcap_file, %struct.nm_pcap_file* %117, i32 0, i32 6
  store i32 0, i32* %118, align 8
  %119 = load %struct.nm_pcap_file*, %struct.nm_pcap_file** %5, align 8
  %120 = getelementptr inbounds %struct.nm_pcap_file, %struct.nm_pcap_file* %119, i32 0, i32 7
  store i32 1, i32* %120, align 4
  br label %129

121:                                              ; preds = %81
  %122 = load %struct.nm_pcap_file*, %struct.nm_pcap_file** %5, align 8
  %123 = getelementptr inbounds %struct.nm_pcap_file, %struct.nm_pcap_file* %122, i32 0, i32 6
  store i32 1, i32* %123, align 8
  %124 = load %struct.nm_pcap_file*, %struct.nm_pcap_file** %5, align 8
  %125 = getelementptr inbounds %struct.nm_pcap_file, %struct.nm_pcap_file* %124, i32 0, i32 7
  store i32 1, i32* %125, align 4
  br label %129

126:                                              ; preds = %81
  %127 = load i32, i32* %8, align 4
  %128 = call i32 (i8*, ...) @EEE(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0), i32 %127)
  store %struct.nm_pcap_file* null, %struct.nm_pcap_file** %2, align 8
  br label %328

129:                                              ; preds = %121, %116, %111, %106
  %130 = load %struct.nm_pcap_file*, %struct.nm_pcap_file** %5, align 8
  %131 = getelementptr inbounds %struct.nm_pcap_file, %struct.nm_pcap_file* %130, i32 0, i32 6
  %132 = load i32, i32* %131, align 8
  %133 = load %struct.nm_pcap_file*, %struct.nm_pcap_file** %5, align 8
  %134 = getelementptr inbounds %struct.nm_pcap_file, %struct.nm_pcap_file* %133, i32 0, i32 7
  %135 = load i32, i32* %134, align 4
  %136 = call i32 (i8*, i32, ...) @ED(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i64 0, i64 0), i32 %132, i32 %135)
  %137 = load %struct.nm_pcap_file*, %struct.nm_pcap_file** %5, align 8
  %138 = getelementptr inbounds %struct.nm_pcap_file, %struct.nm_pcap_file* %137, i32 0, i32 2
  %139 = load i64, i64* %138, align 8
  %140 = add i64 %139, 4
  %141 = load %struct.nm_pcap_file*, %struct.nm_pcap_file** %5, align 8
  %142 = getelementptr inbounds %struct.nm_pcap_file, %struct.nm_pcap_file* %141, i32 0, i32 3
  store i64 %140, i64* %142, align 8
  %143 = load %struct.nm_pcap_file*, %struct.nm_pcap_file** %5, align 8
  %144 = getelementptr inbounds %struct.nm_pcap_file, %struct.nm_pcap_file* %143, i32 0, i32 2
  %145 = load i64, i64* %144, align 8
  %146 = load %struct.nm_pcap_file*, %struct.nm_pcap_file** %5, align 8
  %147 = getelementptr inbounds %struct.nm_pcap_file, %struct.nm_pcap_file* %146, i32 0, i32 1
  %148 = load i32, i32* %147, align 8
  %149 = sext i32 %148 to i64
  %150 = add nsw i64 %145, %149
  %151 = load %struct.nm_pcap_file*, %struct.nm_pcap_file** %5, align 8
  %152 = getelementptr inbounds %struct.nm_pcap_file, %struct.nm_pcap_file* %151, i32 0, i32 4
  store i64 %150, i64* %152, align 8
  %153 = load %struct.nm_pcap_file*, %struct.nm_pcap_file** %5, align 8
  %154 = getelementptr inbounds %struct.nm_pcap_file, %struct.nm_pcap_file* %153, i32 0, i32 5
  store i64 0, i64* %154, align 8
  store i64 0, i64* %6, align 8
  br label %155

155:                                              ; preds = %227, %129
  %156 = load %struct.nm_pcap_file*, %struct.nm_pcap_file** %5, align 8
  %157 = getelementptr inbounds %struct.nm_pcap_file, %struct.nm_pcap_file* %156, i32 0, i32 3
  %158 = load i64, i64* %157, align 8
  %159 = load %struct.nm_pcap_file*, %struct.nm_pcap_file** %5, align 8
  %160 = getelementptr inbounds %struct.nm_pcap_file, %struct.nm_pcap_file* %159, i32 0, i32 4
  %161 = load i64, i64* %160, align 8
  %162 = icmp slt i64 %158, %161
  br i1 %162, label %163, label %168

163:                                              ; preds = %155
  %164 = load %struct.nm_pcap_file*, %struct.nm_pcap_file** %5, align 8
  %165 = getelementptr inbounds %struct.nm_pcap_file, %struct.nm_pcap_file* %164, i32 0, i32 5
  %166 = load i64, i64* %165, align 8
  %167 = icmp eq i64 %166, 0
  br label %168

168:                                              ; preds = %163, %155
  %169 = phi i1 [ false, %155 ], [ %167, %163 ]
  br i1 %169, label %170, label %252

170:                                              ; preds = %168
  %171 = load %struct.nm_pcap_file*, %struct.nm_pcap_file** %5, align 8
  %172 = getelementptr inbounds %struct.nm_pcap_file, %struct.nm_pcap_file* %171, i32 0, i32 3
  %173 = load i64, i64* %172, align 8
  %174 = load %struct.nm_pcap_file*, %struct.nm_pcap_file** %5, align 8
  %175 = getelementptr inbounds %struct.nm_pcap_file, %struct.nm_pcap_file* %174, i32 0, i32 2
  %176 = load i64, i64* %175, align 8
  %177 = sub nsw i64 %173, %176
  %178 = trunc i64 %177 to i32
  store i32 %178, i32* %10, align 4
  %179 = load %struct.nm_pcap_file*, %struct.nm_pcap_file** %5, align 8
  %180 = call i32 @read_next_info(%struct.nm_pcap_file* %179, i32 4)
  %181 = load i32, i32* @NS_SCALE, align 4
  %182 = mul nsw i32 %180, %181
  %183 = load %struct.nm_pcap_file*, %struct.nm_pcap_file** %5, align 8
  %184 = call i32 @read_next_info(%struct.nm_pcap_file* %183, i32 4)
  %185 = load %struct.nm_pcap_file*, %struct.nm_pcap_file** %5, align 8
  %186 = getelementptr inbounds %struct.nm_pcap_file, %struct.nm_pcap_file* %185, i32 0, i32 7
  %187 = load i32, i32* %186, align 4
  %188 = mul nsw i32 %184, %187
  %189 = add nsw i32 %182, %188
  %190 = sext i32 %189 to i64
  store i64 %190, i64* %11, align 8
  %191 = load %struct.nm_pcap_file*, %struct.nm_pcap_file** %5, align 8
  %192 = call i32 @read_next_info(%struct.nm_pcap_file* %191, i32 4)
  store i32 %192, i32* %12, align 4
  %193 = load %struct.nm_pcap_file*, %struct.nm_pcap_file** %5, align 8
  %194 = call i32 @read_next_info(%struct.nm_pcap_file* %193, i32 4)
  store i32 %194, i32* %13, align 4
  %195 = load %struct.nm_pcap_file*, %struct.nm_pcap_file** %5, align 8
  %196 = getelementptr inbounds %struct.nm_pcap_file, %struct.nm_pcap_file* %195, i32 0, i32 5
  %197 = load i64, i64* %196, align 8
  %198 = icmp ne i64 %197, 0
  br i1 %198, label %199, label %205

199:                                              ; preds = %170
  %200 = load %struct.nm_pcap_file*, %struct.nm_pcap_file** %5, align 8
  %201 = getelementptr inbounds %struct.nm_pcap_file, %struct.nm_pcap_file* %200, i32 0, i32 8
  %202 = load i64, i64* %201, align 8
  %203 = trunc i64 %202 to i32
  %204 = call i32 @WWW(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.7, i64 0, i64 0), i32 %203)
  br label %252

205:                                              ; preds = %170
  %206 = load i64, i64* %11, align 8
  %207 = load i64, i64* %6, align 8
  %208 = icmp slt i64 %206, %207
  br i1 %208, label %209, label %215

209:                                              ; preds = %205
  %210 = load %struct.nm_pcap_file*, %struct.nm_pcap_file** %5, align 8
  %211 = getelementptr inbounds %struct.nm_pcap_file, %struct.nm_pcap_file* %210, i32 0, i32 8
  %212 = load i64, i64* %211, align 8
  %213 = trunc i64 %212 to i32
  %214 = call i32 @WWW(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.8, i64 0, i64 0), i32 %213)
  br label %215

215:                                              ; preds = %209, %205
  %216 = load i64, i64* %11, align 8
  store i64 %216, i64* %6, align 8
  %217 = load i32, i32* %10, align 4
  %218 = load %struct.nm_pcap_file*, %struct.nm_pcap_file** %5, align 8
  %219 = getelementptr inbounds %struct.nm_pcap_file, %struct.nm_pcap_file* %218, i32 0, i32 8
  %220 = load i64, i64* %219, align 8
  %221 = icmp eq i64 %220, 0
  br i1 %221, label %222, label %227

222:                                              ; preds = %215
  %223 = load i64, i64* %11, align 8
  %224 = load %struct.nm_pcap_file*, %struct.nm_pcap_file** %5, align 8
  %225 = getelementptr inbounds %struct.nm_pcap_file, %struct.nm_pcap_file* %224, i32 0, i32 9
  store i64 %223, i64* %225, align 8
  %226 = load i32, i32* %13, align 4
  store i32 %226, i32* %9, align 4
  br label %227

227:                                              ; preds = %222, %215
  %228 = load %struct.nm_pcap_file*, %struct.nm_pcap_file** %5, align 8
  %229 = getelementptr inbounds %struct.nm_pcap_file, %struct.nm_pcap_file* %228, i32 0, i32 8
  %230 = load i64, i64* %229, align 8
  %231 = add nsw i64 %230, 1
  store i64 %231, i64* %229, align 8
  %232 = load i32, i32* %13, align 4
  %233 = load %struct.nm_pcap_file*, %struct.nm_pcap_file** %5, align 8
  %234 = getelementptr inbounds %struct.nm_pcap_file, %struct.nm_pcap_file* %233, i32 0, i32 10
  %235 = load i32, i32* %234, align 8
  %236 = add nsw i32 %235, %232
  store i32 %236, i32* %234, align 8
  %237 = load i32, i32* %13, align 4
  %238 = call i64 @pad(i32 %237)
  %239 = add i64 %238, 4
  %240 = load %struct.nm_pcap_file*, %struct.nm_pcap_file** %5, align 8
  %241 = getelementptr inbounds %struct.nm_pcap_file, %struct.nm_pcap_file* %240, i32 0, i32 12
  %242 = load i32, i32* %241, align 8
  %243 = sext i32 %242 to i64
  %244 = add i64 %243, %239
  %245 = trunc i64 %244 to i32
  store i32 %245, i32* %241, align 8
  %246 = load i32, i32* %12, align 4
  %247 = sext i32 %246 to i64
  %248 = load %struct.nm_pcap_file*, %struct.nm_pcap_file** %5, align 8
  %249 = getelementptr inbounds %struct.nm_pcap_file, %struct.nm_pcap_file* %248, i32 0, i32 3
  %250 = load i64, i64* %249, align 8
  %251 = add nsw i64 %250, %247
  store i64 %251, i64* %249, align 8
  br label %155

252:                                              ; preds = %199, %168
  %253 = load i64, i64* %6, align 8
  %254 = load %struct.nm_pcap_file*, %struct.nm_pcap_file** %5, align 8
  %255 = getelementptr inbounds %struct.nm_pcap_file, %struct.nm_pcap_file* %254, i32 0, i32 9
  %256 = load i64, i64* %255, align 8
  %257 = sub nsw i64 %253, %256
  %258 = trunc i64 %257 to i32
  %259 = load %struct.nm_pcap_file*, %struct.nm_pcap_file** %5, align 8
  %260 = getelementptr inbounds %struct.nm_pcap_file, %struct.nm_pcap_file* %259, i32 0, i32 11
  store i32 %258, i32* %260, align 4
  %261 = load %struct.nm_pcap_file*, %struct.nm_pcap_file** %5, align 8
  %262 = getelementptr inbounds %struct.nm_pcap_file, %struct.nm_pcap_file* %261, i32 0, i32 8
  %263 = load i64, i64* %262, align 8
  %264 = trunc i64 %263 to i32
  %265 = load %struct.nm_pcap_file*, %struct.nm_pcap_file** %5, align 8
  %266 = getelementptr inbounds %struct.nm_pcap_file, %struct.nm_pcap_file* %265, i32 0, i32 10
  %267 = load i32, i32* %266, align 8
  %268 = load %struct.nm_pcap_file*, %struct.nm_pcap_file** %5, align 8
  %269 = getelementptr inbounds %struct.nm_pcap_file, %struct.nm_pcap_file* %268, i32 0, i32 11
  %270 = load i32, i32* %269, align 4
  %271 = sitofp i32 %270 to double
  %272 = fmul double 1.000000e-09, %271
  %273 = load i32, i32* %9, align 4
  %274 = call i32 (i8*, i32, ...) @ED(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.9, i64 0, i64 0), i32 %264, i32 %267, double %272, i32 %273)
  %275 = load %struct.nm_pcap_file*, %struct.nm_pcap_file** %5, align 8
  %276 = getelementptr inbounds %struct.nm_pcap_file, %struct.nm_pcap_file* %275, i32 0, i32 10
  %277 = load i32, i32* %276, align 8
  %278 = load i32, i32* %9, align 4
  %279 = icmp eq i32 %277, %278
  br i1 %279, label %280, label %284

280:                                              ; preds = %252
  %281 = load i32, i32* %9, align 4
  %282 = mul nsw i32 %281, 8
  %283 = sext i32 %282 to i64
  store i64 %283, i64* %7, align 8
  br label %297

284:                                              ; preds = %252
  %285 = load %struct.nm_pcap_file*, %struct.nm_pcap_file** %5, align 8
  %286 = getelementptr inbounds %struct.nm_pcap_file, %struct.nm_pcap_file* %285, i32 0, i32 11
  %287 = load i32, i32* %286, align 4
  %288 = load i32, i32* %9, align 4
  %289 = mul nsw i32 %287, %288
  %290 = load %struct.nm_pcap_file*, %struct.nm_pcap_file** %5, align 8
  %291 = getelementptr inbounds %struct.nm_pcap_file, %struct.nm_pcap_file* %290, i32 0, i32 10
  %292 = load i32, i32* %291, align 8
  %293 = load i32, i32* %9, align 4
  %294 = sub nsw i32 %292, %293
  %295 = sdiv i32 %289, %294
  %296 = sext i32 %295 to i64
  store i64 %296, i64* %7, align 8
  br label %297

297:                                              ; preds = %284, %280
  %298 = load i64, i64* %7, align 8
  %299 = sitofp i64 %298 to double
  %300 = fmul double 1.000000e-09, %299
  %301 = fptosi double %300 to i32
  %302 = call i32 (i8*, i32, ...) @ED(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.10, i64 0, i64 0), i32 %301)
  %303 = load i64, i64* %7, align 8
  %304 = load %struct.nm_pcap_file*, %struct.nm_pcap_file** %5, align 8
  %305 = getelementptr inbounds %struct.nm_pcap_file, %struct.nm_pcap_file* %304, i32 0, i32 11
  %306 = load i32, i32* %305, align 4
  %307 = sext i32 %306 to i64
  %308 = add nsw i64 %307, %303
  %309 = trunc i64 %308 to i32
  store i32 %309, i32* %305, align 4
  %310 = load i64, i64* %7, align 8
  %311 = load %struct.nm_pcap_file*, %struct.nm_pcap_file** %5, align 8
  %312 = getelementptr inbounds %struct.nm_pcap_file, %struct.nm_pcap_file* %311, i32 0, i32 9
  %313 = load i64, i64* %312, align 8
  %314 = sub nsw i64 %313, %310
  store i64 %314, i64* %312, align 8
  %315 = call %struct.nm_pcap_file* @calloc(i32 1, i32 88)
  store %struct.nm_pcap_file* %315, %struct.nm_pcap_file** %5, align 8
  %316 = load %struct.nm_pcap_file*, %struct.nm_pcap_file** %5, align 8
  %317 = bitcast %struct.nm_pcap_file* %316 to i8*
  %318 = bitcast %struct.nm_pcap_file* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %317, i8* align 8 %318, i64 88, i1 false)
  %319 = load %struct.nm_pcap_file*, %struct.nm_pcap_file** %5, align 8
  %320 = getelementptr inbounds %struct.nm_pcap_file, %struct.nm_pcap_file* %319, i32 0, i32 2
  %321 = load i64, i64* %320, align 8
  %322 = add i64 %321, 4
  %323 = load %struct.nm_pcap_file*, %struct.nm_pcap_file** %5, align 8
  %324 = getelementptr inbounds %struct.nm_pcap_file, %struct.nm_pcap_file* %323, i32 0, i32 3
  store i64 %322, i64* %324, align 8
  %325 = load %struct.nm_pcap_file*, %struct.nm_pcap_file** %5, align 8
  %326 = getelementptr inbounds %struct.nm_pcap_file, %struct.nm_pcap_file* %325, i32 0, i32 5
  store i64 0, i64* %326, align 8
  %327 = load %struct.nm_pcap_file*, %struct.nm_pcap_file** %5, align 8
  store %struct.nm_pcap_file* %327, %struct.nm_pcap_file** %2, align 8
  br label %328

328:                                              ; preds = %297, %126, %74, %50, %25
  %329 = load %struct.nm_pcap_file*, %struct.nm_pcap_file** %2, align 8
  ret %struct.nm_pcap_file* %329
}

declare dso_local i32 @bzero(%struct.nm_pcap_file*, i32) #1

declare dso_local i64 @open(i8*, i32) #1

declare dso_local i32 @EEE(i8*, ...) #1

declare dso_local i32 @lseek(i64, i32, i32) #1

declare dso_local i32 @ED(i8*, i32, ...) #1

declare dso_local i32 @close(i64) #1

declare dso_local i64 @mmap(i32*, i32, i32, i32, i64, i32) #1

declare dso_local i32 @read_next_info(%struct.nm_pcap_file*, i32) #1

declare dso_local i32 @WWW(i8*, i32) #1

declare dso_local i64 @pad(i32) #1

declare dso_local %struct.nm_pcap_file* @calloc(i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
