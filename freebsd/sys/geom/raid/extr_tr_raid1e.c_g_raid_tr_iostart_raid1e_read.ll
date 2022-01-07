; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/raid/extr_tr_raid1e.c_g_raid_tr_iostart_raid1e_read.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/raid/extr_tr_raid1e.c_g_raid_tr_iostart_raid1e_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.g_raid_tr_object = type { %struct.g_raid_volume* }
%struct.g_raid_volume = type { i64, i64, %struct.g_raid_subdisk*, i32 }
%struct.g_raid_subdisk = type { i32 }
%struct.bio = type { i32, i8*, i64, i64, i32, i32, i64, %struct.g_raid_subdisk*, i64 }
%struct.bio_queue_head = type { i32 }

@BIO_UNMAPPED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"No readable disk in volume %s!\00", align 1
@PAGE_SIZE = common dso_local global i32 0, align 4
@N = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.g_raid_tr_object*, %struct.bio*)* @g_raid_tr_iostart_raid1e_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @g_raid_tr_iostart_raid1e_read(%struct.g_raid_tr_object* %0, %struct.bio* %1) #0 {
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
  %16 = alloca i32, align 4
  store %struct.g_raid_tr_object* %0, %struct.g_raid_tr_object** %3, align 8
  store %struct.bio* %1, %struct.bio** %4, align 8
  %17 = load %struct.g_raid_tr_object*, %struct.g_raid_tr_object** %3, align 8
  %18 = getelementptr inbounds %struct.g_raid_tr_object, %struct.g_raid_tr_object* %17, i32 0, i32 0
  %19 = load %struct.g_raid_volume*, %struct.g_raid_volume** %18, align 8
  store %struct.g_raid_volume* %19, %struct.g_raid_volume** %5, align 8
  %20 = load %struct.bio*, %struct.bio** %4, align 8
  %21 = getelementptr inbounds %struct.bio, %struct.bio* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @BIO_UNMAPPED, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %2
  store i8* null, i8** %9, align 8
  br label %31

27:                                               ; preds = %2
  %28 = load %struct.bio*, %struct.bio** %4, align 8
  %29 = getelementptr inbounds %struct.bio, %struct.bio* %28, i32 0, i32 1
  %30 = load i8*, i8** %29, align 8
  store i8* %30, i8** %9, align 8
  br label %31

31:                                               ; preds = %27, %26
  %32 = load %struct.g_raid_volume*, %struct.g_raid_volume** %5, align 8
  %33 = getelementptr inbounds %struct.g_raid_volume, %struct.g_raid_volume* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  store i64 %34, i64* %15, align 8
  %35 = load %struct.g_raid_volume*, %struct.g_raid_volume** %5, align 8
  %36 = load %struct.bio*, %struct.bio** %4, align 8
  %37 = getelementptr inbounds %struct.bio, %struct.bio* %36, i32 0, i32 8
  %38 = load i64, i64* %37, align 8
  %39 = call i32 @V2P(%struct.g_raid_volume* %35, i64 %38, i64* %14, i64* %10, i64* %11)
  %40 = load %struct.bio*, %struct.bio** %4, align 8
  %41 = getelementptr inbounds %struct.bio, %struct.bio* %40, i32 0, i32 2
  %42 = load i64, i64* %41, align 8
  store i64 %42, i64* %13, align 8
  %43 = call i32 @bioq_init(%struct.bio_queue_head* %7)
  br label %44

44:                                               ; preds = %177, %31
  %45 = load i64, i64* %13, align 8
  %46 = icmp sgt i64 %45, 0
  br i1 %46, label %47, label %184

47:                                               ; preds = %44
  %48 = load i64, i64* %15, align 8
  %49 = load i64, i64* %11, align 8
  %50 = sub nsw i64 %48, %49
  %51 = load i64, i64* %13, align 8
  %52 = call i64 @MIN(i64 %50, i64 %51)
  store i64 %52, i64* %12, align 8
  %53 = load %struct.g_raid_volume*, %struct.g_raid_volume** %5, align 8
  %54 = load i64, i64* %14, align 8
  %55 = load i64, i64* %10, align 8
  %56 = load i64, i64* %12, align 8
  %57 = call i32 @g_raid_tr_raid1e_select_read_disk(%struct.g_raid_volume* %53, i64 %54, i64 %55, i64 %56, i32 0)
  store i32 %57, i32* %16, align 4
  %58 = load i32, i32* %16, align 4
  %59 = icmp sge i32 %58, 0
  %60 = zext i1 %59 to i32
  %61 = load %struct.g_raid_volume*, %struct.g_raid_volume** %5, align 8
  %62 = getelementptr inbounds %struct.g_raid_volume, %struct.g_raid_volume* %61, i32 0, i32 3
  %63 = load i32, i32* %62, align 8
  %64 = sext i32 %63 to i64
  %65 = inttoptr i64 %64 to i8*
  %66 = call i32 @KASSERT(i32 %60, i8* %65)
  %67 = load i32, i32* %16, align 4
  %68 = sext i32 %67 to i64
  %69 = load i64, i64* %14, align 8
  %70 = add nsw i64 %69, %68
  store i64 %70, i64* %14, align 8
  %71 = load i64, i64* %14, align 8
  %72 = load %struct.g_raid_volume*, %struct.g_raid_volume** %5, align 8
  %73 = getelementptr inbounds %struct.g_raid_volume, %struct.g_raid_volume* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = icmp sge i64 %71, %74
  br i1 %75, label %76, label %85

76:                                               ; preds = %47
  %77 = load %struct.g_raid_volume*, %struct.g_raid_volume** %5, align 8
  %78 = getelementptr inbounds %struct.g_raid_volume, %struct.g_raid_volume* %77, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* %14, align 8
  %81 = sub nsw i64 %80, %79
  store i64 %81, i64* %14, align 8
  %82 = load i64, i64* %15, align 8
  %83 = load i64, i64* %10, align 8
  %84 = add nsw i64 %83, %82
  store i64 %84, i64* %10, align 8
  br label %85

85:                                               ; preds = %76, %47
  %86 = load %struct.bio*, %struct.bio** %4, align 8
  %87 = call %struct.bio* @g_clone_bio(%struct.bio* %86)
  store %struct.bio* %87, %struct.bio** %8, align 8
  %88 = load %struct.bio*, %struct.bio** %8, align 8
  %89 = icmp eq %struct.bio* %88, null
  br i1 %89, label %90, label %91

90:                                               ; preds = %85
  br label %198

91:                                               ; preds = %85
  %92 = load i64, i64* %10, align 8
  %93 = load i64, i64* %11, align 8
  %94 = add nsw i64 %92, %93
  %95 = load %struct.bio*, %struct.bio** %8, align 8
  %96 = getelementptr inbounds %struct.bio, %struct.bio* %95, i32 0, i32 8
  store i64 %94, i64* %96, align 8
  %97 = load i64, i64* %12, align 8
  %98 = load %struct.bio*, %struct.bio** %8, align 8
  %99 = getelementptr inbounds %struct.bio, %struct.bio* %98, i32 0, i32 2
  store i64 %97, i64* %99, align 8
  %100 = load %struct.bio*, %struct.bio** %4, align 8
  %101 = getelementptr inbounds %struct.bio, %struct.bio* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = load i32, i32* @BIO_UNMAPPED, align 4
  %104 = and i32 %102, %103
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %143

106:                                              ; preds = %91
  %107 = load i8*, i8** %9, align 8
  %108 = ptrtoint i8* %107 to i64
  %109 = load %struct.bio*, %struct.bio** %8, align 8
  %110 = getelementptr inbounds %struct.bio, %struct.bio* %109, i32 0, i32 3
  %111 = load i64, i64* %110, align 8
  %112 = add i64 %111, %108
  store i64 %112, i64* %110, align 8
  %113 = load %struct.bio*, %struct.bio** %8, align 8
  %114 = getelementptr inbounds %struct.bio, %struct.bio* %113, i32 0, i32 3
  %115 = load i64, i64* %114, align 8
  %116 = load i32, i32* @PAGE_SIZE, align 4
  %117 = sext i32 %116 to i64
  %118 = udiv i64 %115, %117
  %119 = load %struct.bio*, %struct.bio** %8, align 8
  %120 = getelementptr inbounds %struct.bio, %struct.bio* %119, i32 0, i32 4
  %121 = load i32, i32* %120, align 8
  %122 = sext i32 %121 to i64
  %123 = add i64 %122, %118
  %124 = trunc i64 %123 to i32
  store i32 %124, i32* %120, align 8
  %125 = load i32, i32* @PAGE_SIZE, align 4
  %126 = sext i32 %125 to i64
  %127 = load %struct.bio*, %struct.bio** %8, align 8
  %128 = getelementptr inbounds %struct.bio, %struct.bio* %127, i32 0, i32 3
  %129 = load i64, i64* %128, align 8
  %130 = urem i64 %129, %126
  store i64 %130, i64* %128, align 8
  %131 = load %struct.bio*, %struct.bio** %8, align 8
  %132 = getelementptr inbounds %struct.bio, %struct.bio* %131, i32 0, i32 3
  %133 = load i64, i64* %132, align 8
  %134 = load %struct.bio*, %struct.bio** %8, align 8
  %135 = getelementptr inbounds %struct.bio, %struct.bio* %134, i32 0, i32 2
  %136 = load i64, i64* %135, align 8
  %137 = add i64 %133, %136
  %138 = call i32 @round_page(i64 %137)
  %139 = load i32, i32* @PAGE_SIZE, align 4
  %140 = sdiv i32 %138, %139
  %141 = load %struct.bio*, %struct.bio** %8, align 8
  %142 = getelementptr inbounds %struct.bio, %struct.bio* %141, i32 0, i32 5
  store i32 %140, i32* %142, align 4
  br label %147

143:                                              ; preds = %91
  %144 = load i8*, i8** %9, align 8
  %145 = load %struct.bio*, %struct.bio** %8, align 8
  %146 = getelementptr inbounds %struct.bio, %struct.bio* %145, i32 0, i32 1
  store i8* %144, i8** %146, align 8
  br label %147

147:                                              ; preds = %143, %106
  %148 = load %struct.g_raid_volume*, %struct.g_raid_volume** %5, align 8
  %149 = getelementptr inbounds %struct.g_raid_volume, %struct.g_raid_volume* %148, i32 0, i32 2
  %150 = load %struct.g_raid_subdisk*, %struct.g_raid_subdisk** %149, align 8
  %151 = load i64, i64* %14, align 8
  %152 = getelementptr inbounds %struct.g_raid_subdisk, %struct.g_raid_subdisk* %150, i64 %151
  %153 = load %struct.bio*, %struct.bio** %8, align 8
  %154 = getelementptr inbounds %struct.bio, %struct.bio* %153, i32 0, i32 7
  store %struct.g_raid_subdisk* %152, %struct.g_raid_subdisk** %154, align 8
  %155 = load %struct.bio*, %struct.bio** %8, align 8
  %156 = call i32 @bioq_insert_tail(%struct.bio_queue_head* %7, %struct.bio* %155)
  %157 = load i32, i32* @N, align 4
  %158 = load i32, i32* %16, align 4
  %159 = sub nsw i32 %157, %158
  %160 = sext i32 %159 to i64
  %161 = load i64, i64* %14, align 8
  %162 = add nsw i64 %161, %160
  store i64 %162, i64* %14, align 8
  %163 = load i64, i64* %14, align 8
  %164 = load %struct.g_raid_volume*, %struct.g_raid_volume** %5, align 8
  %165 = getelementptr inbounds %struct.g_raid_volume, %struct.g_raid_volume* %164, i32 0, i32 1
  %166 = load i64, i64* %165, align 8
  %167 = icmp sge i64 %163, %166
  br i1 %167, label %168, label %177

168:                                              ; preds = %147
  %169 = load %struct.g_raid_volume*, %struct.g_raid_volume** %5, align 8
  %170 = getelementptr inbounds %struct.g_raid_volume, %struct.g_raid_volume* %169, i32 0, i32 1
  %171 = load i64, i64* %170, align 8
  %172 = load i64, i64* %14, align 8
  %173 = sub nsw i64 %172, %171
  store i64 %173, i64* %14, align 8
  %174 = load i64, i64* %15, align 8
  %175 = load i64, i64* %10, align 8
  %176 = add nsw i64 %175, %174
  store i64 %176, i64* %10, align 8
  br label %177

177:                                              ; preds = %168, %147
  %178 = load i64, i64* %12, align 8
  %179 = load i64, i64* %13, align 8
  %180 = sub nsw i64 %179, %178
  store i64 %180, i64* %13, align 8
  %181 = load i64, i64* %12, align 8
  %182 = load i8*, i8** %9, align 8
  %183 = getelementptr inbounds i8, i8* %182, i64 %181
  store i8* %183, i8** %9, align 8
  store i64 0, i64* %11, align 8
  br label %44

184:                                              ; preds = %44
  br label %185

185:                                              ; preds = %188, %184
  %186 = call %struct.bio* @bioq_takefirst(%struct.bio_queue_head* %7)
  store %struct.bio* %186, %struct.bio** %8, align 8
  %187 = icmp ne %struct.bio* %186, null
  br i1 %187, label %188, label %197

188:                                              ; preds = %185
  %189 = load %struct.bio*, %struct.bio** %8, align 8
  %190 = getelementptr inbounds %struct.bio, %struct.bio* %189, i32 0, i32 7
  %191 = load %struct.g_raid_subdisk*, %struct.g_raid_subdisk** %190, align 8
  store %struct.g_raid_subdisk* %191, %struct.g_raid_subdisk** %6, align 8
  %192 = load %struct.bio*, %struct.bio** %8, align 8
  %193 = getelementptr inbounds %struct.bio, %struct.bio* %192, i32 0, i32 7
  store %struct.g_raid_subdisk* null, %struct.g_raid_subdisk** %193, align 8
  %194 = load %struct.g_raid_subdisk*, %struct.g_raid_subdisk** %6, align 8
  %195 = load %struct.bio*, %struct.bio** %8, align 8
  %196 = call i32 @g_raid_subdisk_iostart(%struct.g_raid_subdisk* %194, %struct.bio* %195)
  br label %185

197:                                              ; preds = %185
  br label %220

198:                                              ; preds = %90
  br label %199

199:                                              ; preds = %202, %198
  %200 = call %struct.bio* @bioq_takefirst(%struct.bio_queue_head* %7)
  store %struct.bio* %200, %struct.bio** %8, align 8
  %201 = icmp ne %struct.bio* %200, null
  br i1 %201, label %202, label %205

202:                                              ; preds = %199
  %203 = load %struct.bio*, %struct.bio** %8, align 8
  %204 = call i32 @g_destroy_bio(%struct.bio* %203)
  br label %199

205:                                              ; preds = %199
  %206 = load %struct.bio*, %struct.bio** %4, align 8
  %207 = getelementptr inbounds %struct.bio, %struct.bio* %206, i32 0, i32 6
  %208 = load i64, i64* %207, align 8
  %209 = icmp eq i64 %208, 0
  br i1 %209, label %210, label %214

210:                                              ; preds = %205
  %211 = load i64, i64* @ENOMEM, align 8
  %212 = load %struct.bio*, %struct.bio** %4, align 8
  %213 = getelementptr inbounds %struct.bio, %struct.bio* %212, i32 0, i32 6
  store i64 %211, i64* %213, align 8
  br label %214

214:                                              ; preds = %210, %205
  %215 = load %struct.bio*, %struct.bio** %4, align 8
  %216 = load %struct.bio*, %struct.bio** %4, align 8
  %217 = getelementptr inbounds %struct.bio, %struct.bio* %216, i32 0, i32 6
  %218 = load i64, i64* %217, align 8
  %219 = call i32 @g_raid_iodone(%struct.bio* %215, i64 %218)
  br label %220

220:                                              ; preds = %214, %197
  ret void
}

declare dso_local i32 @V2P(%struct.g_raid_volume*, i64, i64*, i64*, i64*) #1

declare dso_local i32 @bioq_init(%struct.bio_queue_head*) #1

declare dso_local i64 @MIN(i64, i64) #1

declare dso_local i32 @g_raid_tr_raid1e_select_read_disk(%struct.g_raid_volume*, i64, i64, i64, i32) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local %struct.bio* @g_clone_bio(%struct.bio*) #1

declare dso_local i32 @round_page(i64) #1

declare dso_local i32 @bioq_insert_tail(%struct.bio_queue_head*, %struct.bio*) #1

declare dso_local %struct.bio* @bioq_takefirst(%struct.bio_queue_head*) #1

declare dso_local i32 @g_raid_subdisk_iostart(%struct.g_raid_subdisk*, %struct.bio*) #1

declare dso_local i32 @g_destroy_bio(%struct.bio*) #1

declare dso_local i32 @g_raid_iodone(%struct.bio*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
