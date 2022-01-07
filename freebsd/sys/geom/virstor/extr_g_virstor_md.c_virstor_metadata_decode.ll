; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/virstor/extr_g_virstor_md.c_virstor_metadata_decode.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/virstor/extr_g_virstor_md.c_virstor_metadata_decode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.g_virstor_metadata = type { i8*, i8*, i8*, i8*, i8*, i8*, i32, i8*, i8*, i8*, i8*, i32, i8*, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @virstor_metadata_decode(i8* %0, %struct.g_virstor_metadata* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.g_virstor_metadata*, align 8
  %5 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store %struct.g_virstor_metadata* %1, %struct.g_virstor_metadata** %4, align 8
  %6 = load i8*, i8** %3, align 8
  %7 = call i32 @bs_open(i32* %5, i8* %6)
  %8 = load %struct.g_virstor_metadata*, %struct.g_virstor_metadata** %4, align 8
  %9 = getelementptr inbounds %struct.g_virstor_metadata, %struct.g_virstor_metadata* %8, i32 0, i32 13
  %10 = load i32, i32* %9, align 8
  %11 = call i32 @bs_read_buf(i32* %5, i32 %10, i32 4)
  %12 = call i8* @bs_read_u32(i32* %5)
  %13 = load %struct.g_virstor_metadata*, %struct.g_virstor_metadata** %4, align 8
  %14 = getelementptr inbounds %struct.g_virstor_metadata, %struct.g_virstor_metadata* %13, i32 0, i32 12
  store i8* %12, i8** %14, align 8
  %15 = load %struct.g_virstor_metadata*, %struct.g_virstor_metadata** %4, align 8
  %16 = getelementptr inbounds %struct.g_virstor_metadata, %struct.g_virstor_metadata* %15, i32 0, i32 11
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @bs_read_buf(i32* %5, i32 %17, i32 4)
  %19 = call i8* @bs_read_u64(i32* %5)
  %20 = load %struct.g_virstor_metadata*, %struct.g_virstor_metadata** %4, align 8
  %21 = getelementptr inbounds %struct.g_virstor_metadata, %struct.g_virstor_metadata* %20, i32 0, i32 10
  store i8* %19, i8** %21, align 8
  %22 = call i8* @bs_read_u32(i32* %5)
  %23 = load %struct.g_virstor_metadata*, %struct.g_virstor_metadata** %4, align 8
  %24 = getelementptr inbounds %struct.g_virstor_metadata, %struct.g_virstor_metadata* %23, i32 0, i32 9
  store i8* %22, i8** %24, align 8
  %25 = call i8* @bs_read_u32(i32* %5)
  %26 = load %struct.g_virstor_metadata*, %struct.g_virstor_metadata** %4, align 8
  %27 = getelementptr inbounds %struct.g_virstor_metadata, %struct.g_virstor_metadata* %26, i32 0, i32 8
  store i8* %25, i8** %27, align 8
  %28 = call i8* @bs_read_u16(i32* %5)
  %29 = load %struct.g_virstor_metadata*, %struct.g_virstor_metadata** %4, align 8
  %30 = getelementptr inbounds %struct.g_virstor_metadata, %struct.g_virstor_metadata* %29, i32 0, i32 7
  store i8* %28, i8** %30, align 8
  %31 = load %struct.g_virstor_metadata*, %struct.g_virstor_metadata** %4, align 8
  %32 = getelementptr inbounds %struct.g_virstor_metadata, %struct.g_virstor_metadata* %31, i32 0, i32 6
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @bs_read_buf(i32* %5, i32 %33, i32 4)
  %35 = call i8* @bs_read_u16(i32* %5)
  %36 = load %struct.g_virstor_metadata*, %struct.g_virstor_metadata** %4, align 8
  %37 = getelementptr inbounds %struct.g_virstor_metadata, %struct.g_virstor_metadata* %36, i32 0, i32 5
  store i8* %35, i8** %37, align 8
  %38 = call i8* @bs_read_u64(i32* %5)
  %39 = load %struct.g_virstor_metadata*, %struct.g_virstor_metadata** %4, align 8
  %40 = getelementptr inbounds %struct.g_virstor_metadata, %struct.g_virstor_metadata* %39, i32 0, i32 4
  store i8* %38, i8** %40, align 8
  %41 = call i8* @bs_read_u32(i32* %5)
  %42 = load %struct.g_virstor_metadata*, %struct.g_virstor_metadata** %4, align 8
  %43 = getelementptr inbounds %struct.g_virstor_metadata, %struct.g_virstor_metadata* %42, i32 0, i32 3
  store i8* %41, i8** %43, align 8
  %44 = call i8* @bs_read_u32(i32* %5)
  %45 = load %struct.g_virstor_metadata*, %struct.g_virstor_metadata** %4, align 8
  %46 = getelementptr inbounds %struct.g_virstor_metadata, %struct.g_virstor_metadata* %45, i32 0, i32 2
  store i8* %44, i8** %46, align 8
  %47 = call i8* @bs_read_u16(i32* %5)
  %48 = load %struct.g_virstor_metadata*, %struct.g_virstor_metadata** %4, align 8
  %49 = getelementptr inbounds %struct.g_virstor_metadata, %struct.g_virstor_metadata* %48, i32 0, i32 1
  store i8* %47, i8** %49, align 8
  %50 = call i8* @bs_read_u16(i32* %5)
  %51 = load %struct.g_virstor_metadata*, %struct.g_virstor_metadata** %4, align 8
  %52 = getelementptr inbounds %struct.g_virstor_metadata, %struct.g_virstor_metadata* %51, i32 0, i32 0
  store i8* %50, i8** %52, align 8
  ret void
}

declare dso_local i32 @bs_open(i32*, i8*) #1

declare dso_local i32 @bs_read_buf(i32*, i32, i32) #1

declare dso_local i8* @bs_read_u32(i32*) #1

declare dso_local i8* @bs_read_u64(i32*) #1

declare dso_local i8* @bs_read_u16(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
