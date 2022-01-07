; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/vinum/extr_geom_vinum_list.c_gv_lsi.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/vinum/extr_geom_vinum_list.c_gv_lsi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gv_sd = type { i32, i64, i32, i32, i32, i32, i32, i32, %struct.TYPE_2__*, i32, i32* }
%struct.TYPE_2__ = type { i8* }
%struct.sbuf = type { i32 }

@GV_FLAG_V = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"Subdisk %s:\0A\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"\09\09Size: %16jd bytes (%jd MB)\0A\00", align 1
@MEGABYTE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [13 x i8] c"\09\09State: %s\0A\00", align 1
@GV_SD_INITIALIZING = common dso_local global i64 0, align 8
@GV_SD_REVIVING = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [16 x i8] c"\09\09Initialized: \00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"\09\09Revived: \00", align 1
@.str.5 = private unnamed_addr constant [20 x i8] c"%16jd bytes (%d%%)\0A\00", align 1
@.str.6 = private unnamed_addr constant [30 x i8] c"\09\09Plex %s at offset %jd (%s)\0A\00", align 1
@.str.7 = private unnamed_addr constant [36 x i8] c"\09\09Drive %s (%s) at offset %jd (%s)\0A\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"*missing*\00", align 1
@.str.9 = private unnamed_addr constant [13 x i8] c"\09\09Flags: %d\0A\00", align 1
@.str.10 = private unnamed_addr constant [16 x i8] c"S %-21s State: \00", align 1
@.str.11 = private unnamed_addr constant [3 x i8] c"I \00", align 1
@.str.12 = private unnamed_addr constant [3 x i8] c"R \00", align 1
@.str.13 = private unnamed_addr constant [6 x i8] c"%d%%\09\00", align 1
@.str.14 = private unnamed_addr constant [4 x i8] c"%s\09\00", align 1
@.str.15 = private unnamed_addr constant [19 x i8] c"D: %-12s Size: %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gv_lsi(%struct.gv_sd* %0, %struct.sbuf* %1, i32 %2) #0 {
  %4 = alloca %struct.gv_sd*, align 8
  %5 = alloca %struct.sbuf*, align 8
  %6 = alloca i32, align 4
  store %struct.gv_sd* %0, %struct.gv_sd** %4, align 8
  store %struct.sbuf* %1, %struct.sbuf** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* %6, align 4
  %8 = load i32, i32* @GV_FLAG_V, align 4
  %9 = and i32 %7, %8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %119

11:                                               ; preds = %3
  %12 = load %struct.sbuf*, %struct.sbuf** %5, align 8
  %13 = load %struct.gv_sd*, %struct.gv_sd** %4, align 8
  %14 = getelementptr inbounds %struct.gv_sd, %struct.gv_sd* %13, i32 0, i32 6
  %15 = load i32, i32* %14, align 8
  %16 = call i32 (%struct.sbuf*, i8*, ...) @sbuf_printf(%struct.sbuf* %12, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %15)
  %17 = load %struct.sbuf*, %struct.sbuf** %5, align 8
  %18 = load %struct.gv_sd*, %struct.gv_sd** %4, align 8
  %19 = getelementptr inbounds %struct.gv_sd, %struct.gv_sd* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.gv_sd*, %struct.gv_sd** %4, align 8
  %22 = getelementptr inbounds %struct.gv_sd, %struct.gv_sd* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @MEGABYTE, align 4
  %25 = sdiv i32 %23, %24
  %26 = call i32 (%struct.sbuf*, i8*, ...) @sbuf_printf(%struct.sbuf* %17, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %20, i32 %25)
  %27 = load %struct.sbuf*, %struct.sbuf** %5, align 8
  %28 = load %struct.gv_sd*, %struct.gv_sd** %4, align 8
  %29 = getelementptr inbounds %struct.gv_sd, %struct.gv_sd* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = call i32 @gv_sdstate(i64 %30)
  %32 = call i32 (%struct.sbuf*, i8*, ...) @sbuf_printf(%struct.sbuf* %27, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 %31)
  %33 = load %struct.gv_sd*, %struct.gv_sd** %4, align 8
  %34 = getelementptr inbounds %struct.gv_sd, %struct.gv_sd* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @GV_SD_INITIALIZING, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %44, label %38

38:                                               ; preds = %11
  %39 = load %struct.gv_sd*, %struct.gv_sd** %4, align 8
  %40 = getelementptr inbounds %struct.gv_sd, %struct.gv_sd* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @GV_SD_REVIVING, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %70

44:                                               ; preds = %38, %11
  %45 = load %struct.gv_sd*, %struct.gv_sd** %4, align 8
  %46 = getelementptr inbounds %struct.gv_sd, %struct.gv_sd* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @GV_SD_INITIALIZING, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %53

50:                                               ; preds = %44
  %51 = load %struct.sbuf*, %struct.sbuf** %5, align 8
  %52 = call i32 (%struct.sbuf*, i8*, ...) @sbuf_printf(%struct.sbuf* %51, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0))
  br label %56

53:                                               ; preds = %44
  %54 = load %struct.sbuf*, %struct.sbuf** %5, align 8
  %55 = call i32 (%struct.sbuf*, i8*, ...) @sbuf_printf(%struct.sbuf* %54, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0))
  br label %56

56:                                               ; preds = %53, %50
  %57 = load %struct.sbuf*, %struct.sbuf** %5, align 8
  %58 = load %struct.gv_sd*, %struct.gv_sd** %4, align 8
  %59 = getelementptr inbounds %struct.gv_sd, %struct.gv_sd* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 8
  %61 = load %struct.gv_sd*, %struct.gv_sd** %4, align 8
  %62 = getelementptr inbounds %struct.gv_sd, %struct.gv_sd* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 8
  %64 = mul nsw i32 %63, 100
  %65 = load %struct.gv_sd*, %struct.gv_sd** %4, align 8
  %66 = getelementptr inbounds %struct.gv_sd, %struct.gv_sd* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = sdiv i32 %64, %67
  %69 = call i32 (%struct.sbuf*, i8*, ...) @sbuf_printf(%struct.sbuf* %57, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0), i32 %60, i32 %68)
  br label %70

70:                                               ; preds = %56, %38
  %71 = load %struct.gv_sd*, %struct.gv_sd** %4, align 8
  %72 = getelementptr inbounds %struct.gv_sd, %struct.gv_sd* %71, i32 0, i32 10
  %73 = load i32*, i32** %72, align 8
  %74 = icmp ne i32* %73, null
  br i1 %74, label %75, label %88

75:                                               ; preds = %70
  %76 = load %struct.sbuf*, %struct.sbuf** %5, align 8
  %77 = load %struct.gv_sd*, %struct.gv_sd** %4, align 8
  %78 = getelementptr inbounds %struct.gv_sd, %struct.gv_sd* %77, i32 0, i32 9
  %79 = load i32, i32* %78, align 8
  %80 = load %struct.gv_sd*, %struct.gv_sd** %4, align 8
  %81 = getelementptr inbounds %struct.gv_sd, %struct.gv_sd* %80, i32 0, i32 3
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.gv_sd*, %struct.gv_sd** %4, align 8
  %84 = getelementptr inbounds %struct.gv_sd, %struct.gv_sd* %83, i32 0, i32 3
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @gv_roughlength(i32 %85, i32 1)
  %87 = call i32 (%struct.sbuf*, i8*, ...) @sbuf_printf(%struct.sbuf* %76, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.6, i64 0, i64 0), i32 %79, i32 %82, i32 %86)
  br label %88

88:                                               ; preds = %75, %70
  %89 = load %struct.sbuf*, %struct.sbuf** %5, align 8
  %90 = load %struct.gv_sd*, %struct.gv_sd** %4, align 8
  %91 = getelementptr inbounds %struct.gv_sd, %struct.gv_sd* %90, i32 0, i32 4
  %92 = load i32, i32* %91, align 8
  %93 = load %struct.gv_sd*, %struct.gv_sd** %4, align 8
  %94 = getelementptr inbounds %struct.gv_sd, %struct.gv_sd* %93, i32 0, i32 8
  %95 = load %struct.TYPE_2__*, %struct.TYPE_2__** %94, align 8
  %96 = icmp eq %struct.TYPE_2__* %95, null
  br i1 %96, label %97, label %98

97:                                               ; preds = %88
  br label %104

98:                                               ; preds = %88
  %99 = load %struct.gv_sd*, %struct.gv_sd** %4, align 8
  %100 = getelementptr inbounds %struct.gv_sd, %struct.gv_sd* %99, i32 0, i32 8
  %101 = load %struct.TYPE_2__*, %struct.TYPE_2__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %101, i32 0, i32 0
  %103 = load i8*, i8** %102, align 8
  br label %104

104:                                              ; preds = %98, %97
  %105 = phi i8* [ getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0), %97 ], [ %103, %98 ]
  %106 = load %struct.gv_sd*, %struct.gv_sd** %4, align 8
  %107 = getelementptr inbounds %struct.gv_sd, %struct.gv_sd* %106, i32 0, i32 5
  %108 = load i32, i32* %107, align 4
  %109 = load %struct.gv_sd*, %struct.gv_sd** %4, align 8
  %110 = getelementptr inbounds %struct.gv_sd, %struct.gv_sd* %109, i32 0, i32 5
  %111 = load i32, i32* %110, align 4
  %112 = call i32 @gv_roughlength(i32 %111, i32 1)
  %113 = call i32 (%struct.sbuf*, i8*, ...) @sbuf_printf(%struct.sbuf* %89, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.7, i64 0, i64 0), i32 %92, i8* %105, i32 %108, i32 %112)
  %114 = load %struct.sbuf*, %struct.sbuf** %5, align 8
  %115 = load %struct.gv_sd*, %struct.gv_sd** %4, align 8
  %116 = getelementptr inbounds %struct.gv_sd, %struct.gv_sd* %115, i32 0, i32 7
  %117 = load i32, i32* %116, align 4
  %118 = call i32 (%struct.sbuf*, i8*, ...) @sbuf_printf(%struct.sbuf* %114, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i64 0, i64 0), i32 %117)
  br label %176

119:                                              ; preds = %3
  %120 = load %struct.sbuf*, %struct.sbuf** %5, align 8
  %121 = load %struct.gv_sd*, %struct.gv_sd** %4, align 8
  %122 = getelementptr inbounds %struct.gv_sd, %struct.gv_sd* %121, i32 0, i32 6
  %123 = load i32, i32* %122, align 8
  %124 = call i32 (%struct.sbuf*, i8*, ...) @sbuf_printf(%struct.sbuf* %120, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.10, i64 0, i64 0), i32 %123)
  %125 = load %struct.gv_sd*, %struct.gv_sd** %4, align 8
  %126 = getelementptr inbounds %struct.gv_sd, %struct.gv_sd* %125, i32 0, i32 1
  %127 = load i64, i64* %126, align 8
  %128 = load i64, i64* @GV_SD_INITIALIZING, align 8
  %129 = icmp eq i64 %127, %128
  br i1 %129, label %136, label %130

130:                                              ; preds = %119
  %131 = load %struct.gv_sd*, %struct.gv_sd** %4, align 8
  %132 = getelementptr inbounds %struct.gv_sd, %struct.gv_sd* %131, i32 0, i32 1
  %133 = load i64, i64* %132, align 8
  %134 = load i64, i64* @GV_SD_REVIVING, align 8
  %135 = icmp eq i64 %133, %134
  br i1 %135, label %136, label %159

136:                                              ; preds = %130, %119
  %137 = load %struct.gv_sd*, %struct.gv_sd** %4, align 8
  %138 = getelementptr inbounds %struct.gv_sd, %struct.gv_sd* %137, i32 0, i32 1
  %139 = load i64, i64* %138, align 8
  %140 = load i64, i64* @GV_SD_INITIALIZING, align 8
  %141 = icmp eq i64 %139, %140
  br i1 %141, label %142, label %145

142:                                              ; preds = %136
  %143 = load %struct.sbuf*, %struct.sbuf** %5, align 8
  %144 = call i32 (%struct.sbuf*, i8*, ...) @sbuf_printf(%struct.sbuf* %143, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.11, i64 0, i64 0))
  br label %148

145:                                              ; preds = %136
  %146 = load %struct.sbuf*, %struct.sbuf** %5, align 8
  %147 = call i32 (%struct.sbuf*, i8*, ...) @sbuf_printf(%struct.sbuf* %146, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.12, i64 0, i64 0))
  br label %148

148:                                              ; preds = %145, %142
  %149 = load %struct.sbuf*, %struct.sbuf** %5, align 8
  %150 = load %struct.gv_sd*, %struct.gv_sd** %4, align 8
  %151 = getelementptr inbounds %struct.gv_sd, %struct.gv_sd* %150, i32 0, i32 2
  %152 = load i32, i32* %151, align 8
  %153 = mul nsw i32 %152, 100
  %154 = load %struct.gv_sd*, %struct.gv_sd** %4, align 8
  %155 = getelementptr inbounds %struct.gv_sd, %struct.gv_sd* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 8
  %157 = sdiv i32 %153, %156
  %158 = call i32 (%struct.sbuf*, i8*, ...) @sbuf_printf(%struct.sbuf* %149, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.13, i64 0, i64 0), i32 %157)
  br label %166

159:                                              ; preds = %130
  %160 = load %struct.sbuf*, %struct.sbuf** %5, align 8
  %161 = load %struct.gv_sd*, %struct.gv_sd** %4, align 8
  %162 = getelementptr inbounds %struct.gv_sd, %struct.gv_sd* %161, i32 0, i32 1
  %163 = load i64, i64* %162, align 8
  %164 = call i32 @gv_sdstate(i64 %163)
  %165 = call i32 (%struct.sbuf*, i8*, ...) @sbuf_printf(%struct.sbuf* %160, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14, i64 0, i64 0), i32 %164)
  br label %166

166:                                              ; preds = %159, %148
  %167 = load %struct.sbuf*, %struct.sbuf** %5, align 8
  %168 = load %struct.gv_sd*, %struct.gv_sd** %4, align 8
  %169 = getelementptr inbounds %struct.gv_sd, %struct.gv_sd* %168, i32 0, i32 4
  %170 = load i32, i32* %169, align 8
  %171 = load %struct.gv_sd*, %struct.gv_sd** %4, align 8
  %172 = getelementptr inbounds %struct.gv_sd, %struct.gv_sd* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 8
  %174 = call i32 @gv_roughlength(i32 %173, i32 0)
  %175 = call i32 (%struct.sbuf*, i8*, ...) @sbuf_printf(%struct.sbuf* %167, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.15, i64 0, i64 0), i32 %170, i32 %174)
  br label %176

176:                                              ; preds = %166, %104
  ret void
}

declare dso_local i32 @sbuf_printf(%struct.sbuf*, i8*, ...) #1

declare dso_local i32 @gv_sdstate(i64) #1

declare dso_local i32 @gv_roughlength(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
