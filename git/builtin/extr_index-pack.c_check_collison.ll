; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_index-pack.c_check_collison.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_index-pack.c_check_collison.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.object_entry = type { i64, i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.compare_data = type { i32, i32, %struct.object_entry* }

@big_file_threshold = common dso_local global i64 0, align 8
@OBJ_BLOB = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [31 x i8] c"SHA1 COLLISION FOUND WITH %s !\00", align 1
@compare_objects = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.object_entry*)* @check_collison to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_collison(%struct.object_entry* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.object_entry*, align 8
  %4 = alloca %struct.compare_data, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store %struct.object_entry* %0, %struct.object_entry** %3, align 8
  %7 = load %struct.object_entry*, %struct.object_entry** %3, align 8
  %8 = getelementptr inbounds %struct.object_entry, %struct.object_entry* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @big_file_threshold, align 8
  %11 = icmp ule i64 %9, %10
  br i1 %11, label %18, label %12

12:                                               ; preds = %1
  %13 = load %struct.object_entry*, %struct.object_entry** %3, align 8
  %14 = getelementptr inbounds %struct.object_entry, %struct.object_entry* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @OBJ_BLOB, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %12, %1
  store i32 -1, i32* %2, align 4
  br label %62

19:                                               ; preds = %12
  %20 = call i32 @memset(%struct.compare_data* %4, i32 0, i32 16)
  %21 = load %struct.object_entry*, %struct.object_entry** %3, align 8
  %22 = getelementptr inbounds %struct.compare_data, %struct.compare_data* %4, i32 0, i32 2
  store %struct.object_entry* %21, %struct.object_entry** %22, align 8
  %23 = load %struct.object_entry*, %struct.object_entry** %3, align 8
  %24 = getelementptr inbounds %struct.object_entry, %struct.object_entry* %23, i32 0, i32 2
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = call i32 @open_istream(i32* %25, i32* %5, i64* %6, i32* null)
  %27 = getelementptr inbounds %struct.compare_data, %struct.compare_data* %4, i32 0, i32 1
  store i32 %26, i32* %27, align 4
  %28 = getelementptr inbounds %struct.compare_data, %struct.compare_data* %4, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %19
  store i32 -1, i32* %2, align 4
  br label %62

32:                                               ; preds = %19
  %33 = load i64, i64* %6, align 8
  %34 = load %struct.object_entry*, %struct.object_entry** %3, align 8
  %35 = getelementptr inbounds %struct.object_entry, %struct.object_entry* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %33, %36
  br i1 %37, label %45, label %38

38:                                               ; preds = %32
  %39 = load i32, i32* %5, align 4
  %40 = zext i32 %39 to i64
  %41 = load %struct.object_entry*, %struct.object_entry** %3, align 8
  %42 = getelementptr inbounds %struct.object_entry, %struct.object_entry* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %40, %43
  br i1 %44, label %45, label %52

45:                                               ; preds = %38, %32
  %46 = call i32 @_(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %47 = load %struct.object_entry*, %struct.object_entry** %3, align 8
  %48 = getelementptr inbounds %struct.object_entry, %struct.object_entry* %47, i32 0, i32 2
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = call i32 @oid_to_hex(i32* %49)
  %51 = call i32 @die(i32 %46, i32 %50)
  br label %52

52:                                               ; preds = %45, %38
  %53 = load %struct.object_entry*, %struct.object_entry** %3, align 8
  %54 = load i32, i32* @compare_objects, align 4
  %55 = call i32 @unpack_data(%struct.object_entry* %53, i32 %54, %struct.compare_data* %4)
  %56 = getelementptr inbounds %struct.compare_data, %struct.compare_data* %4, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @close_istream(i32 %57)
  %59 = getelementptr inbounds %struct.compare_data, %struct.compare_data* %4, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @free(i32 %60)
  store i32 0, i32* %2, align 4
  br label %62

62:                                               ; preds = %52, %31, %18
  %63 = load i32, i32* %2, align 4
  ret i32 %63
}

declare dso_local i32 @memset(%struct.compare_data*, i32, i32) #1

declare dso_local i32 @open_istream(i32*, i32*, i64*, i32*) #1

declare dso_local i32 @die(i32, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @oid_to_hex(i32*) #1

declare dso_local i32 @unpack_data(%struct.object_entry*, i32, %struct.compare_data*) #1

declare dso_local i32 @close_istream(i32) #1

declare dso_local i32 @free(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
