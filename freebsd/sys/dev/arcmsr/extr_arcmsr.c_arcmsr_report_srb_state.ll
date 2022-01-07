; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/arcmsr/extr_arcmsr.c_arcmsr_report_srb_state.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/arcmsr/extr_arcmsr.c_arcmsr_report_srb_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.AdapterControlBlock = type { i64**, i32 }
%struct.CommandControlBlock = type { %struct.TYPE_6__*, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32, i32 }
%struct.TYPE_4__ = type { i32 }

@FALSE = common dso_local global i64 0, align 8
@ARECA_RAID_GONE = common dso_local global i64 0, align 8
@ARECA_RAID_GOOD = common dso_local global i64 0, align 8
@CAM_REQ_CMP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [70 x i8] c"arcmsr%d: Target=%x, Lun=%x, selection timeout, raid volume was lost\0A\00", align 1
@CAM_DEV_NOT_THERE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [91 x i8] c"arcmsr%d: scsi id=%d lun=%d isr got command error done,but got unknown DeviceStatus=0x%x \0A\00", align 1
@CAM_UNCOR_PARITY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.AdapterControlBlock*, %struct.CommandControlBlock*, i64)* @arcmsr_report_srb_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @arcmsr_report_srb_state(%struct.AdapterControlBlock* %0, %struct.CommandControlBlock* %1, i64 %2) #0 {
  %4 = alloca %struct.AdapterControlBlock*, align 8
  %5 = alloca %struct.CommandControlBlock*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.AdapterControlBlock* %0, %struct.AdapterControlBlock** %4, align 8
  store %struct.CommandControlBlock* %1, %struct.CommandControlBlock** %5, align 8
  store i64 %2, i64* %6, align 8
  %9 = load %struct.CommandControlBlock*, %struct.CommandControlBlock** %5, align 8
  %10 = getelementptr inbounds %struct.CommandControlBlock, %struct.CommandControlBlock* %9, i32 0, i32 0
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %7, align 4
  %15 = load %struct.CommandControlBlock*, %struct.CommandControlBlock** %5, align 8
  %16 = getelementptr inbounds %struct.CommandControlBlock, %struct.CommandControlBlock* %15, i32 0, i32 0
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %8, align 4
  %21 = load i64, i64* %6, align 8
  %22 = load i64, i64* @FALSE, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %61

24:                                               ; preds = %3
  %25 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %4, align 8
  %26 = getelementptr inbounds %struct.AdapterControlBlock, %struct.AdapterControlBlock* %25, i32 0, i32 0
  %27 = load i64**, i64*** %26, align 8
  %28 = load i32, i32* %7, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i64*, i64** %27, i64 %29
  %31 = load i64*, i64** %30, align 8
  %32 = load i32, i32* %8, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i64, i64* %31, i64 %33
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @ARECA_RAID_GONE, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %50

38:                                               ; preds = %24
  %39 = load i64, i64* @ARECA_RAID_GOOD, align 8
  %40 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %4, align 8
  %41 = getelementptr inbounds %struct.AdapterControlBlock, %struct.AdapterControlBlock* %40, i32 0, i32 0
  %42 = load i64**, i64*** %41, align 8
  %43 = load i32, i32* %7, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i64*, i64** %42, i64 %44
  %46 = load i64*, i64** %45, align 8
  %47 = load i32, i32* %8, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i64, i64* %46, i64 %48
  store i64 %39, i64* %49, align 8
  br label %50

50:                                               ; preds = %38, %24
  %51 = load i32, i32* @CAM_REQ_CMP, align 4
  %52 = load %struct.CommandControlBlock*, %struct.CommandControlBlock** %5, align 8
  %53 = getelementptr inbounds %struct.CommandControlBlock, %struct.CommandControlBlock* %52, i32 0, i32 0
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 4
  %58 = or i32 %57, %51
  store i32 %58, i32* %56, align 4
  %59 = load %struct.CommandControlBlock*, %struct.CommandControlBlock** %5, align 8
  %60 = call i32 @arcmsr_srb_complete(%struct.CommandControlBlock* %59, i32 1)
  br label %180

61:                                               ; preds = %3
  %62 = load %struct.CommandControlBlock*, %struct.CommandControlBlock** %5, align 8
  %63 = getelementptr inbounds %struct.CommandControlBlock, %struct.CommandControlBlock* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  switch i32 %65, label %147 [
    i32 129, label %66
    i32 131, label %109
    i32 130, label %109
    i32 128, label %131
  ]

66:                                               ; preds = %61
  %67 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %4, align 8
  %68 = getelementptr inbounds %struct.AdapterControlBlock, %struct.AdapterControlBlock* %67, i32 0, i32 0
  %69 = load i64**, i64*** %68, align 8
  %70 = load i32, i32* %7, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i64*, i64** %69, i64 %71
  %73 = load i64*, i64** %72, align 8
  %74 = load i32, i32* %8, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i64, i64* %73, i64 %75
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* @ARECA_RAID_GOOD, align 8
  %79 = icmp eq i64 %77, %78
  br i1 %79, label %80, label %87

80:                                               ; preds = %66
  %81 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %4, align 8
  %82 = getelementptr inbounds %struct.AdapterControlBlock, %struct.AdapterControlBlock* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 8
  %84 = load i32, i32* %7, align 4
  %85 = load i32, i32* %8, align 4
  %86 = call i32 (i8*, i32, i32, i32, ...) @printf(i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str, i64 0, i64 0), i32 %83, i32 %84, i32 %85)
  br label %87

87:                                               ; preds = %80, %66
  %88 = load i64, i64* @ARECA_RAID_GONE, align 8
  %89 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %4, align 8
  %90 = getelementptr inbounds %struct.AdapterControlBlock, %struct.AdapterControlBlock* %89, i32 0, i32 0
  %91 = load i64**, i64*** %90, align 8
  %92 = load i32, i32* %7, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i64*, i64** %91, i64 %93
  %95 = load i64*, i64** %94, align 8
  %96 = load i32, i32* %8, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i64, i64* %95, i64 %97
  store i64 %88, i64* %98, align 8
  %99 = load i32, i32* @CAM_DEV_NOT_THERE, align 4
  %100 = load %struct.CommandControlBlock*, %struct.CommandControlBlock** %5, align 8
  %101 = getelementptr inbounds %struct.CommandControlBlock, %struct.CommandControlBlock* %100, i32 0, i32 0
  %102 = load %struct.TYPE_6__*, %struct.TYPE_6__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %103, i32 0, i32 2
  %105 = load i32, i32* %104, align 4
  %106 = or i32 %105, %99
  store i32 %106, i32* %104, align 4
  %107 = load %struct.CommandControlBlock*, %struct.CommandControlBlock** %5, align 8
  %108 = call i32 @arcmsr_srb_complete(%struct.CommandControlBlock* %107, i32 1)
  br label %179

109:                                              ; preds = %61, %61
  %110 = load i64, i64* @ARECA_RAID_GONE, align 8
  %111 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %4, align 8
  %112 = getelementptr inbounds %struct.AdapterControlBlock, %struct.AdapterControlBlock* %111, i32 0, i32 0
  %113 = load i64**, i64*** %112, align 8
  %114 = load i32, i32* %7, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds i64*, i64** %113, i64 %115
  %117 = load i64*, i64** %116, align 8
  %118 = load i32, i32* %8, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds i64, i64* %117, i64 %119
  store i64 %110, i64* %120, align 8
  %121 = load i32, i32* @CAM_DEV_NOT_THERE, align 4
  %122 = load %struct.CommandControlBlock*, %struct.CommandControlBlock** %5, align 8
  %123 = getelementptr inbounds %struct.CommandControlBlock, %struct.CommandControlBlock* %122, i32 0, i32 0
  %124 = load %struct.TYPE_6__*, %struct.TYPE_6__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %125, i32 0, i32 2
  %127 = load i32, i32* %126, align 4
  %128 = or i32 %127, %121
  store i32 %128, i32* %126, align 4
  %129 = load %struct.CommandControlBlock*, %struct.CommandControlBlock** %5, align 8
  %130 = call i32 @arcmsr_srb_complete(%struct.CommandControlBlock* %129, i32 1)
  br label %179

131:                                              ; preds = %61
  %132 = load i64, i64* @ARECA_RAID_GOOD, align 8
  %133 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %4, align 8
  %134 = getelementptr inbounds %struct.AdapterControlBlock, %struct.AdapterControlBlock* %133, i32 0, i32 0
  %135 = load i64**, i64*** %134, align 8
  %136 = load i32, i32* %7, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds i64*, i64** %135, i64 %137
  %139 = load i64*, i64** %138, align 8
  %140 = load i32, i32* %8, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds i64, i64* %139, i64 %141
  store i64 %132, i64* %142, align 8
  %143 = load %struct.CommandControlBlock*, %struct.CommandControlBlock** %5, align 8
  %144 = call i32 @arcmsr_report_sense_info(%struct.CommandControlBlock* %143)
  %145 = load %struct.CommandControlBlock*, %struct.CommandControlBlock** %5, align 8
  %146 = call i32 @arcmsr_srb_complete(%struct.CommandControlBlock* %145, i32 1)
  br label %179

147:                                              ; preds = %61
  %148 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %4, align 8
  %149 = getelementptr inbounds %struct.AdapterControlBlock, %struct.AdapterControlBlock* %148, i32 0, i32 1
  %150 = load i32, i32* %149, align 8
  %151 = load i32, i32* %7, align 4
  %152 = load i32, i32* %8, align 4
  %153 = load %struct.CommandControlBlock*, %struct.CommandControlBlock** %5, align 8
  %154 = getelementptr inbounds %struct.CommandControlBlock, %struct.CommandControlBlock* %153, i32 0, i32 1
  %155 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 8
  %157 = call i32 (i8*, i32, i32, i32, ...) @printf(i8* getelementptr inbounds ([91 x i8], [91 x i8]* @.str.1, i64 0, i64 0), i32 %150, i32 %151, i32 %152, i32 %156)
  %158 = load i64, i64* @ARECA_RAID_GONE, align 8
  %159 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %4, align 8
  %160 = getelementptr inbounds %struct.AdapterControlBlock, %struct.AdapterControlBlock* %159, i32 0, i32 0
  %161 = load i64**, i64*** %160, align 8
  %162 = load i32, i32* %7, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds i64*, i64** %161, i64 %163
  %165 = load i64*, i64** %164, align 8
  %166 = load i32, i32* %8, align 4
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds i64, i64* %165, i64 %167
  store i64 %158, i64* %168, align 8
  %169 = load i32, i32* @CAM_UNCOR_PARITY, align 4
  %170 = load %struct.CommandControlBlock*, %struct.CommandControlBlock** %5, align 8
  %171 = getelementptr inbounds %struct.CommandControlBlock, %struct.CommandControlBlock* %170, i32 0, i32 0
  %172 = load %struct.TYPE_6__*, %struct.TYPE_6__** %171, align 8
  %173 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %172, i32 0, i32 0
  %174 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %173, i32 0, i32 2
  %175 = load i32, i32* %174, align 4
  %176 = or i32 %175, %169
  store i32 %176, i32* %174, align 4
  %177 = load %struct.CommandControlBlock*, %struct.CommandControlBlock** %5, align 8
  %178 = call i32 @arcmsr_srb_complete(%struct.CommandControlBlock* %177, i32 1)
  br label %179

179:                                              ; preds = %147, %131, %109, %87
  br label %180

180:                                              ; preds = %179, %50
  ret void
}

declare dso_local i32 @arcmsr_srb_complete(%struct.CommandControlBlock*, i32) #1

declare dso_local i32 @printf(i8*, i32, i32, i32, ...) #1

declare dso_local i32 @arcmsr_report_sense_info(%struct.CommandControlBlock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
