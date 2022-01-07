; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/hda/extr_hdacc.c_hdacc_probe.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/hda/extr_hdacc.c_hdacc_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i64, i8* }

@hdacc_codecs = common dso_local global %struct.TYPE_3__* null, align 8
@.str = private unnamed_addr constant [12 x i8] c"%s (0x%04x)\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"Generic (0x%04x)\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c" HDA CODEC\00", align 1
@BUS_PROBE_DEFAULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @hdacc_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hdacc_probe(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca [128 x i8], align 16
  %6 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %7 = load i32, i32* %2, align 4
  %8 = call i64 @hda_get_vendor_id(i32 %7)
  %9 = trunc i64 %8 to i32
  %10 = shl i32 %9, 16
  %11 = load i32, i32* %2, align 4
  %12 = call i32 @hda_get_device_id(i32 %11)
  %13 = add nsw i32 %10, %12
  store i32 %13, i32* %3, align 4
  %14 = load i32, i32* %2, align 4
  %15 = call i64 @hda_get_revision_id(i32 %14)
  %16 = trunc i64 %15 to i32
  %17 = shl i32 %16, 8
  %18 = load i32, i32* %2, align 4
  %19 = call i32 @hda_get_stepping_id(i32 %18)
  %20 = add nsw i32 %17, %19
  store i32 %20, i32* %4, align 4
  store i32 0, i32* %6, align 4
  br label %21

21:                                               ; preds = %57, %1
  %22 = load i32, i32* %6, align 4
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** @hdacc_codecs, align 8
  %24 = call i32 @nitems(%struct.TYPE_3__* %23)
  %25 = icmp slt i32 %22, %24
  br i1 %25, label %26, label %60

26:                                               ; preds = %21
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** @hdacc_codecs, align 8
  %28 = load i32, i32* %6, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* %3, align 4
  %34 = call i32 @HDA_DEV_MATCH(i32 %32, i32 %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %26
  br label %57

37:                                               ; preds = %26
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** @hdacc_codecs, align 8
  %39 = load i32, i32* %6, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %56

45:                                               ; preds = %37
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** @hdacc_codecs, align 8
  %47 = load i32, i32* %6, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = load i32, i32* %4, align 4
  %53 = sext i32 %52 to i64
  %54 = icmp ne i64 %51, %53
  br i1 %54, label %55, label %56

55:                                               ; preds = %45
  br label %57

56:                                               ; preds = %45, %37
  br label %60

57:                                               ; preds = %55, %36
  %58 = load i32, i32* %6, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %6, align 4
  br label %21

60:                                               ; preds = %56, %21
  %61 = load i32, i32* %6, align 4
  %62 = load %struct.TYPE_3__*, %struct.TYPE_3__** @hdacc_codecs, align 8
  %63 = call i32 @nitems(%struct.TYPE_3__* %62)
  %64 = icmp slt i32 %61, %63
  br i1 %64, label %65, label %95

65:                                               ; preds = %60
  %66 = load %struct.TYPE_3__*, %struct.TYPE_3__** @hdacc_codecs, align 8
  %67 = load i32, i32* %6, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i64 %68
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = and i32 %71, 65535
  %73 = icmp ne i32 %72, 65535
  br i1 %73, label %74, label %83

74:                                               ; preds = %65
  %75 = getelementptr inbounds [128 x i8], [128 x i8]* %5, i64 0, i64 0
  %76 = load %struct.TYPE_3__*, %struct.TYPE_3__** @hdacc_codecs, align 8
  %77 = load i32, i32* %6, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i64 %78
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i32 0, i32 2
  %81 = load i8*, i8** %80, align 8
  %82 = call i32 @strlcpy(i8* %75, i8* %81, i32 128)
  br label %94

83:                                               ; preds = %65
  %84 = getelementptr inbounds [128 x i8], [128 x i8]* %5, i64 0, i64 0
  %85 = load %struct.TYPE_3__*, %struct.TYPE_3__** @hdacc_codecs, align 8
  %86 = load i32, i32* %6, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i64 %87
  %89 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %88, i32 0, i32 2
  %90 = load i8*, i8** %89, align 8
  %91 = load i32, i32* %2, align 4
  %92 = call i32 @hda_get_device_id(i32 %91)
  %93 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %84, i32 128, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8* %90, i32 %92)
  br label %94

94:                                               ; preds = %83, %74
  br label %99

95:                                               ; preds = %60
  %96 = getelementptr inbounds [128 x i8], [128 x i8]* %5, i64 0, i64 0
  %97 = load i32, i32* %3, align 4
  %98 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %96, i32 128, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 %97)
  br label %99

99:                                               ; preds = %95, %94
  %100 = getelementptr inbounds [128 x i8], [128 x i8]* %5, i64 0, i64 0
  %101 = call i32 @strlcat(i8* %100, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i32 128)
  %102 = load i32, i32* %2, align 4
  %103 = getelementptr inbounds [128 x i8], [128 x i8]* %5, i64 0, i64 0
  %104 = call i32 @device_set_desc_copy(i32 %102, i8* %103)
  %105 = load i32, i32* @BUS_PROBE_DEFAULT, align 4
  ret i32 %105
}

declare dso_local i64 @hda_get_vendor_id(i32) #1

declare dso_local i32 @hda_get_device_id(i32) #1

declare dso_local i64 @hda_get_revision_id(i32) #1

declare dso_local i32 @hda_get_stepping_id(i32) #1

declare dso_local i32 @nitems(%struct.TYPE_3__*) #1

declare dso_local i32 @HDA_DEV_MATCH(i32, i32) #1

declare dso_local i32 @strlcpy(i8*, i8*, i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, ...) #1

declare dso_local i32 @strlcat(i8*, i8*, i32) #1

declare dso_local i32 @device_set_desc_copy(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
