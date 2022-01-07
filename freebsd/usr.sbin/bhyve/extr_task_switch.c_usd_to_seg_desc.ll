; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_task_switch.c_usd_to_seg_desc.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_task_switch.c_usd_to_seg_desc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.user_segment_descriptor = type { i32, i32, i32, i32, i32, i32 }
%struct.seg_desc = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast ({ i64, i32 } (%struct.user_segment_descriptor*)* @usd_to_seg_desc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal { i64, i32 } @usd_to_seg_desc(%struct.user_segment_descriptor* %0) #0 {
  %2 = alloca %struct.seg_desc, align 4
  %3 = alloca %struct.user_segment_descriptor*, align 8
  %4 = alloca { i64, i32 }, align 8
  store %struct.user_segment_descriptor* %0, %struct.user_segment_descriptor** %3, align 8
  %5 = load %struct.user_segment_descriptor*, %struct.user_segment_descriptor** %3, align 8
  %6 = call i64 @USD_GETBASE(%struct.user_segment_descriptor* %5)
  %7 = trunc i64 %6 to i32
  %8 = getelementptr inbounds %struct.seg_desc, %struct.seg_desc* %2, i32 0, i32 0
  store i32 %7, i32* %8, align 4
  %9 = load %struct.user_segment_descriptor*, %struct.user_segment_descriptor** %3, align 8
  %10 = getelementptr inbounds %struct.user_segment_descriptor, %struct.user_segment_descriptor* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %19

13:                                               ; preds = %1
  %14 = load %struct.user_segment_descriptor*, %struct.user_segment_descriptor** %3, align 8
  %15 = call i32 @USD_GETLIMIT(%struct.user_segment_descriptor* %14)
  %16 = shl i32 %15, 12
  %17 = or i32 %16, 4095
  %18 = getelementptr inbounds %struct.seg_desc, %struct.seg_desc* %2, i32 0, i32 1
  store i32 %17, i32* %18, align 4
  br label %23

19:                                               ; preds = %1
  %20 = load %struct.user_segment_descriptor*, %struct.user_segment_descriptor** %3, align 8
  %21 = call i32 @USD_GETLIMIT(%struct.user_segment_descriptor* %20)
  %22 = getelementptr inbounds %struct.seg_desc, %struct.seg_desc* %2, i32 0, i32 1
  store i32 %21, i32* %22, align 4
  br label %23

23:                                               ; preds = %19, %13
  %24 = load %struct.user_segment_descriptor*, %struct.user_segment_descriptor** %3, align 8
  %25 = getelementptr inbounds %struct.user_segment_descriptor, %struct.user_segment_descriptor* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.user_segment_descriptor*, %struct.user_segment_descriptor** %3, align 8
  %28 = getelementptr inbounds %struct.user_segment_descriptor, %struct.user_segment_descriptor* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = shl i32 %29, 5
  %31 = or i32 %26, %30
  %32 = load %struct.user_segment_descriptor*, %struct.user_segment_descriptor** %3, align 8
  %33 = getelementptr inbounds %struct.user_segment_descriptor, %struct.user_segment_descriptor* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 4
  %35 = shl i32 %34, 7
  %36 = or i32 %31, %35
  %37 = getelementptr inbounds %struct.seg_desc, %struct.seg_desc* %2, i32 0, i32 2
  store i32 %36, i32* %37, align 4
  %38 = load %struct.user_segment_descriptor*, %struct.user_segment_descriptor** %3, align 8
  %39 = getelementptr inbounds %struct.user_segment_descriptor, %struct.user_segment_descriptor* %38, i32 0, i32 4
  %40 = load i32, i32* %39, align 4
  %41 = shl i32 %40, 12
  %42 = getelementptr inbounds %struct.seg_desc, %struct.seg_desc* %2, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = or i32 %43, %41
  store i32 %44, i32* %42, align 4
  %45 = load %struct.user_segment_descriptor*, %struct.user_segment_descriptor** %3, align 8
  %46 = getelementptr inbounds %struct.user_segment_descriptor, %struct.user_segment_descriptor* %45, i32 0, i32 5
  %47 = load i32, i32* %46, align 4
  %48 = shl i32 %47, 14
  %49 = getelementptr inbounds %struct.seg_desc, %struct.seg_desc* %2, i32 0, i32 2
  %50 = load i32, i32* %49, align 4
  %51 = or i32 %50, %48
  store i32 %51, i32* %49, align 4
  %52 = load %struct.user_segment_descriptor*, %struct.user_segment_descriptor** %3, align 8
  %53 = getelementptr inbounds %struct.user_segment_descriptor, %struct.user_segment_descriptor* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = shl i32 %54, 15
  %56 = getelementptr inbounds %struct.seg_desc, %struct.seg_desc* %2, i32 0, i32 2
  %57 = load i32, i32* %56, align 4
  %58 = or i32 %57, %55
  store i32 %58, i32* %56, align 4
  %59 = bitcast { i64, i32 }* %4 to i8*
  %60 = bitcast %struct.seg_desc* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %59, i8* align 4 %60, i64 12, i1 false)
  %61 = load { i64, i32 }, { i64, i32 }* %4, align 8
  ret { i64, i32 } %61
}

declare dso_local i64 @USD_GETBASE(%struct.user_segment_descriptor*) #1

declare dso_local i32 @USD_GETLIMIT(%struct.user_segment_descriptor*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
