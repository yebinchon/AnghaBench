; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/linux_lvm/extr_g_linux_lvm.c_llvm_textconf_decode_lv.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/linux_lvm/extr_g_linux_lvm.c_llvm_textconf_decode_lv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.g_llvm_vg = type { i32 }
%struct.g_llvm_lv = type { i64, i64, i32, i32, i32, i8*, %struct.g_llvm_vg* }
%struct.g_llvm_segment = type { i64, i64, i32, i32, i32, i8*, %struct.g_llvm_vg* }

@EINVAL = common dso_local global i32 0, align 4
@M_GLLVM = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"{\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"segment\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"}\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"=\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"id\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"segment_count\00", align 1
@lv_next = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [20 x i8] c"lv: name=%s uuid=%s\00", align 1
@sg_next = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8**, i8*, %struct.g_llvm_vg*)* @llvm_textconf_decode_lv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @llvm_textconf_decode_lv(i8** %0, i8* %1, %struct.g_llvm_vg* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.g_llvm_vg*, align 8
  %8 = alloca %struct.g_llvm_lv*, align 8
  %9 = alloca %struct.g_llvm_segment*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  store i8** %0, i8*** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.g_llvm_vg* %2, %struct.g_llvm_vg** %7, align 8
  %12 = load i8**, i8*** %5, align 8
  %13 = load i8*, i8** %12, align 8
  %14 = icmp eq i8* %13, null
  br i1 %14, label %21, label %15

15:                                               ; preds = %3
  %16 = load i8**, i8*** %5, align 8
  %17 = load i8*, i8** %16, align 8
  %18 = load i8, i8* %17, align 1
  %19 = sext i8 %18 to i32
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %15, %3
  %22 = load i32, i32* @EINVAL, align 4
  store i32 %22, i32* %4, align 4
  br label %155

23:                                               ; preds = %15
  %24 = load i32, i32* @M_GLLVM, align 4
  %25 = load i32, i32* @M_NOWAIT, align 4
  %26 = load i32, i32* @M_ZERO, align 4
  %27 = or i32 %25, %26
  %28 = call %struct.g_llvm_segment* @malloc(i32 48, i32 %24, i32 %27)
  %29 = bitcast %struct.g_llvm_segment* %28 to %struct.g_llvm_lv*
  store %struct.g_llvm_lv* %29, %struct.g_llvm_lv** %8, align 8
  %30 = load %struct.g_llvm_lv*, %struct.g_llvm_lv** %8, align 8
  %31 = icmp eq %struct.g_llvm_lv* %30, null
  br i1 %31, label %32, label %34

32:                                               ; preds = %23
  %33 = load i32, i32* @ENOMEM, align 4
  store i32 %33, i32* %4, align 4
  br label %155

34:                                               ; preds = %23
  %35 = load %struct.g_llvm_vg*, %struct.g_llvm_vg** %7, align 8
  %36 = load %struct.g_llvm_lv*, %struct.g_llvm_lv** %8, align 8
  %37 = getelementptr inbounds %struct.g_llvm_lv, %struct.g_llvm_lv* %36, i32 0, i32 6
  store %struct.g_llvm_vg* %35, %struct.g_llvm_vg** %37, align 8
  %38 = load %struct.g_llvm_lv*, %struct.g_llvm_lv** %8, align 8
  %39 = getelementptr inbounds %struct.g_llvm_lv, %struct.g_llvm_lv* %38, i32 0, i32 2
  %40 = call i32 @LIST_INIT(i32* %39)
  %41 = load i8*, i8** %6, align 8
  %42 = icmp eq i8* %41, null
  br i1 %42, label %43, label %44

43:                                               ; preds = %34
  br label %136

44:                                               ; preds = %34
  %45 = load %struct.g_llvm_lv*, %struct.g_llvm_lv** %8, align 8
  %46 = getelementptr inbounds %struct.g_llvm_lv, %struct.g_llvm_lv* %45, i32 0, i32 4
  %47 = load i32, i32* %46, align 8
  %48 = load i8*, i8** %6, align 8
  %49 = call i64 @llvm_grab_name(i32 %47, i8* %48)
  store i64 %49, i64* %11, align 8
  %50 = load i64, i64* %11, align 8
  %51 = icmp eq i64 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %44
  br label %136

53:                                               ; preds = %44
  br label %54

54:                                               ; preds = %98, %82, %66, %53
  %55 = load i8**, i8*** %5, align 8
  %56 = call i8* @strsep(i8** %55, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i8* %56, i8** %6, align 8
  %57 = icmp ne i8* %56, null
  br i1 %57, label %58, label %99

58:                                               ; preds = %54
  %59 = load i8*, i8** %6, align 8
  %60 = call i64 @strstr(i8* %59, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %73

62:                                               ; preds = %58
  %63 = load i8*, i8** %6, align 8
  %64 = call i64 @strstr(i8* %63, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %72

66:                                               ; preds = %62
  %67 = load i8**, i8*** %5, align 8
  %68 = load i8*, i8** %6, align 8
  %69 = load %struct.g_llvm_lv*, %struct.g_llvm_lv** %8, align 8
  %70 = bitcast %struct.g_llvm_lv* %69 to %struct.g_llvm_segment*
  %71 = call i32 @llvm_textconf_decode_sg(i8** %67, i8* %68, %struct.g_llvm_segment* %70)
  br label %54

72:                                               ; preds = %62
  br label %136

73:                                               ; preds = %58
  %74 = load i8*, i8** %6, align 8
  %75 = call i64 @strstr(i8* %74, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %73
  br label %99

78:                                               ; preds = %73
  %79 = load i8*, i8** %6, align 8
  %80 = call i64 @strstr(i8* %79, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %98

82:                                               ; preds = %78
  %83 = load i8*, i8** %10, align 8
  %84 = load i8*, i8** %6, align 8
  %85 = call i32 @SPLIT(i8* %83, i8* %84, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  %86 = load i8*, i8** %10, align 8
  %87 = load i8*, i8** %6, align 8
  %88 = load %struct.g_llvm_lv*, %struct.g_llvm_lv** %8, align 8
  %89 = getelementptr inbounds %struct.g_llvm_lv, %struct.g_llvm_lv* %88, i32 0, i32 3
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @GRAB_STR(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i8* %86, i8* %87, i32 %90, i32 4)
  %92 = load i8*, i8** %10, align 8
  %93 = load i8*, i8** %6, align 8
  %94 = load %struct.g_llvm_lv*, %struct.g_llvm_lv** %8, align 8
  %95 = getelementptr inbounds %struct.g_llvm_lv, %struct.g_llvm_lv* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = call i32 @GRAB_INT(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0), i8* %92, i8* %93, i64 %96)
  br label %54

98:                                               ; preds = %78
  br label %54

99:                                               ; preds = %77, %54
  %100 = load i8*, i8** %6, align 8
  %101 = icmp eq i8* %100, null
  br i1 %101, label %102, label %103

102:                                              ; preds = %99
  br label %136

103:                                              ; preds = %99
  %104 = load %struct.g_llvm_lv*, %struct.g_llvm_lv** %8, align 8
  %105 = getelementptr inbounds %struct.g_llvm_lv, %struct.g_llvm_lv* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = icmp eq i64 %106, 0
  br i1 %107, label %116, label %108

108:                                              ; preds = %103
  %109 = load %struct.g_llvm_lv*, %struct.g_llvm_lv** %8, align 8
  %110 = getelementptr inbounds %struct.g_llvm_lv, %struct.g_llvm_lv* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = load %struct.g_llvm_lv*, %struct.g_llvm_lv** %8, align 8
  %113 = getelementptr inbounds %struct.g_llvm_lv, %struct.g_llvm_lv* %112, i32 0, i32 1
  %114 = load i64, i64* %113, align 8
  %115 = icmp ne i64 %111, %114
  br i1 %115, label %116, label %117

116:                                              ; preds = %108, %103
  br label %136

117:                                              ; preds = %108
  %118 = load %struct.g_llvm_lv*, %struct.g_llvm_lv** %8, align 8
  %119 = getelementptr inbounds %struct.g_llvm_lv, %struct.g_llvm_lv* %118, i32 0, i32 2
  %120 = call i8* @LIST_FIRST(i32* %119)
  %121 = load %struct.g_llvm_lv*, %struct.g_llvm_lv** %8, align 8
  %122 = getelementptr inbounds %struct.g_llvm_lv, %struct.g_llvm_lv* %121, i32 0, i32 5
  store i8* %120, i8** %122, align 8
  %123 = load %struct.g_llvm_vg*, %struct.g_llvm_vg** %7, align 8
  %124 = getelementptr inbounds %struct.g_llvm_vg, %struct.g_llvm_vg* %123, i32 0, i32 0
  %125 = load %struct.g_llvm_lv*, %struct.g_llvm_lv** %8, align 8
  %126 = bitcast %struct.g_llvm_lv* %125 to %struct.g_llvm_segment*
  %127 = load i32, i32* @lv_next, align 4
  %128 = call i32 @LIST_INSERT_HEAD(i32* %124, %struct.g_llvm_segment* %126, i32 %127)
  %129 = load %struct.g_llvm_lv*, %struct.g_llvm_lv** %8, align 8
  %130 = getelementptr inbounds %struct.g_llvm_lv, %struct.g_llvm_lv* %129, i32 0, i32 4
  %131 = load i32, i32* %130, align 8
  %132 = load %struct.g_llvm_lv*, %struct.g_llvm_lv** %8, align 8
  %133 = getelementptr inbounds %struct.g_llvm_lv, %struct.g_llvm_lv* %132, i32 0, i32 3
  %134 = load i32, i32* %133, align 4
  %135 = call i32 @G_LLVM_DEBUG(i32 3, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7, i64 0, i64 0), i32 %131, i32 %134)
  store i32 0, i32* %4, align 4
  br label %155

136:                                              ; preds = %116, %102, %72, %52, %43
  br label %137

137:                                              ; preds = %143, %136
  %138 = load %struct.g_llvm_lv*, %struct.g_llvm_lv** %8, align 8
  %139 = getelementptr inbounds %struct.g_llvm_lv, %struct.g_llvm_lv* %138, i32 0, i32 2
  %140 = call i8* @LIST_FIRST(i32* %139)
  %141 = bitcast i8* %140 to %struct.g_llvm_segment*
  store %struct.g_llvm_segment* %141, %struct.g_llvm_segment** %9, align 8
  %142 = icmp ne %struct.g_llvm_segment* %141, null
  br i1 %142, label %143, label %150

143:                                              ; preds = %137
  %144 = load %struct.g_llvm_segment*, %struct.g_llvm_segment** %9, align 8
  %145 = load i32, i32* @sg_next, align 4
  %146 = call i32 @LIST_REMOVE(%struct.g_llvm_segment* %144, i32 %145)
  %147 = load %struct.g_llvm_segment*, %struct.g_llvm_segment** %9, align 8
  %148 = load i32, i32* @M_GLLVM, align 4
  %149 = call i32 @free(%struct.g_llvm_segment* %147, i32 %148)
  br label %137

150:                                              ; preds = %137
  %151 = load %struct.g_llvm_lv*, %struct.g_llvm_lv** %8, align 8
  %152 = bitcast %struct.g_llvm_lv* %151 to %struct.g_llvm_segment*
  %153 = load i32, i32* @M_GLLVM, align 4
  %154 = call i32 @free(%struct.g_llvm_segment* %152, i32 %153)
  store i32 -1, i32* %4, align 4
  br label %155

155:                                              ; preds = %150, %117, %32, %21
  %156 = load i32, i32* %4, align 4
  ret i32 %156
}

declare dso_local %struct.g_llvm_segment* @malloc(i32, i32, i32) #1

declare dso_local i32 @LIST_INIT(i32*) #1

declare dso_local i64 @llvm_grab_name(i32, i8*) #1

declare dso_local i8* @strsep(i8**, i8*) #1

declare dso_local i64 @strstr(i8*, i8*) #1

declare dso_local i32 @llvm_textconf_decode_sg(i8**, i8*, %struct.g_llvm_segment*) #1

declare dso_local i32 @SPLIT(i8*, i8*, i8*) #1

declare dso_local i32 @GRAB_STR(i8*, i8*, i8*, i32, i32) #1

declare dso_local i32 @GRAB_INT(i8*, i8*, i8*, i64) #1

declare dso_local i8* @LIST_FIRST(i32*) #1

declare dso_local i32 @LIST_INSERT_HEAD(i32*, %struct.g_llvm_segment*, i32) #1

declare dso_local i32 @G_LLVM_DEBUG(i32, i8*, i32, i32) #1

declare dso_local i32 @LIST_REMOVE(%struct.g_llvm_segment*, i32) #1

declare dso_local i32 @free(%struct.g_llvm_segment*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
