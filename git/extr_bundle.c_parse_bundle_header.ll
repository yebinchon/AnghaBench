; ModuleID = '/home/carl/AnghaBench/git/extr_bundle.c_parse_bundle_header.c'
source_filename = "/home/carl/AnghaBench/git/extr_bundle.c_parse_bundle_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i8*, i64 }
%struct.bundle_header = type { i32, i32 }
%struct.object_id = type { i32 }

@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 8
@bundle_signature = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"'%s' does not look like a v2 bundle file\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"unrecognized header: %s%s (%d)\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.bundle_header*, i8*)* @parse_bundle_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_bundle_header(i32 %0, %struct.bundle_header* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.bundle_header*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.strbuf, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.object_id, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  store i32 %0, i32* %4, align 4
  store %struct.bundle_header* %1, %struct.bundle_header** %5, align 8
  store i8* %2, i8** %6, align 8
  %12 = bitcast %struct.strbuf* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %12, i8* align 8 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 16, i1 false)
  store i32 0, i32* %8, align 4
  %13 = load i32, i32* %4, align 4
  %14 = call i64 @strbuf_getwholeline_fd(%struct.strbuf* %7, i32 %13, i8 signext 10)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %22, label %16

16:                                               ; preds = %3
  %17 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %7, i32 0, i32 0
  %18 = load i8*, i8** %17, align 8
  %19 = load i32, i32* @bundle_signature, align 4
  %20 = call i64 @strcmp(i8* %18, i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %30

22:                                               ; preds = %16, %3
  %23 = load i8*, i8** %6, align 8
  %24 = icmp ne i8* %23, null
  br i1 %24, label %25, label %29

25:                                               ; preds = %22
  %26 = call i32 @_(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  %27 = load i8*, i8** %6, align 8
  %28 = call i32 (i32, i8*, ...) @error(i32 %26, i8* %27)
  br label %29

29:                                               ; preds = %25, %22
  store i32 -1, i32* %8, align 4
  br label %111

30:                                               ; preds = %16
  br label %31

31:                                               ; preds = %109, %30
  %32 = load i32, i32* %4, align 4
  %33 = call i64 @strbuf_getwholeline_fd(%struct.strbuf* %7, i32 %32, i8 signext 10)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %46, label %35

35:                                               ; preds = %31
  %36 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %7, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %46

39:                                               ; preds = %35
  %40 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %7, i32 0, i32 0
  %41 = load i8*, i8** %40, align 8
  %42 = getelementptr inbounds i8, i8* %41, i64 0
  %43 = load i8, i8* %42, align 1
  %44 = sext i8 %43 to i32
  %45 = icmp ne i32 %44, 10
  br label %46

46:                                               ; preds = %39, %35, %31
  %47 = phi i1 [ false, %35 ], [ false, %31 ], [ %45, %39 ]
  br i1 %47, label %48, label %110

48:                                               ; preds = %46
  store i32 0, i32* %10, align 4
  %49 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %7, i32 0, i32 0
  %50 = load i8*, i8** %49, align 8
  %51 = load i8, i8* %50, align 1
  %52 = sext i8 %51 to i32
  %53 = icmp eq i32 %52, 45
  br i1 %53, label %54, label %56

54:                                               ; preds = %48
  store i32 1, i32* %10, align 4
  %55 = call i32 @strbuf_remove(%struct.strbuf* %7, i32 0, i32 1)
  br label %56

56:                                               ; preds = %54, %48
  %57 = call i32 @strbuf_rtrim(%struct.strbuf* %7)
  %58 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %7, i32 0, i32 0
  %59 = load i8*, i8** %58, align 8
  %60 = call i64 @parse_oid_hex(i8* %59, %struct.object_id* %9, i8** %11)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %79, label %62

62:                                               ; preds = %56
  %63 = load i8*, i8** %11, align 8
  %64 = load i8, i8* %63, align 1
  %65 = sext i8 %64 to i32
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %72

67:                                               ; preds = %62
  %68 = load i8*, i8** %11, align 8
  %69 = load i8, i8* %68, align 1
  %70 = call i32 @isspace(i8 signext %69)
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %79

72:                                               ; preds = %67, %62
  %73 = load i32, i32* %10, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %95, label %75

75:                                               ; preds = %72
  %76 = load i8*, i8** %11, align 8
  %77 = load i8, i8* %76, align 1
  %78 = icmp ne i8 %77, 0
  br i1 %78, label %95, label %79

79:                                               ; preds = %75, %67, %56
  %80 = load i8*, i8** %6, align 8
  %81 = icmp ne i8* %80, null
  br i1 %81, label %82, label %94

82:                                               ; preds = %79
  %83 = call i32 @_(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  %84 = load i32, i32* %10, align 4
  %85 = icmp ne i32 %84, 0
  %86 = zext i1 %85 to i64
  %87 = select i1 %85, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0)
  %88 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %7, i32 0, i32 0
  %89 = load i8*, i8** %88, align 8
  %90 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %7, i32 0, i32 1
  %91 = load i64, i64* %90, align 8
  %92 = trunc i64 %91 to i32
  %93 = call i32 (i32, i8*, ...) @error(i32 %83, i8* %87, i8* %89, i32 %92)
  br label %94

94:                                               ; preds = %82, %79
  store i32 -1, i32* %8, align 4
  br label %110

95:                                               ; preds = %75, %72
  %96 = load i32, i32* %10, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %102

98:                                               ; preds = %95
  %99 = load %struct.bundle_header*, %struct.bundle_header** %5, align 8
  %100 = getelementptr inbounds %struct.bundle_header, %struct.bundle_header* %99, i32 0, i32 1
  %101 = call i32 @add_to_ref_list(%struct.object_id* %9, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0), i32* %100)
  br label %108

102:                                              ; preds = %95
  %103 = load i8*, i8** %11, align 8
  %104 = getelementptr inbounds i8, i8* %103, i64 1
  %105 = load %struct.bundle_header*, %struct.bundle_header** %5, align 8
  %106 = getelementptr inbounds %struct.bundle_header, %struct.bundle_header* %105, i32 0, i32 0
  %107 = call i32 @add_to_ref_list(%struct.object_id* %9, i8* %104, i32* %106)
  br label %108

108:                                              ; preds = %102, %98
  br label %109

109:                                              ; preds = %108
  br label %31

110:                                              ; preds = %94, %46
  br label %111

111:                                              ; preds = %110, %29
  %112 = load i32, i32* %8, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %117

114:                                              ; preds = %111
  %115 = load i32, i32* %4, align 4
  %116 = call i32 @close(i32 %115)
  store i32 -1, i32* %4, align 4
  br label %117

117:                                              ; preds = %114, %111
  %118 = call i32 @strbuf_release(%struct.strbuf* %7)
  %119 = load i32, i32* %4, align 4
  ret i32 %119
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i64 @strbuf_getwholeline_fd(%struct.strbuf*, i32, i8 signext) #2

declare dso_local i64 @strcmp(i8*, i32) #2

declare dso_local i32 @error(i32, i8*, ...) #2

declare dso_local i32 @_(i8*) #2

declare dso_local i32 @strbuf_remove(%struct.strbuf*, i32, i32) #2

declare dso_local i32 @strbuf_rtrim(%struct.strbuf*) #2

declare dso_local i64 @parse_oid_hex(i8*, %struct.object_id*, i8**) #2

declare dso_local i32 @isspace(i8 signext) #2

declare dso_local i32 @add_to_ref_list(%struct.object_id*, i8*, i32*) #2

declare dso_local i32 @close(i32) #2

declare dso_local i32 @strbuf_release(%struct.strbuf*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
