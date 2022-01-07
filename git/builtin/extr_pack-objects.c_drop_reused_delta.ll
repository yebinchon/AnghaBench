; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_pack-objects.c_drop_reused_delta.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_pack-objects.c_drop_reused_delta.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.object_entry* }
%struct.object_entry = type { i32, i32, i32, %struct.TYPE_3__, i32, i64 }
%struct.TYPE_3__ = type { i32 }
%struct.object_info = type { i64*, i32* }

@to_pack = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@OBJECT_INFO_INIT = common dso_local global %struct.object_info zeroinitializer, align 8
@the_repository = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.object_entry*)* @drop_reused_delta to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @drop_reused_delta(%struct.object_entry* %0) #0 {
  %2 = alloca %struct.object_entry*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca %struct.object_info, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.object_entry*, align 8
  store %struct.object_entry* %0, %struct.object_entry** %2, align 8
  %8 = load %struct.object_entry*, %struct.object_entry** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @to_pack, i32 0, i32 0), align 8
  %9 = load %struct.object_entry*, %struct.object_entry** %2, align 8
  %10 = getelementptr inbounds %struct.object_entry, %struct.object_entry* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = sub nsw i32 %11, 1
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds %struct.object_entry, %struct.object_entry* %8, i64 %13
  %15 = getelementptr inbounds %struct.object_entry, %struct.object_entry* %14, i32 0, i32 1
  store i32* %15, i32** %3, align 8
  %16 = bitcast %struct.object_info* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %16, i8* align 8 bitcast (%struct.object_info* @OBJECT_INFO_INIT to i8*), i64 16, i1 false)
  br label %17

17:                                               ; preds = %39, %1
  %18 = load i32*, i32** %3, align 8
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %40

21:                                               ; preds = %17
  %22 = load %struct.object_entry*, %struct.object_entry** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @to_pack, i32 0, i32 0), align 8
  %23 = load i32*, i32** %3, align 8
  %24 = load i32, i32* %23, align 4
  %25 = sub i32 %24, 1
  %26 = zext i32 %25 to i64
  %27 = getelementptr inbounds %struct.object_entry, %struct.object_entry* %22, i64 %26
  store %struct.object_entry* %27, %struct.object_entry** %7, align 8
  %28 = load %struct.object_entry*, %struct.object_entry** %7, align 8
  %29 = load %struct.object_entry*, %struct.object_entry** %2, align 8
  %30 = icmp eq %struct.object_entry* %28, %29
  br i1 %30, label %31, label %36

31:                                               ; preds = %21
  %32 = load %struct.object_entry*, %struct.object_entry** %7, align 8
  %33 = getelementptr inbounds %struct.object_entry, %struct.object_entry* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 8
  %35 = load i32*, i32** %3, align 8
  store i32 %34, i32* %35, align 4
  br label %39

36:                                               ; preds = %21
  %37 = load %struct.object_entry*, %struct.object_entry** %7, align 8
  %38 = getelementptr inbounds %struct.object_entry, %struct.object_entry* %37, i32 0, i32 2
  store i32* %38, i32** %3, align 8
  br label %39

39:                                               ; preds = %36, %31
  br label %17

40:                                               ; preds = %17
  %41 = load %struct.object_entry*, %struct.object_entry** %2, align 8
  %42 = call i32 @SET_DELTA(%struct.object_entry* %41, i32* null)
  %43 = load %struct.object_entry*, %struct.object_entry** %2, align 8
  %44 = getelementptr inbounds %struct.object_entry, %struct.object_entry* %43, i32 0, i32 5
  store i64 0, i64* %44, align 8
  %45 = getelementptr inbounds %struct.object_info, %struct.object_info* %4, i32 0, i32 0
  store i64* %6, i64** %45, align 8
  %46 = getelementptr inbounds %struct.object_info, %struct.object_info* %4, i32 0, i32 1
  store i32* %5, i32** %46, align 8
  %47 = load i32, i32* @the_repository, align 4
  %48 = load %struct.object_entry*, %struct.object_entry** %2, align 8
  %49 = call i32 @IN_PACK(%struct.object_entry* %48)
  %50 = load %struct.object_entry*, %struct.object_entry** %2, align 8
  %51 = getelementptr inbounds %struct.object_entry, %struct.object_entry* %50, i32 0, i32 4
  %52 = load i32, i32* %51, align 8
  %53 = call i64 @packed_object_info(i32 %47, i32 %49, i32 %52, %struct.object_info* %4)
  %54 = icmp slt i64 %53, 0
  br i1 %54, label %55, label %63

55:                                               ; preds = %40
  %56 = load %struct.object_entry*, %struct.object_entry** %2, align 8
  %57 = load i32, i32* @the_repository, align 4
  %58 = load %struct.object_entry*, %struct.object_entry** %2, align 8
  %59 = getelementptr inbounds %struct.object_entry, %struct.object_entry* %58, i32 0, i32 3
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 0
  %61 = call i32 @oid_object_info(i32 %57, i32* %60, i64* %6)
  %62 = call i32 @oe_set_type(%struct.object_entry* %56, i32 %61)
  br label %67

63:                                               ; preds = %40
  %64 = load %struct.object_entry*, %struct.object_entry** %2, align 8
  %65 = load i32, i32* %5, align 4
  %66 = call i32 @oe_set_type(%struct.object_entry* %64, i32 %65)
  br label %67

67:                                               ; preds = %63, %55
  %68 = load %struct.object_entry*, %struct.object_entry** %2, align 8
  %69 = load i64, i64* %6, align 8
  %70 = call i32 @SET_SIZE(%struct.object_entry* %68, i64 %69)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @SET_DELTA(%struct.object_entry*, i32*) #2

declare dso_local i64 @packed_object_info(i32, i32, i32, %struct.object_info*) #2

declare dso_local i32 @IN_PACK(%struct.object_entry*) #2

declare dso_local i32 @oe_set_type(%struct.object_entry*, i32) #2

declare dso_local i32 @oid_object_info(i32, i32*, i64*) #2

declare dso_local i32 @SET_SIZE(%struct.object_entry*, i64) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
