; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_fmt-merge-msg.c_fmt_merge_msg_sigs.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_fmt-merge-msg.c_fmt_merge_msg_sigs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i64, i32 }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, %struct.object_id* }
%struct.object_id = type { i32 }

@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 8
@origins = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@OBJ_TAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"gpg verification failed.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.strbuf*)* @fmt_merge_msg_sigs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fmt_merge_msg_sigs(%struct.strbuf* %0) #0 {
  %2 = alloca %struct.strbuf*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.strbuf, align 8
  %7 = alloca %struct.object_id*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.strbuf, align 8
  %13 = alloca %struct.strbuf, align 8
  store %struct.strbuf* %0, %struct.strbuf** %2, align 8
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %14 = bitcast %struct.strbuf* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %14, i8* align 8 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 16, i1 false)
  store i32 0, i32* %3, align 4
  br label %15

15:                                               ; preds = %122, %1
  %16 = load i32, i32* %3, align 4
  %17 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @origins, i32 0, i32 0), align 8
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %19, label %125

19:                                               ; preds = %15
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @origins, i32 0, i32 1), align 8
  %21 = load i32, i32* %3, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i64 %22
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 1
  %25 = load %struct.object_id*, %struct.object_id** %24, align 8
  store %struct.object_id* %25, %struct.object_id** %7, align 8
  %26 = load %struct.object_id*, %struct.object_id** %7, align 8
  %27 = call i8* @read_object_file(%struct.object_id* %26, i32* %8, i64* %9)
  store i8* %27, i8** %11, align 8
  %28 = bitcast %struct.strbuf* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %28, i8* align 8 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 16, i1 false)
  %29 = load i8*, i8** %11, align 8
  %30 = icmp ne i8* %29, null
  br i1 %30, label %31, label %35

31:                                               ; preds = %19
  %32 = load i32, i32* %8, align 4
  %33 = load i32, i32* @OBJ_TAG, align 4
  %34 = icmp ne i32 %32, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %31, %19
  br label %119

36:                                               ; preds = %31
  %37 = load i8*, i8** %11, align 8
  %38 = load i64, i64* %9, align 8
  %39 = call i64 @parse_signature(i8* %37, i64 %38)
  store i64 %39, i64* %10, align 8
  %40 = load i64, i64* %9, align 8
  %41 = load i64, i64* %10, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %36
  br label %63

44:                                               ; preds = %36
  %45 = load i8*, i8** %11, align 8
  %46 = load i64, i64* %10, align 8
  %47 = load i8*, i8** %11, align 8
  %48 = load i64, i64* %10, align 8
  %49 = getelementptr inbounds i8, i8* %47, i64 %48
  %50 = load i64, i64* %9, align 8
  %51 = load i64, i64* %10, align 8
  %52 = sub i64 %50, %51
  %53 = call i64 @verify_signed_buffer(i8* %45, i64 %46, i8* %49, i64 %52, %struct.strbuf* %12, i32* null)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %62

55:                                               ; preds = %44
  %56 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %12, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %61, label %59

59:                                               ; preds = %55
  %60 = call i32 @strbuf_addstr(%struct.strbuf* %12, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  br label %61

61:                                               ; preds = %59, %55
  br label %62

62:                                               ; preds = %61, %44
  br label %63

63:                                               ; preds = %62, %43
  %64 = load i32, i32* %4, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %4, align 4
  %66 = icmp ne i32 %64, 0
  br i1 %66, label %72, label %67

67:                                               ; preds = %63
  %68 = load i8*, i8** %11, align 8
  %69 = load i64, i64* %10, align 8
  %70 = call i32 @fmt_tag_signature(%struct.strbuf* %6, %struct.strbuf* %12, i8* %68, i64 %69)
  %71 = load i32, i32* %3, align 4
  store i32 %71, i32* %5, align 4
  br label %117

72:                                               ; preds = %63
  %73 = load i32, i32* %4, align 4
  %74 = icmp eq i32 %73, 2
  br i1 %74, label %75, label %98

75:                                               ; preds = %72
  %76 = bitcast %struct.strbuf* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %76, i8* align 8 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 16, i1 false)
  %77 = call i32 @strbuf_addch(%struct.strbuf* %13, i8 signext 10)
  %78 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @origins, i32 0, i32 1), align 8
  %79 = load i32, i32* %5, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i64 %80
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @origins, i32 0, i32 1), align 8
  %85 = load i32, i32* %5, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %84, i64 %86
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = call i32 @strlen(i32 %89)
  %91 = call i32 @strbuf_add_commented_lines(%struct.strbuf* %13, i32 %83, i32 %90)
  %92 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %13, i32 0, i32 1
  %93 = load i32, i32* %92, align 8
  %94 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %13, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = call i32 @strbuf_insert(%struct.strbuf* %6, i32 0, i32 %93, i64 %95)
  %97 = call i32 @strbuf_release(%struct.strbuf* %13)
  br label %98

98:                                               ; preds = %75, %72
  %99 = call i32 @strbuf_addch(%struct.strbuf* %6, i8 signext 10)
  %100 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @origins, i32 0, i32 1), align 8
  %101 = load i32, i32* %3, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %100, i64 %102
  %104 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @origins, i32 0, i32 1), align 8
  %107 = load i32, i32* %3, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %106, i64 %108
  %110 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = call i32 @strlen(i32 %111)
  %113 = call i32 @strbuf_add_commented_lines(%struct.strbuf* %6, i32 %105, i32 %112)
  %114 = load i8*, i8** %11, align 8
  %115 = load i64, i64* %10, align 8
  %116 = call i32 @fmt_tag_signature(%struct.strbuf* %6, %struct.strbuf* %12, i8* %114, i64 %115)
  br label %117

117:                                              ; preds = %98, %67
  %118 = call i32 @strbuf_release(%struct.strbuf* %12)
  br label %119

119:                                              ; preds = %117, %35
  %120 = load i8*, i8** %11, align 8
  %121 = call i32 @free(i8* %120)
  br label %122

122:                                              ; preds = %119
  %123 = load i32, i32* %3, align 4
  %124 = add nsw i32 %123, 1
  store i32 %124, i32* %3, align 4
  br label %15

125:                                              ; preds = %15
  %126 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %6, i32 0, i32 0
  %127 = load i64, i64* %126, align 8
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %134

129:                                              ; preds = %125
  %130 = load %struct.strbuf*, %struct.strbuf** %2, align 8
  %131 = call i32 @strbuf_addch(%struct.strbuf* %130, i8 signext 10)
  %132 = load %struct.strbuf*, %struct.strbuf** %2, align 8
  %133 = call i32 @strbuf_addbuf(%struct.strbuf* %132, %struct.strbuf* %6)
  br label %134

134:                                              ; preds = %129, %125
  %135 = call i32 @strbuf_release(%struct.strbuf* %6)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i8* @read_object_file(%struct.object_id*, i32*, i64*) #2

declare dso_local i64 @parse_signature(i8*, i64) #2

declare dso_local i64 @verify_signed_buffer(i8*, i64, i8*, i64, %struct.strbuf*, i32*) #2

declare dso_local i32 @strbuf_addstr(%struct.strbuf*, i8*) #2

declare dso_local i32 @fmt_tag_signature(%struct.strbuf*, %struct.strbuf*, i8*, i64) #2

declare dso_local i32 @strbuf_addch(%struct.strbuf*, i8 signext) #2

declare dso_local i32 @strbuf_add_commented_lines(%struct.strbuf*, i32, i32) #2

declare dso_local i32 @strlen(i32) #2

declare dso_local i32 @strbuf_insert(%struct.strbuf*, i32, i32, i64) #2

declare dso_local i32 @strbuf_release(%struct.strbuf*) #2

declare dso_local i32 @free(i8*) #2

declare dso_local i32 @strbuf_addbuf(%struct.strbuf*, %struct.strbuf*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
