; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/virstor/extr_g_virstor_md.c_virstor_metadata_encode.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/virstor/extr_g_virstor_md.c_virstor_metadata_encode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.g_virstor_metadata = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @virstor_metadata_encode(%struct.g_virstor_metadata* %0, i8* %1) #0 {
  %3 = alloca %struct.g_virstor_metadata*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  store %struct.g_virstor_metadata* %0, %struct.g_virstor_metadata** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load i8*, i8** %4, align 8
  %7 = call i32 @bs_open(i32* %5, i8* %6)
  %8 = load %struct.g_virstor_metadata*, %struct.g_virstor_metadata** %3, align 8
  %9 = getelementptr inbounds %struct.g_virstor_metadata, %struct.g_virstor_metadata* %8, i32 0, i32 13
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @bs_write_buf(i32* %5, i32 %10, i32 4)
  %12 = load %struct.g_virstor_metadata*, %struct.g_virstor_metadata** %3, align 8
  %13 = getelementptr inbounds %struct.g_virstor_metadata, %struct.g_virstor_metadata* %12, i32 0, i32 12
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @bs_write_u32(i32* %5, i32 %14)
  %16 = load %struct.g_virstor_metadata*, %struct.g_virstor_metadata** %3, align 8
  %17 = getelementptr inbounds %struct.g_virstor_metadata, %struct.g_virstor_metadata* %16, i32 0, i32 11
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @bs_write_buf(i32* %5, i32 %18, i32 4)
  %20 = load %struct.g_virstor_metadata*, %struct.g_virstor_metadata** %3, align 8
  %21 = getelementptr inbounds %struct.g_virstor_metadata, %struct.g_virstor_metadata* %20, i32 0, i32 10
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @bs_write_u64(i32* %5, i32 %22)
  %24 = load %struct.g_virstor_metadata*, %struct.g_virstor_metadata** %3, align 8
  %25 = getelementptr inbounds %struct.g_virstor_metadata, %struct.g_virstor_metadata* %24, i32 0, i32 9
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @bs_write_u32(i32* %5, i32 %26)
  %28 = load %struct.g_virstor_metadata*, %struct.g_virstor_metadata** %3, align 8
  %29 = getelementptr inbounds %struct.g_virstor_metadata, %struct.g_virstor_metadata* %28, i32 0, i32 8
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @bs_write_u32(i32* %5, i32 %30)
  %32 = load %struct.g_virstor_metadata*, %struct.g_virstor_metadata** %3, align 8
  %33 = getelementptr inbounds %struct.g_virstor_metadata, %struct.g_virstor_metadata* %32, i32 0, i32 7
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @bs_write_u16(i32* %5, i32 %34)
  %36 = load %struct.g_virstor_metadata*, %struct.g_virstor_metadata** %3, align 8
  %37 = getelementptr inbounds %struct.g_virstor_metadata, %struct.g_virstor_metadata* %36, i32 0, i32 6
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @bs_write_buf(i32* %5, i32 %38, i32 4)
  %40 = load %struct.g_virstor_metadata*, %struct.g_virstor_metadata** %3, align 8
  %41 = getelementptr inbounds %struct.g_virstor_metadata, %struct.g_virstor_metadata* %40, i32 0, i32 5
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @bs_write_u16(i32* %5, i32 %42)
  %44 = load %struct.g_virstor_metadata*, %struct.g_virstor_metadata** %3, align 8
  %45 = getelementptr inbounds %struct.g_virstor_metadata, %struct.g_virstor_metadata* %44, i32 0, i32 4
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @bs_write_u64(i32* %5, i32 %46)
  %48 = load %struct.g_virstor_metadata*, %struct.g_virstor_metadata** %3, align 8
  %49 = getelementptr inbounds %struct.g_virstor_metadata, %struct.g_virstor_metadata* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @bs_write_u32(i32* %5, i32 %50)
  %52 = load %struct.g_virstor_metadata*, %struct.g_virstor_metadata** %3, align 8
  %53 = getelementptr inbounds %struct.g_virstor_metadata, %struct.g_virstor_metadata* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @bs_write_u32(i32* %5, i32 %54)
  %56 = load %struct.g_virstor_metadata*, %struct.g_virstor_metadata** %3, align 8
  %57 = getelementptr inbounds %struct.g_virstor_metadata, %struct.g_virstor_metadata* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @bs_write_u16(i32* %5, i32 %58)
  %60 = load %struct.g_virstor_metadata*, %struct.g_virstor_metadata** %3, align 8
  %61 = getelementptr inbounds %struct.g_virstor_metadata, %struct.g_virstor_metadata* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @bs_write_u16(i32* %5, i32 %62)
  ret void
}

declare dso_local i32 @bs_open(i32*, i8*) #1

declare dso_local i32 @bs_write_buf(i32*, i32, i32) #1

declare dso_local i32 @bs_write_u32(i32*, i32) #1

declare dso_local i32 @bs_write_u64(i32*, i32) #1

declare dso_local i32 @bs_write_u16(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
