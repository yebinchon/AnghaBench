; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/hptiop/extr_hptiop.c_hptiop_get_config_mvfrey.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/hptiop/extr_hptiop.c_hptiop_get_config_mvfrey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hpt_iop_hba = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.hpt_iop_request_get_config* }
%struct.hpt_iop_request_get_config = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i64 }

@IOP_REQUEST_TYPE_GET_CONFIG = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [37 x i8] c"hptiop: header size %x/%x type %x/%x\00", align 1
@.str.1 = private unnamed_addr constant [57 x i8] c"hptiop: maxreq %x reqsz %x datalen %x maxdev %x sdram %x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hpt_iop_hba*, %struct.hpt_iop_request_get_config*)* @hptiop_get_config_mvfrey to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hptiop_get_config_mvfrey(%struct.hpt_iop_hba* %0, %struct.hpt_iop_request_get_config* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hpt_iop_hba*, align 8
  %5 = alloca %struct.hpt_iop_request_get_config*, align 8
  %6 = alloca %struct.hpt_iop_request_get_config*, align 8
  store %struct.hpt_iop_hba* %0, %struct.hpt_iop_hba** %4, align 8
  store %struct.hpt_iop_request_get_config* %1, %struct.hpt_iop_request_get_config** %5, align 8
  %7 = load %struct.hpt_iop_hba*, %struct.hpt_iop_hba** %4, align 8
  %8 = getelementptr inbounds %struct.hpt_iop_hba, %struct.hpt_iop_hba* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load %struct.hpt_iop_request_get_config*, %struct.hpt_iop_request_get_config** %10, align 8
  store %struct.hpt_iop_request_get_config* %11, %struct.hpt_iop_request_get_config** %6, align 8
  %12 = load %struct.hpt_iop_request_get_config*, %struct.hpt_iop_request_get_config** %6, align 8
  %13 = getelementptr inbounds %struct.hpt_iop_request_get_config, %struct.hpt_iop_request_get_config* %12, i32 0, i32 9
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = sext i32 %15 to i64
  %17 = icmp ne i64 %16, 56
  br i1 %17, label %25, label %18

18:                                               ; preds = %2
  %19 = load %struct.hpt_iop_request_get_config*, %struct.hpt_iop_request_get_config** %6, align 8
  %20 = getelementptr inbounds %struct.hpt_iop_request_get_config, %struct.hpt_iop_request_get_config* %19, i32 0, i32 9
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @IOP_REQUEST_TYPE_GET_CONFIG, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %25, label %37

25:                                               ; preds = %18, %2
  %26 = load %struct.hpt_iop_request_get_config*, %struct.hpt_iop_request_get_config** %6, align 8
  %27 = getelementptr inbounds %struct.hpt_iop_request_get_config, %struct.hpt_iop_request_get_config* %26, i32 0, i32 9
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.hpt_iop_request_get_config*, %struct.hpt_iop_request_get_config** %6, align 8
  %31 = getelementptr inbounds %struct.hpt_iop_request_get_config, %struct.hpt_iop_request_get_config* %30, i32 0, i32 9
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @IOP_REQUEST_TYPE_GET_CONFIG, align 8
  %35 = inttoptr i64 %34 to i8*
  %36 = call i32 @KdPrint(i8* %35)
  store i32 -1, i32* %3, align 4
  br label %101

37:                                               ; preds = %18
  %38 = load %struct.hpt_iop_request_get_config*, %struct.hpt_iop_request_get_config** %6, align 8
  %39 = getelementptr inbounds %struct.hpt_iop_request_get_config, %struct.hpt_iop_request_get_config* %38, i32 0, i32 8
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.hpt_iop_request_get_config*, %struct.hpt_iop_request_get_config** %5, align 8
  %42 = getelementptr inbounds %struct.hpt_iop_request_get_config, %struct.hpt_iop_request_get_config* %41, i32 0, i32 8
  store i32 %40, i32* %42, align 8
  %43 = load %struct.hpt_iop_request_get_config*, %struct.hpt_iop_request_get_config** %6, align 8
  %44 = getelementptr inbounds %struct.hpt_iop_request_get_config, %struct.hpt_iop_request_get_config* %43, i32 0, i32 7
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.hpt_iop_request_get_config*, %struct.hpt_iop_request_get_config** %5, align 8
  %47 = getelementptr inbounds %struct.hpt_iop_request_get_config, %struct.hpt_iop_request_get_config* %46, i32 0, i32 7
  store i32 %45, i32* %47, align 4
  %48 = load %struct.hpt_iop_request_get_config*, %struct.hpt_iop_request_get_config** %6, align 8
  %49 = getelementptr inbounds %struct.hpt_iop_request_get_config, %struct.hpt_iop_request_get_config* %48, i32 0, i32 4
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.hpt_iop_request_get_config*, %struct.hpt_iop_request_get_config** %5, align 8
  %52 = getelementptr inbounds %struct.hpt_iop_request_get_config, %struct.hpt_iop_request_get_config* %51, i32 0, i32 4
  store i32 %50, i32* %52, align 8
  %53 = load %struct.hpt_iop_request_get_config*, %struct.hpt_iop_request_get_config** %6, align 8
  %54 = getelementptr inbounds %struct.hpt_iop_request_get_config, %struct.hpt_iop_request_get_config* %53, i32 0, i32 3
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.hpt_iop_request_get_config*, %struct.hpt_iop_request_get_config** %5, align 8
  %57 = getelementptr inbounds %struct.hpt_iop_request_get_config, %struct.hpt_iop_request_get_config* %56, i32 0, i32 3
  store i32 %55, i32* %57, align 4
  %58 = load %struct.hpt_iop_request_get_config*, %struct.hpt_iop_request_get_config** %6, align 8
  %59 = getelementptr inbounds %struct.hpt_iop_request_get_config, %struct.hpt_iop_request_get_config* %58, i32 0, i32 6
  %60 = load i32, i32* %59, align 8
  %61 = load %struct.hpt_iop_request_get_config*, %struct.hpt_iop_request_get_config** %5, align 8
  %62 = getelementptr inbounds %struct.hpt_iop_request_get_config, %struct.hpt_iop_request_get_config* %61, i32 0, i32 6
  store i32 %60, i32* %62, align 8
  %63 = load %struct.hpt_iop_request_get_config*, %struct.hpt_iop_request_get_config** %6, align 8
  %64 = getelementptr inbounds %struct.hpt_iop_request_get_config, %struct.hpt_iop_request_get_config* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 8
  %66 = load %struct.hpt_iop_request_get_config*, %struct.hpt_iop_request_get_config** %5, align 8
  %67 = getelementptr inbounds %struct.hpt_iop_request_get_config, %struct.hpt_iop_request_get_config* %66, i32 0, i32 2
  store i32 %65, i32* %67, align 8
  %68 = load %struct.hpt_iop_request_get_config*, %struct.hpt_iop_request_get_config** %6, align 8
  %69 = getelementptr inbounds %struct.hpt_iop_request_get_config, %struct.hpt_iop_request_get_config* %68, i32 0, i32 5
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.hpt_iop_request_get_config*, %struct.hpt_iop_request_get_config** %5, align 8
  %72 = getelementptr inbounds %struct.hpt_iop_request_get_config, %struct.hpt_iop_request_get_config* %71, i32 0, i32 5
  store i32 %70, i32* %72, align 4
  %73 = load %struct.hpt_iop_request_get_config*, %struct.hpt_iop_request_get_config** %6, align 8
  %74 = getelementptr inbounds %struct.hpt_iop_request_get_config, %struct.hpt_iop_request_get_config* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.hpt_iop_request_get_config*, %struct.hpt_iop_request_get_config** %5, align 8
  %77 = getelementptr inbounds %struct.hpt_iop_request_get_config, %struct.hpt_iop_request_get_config* %76, i32 0, i32 1
  store i32 %75, i32* %77, align 4
  %78 = load %struct.hpt_iop_request_get_config*, %struct.hpt_iop_request_get_config** %6, align 8
  %79 = getelementptr inbounds %struct.hpt_iop_request_get_config, %struct.hpt_iop_request_get_config* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = load %struct.hpt_iop_request_get_config*, %struct.hpt_iop_request_get_config** %5, align 8
  %82 = getelementptr inbounds %struct.hpt_iop_request_get_config, %struct.hpt_iop_request_get_config* %81, i32 0, i32 0
  store i32 %80, i32* %82, align 8
  %83 = load %struct.hpt_iop_request_get_config*, %struct.hpt_iop_request_get_config** %5, align 8
  %84 = getelementptr inbounds %struct.hpt_iop_request_get_config, %struct.hpt_iop_request_get_config* %83, i32 0, i32 4
  %85 = load i32, i32* %84, align 8
  %86 = load %struct.hpt_iop_request_get_config*, %struct.hpt_iop_request_get_config** %5, align 8
  %87 = getelementptr inbounds %struct.hpt_iop_request_get_config, %struct.hpt_iop_request_get_config* %86, i32 0, i32 3
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.hpt_iop_request_get_config*, %struct.hpt_iop_request_get_config** %5, align 8
  %90 = getelementptr inbounds %struct.hpt_iop_request_get_config, %struct.hpt_iop_request_get_config* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 8
  %92 = load %struct.hpt_iop_request_get_config*, %struct.hpt_iop_request_get_config** %5, align 8
  %93 = getelementptr inbounds %struct.hpt_iop_request_get_config, %struct.hpt_iop_request_get_config* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.hpt_iop_request_get_config*, %struct.hpt_iop_request_get_config** %5, align 8
  %96 = getelementptr inbounds %struct.hpt_iop_request_get_config, %struct.hpt_iop_request_get_config* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = sext i32 %97 to i64
  %99 = inttoptr i64 %98 to i8*
  %100 = call i32 @KdPrint(i8* %99)
  store i32 0, i32* %3, align 4
  br label %101

101:                                              ; preds = %37, %25
  %102 = load i32, i32* %3, align 4
  ret i32 %102
}

declare dso_local i32 @KdPrint(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
