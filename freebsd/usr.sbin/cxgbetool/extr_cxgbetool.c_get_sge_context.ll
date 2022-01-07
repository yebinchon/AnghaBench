; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/cxgbetool/extr_cxgbetool.c_get_sge_context.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/cxgbetool/extr_cxgbetool.c_get_sge_context.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.t4_sge_context = type { i64, i32, i32 }

@.str = private unnamed_addr constant [44 x i8] c"sge_context: incorrect number of arguments.\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"egress\00", align 1
@SGE_CONTEXT_EGRESS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [8 x i8] c"ingress\00", align 1
@SGE_CONTEXT_INGRESS = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [3 x i8] c"fl\00", align 1
@SGE_CONTEXT_FLM = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [5 x i8] c"cong\00", align 1
@SGE_CONTEXT_CNM = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [74 x i8] c"unknown context type \22%s\22; known types are egress, ingress, fl, and cong.\00", align 1
@.str.6 = private unnamed_addr constant [24 x i8] c"invalid context id \22%s\22\00", align 1
@CHELSIO_T4_GET_SGE_CONTEXT = common dso_local global i32 0, align 4
@chip_id = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8**)* @get_sge_context to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_sge_context(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.t4_sge_context, align 8
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %10 = bitcast %struct.t4_sge_context* %9 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %10, i8 0, i64 16, i1 false)
  %11 = load i32, i32* %4, align 4
  %12 = icmp ne i32 %11, 2
  br i1 %12, label %13, label %16

13:                                               ; preds = %2
  %14 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  %15 = load i32, i32* @EINVAL, align 4
  store i32 %15, i32* %3, align 4
  br label %93

16:                                               ; preds = %2
  %17 = load i8**, i8*** %5, align 8
  %18 = getelementptr inbounds i8*, i8** %17, i64 0
  %19 = load i8*, i8** %18, align 8
  %20 = call i32 @strcmp(i8* %19, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %16
  %23 = load i32, i32* @SGE_CONTEXT_EGRESS, align 4
  %24 = getelementptr inbounds %struct.t4_sge_context, %struct.t4_sge_context* %9, i32 0, i32 1
  store i32 %23, i32* %24, align 8
  br label %61

25:                                               ; preds = %16
  %26 = load i8**, i8*** %5, align 8
  %27 = getelementptr inbounds i8*, i8** %26, i64 0
  %28 = load i8*, i8** %27, align 8
  %29 = call i32 @strcmp(i8* %28, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %34, label %31

31:                                               ; preds = %25
  %32 = load i32, i32* @SGE_CONTEXT_INGRESS, align 4
  %33 = getelementptr inbounds %struct.t4_sge_context, %struct.t4_sge_context* %9, i32 0, i32 1
  store i32 %32, i32* %33, align 8
  br label %60

34:                                               ; preds = %25
  %35 = load i8**, i8*** %5, align 8
  %36 = getelementptr inbounds i8*, i8** %35, i64 0
  %37 = load i8*, i8** %36, align 8
  %38 = call i32 @strcmp(i8* %37, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %43, label %40

40:                                               ; preds = %34
  %41 = load i32, i32* @SGE_CONTEXT_FLM, align 4
  %42 = getelementptr inbounds %struct.t4_sge_context, %struct.t4_sge_context* %9, i32 0, i32 1
  store i32 %41, i32* %42, align 8
  br label %59

43:                                               ; preds = %34
  %44 = load i8**, i8*** %5, align 8
  %45 = getelementptr inbounds i8*, i8** %44, i64 0
  %46 = load i8*, i8** %45, align 8
  %47 = call i32 @strcmp(i8* %46, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %52, label %49

49:                                               ; preds = %43
  %50 = load i32, i32* @SGE_CONTEXT_CNM, align 4
  %51 = getelementptr inbounds %struct.t4_sge_context, %struct.t4_sge_context* %9, i32 0, i32 1
  store i32 %50, i32* %51, align 8
  br label %58

52:                                               ; preds = %43
  %53 = load i8**, i8*** %5, align 8
  %54 = getelementptr inbounds i8*, i8** %53, i64 0
  %55 = load i8*, i8** %54, align 8
  %56 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.5, i64 0, i64 0), i8* %55)
  %57 = load i32, i32* @EINVAL, align 4
  store i32 %57, i32* %3, align 4
  br label %93

58:                                               ; preds = %49
  br label %59

59:                                               ; preds = %58, %40
  br label %60

60:                                               ; preds = %59, %31
  br label %61

61:                                               ; preds = %60, %22
  %62 = load i8**, i8*** %5, align 8
  %63 = getelementptr inbounds i8*, i8** %62, i64 1
  %64 = load i8*, i8** %63, align 8
  %65 = call i8* @str_to_number(i8* %64, i64* %8, i32* null)
  store i8* %65, i8** %7, align 8
  %66 = load i8*, i8** %7, align 8
  %67 = load i8, i8* %66, align 1
  %68 = icmp ne i8 %67, 0
  br i1 %68, label %69, label %75

69:                                               ; preds = %61
  %70 = load i8**, i8*** %5, align 8
  %71 = getelementptr inbounds i8*, i8** %70, i64 1
  %72 = load i8*, i8** %71, align 8
  %73 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i64 0, i64 0), i8* %72)
  %74 = load i32, i32* @EINVAL, align 4
  store i32 %74, i32* %3, align 4
  br label %93

75:                                               ; preds = %61
  %76 = load i64, i64* %8, align 8
  %77 = getelementptr inbounds %struct.t4_sge_context, %struct.t4_sge_context* %9, i32 0, i32 0
  store i64 %76, i64* %77, align 8
  %78 = load i32, i32* @CHELSIO_T4_GET_SGE_CONTEXT, align 4
  %79 = call i32 @doit(i32 %78, %struct.t4_sge_context* %9)
  store i32 %79, i32* %6, align 4
  %80 = load i32, i32* %6, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %84

82:                                               ; preds = %75
  %83 = load i32, i32* %6, align 4
  store i32 %83, i32* %3, align 4
  br label %93

84:                                               ; preds = %75
  %85 = load i32, i32* @chip_id, align 4
  %86 = icmp eq i32 %85, 4
  br i1 %86, label %87, label %89

87:                                               ; preds = %84
  %88 = call i32 @show_t4_ctxt(%struct.t4_sge_context* %9)
  br label %92

89:                                               ; preds = %84
  %90 = load i32, i32* @chip_id, align 4
  %91 = call i32 @show_t5t6_ctxt(%struct.t4_sge_context* %9, i32 %90)
  br label %92

92:                                               ; preds = %89, %87
  store i32 0, i32* %3, align 4
  br label %93

93:                                               ; preds = %92, %82, %69, %52, %13
  %94 = load i32, i32* %3, align 4
  ret i32 %94
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @warnx(i8*, ...) #2

declare dso_local i32 @strcmp(i8*, i8*) #2

declare dso_local i8* @str_to_number(i8*, i64*, i32*) #2

declare dso_local i32 @doit(i32, %struct.t4_sge_context*) #2

declare dso_local i32 @show_t4_ctxt(%struct.t4_sge_context*) #2

declare dso_local i32 @show_t5t6_ctxt(%struct.t4_sge_context*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
