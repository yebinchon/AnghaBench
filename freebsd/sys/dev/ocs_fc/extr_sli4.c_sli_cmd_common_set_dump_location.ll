; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ocs_fc/extr_sli4.c_sli_cmd_common_set_dump_location.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ocs_fc/extr_sli4.c_sli_cmd_common_set_dump_location.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64 }
%struct.TYPE_11__ = type { i64, i32 }
%struct.TYPE_10__ = type { i64, i64, i64, i8*, i8*, i8*, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i64, i64, i32, i32 }

@SLI4_PORT_TYPE_FC = common dso_local global i64 0, align 8
@SLI4_OPC_COMMON_SET_DUMP_LOCATION = common dso_local global i32 0, align 4
@SLI4_SUBSYSTEM_COMMON = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sli_cmd_common_set_dump_location(%struct.TYPE_9__* %0, i8* %1, i64 %2, i8* %3, i8* %4, %struct.TYPE_11__* %5, i8* %6) #0 {
  %8 = alloca %struct.TYPE_9__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca %struct.TYPE_11__*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca %struct.TYPE_10__*, align 8
  %16 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %8, align 8
  store i8* %1, i8** %9, align 8
  store i64 %2, i64* %10, align 8
  store i8* %3, i8** %11, align 8
  store i8* %4, i8** %12, align 8
  store %struct.TYPE_11__* %5, %struct.TYPE_11__** %13, align 8
  store i8* %6, i8** %14, align 8
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %15, align 8
  store i32 0, i32* %16, align 4
  %17 = load i64, i64* @SLI4_PORT_TYPE_FC, align 8
  %18 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %19 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp eq i64 %17, %20
  br i1 %21, label %22, label %27

22:                                               ; preds = %7
  %23 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %24 = load i8*, i8** %9, align 8
  %25 = load i64, i64* %10, align 8
  %26 = call i32 @sli_cmd_sli_config(%struct.TYPE_9__* %23, i8* %24, i64 %25, i32 80, i32* null)
  store i32 %26, i32* %16, align 4
  br label %27

27:                                               ; preds = %22, %7
  %28 = load i8*, i8** %9, align 8
  %29 = bitcast i8* %28 to i8**
  %30 = load i32, i32* %16, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i8*, i8** %29, i64 %31
  %33 = bitcast i8** %32 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %33, %struct.TYPE_10__** %15, align 8
  %34 = load i32, i32* @SLI4_OPC_COMMON_SET_DUMP_LOCATION, align 4
  %35 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %36 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %35, i32 0, i32 6
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 4
  store i32 %34, i32* %37, align 4
  %38 = load i32, i32* @SLI4_SUBSYSTEM_COMMON, align 4
  %39 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %40 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %39, i32 0, i32 6
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 3
  store i32 %38, i32* %41, align 8
  %42 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %43 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %42, i32 0, i32 6
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 0
  store i32 76, i32* %44, align 8
  %45 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %46 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %45, i32 0, i32 6
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 2
  store i64 0, i64* %47, align 8
  %48 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %49 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %48, i32 0, i32 6
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 1
  store i64 0, i64* %50, align 8
  %51 = load i8*, i8** %12, align 8
  %52 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %53 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %52, i32 0, i32 5
  store i8* %51, i8** %53, align 8
  %54 = load i8*, i8** %11, align 8
  %55 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %56 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %55, i32 0, i32 4
  store i8* %54, i8** %56, align 8
  %57 = load i8*, i8** %14, align 8
  %58 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %59 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %58, i32 0, i32 3
  store i8* %57, i8** %59, align 8
  %60 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %61 = icmp ne %struct.TYPE_11__* %60, null
  br i1 %61, label %62, label %80

62:                                               ; preds = %27
  %63 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %64 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 8
  %66 = call i64 @ocs_addr32_lo(i32 %65)
  %67 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %68 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %67, i32 0, i32 2
  store i64 %66, i64* %68, align 8
  %69 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %70 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 8
  %72 = call i64 @ocs_addr32_hi(i32 %71)
  %73 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %74 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %73, i32 0, i32 1
  store i64 %72, i64* %74, align 8
  %75 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %76 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %79 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %78, i32 0, i32 0
  store i64 %77, i64* %79, align 8
  br label %87

80:                                               ; preds = %27
  %81 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %82 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %81, i32 0, i32 2
  store i64 0, i64* %82, align 8
  %83 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %84 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %83, i32 0, i32 1
  store i64 0, i64* %84, align 8
  %85 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %86 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %85, i32 0, i32 0
  store i64 0, i64* %86, align 8
  br label %87

87:                                               ; preds = %80, %62
  %88 = load i32, i32* %16, align 4
  %89 = sext i32 %88 to i64
  %90 = add i64 %89, 80
  %91 = trunc i64 %90 to i32
  ret i32 %91
}

declare dso_local i32 @sli_cmd_sli_config(%struct.TYPE_9__*, i8*, i64, i32, i32*) #1

declare dso_local i64 @ocs_addr32_lo(i32) #1

declare dso_local i64 @ocs_addr32_hi(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
