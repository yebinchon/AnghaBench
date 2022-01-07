; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/cxgbetool/extr_cxgbetool.c_sched_queue.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/cxgbetool/extr_cxgbetool.c_sched_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.t4_sched_queue = type { i32, i32, i64, i32 }

@.str = private unnamed_addr constant [31 x i8] c"incorrect number of arguments.\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@UCHAR_MAX = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [21 x i8] c"invalid port id \22%s\22\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"all\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"*\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"invalid queue \22%s\22\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"unbind\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"clear\00", align 1
@.str.7 = private unnamed_addr constant [19 x i8] c"invalid class \22%s\22\00", align 1
@CHELSIO_T4_SCHED_QUEUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8**)* @sched_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sched_queue(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.t4_sched_queue, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %9 = bitcast %struct.t4_sched_queue* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %9, i8 0, i64 24, i1 false)
  %10 = load i32, i32* %4, align 4
  %11 = icmp ne i32 %10, 3
  br i1 %11, label %12, label %15

12:                                               ; preds = %2
  %13 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %14 = load i32, i32* @EINVAL, align 4
  store i32 %14, i32* %3, align 4
  br label %113

15:                                               ; preds = %2
  %16 = load i8**, i8*** %5, align 8
  %17 = getelementptr inbounds i8*, i8** %16, i64 0
  %18 = load i8*, i8** %17, align 8
  %19 = call i8* @str_to_number(i8* %18, i64* %8, i32* null)
  store i8* %19, i8** %7, align 8
  %20 = load i8*, i8** %7, align 8
  %21 = load i8, i8* %20, align 1
  %22 = sext i8 %21 to i32
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %28, label %24

24:                                               ; preds = %15
  %25 = load i64, i64* %8, align 8
  %26 = load i64, i64* @UCHAR_MAX, align 8
  %27 = icmp sgt i64 %25, %26
  br i1 %27, label %28, label %34

28:                                               ; preds = %24, %15
  %29 = load i8**, i8*** %5, align 8
  %30 = getelementptr inbounds i8*, i8** %29, i64 0
  %31 = load i8*, i8** %30, align 8
  %32 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i8* %31)
  %33 = load i32, i32* @EINVAL, align 4
  store i32 %33, i32* %3, align 4
  br label %113

34:                                               ; preds = %24
  %35 = load i64, i64* %8, align 8
  %36 = getelementptr inbounds %struct.t4_sched_queue, %struct.t4_sched_queue* %6, i32 0, i32 2
  store i64 %35, i64* %36, align 8
  %37 = load i8**, i8*** %5, align 8
  %38 = getelementptr inbounds i8*, i8** %37, i64 1
  %39 = load i8*, i8** %38, align 8
  %40 = call i32 @strcmp(i8* %39, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %48

42:                                               ; preds = %34
  %43 = load i8**, i8*** %5, align 8
  %44 = getelementptr inbounds i8*, i8** %43, i64 1
  %45 = load i8*, i8** %44, align 8
  %46 = call i32 @strcmp(i8* %45, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %50, label %48

48:                                               ; preds = %42, %34
  %49 = getelementptr inbounds %struct.t4_sched_queue, %struct.t4_sched_queue* %6, i32 0, i32 0
  store i32 -1, i32* %49, align 8
  br label %73

50:                                               ; preds = %42
  %51 = load i8**, i8*** %5, align 8
  %52 = getelementptr inbounds i8*, i8** %51, i64 1
  %53 = load i8*, i8** %52, align 8
  %54 = call i8* @str_to_number(i8* %53, i64* %8, i32* null)
  store i8* %54, i8** %7, align 8
  %55 = load i8*, i8** %7, align 8
  %56 = load i8, i8* %55, align 1
  %57 = sext i8 %56 to i32
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %62, label %59

59:                                               ; preds = %50
  %60 = load i64, i64* %8, align 8
  %61 = icmp slt i64 %60, -1
  br i1 %61, label %62, label %68

62:                                               ; preds = %59, %50
  %63 = load i8**, i8*** %5, align 8
  %64 = getelementptr inbounds i8*, i8** %63, i64 1
  %65 = load i8*, i8** %64, align 8
  %66 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0), i8* %65)
  %67 = load i32, i32* @EINVAL, align 4
  store i32 %67, i32* %3, align 4
  br label %113

68:                                               ; preds = %59
  %69 = load i64, i64* %8, align 8
  %70 = inttoptr i64 %69 to i8*
  %71 = ptrtoint i8* %70 to i32
  %72 = getelementptr inbounds %struct.t4_sched_queue, %struct.t4_sched_queue* %6, i32 0, i32 0
  store i32 %71, i32* %72, align 8
  br label %73

73:                                               ; preds = %68, %48
  %74 = load i8**, i8*** %5, align 8
  %75 = getelementptr inbounds i8*, i8** %74, i64 2
  %76 = load i8*, i8** %75, align 8
  %77 = call i32 @strcmp(i8* %76, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0))
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %85

79:                                               ; preds = %73
  %80 = load i8**, i8*** %5, align 8
  %81 = getelementptr inbounds i8*, i8** %80, i64 2
  %82 = load i8*, i8** %81, align 8
  %83 = call i32 @strcmp(i8* %82, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %87, label %85

85:                                               ; preds = %79, %73
  %86 = getelementptr inbounds %struct.t4_sched_queue, %struct.t4_sched_queue* %6, i32 0, i32 1
  store i32 -1, i32* %86, align 4
  br label %110

87:                                               ; preds = %79
  %88 = load i8**, i8*** %5, align 8
  %89 = getelementptr inbounds i8*, i8** %88, i64 2
  %90 = load i8*, i8** %89, align 8
  %91 = call i8* @str_to_number(i8* %90, i64* %8, i32* null)
  store i8* %91, i8** %7, align 8
  %92 = load i8*, i8** %7, align 8
  %93 = load i8, i8* %92, align 1
  %94 = sext i8 %93 to i32
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %99, label %96

96:                                               ; preds = %87
  %97 = load i64, i64* %8, align 8
  %98 = icmp slt i64 %97, -1
  br i1 %98, label %99, label %105

99:                                               ; preds = %96, %87
  %100 = load i8**, i8*** %5, align 8
  %101 = getelementptr inbounds i8*, i8** %100, i64 2
  %102 = load i8*, i8** %101, align 8
  %103 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.7, i64 0, i64 0), i8* %102)
  %104 = load i32, i32* @EINVAL, align 4
  store i32 %104, i32* %3, align 4
  br label %113

105:                                              ; preds = %96
  %106 = load i64, i64* %8, align 8
  %107 = inttoptr i64 %106 to i8*
  %108 = ptrtoint i8* %107 to i32
  %109 = getelementptr inbounds %struct.t4_sched_queue, %struct.t4_sched_queue* %6, i32 0, i32 1
  store i32 %108, i32* %109, align 4
  br label %110

110:                                              ; preds = %105, %85
  %111 = load i32, i32* @CHELSIO_T4_SCHED_QUEUE, align 4
  %112 = call i32 @doit(i32 %111, %struct.t4_sched_queue* %6)
  store i32 %112, i32* %3, align 4
  br label %113

113:                                              ; preds = %110, %99, %62, %28, %12
  %114 = load i32, i32* %3, align 4
  ret i32 %114
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @warnx(i8*, ...) #2

declare dso_local i8* @str_to_number(i8*, i64*, i32*) #2

declare dso_local i32 @strcmp(i8*, i8*) #2

declare dso_local i32 @doit(i32, %struct.t4_sched_queue*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
