; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/isci/scil/extr_sati_util.c_sati_scsi_read_ncq_error_descriptor_sense_construct.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/isci/scil/extr_sati_util.c_sati_scsi_read_ncq_error_descriptor_sense_construct.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i8*, i8*, i32, i32, i32, i32, i32)* @sati_scsi_read_ncq_error_descriptor_sense_construct to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sati_scsi_read_ncq_error_descriptor_sense_construct(i32* %0, i8* %1, i8* %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7) #0 {
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  %18 = alloca i32, align 4
  %19 = alloca [8 x i32], align 16
  %20 = alloca %struct.TYPE_2__*, align 8
  store i32* %0, i32** %9, align 8
  store i8* %1, i8** %10, align 8
  store i8* %2, i8** %11, align 8
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  store i32 %7, i32* %16, align 4
  %21 = bitcast [8 x i32]* %19 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %21, i8 0, i64 32, i1 false)
  %22 = load i8*, i8** %11, align 8
  %23 = bitcast i8* %22 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %23, %struct.TYPE_2__** %20, align 8
  %24 = load i32*, i32** %9, align 8
  %25 = load i8*, i8** %10, align 8
  %26 = load i32, i32* %12, align 4
  %27 = call i32 @sati_scsi_get_sense_data_buffer(i32* %24, i8* %25, i32 %26, i32** %17, i32* %18)
  %28 = load i32*, i32** %17, align 8
  %29 = load i32, i32* %18, align 4
  %30 = load i32, i32* %13, align 4
  %31 = call i32 @sati_set_sense_data_byte(i32* %28, i32 %29, i32 0, i32 %30)
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 5
  %34 = load i32, i32* %33, align 4
  %35 = getelementptr inbounds [8 x i32], [8 x i32]* %19, i64 0, i64 2
  store i32 %34, i32* %35, align 8
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 4
  %38 = load i32, i32* %37, align 4
  %39 = getelementptr inbounds [8 x i32], [8 x i32]* %19, i64 0, i64 3
  store i32 %38, i32* %39, align 4
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 3
  %42 = load i32, i32* %41, align 4
  %43 = getelementptr inbounds [8 x i32], [8 x i32]* %19, i64 0, i64 4
  store i32 %42, i32* %43, align 16
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = getelementptr inbounds [8 x i32], [8 x i32]* %19, i64 0, i64 5
  store i32 %46, i32* %47, align 4
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = getelementptr inbounds [8 x i32], [8 x i32]* %19, i64 0, i64 6
  store i32 %50, i32* %51, align 8
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = getelementptr inbounds [8 x i32], [8 x i32]* %19, i64 0, i64 7
  store i32 %54, i32* %55, align 4
  %56 = load i32*, i32** %9, align 8
  %57 = load i8*, i8** %10, align 8
  %58 = load i32*, i32** %17, align 8
  %59 = load i32, i32* %18, align 4
  %60 = load i32, i32* %14, align 4
  %61 = load i32, i32* %15, align 4
  %62 = load i32, i32* %16, align 4
  %63 = getelementptr inbounds [8 x i32], [8 x i32]* %19, i64 0, i64 0
  %64 = call i32 @sati_scsi_common_descriptor_sense_construct(i32* %56, i8* %57, i32* %58, i32 %59, i32 %60, i32 %61, i32 %62, i32* %63)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @sati_scsi_get_sense_data_buffer(i32*, i8*, i32, i32**, i32*) #2

declare dso_local i32 @sati_set_sense_data_byte(i32*, i32, i32, i32) #2

declare dso_local i32 @sati_scsi_common_descriptor_sense_construct(i32*, i8*, i32*, i32, i32, i32, i32, i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
