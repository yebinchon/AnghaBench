; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/mpsutil/extr_mps_show.c_show_cfgpage.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/mpsutil/extr_mps_show.c_show_cfgpage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }
%struct.TYPE_4__ = type { i32, i32, i32 }

@mps_unit = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"mps_open\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"cfgpage: not enough arguments\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"Error retrieving cfg page: %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"Read-only\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"Read-Write\00", align 1
@.str.5 = private unnamed_addr constant [22 x i8] c"Read-Write Persistent\00", align 1
@.str.6 = private unnamed_addr constant [23 x i8] c"Unknown Page Attribute\00", align 1
@.str.7 = private unnamed_addr constant [22 x i8] c"Page 0x%x: %s %d, %s\0A\00", align 1
@HD_REVERSED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8**)* @show_cfgpage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @show_cfgpage(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca %struct.TYPE_4__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %19 = load i32, i32* @mps_unit, align 4
  %20 = call i32 @mps_open(i32 %19)
  store i32 %20, i32* %13, align 4
  %21 = load i32, i32* %13, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %2
  %24 = load i32, i32* @errno, align 4
  store i32 %24, i32* %14, align 4
  %25 = call i32 (i8*, ...) @warn(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %26 = load i32, i32* %14, align 4
  store i32 %26, i32* %3, align 4
  br label %137

27:                                               ; preds = %2
  store i64 0, i64* %9, align 8
  store i32 0, i32* %12, align 4
  store i32 0, i32* %11, align 4
  %28 = load i32, i32* %4, align 4
  switch i32 %28, label %45 [
    i32 4, label %29
    i32 3, label %35
    i32 2, label %40
  ]

29:                                               ; preds = %27
  %30 = load i8**, i8*** %5, align 8
  %31 = getelementptr inbounds i8*, i8** %30, i64 3
  %32 = load i8*, i8** %31, align 8
  %33 = call i32 @strtoul(i8* %32, i32* null, i32 0)
  %34 = sext i32 %33 to i64
  store i64 %34, i64* %9, align 8
  br label %35

35:                                               ; preds = %27, %29
  %36 = load i8**, i8*** %5, align 8
  %37 = getelementptr inbounds i8*, i8** %36, i64 2
  %38 = load i8*, i8** %37, align 8
  %39 = call i32 @strtoul(i8* %38, i32* null, i32 0)
  store i32 %39, i32* %12, align 4
  br label %40

40:                                               ; preds = %27, %35
  %41 = load i8**, i8*** %5, align 8
  %42 = getelementptr inbounds i8*, i8** %41, i64 1
  %43 = load i8*, i8** %42, align 8
  %44 = call i32 @strtoul(i8* %43, i32* null, i32 0)
  store i32 %44, i32* %11, align 4
  br label %49

45:                                               ; preds = %27
  %46 = load i32, i32* @EINVAL, align 4
  store i32 %46, i32* @errno, align 4
  %47 = call i32 (i8*, ...) @warn(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  %48 = load i32, i32* @EINVAL, align 4
  store i32 %48, i32* %3, align 4
  br label %137

49:                                               ; preds = %40
  %50 = load i32, i32* %11, align 4
  %51 = icmp sge i32 %50, 16
  br i1 %51, label %52, label %58

52:                                               ; preds = %49
  %53 = load i32, i32* %13, align 4
  %54 = load i32, i32* %11, align 4
  %55 = load i32, i32* %12, align 4
  %56 = load i64, i64* %9, align 8
  %57 = call i8* @mps_read_extended_config_page(i32 %53, i32 %54, i32 0, i32 %55, i64 %56, i32* %10)
  store i8* %57, i8** %8, align 8
  br label %64

58:                                               ; preds = %49
  %59 = load i32, i32* %13, align 4
  %60 = load i32, i32* %11, align 4
  %61 = load i32, i32* %12, align 4
  %62 = load i64, i64* %9, align 8
  %63 = call i8* @mps_read_config_page(i32 %59, i32 %60, i32 %61, i64 %62, i32* %10)
  store i8* %63, i8** %8, align 8
  br label %64

64:                                               ; preds = %58, %52
  %65 = load i8*, i8** %8, align 8
  %66 = icmp eq i8* %65, null
  br i1 %66, label %67, label %73

67:                                               ; preds = %64
  %68 = load i32, i32* @errno, align 4
  store i32 %68, i32* %14, align 4
  %69 = load i32, i32* %10, align 4
  %70 = call i32 @mps_ioc_status(i32 %69)
  %71 = call i32 (i8*, ...) @warn(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i32 %70)
  %72 = load i32, i32* %14, align 4
  store i32 %72, i32* %3, align 4
  br label %137

73:                                               ; preds = %64
  %74 = load i32, i32* %11, align 4
  %75 = icmp sge i32 %74, 16
  br i1 %75, label %76, label %90

76:                                               ; preds = %73
  %77 = load i8*, i8** %8, align 8
  %78 = bitcast i8* %77 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %78, %struct.TYPE_4__** %7, align 8
  %79 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = mul nsw i32 %81, 4
  store i32 %82, i32* %15, align 4
  %83 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  store i32 %85, i32* %11, align 4
  %86 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 4
  %89 = ashr i32 %88, 4
  store i32 %89, i32* %16, align 4
  br label %105

90:                                               ; preds = %73
  %91 = load i8*, i8** %8, align 8
  %92 = bitcast i8* %91 to %struct.TYPE_3__*
  store %struct.TYPE_3__* %92, %struct.TYPE_3__** %6, align 8
  %93 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %94 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = mul nsw i32 %95, 4
  store i32 %96, i32* %15, align 4
  %97 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %98 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = and i32 %99, 15
  store i32 %100, i32* %11, align 4
  %101 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %102 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = ashr i32 %103, 4
  store i32 %104, i32* %16, align 4
  br label %105

105:                                              ; preds = %90, %76
  %106 = load i32, i32* %11, align 4
  %107 = call i8* @get_page_name(i32 %106)
  store i8* %107, i8** %17, align 8
  %108 = load i32, i32* %16, align 4
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %110, label %111

110:                                              ; preds = %105
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i8** %18, align 8
  br label %122

111:                                              ; preds = %105
  %112 = load i32, i32* %16, align 4
  %113 = icmp eq i32 %112, 1
  br i1 %113, label %114, label %115

114:                                              ; preds = %111
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i8** %18, align 8
  br label %121

115:                                              ; preds = %111
  %116 = load i32, i32* %16, align 4
  %117 = icmp eq i32 %116, 2
  br i1 %117, label %118, label %119

118:                                              ; preds = %115
  store i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0), i8** %18, align 8
  br label %120

119:                                              ; preds = %115
  store i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i64 0, i64 0), i8** %18, align 8
  br label %120

120:                                              ; preds = %119, %118
  br label %121

121:                                              ; preds = %120, %114
  br label %122

122:                                              ; preds = %121, %110
  %123 = load i32, i32* %11, align 4
  %124 = load i8*, i8** %17, align 8
  %125 = load i32, i32* %12, align 4
  %126 = load i8*, i8** %18, align 8
  %127 = call i32 @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i64 0, i64 0), i32 %123, i8* %124, i32 %125, i8* %126)
  %128 = load i8*, i8** %8, align 8
  %129 = load i32, i32* %15, align 4
  %130 = load i32, i32* @HD_REVERSED, align 4
  %131 = or i32 %130, 4
  %132 = call i32 @hexdump(i8* %128, i32 %129, i32* null, i32 %131)
  %133 = load i8*, i8** %8, align 8
  %134 = call i32 @free(i8* %133)
  %135 = load i32, i32* %13, align 4
  %136 = call i32 @close(i32 %135)
  store i32 0, i32* %3, align 4
  br label %137

137:                                              ; preds = %122, %67, %45, %23
  %138 = load i32, i32* %3, align 4
  ret i32 %138
}

declare dso_local i32 @mps_open(i32) #1

declare dso_local i32 @warn(i8*, ...) #1

declare dso_local i32 @strtoul(i8*, i32*, i32) #1

declare dso_local i8* @mps_read_extended_config_page(i32, i32, i32, i32, i64, i32*) #1

declare dso_local i8* @mps_read_config_page(i32, i32, i32, i64, i32*) #1

declare dso_local i32 @mps_ioc_status(i32) #1

declare dso_local i8* @get_page_name(i32) #1

declare dso_local i32 @printf(i8*, i32, i8*, i32, i8*) #1

declare dso_local i32 @hexdump(i8*, i32, i32*, i32) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
