; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/raid/extr_tr_raid1e.c_g_raid_tr_iostart_raid1e_write.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/raid/extr_tr_raid1e.c_g_raid_tr_iostart_raid1e_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.g_raid_tr_object = type { %struct.g_raid_volume* }
%struct.g_raid_volume = type { i64, i64, %struct.g_raid_subdisk* }
%struct.g_raid_subdisk = type { i32, i64 }
%struct.bio = type { i32, i8*, i64, i64, i64, i32, i32, i64, %struct.g_raid_subdisk*, i64 }
%struct.bio_queue_head = type { i32 }

@BIO_UNMAPPED = common dso_local global i32 0, align 4
@N = common dso_local global i32 0, align 4
@BIO_DELETE = common dso_local global i64 0, align 8
@PAGE_SIZE = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.g_raid_tr_object*, %struct.bio*)* @g_raid_tr_iostart_raid1e_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @g_raid_tr_iostart_raid1e_write(%struct.g_raid_tr_object* %0, %struct.bio* %1) #0 {
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
  %37 = getelementptr inbounds %struct.bio, %struct.bio* %36, i32 0, i32 9
  %38 = load i64, i64* %37, align 8
  %39 = call i32 @V2P(%struct.g_raid_volume* %35, i64 %38, i64* %14, i64* %10, i64* %11)
  %40 = load %struct.bio*, %struct.bio** %4, align 8
  %41 = getelementptr inbounds %struct.bio, %struct.bio* %40, i32 0, i32 2
  %42 = load i64, i64* %41, align 8
  store i64 %42, i64* %13, align 8
  %43 = call i32 @bioq_init(%struct.bio_queue_head* %7)
  br label %44

44:                                               ; preds = %180, %31
  %45 = load i64, i64* %13, align 8
  %46 = icmp sgt i64 %45, 0
  br i1 %46, label %47, label %181

47:                                               ; preds = %44
  %48 = load i64, i64* %15, align 8
  %49 = load i64, i64* %11, align 8
  %50 = sub nsw i64 %48, %49
  %51 = load i64, i64* %13, align 8
  %52 = call i64 @MIN(i64 %50, i64 %51)
  store i64 %52, i64* %12, align 8
  store i32 0, i32* %16, align 4
  br label %53

53:                                               ; preds = %164, %47
  %54 = load i32, i32* %16, align 4
  %55 = load i32, i32* @N, align 4
  %56 = icmp slt i32 %54, %55
  br i1 %56, label %57, label %167

57:                                               ; preds = %53
  %58 = load %struct.g_raid_volume*, %struct.g_raid_volume** %5, align 8
  %59 = getelementptr inbounds %struct.g_raid_volume, %struct.g_raid_volume* %58, i32 0, i32 2
  %60 = load %struct.g_raid_subdisk*, %struct.g_raid_subdisk** %59, align 8
  %61 = load i64, i64* %14, align 8
  %62 = getelementptr inbounds %struct.g_raid_subdisk, %struct.g_raid_subdisk* %60, i64 %61
  store %struct.g_raid_subdisk* %62, %struct.g_raid_subdisk** %6, align 8
  %63 = load %struct.g_raid_subdisk*, %struct.g_raid_subdisk** %6, align 8
  %64 = getelementptr inbounds %struct.g_raid_subdisk, %struct.g_raid_subdisk* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  switch i32 %65, label %77 [
    i32 131, label %66
    i32 128, label %66
    i32 129, label %66
    i32 130, label %67
  ]

66:                                               ; preds = %57, %57, %57
  br label %78

67:                                               ; preds = %57
  %68 = load i64, i64* %10, align 8
  %69 = load i64, i64* %11, align 8
  %70 = add nsw i64 %68, %69
  %71 = load %struct.g_raid_subdisk*, %struct.g_raid_subdisk** %6, align 8
  %72 = getelementptr inbounds %struct.g_raid_subdisk, %struct.g_raid_subdisk* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = icmp sge i64 %70, %73
  br i1 %74, label %75, label %76

75:                                               ; preds = %67
  br label %152

76:                                               ; preds = %67
  br label %78

77:                                               ; preds = %57
  br label %152

78:                                               ; preds = %76, %66
  %79 = load %struct.bio*, %struct.bio** %4, align 8
  %80 = call %struct.bio* @g_clone_bio(%struct.bio* %79)
  store %struct.bio* %80, %struct.bio** %8, align 8
  %81 = load %struct.bio*, %struct.bio** %8, align 8
  %82 = icmp eq %struct.bio* %81, null
  br i1 %82, label %83, label %84

83:                                               ; preds = %78
  br label %195

84:                                               ; preds = %78
  %85 = load i64, i64* %10, align 8
  %86 = load i64, i64* %11, align 8
  %87 = add nsw i64 %85, %86
  %88 = load %struct.bio*, %struct.bio** %8, align 8
  %89 = getelementptr inbounds %struct.bio, %struct.bio* %88, i32 0, i32 9
  store i64 %87, i64* %89, align 8
  %90 = load i64, i64* %12, align 8
  %91 = load %struct.bio*, %struct.bio** %8, align 8
  %92 = getelementptr inbounds %struct.bio, %struct.bio* %91, i32 0, i32 2
  store i64 %90, i64* %92, align 8
  %93 = load %struct.bio*, %struct.bio** %4, align 8
  %94 = getelementptr inbounds %struct.bio, %struct.bio* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = load i32, i32* @BIO_UNMAPPED, align 4
  %97 = and i32 %95, %96
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %142

99:                                               ; preds = %84
  %100 = load %struct.bio*, %struct.bio** %4, align 8
  %101 = getelementptr inbounds %struct.bio, %struct.bio* %100, i32 0, i32 3
  %102 = load i64, i64* %101, align 8
  %103 = load i64, i64* @BIO_DELETE, align 8
  %104 = icmp ne i64 %102, %103
  br i1 %104, label %105, label %142

105:                                              ; preds = %99
  %106 = load i8*, i8** %9, align 8
  %107 = ptrtoint i8* %106 to i64
  %108 = load %struct.bio*, %struct.bio** %8, align 8
  %109 = getelementptr inbounds %struct.bio, %struct.bio* %108, i32 0, i32 4
  %110 = load i64, i64* %109, align 8
  %111 = add i64 %110, %107
  store i64 %111, i64* %109, align 8
  %112 = load %struct.bio*, %struct.bio** %8, align 8
  %113 = getelementptr inbounds %struct.bio, %struct.bio* %112, i32 0, i32 4
  %114 = load i64, i64* %113, align 8
  %115 = load i32, i32* @PAGE_SIZE, align 4
  %116 = sext i32 %115 to i64
  %117 = udiv i64 %114, %116
  %118 = load %struct.bio*, %struct.bio** %8, align 8
  %119 = getelementptr inbounds %struct.bio, %struct.bio* %118, i32 0, i32 5
  %120 = load i32, i32* %119, align 8
  %121 = sext i32 %120 to i64
  %122 = add i64 %121, %117
  %123 = trunc i64 %122 to i32
  store i32 %123, i32* %119, align 8
  %124 = load i32, i32* @PAGE_SIZE, align 4
  %125 = sext i32 %124 to i64
  %126 = load %struct.bio*, %struct.bio** %8, align 8
  %127 = getelementptr inbounds %struct.bio, %struct.bio* %126, i32 0, i32 4
  %128 = load i64, i64* %127, align 8
  %129 = urem i64 %128, %125
  store i64 %129, i64* %127, align 8
  %130 = load %struct.bio*, %struct.bio** %8, align 8
  %131 = getelementptr inbounds %struct.bio, %struct.bio* %130, i32 0, i32 4
  %132 = load i64, i64* %131, align 8
  %133 = load %struct.bio*, %struct.bio** %8, align 8
  %134 = getelementptr inbounds %struct.bio, %struct.bio* %133, i32 0, i32 2
  %135 = load i64, i64* %134, align 8
  %136 = add i64 %132, %135
  %137 = call i32 @round_page(i64 %136)
  %138 = load i32, i32* @PAGE_SIZE, align 4
  %139 = sdiv i32 %137, %138
  %140 = load %struct.bio*, %struct.bio** %8, align 8
  %141 = getelementptr inbounds %struct.bio, %struct.bio* %140, i32 0, i32 6
  store i32 %139, i32* %141, align 4
  br label %146

142:                                              ; preds = %99, %84
  %143 = load i8*, i8** %9, align 8
  %144 = load %struct.bio*, %struct.bio** %8, align 8
  %145 = getelementptr inbounds %struct.bio, %struct.bio* %144, i32 0, i32 1
  store i8* %143, i8** %145, align 8
  br label %146

146:                                              ; preds = %142, %105
  %147 = load %struct.g_raid_subdisk*, %struct.g_raid_subdisk** %6, align 8
  %148 = load %struct.bio*, %struct.bio** %8, align 8
  %149 = getelementptr inbounds %struct.bio, %struct.bio* %148, i32 0, i32 8
  store %struct.g_raid_subdisk* %147, %struct.g_raid_subdisk** %149, align 8
  %150 = load %struct.bio*, %struct.bio** %8, align 8
  %151 = call i32 @bioq_insert_tail(%struct.bio_queue_head* %7, %struct.bio* %150)
  br label %152

152:                                              ; preds = %146, %77, %75
  %153 = load i64, i64* %14, align 8
  %154 = add nsw i64 %153, 1
  store i64 %154, i64* %14, align 8
  %155 = load %struct.g_raid_volume*, %struct.g_raid_volume** %5, align 8
  %156 = getelementptr inbounds %struct.g_raid_volume, %struct.g_raid_volume* %155, i32 0, i32 1
  %157 = load i64, i64* %156, align 8
  %158 = icmp sge i64 %154, %157
  br i1 %158, label %159, label %163

159:                                              ; preds = %152
  store i64 0, i64* %14, align 8
  %160 = load i64, i64* %15, align 8
  %161 = load i64, i64* %10, align 8
  %162 = add nsw i64 %161, %160
  store i64 %162, i64* %10, align 8
  br label %163

163:                                              ; preds = %159, %152
  br label %164

164:                                              ; preds = %163
  %165 = load i32, i32* %16, align 4
  %166 = add nsw i32 %165, 1
  store i32 %166, i32* %16, align 4
  br label %53

167:                                              ; preds = %53
  %168 = load i64, i64* %12, align 8
  %169 = load i64, i64* %13, align 8
  %170 = sub nsw i64 %169, %168
  store i64 %170, i64* %13, align 8
  %171 = load %struct.bio*, %struct.bio** %4, align 8
  %172 = getelementptr inbounds %struct.bio, %struct.bio* %171, i32 0, i32 3
  %173 = load i64, i64* %172, align 8
  %174 = load i64, i64* @BIO_DELETE, align 8
  %175 = icmp ne i64 %173, %174
  br i1 %175, label %176, label %180

176:                                              ; preds = %167
  %177 = load i64, i64* %12, align 8
  %178 = load i8*, i8** %9, align 8
  %179 = getelementptr inbounds i8, i8* %178, i64 %177
  store i8* %179, i8** %9, align 8
  br label %180

180:                                              ; preds = %176, %167
  store i64 0, i64* %11, align 8
  br label %44

181:                                              ; preds = %44
  br label %182

182:                                              ; preds = %185, %181
  %183 = call %struct.bio* @bioq_takefirst(%struct.bio_queue_head* %7)
  store %struct.bio* %183, %struct.bio** %8, align 8
  %184 = icmp ne %struct.bio* %183, null
  br i1 %184, label %185, label %194

185:                                              ; preds = %182
  %186 = load %struct.bio*, %struct.bio** %8, align 8
  %187 = getelementptr inbounds %struct.bio, %struct.bio* %186, i32 0, i32 8
  %188 = load %struct.g_raid_subdisk*, %struct.g_raid_subdisk** %187, align 8
  store %struct.g_raid_subdisk* %188, %struct.g_raid_subdisk** %6, align 8
  %189 = load %struct.bio*, %struct.bio** %8, align 8
  %190 = getelementptr inbounds %struct.bio, %struct.bio* %189, i32 0, i32 8
  store %struct.g_raid_subdisk* null, %struct.g_raid_subdisk** %190, align 8
  %191 = load %struct.g_raid_subdisk*, %struct.g_raid_subdisk** %6, align 8
  %192 = load %struct.bio*, %struct.bio** %8, align 8
  %193 = call i32 @g_raid_subdisk_iostart(%struct.g_raid_subdisk* %191, %struct.bio* %192)
  br label %182

194:                                              ; preds = %182
  br label %217

195:                                              ; preds = %83
  br label %196

196:                                              ; preds = %199, %195
  %197 = call %struct.bio* @bioq_takefirst(%struct.bio_queue_head* %7)
  store %struct.bio* %197, %struct.bio** %8, align 8
  %198 = icmp ne %struct.bio* %197, null
  br i1 %198, label %199, label %202

199:                                              ; preds = %196
  %200 = load %struct.bio*, %struct.bio** %8, align 8
  %201 = call i32 @g_destroy_bio(%struct.bio* %200)
  br label %196

202:                                              ; preds = %196
  %203 = load %struct.bio*, %struct.bio** %4, align 8
  %204 = getelementptr inbounds %struct.bio, %struct.bio* %203, i32 0, i32 7
  %205 = load i64, i64* %204, align 8
  %206 = icmp eq i64 %205, 0
  br i1 %206, label %207, label %211

207:                                              ; preds = %202
  %208 = load i64, i64* @ENOMEM, align 8
  %209 = load %struct.bio*, %struct.bio** %4, align 8
  %210 = getelementptr inbounds %struct.bio, %struct.bio* %209, i32 0, i32 7
  store i64 %208, i64* %210, align 8
  br label %211

211:                                              ; preds = %207, %202
  %212 = load %struct.bio*, %struct.bio** %4, align 8
  %213 = load %struct.bio*, %struct.bio** %4, align 8
  %214 = getelementptr inbounds %struct.bio, %struct.bio* %213, i32 0, i32 7
  %215 = load i64, i64* %214, align 8
  %216 = call i32 @g_raid_iodone(%struct.bio* %212, i64 %215)
  br label %217

217:                                              ; preds = %211, %194
  ret void
}

declare dso_local i32 @V2P(%struct.g_raid_volume*, i64, i64*, i64*, i64*) #1

declare dso_local i32 @bioq_init(%struct.bio_queue_head*) #1

declare dso_local i64 @MIN(i64, i64) #1

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
