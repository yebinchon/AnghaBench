; ModuleID = '/home/carl/AnghaBench/git/extr_commit.c_read_commit_extra_header_lines.c'
source_filename = "/home/carl/AnghaBench/git/extr_commit.c_read_commit_extra_header_lines.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i32 }
%struct.commit_extra_header = type { i32, i8*, %struct.commit_extra_header*, i32 }

@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.commit_extra_header* (i8*, i64, i8**)* @read_commit_extra_header_lines to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.commit_extra_header* @read_commit_extra_header_lines(i8* %0, i64 %1, i8** %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8**, align 8
  %7 = alloca %struct.commit_extra_header*, align 8
  %8 = alloca %struct.commit_extra_header**, align 8
  %9 = alloca %struct.commit_extra_header*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca %struct.strbuf, align 4
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  store i8** %2, i8*** %6, align 8
  store %struct.commit_extra_header* null, %struct.commit_extra_header** %7, align 8
  store %struct.commit_extra_header** %7, %struct.commit_extra_header*** %8, align 8
  store %struct.commit_extra_header* null, %struct.commit_extra_header** %9, align 8
  %15 = bitcast %struct.strbuf* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %15, i8* align 4 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 4, i1 false)
  %16 = load i8*, i8** %4, align 8
  store i8* %16, i8** %10, align 8
  %17 = load i8*, i8** %10, align 8
  %18 = load i64, i64* %5, align 8
  %19 = getelementptr inbounds i8, i8* %17, i64 %18
  store i8* %19, i8** %13, align 8
  br label %20

20:                                               ; preds = %146, %3
  %21 = load i8*, i8** %10, align 8
  %22 = load i8*, i8** %13, align 8
  %23 = icmp ult i8* %21, %22
  br i1 %23, label %24, label %29

24:                                               ; preds = %20
  %25 = load i8*, i8** %10, align 8
  %26 = load i8, i8* %25, align 1
  %27 = sext i8 %26 to i32
  %28 = icmp ne i32 %27, 10
  br label %29

29:                                               ; preds = %24, %20
  %30 = phi i1 [ false, %20 ], [ %28, %24 ]
  br i1 %30, label %31, label %148

31:                                               ; preds = %29
  %32 = load i8*, i8** %10, align 8
  %33 = load i8*, i8** %13, align 8
  %34 = load i8*, i8** %10, align 8
  %35 = ptrtoint i8* %33 to i64
  %36 = ptrtoint i8* %34 to i64
  %37 = sub i64 %35, %36
  %38 = trunc i64 %37 to i32
  %39 = call i8* @memchr(i8* %32, i8 signext 10, i32 %38)
  store i8* %39, i8** %11, align 8
  %40 = load i8*, i8** %11, align 8
  %41 = icmp ne i8* %40, null
  br i1 %41, label %42, label %45

42:                                               ; preds = %31
  %43 = load i8*, i8** %11, align 8
  %44 = getelementptr inbounds i8, i8* %43, i64 1
  br label %47

45:                                               ; preds = %31
  %46 = load i8*, i8** %13, align 8
  br label %47

47:                                               ; preds = %45, %42
  %48 = phi i8* [ %44, %42 ], [ %46, %45 ]
  store i8* %48, i8** %11, align 8
  %49 = load i8*, i8** %10, align 8
  %50 = load i8, i8* %49, align 1
  %51 = sext i8 %50 to i32
  %52 = icmp eq i32 %51, 32
  br i1 %52, label %53, label %68

53:                                               ; preds = %47
  %54 = load %struct.commit_extra_header*, %struct.commit_extra_header** %9, align 8
  %55 = icmp ne %struct.commit_extra_header* %54, null
  br i1 %55, label %56, label %67

56:                                               ; preds = %53
  %57 = load i8*, i8** %10, align 8
  %58 = getelementptr inbounds i8, i8* %57, i64 1
  %59 = load i8*, i8** %11, align 8
  %60 = load i8*, i8** %10, align 8
  %61 = getelementptr inbounds i8, i8* %60, i64 1
  %62 = ptrtoint i8* %59 to i64
  %63 = ptrtoint i8* %61 to i64
  %64 = sub i64 %62, %63
  %65 = trunc i64 %64 to i32
  %66 = call i32 @strbuf_add(%struct.strbuf* %14, i8* %58, i32 %65)
  br label %67

67:                                               ; preds = %56, %53
  br label %146

68:                                               ; preds = %47
  %69 = load %struct.commit_extra_header*, %struct.commit_extra_header** %9, align 8
  %70 = icmp ne %struct.commit_extra_header* %69, null
  br i1 %70, label %71, label %77

71:                                               ; preds = %68
  %72 = load %struct.commit_extra_header*, %struct.commit_extra_header** %9, align 8
  %73 = getelementptr inbounds %struct.commit_extra_header, %struct.commit_extra_header* %72, i32 0, i32 0
  %74 = call i8* @strbuf_detach(%struct.strbuf* %14, i32* %73)
  %75 = load %struct.commit_extra_header*, %struct.commit_extra_header** %9, align 8
  %76 = getelementptr inbounds %struct.commit_extra_header, %struct.commit_extra_header* %75, i32 0, i32 1
  store i8* %74, i8** %76, align 8
  br label %77

77:                                               ; preds = %71, %68
  %78 = call i32 @strbuf_reset(%struct.strbuf* %14)
  store %struct.commit_extra_header* null, %struct.commit_extra_header** %9, align 8
  %79 = load i8*, i8** %10, align 8
  %80 = load i8*, i8** %11, align 8
  %81 = load i8*, i8** %10, align 8
  %82 = ptrtoint i8* %80 to i64
  %83 = ptrtoint i8* %81 to i64
  %84 = sub i64 %82, %83
  %85 = trunc i64 %84 to i32
  %86 = call i8* @memchr(i8* %79, i8 signext 32, i32 %85)
  store i8* %86, i8** %12, align 8
  %87 = load i8*, i8** %12, align 8
  %88 = icmp ne i8* %87, null
  br i1 %88, label %91, label %89

89:                                               ; preds = %77
  %90 = load i8*, i8** %11, align 8
  store i8* %90, i8** %12, align 8
  br label %114

91:                                               ; preds = %77
  %92 = load i8*, i8** %10, align 8
  %93 = load i8*, i8** %12, align 8
  %94 = load i8*, i8** %10, align 8
  %95 = ptrtoint i8* %93 to i64
  %96 = ptrtoint i8* %94 to i64
  %97 = sub i64 %95, %96
  %98 = trunc i64 %97 to i32
  %99 = call i64 @standard_header_field(i8* %92, i32 %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %112, label %101

101:                                              ; preds = %91
  %102 = load i8*, i8** %10, align 8
  %103 = load i8*, i8** %12, align 8
  %104 = load i8*, i8** %10, align 8
  %105 = ptrtoint i8* %103 to i64
  %106 = ptrtoint i8* %104 to i64
  %107 = sub i64 %105, %106
  %108 = trunc i64 %107 to i32
  %109 = load i8**, i8*** %6, align 8
  %110 = call i64 @excluded_header_field(i8* %102, i32 %108, i8** %109)
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %113

112:                                              ; preds = %101, %91
  br label %146

113:                                              ; preds = %101
  br label %114

114:                                              ; preds = %113, %89
  %115 = call %struct.commit_extra_header* @xcalloc(i32 1, i32 32)
  store %struct.commit_extra_header* %115, %struct.commit_extra_header** %9, align 8
  %116 = load i8*, i8** %10, align 8
  %117 = load i8*, i8** %12, align 8
  %118 = load i8*, i8** %10, align 8
  %119 = ptrtoint i8* %117 to i64
  %120 = ptrtoint i8* %118 to i64
  %121 = sub i64 %119, %120
  %122 = trunc i64 %121 to i32
  %123 = call i32 @xmemdupz(i8* %116, i32 %122)
  %124 = load %struct.commit_extra_header*, %struct.commit_extra_header** %9, align 8
  %125 = getelementptr inbounds %struct.commit_extra_header, %struct.commit_extra_header* %124, i32 0, i32 3
  store i32 %123, i32* %125, align 8
  %126 = load %struct.commit_extra_header*, %struct.commit_extra_header** %9, align 8
  %127 = load %struct.commit_extra_header**, %struct.commit_extra_header*** %8, align 8
  store %struct.commit_extra_header* %126, %struct.commit_extra_header** %127, align 8
  %128 = load %struct.commit_extra_header*, %struct.commit_extra_header** %9, align 8
  %129 = getelementptr inbounds %struct.commit_extra_header, %struct.commit_extra_header* %128, i32 0, i32 2
  store %struct.commit_extra_header** %129, %struct.commit_extra_header*** %8, align 8
  %130 = load i8*, i8** %12, align 8
  %131 = getelementptr inbounds i8, i8* %130, i64 1
  %132 = load i8*, i8** %11, align 8
  %133 = icmp ult i8* %131, %132
  br i1 %133, label %134, label %145

134:                                              ; preds = %114
  %135 = load i8*, i8** %12, align 8
  %136 = getelementptr inbounds i8, i8* %135, i64 1
  %137 = load i8*, i8** %11, align 8
  %138 = load i8*, i8** %12, align 8
  %139 = getelementptr inbounds i8, i8* %138, i64 1
  %140 = ptrtoint i8* %137 to i64
  %141 = ptrtoint i8* %139 to i64
  %142 = sub i64 %140, %141
  %143 = trunc i64 %142 to i32
  %144 = call i32 @strbuf_add(%struct.strbuf* %14, i8* %136, i32 %143)
  br label %145

145:                                              ; preds = %134, %114
  br label %146

146:                                              ; preds = %145, %112, %67
  %147 = load i8*, i8** %11, align 8
  store i8* %147, i8** %10, align 8
  br label %20

148:                                              ; preds = %29
  %149 = load %struct.commit_extra_header*, %struct.commit_extra_header** %9, align 8
  %150 = icmp ne %struct.commit_extra_header* %149, null
  br i1 %150, label %151, label %157

151:                                              ; preds = %148
  %152 = load %struct.commit_extra_header*, %struct.commit_extra_header** %9, align 8
  %153 = getelementptr inbounds %struct.commit_extra_header, %struct.commit_extra_header* %152, i32 0, i32 0
  %154 = call i8* @strbuf_detach(%struct.strbuf* %14, i32* %153)
  %155 = load %struct.commit_extra_header*, %struct.commit_extra_header** %9, align 8
  %156 = getelementptr inbounds %struct.commit_extra_header, %struct.commit_extra_header* %155, i32 0, i32 1
  store i8* %154, i8** %156, align 8
  br label %157

157:                                              ; preds = %151, %148
  %158 = load %struct.commit_extra_header*, %struct.commit_extra_header** %7, align 8
  ret %struct.commit_extra_header* %158
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i8* @memchr(i8*, i8 signext, i32) #2

declare dso_local i32 @strbuf_add(%struct.strbuf*, i8*, i32) #2

declare dso_local i8* @strbuf_detach(%struct.strbuf*, i32*) #2

declare dso_local i32 @strbuf_reset(%struct.strbuf*) #2

declare dso_local i64 @standard_header_field(i8*, i32) #2

declare dso_local i64 @excluded_header_field(i8*, i32, i8**) #2

declare dso_local %struct.commit_extra_header* @xcalloc(i32, i32) #2

declare dso_local i32 @xmemdupz(i8*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
