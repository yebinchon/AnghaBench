; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/cudbg/extr_fastlz_api.c_read_chunk_header.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/cudbg/extr_fastlz_api.c_read_chunk_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cudbg_buffer = type { i32, i32, i32 }

@CUDBG_CHUNK_BUF_LEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @read_chunk_header(%struct.cudbg_buffer* %0, i32* %1, i32* %2, i64* %3, i64* %4, i64* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.cudbg_buffer*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i64*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.cudbg_buffer* %0, %struct.cudbg_buffer** %8, align 8
  store i32* %1, i32** %9, align 8
  store i32* %2, i32** %10, align 8
  store i64* %3, i64** %11, align 8
  store i64* %4, i64** %12, align 8
  store i64* %5, i64** %13, align 8
  %18 = load i32, i32* @CUDBG_CHUNK_BUF_LEN, align 4
  %19 = zext i32 %18 to i64
  %20 = call i8* @llvm.stacksave()
  store i8* %20, i8** %14, align 8
  %21 = alloca i8, i64 %19, align 16
  store i64 %19, i64* %15, align 8
  %22 = load %struct.cudbg_buffer*, %struct.cudbg_buffer** %8, align 8
  %23 = getelementptr inbounds %struct.cudbg_buffer, %struct.cudbg_buffer* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.cudbg_buffer*, %struct.cudbg_buffer** %8, align 8
  %26 = getelementptr inbounds %struct.cudbg_buffer, %struct.cudbg_buffer* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.cudbg_buffer*, %struct.cudbg_buffer** %8, align 8
  %29 = getelementptr inbounds %struct.cudbg_buffer, %struct.cudbg_buffer* %28, i32 0, i32 0
  %30 = call i32 @read_from_buf(i32 %24, i32 %27, i32* %29, i8* %21, i32 16)
  store i32 %30, i32* %16, align 4
  %31 = load i32, i32* %16, align 4
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %6
  store i32 0, i32* %7, align 4
  store i32 1, i32* %17, align 4
  br label %54

34:                                               ; preds = %6
  %35 = call i32 @readU16(i8* %21)
  %36 = and i32 %35, 65535
  %37 = load i32*, i32** %9, align 8
  store i32 %36, i32* %37, align 4
  %38 = getelementptr inbounds i8, i8* %21, i64 2
  %39 = call i32 @readU16(i8* %38)
  %40 = and i32 %39, 65535
  %41 = load i32*, i32** %10, align 8
  store i32 %40, i32* %41, align 4
  %42 = getelementptr inbounds i8, i8* %21, i64 4
  %43 = call i32 @readU32(i8* %42)
  %44 = zext i32 %43 to i64
  %45 = load i64*, i64** %11, align 8
  store i64 %44, i64* %45, align 8
  %46 = getelementptr inbounds i8, i8* %21, i64 8
  %47 = call i32 @readU32(i8* %46)
  %48 = zext i32 %47 to i64
  %49 = load i64*, i64** %12, align 8
  store i64 %48, i64* %49, align 8
  %50 = getelementptr inbounds i8, i8* %21, i64 12
  %51 = call i32 @readU32(i8* %50)
  %52 = zext i32 %51 to i64
  %53 = load i64*, i64** %13, align 8
  store i64 %52, i64* %53, align 8
  store i32 0, i32* %7, align 4
  store i32 1, i32* %17, align 4
  br label %54

54:                                               ; preds = %34, %33
  %55 = load i8*, i8** %14, align 8
  call void @llvm.stackrestore(i8* %55)
  %56 = load i32, i32* %7, align 4
  ret i32 %56
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @read_from_buf(i32, i32, i32*, i8*, i32) #2

declare dso_local i32 @readU16(i8*) #2

declare dso_local i32 @readU32(i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
