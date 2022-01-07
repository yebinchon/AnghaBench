; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/part/extr_g_part_apm.c_apm_parse_type.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/part/extr_g_part_apm.c_apm_parse_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EINVAL = common dso_local global i32 0, align 4
@APM_ENT_TYPE_SELF = common dso_local global i32 0, align 4
@APM_ENT_TYPE_UNUSED = common dso_local global i32 0, align 4
@G_PART_ALIAS_APPLE_BOOT = common dso_local global i32 0, align 4
@APM_ENT_TYPE_APPLE_BOOT = common dso_local global i32 0, align 4
@G_PART_ALIAS_APPLE_HFS = common dso_local global i32 0, align 4
@APM_ENT_TYPE_APPLE_HFS = common dso_local global i32 0, align 4
@G_PART_ALIAS_APPLE_UFS = common dso_local global i32 0, align 4
@APM_ENT_TYPE_APPLE_UFS = common dso_local global i32 0, align 4
@G_PART_ALIAS_FREEBSD = common dso_local global i32 0, align 4
@APM_ENT_TYPE_FREEBSD = common dso_local global i32 0, align 4
@G_PART_ALIAS_FREEBSD_NANDFS = common dso_local global i32 0, align 4
@APM_ENT_TYPE_FREEBSD_NANDFS = common dso_local global i32 0, align 4
@G_PART_ALIAS_FREEBSD_SWAP = common dso_local global i32 0, align 4
@APM_ENT_TYPE_FREEBSD_SWAP = common dso_local global i32 0, align 4
@G_PART_ALIAS_FREEBSD_UFS = common dso_local global i32 0, align 4
@APM_ENT_TYPE_FREEBSD_UFS = common dso_local global i32 0, align 4
@G_PART_ALIAS_FREEBSD_VINUM = common dso_local global i32 0, align 4
@APM_ENT_TYPE_FREEBSD_VINUM = common dso_local global i32 0, align 4
@G_PART_ALIAS_FREEBSD_ZFS = common dso_local global i32 0, align 4
@APM_ENT_TYPE_FREEBSD_ZFS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i64)* @apm_parse_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @apm_parse_type(i8* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = getelementptr inbounds i8, i8* %9, i64 0
  %11 = load i8, i8* %10, align 1
  %12 = sext i8 %11 to i32
  %13 = icmp eq i32 %12, 33
  br i1 %13, label %14, label %40

14:                                               ; preds = %3
  %15 = load i8*, i8** %5, align 8
  %16 = getelementptr inbounds i8, i8* %15, i32 1
  store i8* %16, i8** %5, align 8
  %17 = load i8*, i8** %5, align 8
  %18 = call i64 @strlen(i8* %17)
  %19 = load i64, i64* %7, align 8
  %20 = icmp ugt i64 %18, %19
  br i1 %20, label %21, label %23

21:                                               ; preds = %14
  %22 = load i32, i32* @EINVAL, align 4
  store i32 %22, i32* %4, align 4
  br label %141

23:                                               ; preds = %14
  %24 = load i8*, i8** %5, align 8
  %25 = load i32, i32* @APM_ENT_TYPE_SELF, align 4
  %26 = call i32 @strcmp(i8* %24, i32 %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %23
  %29 = load i8*, i8** %5, align 8
  %30 = load i32, i32* @APM_ENT_TYPE_UNUSED, align 4
  %31 = call i32 @strcmp(i8* %29, i32 %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %35, label %33

33:                                               ; preds = %28, %23
  %34 = load i32, i32* @EINVAL, align 4
  store i32 %34, i32* %4, align 4
  br label %141

35:                                               ; preds = %28
  %36 = load i8*, i8** %6, align 8
  %37 = load i8*, i8** %5, align 8
  %38 = load i64, i64* %7, align 8
  %39 = call i32 @strncpy(i8* %36, i8* %37, i64 %38)
  store i32 0, i32* %4, align 4
  br label %141

40:                                               ; preds = %3
  %41 = load i32, i32* @G_PART_ALIAS_APPLE_BOOT, align 4
  %42 = call i8* @g_part_alias_name(i32 %41)
  store i8* %42, i8** %8, align 8
  %43 = load i8*, i8** %5, align 8
  %44 = load i8*, i8** %8, align 8
  %45 = call i32 @strcasecmp(i8* %43, i8* %44)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %51, label %47

47:                                               ; preds = %40
  %48 = load i8*, i8** %6, align 8
  %49 = load i32, i32* @APM_ENT_TYPE_APPLE_BOOT, align 4
  %50 = call i32 @strcpy(i8* %48, i32 %49)
  store i32 0, i32* %4, align 4
  br label %141

51:                                               ; preds = %40
  %52 = load i32, i32* @G_PART_ALIAS_APPLE_HFS, align 4
  %53 = call i8* @g_part_alias_name(i32 %52)
  store i8* %53, i8** %8, align 8
  %54 = load i8*, i8** %5, align 8
  %55 = load i8*, i8** %8, align 8
  %56 = call i32 @strcasecmp(i8* %54, i8* %55)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %62, label %58

58:                                               ; preds = %51
  %59 = load i8*, i8** %6, align 8
  %60 = load i32, i32* @APM_ENT_TYPE_APPLE_HFS, align 4
  %61 = call i32 @strcpy(i8* %59, i32 %60)
  store i32 0, i32* %4, align 4
  br label %141

62:                                               ; preds = %51
  %63 = load i32, i32* @G_PART_ALIAS_APPLE_UFS, align 4
  %64 = call i8* @g_part_alias_name(i32 %63)
  store i8* %64, i8** %8, align 8
  %65 = load i8*, i8** %5, align 8
  %66 = load i8*, i8** %8, align 8
  %67 = call i32 @strcasecmp(i8* %65, i8* %66)
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %73, label %69

69:                                               ; preds = %62
  %70 = load i8*, i8** %6, align 8
  %71 = load i32, i32* @APM_ENT_TYPE_APPLE_UFS, align 4
  %72 = call i32 @strcpy(i8* %70, i32 %71)
  store i32 0, i32* %4, align 4
  br label %141

73:                                               ; preds = %62
  %74 = load i32, i32* @G_PART_ALIAS_FREEBSD, align 4
  %75 = call i8* @g_part_alias_name(i32 %74)
  store i8* %75, i8** %8, align 8
  %76 = load i8*, i8** %5, align 8
  %77 = load i8*, i8** %8, align 8
  %78 = call i32 @strcasecmp(i8* %76, i8* %77)
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %84, label %80

80:                                               ; preds = %73
  %81 = load i8*, i8** %6, align 8
  %82 = load i32, i32* @APM_ENT_TYPE_FREEBSD, align 4
  %83 = call i32 @strcpy(i8* %81, i32 %82)
  store i32 0, i32* %4, align 4
  br label %141

84:                                               ; preds = %73
  %85 = load i32, i32* @G_PART_ALIAS_FREEBSD_NANDFS, align 4
  %86 = call i8* @g_part_alias_name(i32 %85)
  store i8* %86, i8** %8, align 8
  %87 = load i8*, i8** %5, align 8
  %88 = load i8*, i8** %8, align 8
  %89 = call i32 @strcasecmp(i8* %87, i8* %88)
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %95, label %91

91:                                               ; preds = %84
  %92 = load i8*, i8** %6, align 8
  %93 = load i32, i32* @APM_ENT_TYPE_FREEBSD_NANDFS, align 4
  %94 = call i32 @strcpy(i8* %92, i32 %93)
  store i32 0, i32* %4, align 4
  br label %141

95:                                               ; preds = %84
  %96 = load i32, i32* @G_PART_ALIAS_FREEBSD_SWAP, align 4
  %97 = call i8* @g_part_alias_name(i32 %96)
  store i8* %97, i8** %8, align 8
  %98 = load i8*, i8** %5, align 8
  %99 = load i8*, i8** %8, align 8
  %100 = call i32 @strcasecmp(i8* %98, i8* %99)
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %106, label %102

102:                                              ; preds = %95
  %103 = load i8*, i8** %6, align 8
  %104 = load i32, i32* @APM_ENT_TYPE_FREEBSD_SWAP, align 4
  %105 = call i32 @strcpy(i8* %103, i32 %104)
  store i32 0, i32* %4, align 4
  br label %141

106:                                              ; preds = %95
  %107 = load i32, i32* @G_PART_ALIAS_FREEBSD_UFS, align 4
  %108 = call i8* @g_part_alias_name(i32 %107)
  store i8* %108, i8** %8, align 8
  %109 = load i8*, i8** %5, align 8
  %110 = load i8*, i8** %8, align 8
  %111 = call i32 @strcasecmp(i8* %109, i8* %110)
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %117, label %113

113:                                              ; preds = %106
  %114 = load i8*, i8** %6, align 8
  %115 = load i32, i32* @APM_ENT_TYPE_FREEBSD_UFS, align 4
  %116 = call i32 @strcpy(i8* %114, i32 %115)
  store i32 0, i32* %4, align 4
  br label %141

117:                                              ; preds = %106
  %118 = load i32, i32* @G_PART_ALIAS_FREEBSD_VINUM, align 4
  %119 = call i8* @g_part_alias_name(i32 %118)
  store i8* %119, i8** %8, align 8
  %120 = load i8*, i8** %5, align 8
  %121 = load i8*, i8** %8, align 8
  %122 = call i32 @strcasecmp(i8* %120, i8* %121)
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %128, label %124

124:                                              ; preds = %117
  %125 = load i8*, i8** %6, align 8
  %126 = load i32, i32* @APM_ENT_TYPE_FREEBSD_VINUM, align 4
  %127 = call i32 @strcpy(i8* %125, i32 %126)
  store i32 0, i32* %4, align 4
  br label %141

128:                                              ; preds = %117
  %129 = load i32, i32* @G_PART_ALIAS_FREEBSD_ZFS, align 4
  %130 = call i8* @g_part_alias_name(i32 %129)
  store i8* %130, i8** %8, align 8
  %131 = load i8*, i8** %5, align 8
  %132 = load i8*, i8** %8, align 8
  %133 = call i32 @strcasecmp(i8* %131, i8* %132)
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %139, label %135

135:                                              ; preds = %128
  %136 = load i8*, i8** %6, align 8
  %137 = load i32, i32* @APM_ENT_TYPE_FREEBSD_ZFS, align 4
  %138 = call i32 @strcpy(i8* %136, i32 %137)
  store i32 0, i32* %4, align 4
  br label %141

139:                                              ; preds = %128
  %140 = load i32, i32* @EINVAL, align 4
  store i32 %140, i32* %4, align 4
  br label %141

141:                                              ; preds = %139, %135, %124, %113, %102, %91, %80, %69, %58, %47, %35, %33, %21
  %142 = load i32, i32* %4, align 4
  ret i32 %142
}

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @strcmp(i8*, i32) #1

declare dso_local i32 @strncpy(i8*, i8*, i64) #1

declare dso_local i8* @g_part_alias_name(i32) #1

declare dso_local i32 @strcasecmp(i8*, i8*) #1

declare dso_local i32 @strcpy(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
