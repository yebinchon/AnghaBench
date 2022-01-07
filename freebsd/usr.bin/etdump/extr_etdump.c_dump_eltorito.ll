; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/etdump/extr_etdump.c_dump_eltorito.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/etdump/extr_etdump.c_dump_eltorito.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.outputter = type { i32 (i32*, i8*, i32*, i32, i32)*, i32 (i32*, i8*, %struct.TYPE_3__*)* }
%struct.TYPE_3__ = type { i64*, i32, i32, i32 }

@ISO_DEFAULT_BLOCK_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"failed to read from image\00", align 1
@ISO_VOLUME_DESCRIPTOR_STANDARD_ID = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"%s: not a valid ISO\00", align 1
@ISO_VOLUME_DESCRIPTOR_BOOT = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [34 x i8] c"%s: not an El Torito bootable ISO\00", align 1
@ET_ID = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [37 x i8] c"%s: boot catalog checksum is invalid\00", align 1
@ET_BOOT_ENTRY_SIZE = common dso_local global i64 0, align 8
@ET_SECTION_HEADER_MORE = common dso_local global i64 0, align 8
@ET_SECTION_HEADER_LAST = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i8*, i32*, %struct.outputter*)* @dump_eltorito to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dump_eltorito(i32* %0, i8* %1, i32* %2, %struct.outputter* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.outputter*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.TYPE_3__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32* %2, i32** %7, align 8
  store %struct.outputter* %3, %struct.outputter** %8, align 8
  %16 = load i32, i32* @ISO_DEFAULT_BLOCK_SIZE, align 4
  %17 = zext i32 %16 to i64
  %18 = call i8* @llvm.stacksave()
  store i8* %18, i8** %9, align 8
  %19 = alloca i8, i64 %17, align 16
  store i64 %17, i64* %10, align 8
  %20 = load i32*, i32** %5, align 8
  %21 = call i64 @read_sector(i32* %20, i32 17, i8* %19)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %4
  %24 = call i32 @err(i32 1, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  br label %25

25:                                               ; preds = %23, %4
  %26 = bitcast i8* %19 to %struct.TYPE_3__*
  store %struct.TYPE_3__* %26, %struct.TYPE_3__** %12, align 8
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @ISO_VOLUME_DESCRIPTOR_STANDARD_ID, align 4
  %31 = call i64 @memcmp(i32 %29, i32 %30, i32 5)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %25
  %34 = load i8*, i8** %6, align 8
  %35 = call i32 @warnx(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i8* %34)
  br label %36

36:                                               ; preds = %33, %25
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  %39 = load i64*, i64** %38, align 8
  %40 = getelementptr inbounds i64, i64* %39, i64 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @ISO_VOLUME_DESCRIPTOR_BOOT, align 8
  %43 = icmp ne i64 %41, %42
  br i1 %43, label %44, label %47

44:                                               ; preds = %36
  %45 = load i8*, i8** %6, align 8
  %46 = call i32 @warnx(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i8* %45)
  br label %47

47:                                               ; preds = %44, %36
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @ET_ID, align 4
  %52 = call i64 @memcmp(i32 %50, i32 %51, i32 23)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %47
  %55 = load i8*, i8** %6, align 8
  %56 = call i32 @warnx(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i8* %55)
  br label %57

57:                                               ; preds = %54, %47
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @isonum_731(i32 %60)
  store i32 %61, i32* %13, align 4
  %62 = load i32*, i32** %5, align 8
  %63 = load i32, i32* %13, align 4
  %64 = call i64 @read_sector(i32* %62, i32 %63, i8* %19)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %57
  %67 = call i32 @err(i32 1, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  br label %68

68:                                               ; preds = %66, %57
  store i8* %19, i8** %11, align 8
  store i64 0, i64* %14, align 8
  %69 = load i8*, i8** %11, align 8
  %70 = call i32 @boot_catalog_valid(i8* %69)
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %75, label %72

72:                                               ; preds = %68
  %73 = load i8*, i8** %6, align 8
  %74 = call i32 @warnx(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0), i8* %73)
  br label %75

75:                                               ; preds = %72, %68
  %76 = load %struct.outputter*, %struct.outputter** %8, align 8
  %77 = getelementptr inbounds %struct.outputter, %struct.outputter* %76, i32 0, i32 1
  %78 = load i32 (i32*, i8*, %struct.TYPE_3__*)*, i32 (i32*, i8*, %struct.TYPE_3__*)** %77, align 8
  %79 = icmp ne i32 (i32*, i8*, %struct.TYPE_3__*)* %78, null
  br i1 %79, label %80, label %88

80:                                               ; preds = %75
  %81 = load %struct.outputter*, %struct.outputter** %8, align 8
  %82 = getelementptr inbounds %struct.outputter, %struct.outputter* %81, i32 0, i32 1
  %83 = load i32 (i32*, i8*, %struct.TYPE_3__*)*, i32 (i32*, i8*, %struct.TYPE_3__*)** %82, align 8
  %84 = load i32*, i32** %7, align 8
  %85 = load i8*, i8** %6, align 8
  %86 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %87 = call i32 %83(i32* %84, i8* %85, %struct.TYPE_3__* %86)
  br label %88

88:                                               ; preds = %80, %75
  %89 = load i64, i64* @ET_BOOT_ENTRY_SIZE, align 8
  %90 = load i64, i64* %14, align 8
  %91 = add i64 %90, %89
  store i64 %91, i64* %14, align 8
  %92 = load i64, i64* %14, align 8
  %93 = getelementptr inbounds i8, i8* %19, i64 %92
  store i8* %93, i8** %11, align 8
  %94 = load %struct.outputter*, %struct.outputter** %8, align 8
  %95 = getelementptr inbounds %struct.outputter, %struct.outputter* %94, i32 0, i32 0
  %96 = load i32 (i32*, i8*, i32*, i32, i32)*, i32 (i32*, i8*, i32*, i32, i32)** %95, align 8
  %97 = icmp ne i32 (i32*, i8*, i32*, i32, i32)* %96, null
  br i1 %97, label %98, label %107

98:                                               ; preds = %88
  %99 = load %struct.outputter*, %struct.outputter** %8, align 8
  %100 = getelementptr inbounds %struct.outputter, %struct.outputter* %99, i32 0, i32 0
  %101 = load i32 (i32*, i8*, i32*, i32, i32)*, i32 (i32*, i8*, i32*, i32, i32)** %100, align 8
  %102 = load i32*, i32** %7, align 8
  %103 = load i8*, i8** %6, align 8
  %104 = load i8*, i8** %11, align 8
  %105 = bitcast i8* %104 to i32*
  %106 = call i32 %101(i32* %102, i8* %103, i32* %105, i32 0, i32 1)
  br label %107

107:                                              ; preds = %98, %88
  %108 = load i64, i64* @ET_BOOT_ENTRY_SIZE, align 8
  %109 = load i64, i64* %14, align 8
  %110 = add i64 %109, %108
  store i64 %110, i64* %14, align 8
  br label %111

111:                                              ; preds = %133, %107
  %112 = load i64, i64* %14, align 8
  %113 = load i32, i32* @ISO_DEFAULT_BLOCK_SIZE, align 4
  %114 = sext i32 %113 to i64
  %115 = icmp ult i64 %112, %114
  br i1 %115, label %116, label %145

116:                                              ; preds = %111
  %117 = load i64, i64* %14, align 8
  %118 = getelementptr inbounds i8, i8* %19, i64 %117
  store i8* %118, i8** %11, align 8
  %119 = load i8*, i8** %11, align 8
  %120 = getelementptr inbounds i8, i8* %119, i64 0
  %121 = load i8, i8* %120, align 1
  %122 = sext i8 %121 to i64
  %123 = load i64, i64* @ET_SECTION_HEADER_MORE, align 8
  %124 = icmp ne i64 %122, %123
  br i1 %124, label %125, label %133

125:                                              ; preds = %116
  %126 = load i8*, i8** %11, align 8
  %127 = getelementptr inbounds i8, i8* %126, i64 0
  %128 = load i8, i8* %127, align 1
  %129 = sext i8 %128 to i64
  %130 = load i64, i64* @ET_SECTION_HEADER_LAST, align 8
  %131 = icmp ne i64 %129, %130
  br i1 %131, label %132, label %133

132:                                              ; preds = %125
  br label %145

133:                                              ; preds = %125, %116
  %134 = load i64, i64* %14, align 8
  %135 = load i32*, i32** %7, align 8
  %136 = load i8*, i8** %6, align 8
  %137 = load %struct.outputter*, %struct.outputter** %8, align 8
  %138 = call i32 @dump_section(i8* %19, i64 %134, i32* %135, i8* %136, %struct.outputter* %137)
  store i32 %138, i32* %15, align 4
  %139 = load i32, i32* %15, align 4
  %140 = sext i32 %139 to i64
  %141 = load i64, i64* @ET_BOOT_ENTRY_SIZE, align 8
  %142 = mul i64 %140, %141
  %143 = load i64, i64* %14, align 8
  %144 = add i64 %143, %142
  store i64 %144, i64* %14, align 8
  br label %111

145:                                              ; preds = %132, %111
  %146 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %146)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @read_sector(i32*, i32, i8*) #2

declare dso_local i32 @err(i32, i8*) #2

declare dso_local i64 @memcmp(i32, i32, i32) #2

declare dso_local i32 @warnx(i8*, i8*) #2

declare dso_local i32 @isonum_731(i32) #2

declare dso_local i32 @boot_catalog_valid(i8*) #2

declare dso_local i32 @dump_section(i8*, i64, i32*, i8*, %struct.outputter*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
