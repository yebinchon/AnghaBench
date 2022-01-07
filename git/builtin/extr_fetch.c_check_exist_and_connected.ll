; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_fetch.c_check_exist_and_connected.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_fetch.c_check_exist_and_connected.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.check_connected_options = type { i32 }
%struct.ref = type { i32, %struct.ref* }

@CHECK_CONNECTED_INIT = common dso_local global %struct.check_connected_options zeroinitializer, align 4
@deepen = common dso_local global i64 0, align 8
@iterate_ref_map = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ref*)* @check_exist_and_connected to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_exist_and_connected(%struct.ref* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ref*, align 8
  %4 = alloca %struct.ref*, align 8
  %5 = alloca %struct.check_connected_options, align 4
  %6 = alloca %struct.ref*, align 8
  store %struct.ref* %0, %struct.ref** %3, align 8
  %7 = load %struct.ref*, %struct.ref** %3, align 8
  store %struct.ref* %7, %struct.ref** %4, align 8
  %8 = bitcast %struct.check_connected_options* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %8, i8* align 4 bitcast (%struct.check_connected_options* @CHECK_CONNECTED_INIT to i8*), i64 4, i1 false)
  %9 = load i64, i64* @deepen, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %32

12:                                               ; preds = %1
  %13 = load %struct.ref*, %struct.ref** %4, align 8
  store %struct.ref* %13, %struct.ref** %6, align 8
  br label %14

14:                                               ; preds = %24, %12
  %15 = load %struct.ref*, %struct.ref** %6, align 8
  %16 = icmp ne %struct.ref* %15, null
  br i1 %16, label %17, label %28

17:                                               ; preds = %14
  %18 = load %struct.ref*, %struct.ref** %6, align 8
  %19 = getelementptr inbounds %struct.ref, %struct.ref* %18, i32 0, i32 0
  %20 = call i32 @has_object_file(i32* %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %17
  store i32 -1, i32* %2, align 4
  br label %32

23:                                               ; preds = %17
  br label %24

24:                                               ; preds = %23
  %25 = load %struct.ref*, %struct.ref** %6, align 8
  %26 = getelementptr inbounds %struct.ref, %struct.ref* %25, i32 0, i32 1
  %27 = load %struct.ref*, %struct.ref** %26, align 8
  store %struct.ref* %27, %struct.ref** %6, align 8
  br label %14

28:                                               ; preds = %14
  %29 = getelementptr inbounds %struct.check_connected_options, %struct.check_connected_options* %5, i32 0, i32 0
  store i32 1, i32* %29, align 4
  %30 = load i32, i32* @iterate_ref_map, align 4
  %31 = call i32 @check_connected(i32 %30, %struct.ref** %4, %struct.check_connected_options* %5)
  store i32 %31, i32* %2, align 4
  br label %32

32:                                               ; preds = %28, %22, %11
  %33 = load i32, i32* %2, align 4
  ret i32 %33
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @has_object_file(i32*) #2

declare dso_local i32 @check_connected(i32, %struct.ref**, %struct.check_connected_options*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
