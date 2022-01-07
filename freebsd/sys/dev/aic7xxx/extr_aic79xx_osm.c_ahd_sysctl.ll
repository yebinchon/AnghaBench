; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/aic7xxx/extr_aic79xx_osm.c_ahd_sysctl.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/aic7xxx/extr_aic79xx_osm.c_ahd_sysctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ahd_softc = type { i8**, i32*, i32*, i32 }

@AHD_SYSCTL_NUMBER = common dso_local global i64 0, align 8
@AHD_SYSCTL_ROOT = common dso_local global i64 0, align 8
@_hw = common dso_local global i32 0, align 4
@OID_AUTO = common dso_local global i32 0, align 4
@CTLFLAG_RD = common dso_local global i32 0, align 4
@ahd_sysctl_node_descriptions = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [6 x i8] c"clear\00", align 1
@CTLTYPE_UINT = common dso_local global i32 0, align 4
@CTLFLAG_RW = common dso_local global i32 0, align 4
@ahd_clear_allcounters = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"IU\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"Clear all counters\00", align 1
@AHD_SYSCTL_SUMMARY = common dso_local global i64 0, align 8
@ahd_sysctl_node_elements = common dso_local global i32* null, align 8
@AHD_ERRORS_CORRECTABLE = common dso_local global i64 0, align 8
@AHD_ERRORS_NUMBER = common dso_local global i64 0, align 8
@ahd_sysctl_errors_elements = common dso_local global i8** null, align 8
@ahd_sysctl_errors_descriptions = common dso_local global i8** null, align 8
@AHD_SYSCTL_DEBUG = common dso_local global i64 0, align 8
@ahd_set_debugcounters = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ahd_sysctl(%struct.ahd_softc* %0) #0 {
  %2 = alloca %struct.ahd_softc*, align 8
  %3 = alloca i64, align 8
  store %struct.ahd_softc* %0, %struct.ahd_softc** %2, align 8
  store i64 0, i64* %3, align 8
  br label %4

4:                                                ; preds = %15, %1
  %5 = load i64, i64* %3, align 8
  %6 = load i64, i64* @AHD_SYSCTL_NUMBER, align 8
  %7 = icmp ult i64 %5, %6
  br i1 %7, label %8, label %18

8:                                                ; preds = %4
  %9 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %10 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %9, i32 0, i32 1
  %11 = load i32*, i32** %10, align 8
  %12 = load i64, i64* %3, align 8
  %13 = getelementptr inbounds i32, i32* %11, i64 %12
  %14 = call i32 @sysctl_ctx_init(i32* %13)
  br label %15

15:                                               ; preds = %8
  %16 = load i64, i64* %3, align 8
  %17 = add i64 %16, 1
  store i64 %17, i64* %3, align 8
  br label %4

18:                                               ; preds = %4
  %19 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %20 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %19, i32 0, i32 1
  %21 = load i32*, i32** %20, align 8
  %22 = load i64, i64* @AHD_SYSCTL_ROOT, align 8
  %23 = getelementptr inbounds i32, i32* %21, i64 %22
  %24 = load i32, i32* @_hw, align 4
  %25 = call i32 @SYSCTL_STATIC_CHILDREN(i32 %24)
  %26 = load i32, i32* @OID_AUTO, align 4
  %27 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %28 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @device_get_nameunit(i32 %29)
  %31 = load i32, i32* @CTLFLAG_RD, align 4
  %32 = load i32*, i32** @ahd_sysctl_node_descriptions, align 8
  %33 = load i64, i64* @AHD_SYSCTL_ROOT, align 8
  %34 = getelementptr inbounds i32, i32* %32, i64 %33
  %35 = load i32, i32* %34, align 4
  %36 = call i8* @SYSCTL_ADD_NODE(i32* %23, i32 %25, i32 %26, i32 %30, i32 %31, i32 0, i32 %35)
  %37 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %38 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %37, i32 0, i32 0
  %39 = load i8**, i8*** %38, align 8
  %40 = load i64, i64* @AHD_SYSCTL_ROOT, align 8
  %41 = getelementptr inbounds i8*, i8** %39, i64 %40
  store i8* %36, i8** %41, align 8
  %42 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %43 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %42, i32 0, i32 1
  %44 = load i32*, i32** %43, align 8
  %45 = load i64, i64* @AHD_SYSCTL_ROOT, align 8
  %46 = getelementptr inbounds i32, i32* %44, i64 %45
  %47 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %48 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %47, i32 0, i32 0
  %49 = load i8**, i8*** %48, align 8
  %50 = load i64, i64* @AHD_SYSCTL_ROOT, align 8
  %51 = getelementptr inbounds i8*, i8** %49, i64 %50
  %52 = load i8*, i8** %51, align 8
  %53 = call i32 @SYSCTL_CHILDREN(i8* %52)
  %54 = load i32, i32* @OID_AUTO, align 4
  %55 = load i32, i32* @CTLTYPE_UINT, align 4
  %56 = load i32, i32* @CTLFLAG_RW, align 4
  %57 = or i32 %55, %56
  %58 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %59 = load i32, i32* @ahd_clear_allcounters, align 4
  %60 = call i32 @SYSCTL_ADD_PROC(i32* %46, i32 %53, i32 %54, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %57, %struct.ahd_softc* %58, i64 0, i32 %59, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  %61 = load i64, i64* @AHD_SYSCTL_SUMMARY, align 8
  store i64 %61, i64* %3, align 8
  br label %62

62:                                               ; preds = %95, %18
  %63 = load i64, i64* %3, align 8
  %64 = load i64, i64* @AHD_SYSCTL_NUMBER, align 8
  %65 = icmp ult i64 %63, %64
  br i1 %65, label %66, label %98

66:                                               ; preds = %62
  %67 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %68 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %67, i32 0, i32 1
  %69 = load i32*, i32** %68, align 8
  %70 = load i64, i64* %3, align 8
  %71 = getelementptr inbounds i32, i32* %69, i64 %70
  %72 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %73 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %72, i32 0, i32 0
  %74 = load i8**, i8*** %73, align 8
  %75 = load i64, i64* @AHD_SYSCTL_ROOT, align 8
  %76 = getelementptr inbounds i8*, i8** %74, i64 %75
  %77 = load i8*, i8** %76, align 8
  %78 = call i32 @SYSCTL_CHILDREN(i8* %77)
  %79 = load i32, i32* @OID_AUTO, align 4
  %80 = load i32*, i32** @ahd_sysctl_node_elements, align 8
  %81 = load i64, i64* %3, align 8
  %82 = getelementptr inbounds i32, i32* %80, i64 %81
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* @CTLFLAG_RD, align 4
  %85 = load i32*, i32** @ahd_sysctl_node_descriptions, align 8
  %86 = load i64, i64* %3, align 8
  %87 = getelementptr inbounds i32, i32* %85, i64 %86
  %88 = load i32, i32* %87, align 4
  %89 = call i8* @SYSCTL_ADD_NODE(i32* %71, i32 %78, i32 %79, i32 %83, i32 %84, i32 0, i32 %88)
  %90 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %91 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %90, i32 0, i32 0
  %92 = load i8**, i8*** %91, align 8
  %93 = load i64, i64* %3, align 8
  %94 = getelementptr inbounds i8*, i8** %92, i64 %93
  store i8* %89, i8** %94, align 8
  br label %95

95:                                               ; preds = %66
  %96 = load i64, i64* %3, align 8
  %97 = add i64 %96, 1
  store i64 %97, i64* %3, align 8
  br label %62

98:                                               ; preds = %62
  %99 = load i64, i64* @AHD_ERRORS_CORRECTABLE, align 8
  store i64 %99, i64* %3, align 8
  br label %100

100:                                              ; preds = %162, %98
  %101 = load i64, i64* %3, align 8
  %102 = load i64, i64* @AHD_ERRORS_NUMBER, align 8
  %103 = icmp ult i64 %101, %102
  br i1 %103, label %104, label %165

104:                                              ; preds = %100
  %105 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %106 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %105, i32 0, i32 1
  %107 = load i32*, i32** %106, align 8
  %108 = load i64, i64* @AHD_SYSCTL_SUMMARY, align 8
  %109 = getelementptr inbounds i32, i32* %107, i64 %108
  %110 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %111 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %110, i32 0, i32 0
  %112 = load i8**, i8*** %111, align 8
  %113 = load i64, i64* @AHD_SYSCTL_SUMMARY, align 8
  %114 = getelementptr inbounds i8*, i8** %112, i64 %113
  %115 = load i8*, i8** %114, align 8
  %116 = call i32 @SYSCTL_CHILDREN(i8* %115)
  %117 = load i32, i32* @OID_AUTO, align 4
  %118 = load i8**, i8*** @ahd_sysctl_errors_elements, align 8
  %119 = load i64, i64* %3, align 8
  %120 = getelementptr inbounds i8*, i8** %118, i64 %119
  %121 = load i8*, i8** %120, align 8
  %122 = load i32, i32* @CTLFLAG_RD, align 4
  %123 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %124 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %123, i32 0, i32 2
  %125 = load i32*, i32** %124, align 8
  %126 = load i64, i64* %3, align 8
  %127 = getelementptr inbounds i32, i32* %125, i64 %126
  %128 = load i64, i64* %3, align 8
  %129 = load i8**, i8*** @ahd_sysctl_errors_descriptions, align 8
  %130 = load i64, i64* %3, align 8
  %131 = getelementptr inbounds i8*, i8** %129, i64 %130
  %132 = load i8*, i8** %131, align 8
  %133 = call i32 @SYSCTL_ADD_UINT(i32* %109, i32 %116, i32 %117, i8* %121, i32 %122, i32* %127, i64 %128, i8* %132)
  %134 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %135 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %134, i32 0, i32 1
  %136 = load i32*, i32** %135, align 8
  %137 = load i64, i64* @AHD_SYSCTL_DEBUG, align 8
  %138 = getelementptr inbounds i32, i32* %136, i64 %137
  %139 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %140 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %139, i32 0, i32 0
  %141 = load i8**, i8*** %140, align 8
  %142 = load i64, i64* @AHD_SYSCTL_DEBUG, align 8
  %143 = getelementptr inbounds i8*, i8** %141, i64 %142
  %144 = load i8*, i8** %143, align 8
  %145 = call i32 @SYSCTL_CHILDREN(i8* %144)
  %146 = load i32, i32* @OID_AUTO, align 4
  %147 = load i8**, i8*** @ahd_sysctl_errors_elements, align 8
  %148 = load i64, i64* %3, align 8
  %149 = getelementptr inbounds i8*, i8** %147, i64 %148
  %150 = load i8*, i8** %149, align 8
  %151 = load i32, i32* @CTLFLAG_RW, align 4
  %152 = load i32, i32* @CTLTYPE_UINT, align 4
  %153 = or i32 %151, %152
  %154 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %155 = load i64, i64* %3, align 8
  %156 = load i32, i32* @ahd_set_debugcounters, align 4
  %157 = load i8**, i8*** @ahd_sysctl_errors_descriptions, align 8
  %158 = load i64, i64* %3, align 8
  %159 = getelementptr inbounds i8*, i8** %157, i64 %158
  %160 = load i8*, i8** %159, align 8
  %161 = call i32 @SYSCTL_ADD_PROC(i32* %138, i32 %145, i32 %146, i8* %150, i32 %153, %struct.ahd_softc* %154, i64 %155, i32 %156, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %160)
  br label %162

162:                                              ; preds = %104
  %163 = load i64, i64* %3, align 8
  %164 = add i64 %163, 1
  store i64 %164, i64* %3, align 8
  br label %100

165:                                              ; preds = %100
  ret void
}

declare dso_local i32 @sysctl_ctx_init(i32*) #1

declare dso_local i8* @SYSCTL_ADD_NODE(i32*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @SYSCTL_STATIC_CHILDREN(i32) #1

declare dso_local i32 @device_get_nameunit(i32) #1

declare dso_local i32 @SYSCTL_ADD_PROC(i32*, i32, i32, i8*, i32, %struct.ahd_softc*, i64, i32, i8*, i8*) #1

declare dso_local i32 @SYSCTL_CHILDREN(i8*) #1

declare dso_local i32 @SYSCTL_ADD_UINT(i32*, i32, i32, i8*, i32, i32*, i64, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
