; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/mptutil/extr_mpt_cmd.c_mpt_lookup_volume.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/mptutil/extr_mpt_cmd.c_mpt_lookup_volume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64, i64 }
%struct.mpt_query_disk = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mpt_lookup_volume(i32 %0, i8* %1, i64* %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca %struct.TYPE_6__*, align 8
  %11 = alloca %struct.TYPE_5__*, align 8
  %12 = alloca %struct.mpt_query_disk, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i8* %1, i8** %7, align 8
  store i64* %2, i64** %8, align 8
  store i64* %3, i64** %9, align 8
  %17 = load i8*, i8** %7, align 8
  %18 = call i64 @strtol(i8* %17, i8** %13, i32 0)
  store i64 %18, i64* %14, align 8
  %19 = load i8*, i8** %13, align 8
  %20 = load i8, i8* %19, align 1
  %21 = sext i8 %20 to i32
  %22 = icmp eq i32 %21, 58
  br i1 %22, label %23, label %51

23:                                               ; preds = %4
  %24 = load i8*, i8** %13, align 8
  %25 = getelementptr inbounds i8, i8* %24, i64 1
  %26 = call i64 @strtol(i8* %25, i8** %13, i32 0)
  store i64 %26, i64* %15, align 8
  %27 = load i8*, i8** %13, align 8
  %28 = load i8, i8* %27, align 1
  %29 = sext i8 %28 to i32
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %50

31:                                               ; preds = %23
  %32 = load i64, i64* %14, align 8
  %33 = icmp slt i64 %32, 0
  br i1 %33, label %43, label %34

34:                                               ; preds = %31
  %35 = load i64, i64* %14, align 8
  %36 = icmp sgt i64 %35, 255
  br i1 %36, label %43, label %37

37:                                               ; preds = %34
  %38 = load i64, i64* %15, align 8
  %39 = icmp slt i64 %38, 0
  br i1 %39, label %43, label %40

40:                                               ; preds = %37
  %41 = load i64, i64* %15, align 8
  %42 = icmp sgt i64 %41, 255
  br i1 %42, label %43, label %45

43:                                               ; preds = %40, %37, %34, %31
  %44 = load i32, i32* @EINVAL, align 4
  store i32 %44, i32* %5, align 4
  br label %123

45:                                               ; preds = %40
  %46 = load i64, i64* %14, align 8
  %47 = load i64*, i64** %8, align 8
  store i64 %46, i64* %47, align 8
  %48 = load i64, i64* %15, align 8
  %49 = load i64*, i64** %9, align 8
  store i64 %48, i64* %49, align 8
  store i32 0, i32* %5, align 4
  br label %123

50:                                               ; preds = %23
  br label %69

51:                                               ; preds = %4
  %52 = load i8*, i8** %13, align 8
  %53 = load i8, i8* %52, align 1
  %54 = sext i8 %53 to i32
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %68

56:                                               ; preds = %51
  %57 = load i64, i64* %14, align 8
  %58 = icmp slt i64 %57, 0
  br i1 %58, label %62, label %59

59:                                               ; preds = %56
  %60 = load i64, i64* %14, align 8
  %61 = icmp sgt i64 %60, 255
  br i1 %61, label %62, label %64

62:                                               ; preds = %59, %56
  %63 = load i32, i32* @EINVAL, align 4
  store i32 %63, i32* %5, align 4
  br label %123

64:                                               ; preds = %59
  %65 = load i64*, i64** %8, align 8
  store i64 0, i64* %65, align 8
  %66 = load i64, i64* %14, align 8
  %67 = load i64*, i64** %9, align 8
  store i64 %66, i64* %67, align 8
  store i32 0, i32* %5, align 4
  br label %123

68:                                               ; preds = %51
  br label %69

69:                                               ; preds = %68, %50
  %70 = load i32, i32* %6, align 4
  %71 = call %struct.TYPE_6__* @mpt_read_ioc_page(i32 %70, i32 2, i32* null)
  store %struct.TYPE_6__* %71, %struct.TYPE_6__** %10, align 8
  %72 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %73 = icmp eq %struct.TYPE_6__* %72, null
  br i1 %73, label %74, label %76

74:                                               ; preds = %69
  %75 = load i32, i32* @errno, align 4
  store i32 %75, i32* %5, align 4
  br label %123

76:                                               ; preds = %69
  %77 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 1
  %79 = load %struct.TYPE_5__*, %struct.TYPE_5__** %78, align 8
  store %struct.TYPE_5__* %79, %struct.TYPE_5__** %11, align 8
  store i32 0, i32* %16, align 4
  br label %80

80:                                               ; preds = %114, %76
  %81 = load i32, i32* %16, align 4
  %82 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = icmp slt i32 %81, %84
  br i1 %85, label %86, label %119

86:                                               ; preds = %80
  %87 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %88 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %91 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %90, i32 0, i32 1
  %92 = load i64, i64* %91, align 8
  %93 = call i64 @mpt_query_disk(i64 %89, i64 %92, %struct.mpt_query_disk* %12)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %96

95:                                               ; preds = %86
  br label %114

96:                                               ; preds = %86
  %97 = load i8*, i8** %7, align 8
  %98 = getelementptr inbounds %struct.mpt_query_disk, %struct.mpt_query_disk* %12, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = call i64 @strcmp(i8* %97, i32 %99)
  %101 = icmp eq i64 %100, 0
  br i1 %101, label %102, label %113

102:                                              ; preds = %96
  %103 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %104 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = load i64*, i64** %8, align 8
  store i64 %105, i64* %106, align 8
  %107 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %108 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %107, i32 0, i32 1
  %109 = load i64, i64* %108, align 8
  %110 = load i64*, i64** %9, align 8
  store i64 %109, i64* %110, align 8
  %111 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %112 = call i32 @free(%struct.TYPE_6__* %111)
  store i32 0, i32* %5, align 4
  br label %123

113:                                              ; preds = %96
  br label %114

114:                                              ; preds = %113, %95
  %115 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %116 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %115, i32 1
  store %struct.TYPE_5__* %116, %struct.TYPE_5__** %11, align 8
  %117 = load i32, i32* %16, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %16, align 4
  br label %80

119:                                              ; preds = %80
  %120 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %121 = call i32 @free(%struct.TYPE_6__* %120)
  %122 = load i32, i32* @EINVAL, align 4
  store i32 %122, i32* %5, align 4
  br label %123

123:                                              ; preds = %119, %102, %74, %64, %62, %45, %43
  %124 = load i32, i32* %5, align 4
  ret i32 %124
}

declare dso_local i64 @strtol(i8*, i8**, i32) #1

declare dso_local %struct.TYPE_6__* @mpt_read_ioc_page(i32, i32, i32*) #1

declare dso_local i64 @mpt_query_disk(i64, i64, %struct.mpt_query_disk*) #1

declare dso_local i64 @strcmp(i8*, i32) #1

declare dso_local i32 @free(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
