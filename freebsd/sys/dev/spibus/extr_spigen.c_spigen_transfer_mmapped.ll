; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/spibus/extr_spigen.c_spigen_transfer_mmapped.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/spibus/extr_spigen.c_spigen_transfer_mmapped.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_command = type { i64, i64, i64, i64, i8*, i8*, i8*, i8* }
%struct.cdev = type { i32 }
%struct.spigen_transfer_mmapped = type { i64, i64 }
%struct.spigen_mmap = type { i64, i64 }

@SPI_COMMAND_INITIALIZER = common dso_local global %struct.spi_command zeroinitializer, align 8
@E2BIG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cdev*, %struct.spigen_transfer_mmapped*)* @spigen_transfer_mmapped to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @spigen_transfer_mmapped(%struct.cdev* %0, %struct.spigen_transfer_mmapped* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cdev*, align 8
  %5 = alloca %struct.spigen_transfer_mmapped*, align 8
  %6 = alloca %struct.spi_command, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.spigen_mmap*, align 8
  %9 = alloca i32, align 4
  store %struct.cdev* %0, %struct.cdev** %4, align 8
  store %struct.spigen_transfer_mmapped* %1, %struct.spigen_transfer_mmapped** %5, align 8
  %10 = bitcast %struct.spi_command* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %10, i8* align 8 bitcast (%struct.spi_command* @SPI_COMMAND_INITIALIZER to i8*), i64 64, i1 false)
  %11 = load %struct.cdev*, %struct.cdev** %4, align 8
  %12 = getelementptr inbounds %struct.cdev, %struct.cdev* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %7, align 4
  %14 = bitcast %struct.spigen_mmap** %8 to i8**
  %15 = call i32 @devfs_get_cdevpriv(i8** %14)
  store i32 %15, i32* %9, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %2
  %18 = load i32, i32* %9, align 4
  store i32 %18, i32* %3, align 4
  br label %65

19:                                               ; preds = %2
  %20 = load %struct.spigen_mmap*, %struct.spigen_mmap** %8, align 8
  %21 = getelementptr inbounds %struct.spigen_mmap, %struct.spigen_mmap* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load %struct.spigen_transfer_mmapped*, %struct.spigen_transfer_mmapped** %5, align 8
  %24 = getelementptr inbounds %struct.spigen_transfer_mmapped, %struct.spigen_transfer_mmapped* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.spigen_transfer_mmapped*, %struct.spigen_transfer_mmapped** %5, align 8
  %27 = getelementptr inbounds %struct.spigen_transfer_mmapped, %struct.spigen_transfer_mmapped* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = add nsw i64 %25, %28
  %30 = icmp slt i64 %22, %29
  br i1 %30, label %31, label %33

31:                                               ; preds = %19
  %32 = load i32, i32* @E2BIG, align 4
  store i32 %32, i32* %3, align 4
  br label %65

33:                                               ; preds = %19
  %34 = load %struct.spigen_mmap*, %struct.spigen_mmap** %8, align 8
  %35 = getelementptr inbounds %struct.spigen_mmap, %struct.spigen_mmap* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = inttoptr i64 %36 to i8*
  %38 = getelementptr inbounds %struct.spi_command, %struct.spi_command* %6, i32 0, i32 6
  store i8* %37, i8** %38, align 8
  %39 = getelementptr inbounds %struct.spi_command, %struct.spi_command* %6, i32 0, i32 7
  store i8* %37, i8** %39, align 8
  %40 = load %struct.spigen_transfer_mmapped*, %struct.spigen_transfer_mmapped** %5, align 8
  %41 = getelementptr inbounds %struct.spigen_transfer_mmapped, %struct.spigen_transfer_mmapped* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = getelementptr inbounds %struct.spi_command, %struct.spi_command* %6, i32 0, i32 1
  store i64 %42, i64* %43, align 8
  %44 = getelementptr inbounds %struct.spi_command, %struct.spi_command* %6, i32 0, i32 0
  store i64 %42, i64* %44, align 8
  %45 = load %struct.spigen_mmap*, %struct.spigen_mmap** %8, align 8
  %46 = getelementptr inbounds %struct.spigen_mmap, %struct.spigen_mmap* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = load %struct.spigen_transfer_mmapped*, %struct.spigen_transfer_mmapped** %5, align 8
  %49 = getelementptr inbounds %struct.spigen_transfer_mmapped, %struct.spigen_transfer_mmapped* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = add i64 %47, %50
  %52 = inttoptr i64 %51 to i8*
  %53 = getelementptr inbounds %struct.spi_command, %struct.spi_command* %6, i32 0, i32 4
  store i8* %52, i8** %53, align 8
  %54 = getelementptr inbounds %struct.spi_command, %struct.spi_command* %6, i32 0, i32 5
  store i8* %52, i8** %54, align 8
  %55 = load %struct.spigen_transfer_mmapped*, %struct.spigen_transfer_mmapped** %5, align 8
  %56 = getelementptr inbounds %struct.spigen_transfer_mmapped, %struct.spigen_transfer_mmapped* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = getelementptr inbounds %struct.spi_command, %struct.spi_command* %6, i32 0, i32 3
  store i64 %57, i64* %58, align 8
  %59 = getelementptr inbounds %struct.spi_command, %struct.spi_command* %6, i32 0, i32 2
  store i64 %57, i64* %59, align 8
  %60 = load i32, i32* %7, align 4
  %61 = call i32 @device_get_parent(i32 %60)
  %62 = load i32, i32* %7, align 4
  %63 = call i32 @SPIBUS_TRANSFER(i32 %61, i32 %62, %struct.spi_command* %6)
  store i32 %63, i32* %9, align 4
  %64 = load i32, i32* %9, align 4
  store i32 %64, i32* %3, align 4
  br label %65

65:                                               ; preds = %33, %31, %17
  %66 = load i32, i32* %3, align 4
  ret i32 %66
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @devfs_get_cdevpriv(i8**) #2

declare dso_local i32 @SPIBUS_TRANSFER(i32, i32, %struct.spi_command*) #2

declare dso_local i32 @device_get_parent(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
