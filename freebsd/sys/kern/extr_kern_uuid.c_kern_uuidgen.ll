; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_uuid.c_kern_uuidgen.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_uuid.c_kern_uuidgen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uuid_private = type { i64*, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i64 }
%struct.uuid = type { i32 }

@uuid_mutex = common dso_local global i32 0, align 4
@uuid_last = common dso_local global %struct.uuid_private zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.uuid* @kern_uuidgen(%struct.uuid* %0, i64 %1) #0 {
  %3 = alloca %struct.uuid*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.uuid_private, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.uuid* %0, %struct.uuid** %3, align 8
  store i64 %1, i64* %4, align 8
  %8 = call i32 @mtx_lock(i32* @uuid_mutex)
  %9 = getelementptr inbounds %struct.uuid_private, %struct.uuid_private* %5, i32 0, i32 0
  %10 = load i64*, i64** %9, align 8
  %11 = call i32 @uuid_node(i64* %10)
  %12 = call i64 (...) @uuid_time()
  store i64 %12, i64* %6, align 8
  %13 = load i64, i64* getelementptr inbounds (%struct.uuid_private, %struct.uuid_private* @uuid_last, i32 0, i32 2, i32 0), align 8
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %42, label %15

15:                                               ; preds = %2
  %16 = load i64*, i64** getelementptr inbounds (%struct.uuid_private, %struct.uuid_private* @uuid_last, i32 0, i32 0), align 8
  %17 = getelementptr inbounds i64, i64* %16, i64 0
  %18 = load i64, i64* %17, align 8
  %19 = getelementptr inbounds %struct.uuid_private, %struct.uuid_private* %5, i32 0, i32 0
  %20 = load i64*, i64** %19, align 8
  %21 = getelementptr inbounds i64, i64* %20, i64 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %18, %22
  br i1 %23, label %42, label %24

24:                                               ; preds = %15
  %25 = load i64*, i64** getelementptr inbounds (%struct.uuid_private, %struct.uuid_private* @uuid_last, i32 0, i32 0), align 8
  %26 = getelementptr inbounds i64, i64* %25, i64 1
  %27 = load i64, i64* %26, align 8
  %28 = getelementptr inbounds %struct.uuid_private, %struct.uuid_private* %5, i32 0, i32 0
  %29 = load i64*, i64** %28, align 8
  %30 = getelementptr inbounds i64, i64* %29, i64 1
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %27, %31
  br i1 %32, label %42, label %33

33:                                               ; preds = %24
  %34 = load i64*, i64** getelementptr inbounds (%struct.uuid_private, %struct.uuid_private* @uuid_last, i32 0, i32 0), align 8
  %35 = getelementptr inbounds i64, i64* %34, i64 2
  %36 = load i64, i64* %35, align 8
  %37 = getelementptr inbounds %struct.uuid_private, %struct.uuid_private* %5, i32 0, i32 0
  %38 = load i64*, i64** %37, align 8
  %39 = getelementptr inbounds i64, i64* %38, i64 2
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %36, %40
  br i1 %41, label %42, label %47

42:                                               ; preds = %33, %24, %15, %2
  %43 = call i64 (...) @arc4random()
  %44 = trunc i64 %43 to i32
  %45 = and i32 %44, 16383
  %46 = getelementptr inbounds %struct.uuid_private, %struct.uuid_private* %5, i32 0, i32 1
  store i32 %45, i32* %46, align 8
  br label %60

47:                                               ; preds = %33
  %48 = load i64, i64* getelementptr inbounds (%struct.uuid_private, %struct.uuid_private* @uuid_last, i32 0, i32 2, i32 0), align 8
  %49 = load i64, i64* %6, align 8
  %50 = icmp uge i64 %48, %49
  br i1 %50, label %51, label %56

51:                                               ; preds = %47
  %52 = load i32, i32* getelementptr inbounds (%struct.uuid_private, %struct.uuid_private* @uuid_last, i32 0, i32 1), align 8
  %53 = add nsw i32 %52, 1
  %54 = and i32 %53, 16383
  %55 = getelementptr inbounds %struct.uuid_private, %struct.uuid_private* %5, i32 0, i32 1
  store i32 %54, i32* %55, align 8
  br label %59

56:                                               ; preds = %47
  %57 = load i32, i32* getelementptr inbounds (%struct.uuid_private, %struct.uuid_private* @uuid_last, i32 0, i32 1), align 8
  %58 = getelementptr inbounds %struct.uuid_private, %struct.uuid_private* %5, i32 0, i32 1
  store i32 %57, i32* %58, align 8
  br label %59

59:                                               ; preds = %56, %51
  br label %60

60:                                               ; preds = %59, %42
  %61 = bitcast %struct.uuid_private* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 bitcast (%struct.uuid_private* @uuid_last to i8*), i8* align 8 %61, i64 40, i1 false)
  %62 = load i64, i64* %6, align 8
  %63 = load i64, i64* %4, align 8
  %64 = add i64 %62, %63
  %65 = sub i64 %64, 1
  %66 = and i64 %65, 1152921504606846975
  store i64 %66, i64* getelementptr inbounds (%struct.uuid_private, %struct.uuid_private* @uuid_last, i32 0, i32 2, i32 0), align 8
  %67 = call i32 @mtx_unlock(i32* @uuid_mutex)
  %68 = getelementptr inbounds %struct.uuid_private, %struct.uuid_private* %5, i32 0, i32 1
  %69 = load i32, i32* %68, align 8
  %70 = or i32 %69, 32768
  %71 = call i32 @htobe16(i32 %70)
  %72 = getelementptr inbounds %struct.uuid_private, %struct.uuid_private* %5, i32 0, i32 1
  store i32 %71, i32* %72, align 8
  store i64 0, i64* %7, align 8
  br label %73

73:                                               ; preds = %104, %60
  %74 = load i64, i64* %7, align 8
  %75 = load i64, i64* %4, align 8
  %76 = icmp ult i64 %74, %75
  br i1 %76, label %77, label %107

77:                                               ; preds = %73
  %78 = load i64, i64* %6, align 8
  %79 = getelementptr inbounds %struct.uuid_private, %struct.uuid_private* %5, i32 0, i32 2
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i32 0, i32 2
  store i64 %78, i64* %81, align 8
  %82 = load i64, i64* %6, align 8
  %83 = lshr i64 %82, 32
  %84 = trunc i64 %83 to i32
  %85 = getelementptr inbounds %struct.uuid_private, %struct.uuid_private* %5, i32 0, i32 2
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 1
  %87 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %86, i32 0, i32 0
  store i32 %84, i32* %87, align 8
  %88 = load i64, i64* %6, align 8
  %89 = lshr i64 %88, 48
  %90 = trunc i64 %89 to i32
  %91 = and i32 %90, 4095
  %92 = or i32 %91, 4096
  %93 = getelementptr inbounds %struct.uuid_private, %struct.uuid_private* %5, i32 0, i32 2
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 1
  %95 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %94, i32 0, i32 1
  store i32 %92, i32* %95, align 4
  %96 = load %struct.uuid*, %struct.uuid** %3, align 8
  %97 = load i64, i64* %7, align 8
  %98 = getelementptr inbounds %struct.uuid, %struct.uuid* %96, i64 %97
  %99 = bitcast %struct.uuid_private* %5 to %struct.uuid*
  %100 = bitcast %struct.uuid* %98 to i8*
  %101 = bitcast %struct.uuid* %99 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %100, i8* align 8 %101, i64 4, i1 false)
  %102 = load i64, i64* %6, align 8
  %103 = add i64 %102, 1
  store i64 %103, i64* %6, align 8
  br label %104

104:                                              ; preds = %77
  %105 = load i64, i64* %7, align 8
  %106 = add i64 %105, 1
  store i64 %106, i64* %7, align 8
  br label %73

107:                                              ; preds = %73
  %108 = load %struct.uuid*, %struct.uuid** %3, align 8
  ret %struct.uuid* %108
}

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @uuid_node(i64*) #1

declare dso_local i64 @uuid_time(...) #1

declare dso_local i64 @arc4random(...) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @htobe16(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
