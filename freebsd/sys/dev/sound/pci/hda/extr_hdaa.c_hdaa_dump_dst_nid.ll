; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/hda/extr_hdaa.c_hdaa_dump_dst_nid.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/hda/extr_hdaa.c_hdaa_dump_dst_nid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hdaa_pcm_devinfo = type { i32, %struct.hdaa_devinfo* }
%struct.hdaa_devinfo = type { i32 }
%struct.hdaa_widget = type { i64, i32, i8*, i64, i64, i32, i64*, i32, i32* }

@HDA_PARSE_MAXDEPTH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"%*s\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"%*s  + <- \00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"nid=%d [%s]\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c" [src: %s]\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hdaa_pcm_devinfo*, i32, i32)* @hdaa_dump_dst_nid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hdaa_dump_dst_nid(%struct.hdaa_pcm_devinfo* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.hdaa_pcm_devinfo*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.hdaa_devinfo*, align 8
  %8 = alloca %struct.hdaa_widget*, align 8
  %9 = alloca %struct.hdaa_widget*, align 8
  %10 = alloca [64 x i8], align 16
  %11 = alloca i32, align 4
  store %struct.hdaa_pcm_devinfo* %0, %struct.hdaa_pcm_devinfo** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %12 = load %struct.hdaa_pcm_devinfo*, %struct.hdaa_pcm_devinfo** %4, align 8
  %13 = getelementptr inbounds %struct.hdaa_pcm_devinfo, %struct.hdaa_pcm_devinfo* %12, i32 0, i32 1
  %14 = load %struct.hdaa_devinfo*, %struct.hdaa_devinfo** %13, align 8
  store %struct.hdaa_devinfo* %14, %struct.hdaa_devinfo** %7, align 8
  %15 = load i32, i32* %6, align 4
  %16 = load i32, i32* @HDA_PARSE_MAXDEPTH, align 4
  %17 = icmp sgt i32 %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %3
  br label %134

19:                                               ; preds = %3
  %20 = load %struct.hdaa_devinfo*, %struct.hdaa_devinfo** %7, align 8
  %21 = load i32, i32* %5, align 4
  %22 = call %struct.hdaa_widget* @hdaa_widget_get(%struct.hdaa_devinfo* %20, i32 %21)
  store %struct.hdaa_widget* %22, %struct.hdaa_widget** %8, align 8
  %23 = load %struct.hdaa_widget*, %struct.hdaa_widget** %8, align 8
  %24 = icmp eq %struct.hdaa_widget* %23, null
  br i1 %24, label %30, label %25

25:                                               ; preds = %19
  %26 = load %struct.hdaa_widget*, %struct.hdaa_widget** %8, align 8
  %27 = getelementptr inbounds %struct.hdaa_widget, %struct.hdaa_widget* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %25, %19
  br label %134

31:                                               ; preds = %25
  %32 = load i32, i32* %6, align 4
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %31
  %35 = load %struct.hdaa_pcm_devinfo*, %struct.hdaa_pcm_devinfo** %4, align 8
  %36 = getelementptr inbounds %struct.hdaa_pcm_devinfo, %struct.hdaa_pcm_devinfo* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @device_printf(i32 %37, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 4, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  br label %48

39:                                               ; preds = %31
  %40 = load %struct.hdaa_pcm_devinfo*, %struct.hdaa_pcm_devinfo** %4, align 8
  %41 = getelementptr inbounds %struct.hdaa_pcm_devinfo, %struct.hdaa_pcm_devinfo* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* %6, align 4
  %44 = sub nsw i32 %43, 1
  %45 = mul nsw i32 %44, 7
  %46 = add nsw i32 4, %45
  %47 = call i32 @device_printf(i32 %42, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i32 %46, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  br label %48

48:                                               ; preds = %39, %34
  %49 = load %struct.hdaa_widget*, %struct.hdaa_widget** %8, align 8
  %50 = getelementptr inbounds %struct.hdaa_widget, %struct.hdaa_widget* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.hdaa_widget*, %struct.hdaa_widget** %8, align 8
  %53 = getelementptr inbounds %struct.hdaa_widget, %struct.hdaa_widget* %52, i32 0, i32 2
  %54 = load i8*, i8** %53, align 8
  %55 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i32 %51, i8* %54)
  %56 = load i32, i32* %6, align 4
  %57 = icmp sgt i32 %56, 0
  br i1 %57, label %58, label %79

58:                                               ; preds = %48
  %59 = load %struct.hdaa_widget*, %struct.hdaa_widget** %8, align 8
  %60 = getelementptr inbounds %struct.hdaa_widget, %struct.hdaa_widget* %59, i32 0, i32 3
  %61 = load i64, i64* %60, align 8
  %62 = icmp eq i64 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %58
  %64 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  br label %134

65:                                               ; preds = %58
  %66 = load %struct.hdaa_widget*, %struct.hdaa_widget** %8, align 8
  %67 = getelementptr inbounds %struct.hdaa_widget, %struct.hdaa_widget* %66, i32 0, i32 3
  %68 = load i64, i64* %67, align 8
  %69 = getelementptr inbounds [64 x i8], [64 x i8]* %10, i64 0, i64 0
  %70 = call i8* @hdaa_audio_ctl_ossmixer_mask2allname(i64 %68, i8* %69, i32 64)
  %71 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0), i8* %70)
  %72 = load %struct.hdaa_widget*, %struct.hdaa_widget** %8, align 8
  %73 = getelementptr inbounds %struct.hdaa_widget, %struct.hdaa_widget* %72, i32 0, i32 4
  %74 = load i64, i64* %73, align 8
  %75 = icmp sge i64 %74, 0
  br i1 %75, label %76, label %78

76:                                               ; preds = %65
  %77 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  br label %134

78:                                               ; preds = %65
  br label %79

79:                                               ; preds = %78, %48
  %80 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  store i32 0, i32* %11, align 4
  br label %81

81:                                               ; preds = %131, %79
  %82 = load i32, i32* %11, align 4
  %83 = load %struct.hdaa_widget*, %struct.hdaa_widget** %8, align 8
  %84 = getelementptr inbounds %struct.hdaa_widget, %struct.hdaa_widget* %83, i32 0, i32 5
  %85 = load i32, i32* %84, align 8
  %86 = icmp slt i32 %82, %85
  br i1 %86, label %87, label %134

87:                                               ; preds = %81
  %88 = load %struct.hdaa_widget*, %struct.hdaa_widget** %8, align 8
  %89 = getelementptr inbounds %struct.hdaa_widget, %struct.hdaa_widget* %88, i32 0, i32 6
  %90 = load i64*, i64** %89, align 8
  %91 = load i32, i32* %11, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i64, i64* %90, i64 %92
  %94 = load i64, i64* %93, align 8
  %95 = icmp eq i64 %94, 0
  br i1 %95, label %96, label %97

96:                                               ; preds = %87
  br label %131

97:                                               ; preds = %87
  %98 = load %struct.hdaa_devinfo*, %struct.hdaa_devinfo** %7, align 8
  %99 = load %struct.hdaa_widget*, %struct.hdaa_widget** %8, align 8
  %100 = getelementptr inbounds %struct.hdaa_widget, %struct.hdaa_widget* %99, i32 0, i32 8
  %101 = load i32*, i32** %100, align 8
  %102 = load i32, i32* %11, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i32, i32* %101, i64 %103
  %105 = load i32, i32* %104, align 4
  %106 = call %struct.hdaa_widget* @hdaa_widget_get(%struct.hdaa_devinfo* %98, i32 %105)
  store %struct.hdaa_widget* %106, %struct.hdaa_widget** %9, align 8
  %107 = load %struct.hdaa_widget*, %struct.hdaa_widget** %9, align 8
  %108 = icmp eq %struct.hdaa_widget* %107, null
  br i1 %108, label %119, label %109

109:                                              ; preds = %97
  %110 = load %struct.hdaa_widget*, %struct.hdaa_widget** %9, align 8
  %111 = getelementptr inbounds %struct.hdaa_widget, %struct.hdaa_widget* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = icmp eq i64 %112, 0
  br i1 %113, label %119, label %114

114:                                              ; preds = %109
  %115 = load %struct.hdaa_widget*, %struct.hdaa_widget** %9, align 8
  %116 = getelementptr inbounds %struct.hdaa_widget, %struct.hdaa_widget* %115, i32 0, i32 7
  %117 = load i32, i32* %116, align 8
  %118 = icmp eq i32 %117, -1
  br i1 %118, label %119, label %120

119:                                              ; preds = %114, %109, %97
  br label %131

120:                                              ; preds = %114
  %121 = load %struct.hdaa_pcm_devinfo*, %struct.hdaa_pcm_devinfo** %4, align 8
  %122 = load %struct.hdaa_widget*, %struct.hdaa_widget** %8, align 8
  %123 = getelementptr inbounds %struct.hdaa_widget, %struct.hdaa_widget* %122, i32 0, i32 8
  %124 = load i32*, i32** %123, align 8
  %125 = load i32, i32* %11, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds i32, i32* %124, i64 %126
  %128 = load i32, i32* %127, align 4
  %129 = load i32, i32* %6, align 4
  %130 = add nsw i32 %129, 1
  call void @hdaa_dump_dst_nid(%struct.hdaa_pcm_devinfo* %121, i32 %128, i32 %130)
  br label %131

131:                                              ; preds = %120, %119, %96
  %132 = load i32, i32* %11, align 4
  %133 = add nsw i32 %132, 1
  store i32 %133, i32* %11, align 4
  br label %81

134:                                              ; preds = %18, %30, %63, %76, %81
  ret void
}

declare dso_local %struct.hdaa_widget* @hdaa_widget_get(%struct.hdaa_devinfo*, i32) #1

declare dso_local i32 @device_printf(i32, i8*, i32, i8*) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i8* @hdaa_audio_ctl_ossmixer_mask2allname(i64, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
