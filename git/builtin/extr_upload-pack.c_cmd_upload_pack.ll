; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_upload-pack.c_cmd_upload_pack.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_upload-pack.c_cmd_upload_pack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.serve_options = type { i32, i32 }
%struct.upload_pack_options = type { i32, i32, i32, i64, i32 }
%struct.option = type { i32 }

@SERVE_OPTIONS_INIT = common dso_local global %struct.serve_options zeroinitializer, align 4
@.str = private unnamed_addr constant [14 x i8] c"stateless-rpc\00", align 1
@.str.1 = private unnamed_addr constant [46 x i8] c"quit after a single request/response exchange\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"advertise-refs\00", align 1
@.str.3 = private unnamed_addr constant [49 x i8] c"exit immediately after initial ref advertisement\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"strict\00", align 1
@.str.5 = private unnamed_addr constant [64 x i8] c"do not try <directory>/.git/ if <directory> is no Git directory\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"timeout\00", align 1
@.str.7 = private unnamed_addr constant [51 x i8] c"interrupt transfer after <n> seconds of inactivity\00", align 1
@.str.8 = private unnamed_addr constant [12 x i8] c"upload-pack\00", align 1
@read_replace_refs = common dso_local global i64 0, align 8
@upload_pack_usage = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [44 x i8] c"'%s' does not appear to be a git repository\00", align 1
@.str.10 = private unnamed_addr constant [11 x i8] c"version 1\0A\00", align 1
@.str.11 = private unnamed_addr constant [25 x i8] c"unknown protocol version\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cmd_upload_pack(i32 %0, i8** %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.upload_pack_options, align 8
  %10 = alloca %struct.serve_options, align 4
  %11 = alloca [5 x %struct.option], align 16
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i8* %2, i8** %6, align 8
  store i32 0, i32* %8, align 4
  %12 = bitcast %struct.upload_pack_options* %9 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %12, i8 0, i64 32, i1 false)
  %13 = bitcast %struct.serve_options* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %13, i8* align 4 bitcast (%struct.serve_options* @SERVE_OPTIONS_INIT to i8*), i64 8, i1 false)
  %14 = getelementptr inbounds [5 x %struct.option], [5 x %struct.option]* %11, i64 0, i64 0
  %15 = getelementptr inbounds %struct.upload_pack_options, %struct.upload_pack_options* %9, i32 0, i32 0
  %16 = call i32 @N_(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0))
  %17 = call i32 @OPT_BOOL(i32 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32* %15, i32 %16)
  %18 = getelementptr inbounds %struct.option, %struct.option* %14, i32 0, i32 0
  store i32 %17, i32* %18, align 4
  %19 = getelementptr inbounds %struct.option, %struct.option* %14, i64 1
  %20 = getelementptr inbounds %struct.upload_pack_options, %struct.upload_pack_options* %9, i32 0, i32 1
  %21 = call i32 @N_(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.3, i64 0, i64 0))
  %22 = call i32 @OPT_BOOL(i32 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i32* %20, i32 %21)
  %23 = getelementptr inbounds %struct.option, %struct.option* %19, i32 0, i32 0
  store i32 %22, i32* %23, align 4
  %24 = getelementptr inbounds %struct.option, %struct.option* %19, i64 1
  %25 = call i32 @N_(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.5, i64 0, i64 0))
  %26 = call i32 @OPT_BOOL(i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i32* %8, i32 %25)
  %27 = getelementptr inbounds %struct.option, %struct.option* %24, i32 0, i32 0
  store i32 %26, i32* %27, align 4
  %28 = getelementptr inbounds %struct.option, %struct.option* %24, i64 1
  %29 = getelementptr inbounds %struct.upload_pack_options, %struct.upload_pack_options* %9, i32 0, i32 3
  %30 = call i32 @N_(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.7, i64 0, i64 0))
  %31 = call i32 @OPT_INTEGER(i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), i64* %29, i32 %30)
  %32 = getelementptr inbounds %struct.option, %struct.option* %28, i32 0, i32 0
  store i32 %31, i32* %32, align 4
  %33 = getelementptr inbounds %struct.option, %struct.option* %28, i64 1
  %34 = call i32 (...) @OPT_END()
  %35 = getelementptr inbounds %struct.option, %struct.option* %33, i32 0, i32 0
  store i32 %34, i32* %35, align 4
  %36 = call i32 @packet_trace_identity(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i64 0, i64 0))
  store i64 0, i64* @read_replace_refs, align 8
  %37 = load i32, i32* %4, align 4
  %38 = load i8**, i8*** %5, align 8
  %39 = load i8*, i8** %6, align 8
  %40 = getelementptr inbounds [5 x %struct.option], [5 x %struct.option]* %11, i64 0, i64 0
  %41 = load i32, i32* @upload_pack_usage, align 4
  %42 = call i32 @parse_options(i32 %37, i8** %38, i8* %39, %struct.option* %40, i32 %41, i32 0)
  store i32 %42, i32* %4, align 4
  %43 = load i32, i32* %4, align 4
  %44 = icmp ne i32 %43, 1
  br i1 %44, label %45, label %49

45:                                               ; preds = %3
  %46 = load i32, i32* @upload_pack_usage, align 4
  %47 = getelementptr inbounds [5 x %struct.option], [5 x %struct.option]* %11, i64 0, i64 0
  %48 = call i32 @usage_with_options(i32 %46, %struct.option* %47)
  br label %49

49:                                               ; preds = %45, %3
  %50 = getelementptr inbounds %struct.upload_pack_options, %struct.upload_pack_options* %9, i32 0, i32 3
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %49
  %54 = getelementptr inbounds %struct.upload_pack_options, %struct.upload_pack_options* %9, i32 0, i32 2
  store i32 1, i32* %54, align 8
  br label %55

55:                                               ; preds = %53, %49
  %56 = call i32 (...) @setup_path()
  %57 = load i8**, i8*** %5, align 8
  %58 = getelementptr inbounds i8*, i8** %57, i64 0
  %59 = load i8*, i8** %58, align 8
  store i8* %59, i8** %7, align 8
  %60 = load i8*, i8** %7, align 8
  %61 = load i32, i32* %8, align 4
  %62 = call i32 @enter_repo(i8* %60, i32 %61)
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %67, label %64

64:                                               ; preds = %55
  %65 = load i8*, i8** %7, align 8
  %66 = call i32 @die(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.9, i64 0, i64 0), i8* %65)
  br label %67

67:                                               ; preds = %64, %55
  %68 = call i32 (...) @determine_protocol_version_server()
  switch i32 %68, label %92 [
    i32 128, label %69
    i32 129, label %77
    i32 130, label %88
    i32 131, label %90
  ]

69:                                               ; preds = %67
  %70 = getelementptr inbounds %struct.upload_pack_options, %struct.upload_pack_options* %9, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = getelementptr inbounds %struct.serve_options, %struct.serve_options* %10, i32 0, i32 0
  store i32 %71, i32* %72, align 4
  %73 = getelementptr inbounds %struct.upload_pack_options, %struct.upload_pack_options* %9, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = getelementptr inbounds %struct.serve_options, %struct.serve_options* %10, i32 0, i32 1
  store i32 %74, i32* %75, align 4
  %76 = call i32 @serve(%struct.serve_options* %10)
  br label %92

77:                                               ; preds = %67
  %78 = getelementptr inbounds %struct.upload_pack_options, %struct.upload_pack_options* %9, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %85, label %81

81:                                               ; preds = %77
  %82 = getelementptr inbounds %struct.upload_pack_options, %struct.upload_pack_options* %9, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %87, label %85

85:                                               ; preds = %81, %77
  %86 = call i32 @packet_write_fmt(i32 1, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.10, i64 0, i64 0))
  br label %87

87:                                               ; preds = %85, %81
  br label %88

88:                                               ; preds = %67, %87
  %89 = call i32 @upload_pack(%struct.upload_pack_options* %9)
  br label %92

90:                                               ; preds = %67
  %91 = call i32 @BUG(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.11, i64 0, i64 0))
  br label %92

92:                                               ; preds = %90, %67, %88, %69
  ret i32 0
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @OPT_BOOL(i32, i8*, i32*, i32) #2

declare dso_local i32 @N_(i8*) #2

declare dso_local i32 @OPT_INTEGER(i32, i8*, i64*, i32) #2

declare dso_local i32 @OPT_END(...) #2

declare dso_local i32 @packet_trace_identity(i8*) #2

declare dso_local i32 @parse_options(i32, i8**, i8*, %struct.option*, i32, i32) #2

declare dso_local i32 @usage_with_options(i32, %struct.option*) #2

declare dso_local i32 @setup_path(...) #2

declare dso_local i32 @enter_repo(i8*, i32) #2

declare dso_local i32 @die(i8*, i8*) #2

declare dso_local i32 @determine_protocol_version_server(...) #2

declare dso_local i32 @serve(%struct.serve_options*) #2

declare dso_local i32 @packet_write_fmt(i32, i8*) #2

declare dso_local i32 @upload_pack(%struct.upload_pack_options*) #2

declare dso_local i32 @BUG(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
