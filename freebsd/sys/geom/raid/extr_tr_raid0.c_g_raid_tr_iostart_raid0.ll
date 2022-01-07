; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/raid/extr_tr_raid0.c_g_raid_tr_iostart_raid0.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/raid/extr_tr_raid0.c_g_raid_tr_iostart_raid0.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.g_raid_tr_object = type { %struct.g_raid_volume* }
%struct.g_raid_volume = type { i64, i64, i64, %struct.g_raid_subdisk* }
%struct.g_raid_subdisk = type { i32 }
%struct.bio = type { i64, i32, i8*, i64, i64, i64, i32, i32, i64, %struct.g_raid_subdisk* }
%struct.bio_queue_head = type { i32 }

@G_RAID_VOLUME_S_OPTIMAL = common dso_local global i64 0, align 8
@G_RAID_VOLUME_S_SUBOPTIMAL = common dso_local global i64 0, align 8
@EIO = common dso_local global i64 0, align 8
@BIO_FLUSH = common dso_local global i64 0, align 8
@BIO_UNMAPPED = common dso_local global i32 0, align 4
@BIO_DELETE = common dso_local global i64 0, align 8
@PAGE_SIZE = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.g_raid_tr_object*, %struct.bio*)* @g_raid_tr_iostart_raid0 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @g_raid_tr_iostart_raid0(%struct.g_raid_tr_object* %0, %struct.bio* %1) #0 {
  %3 = alloca %struct.g_raid_tr_object*, align 8
  %4 = alloca %struct.bio*, align 8
  %5 = alloca %struct.g_raid_volume*, align 8
  %6 = alloca %struct.g_raid_subdisk*, align 8
  %7 = alloca %struct.bio_queue_head, align 4
  %8 = alloca %struct.bio*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  store %struct.g_raid_tr_object* %0, %struct.g_raid_tr_object** %3, align 8
  store %struct.bio* %1, %struct.bio** %4, align 8
  %17 = load %struct.g_raid_tr_object*, %struct.g_raid_tr_object** %3, align 8
  %18 = getelementptr inbounds %struct.g_raid_tr_object, %struct.g_raid_tr_object* %17, i32 0, i32 0
  %19 = load %struct.g_raid_volume*, %struct.g_raid_volume** %18, align 8
  store %struct.g_raid_volume* %19, %struct.g_raid_volume** %5, align 8
  %20 = load %struct.g_raid_volume*, %struct.g_raid_volume** %5, align 8
  %21 = getelementptr inbounds %struct.g_raid_volume, %struct.g_raid_volume* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @G_RAID_VOLUME_S_OPTIMAL, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %25, label %35

25:                                               ; preds = %2
  %26 = load %struct.g_raid_volume*, %struct.g_raid_volume** %5, align 8
  %27 = getelementptr inbounds %struct.g_raid_volume, %struct.g_raid_volume* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @G_RAID_VOLUME_S_SUBOPTIMAL, align 8
  %30 = icmp ne i64 %28, %29
  br i1 %30, label %31, label %35

31:                                               ; preds = %25
  %32 = load %struct.bio*, %struct.bio** %4, align 8
  %33 = load i64, i64* @EIO, align 8
  %34 = call i32 @g_raid_iodone(%struct.bio* %32, i64 %33)
  br label %233

35:                                               ; preds = %25, %2
  %36 = load %struct.bio*, %struct.bio** %4, align 8
  %37 = getelementptr inbounds %struct.bio, %struct.bio* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @BIO_FLUSH, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %45

41:                                               ; preds = %35
  %42 = load %struct.g_raid_tr_object*, %struct.g_raid_tr_object** %3, align 8
  %43 = load %struct.bio*, %struct.bio** %4, align 8
  %44 = call i32 @g_raid_tr_flush_common(%struct.g_raid_tr_object* %42, %struct.bio* %43)
  br label %233

45:                                               ; preds = %35
  %46 = load %struct.bio*, %struct.bio** %4, align 8
  %47 = getelementptr inbounds %struct.bio, %struct.bio* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* @BIO_UNMAPPED, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %45
  store i8* null, i8** %9, align 8
  br label %57

53:                                               ; preds = %45
  %54 = load %struct.bio*, %struct.bio** %4, align 8
  %55 = getelementptr inbounds %struct.bio, %struct.bio* %54, i32 0, i32 2
  %56 = load i8*, i8** %55, align 8
  store i8* %56, i8** %9, align 8
  br label %57

57:                                               ; preds = %53, %52
  %58 = load %struct.g_raid_volume*, %struct.g_raid_volume** %5, align 8
  %59 = getelementptr inbounds %struct.g_raid_volume, %struct.g_raid_volume* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  store i64 %60, i64* %16, align 8
  %61 = load %struct.bio*, %struct.bio** %4, align 8
  %62 = getelementptr inbounds %struct.bio, %struct.bio* %61, i32 0, i32 3
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* %16, align 8
  %65 = sdiv i64 %63, %64
  store i64 %65, i64* %13, align 8
  %66 = load %struct.bio*, %struct.bio** %4, align 8
  %67 = getelementptr inbounds %struct.bio, %struct.bio* %66, i32 0, i32 3
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* %16, align 8
  %70 = srem i64 %68, %69
  store i64 %70, i64* %11, align 8
  %71 = load i64, i64* %13, align 8
  %72 = load %struct.g_raid_volume*, %struct.g_raid_volume** %5, align 8
  %73 = getelementptr inbounds %struct.g_raid_volume, %struct.g_raid_volume* %72, i32 0, i32 2
  %74 = load i64, i64* %73, align 8
  %75 = srem i64 %71, %74
  store i64 %75, i64* %15, align 8
  %76 = load i64, i64* %13, align 8
  %77 = load %struct.g_raid_volume*, %struct.g_raid_volume** %5, align 8
  %78 = getelementptr inbounds %struct.g_raid_volume, %struct.g_raid_volume* %77, i32 0, i32 2
  %79 = load i64, i64* %78, align 8
  %80 = sdiv i64 %76, %79
  %81 = load i64, i64* %16, align 8
  %82 = mul nsw i64 %80, %81
  store i64 %82, i64* %10, align 8
  %83 = load %struct.bio*, %struct.bio** %4, align 8
  %84 = getelementptr inbounds %struct.bio, %struct.bio* %83, i32 0, i32 4
  %85 = load i64, i64* %84, align 8
  store i64 %85, i64* %14, align 8
  %86 = call i32 @bioq_init(%struct.bio_queue_head* %7)
  br label %87

87:                                               ; preds = %194, %57
  %88 = load i64, i64* %16, align 8
  %89 = load i64, i64* %11, align 8
  %90 = sub nsw i64 %88, %89
  %91 = load i64, i64* %14, align 8
  %92 = call i64 @MIN(i64 %90, i64 %91)
  store i64 %92, i64* %12, align 8
  %93 = load %struct.bio*, %struct.bio** %4, align 8
  %94 = call %struct.bio* @g_clone_bio(%struct.bio* %93)
  store %struct.bio* %94, %struct.bio** %8, align 8
  %95 = load %struct.bio*, %struct.bio** %8, align 8
  %96 = icmp eq %struct.bio* %95, null
  br i1 %96, label %97, label %98

97:                                               ; preds = %87
  br label %211

98:                                               ; preds = %87
  %99 = load i64, i64* %10, align 8
  %100 = load i64, i64* %11, align 8
  %101 = add nsw i64 %99, %100
  %102 = load %struct.bio*, %struct.bio** %8, align 8
  %103 = getelementptr inbounds %struct.bio, %struct.bio* %102, i32 0, i32 3
  store i64 %101, i64* %103, align 8
  %104 = load i64, i64* %12, align 8
  %105 = load %struct.bio*, %struct.bio** %8, align 8
  %106 = getelementptr inbounds %struct.bio, %struct.bio* %105, i32 0, i32 4
  store i64 %104, i64* %106, align 8
  %107 = load %struct.bio*, %struct.bio** %4, align 8
  %108 = getelementptr inbounds %struct.bio, %struct.bio* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 8
  %110 = load i32, i32* @BIO_UNMAPPED, align 4
  %111 = and i32 %109, %110
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %156

113:                                              ; preds = %98
  %114 = load %struct.bio*, %struct.bio** %4, align 8
  %115 = getelementptr inbounds %struct.bio, %struct.bio* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = load i64, i64* @BIO_DELETE, align 8
  %118 = icmp ne i64 %116, %117
  br i1 %118, label %119, label %156

119:                                              ; preds = %113
  %120 = load i8*, i8** %9, align 8
  %121 = ptrtoint i8* %120 to i64
  %122 = load %struct.bio*, %struct.bio** %8, align 8
  %123 = getelementptr inbounds %struct.bio, %struct.bio* %122, i32 0, i32 5
  %124 = load i64, i64* %123, align 8
  %125 = add i64 %124, %121
  store i64 %125, i64* %123, align 8
  %126 = load %struct.bio*, %struct.bio** %8, align 8
  %127 = getelementptr inbounds %struct.bio, %struct.bio* %126, i32 0, i32 5
  %128 = load i64, i64* %127, align 8
  %129 = load i32, i32* @PAGE_SIZE, align 4
  %130 = sext i32 %129 to i64
  %131 = udiv i64 %128, %130
  %132 = load %struct.bio*, %struct.bio** %8, align 8
  %133 = getelementptr inbounds %struct.bio, %struct.bio* %132, i32 0, i32 6
  %134 = load i32, i32* %133, align 8
  %135 = sext i32 %134 to i64
  %136 = add i64 %135, %131
  %137 = trunc i64 %136 to i32
  store i32 %137, i32* %133, align 8
  %138 = load i32, i32* @PAGE_SIZE, align 4
  %139 = sext i32 %138 to i64
  %140 = load %struct.bio*, %struct.bio** %8, align 8
  %141 = getelementptr inbounds %struct.bio, %struct.bio* %140, i32 0, i32 5
  %142 = load i64, i64* %141, align 8
  %143 = urem i64 %142, %139
  store i64 %143, i64* %141, align 8
  %144 = load %struct.bio*, %struct.bio** %8, align 8
  %145 = getelementptr inbounds %struct.bio, %struct.bio* %144, i32 0, i32 5
  %146 = load i64, i64* %145, align 8
  %147 = load %struct.bio*, %struct.bio** %8, align 8
  %148 = getelementptr inbounds %struct.bio, %struct.bio* %147, i32 0, i32 4
  %149 = load i64, i64* %148, align 8
  %150 = add i64 %146, %149
  %151 = call i32 @round_page(i64 %150)
  %152 = load i32, i32* @PAGE_SIZE, align 4
  %153 = sdiv i32 %151, %152
  %154 = load %struct.bio*, %struct.bio** %8, align 8
  %155 = getelementptr inbounds %struct.bio, %struct.bio* %154, i32 0, i32 7
  store i32 %153, i32* %155, align 4
  br label %160

156:                                              ; preds = %113, %98
  %157 = load i8*, i8** %9, align 8
  %158 = load %struct.bio*, %struct.bio** %8, align 8
  %159 = getelementptr inbounds %struct.bio, %struct.bio* %158, i32 0, i32 2
  store i8* %157, i8** %159, align 8
  br label %160

160:                                              ; preds = %156, %119
  %161 = load %struct.g_raid_volume*, %struct.g_raid_volume** %5, align 8
  %162 = getelementptr inbounds %struct.g_raid_volume, %struct.g_raid_volume* %161, i32 0, i32 3
  %163 = load %struct.g_raid_subdisk*, %struct.g_raid_subdisk** %162, align 8
  %164 = load i64, i64* %15, align 8
  %165 = getelementptr inbounds %struct.g_raid_subdisk, %struct.g_raid_subdisk* %163, i64 %164
  %166 = load %struct.bio*, %struct.bio** %8, align 8
  %167 = getelementptr inbounds %struct.bio, %struct.bio* %166, i32 0, i32 9
  store %struct.g_raid_subdisk* %165, %struct.g_raid_subdisk** %167, align 8
  %168 = load %struct.bio*, %struct.bio** %8, align 8
  %169 = call i32 @bioq_insert_tail(%struct.bio_queue_head* %7, %struct.bio* %168)
  %170 = load i64, i64* %15, align 8
  %171 = add nsw i64 %170, 1
  store i64 %171, i64* %15, align 8
  %172 = load %struct.g_raid_volume*, %struct.g_raid_volume** %5, align 8
  %173 = getelementptr inbounds %struct.g_raid_volume, %struct.g_raid_volume* %172, i32 0, i32 2
  %174 = load i64, i64* %173, align 8
  %175 = icmp sge i64 %171, %174
  br i1 %175, label %176, label %180

176:                                              ; preds = %160
  store i64 0, i64* %15, align 8
  %177 = load i64, i64* %16, align 8
  %178 = load i64, i64* %10, align 8
  %179 = add nsw i64 %178, %177
  store i64 %179, i64* %10, align 8
  br label %180

180:                                              ; preds = %176, %160
  %181 = load i64, i64* %12, align 8
  %182 = load i64, i64* %14, align 8
  %183 = sub nsw i64 %182, %181
  store i64 %183, i64* %14, align 8
  %184 = load %struct.bio*, %struct.bio** %4, align 8
  %185 = getelementptr inbounds %struct.bio, %struct.bio* %184, i32 0, i32 0
  %186 = load i64, i64* %185, align 8
  %187 = load i64, i64* @BIO_DELETE, align 8
  %188 = icmp ne i64 %186, %187
  br i1 %188, label %189, label %193

189:                                              ; preds = %180
  %190 = load i64, i64* %12, align 8
  %191 = load i8*, i8** %9, align 8
  %192 = getelementptr inbounds i8, i8* %191, i64 %190
  store i8* %192, i8** %9, align 8
  br label %193

193:                                              ; preds = %189, %180
  store i64 0, i64* %11, align 8
  br label %194

194:                                              ; preds = %193
  %195 = load i64, i64* %14, align 8
  %196 = icmp sgt i64 %195, 0
  br i1 %196, label %87, label %197

197:                                              ; preds = %194
  br label %198

198:                                              ; preds = %201, %197
  %199 = call %struct.bio* @bioq_takefirst(%struct.bio_queue_head* %7)
  store %struct.bio* %199, %struct.bio** %8, align 8
  %200 = icmp ne %struct.bio* %199, null
  br i1 %200, label %201, label %210

201:                                              ; preds = %198
  %202 = load %struct.bio*, %struct.bio** %8, align 8
  %203 = getelementptr inbounds %struct.bio, %struct.bio* %202, i32 0, i32 9
  %204 = load %struct.g_raid_subdisk*, %struct.g_raid_subdisk** %203, align 8
  store %struct.g_raid_subdisk* %204, %struct.g_raid_subdisk** %6, align 8
  %205 = load %struct.bio*, %struct.bio** %8, align 8
  %206 = getelementptr inbounds %struct.bio, %struct.bio* %205, i32 0, i32 9
  store %struct.g_raid_subdisk* null, %struct.g_raid_subdisk** %206, align 8
  %207 = load %struct.g_raid_subdisk*, %struct.g_raid_subdisk** %6, align 8
  %208 = load %struct.bio*, %struct.bio** %8, align 8
  %209 = call i32 @g_raid_subdisk_iostart(%struct.g_raid_subdisk* %207, %struct.bio* %208)
  br label %198

210:                                              ; preds = %198
  br label %233

211:                                              ; preds = %97
  br label %212

212:                                              ; preds = %215, %211
  %213 = call %struct.bio* @bioq_takefirst(%struct.bio_queue_head* %7)
  store %struct.bio* %213, %struct.bio** %8, align 8
  %214 = icmp ne %struct.bio* %213, null
  br i1 %214, label %215, label %218

215:                                              ; preds = %212
  %216 = load %struct.bio*, %struct.bio** %8, align 8
  %217 = call i32 @g_destroy_bio(%struct.bio* %216)
  br label %212

218:                                              ; preds = %212
  %219 = load %struct.bio*, %struct.bio** %4, align 8
  %220 = getelementptr inbounds %struct.bio, %struct.bio* %219, i32 0, i32 8
  %221 = load i64, i64* %220, align 8
  %222 = icmp eq i64 %221, 0
  br i1 %222, label %223, label %227

223:                                              ; preds = %218
  %224 = load i64, i64* @ENOMEM, align 8
  %225 = load %struct.bio*, %struct.bio** %4, align 8
  %226 = getelementptr inbounds %struct.bio, %struct.bio* %225, i32 0, i32 8
  store i64 %224, i64* %226, align 8
  br label %227

227:                                              ; preds = %223, %218
  %228 = load %struct.bio*, %struct.bio** %4, align 8
  %229 = load %struct.bio*, %struct.bio** %4, align 8
  %230 = getelementptr inbounds %struct.bio, %struct.bio* %229, i32 0, i32 8
  %231 = load i64, i64* %230, align 8
  %232 = call i32 @g_raid_iodone(%struct.bio* %228, i64 %231)
  br label %233

233:                                              ; preds = %227, %210, %41, %31
  ret void
}

declare dso_local i32 @g_raid_iodone(%struct.bio*, i64) #1

declare dso_local i32 @g_raid_tr_flush_common(%struct.g_raid_tr_object*, %struct.bio*) #1

declare dso_local i32 @bioq_init(%struct.bio_queue_head*) #1

declare dso_local i64 @MIN(i64, i64) #1

declare dso_local %struct.bio* @g_clone_bio(%struct.bio*) #1

declare dso_local i32 @round_page(i64) #1

declare dso_local i32 @bioq_insert_tail(%struct.bio_queue_head*, %struct.bio*) #1

declare dso_local %struct.bio* @bioq_takefirst(%struct.bio_queue_head*) #1

declare dso_local i32 @g_raid_subdisk_iostart(%struct.g_raid_subdisk*, %struct.bio*) #1

declare dso_local i32 @g_destroy_bio(%struct.bio*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
