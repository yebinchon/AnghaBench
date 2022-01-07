; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/extr_geom_redboot.c_parse_fis_directory.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/extr_geom_redboot.c_parse_fis_directory.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fis_image_desc = type { i32*, i64, i64, %struct.fis_image_desc* }

@FISDIR_NAME = common dso_local global i32 0, align 4
@REDBCFG_NAME = common dso_local global i32 0, align 4
@bootverbose = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [37 x i8] c"No RedBoot FIS table located at %lu\0A\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"FIS/RedBoot merged at 0x%jx (not yet)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.fis_image_desc* (i32*, i64, i32, i64)* @parse_fis_directory to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.fis_image_desc* @parse_fis_directory(i32* %0, i64 %1, i32 %2, i64 %3) #0 {
  %5 = alloca %struct.fis_image_desc*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca %struct.fis_image_desc*, align 8
  %11 = alloca %struct.fis_image_desc*, align 8
  %12 = alloca %struct.fis_image_desc*, align 8
  %13 = alloca %struct.fis_image_desc*, align 8
  %14 = alloca %struct.fis_image_desc*, align 8
  %15 = alloca %struct.fis_image_desc**, align 8
  %16 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i64 %1, i64* %7, align 8
  store i32 %2, i32* %8, align 4
  store i64 %3, i64* %9, align 8
  %17 = load i32*, i32** %6, align 8
  %18 = bitcast i32* %17 to %struct.fis_image_desc*
  store %struct.fis_image_desc* %18, %struct.fis_image_desc** %10, align 8
  %19 = load %struct.fis_image_desc*, %struct.fis_image_desc** %10, align 8
  %20 = load i64, i64* %7, align 8
  %21 = udiv i64 %20, 32
  %22 = getelementptr inbounds %struct.fis_image_desc, %struct.fis_image_desc* %19, i64 %21
  store %struct.fis_image_desc* %22, %struct.fis_image_desc** %11, align 8
  store %struct.fis_image_desc* null, %struct.fis_image_desc** %13, align 8
  store %struct.fis_image_desc* null, %struct.fis_image_desc** %12, align 8
  store %struct.fis_image_desc** %14, %struct.fis_image_desc*** %15, align 8
  store %struct.fis_image_desc* null, %struct.fis_image_desc** %14, align 8
  store i32 0, i32* %16, align 4
  br label %23

23:                                               ; preds = %84, %4
  %24 = load %struct.fis_image_desc*, %struct.fis_image_desc** %10, align 8
  %25 = load %struct.fis_image_desc*, %struct.fis_image_desc** %11, align 8
  %26 = icmp ult %struct.fis_image_desc* %24, %25
  br i1 %26, label %27, label %89

27:                                               ; preds = %23
  %28 = load %struct.fis_image_desc*, %struct.fis_image_desc** %10, align 8
  %29 = getelementptr inbounds %struct.fis_image_desc, %struct.fis_image_desc* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 0
  %32 = load i32, i32* %31, align 4
  %33 = icmp eq i32 %32, 255
  br i1 %33, label %34, label %35

34:                                               ; preds = %27
  br label %84

35:                                               ; preds = %27
  %36 = load %struct.fis_image_desc*, %struct.fis_image_desc** %10, align 8
  %37 = getelementptr inbounds %struct.fis_image_desc, %struct.fis_image_desc* %36, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  %39 = bitcast i32* %38 to i8*
  %40 = load i32, i32* @FISDIR_NAME, align 4
  %41 = sext i32 %40 to i64
  %42 = inttoptr i64 %41 to i8*
  %43 = call i32 @bcmp(i8* %39, i8* %42, i64 3)
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %35
  %46 = load %struct.fis_image_desc*, %struct.fis_image_desc** %10, align 8
  store %struct.fis_image_desc* %46, %struct.fis_image_desc** %12, align 8
  br label %60

47:                                               ; preds = %35
  %48 = load %struct.fis_image_desc*, %struct.fis_image_desc** %10, align 8
  %49 = getelementptr inbounds %struct.fis_image_desc, %struct.fis_image_desc* %48, i32 0, i32 0
  %50 = load i32*, i32** %49, align 8
  %51 = bitcast i32* %50 to i8*
  %52 = load i32, i32* @REDBCFG_NAME, align 4
  %53 = sext i32 %52 to i64
  %54 = inttoptr i64 %53 to i8*
  %55 = call i32 @bcmp(i8* %51, i8* %54, i64 3)
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %47
  %58 = load %struct.fis_image_desc*, %struct.fis_image_desc** %10, align 8
  store %struct.fis_image_desc* %58, %struct.fis_image_desc** %13, align 8
  br label %59

59:                                               ; preds = %57, %47
  br label %60

60:                                               ; preds = %59, %45
  %61 = load %struct.fis_image_desc*, %struct.fis_image_desc** %10, align 8
  %62 = getelementptr inbounds %struct.fis_image_desc, %struct.fis_image_desc* %61, i32 0, i32 0
  %63 = load i32*, i32** %62, align 8
  %64 = call i64 @nameok(i32* %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %83

66:                                               ; preds = %60
  %67 = load i64, i64* %9, align 8
  %68 = load %struct.fis_image_desc*, %struct.fis_image_desc** %10, align 8
  %69 = getelementptr inbounds %struct.fis_image_desc, %struct.fis_image_desc* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = and i64 %70, %67
  store i64 %71, i64* %69, align 8
  %72 = load i64, i64* @bootverbose, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %78

74:                                               ; preds = %66
  %75 = load i32, i32* %16, align 4
  %76 = load %struct.fis_image_desc*, %struct.fis_image_desc** %10, align 8
  %77 = call i32 @g_redboot_print(i32 %75, %struct.fis_image_desc* %76)
  br label %78

78:                                               ; preds = %74, %66
  %79 = load %struct.fis_image_desc*, %struct.fis_image_desc** %10, align 8
  %80 = load %struct.fis_image_desc**, %struct.fis_image_desc*** %15, align 8
  store %struct.fis_image_desc* %79, %struct.fis_image_desc** %80, align 8
  %81 = load %struct.fis_image_desc*, %struct.fis_image_desc** %10, align 8
  %82 = getelementptr inbounds %struct.fis_image_desc, %struct.fis_image_desc* %81, i32 0, i32 3
  store %struct.fis_image_desc** %82, %struct.fis_image_desc*** %15, align 8
  store %struct.fis_image_desc* null, %struct.fis_image_desc** %82, align 8
  br label %83

83:                                               ; preds = %78, %60
  br label %84

84:                                               ; preds = %83, %34
  %85 = load i32, i32* %16, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %16, align 4
  %87 = load %struct.fis_image_desc*, %struct.fis_image_desc** %10, align 8
  %88 = getelementptr inbounds %struct.fis_image_desc, %struct.fis_image_desc* %87, i32 1
  store %struct.fis_image_desc* %88, %struct.fis_image_desc** %10, align 8
  br label %23

89:                                               ; preds = %23
  %90 = load %struct.fis_image_desc*, %struct.fis_image_desc** %12, align 8
  %91 = icmp eq %struct.fis_image_desc* %90, null
  br i1 %91, label %92, label %101

92:                                               ; preds = %89
  %93 = load i64, i64* @bootverbose, align 8
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %100

95:                                               ; preds = %92
  %96 = load i32, i32* %8, align 4
  %97 = sext i32 %96 to i64
  %98 = trunc i64 %97 to i32
  %99 = call i32 @printf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %98)
  br label %100

100:                                              ; preds = %95, %92
  store %struct.fis_image_desc* null, %struct.fis_image_desc** %5, align 8
  br label %131

101:                                              ; preds = %89
  %102 = load %struct.fis_image_desc*, %struct.fis_image_desc** %13, align 8
  %103 = icmp ne %struct.fis_image_desc* %102, null
  br i1 %103, label %104, label %129

104:                                              ; preds = %101
  %105 = load %struct.fis_image_desc*, %struct.fis_image_desc** %12, align 8
  %106 = getelementptr inbounds %struct.fis_image_desc, %struct.fis_image_desc* %105, i32 0, i32 1
  %107 = load i64, i64* %106, align 8
  %108 = load %struct.fis_image_desc*, %struct.fis_image_desc** %12, align 8
  %109 = getelementptr inbounds %struct.fis_image_desc, %struct.fis_image_desc* %108, i32 0, i32 2
  %110 = load i64, i64* %109, align 8
  %111 = add nsw i64 %107, %110
  %112 = load %struct.fis_image_desc*, %struct.fis_image_desc** %13, align 8
  %113 = getelementptr inbounds %struct.fis_image_desc, %struct.fis_image_desc* %112, i32 0, i32 1
  %114 = load i64, i64* %113, align 8
  %115 = icmp eq i64 %111, %114
  br i1 %115, label %116, label %129

116:                                              ; preds = %104
  %117 = load i64, i64* @bootverbose, align 8
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %128

119:                                              ; preds = %116
  %120 = load i32, i32* %8, align 4
  %121 = sext i32 %120 to i64
  %122 = load %struct.fis_image_desc*, %struct.fis_image_desc** %12, align 8
  %123 = getelementptr inbounds %struct.fis_image_desc, %struct.fis_image_desc* %122, i32 0, i32 1
  %124 = load i64, i64* %123, align 8
  %125 = add nsw i64 %121, %124
  %126 = trunc i64 %125 to i32
  %127 = call i32 @printf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %126)
  br label %128

128:                                              ; preds = %119, %116
  br label %129

129:                                              ; preds = %128, %104, %101
  %130 = load %struct.fis_image_desc*, %struct.fis_image_desc** %14, align 8
  store %struct.fis_image_desc* %130, %struct.fis_image_desc** %5, align 8
  br label %131

131:                                              ; preds = %129, %100
  %132 = load %struct.fis_image_desc*, %struct.fis_image_desc** %5, align 8
  ret %struct.fis_image_desc* %132
}

declare dso_local i32 @bcmp(i8*, i8*, i64) #1

declare dso_local i64 @nameok(i32*) #1

declare dso_local i32 @g_redboot_print(i32, %struct.fis_image_desc*) #1

declare dso_local i32 @printf(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
