; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/aic7xxx/extr_aic79xx.c_ahd_print_scb.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/aic7xxx/extr_aic79xx.c_ahd_print_scb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scb = type { %struct.hardware_scb* }
%struct.hardware_scb = type { i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32* }

@.str = private unnamed_addr constant [51 x i8] c"scb:%p control:0x%x scsiid:0x%x lun:%d cdb_len:%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"Shared Data: \00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"%#02x\00", align 1
@.str.3 = private unnamed_addr constant [53 x i8] c"        dataptr:%#x%x datacnt:%#x sgptr:%#x tag:%#x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ahd_print_scb(%struct.scb* %0) #0 {
  %2 = alloca %struct.scb*, align 8
  %3 = alloca %struct.hardware_scb*, align 8
  %4 = alloca i32, align 4
  store %struct.scb* %0, %struct.scb** %2, align 8
  %5 = load %struct.scb*, %struct.scb** %2, align 8
  %6 = getelementptr inbounds %struct.scb, %struct.scb* %5, i32 0, i32 0
  %7 = load %struct.hardware_scb*, %struct.hardware_scb** %6, align 8
  store %struct.hardware_scb* %7, %struct.hardware_scb** %3, align 8
  %8 = load %struct.scb*, %struct.scb** %2, align 8
  %9 = bitcast %struct.scb* %8 to i8*
  %10 = load %struct.hardware_scb*, %struct.hardware_scb** %3, align 8
  %11 = getelementptr inbounds %struct.hardware_scb, %struct.hardware_scb* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load %struct.hardware_scb*, %struct.hardware_scb** %3, align 8
  %14 = getelementptr inbounds %struct.hardware_scb, %struct.hardware_scb* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.hardware_scb*, %struct.hardware_scb** %3, align 8
  %17 = getelementptr inbounds %struct.hardware_scb, %struct.hardware_scb* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 8
  %19 = load %struct.hardware_scb*, %struct.hardware_scb** %3, align 8
  %20 = getelementptr inbounds %struct.hardware_scb, %struct.hardware_scb* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 4
  %22 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i8* %9, i32 %12, i32 %15, i32 %18, i32 %21)
  %23 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %24

24:                                               ; preds = %39, %1
  %25 = load i32, i32* %4, align 4
  %26 = sext i32 %25 to i64
  %27 = icmp ult i64 %26, 8
  br i1 %27, label %28, label %42

28:                                               ; preds = %24
  %29 = load %struct.hardware_scb*, %struct.hardware_scb** %3, align 8
  %30 = getelementptr inbounds %struct.hardware_scb, %struct.hardware_scb* %29, i32 0, i32 7
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = load i32, i32* %4, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %33, i64 %35
  %37 = load i32, i32* %36, align 4
  %38 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 %37)
  br label %39

39:                                               ; preds = %28
  %40 = load i32, i32* %4, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %4, align 4
  br label %24

42:                                               ; preds = %24
  %43 = load %struct.hardware_scb*, %struct.hardware_scb** %3, align 8
  %44 = getelementptr inbounds %struct.hardware_scb, %struct.hardware_scb* %43, i32 0, i32 6
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @aic_le64toh(i32 %45)
  %47 = ashr i32 %46, 32
  %48 = load %struct.hardware_scb*, %struct.hardware_scb** %3, align 8
  %49 = getelementptr inbounds %struct.hardware_scb, %struct.hardware_scb* %48, i32 0, i32 6
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @aic_le64toh(i32 %50)
  %52 = load %struct.hardware_scb*, %struct.hardware_scb** %3, align 8
  %53 = getelementptr inbounds %struct.hardware_scb, %struct.hardware_scb* %52, i32 0, i32 5
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @aic_le32toh(i32 %54)
  %56 = load %struct.hardware_scb*, %struct.hardware_scb** %3, align 8
  %57 = getelementptr inbounds %struct.hardware_scb, %struct.hardware_scb* %56, i32 0, i32 4
  %58 = load i32, i32* %57, align 8
  %59 = call i32 @aic_le32toh(i32 %58)
  %60 = load %struct.scb*, %struct.scb** %2, align 8
  %61 = call i32 @SCB_GET_TAG(%struct.scb* %60)
  %62 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.3, i64 0, i64 0), i32 %47, i32 %51, i32 %55, i32 %59, i32 %61)
  %63 = load %struct.scb*, %struct.scb** %2, align 8
  %64 = call i32 @ahd_dump_sglist(%struct.scb* %63)
  ret void
}

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @aic_le64toh(i32) #1

declare dso_local i32 @aic_le32toh(i32) #1

declare dso_local i32 @SCB_GET_TAG(%struct.scb*) #1

declare dso_local i32 @ahd_dump_sglist(%struct.scb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
