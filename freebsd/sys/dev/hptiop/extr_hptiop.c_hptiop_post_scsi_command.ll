; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/hptiop/extr_hptiop.c_hptiop_post_scsi_command.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/hptiop/extr_hptiop.c_hptiop_post_scsi_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hpt_iop_srb = type { i32, %struct.hpt_iop_hba*, %union.ccb* }
%struct.hpt_iop_hba = type { i32, %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i32 (%struct.hpt_iop_hba*, %struct.hpt_iop_srb*, i32*, i32)* }
%union.ccb = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i64, i32, i32 }

@.str = private unnamed_addr constant [46 x i8] c"hptiop: func_code=%x tid=%x lun=%jx nsegs=%d\0A\00", align 1
@CAM_BUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32*, i32, i32)* @hptiop_post_scsi_command to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hptiop_post_scsi_command(i8* %0, i32* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.hpt_iop_srb*, align 8
  %10 = alloca %union.ccb*, align 8
  %11 = alloca %struct.hpt_iop_hba*, align 8
  store i8* %0, i8** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %12 = load i8*, i8** %5, align 8
  %13 = bitcast i8* %12 to %struct.hpt_iop_srb*
  store %struct.hpt_iop_srb* %13, %struct.hpt_iop_srb** %9, align 8
  %14 = load %struct.hpt_iop_srb*, %struct.hpt_iop_srb** %9, align 8
  %15 = getelementptr inbounds %struct.hpt_iop_srb, %struct.hpt_iop_srb* %14, i32 0, i32 2
  %16 = load %union.ccb*, %union.ccb** %15, align 8
  store %union.ccb* %16, %union.ccb** %10, align 8
  %17 = load %struct.hpt_iop_srb*, %struct.hpt_iop_srb** %9, align 8
  %18 = getelementptr inbounds %struct.hpt_iop_srb, %struct.hpt_iop_srb* %17, i32 0, i32 1
  %19 = load %struct.hpt_iop_hba*, %struct.hpt_iop_hba** %18, align 8
  store %struct.hpt_iop_hba* %19, %struct.hpt_iop_hba** %11, align 8
  %20 = load i32, i32* %8, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %28, label %22

22:                                               ; preds = %4
  %23 = load i32, i32* %7, align 4
  %24 = load %struct.hpt_iop_hba*, %struct.hpt_iop_hba** %11, align 8
  %25 = getelementptr inbounds %struct.hpt_iop_hba, %struct.hpt_iop_hba* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp sgt i32 %23, %26
  br i1 %27, label %28, label %62

28:                                               ; preds = %22, %4
  %29 = load %union.ccb*, %union.ccb** %10, align 8
  %30 = bitcast %union.ccb* %29 to %struct.TYPE_3__*
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 4
  %33 = load %union.ccb*, %union.ccb** %10, align 8
  %34 = bitcast %union.ccb* %33 to %struct.TYPE_3__*
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = load %union.ccb*, %union.ccb** %10, align 8
  %38 = bitcast %union.ccb* %37 to %struct.TYPE_3__*
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = trunc i64 %40 to i32
  %42 = load i32, i32* %7, align 4
  %43 = sext i32 %42 to i64
  %44 = inttoptr i64 %43 to i8*
  %45 = call i32 @KdPrint(i8* %44)
  %46 = load i32, i32* @CAM_BUSY, align 4
  %47 = load %union.ccb*, %union.ccb** %10, align 8
  %48 = bitcast %union.ccb* %47 to %struct.TYPE_3__*
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 0
  store i32 %46, i32* %49, align 8
  %50 = load %struct.hpt_iop_hba*, %struct.hpt_iop_hba** %11, align 8
  %51 = getelementptr inbounds %struct.hpt_iop_hba, %struct.hpt_iop_hba* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.hpt_iop_srb*, %struct.hpt_iop_srb** %9, align 8
  %54 = getelementptr inbounds %struct.hpt_iop_srb, %struct.hpt_iop_srb* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = call i32 @bus_dmamap_unload(i32 %52, i32 %55)
  %57 = load %struct.hpt_iop_hba*, %struct.hpt_iop_hba** %11, align 8
  %58 = load %struct.hpt_iop_srb*, %struct.hpt_iop_srb** %9, align 8
  %59 = call i32 @hptiop_free_srb(%struct.hpt_iop_hba* %57, %struct.hpt_iop_srb* %58)
  %60 = load %union.ccb*, %union.ccb** %10, align 8
  %61 = call i32 @xpt_done(%union.ccb* %60)
  br label %73

62:                                               ; preds = %22
  %63 = load %struct.hpt_iop_hba*, %struct.hpt_iop_hba** %11, align 8
  %64 = getelementptr inbounds %struct.hpt_iop_hba, %struct.hpt_iop_hba* %63, i32 0, i32 1
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 0
  %67 = load i32 (%struct.hpt_iop_hba*, %struct.hpt_iop_srb*, i32*, i32)*, i32 (%struct.hpt_iop_hba*, %struct.hpt_iop_srb*, i32*, i32)** %66, align 8
  %68 = load %struct.hpt_iop_hba*, %struct.hpt_iop_hba** %11, align 8
  %69 = load %struct.hpt_iop_srb*, %struct.hpt_iop_srb** %9, align 8
  %70 = load i32*, i32** %6, align 8
  %71 = load i32, i32* %7, align 4
  %72 = call i32 %67(%struct.hpt_iop_hba* %68, %struct.hpt_iop_srb* %69, i32* %70, i32 %71)
  br label %73

73:                                               ; preds = %62, %28
  ret void
}

declare dso_local i32 @KdPrint(i8*) #1

declare dso_local i32 @bus_dmamap_unload(i32, i32) #1

declare dso_local i32 @hptiop_free_srb(%struct.hpt_iop_hba*, %struct.hpt_iop_srb*) #1

declare dso_local i32 @xpt_done(%union.ccb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
