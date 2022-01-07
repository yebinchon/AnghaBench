; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/firewire/extr_firewire.c_fw_print_sid.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/firewire/extr_firewire.c_fw_print_sid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.fw_self_id = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64 }
%struct.TYPE_5__ = type { i64, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_4__ = type { i64, i32, i32, i32, i32, i32, i32 }

@FW_SELF_ID_PAGE0 = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [57 x i8] c"node:%d p3:%d p4:%d p5:%d p6:%d p7:%dp8:%d p9:%d p10:%d\0A\00", align 1
@FW_SELF_ID_PAGE1 = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [44 x i8] c"node:%d p11:%d p12:%d p13:%d p14:%d p15:%d\0A\00", align 1
@.str.2 = private unnamed_addr constant [40 x i8] c"node:%d Unknown Self ID Page number %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [73 x i8] c"node:%d link:%d gap:%d spd:%d con:%d pwr:%d p0:%d p1:%d p2:%d i:%d m:%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @fw_print_sid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fw_print_sid(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %union.fw_self_id*, align 8
  store i32 %0, i32* %2, align 4
  %4 = bitcast i32* %2 to %union.fw_self_id*
  store %union.fw_self_id* %4, %union.fw_self_id** %3, align 8
  %5 = load %union.fw_self_id*, %union.fw_self_id** %3, align 8
  %6 = bitcast %union.fw_self_id* %5 to %struct.TYPE_6__*
  %7 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 11
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %101

10:                                               ; preds = %1
  %11 = load %union.fw_self_id*, %union.fw_self_id** %3, align 8
  %12 = bitcast %union.fw_self_id* %11 to %struct.TYPE_5__*
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @FW_SELF_ID_PAGE0, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %55

17:                                               ; preds = %10
  %18 = load %union.fw_self_id*, %union.fw_self_id** %3, align 8
  %19 = bitcast %union.fw_self_id* %18 to %struct.TYPE_5__*
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = load %union.fw_self_id*, %union.fw_self_id** %3, align 8
  %23 = bitcast %union.fw_self_id* %22 to %struct.TYPE_5__*
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = load %union.fw_self_id*, %union.fw_self_id** %3, align 8
  %27 = bitcast %union.fw_self_id* %26 to %struct.TYPE_5__*
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 8
  %30 = load %union.fw_self_id*, %union.fw_self_id** %3, align 8
  %31 = bitcast %union.fw_self_id* %30 to %struct.TYPE_5__*
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 4
  %33 = load i32, i32* %32, align 4
  %34 = load %union.fw_self_id*, %union.fw_self_id** %3, align 8
  %35 = bitcast %union.fw_self_id* %34 to %struct.TYPE_5__*
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 5
  %37 = load i32, i32* %36, align 8
  %38 = load %union.fw_self_id*, %union.fw_self_id** %3, align 8
  %39 = bitcast %union.fw_self_id* %38 to %struct.TYPE_5__*
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 6
  %41 = load i32, i32* %40, align 4
  %42 = load %union.fw_self_id*, %union.fw_self_id** %3, align 8
  %43 = bitcast %union.fw_self_id* %42 to %struct.TYPE_5__*
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 7
  %45 = load i32, i32* %44, align 8
  %46 = load %union.fw_self_id*, %union.fw_self_id** %3, align 8
  %47 = bitcast %union.fw_self_id* %46 to %struct.TYPE_5__*
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 8
  %49 = load i32, i32* %48, align 4
  %50 = load %union.fw_self_id*, %union.fw_self_id** %3, align 8
  %51 = bitcast %union.fw_self_id* %50 to %struct.TYPE_5__*
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 9
  %53 = load i32, i32* %52, align 8
  %54 = call i32 (i8*, i32, i32, ...) @printf(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0), i32 %21, i32 %25, i32 %29, i32 %33, i32 %37, i32 %41, i32 %45, i32 %49, i32 %53)
  br label %100

55:                                               ; preds = %10
  %56 = load %union.fw_self_id*, %union.fw_self_id** %3, align 8
  %57 = bitcast %union.fw_self_id* %56 to %struct.TYPE_4__*
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @FW_SELF_ID_PAGE1, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %62, label %88

62:                                               ; preds = %55
  %63 = load %union.fw_self_id*, %union.fw_self_id** %3, align 8
  %64 = bitcast %union.fw_self_id* %63 to %struct.TYPE_4__*
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 8
  %67 = load %union.fw_self_id*, %union.fw_self_id** %3, align 8
  %68 = bitcast %union.fw_self_id* %67 to %struct.TYPE_4__*
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 4
  %71 = load %union.fw_self_id*, %union.fw_self_id** %3, align 8
  %72 = bitcast %union.fw_self_id* %71 to %struct.TYPE_4__*
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 3
  %74 = load i32, i32* %73, align 8
  %75 = load %union.fw_self_id*, %union.fw_self_id** %3, align 8
  %76 = bitcast %union.fw_self_id* %75 to %struct.TYPE_4__*
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 4
  %78 = load i32, i32* %77, align 4
  %79 = load %union.fw_self_id*, %union.fw_self_id** %3, align 8
  %80 = bitcast %union.fw_self_id* %79 to %struct.TYPE_4__*
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 5
  %82 = load i32, i32* %81, align 8
  %83 = load %union.fw_self_id*, %union.fw_self_id** %3, align 8
  %84 = bitcast %union.fw_self_id* %83 to %struct.TYPE_4__*
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 6
  %86 = load i32, i32* %85, align 4
  %87 = call i32 (i8*, i32, i32, ...) @printf(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i32 %66, i32 %70, i32 %74, i32 %78, i32 %82, i32 %86)
  br label %99

88:                                               ; preds = %55
  %89 = load %union.fw_self_id*, %union.fw_self_id** %3, align 8
  %90 = bitcast %union.fw_self_id* %89 to %struct.TYPE_5__*
  %91 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 8
  %93 = load %union.fw_self_id*, %union.fw_self_id** %3, align 8
  %94 = bitcast %union.fw_self_id* %93 to %struct.TYPE_5__*
  %95 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = trunc i64 %96 to i32
  %98 = call i32 (i8*, i32, i32, ...) @printf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0), i32 %92, i32 %97)
  br label %99

99:                                               ; preds = %88, %62
  br label %100

100:                                              ; preds = %99, %17
  br label %147

101:                                              ; preds = %1
  %102 = load %union.fw_self_id*, %union.fw_self_id** %3, align 8
  %103 = bitcast %union.fw_self_id* %102 to %struct.TYPE_6__*
  %104 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = load %union.fw_self_id*, %union.fw_self_id** %3, align 8
  %107 = bitcast %union.fw_self_id* %106 to %struct.TYPE_6__*
  %108 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = load %union.fw_self_id*, %union.fw_self_id** %3, align 8
  %111 = bitcast %union.fw_self_id* %110 to %struct.TYPE_6__*
  %112 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %111, i32 0, i32 2
  %113 = load i32, i32* %112, align 8
  %114 = load %union.fw_self_id*, %union.fw_self_id** %3, align 8
  %115 = bitcast %union.fw_self_id* %114 to %struct.TYPE_6__*
  %116 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %115, i32 0, i32 3
  %117 = load i32, i32* %116, align 4
  %118 = load %union.fw_self_id*, %union.fw_self_id** %3, align 8
  %119 = bitcast %union.fw_self_id* %118 to %struct.TYPE_6__*
  %120 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %119, i32 0, i32 4
  %121 = load i32, i32* %120, align 8
  %122 = load %union.fw_self_id*, %union.fw_self_id** %3, align 8
  %123 = bitcast %union.fw_self_id* %122 to %struct.TYPE_6__*
  %124 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %123, i32 0, i32 5
  %125 = load i32, i32* %124, align 4
  %126 = load %union.fw_self_id*, %union.fw_self_id** %3, align 8
  %127 = bitcast %union.fw_self_id* %126 to %struct.TYPE_6__*
  %128 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %127, i32 0, i32 6
  %129 = load i32, i32* %128, align 8
  %130 = load %union.fw_self_id*, %union.fw_self_id** %3, align 8
  %131 = bitcast %union.fw_self_id* %130 to %struct.TYPE_6__*
  %132 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %131, i32 0, i32 7
  %133 = load i32, i32* %132, align 4
  %134 = load %union.fw_self_id*, %union.fw_self_id** %3, align 8
  %135 = bitcast %union.fw_self_id* %134 to %struct.TYPE_6__*
  %136 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %135, i32 0, i32 8
  %137 = load i32, i32* %136, align 8
  %138 = load %union.fw_self_id*, %union.fw_self_id** %3, align 8
  %139 = bitcast %union.fw_self_id* %138 to %struct.TYPE_6__*
  %140 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %139, i32 0, i32 9
  %141 = load i32, i32* %140, align 4
  %142 = load %union.fw_self_id*, %union.fw_self_id** %3, align 8
  %143 = bitcast %union.fw_self_id* %142 to %struct.TYPE_6__*
  %144 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %143, i32 0, i32 10
  %145 = load i32, i32* %144, align 8
  %146 = call i32 (i8*, i32, i32, ...) @printf(i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.3, i64 0, i64 0), i32 %105, i32 %109, i32 %113, i32 %117, i32 %121, i32 %125, i32 %129, i32 %133, i32 %137, i32 %141, i32 %145)
  br label %147

147:                                              ; preds = %101, %100
  ret void
}

declare dso_local i32 @printf(i8*, i32, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
