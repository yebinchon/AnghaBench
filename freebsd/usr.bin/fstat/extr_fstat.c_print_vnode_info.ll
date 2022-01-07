; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/fstat/extr_fstat.c_print_vnode_info.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/fstat/extr_fstat.c_print_vnode_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.procstat = type { i32 }
%struct.filestat = type { i32 }
%struct.vnstat = type { i64, i8*, i32, i8*, i64, i64, i64, i64 }

@_POSIX2_LINE_MAX = common dso_local global i32 0, align 4
@PS_FST_VTYPE_VBAD = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [4 x i8] c"bad\00", align 1
@PS_FST_VTYPE_VNON = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [5 x i8] c"none\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c" -         -  %10s    -\00", align 1
@nflg = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [7 x i8] c" %#5jx\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c" %-8s\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"%o\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c" %6jd %10s\00", align 1
@PS_FST_VTYPE_VBLK = common dso_local global i64 0, align 8
@PS_FST_VTYPE_VCHR = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [7 x i8] c" %#6jx\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c" %6s\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c" %6ju\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.procstat*, %struct.filestat*)* @print_vnode_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_vnode_info(%struct.procstat* %0, %struct.filestat* %1) #0 {
  %3 = alloca %struct.procstat*, align 8
  %4 = alloca %struct.filestat*, align 8
  %5 = alloca %struct.vnstat, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca [15 x i8], align 1
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.procstat* %0, %struct.procstat** %3, align 8
  store %struct.filestat* %1, %struct.filestat** %4, align 8
  %12 = load i32, i32* @_POSIX2_LINE_MAX, align 4
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %6, align 8
  %15 = alloca i8, i64 %13, align 16
  store i64 %13, i64* %7, align 8
  store i8* null, i8** %9, align 8
  %16 = load %struct.procstat*, %struct.procstat** %3, align 8
  %17 = load %struct.filestat*, %struct.filestat** %4, align 8
  %18 = call i32 @procstat_get_vnode_info(%struct.procstat* %16, %struct.filestat* %17, %struct.vnstat* %5, i8* %15)
  store i32 %18, i32* %10, align 4
  %19 = load i32, i32* %10, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %2
  store i8* %15, i8** %9, align 8
  br label %36

22:                                               ; preds = %2
  %23 = getelementptr inbounds %struct.vnstat, %struct.vnstat* %5, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @PS_FST_VTYPE_VBAD, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %22
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8** %9, align 8
  br label %35

28:                                               ; preds = %22
  %29 = getelementptr inbounds %struct.vnstat, %struct.vnstat* %5, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @PS_FST_VTYPE_VNON, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %28
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8** %9, align 8
  br label %34

34:                                               ; preds = %33, %28
  br label %35

35:                                               ; preds = %34, %27
  br label %36

36:                                               ; preds = %35, %21
  %37 = load i8*, i8** %9, align 8
  %38 = icmp ne i8* %37, null
  br i1 %38, label %39, label %42

39:                                               ; preds = %36
  %40 = load i8*, i8** %9, align 8
  %41 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i8* %40)
  store i32 1, i32* %11, align 4
  br label %117

42:                                               ; preds = %36
  %43 = load i64, i64* @nflg, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %50

45:                                               ; preds = %42
  %46 = getelementptr inbounds %struct.vnstat, %struct.vnstat* %5, i32 0, i32 7
  %47 = load i64, i64* %46, align 8
  %48 = inttoptr i64 %47 to i8*
  %49 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i8* %48)
  br label %59

50:                                               ; preds = %42
  %51 = getelementptr inbounds %struct.vnstat, %struct.vnstat* %5, i32 0, i32 1
  %52 = load i8*, i8** %51, align 8
  %53 = icmp ne i8* %52, null
  br i1 %53, label %54, label %58

54:                                               ; preds = %50
  %55 = getelementptr inbounds %struct.vnstat, %struct.vnstat* %5, i32 0, i32 1
  %56 = load i8*, i8** %55, align 8
  %57 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i8* %56)
  br label %58

58:                                               ; preds = %54, %50
  br label %59

59:                                               ; preds = %58, %45
  %60 = load i64, i64* @nflg, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %67

62:                                               ; preds = %59
  %63 = getelementptr inbounds [15 x i8], [15 x i8]* %8, i64 0, i64 0
  %64 = getelementptr inbounds %struct.vnstat, %struct.vnstat* %5, i32 0, i32 2
  %65 = load i32, i32* %64, align 8
  %66 = call i32 @snprintf(i8* %63, i32 15, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i32 %65)
  br label %72

67:                                               ; preds = %59
  %68 = getelementptr inbounds %struct.vnstat, %struct.vnstat* %5, i32 0, i32 2
  %69 = load i32, i32* %68, align 8
  %70 = getelementptr inbounds [15 x i8], [15 x i8]* %8, i64 0, i64 0
  %71 = call i32 @strmode(i32 %69, i8* %70)
  br label %72

72:                                               ; preds = %67, %62
  %73 = getelementptr inbounds %struct.vnstat, %struct.vnstat* %5, i32 0, i32 6
  %74 = load i64, i64* %73, align 8
  %75 = trunc i64 %74 to i32
  %76 = sext i32 %75 to i64
  %77 = inttoptr i64 %76 to i8*
  %78 = getelementptr inbounds [15 x i8], [15 x i8]* %8, i64 0, i64 0
  %79 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0), i8* %77, i8* %78)
  %80 = getelementptr inbounds %struct.vnstat, %struct.vnstat* %5, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* @PS_FST_VTYPE_VBLK, align 8
  %83 = icmp eq i64 %81, %82
  br i1 %83, label %89, label %84

84:                                               ; preds = %72
  %85 = getelementptr inbounds %struct.vnstat, %struct.vnstat* %5, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = load i64, i64* @PS_FST_VTYPE_VCHR, align 8
  %88 = icmp eq i64 %86, %87
  br i1 %88, label %89, label %107

89:                                               ; preds = %84, %72
  %90 = load i64, i64* @nflg, align 8
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %97, label %92

92:                                               ; preds = %89
  %93 = getelementptr inbounds %struct.vnstat, %struct.vnstat* %5, i32 0, i32 3
  %94 = load i8*, i8** %93, align 8
  %95 = load i8, i8* %94, align 1
  %96 = icmp ne i8 %95, 0
  br i1 %96, label %102, label %97

97:                                               ; preds = %92, %89
  %98 = getelementptr inbounds %struct.vnstat, %struct.vnstat* %5, i32 0, i32 5
  %99 = load i64, i64* %98, align 8
  %100 = inttoptr i64 %99 to i8*
  %101 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0), i8* %100)
  br label %106

102:                                              ; preds = %92
  %103 = getelementptr inbounds %struct.vnstat, %struct.vnstat* %5, i32 0, i32 3
  %104 = load i8*, i8** %103, align 8
  %105 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i8* %104)
  br label %106

106:                                              ; preds = %102, %97
  br label %112

107:                                              ; preds = %84
  %108 = getelementptr inbounds %struct.vnstat, %struct.vnstat* %5, i32 0, i32 4
  %109 = load i64, i64* %108, align 8
  %110 = inttoptr i64 %109 to i8*
  %111 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i8* %110)
  br label %112

112:                                              ; preds = %107, %106
  %113 = load %struct.filestat*, %struct.filestat** %4, align 8
  %114 = getelementptr inbounds %struct.filestat, %struct.filestat* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = call i32 @print_access_flags(i32 %115)
  store i32 0, i32* %11, align 4
  br label %117

117:                                              ; preds = %112, %39
  %118 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %118)
  %119 = load i32, i32* %11, align 4
  switch i32 %119, label %121 [
    i32 0, label %120
    i32 1, label %120
  ]

120:                                              ; preds = %117, %117
  ret void

121:                                              ; preds = %117
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @procstat_get_vnode_info(%struct.procstat*, %struct.filestat*, %struct.vnstat*, i8*) #2

declare dso_local i32 @printf(i8*, i8*, ...) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #2

declare dso_local i32 @strmode(i32, i8*) #2

declare dso_local i32 @print_access_flags(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
