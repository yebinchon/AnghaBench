; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/linux_lvm/extr_g_linux_lvm.c_llvm_textconf_decode_pv.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/linux_lvm/extr_g_linux_lvm.c_llvm_textconf_decode_pv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.g_llvm_vg = type { i32 }
%struct.g_llvm_pv = type { i64, i64, i32, i32, %struct.g_llvm_vg* }

@EINVAL = common dso_local global i32 0, align 4
@M_GLLVM = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"{\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"}\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"=\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"id\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"pe_start\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"pe_count\00", align 1
@pv_next = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [20 x i8] c"pv: name=%s uuid=%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8**, i8*, %struct.g_llvm_vg*)* @llvm_textconf_decode_pv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @llvm_textconf_decode_pv(i8** %0, i8* %1, %struct.g_llvm_vg* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.g_llvm_vg*, align 8
  %8 = alloca %struct.g_llvm_pv*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  store i8** %0, i8*** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.g_llvm_vg* %2, %struct.g_llvm_vg** %7, align 8
  %11 = load i8**, i8*** %5, align 8
  %12 = load i8*, i8** %11, align 8
  %13 = icmp eq i8* %12, null
  br i1 %13, label %20, label %14

14:                                               ; preds = %3
  %15 = load i8**, i8*** %5, align 8
  %16 = load i8*, i8** %15, align 8
  %17 = load i8, i8* %16, align 1
  %18 = sext i8 %17 to i32
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %14, %3
  %21 = load i32, i32* @EINVAL, align 4
  store i32 %21, i32* %4, align 4
  br label %117

22:                                               ; preds = %14
  %23 = load i32, i32* @M_GLLVM, align 4
  %24 = load i32, i32* @M_NOWAIT, align 4
  %25 = load i32, i32* @M_ZERO, align 4
  %26 = or i32 %24, %25
  %27 = call %struct.g_llvm_pv* @malloc(i32 32, i32 %23, i32 %26)
  store %struct.g_llvm_pv* %27, %struct.g_llvm_pv** %8, align 8
  %28 = load %struct.g_llvm_pv*, %struct.g_llvm_pv** %8, align 8
  %29 = icmp eq %struct.g_llvm_pv* %28, null
  br i1 %29, label %30, label %32

30:                                               ; preds = %22
  %31 = load i32, i32* @ENOMEM, align 4
  store i32 %31, i32* %4, align 4
  br label %117

32:                                               ; preds = %22
  %33 = load %struct.g_llvm_vg*, %struct.g_llvm_vg** %7, align 8
  %34 = load %struct.g_llvm_pv*, %struct.g_llvm_pv** %8, align 8
  %35 = getelementptr inbounds %struct.g_llvm_pv, %struct.g_llvm_pv* %34, i32 0, i32 4
  store %struct.g_llvm_vg* %33, %struct.g_llvm_vg** %35, align 8
  store i64 0, i64* %10, align 8
  %36 = load i8*, i8** %6, align 8
  %37 = icmp eq i8* %36, null
  br i1 %37, label %38, label %39

38:                                               ; preds = %32
  br label %113

39:                                               ; preds = %32
  %40 = load %struct.g_llvm_pv*, %struct.g_llvm_pv** %8, align 8
  %41 = getelementptr inbounds %struct.g_llvm_pv, %struct.g_llvm_pv* %40, i32 0, i32 3
  %42 = load i32, i32* %41, align 4
  %43 = load i8*, i8** %6, align 8
  %44 = call i64 @llvm_grab_name(i32 %42, i8* %43)
  store i64 %44, i64* %10, align 8
  %45 = load i64, i64* %10, align 8
  %46 = icmp eq i64 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %39
  br label %113

48:                                               ; preds = %39
  br label %49

49:                                               ; preds = %89, %67, %48
  %50 = load i8**, i8*** %5, align 8
  %51 = call i8* @strsep(i8** %50, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i8* %51, i8** %6, align 8
  %52 = icmp ne i8* %51, null
  br i1 %52, label %53, label %90

53:                                               ; preds = %49
  %54 = load i8*, i8** %6, align 8
  %55 = call i64 @strstr(i8* %54, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %53
  br label %113

58:                                               ; preds = %53
  %59 = load i8*, i8** %6, align 8
  %60 = call i64 @strstr(i8* %59, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %58
  br label %90

63:                                               ; preds = %58
  %64 = load i8*, i8** %6, align 8
  %65 = call i64 @strstr(i8* %64, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %89

67:                                               ; preds = %63
  %68 = load i8*, i8** %9, align 8
  %69 = load i8*, i8** %6, align 8
  %70 = call i32 @SPLIT(i8* %68, i8* %69, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %71 = load i8*, i8** %9, align 8
  %72 = load i8*, i8** %6, align 8
  %73 = load %struct.g_llvm_pv*, %struct.g_llvm_pv** %8, align 8
  %74 = getelementptr inbounds %struct.g_llvm_pv, %struct.g_llvm_pv* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 8
  %76 = call i32 @GRAB_STR(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i8* %71, i8* %72, i32 %75, i32 4)
  %77 = load i8*, i8** %9, align 8
  %78 = load i8*, i8** %6, align 8
  %79 = load %struct.g_llvm_pv*, %struct.g_llvm_pv** %8, align 8
  %80 = getelementptr inbounds %struct.g_llvm_pv, %struct.g_llvm_pv* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = call i32 @GRAB_INT(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0), i8* %77, i8* %78, i64 %81)
  %83 = load i8*, i8** %9, align 8
  %84 = load i8*, i8** %6, align 8
  %85 = load %struct.g_llvm_pv*, %struct.g_llvm_pv** %8, align 8
  %86 = getelementptr inbounds %struct.g_llvm_pv, %struct.g_llvm_pv* %85, i32 0, i32 1
  %87 = load i64, i64* %86, align 8
  %88 = call i32 @GRAB_INT(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0), i8* %83, i8* %84, i64 %87)
  br label %49

89:                                               ; preds = %63
  br label %49

90:                                               ; preds = %62, %49
  %91 = load i8*, i8** %6, align 8
  %92 = icmp eq i8* %91, null
  br i1 %92, label %93, label %94

93:                                               ; preds = %90
  br label %113

94:                                               ; preds = %90
  %95 = load %struct.g_llvm_pv*, %struct.g_llvm_pv** %8, align 8
  %96 = getelementptr inbounds %struct.g_llvm_pv, %struct.g_llvm_pv* %95, i32 0, i32 1
  %97 = load i64, i64* %96, align 8
  %98 = icmp eq i64 %97, 0
  br i1 %98, label %99, label %100

99:                                               ; preds = %94
  br label %113

100:                                              ; preds = %94
  %101 = load %struct.g_llvm_vg*, %struct.g_llvm_vg** %7, align 8
  %102 = getelementptr inbounds %struct.g_llvm_vg, %struct.g_llvm_vg* %101, i32 0, i32 0
  %103 = load %struct.g_llvm_pv*, %struct.g_llvm_pv** %8, align 8
  %104 = load i32, i32* @pv_next, align 4
  %105 = call i32 @LIST_INSERT_HEAD(i32* %102, %struct.g_llvm_pv* %103, i32 %104)
  %106 = load %struct.g_llvm_pv*, %struct.g_llvm_pv** %8, align 8
  %107 = getelementptr inbounds %struct.g_llvm_pv, %struct.g_llvm_pv* %106, i32 0, i32 3
  %108 = load i32, i32* %107, align 4
  %109 = load %struct.g_llvm_pv*, %struct.g_llvm_pv** %8, align 8
  %110 = getelementptr inbounds %struct.g_llvm_pv, %struct.g_llvm_pv* %109, i32 0, i32 2
  %111 = load i32, i32* %110, align 8
  %112 = call i32 @G_LLVM_DEBUG(i32 3, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7, i64 0, i64 0), i32 %108, i32 %111)
  store i32 0, i32* %4, align 4
  br label %117

113:                                              ; preds = %99, %93, %57, %47, %38
  %114 = load %struct.g_llvm_pv*, %struct.g_llvm_pv** %8, align 8
  %115 = load i32, i32* @M_GLLVM, align 4
  %116 = call i32 @free(%struct.g_llvm_pv* %114, i32 %115)
  store i32 -1, i32* %4, align 4
  br label %117

117:                                              ; preds = %113, %100, %30, %20
  %118 = load i32, i32* %4, align 4
  ret i32 %118
}

declare dso_local %struct.g_llvm_pv* @malloc(i32, i32, i32) #1

declare dso_local i64 @llvm_grab_name(i32, i8*) #1

declare dso_local i8* @strsep(i8**, i8*) #1

declare dso_local i64 @strstr(i8*, i8*) #1

declare dso_local i32 @SPLIT(i8*, i8*, i8*) #1

declare dso_local i32 @GRAB_STR(i8*, i8*, i8*, i32, i32) #1

declare dso_local i32 @GRAB_INT(i8*, i8*, i8*, i64) #1

declare dso_local i32 @LIST_INSERT_HEAD(i32*, %struct.g_llvm_pv*, i32) #1

declare dso_local i32 @G_LLVM_DEBUG(i32, i8*, i32, i32) #1

declare dso_local i32 @free(%struct.g_llvm_pv*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
