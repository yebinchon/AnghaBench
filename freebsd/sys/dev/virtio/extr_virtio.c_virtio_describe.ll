; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/virtio/extr_virtio.c_virtio_describe.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/virtio/extr_virtio.c_virtio_describe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.virtio_feature_desc = type { i32 }
%struct.sbuf = type { i32 }

@M_TEMP = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"%s features: %#jx\0A\00", align 1
@SBUF_FIXEDLEN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"%s features: %#jx\00", align 1
@VIRTIO_F_BAD_FEATURE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [3 x i8] c" <\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"%#jx\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c">\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @virtio_describe(i32 %0, i8* %1, i32 %2, %struct.virtio_feature_desc* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.virtio_feature_desc*, align 8
  %9 = alloca %struct.sbuf, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.virtio_feature_desc* %3, %struct.virtio_feature_desc** %8, align 8
  %14 = load i32, i32* @M_TEMP, align 4
  %15 = load i32, i32* @M_NOWAIT, align 4
  %16 = call i8* @malloc(i32 512, i32 %14, i32 %15)
  store i8* %16, i8** %11, align 8
  %17 = icmp eq i8* %16, null
  br i1 %17, label %18, label %23

18:                                               ; preds = %4
  %19 = load i32, i32* %5, align 4
  %20 = load i8*, i8** %6, align 8
  %21 = load i32, i32* %7, align 4
  %22 = call i32 (i32, i8*, i8*, ...) @device_printf(i32 %19, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i8* %20, i32 %21)
  br label %89

23:                                               ; preds = %4
  %24 = load i8*, i8** %11, align 8
  %25 = load i32, i32* @SBUF_FIXEDLEN, align 4
  %26 = call i32 @sbuf_new(%struct.sbuf* %9, i8* %24, i32 512, i32 %25)
  %27 = load i8*, i8** %6, align 8
  %28 = load i32, i32* %7, align 4
  %29 = call i32 (%struct.sbuf*, i8*, i8*, ...) @sbuf_printf(%struct.sbuf* %9, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i8* %27, i32 %28)
  store i32 0, i32* %13, align 4
  store i32 0, i32* %10, align 4
  br label %30

30:                                               ; preds = %66, %23
  %31 = load i32, i32* %10, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %69

33:                                               ; preds = %30
  %34 = load i32, i32* %7, align 4
  %35 = load i32, i32* %10, align 4
  %36 = and i32 %34, %35
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %42, label %38

38:                                               ; preds = %33
  %39 = load i32, i32* %10, align 4
  %40 = load i32, i32* @VIRTIO_F_BAD_FEATURE, align 4
  %41 = icmp eq i32 %39, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %38, %33
  br label %66

43:                                               ; preds = %38
  %44 = load i32, i32* %13, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %13, align 4
  %46 = icmp eq i32 %44, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %43
  %48 = call i32 @sbuf_cat(%struct.sbuf* %9, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  br label %51

49:                                               ; preds = %43
  %50 = call i32 @sbuf_cat(%struct.sbuf* %9, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  br label %51

51:                                               ; preds = %49, %47
  %52 = load i32, i32* %10, align 4
  %53 = load %struct.virtio_feature_desc*, %struct.virtio_feature_desc** %8, align 8
  %54 = call i8* @virtio_feature_name(i32 %52, %struct.virtio_feature_desc* %53)
  store i8* %54, i8** %12, align 8
  %55 = load i8*, i8** %12, align 8
  %56 = icmp eq i8* %55, null
  br i1 %56, label %57, label %62

57:                                               ; preds = %51
  %58 = load i32, i32* %10, align 4
  %59 = sext i32 %58 to i64
  %60 = inttoptr i64 %59 to i8*
  %61 = call i32 (%struct.sbuf*, i8*, i8*, ...) @sbuf_printf(%struct.sbuf* %9, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8* %60)
  br label %65

62:                                               ; preds = %51
  %63 = load i8*, i8** %12, align 8
  %64 = call i32 @sbuf_cat(%struct.sbuf* %9, i8* %63)
  br label %65

65:                                               ; preds = %62, %57
  br label %66

66:                                               ; preds = %65, %42
  %67 = load i32, i32* %10, align 4
  %68 = ashr i32 %67, 1
  store i32 %68, i32* %10, align 4
  br label %30

69:                                               ; preds = %30
  %70 = load i32, i32* %13, align 4
  %71 = icmp sgt i32 %70, 0
  br i1 %71, label %72, label %74

72:                                               ; preds = %69
  %73 = call i32 @sbuf_cat(%struct.sbuf* %9, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  br label %74

74:                                               ; preds = %72, %69
  %75 = call i64 @sbuf_finish(%struct.sbuf* %9)
  %76 = call i64 @sbuf_overflowed(%struct.sbuf* %9)
  %77 = icmp eq i64 %76, 0
  br i1 %77, label %78, label %84

78:                                               ; preds = %74
  %79 = load i32, i32* %5, align 4
  %80 = call i32 @sbuf_data(%struct.sbuf* %9)
  %81 = sext i32 %80 to i64
  %82 = inttoptr i64 %81 to i8*
  %83 = call i32 (i32, i8*, i8*, ...) @device_printf(i32 %79, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), i8* %82)
  br label %84

84:                                               ; preds = %78, %74
  %85 = call i32 @sbuf_delete(%struct.sbuf* %9)
  %86 = load i8*, i8** %11, align 8
  %87 = load i32, i32* @M_TEMP, align 4
  %88 = call i32 @free(i8* %86, i32 %87)
  br label %89

89:                                               ; preds = %84, %18
  ret void
}

declare dso_local i8* @malloc(i32, i32, i32) #1

declare dso_local i32 @device_printf(i32, i8*, i8*, ...) #1

declare dso_local i32 @sbuf_new(%struct.sbuf*, i8*, i32, i32) #1

declare dso_local i32 @sbuf_printf(%struct.sbuf*, i8*, i8*, ...) #1

declare dso_local i32 @sbuf_cat(%struct.sbuf*, i8*) #1

declare dso_local i8* @virtio_feature_name(i32, %struct.virtio_feature_desc*) #1

declare dso_local i64 @sbuf_finish(%struct.sbuf*) #1

declare dso_local i64 @sbuf_overflowed(%struct.sbuf*) #1

declare dso_local i32 @sbuf_data(%struct.sbuf*) #1

declare dso_local i32 @sbuf_delete(%struct.sbuf*) #1

declare dso_local i32 @free(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
