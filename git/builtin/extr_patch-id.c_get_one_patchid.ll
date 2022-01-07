; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_patch-id.c_get_one_patchid.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_patch-id.c_get_one_patchid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (i32*, i8*, i32)*, i32 (i32*)* }
%struct.object_id = type { i32 }
%struct.strbuf = type { i8* }

@the_hash_algo = common dso_local global %struct.TYPE_2__* null, align 8
@stdin = common dso_local global i32 0, align 4
@EOF = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [11 x i8] c"diff-tree \00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"commit \00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"From \00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"\\ \00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"diff \00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"index \00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"--- \00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"@@ -\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.object_id*, %struct.object_id*, %struct.strbuf*, i32)* @get_one_patchid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_one_patchid(%struct.object_id* %0, %struct.object_id* %1, %struct.strbuf* %2, i32 %3) #0 {
  %5 = alloca %struct.object_id*, align 8
  %6 = alloca %struct.object_id*, align 8
  %7 = alloca %struct.strbuf*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  store %struct.object_id* %0, %struct.object_id** %5, align 8
  store %struct.object_id* %1, %struct.object_id** %6, align 8
  store %struct.strbuf* %2, %struct.strbuf** %7, align 8
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 -1, i32* %11, align 4
  store i32 -1, i32* %12, align 4
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** @the_hash_algo, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 1
  %19 = load i32 (i32*)*, i32 (i32*)** %18, align 8
  %20 = call i32 %19(i32* %13)
  %21 = load %struct.object_id*, %struct.object_id** %6, align 8
  %22 = call i32 @oidclr(%struct.object_id* %21)
  br label %23

23:                                               ; preds = %146, %101, %75, %67, %53, %4
  %24 = load %struct.strbuf*, %struct.strbuf** %7, align 8
  %25 = load i32, i32* @stdin, align 4
  %26 = call i64 @strbuf_getwholeline(%struct.strbuf* %24, i32 %25, i8 signext 10)
  %27 = load i64, i64* @EOF, align 8
  %28 = icmp ne i64 %26, %27
  br i1 %28, label %29, label %158

29:                                               ; preds = %23
  %30 = load %struct.strbuf*, %struct.strbuf** %7, align 8
  %31 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %30, i32 0, i32 0
  %32 = load i8*, i8** %31, align 8
  store i8* %32, i8** %14, align 8
  %33 = load i8*, i8** %14, align 8
  store i8* %33, i8** %15, align 8
  %34 = load i8*, i8** %14, align 8
  %35 = call i32 @skip_prefix(i8* %34, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8** %15)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %54, label %37

37:                                               ; preds = %29
  %38 = load i8*, i8** %14, align 8
  %39 = call i32 @skip_prefix(i8* %38, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8** %15)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %54, label %41

41:                                               ; preds = %37
  %42 = load i8*, i8** %14, align 8
  %43 = call i32 @skip_prefix(i8* %42, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8** %15)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %54, label %45

45:                                               ; preds = %41
  %46 = load i8*, i8** %14, align 8
  %47 = call i64 @starts_with(i8* %46, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %54

49:                                               ; preds = %45
  %50 = load i8*, i8** %14, align 8
  %51 = call i32 @strlen(i8* %50)
  %52 = icmp slt i32 12, %51
  br i1 %52, label %53, label %54

53:                                               ; preds = %49
  br label %23

54:                                               ; preds = %49, %45, %41, %37, %29
  %55 = load i8*, i8** %15, align 8
  %56 = load %struct.object_id*, %struct.object_id** %5, align 8
  %57 = call i32 @get_oid_hex(i8* %55, %struct.object_id* %56)
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %60, label %59

59:                                               ; preds = %54
  store i32 1, i32* %10, align 4
  br label %158

60:                                               ; preds = %54
  %61 = load i32, i32* %9, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %68, label %63

63:                                               ; preds = %60
  %64 = load i8*, i8** %14, align 8
  %65 = call i64 @starts_with(i8* %64, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0))
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %68, label %67

67:                                               ; preds = %63
  br label %23

68:                                               ; preds = %63, %60
  %69 = load i32, i32* %11, align 4
  %70 = icmp eq i32 %69, -1
  br i1 %70, label %71, label %91

71:                                               ; preds = %68
  %72 = load i8*, i8** %14, align 8
  %73 = call i64 @starts_with(i8* %72, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0))
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %71
  br label %23

76:                                               ; preds = %71
  %77 = load i8*, i8** %14, align 8
  %78 = call i64 @starts_with(i8* %77, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0))
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %76
  store i32 1, i32* %12, align 4
  store i32 1, i32* %11, align 4
  br label %89

81:                                               ; preds = %76
  %82 = load i8*, i8** %14, align 8
  %83 = getelementptr inbounds i8, i8* %82, i64 0
  %84 = load i8, i8* %83, align 1
  %85 = call i32 @isalpha(i8 signext %84)
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %88, label %87

87:                                               ; preds = %81
  br label %158

88:                                               ; preds = %81
  br label %89

89:                                               ; preds = %88, %80
  br label %90

90:                                               ; preds = %89
  br label %91

91:                                               ; preds = %90, %68
  %92 = load i32, i32* %11, align 4
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %94, label %116

94:                                               ; preds = %91
  %95 = load i32, i32* %12, align 4
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %97, label %116

97:                                               ; preds = %94
  %98 = load i8*, i8** %14, align 8
  %99 = call i64 @starts_with(i8* %98, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0))
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %104

101:                                              ; preds = %97
  %102 = load i8*, i8** %14, align 8
  %103 = call i32 @scan_hunk_header(i8* %102, i32* %11, i32* %12)
  br label %23

104:                                              ; preds = %97
  %105 = load i8*, i8** %14, align 8
  %106 = call i64 @starts_with(i8* %105, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0))
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %109, label %108

108:                                              ; preds = %104
  br label %158

109:                                              ; preds = %104
  %110 = load i32, i32* %8, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %115

112:                                              ; preds = %109
  %113 = load %struct.object_id*, %struct.object_id** %6, align 8
  %114 = call i32 @flush_one_hunk(%struct.object_id* %113, i32* %13)
  br label %115

115:                                              ; preds = %112, %109
  store i32 -1, i32* %12, align 4
  store i32 -1, i32* %11, align 4
  br label %116

116:                                              ; preds = %115, %94, %91
  %117 = load i8*, i8** %14, align 8
  %118 = getelementptr inbounds i8, i8* %117, i64 0
  %119 = load i8, i8* %118, align 1
  %120 = sext i8 %119 to i32
  %121 = icmp eq i32 %120, 45
  br i1 %121, label %128, label %122

122:                                              ; preds = %116
  %123 = load i8*, i8** %14, align 8
  %124 = getelementptr inbounds i8, i8* %123, i64 0
  %125 = load i8, i8* %124, align 1
  %126 = sext i8 %125 to i32
  %127 = icmp eq i32 %126, 32
  br i1 %127, label %128, label %131

128:                                              ; preds = %122, %116
  %129 = load i32, i32* %11, align 4
  %130 = add nsw i32 %129, -1
  store i32 %130, i32* %11, align 4
  br label %131

131:                                              ; preds = %128, %122
  %132 = load i8*, i8** %14, align 8
  %133 = getelementptr inbounds i8, i8* %132, i64 0
  %134 = load i8, i8* %133, align 1
  %135 = sext i8 %134 to i32
  %136 = icmp eq i32 %135, 43
  br i1 %136, label %143, label %137

137:                                              ; preds = %131
  %138 = load i8*, i8** %14, align 8
  %139 = getelementptr inbounds i8, i8* %138, i64 0
  %140 = load i8, i8* %139, align 1
  %141 = sext i8 %140 to i32
  %142 = icmp eq i32 %141, 32
  br i1 %142, label %143, label %146

143:                                              ; preds = %137, %131
  %144 = load i32, i32* %12, align 4
  %145 = add nsw i32 %144, -1
  store i32 %145, i32* %12, align 4
  br label %146

146:                                              ; preds = %143, %137
  %147 = load i8*, i8** %14, align 8
  %148 = call i32 @remove_space(i8* %147)
  store i32 %148, i32* %16, align 4
  %149 = load i32, i32* %16, align 4
  %150 = load i32, i32* %9, align 4
  %151 = add nsw i32 %150, %149
  store i32 %151, i32* %9, align 4
  %152 = load %struct.TYPE_2__*, %struct.TYPE_2__** @the_hash_algo, align 8
  %153 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %152, i32 0, i32 0
  %154 = load i32 (i32*, i8*, i32)*, i32 (i32*, i8*, i32)** %153, align 8
  %155 = load i8*, i8** %14, align 8
  %156 = load i32, i32* %16, align 4
  %157 = call i32 %154(i32* %13, i8* %155, i32 %156)
  br label %23

158:                                              ; preds = %108, %87, %59, %23
  %159 = load i32, i32* %10, align 4
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %164, label %161

161:                                              ; preds = %158
  %162 = load %struct.object_id*, %struct.object_id** %5, align 8
  %163 = call i32 @oidclr(%struct.object_id* %162)
  br label %164

164:                                              ; preds = %161, %158
  %165 = load %struct.object_id*, %struct.object_id** %6, align 8
  %166 = call i32 @flush_one_hunk(%struct.object_id* %165, i32* %13)
  %167 = load i32, i32* %9, align 4
  ret i32 %167
}

declare dso_local i32 @oidclr(%struct.object_id*) #1

declare dso_local i64 @strbuf_getwholeline(%struct.strbuf*, i32, i8 signext) #1

declare dso_local i32 @skip_prefix(i8*, i8*, i8**) #1

declare dso_local i64 @starts_with(i8*, i8*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @get_oid_hex(i8*, %struct.object_id*) #1

declare dso_local i32 @isalpha(i8 signext) #1

declare dso_local i32 @scan_hunk_header(i8*, i32*, i32*) #1

declare dso_local i32 @flush_one_hunk(%struct.object_id*, i32*) #1

declare dso_local i32 @remove_space(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
