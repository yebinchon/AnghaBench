; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/cudbg/extr_cudbg_lib.c_get_next_ext_entity_hdr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/cudbg/extr_cudbg_lib.c_get_next_ext_entity_hdr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cudbg_buffer = type { i32, i32 }
%struct.cudbg_entity_hdr = type { i32, i32 }
%struct.cudbg_hdr = type { i32 }

@CUDBG_STATUS_BUFFER_SHORT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32*, %struct.cudbg_buffer*, %struct.cudbg_entity_hdr**)* @get_next_ext_entity_hdr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_next_ext_entity_hdr(i8* %0, i32* %1, %struct.cudbg_buffer* %2, %struct.cudbg_entity_hdr** %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.cudbg_buffer*, align 8
  %8 = alloca %struct.cudbg_entity_hdr**, align 8
  %9 = alloca %struct.cudbg_hdr*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32* %1, i32** %6, align 8
  store %struct.cudbg_buffer* %2, %struct.cudbg_buffer** %7, align 8
  store %struct.cudbg_entity_hdr** %3, %struct.cudbg_entity_hdr*** %8, align 8
  %12 = load i8*, i8** %5, align 8
  %13 = bitcast i8* %12 to %struct.cudbg_hdr*
  store %struct.cudbg_hdr* %13, %struct.cudbg_hdr** %9, align 8
  store i32 0, i32* %10, align 4
  %14 = load %struct.cudbg_hdr*, %struct.cudbg_hdr** %9, align 8
  %15 = getelementptr inbounds %struct.cudbg_hdr, %struct.cudbg_hdr* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %11, align 4
  %17 = load i32*, i32** %6, align 8
  store i32 0, i32* %17, align 4
  %18 = load %struct.cudbg_buffer*, %struct.cudbg_buffer** %7, align 8
  %19 = getelementptr inbounds %struct.cudbg_buffer, %struct.cudbg_buffer* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.cudbg_buffer*, %struct.cudbg_buffer** %7, align 8
  %22 = getelementptr inbounds %struct.cudbg_buffer, %struct.cudbg_buffer* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = sub nsw i32 %20, %23
  %25 = sext i32 %24 to i64
  %26 = icmp ule i64 %25, 8
  br i1 %26, label %27, label %29

27:                                               ; preds = %4
  %28 = load i32, i32* @CUDBG_STATUS_BUFFER_SHORT, align 4
  store i32 %28, i32* %10, align 4
  br label %114

29:                                               ; preds = %4
  %30 = load i8*, i8** %5, align 8
  %31 = load %struct.cudbg_hdr*, %struct.cudbg_hdr** %9, align 8
  %32 = getelementptr inbounds %struct.cudbg_hdr, %struct.cudbg_hdr* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i8, i8* %30, i64 %34
  %36 = bitcast i8* %35 to %struct.cudbg_entity_hdr*
  %37 = load %struct.cudbg_entity_hdr**, %struct.cudbg_entity_hdr*** %8, align 8
  store %struct.cudbg_entity_hdr* %36, %struct.cudbg_entity_hdr** %37, align 8
  br label %38

38:                                               ; preds = %98, %29
  %39 = load %struct.cudbg_entity_hdr**, %struct.cudbg_entity_hdr*** %8, align 8
  %40 = load %struct.cudbg_entity_hdr*, %struct.cudbg_entity_hdr** %39, align 8
  %41 = getelementptr inbounds %struct.cudbg_entity_hdr, %struct.cudbg_entity_hdr* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %110

44:                                               ; preds = %38
  %45 = load %struct.cudbg_entity_hdr**, %struct.cudbg_entity_hdr*** %8, align 8
  %46 = load %struct.cudbg_entity_hdr*, %struct.cudbg_entity_hdr** %45, align 8
  %47 = getelementptr inbounds %struct.cudbg_entity_hdr, %struct.cudbg_entity_hdr* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = sext i32 %48 to i64
  %50 = add i64 8, %49
  %51 = load i32, i32* %11, align 4
  %52 = sext i32 %51 to i64
  %53 = add i64 %52, %50
  %54 = trunc i64 %53 to i32
  store i32 %54, i32* %11, align 4
  %55 = load %struct.cudbg_entity_hdr**, %struct.cudbg_entity_hdr*** %8, align 8
  %56 = load %struct.cudbg_entity_hdr*, %struct.cudbg_entity_hdr** %55, align 8
  %57 = getelementptr inbounds %struct.cudbg_entity_hdr, %struct.cudbg_entity_hdr* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = sext i32 %58 to i64
  %60 = add i64 %59, 8
  %61 = load i32*, i32** %6, align 8
  %62 = load i32, i32* %61, align 4
  %63 = sext i32 %62 to i64
  %64 = add i64 %63, %60
  %65 = trunc i64 %64 to i32
  store i32 %65, i32* %61, align 4
  %66 = load %struct.cudbg_buffer*, %struct.cudbg_buffer** %7, align 8
  %67 = getelementptr inbounds %struct.cudbg_buffer, %struct.cudbg_buffer* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.cudbg_buffer*, %struct.cudbg_buffer** %7, align 8
  %70 = getelementptr inbounds %struct.cudbg_buffer, %struct.cudbg_buffer* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = sub nsw i32 %68, %71
  %73 = load i32*, i32** %6, align 8
  %74 = load i32, i32* %73, align 4
  %75 = add nsw i32 %72, %74
  %76 = sext i32 %75 to i64
  %77 = icmp ule i64 %76, 8
  br i1 %77, label %78, label %80

78:                                               ; preds = %44
  %79 = load i32, i32* @CUDBG_STATUS_BUFFER_SHORT, align 4
  store i32 %79, i32* %10, align 4
  br label %114

80:                                               ; preds = %44
  %81 = load i32, i32* %11, align 4
  %82 = load %struct.cudbg_entity_hdr**, %struct.cudbg_entity_hdr*** %8, align 8
  %83 = load %struct.cudbg_entity_hdr*, %struct.cudbg_entity_hdr** %82, align 8
  %84 = getelementptr inbounds %struct.cudbg_entity_hdr, %struct.cudbg_entity_hdr* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = icmp ne i32 %81, %85
  br i1 %86, label %87, label %98

87:                                               ; preds = %80
  %88 = load %struct.cudbg_entity_hdr**, %struct.cudbg_entity_hdr*** %8, align 8
  %89 = load %struct.cudbg_entity_hdr*, %struct.cudbg_entity_hdr** %88, align 8
  %90 = getelementptr inbounds %struct.cudbg_entity_hdr, %struct.cudbg_entity_hdr* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = sext i32 %91 to i64
  %93 = add i64 8, %92
  %94 = load i32, i32* %11, align 4
  %95 = sext i32 %94 to i64
  %96 = sub i64 %95, %93
  %97 = trunc i64 %96 to i32
  store i32 %97, i32* %11, align 4
  br label %110

98:                                               ; preds = %80
  %99 = load i32*, i32** %6, align 8
  %100 = load i32, i32* %99, align 4
  %101 = load %struct.cudbg_entity_hdr**, %struct.cudbg_entity_hdr*** %8, align 8
  %102 = load %struct.cudbg_entity_hdr*, %struct.cudbg_entity_hdr** %101, align 8
  %103 = getelementptr inbounds %struct.cudbg_entity_hdr, %struct.cudbg_entity_hdr* %102, i32 0, i32 1
  store i32 %100, i32* %103, align 4
  %104 = load i8*, i8** %5, align 8
  %105 = load i32, i32* %11, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i8, i8* %104, i64 %106
  %108 = bitcast i8* %107 to %struct.cudbg_entity_hdr*
  %109 = load %struct.cudbg_entity_hdr**, %struct.cudbg_entity_hdr*** %8, align 8
  store %struct.cudbg_entity_hdr* %108, %struct.cudbg_entity_hdr** %109, align 8
  br label %38

110:                                              ; preds = %87, %38
  %111 = load i32, i32* %11, align 4
  %112 = load %struct.cudbg_buffer*, %struct.cudbg_buffer** %7, align 8
  %113 = getelementptr inbounds %struct.cudbg_buffer, %struct.cudbg_buffer* %112, i32 0, i32 1
  store i32 %111, i32* %113, align 4
  br label %114

114:                                              ; preds = %110, %78, %27
  %115 = load i32, i32* %10, align 4
  ret i32 %115
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
