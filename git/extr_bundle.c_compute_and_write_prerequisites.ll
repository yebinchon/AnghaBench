; ModuleID = '/home/carl/AnghaBench/git/extr_bundle.c_compute_and_write_prerequisites.c'
source_filename = "/home/carl/AnghaBench/git/extr_bundle.c_compute_and_write_prerequisites.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.child_process = type { i32, i32, i32 }
%struct.strbuf = type { i64, i8* }
%struct.rev_info = type { i32 }
%struct.object_id = type { i32 }
%struct.object = type { i32 }

@CHILD_PROCESS_INIT = common dso_local global %struct.child_process zeroinitializer, align 4
@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 8
@.str = private unnamed_addr constant [9 x i8] c"rev-list\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"--boundary\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"--pretty=oneline\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@EOF = common dso_local global i64 0, align 8
@UNINTERESTING = common dso_local global i32 0, align 4
@SHOWN = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [14 x i8] c"rev-list died\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.rev_info*, i32, i8**)* @compute_and_write_prerequisites to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @compute_and_write_prerequisites(i32 %0, %struct.rev_info* %1, i32 %2, i8** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.rev_info*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8**, align 8
  %10 = alloca %struct.child_process, align 4
  %11 = alloca %struct.strbuf, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.object_id, align 4
  %15 = alloca %struct.object*, align 8
  %16 = alloca %struct.object*, align 8
  store i32 %0, i32* %6, align 4
  store %struct.rev_info* %1, %struct.rev_info** %7, align 8
  store i32 %2, i32* %8, align 4
  store i8** %3, i8*** %9, align 8
  %17 = bitcast %struct.child_process* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %17, i8* align 4 bitcast (%struct.child_process* @CHILD_PROCESS_INIT to i8*), i64 12, i1 false)
  %18 = bitcast %struct.strbuf* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %18, i8* align 8 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 16, i1 false)
  %19 = getelementptr inbounds %struct.child_process, %struct.child_process* %10, i32 0, i32 2
  %20 = call i32 @argv_array_pushl(i32* %19, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i32* null)
  store i32 1, i32* %13, align 4
  br label %21

21:                                               ; preds = %33, %4
  %22 = load i32, i32* %13, align 4
  %23 = load i32, i32* %8, align 4
  %24 = icmp slt i32 %22, %23
  br i1 %24, label %25, label %36

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.child_process, %struct.child_process* %10, i32 0, i32 2
  %27 = load i8**, i8*** %9, align 8
  %28 = load i32, i32* %13, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i8*, i8** %27, i64 %29
  %31 = load i8*, i8** %30, align 8
  %32 = call i32 @argv_array_push(i32* %26, i8* %31)
  br label %33

33:                                               ; preds = %25
  %34 = load i32, i32* %13, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %13, align 4
  br label %21

36:                                               ; preds = %21
  %37 = getelementptr inbounds %struct.child_process, %struct.child_process* %10, i32 0, i32 0
  store i32 -1, i32* %37, align 4
  %38 = getelementptr inbounds %struct.child_process, %struct.child_process* %10, i32 0, i32 1
  store i32 1, i32* %38, align 4
  %39 = call i64 @start_command(%struct.child_process* %10)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %36
  store i32 -1, i32* %5, align 4
  br label %115

42:                                               ; preds = %36
  %43 = getelementptr inbounds %struct.child_process, %struct.child_process* %10, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32* @xfdopen(i32 %44, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  store i32* %45, i32** %12, align 8
  br label %46

46:                                               ; preds = %104, %42
  %47 = load i32*, i32** %12, align 8
  %48 = call i64 @strbuf_getwholeline(%struct.strbuf* %11, i32* %47, i8 signext 10)
  %49 = load i64, i64* @EOF, align 8
  %50 = icmp ne i64 %48, %49
  br i1 %50, label %51, label %105

51:                                               ; preds = %46
  %52 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %11, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = icmp sgt i64 %53, 0
  br i1 %54, label %55, label %89

55:                                               ; preds = %51
  %56 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %11, i32 0, i32 1
  %57 = load i8*, i8** %56, align 8
  %58 = getelementptr inbounds i8, i8* %57, i64 0
  %59 = load i8, i8* %58, align 1
  %60 = sext i8 %59 to i32
  %61 = icmp eq i32 %60, 45
  br i1 %61, label %62, label %89

62:                                               ; preds = %55
  %63 = load i32, i32* %6, align 4
  %64 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %11, i32 0, i32 1
  %65 = load i8*, i8** %64, align 8
  %66 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %11, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = call i32 @write_or_die(i32 %63, i8* %65, i64 %67)
  %69 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %11, i32 0, i32 1
  %70 = load i8*, i8** %69, align 8
  %71 = getelementptr inbounds i8, i8* %70, i64 1
  %72 = call i32 @get_oid_hex(i8* %71, %struct.object_id* %14)
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %88, label %74

74:                                               ; preds = %62
  %75 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %11, i32 0, i32 1
  %76 = load i8*, i8** %75, align 8
  %77 = call %struct.object* @parse_object_or_die(%struct.object_id* %14, i8* %76)
  store %struct.object* %77, %struct.object** %15, align 8
  %78 = load i32, i32* @UNINTERESTING, align 4
  %79 = load %struct.object*, %struct.object** %15, align 8
  %80 = getelementptr inbounds %struct.object, %struct.object* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = or i32 %81, %78
  store i32 %82, i32* %80, align 4
  %83 = load %struct.rev_info*, %struct.rev_info** %7, align 8
  %84 = load %struct.object*, %struct.object** %15, align 8
  %85 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %11, i32 0, i32 1
  %86 = load i8*, i8** %85, align 8
  %87 = call i32 @add_pending_object(%struct.rev_info* %83, %struct.object* %84, i8* %86)
  br label %88

88:                                               ; preds = %74, %62
  br label %104

89:                                               ; preds = %55, %51
  %90 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %11, i32 0, i32 1
  %91 = load i8*, i8** %90, align 8
  %92 = call i32 @get_oid_hex(i8* %91, %struct.object_id* %14)
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %103, label %94

94:                                               ; preds = %89
  %95 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %11, i32 0, i32 1
  %96 = load i8*, i8** %95, align 8
  %97 = call %struct.object* @parse_object_or_die(%struct.object_id* %14, i8* %96)
  store %struct.object* %97, %struct.object** %16, align 8
  %98 = load i32, i32* @SHOWN, align 4
  %99 = load %struct.object*, %struct.object** %16, align 8
  %100 = getelementptr inbounds %struct.object, %struct.object* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = or i32 %101, %98
  store i32 %102, i32* %100, align 4
  br label %103

103:                                              ; preds = %94, %89
  br label %104

104:                                              ; preds = %103, %88
  br label %46

105:                                              ; preds = %46
  %106 = call i32 @strbuf_release(%struct.strbuf* %11)
  %107 = load i32*, i32** %12, align 8
  %108 = call i32 @fclose(i32* %107)
  %109 = call i64 @finish_command(%struct.child_process* %10)
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %114

111:                                              ; preds = %105
  %112 = call i32 @_(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0))
  %113 = call i32 @error(i32 %112)
  store i32 %113, i32* %5, align 4
  br label %115

114:                                              ; preds = %105
  store i32 0, i32* %5, align 4
  br label %115

115:                                              ; preds = %114, %111, %41
  %116 = load i32, i32* %5, align 4
  ret i32 %116
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @argv_array_pushl(i32*, i8*, i8*, i8*, i32*) #2

declare dso_local i32 @argv_array_push(i32*, i8*) #2

declare dso_local i64 @start_command(%struct.child_process*) #2

declare dso_local i32* @xfdopen(i32, i8*) #2

declare dso_local i64 @strbuf_getwholeline(%struct.strbuf*, i32*, i8 signext) #2

declare dso_local i32 @write_or_die(i32, i8*, i64) #2

declare dso_local i32 @get_oid_hex(i8*, %struct.object_id*) #2

declare dso_local %struct.object* @parse_object_or_die(%struct.object_id*, i8*) #2

declare dso_local i32 @add_pending_object(%struct.rev_info*, %struct.object*, i8*) #2

declare dso_local i32 @strbuf_release(%struct.strbuf*) #2

declare dso_local i32 @fclose(i32*) #2

declare dso_local i64 @finish_command(%struct.child_process*) #2

declare dso_local i32 @error(i32) #2

declare dso_local i32 @_(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
