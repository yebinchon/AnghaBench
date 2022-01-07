; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/tpm/extr_tpm_crb.c_tpmcrb_fix_buff_offsets.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/tpm/extr_tpm_crb.c_tpmcrb_fix_buff_offsets.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64, i64 }
%struct.tpmcrb_sc = type { i64, i64 }

@ACPI_RESOURCE_TYPE_FIXED_MEMORY32 = common dso_local global i64 0, align 8
@AE_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*, i8*)* @tpmcrb_fix_buff_offsets to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tpmcrb_fix_buff_offsets(%struct.TYPE_7__* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.tpmcrb_sc*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %4, align 8
  store i8* %1, i8** %5, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = bitcast i8* %9 to %struct.tpmcrb_sc*
  store %struct.tpmcrb_sc* %10, %struct.tpmcrb_sc** %6, align 8
  %11 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @ACPI_RESOURCE_TYPE_FIXED_MEMORY32, align 8
  %15 = icmp ne i64 %13, %14
  br i1 %15, label %16, label %18

16:                                               ; preds = %2
  %17 = load i32, i32* @AE_OK, align 4
  store i32 %17, i32* %3, align 4
  br label %70

18:                                               ; preds = %2
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  store i64 %23, i64* %8, align 8
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  store i64 %28, i64* %7, align 8
  %29 = load %struct.tpmcrb_sc*, %struct.tpmcrb_sc** %6, align 8
  %30 = getelementptr inbounds %struct.tpmcrb_sc, %struct.tpmcrb_sc* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* %8, align 8
  %33 = icmp sgt i64 %31, %32
  br i1 %33, label %34, label %48

34:                                               ; preds = %18
  %35 = load %struct.tpmcrb_sc*, %struct.tpmcrb_sc** %6, align 8
  %36 = getelementptr inbounds %struct.tpmcrb_sc, %struct.tpmcrb_sc* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* %8, align 8
  %39 = load i64, i64* %7, align 8
  %40 = add i64 %38, %39
  %41 = icmp ult i64 %37, %40
  br i1 %41, label %42, label %48

42:                                               ; preds = %34
  %43 = load i64, i64* %8, align 8
  %44 = load %struct.tpmcrb_sc*, %struct.tpmcrb_sc** %6, align 8
  %45 = getelementptr inbounds %struct.tpmcrb_sc, %struct.tpmcrb_sc* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = sub nsw i64 %46, %43
  store i64 %47, i64* %45, align 8
  br label %48

48:                                               ; preds = %42, %34, %18
  %49 = load %struct.tpmcrb_sc*, %struct.tpmcrb_sc** %6, align 8
  %50 = getelementptr inbounds %struct.tpmcrb_sc, %struct.tpmcrb_sc* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* %8, align 8
  %53 = icmp sgt i64 %51, %52
  br i1 %53, label %54, label %68

54:                                               ; preds = %48
  %55 = load %struct.tpmcrb_sc*, %struct.tpmcrb_sc** %6, align 8
  %56 = getelementptr inbounds %struct.tpmcrb_sc, %struct.tpmcrb_sc* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* %8, align 8
  %59 = load i64, i64* %7, align 8
  %60 = add i64 %58, %59
  %61 = icmp ult i64 %57, %60
  br i1 %61, label %62, label %68

62:                                               ; preds = %54
  %63 = load i64, i64* %8, align 8
  %64 = load %struct.tpmcrb_sc*, %struct.tpmcrb_sc** %6, align 8
  %65 = getelementptr inbounds %struct.tpmcrb_sc, %struct.tpmcrb_sc* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = sub nsw i64 %66, %63
  store i64 %67, i64* %65, align 8
  br label %68

68:                                               ; preds = %62, %54, %48
  %69 = load i32, i32* @AE_OK, align 4
  store i32 %69, i32* %3, align 4
  br label %70

70:                                               ; preds = %68, %16
  %71 = load i32, i32* %3, align 4
  ret i32 %71
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
