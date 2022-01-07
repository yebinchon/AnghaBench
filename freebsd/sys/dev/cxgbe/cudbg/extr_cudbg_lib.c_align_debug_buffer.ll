; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/cudbg/extr_cudbg_lib.c_align_debug_buffer.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/cudbg/extr_cudbg_lib.c_align_debug_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cudbg_buffer = type { i32, i64 }
%struct.cudbg_entity_hdr = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cudbg_buffer*, %struct.cudbg_entity_hdr*)* @align_debug_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @align_debug_buffer(%struct.cudbg_buffer* %0, %struct.cudbg_entity_hdr* %1) #0 {
  %3 = alloca %struct.cudbg_buffer*, align 8
  %4 = alloca %struct.cudbg_entity_hdr*, align 8
  %5 = alloca [4 x i32], align 16
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.cudbg_buffer* %0, %struct.cudbg_buffer** %3, align 8
  store %struct.cudbg_entity_hdr* %1, %struct.cudbg_entity_hdr** %4, align 8
  %8 = bitcast [4 x i32]* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %8, i8 0, i64 16, i1 false)
  %9 = load %struct.cudbg_buffer*, %struct.cudbg_buffer** %3, align 8
  %10 = getelementptr inbounds %struct.cudbg_buffer, %struct.cudbg_buffer* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = load %struct.cudbg_entity_hdr*, %struct.cudbg_entity_hdr** %4, align 8
  %13 = getelementptr inbounds %struct.cudbg_entity_hdr, %struct.cudbg_entity_hdr* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = sub nsw i32 %11, %14
  %16 = srem i32 %15, 4
  store i32 %16, i32* %7, align 4
  %17 = load i32, i32* %7, align 4
  %18 = sub nsw i32 4, %17
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* %7, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %42

21:                                               ; preds = %2
  %22 = load %struct.cudbg_buffer*, %struct.cudbg_buffer** %3, align 8
  %23 = getelementptr inbounds %struct.cudbg_buffer, %struct.cudbg_buffer* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = inttoptr i64 %24 to i32*
  %26 = load %struct.cudbg_buffer*, %struct.cudbg_buffer** %3, align 8
  %27 = getelementptr inbounds %struct.cudbg_buffer, %struct.cudbg_buffer* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i32, i32* %25, i64 %29
  %31 = bitcast [4 x i32]* %5 to i32**
  %32 = load i32, i32* %6, align 4
  %33 = call i32 @memcpy(i32* %30, i32** %31, i32 %32)
  %34 = load i32, i32* %6, align 4
  %35 = load %struct.cudbg_buffer*, %struct.cudbg_buffer** %3, align 8
  %36 = getelementptr inbounds %struct.cudbg_buffer, %struct.cudbg_buffer* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = add nsw i32 %37, %34
  store i32 %38, i32* %36, align 8
  %39 = load i32, i32* %6, align 4
  %40 = load %struct.cudbg_entity_hdr*, %struct.cudbg_entity_hdr** %4, align 8
  %41 = getelementptr inbounds %struct.cudbg_entity_hdr, %struct.cudbg_entity_hdr* %40, i32 0, i32 1
  store i32 %39, i32* %41, align 4
  br label %42

42:                                               ; preds = %21, %2
  %43 = load %struct.cudbg_buffer*, %struct.cudbg_buffer** %3, align 8
  %44 = getelementptr inbounds %struct.cudbg_buffer, %struct.cudbg_buffer* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.cudbg_entity_hdr*, %struct.cudbg_entity_hdr** %4, align 8
  %47 = getelementptr inbounds %struct.cudbg_entity_hdr, %struct.cudbg_entity_hdr* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = sub nsw i32 %45, %48
  %50 = load %struct.cudbg_entity_hdr*, %struct.cudbg_entity_hdr** %4, align 8
  %51 = getelementptr inbounds %struct.cudbg_entity_hdr, %struct.cudbg_entity_hdr* %50, i32 0, i32 2
  store i32 %49, i32* %51, align 4
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @memcpy(i32*, i32**, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
