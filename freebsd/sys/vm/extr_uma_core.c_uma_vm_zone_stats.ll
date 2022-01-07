; ModuleID = '/home/carl/AnghaBench/freebsd/sys/vm/extr_uma_core.c_uma_vm_zone_stats.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/vm/extr_uma_core.c_uma_vm_zone_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uma_type_header = type { i32, i32, i8*, i8*, i8*, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_8__*, i32, i32, i32, i32, i32, %struct.TYPE_7__* }
%struct.TYPE_8__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_7__ = type { i64 }
%struct.sbuf = type { i32 }
%struct.uma_percpu_stat = type { i32, i32, i32 }
%struct.TYPE_9__ = type { i64 }

@vm_ndomains = common dso_local global i32 0, align 4
@mp_maxid = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uma_type_header*, %struct.TYPE_6__*, %struct.sbuf*, %struct.uma_percpu_stat*, i32)* @uma_vm_zone_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @uma_vm_zone_stats(%struct.uma_type_header* %0, %struct.TYPE_6__* %1, %struct.sbuf* %2, %struct.uma_percpu_stat* %3, i32 %4) #0 {
  %6 = alloca %struct.uma_type_header*, align 8
  %7 = alloca %struct.TYPE_6__*, align 8
  %8 = alloca %struct.sbuf*, align 8
  %9 = alloca %struct.uma_percpu_stat*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_7__*, align 8
  %12 = alloca %struct.TYPE_9__*, align 8
  %13 = alloca %struct.TYPE_8__*, align 8
  %14 = alloca i32, align 4
  store %struct.uma_type_header* %0, %struct.uma_type_header** %6, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %7, align 8
  store %struct.sbuf* %2, %struct.sbuf** %8, align 8
  store %struct.uma_percpu_stat* %3, %struct.uma_percpu_stat** %9, align 8
  store i32 %4, i32* %10, align 4
  store i32 0, i32* %14, align 4
  br label %15

15:                                               ; preds = %35, %5
  %16 = load i32, i32* %14, align 4
  %17 = load i32, i32* @vm_ndomains, align 4
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %19, label %38

19:                                               ; preds = %15
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 6
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %21, align 8
  %23 = load i32, i32* %14, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i64 %24
  store %struct.TYPE_7__* %25, %struct.TYPE_7__** %11, align 8
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.uma_type_header*, %struct.uma_type_header** %6, align 8
  %30 = getelementptr inbounds %struct.uma_type_header, %struct.uma_type_header* %29, i32 0, i32 5
  %31 = load i32, i32* %30, align 8
  %32 = sext i32 %31 to i64
  %33 = add nsw i64 %32, %28
  %34 = trunc i64 %33 to i32
  store i32 %34, i32* %30, align 8
  br label %35

35:                                               ; preds = %19
  %36 = load i32, i32* %14, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %14, align 4
  br label %15

38:                                               ; preds = %15
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 5
  %41 = load i32, i32* %40, align 8
  %42 = call i8* @counter_u64_fetch(i32 %41)
  %43 = load %struct.uma_type_header*, %struct.uma_type_header** %6, align 8
  %44 = getelementptr inbounds %struct.uma_type_header, %struct.uma_type_header* %43, i32 0, i32 4
  store i8* %42, i8** %44, align 8
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 4
  %47 = load i32, i32* %46, align 4
  %48 = call i8* @counter_u64_fetch(i32 %47)
  %49 = load %struct.uma_type_header*, %struct.uma_type_header** %6, align 8
  %50 = getelementptr inbounds %struct.uma_type_header, %struct.uma_type_header* %49, i32 0, i32 3
  store i8* %48, i8** %50, align 8
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 3
  %53 = load i32, i32* %52, align 8
  %54 = call i8* @counter_u64_fetch(i32 %53)
  %55 = load %struct.uma_type_header*, %struct.uma_type_header** %6, align 8
  %56 = getelementptr inbounds %struct.uma_type_header, %struct.uma_type_header* %55, i32 0, i32 2
  store i8* %54, i8** %56, align 8
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.uma_type_header*, %struct.uma_type_header** %6, align 8
  %61 = getelementptr inbounds %struct.uma_type_header, %struct.uma_type_header* %60, i32 0, i32 1
  store i32 %59, i32* %61, align 4
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 8
  %65 = load %struct.uma_type_header*, %struct.uma_type_header** %6, align 8
  %66 = getelementptr inbounds %struct.uma_type_header, %struct.uma_type_header* %65, i32 0, i32 0
  store i32 %64, i32* %66, align 8
  store i32 0, i32* %14, align 4
  br label %67

67:                                               ; preds = %168, %38
  %68 = load i32, i32* %14, align 4
  %69 = load i32, i32* @mp_maxid, align 4
  %70 = add nsw i32 %69, 1
  %71 = icmp slt i32 %68, %70
  br i1 %71, label %72, label %171

72:                                               ; preds = %67
  %73 = load %struct.uma_percpu_stat*, %struct.uma_percpu_stat** %9, align 8
  %74 = load i32, i32* %14, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds %struct.uma_percpu_stat, %struct.uma_percpu_stat* %73, i64 %75
  %77 = call i32 @bzero(%struct.uma_percpu_stat* %76, i32 12)
  %78 = load i32, i32* %10, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %84, label %80

80:                                               ; preds = %72
  %81 = load i32, i32* %14, align 4
  %82 = call i64 @CPU_ABSENT(i32 %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %80, %72
  br label %168

85:                                               ; preds = %80
  %86 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i32 0, i32 0
  %88 = load %struct.TYPE_8__*, %struct.TYPE_8__** %87, align 8
  %89 = load i32, i32* %14, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %88, i64 %90
  store %struct.TYPE_8__* %91, %struct.TYPE_8__** %13, align 8
  %92 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %93 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %92, i32 0, i32 4
  %94 = call i64 @atomic_load_ptr(i32* %93)
  %95 = inttoptr i64 %94 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %95, %struct.TYPE_9__** %12, align 8
  %96 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %97 = icmp ne %struct.TYPE_9__* %96, null
  br i1 %97, label %98, label %111

98:                                               ; preds = %85
  %99 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %100 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = load %struct.uma_percpu_stat*, %struct.uma_percpu_stat** %9, align 8
  %103 = load i32, i32* %14, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds %struct.uma_percpu_stat, %struct.uma_percpu_stat* %102, i64 %104
  %106 = getelementptr inbounds %struct.uma_percpu_stat, %struct.uma_percpu_stat* %105, i32 0, i32 2
  %107 = load i32, i32* %106, align 4
  %108 = sext i32 %107 to i64
  %109 = add nsw i64 %108, %101
  %110 = trunc i64 %109 to i32
  store i32 %110, i32* %106, align 4
  br label %111

111:                                              ; preds = %98, %85
  %112 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %113 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %112, i32 0, i32 3
  %114 = call i64 @atomic_load_ptr(i32* %113)
  %115 = inttoptr i64 %114 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %115, %struct.TYPE_9__** %12, align 8
  %116 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %117 = icmp ne %struct.TYPE_9__* %116, null
  br i1 %117, label %118, label %131

118:                                              ; preds = %111
  %119 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %120 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %119, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  %122 = load %struct.uma_percpu_stat*, %struct.uma_percpu_stat** %9, align 8
  %123 = load i32, i32* %14, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds %struct.uma_percpu_stat, %struct.uma_percpu_stat* %122, i64 %124
  %126 = getelementptr inbounds %struct.uma_percpu_stat, %struct.uma_percpu_stat* %125, i32 0, i32 2
  %127 = load i32, i32* %126, align 4
  %128 = sext i32 %127 to i64
  %129 = add nsw i64 %128, %121
  %130 = trunc i64 %129 to i32
  store i32 %130, i32* %126, align 4
  br label %131

131:                                              ; preds = %118, %111
  %132 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %133 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %132, i32 0, i32 2
  %134 = call i64 @atomic_load_ptr(i32* %133)
  %135 = inttoptr i64 %134 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %135, %struct.TYPE_9__** %12, align 8
  %136 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %137 = icmp ne %struct.TYPE_9__* %136, null
  br i1 %137, label %138, label %151

138:                                              ; preds = %131
  %139 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %140 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %139, i32 0, i32 0
  %141 = load i64, i64* %140, align 8
  %142 = load %struct.uma_percpu_stat*, %struct.uma_percpu_stat** %9, align 8
  %143 = load i32, i32* %14, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds %struct.uma_percpu_stat, %struct.uma_percpu_stat* %142, i64 %144
  %146 = getelementptr inbounds %struct.uma_percpu_stat, %struct.uma_percpu_stat* %145, i32 0, i32 2
  %147 = load i32, i32* %146, align 4
  %148 = sext i32 %147 to i64
  %149 = add nsw i64 %148, %141
  %150 = trunc i64 %149 to i32
  store i32 %150, i32* %146, align 4
  br label %151

151:                                              ; preds = %138, %131
  %152 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %153 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %152, i32 0, i32 1
  %154 = load i32, i32* %153, align 4
  %155 = load %struct.uma_percpu_stat*, %struct.uma_percpu_stat** %9, align 8
  %156 = load i32, i32* %14, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds %struct.uma_percpu_stat, %struct.uma_percpu_stat* %155, i64 %157
  %159 = getelementptr inbounds %struct.uma_percpu_stat, %struct.uma_percpu_stat* %158, i32 0, i32 1
  store i32 %154, i32* %159, align 4
  %160 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %161 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 4
  %163 = load %struct.uma_percpu_stat*, %struct.uma_percpu_stat** %9, align 8
  %164 = load i32, i32* %14, align 4
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds %struct.uma_percpu_stat, %struct.uma_percpu_stat* %163, i64 %165
  %167 = getelementptr inbounds %struct.uma_percpu_stat, %struct.uma_percpu_stat* %166, i32 0, i32 0
  store i32 %162, i32* %167, align 4
  br label %168

168:                                              ; preds = %151, %84
  %169 = load i32, i32* %14, align 4
  %170 = add nsw i32 %169, 1
  store i32 %170, i32* %14, align 4
  br label %67

171:                                              ; preds = %67
  ret void
}

declare dso_local i8* @counter_u64_fetch(i32) #1

declare dso_local i32 @bzero(%struct.uma_percpu_stat*, i32) #1

declare dso_local i64 @CPU_ABSENT(i32) #1

declare dso_local i64 @atomic_load_ptr(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
