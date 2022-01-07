; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/isci/scil/extr_sati_inquiry.c_sati_inquiry_construct_product_revision.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/isci/scil/extr_sati_inquiry.c_sati_inquiry_construct_product_revision.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32* }

@firmware_revision = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i8*, i8*)* @sati_inquiry_construct_product_revision to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sati_inquiry_construct_product_revision(i32* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.TYPE_2__*, align 8
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = bitcast i8* %8 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %9, %struct.TYPE_2__** %7, align 8
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32*, i32** %11, align 8
  %13 = getelementptr inbounds i32, i32* %12, i64 4
  %14 = load i32, i32* %13, align 4
  %15 = icmp eq i32 %14, 32
  br i1 %15, label %16, label %45

16:                                               ; preds = %3
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 5
  %21 = load i32, i32* %20, align 4
  %22 = icmp eq i32 %21, 32
  br i1 %22, label %23, label %45

23:                                               ; preds = %16
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 6
  %28 = load i32, i32* %27, align 4
  %29 = icmp eq i32 %28, 32
  br i1 %29, label %30, label %45

30:                                               ; preds = %23
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 7
  %35 = load i32, i32* %34, align 4
  %36 = icmp eq i32 %35, 32
  br i1 %36, label %37, label %45

37:                                               ; preds = %30
  %38 = load i32*, i32** %4, align 8
  %39 = load i8*, i8** %6, align 8
  %40 = load i8*, i8** %5, align 8
  %41 = load i32, i32* @firmware_revision, align 4
  %42 = call i64 @ATA_IDENTIFY_DEVICE_GET_OFFSET(i32 %41)
  %43 = load i32, i32* @TRUE, align 4
  %44 = call i32 @sati_ata_identify_device_copy_data(i32* %38, i8* %39, i32 32, i8* %40, i64 %42, i32 4, i32 %43)
  br label %54

45:                                               ; preds = %30, %23, %16, %3
  %46 = load i32*, i32** %4, align 8
  %47 = load i8*, i8** %6, align 8
  %48 = load i8*, i8** %5, align 8
  %49 = load i32, i32* @firmware_revision, align 4
  %50 = call i64 @ATA_IDENTIFY_DEVICE_GET_OFFSET(i32 %49)
  %51 = add nsw i64 %50, 4
  %52 = load i32, i32* @TRUE, align 4
  %53 = call i32 @sati_ata_identify_device_copy_data(i32* %46, i8* %47, i32 32, i8* %48, i64 %51, i32 4, i32 %52)
  br label %54

54:                                               ; preds = %45, %37
  ret void
}

declare dso_local i32 @sati_ata_identify_device_copy_data(i32*, i8*, i32, i8*, i64, i32, i32) #1

declare dso_local i64 @ATA_IDENTIFY_DEVICE_GET_OFFSET(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
