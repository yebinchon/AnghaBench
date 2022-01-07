; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/mkimg/extr_image.c_image_write.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/mkimg/extr_image.c_image_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.chunk = type { i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@ENXIO = common dso_local global i32 0, align 4
@CH_TYPE_FILE = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@CH_TYPE_ZEROES = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i32 0, align 4
@CH_TYPE_MEMORY = common dso_local global i64 0, align 8
@secsz = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @image_write(i32 %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.chunk*, align 8
  store i32 %0, i32* %5, align 4
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  br label %9

9:                                                ; preds = %62, %3
  %10 = load i64, i64* %7, align 8
  %11 = icmp sgt i64 %10, 0
  br i1 %11, label %12, label %71

12:                                               ; preds = %9
  %13 = load i8*, i8** %6, align 8
  %14 = call i32 @is_empty_sector(i8* %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %62, label %16

16:                                               ; preds = %12
  %17 = load i32, i32* %5, align 4
  %18 = call %struct.chunk* @image_chunk_find(i32 %17)
  store %struct.chunk* %18, %struct.chunk** %8, align 8
  %19 = load %struct.chunk*, %struct.chunk** %8, align 8
  %20 = icmp eq %struct.chunk* %19, null
  br i1 %20, label %21, label %23

21:                                               ; preds = %16
  %22 = load i32, i32* @ENXIO, align 4
  store i32 %22, i32* %4, align 4
  br label %72

23:                                               ; preds = %16
  %24 = load %struct.chunk*, %struct.chunk** %8, align 8
  %25 = getelementptr inbounds %struct.chunk, %struct.chunk* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @CH_TYPE_FILE, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %31

29:                                               ; preds = %23
  %30 = load i32, i32* @EINVAL, align 4
  store i32 %30, i32* %4, align 4
  br label %72

31:                                               ; preds = %23
  %32 = load %struct.chunk*, %struct.chunk** %8, align 8
  %33 = getelementptr inbounds %struct.chunk, %struct.chunk* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @CH_TYPE_ZEROES, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %46

37:                                               ; preds = %31
  %38 = load %struct.chunk*, %struct.chunk** %8, align 8
  %39 = load i32, i32* %5, align 4
  %40 = call %struct.chunk* @image_chunk_memory(%struct.chunk* %38, i32 %39)
  store %struct.chunk* %40, %struct.chunk** %8, align 8
  %41 = load %struct.chunk*, %struct.chunk** %8, align 8
  %42 = icmp eq %struct.chunk* %41, null
  br i1 %42, label %43, label %45

43:                                               ; preds = %37
  %44 = load i32, i32* @ENOMEM, align 4
  store i32 %44, i32* %4, align 4
  br label %72

45:                                               ; preds = %37
  br label %46

46:                                               ; preds = %45, %31
  %47 = load %struct.chunk*, %struct.chunk** %8, align 8
  %48 = getelementptr inbounds %struct.chunk, %struct.chunk* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @CH_TYPE_MEMORY, align 8
  %51 = icmp eq i64 %49, %50
  %52 = zext i1 %51 to i32
  %53 = call i32 @assert(i32 %52)
  %54 = load %struct.chunk*, %struct.chunk** %8, align 8
  %55 = getelementptr inbounds %struct.chunk, %struct.chunk* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = load i8*, i8** %6, align 8
  %60 = load i32, i32* @secsz, align 4
  %61 = call i32 @memcpy(i32 %58, i8* %59, i32 %60)
  br label %62

62:                                               ; preds = %46, %12
  %63 = load i32, i32* %5, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %5, align 4
  %65 = load i8*, i8** %6, align 8
  %66 = load i32, i32* @secsz, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i8, i8* %65, i64 %67
  store i8* %68, i8** %6, align 8
  %69 = load i64, i64* %7, align 8
  %70 = add nsw i64 %69, -1
  store i64 %70, i64* %7, align 8
  br label %9

71:                                               ; preds = %9
  store i32 0, i32* %4, align 4
  br label %72

72:                                               ; preds = %71, %43, %29, %21
  %73 = load i32, i32* %4, align 4
  ret i32 %73
}

declare dso_local i32 @is_empty_sector(i8*) #1

declare dso_local %struct.chunk* @image_chunk_find(i32) #1

declare dso_local %struct.chunk* @image_chunk_memory(%struct.chunk*, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @memcpy(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
