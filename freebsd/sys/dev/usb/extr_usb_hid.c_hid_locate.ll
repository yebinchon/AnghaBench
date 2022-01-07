; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/extr_usb_hid.c_hid_locate.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/extr_usb_hid.c_hid_locate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hid_location = type { i64 }
%struct.hid_data = type { i32 }
%struct.hid_item = type { i32, i32, i64, i32, %struct.hid_location }

@HIO_CONST = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hid_locate(i8* %0, i32 %1, i64 %2, i32 %3, i32 %4, %struct.hid_location* %5, i32* %6, i32* %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.hid_location*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca %struct.hid_data*, align 8
  %19 = alloca %struct.hid_item, align 8
  store i8* %0, i8** %10, align 8
  store i32 %1, i32* %11, align 4
  store i64 %2, i64* %12, align 8
  store i32 %3, i32* %13, align 4
  store i32 %4, i32* %14, align 4
  store %struct.hid_location* %5, %struct.hid_location** %15, align 8
  store i32* %6, i32** %16, align 8
  store i32* %7, i32** %17, align 8
  %20 = load i8*, i8** %10, align 8
  %21 = load i32, i32* %11, align 4
  %22 = load i32, i32* %13, align 4
  %23 = shl i32 1, %22
  %24 = call %struct.hid_data* @hid_start_parse(i8* %20, i32 %21, i32 %23)
  store %struct.hid_data* %24, %struct.hid_data** %18, align 8
  br label %25

25:                                               ; preds = %75, %49, %8
  %26 = load %struct.hid_data*, %struct.hid_data** %18, align 8
  %27 = call i64 @hid_get_item(%struct.hid_data* %26, %struct.hid_item* %19)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %76

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct.hid_item, %struct.hid_item* %19, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* %13, align 4
  %33 = icmp eq i32 %31, %32
  br i1 %33, label %34, label %75

34:                                               ; preds = %29
  %35 = getelementptr inbounds %struct.hid_item, %struct.hid_item* %19, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @HIO_CONST, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %75, label %40

40:                                               ; preds = %34
  %41 = getelementptr inbounds %struct.hid_item, %struct.hid_item* %19, i32 0, i32 2
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* %12, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %75

45:                                               ; preds = %40
  %46 = load i32, i32* %14, align 4
  %47 = add nsw i32 %46, -1
  store i32 %47, i32* %14, align 4
  %48 = icmp ne i32 %46, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %45
  br label %25

50:                                               ; preds = %45
  %51 = load %struct.hid_location*, %struct.hid_location** %15, align 8
  %52 = icmp ne %struct.hid_location* %51, null
  br i1 %52, label %53, label %58

53:                                               ; preds = %50
  %54 = load %struct.hid_location*, %struct.hid_location** %15, align 8
  %55 = getelementptr inbounds %struct.hid_item, %struct.hid_item* %19, i32 0, i32 4
  %56 = bitcast %struct.hid_location* %54 to i8*
  %57 = bitcast %struct.hid_location* %55 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %56, i8* align 8 %57, i64 8, i1 false)
  br label %58

58:                                               ; preds = %53, %50
  %59 = load i32*, i32** %16, align 8
  %60 = icmp ne i32* %59, null
  br i1 %60, label %61, label %65

61:                                               ; preds = %58
  %62 = getelementptr inbounds %struct.hid_item, %struct.hid_item* %19, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = load i32*, i32** %16, align 8
  store i32 %63, i32* %64, align 4
  br label %65

65:                                               ; preds = %61, %58
  %66 = load i32*, i32** %17, align 8
  %67 = icmp ne i32* %66, null
  br i1 %67, label %68, label %72

68:                                               ; preds = %65
  %69 = getelementptr inbounds %struct.hid_item, %struct.hid_item* %19, i32 0, i32 3
  %70 = load i32, i32* %69, align 8
  %71 = load i32*, i32** %17, align 8
  store i32 %70, i32* %71, align 4
  br label %72

72:                                               ; preds = %68, %65
  %73 = load %struct.hid_data*, %struct.hid_data** %18, align 8
  %74 = call i32 @hid_end_parse(%struct.hid_data* %73)
  store i32 1, i32* %9, align 4
  br label %95

75:                                               ; preds = %40, %34, %29
  br label %25

76:                                               ; preds = %25
  %77 = load %struct.hid_location*, %struct.hid_location** %15, align 8
  %78 = icmp ne %struct.hid_location* %77, null
  br i1 %78, label %79, label %82

79:                                               ; preds = %76
  %80 = load %struct.hid_location*, %struct.hid_location** %15, align 8
  %81 = getelementptr inbounds %struct.hid_location, %struct.hid_location* %80, i32 0, i32 0
  store i64 0, i64* %81, align 8
  br label %82

82:                                               ; preds = %79, %76
  %83 = load i32*, i32** %16, align 8
  %84 = icmp ne i32* %83, null
  br i1 %84, label %85, label %87

85:                                               ; preds = %82
  %86 = load i32*, i32** %16, align 8
  store i32 0, i32* %86, align 4
  br label %87

87:                                               ; preds = %85, %82
  %88 = load i32*, i32** %17, align 8
  %89 = icmp ne i32* %88, null
  br i1 %89, label %90, label %92

90:                                               ; preds = %87
  %91 = load i32*, i32** %17, align 8
  store i32 0, i32* %91, align 4
  br label %92

92:                                               ; preds = %90, %87
  %93 = load %struct.hid_data*, %struct.hid_data** %18, align 8
  %94 = call i32 @hid_end_parse(%struct.hid_data* %93)
  store i32 0, i32* %9, align 4
  br label %95

95:                                               ; preds = %92, %72
  %96 = load i32, i32* %9, align 4
  ret i32 %96
}

declare dso_local %struct.hid_data* @hid_start_parse(i8*, i32, i32) #1

declare dso_local i64 @hid_get_item(%struct.hid_data*, %struct.hid_item*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @hid_end_parse(%struct.hid_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
