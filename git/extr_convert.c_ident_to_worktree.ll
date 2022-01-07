; ModuleID = '/home/carl/AnghaBench/git/extr_convert.c_ident_to_worktree.c'
source_filename = "/home/carl/AnghaBench/git/extr_convert.c_ident_to_worktree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.strbuf = type { i8* }
%struct.object_id = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"blob\00", align 1
@the_hash_algo = common dso_local global %struct.TYPE_2__* null, align 8
@.str.1 = private unnamed_addr constant [3 x i8] c"Id\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"Id: \00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c" $\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i64, %struct.strbuf*, i32)* @ident_to_worktree to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ident_to_worktree(i8* %0, i64 %1, %struct.strbuf* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.strbuf*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.object_id, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i64 %1, i64* %7, align 8
  store %struct.strbuf* %2, %struct.strbuf** %8, align 8
  store i32 %3, i32* %9, align 4
  store i8* null, i8** %11, align 8
  %15 = load i32, i32* %9, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %171

18:                                               ; preds = %4
  %19 = load i8*, i8** %6, align 8
  %20 = load i64, i64* %7, align 8
  %21 = call i32 @count_ident(i8* %19, i64 %20)
  store i32 %21, i32* %14, align 4
  %22 = load i32, i32* %14, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %18
  store i32 0, i32* %5, align 4
  br label %171

25:                                               ; preds = %18
  %26 = load i8*, i8** %6, align 8
  %27 = load %struct.strbuf*, %struct.strbuf** %8, align 8
  %28 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %27, i32 0, i32 0
  %29 = load i8*, i8** %28, align 8
  %30 = icmp eq i8* %26, %29
  br i1 %30, label %31, label %34

31:                                               ; preds = %25
  %32 = load %struct.strbuf*, %struct.strbuf** %8, align 8
  %33 = call i8* @strbuf_detach(%struct.strbuf* %32, i32* null)
  store i8* %33, i8** %11, align 8
  br label %34

34:                                               ; preds = %31, %25
  %35 = load i8*, i8** %6, align 8
  %36 = load i64, i64* %7, align 8
  %37 = call i32 @hash_object_file(i8* %35, i64 %36, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), %struct.object_id* %10)
  %38 = load %struct.strbuf*, %struct.strbuf** %8, align 8
  %39 = load i64, i64* %7, align 8
  %40 = load i32, i32* %14, align 4
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** @the_hash_algo, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = add nsw i32 %43, 3
  %45 = mul nsw i32 %40, %44
  %46 = sext i32 %45 to i64
  %47 = add i64 %39, %46
  %48 = call i32 @strbuf_grow(%struct.strbuf* %38, i64 %47)
  br label %49

49:                                               ; preds = %156, %154, %142, %123, %83, %34
  %50 = load i8*, i8** %6, align 8
  %51 = load i64, i64* %7, align 8
  %52 = trunc i64 %51 to i32
  %53 = call i8* @memchr(i8* %50, i8 signext 36, i32 %52)
  store i8* %53, i8** %12, align 8
  %54 = load i8*, i8** %12, align 8
  %55 = icmp ne i8* %54, null
  br i1 %55, label %57, label %56

56:                                               ; preds = %49
  br label %164

57:                                               ; preds = %49
  %58 = load %struct.strbuf*, %struct.strbuf** %8, align 8
  %59 = load i8*, i8** %6, align 8
  %60 = load i8*, i8** %12, align 8
  %61 = getelementptr inbounds i8, i8* %60, i64 1
  %62 = load i8*, i8** %6, align 8
  %63 = ptrtoint i8* %61 to i64
  %64 = ptrtoint i8* %62 to i64
  %65 = sub i64 %63, %64
  %66 = call i32 @strbuf_add(%struct.strbuf* %58, i8* %59, i64 %65)
  %67 = load i8*, i8** %12, align 8
  %68 = getelementptr inbounds i8, i8* %67, i64 1
  %69 = load i8*, i8** %6, align 8
  %70 = ptrtoint i8* %68 to i64
  %71 = ptrtoint i8* %69 to i64
  %72 = sub i64 %70, %71
  %73 = load i64, i64* %7, align 8
  %74 = sub i64 %73, %72
  store i64 %74, i64* %7, align 8
  %75 = load i8*, i8** %12, align 8
  %76 = getelementptr inbounds i8, i8* %75, i64 1
  store i8* %76, i8** %6, align 8
  %77 = load i64, i64* %7, align 8
  %78 = icmp ult i64 %77, 3
  br i1 %78, label %83, label %79

79:                                               ; preds = %57
  %80 = load i8*, i8** %6, align 8
  %81 = call i64 @memcmp(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %80, i32 2)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %79, %57
  br label %49

84:                                               ; preds = %79
  %85 = load i8*, i8** %6, align 8
  %86 = getelementptr inbounds i8, i8* %85, i64 2
  %87 = load i8, i8* %86, align 1
  %88 = sext i8 %87 to i32
  %89 = icmp eq i32 %88, 36
  br i1 %89, label %90, label %95

90:                                               ; preds = %84
  %91 = load i8*, i8** %6, align 8
  %92 = getelementptr inbounds i8, i8* %91, i64 3
  store i8* %92, i8** %6, align 8
  %93 = load i64, i64* %7, align 8
  %94 = sub i64 %93, 3
  store i64 %94, i64* %7, align 8
  br label %156

95:                                               ; preds = %84
  %96 = load i8*, i8** %6, align 8
  %97 = getelementptr inbounds i8, i8* %96, i64 2
  %98 = load i8, i8* %97, align 1
  %99 = sext i8 %98 to i32
  %100 = icmp eq i32 %99, 58
  br i1 %100, label %101, label %154

101:                                              ; preds = %95
  %102 = load i8*, i8** %6, align 8
  %103 = getelementptr inbounds i8, i8* %102, i64 3
  %104 = load i64, i64* %7, align 8
  %105 = sub i64 %104, 3
  %106 = trunc i64 %105 to i32
  %107 = call i8* @memchr(i8* %103, i8 signext 36, i32 %106)
  store i8* %107, i8** %12, align 8
  %108 = load i8*, i8** %12, align 8
  %109 = icmp ne i8* %108, null
  br i1 %109, label %111, label %110

110:                                              ; preds = %101
  br label %164

111:                                              ; preds = %101
  %112 = load i8*, i8** %6, align 8
  %113 = getelementptr inbounds i8, i8* %112, i64 3
  %114 = load i8*, i8** %12, align 8
  %115 = load i8*, i8** %6, align 8
  %116 = ptrtoint i8* %114 to i64
  %117 = ptrtoint i8* %115 to i64
  %118 = sub i64 %116, %117
  %119 = sub nsw i64 %118, 3
  %120 = trunc i64 %119 to i32
  %121 = call i8* @memchr(i8* %113, i8 signext 10, i32 %120)
  %122 = icmp ne i8* %121, null
  br i1 %122, label %123, label %124

123:                                              ; preds = %111
  br label %49

124:                                              ; preds = %111
  %125 = load i8*, i8** %6, align 8
  %126 = getelementptr inbounds i8, i8* %125, i64 4
  %127 = load i8*, i8** %12, align 8
  %128 = load i8*, i8** %6, align 8
  %129 = ptrtoint i8* %127 to i64
  %130 = ptrtoint i8* %128 to i64
  %131 = sub i64 %129, %130
  %132 = sub nsw i64 %131, 4
  %133 = trunc i64 %132 to i32
  %134 = call i8* @memchr(i8* %126, i8 signext 32, i32 %133)
  store i8* %134, i8** %13, align 8
  %135 = load i8*, i8** %13, align 8
  %136 = icmp ne i8* %135, null
  br i1 %136, label %137, label %143

137:                                              ; preds = %124
  %138 = load i8*, i8** %13, align 8
  %139 = load i8*, i8** %12, align 8
  %140 = getelementptr inbounds i8, i8* %139, i64 -1
  %141 = icmp ult i8* %138, %140
  br i1 %141, label %142, label %143

142:                                              ; preds = %137
  br label %49

143:                                              ; preds = %137, %124
  %144 = load i8*, i8** %12, align 8
  %145 = getelementptr inbounds i8, i8* %144, i64 1
  %146 = load i8*, i8** %6, align 8
  %147 = ptrtoint i8* %145 to i64
  %148 = ptrtoint i8* %146 to i64
  %149 = sub i64 %147, %148
  %150 = load i64, i64* %7, align 8
  %151 = sub i64 %150, %149
  store i64 %151, i64* %7, align 8
  %152 = load i8*, i8** %12, align 8
  %153 = getelementptr inbounds i8, i8* %152, i64 1
  store i8* %153, i8** %6, align 8
  br label %155

154:                                              ; preds = %95
  br label %49

155:                                              ; preds = %143
  br label %156

156:                                              ; preds = %155, %90
  %157 = load %struct.strbuf*, %struct.strbuf** %8, align 8
  %158 = call i32 @strbuf_addstr(%struct.strbuf* %157, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %159 = load %struct.strbuf*, %struct.strbuf** %8, align 8
  %160 = call i8* @oid_to_hex(%struct.object_id* %10)
  %161 = call i32 @strbuf_addstr(%struct.strbuf* %159, i8* %160)
  %162 = load %struct.strbuf*, %struct.strbuf** %8, align 8
  %163 = call i32 @strbuf_addstr(%struct.strbuf* %162, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  br label %49

164:                                              ; preds = %110, %56
  %165 = load %struct.strbuf*, %struct.strbuf** %8, align 8
  %166 = load i8*, i8** %6, align 8
  %167 = load i64, i64* %7, align 8
  %168 = call i32 @strbuf_add(%struct.strbuf* %165, i8* %166, i64 %167)
  %169 = load i8*, i8** %11, align 8
  %170 = call i32 @free(i8* %169)
  store i32 1, i32* %5, align 4
  br label %171

171:                                              ; preds = %164, %24, %17
  %172 = load i32, i32* %5, align 4
  ret i32 %172
}

declare dso_local i32 @count_ident(i8*, i64) #1

declare dso_local i8* @strbuf_detach(%struct.strbuf*, i32*) #1

declare dso_local i32 @hash_object_file(i8*, i64, i8*, %struct.object_id*) #1

declare dso_local i32 @strbuf_grow(%struct.strbuf*, i64) #1

declare dso_local i8* @memchr(i8*, i8 signext, i32) #1

declare dso_local i32 @strbuf_add(%struct.strbuf*, i8*, i64) #1

declare dso_local i64 @memcmp(i8*, i8*, i32) #1

declare dso_local i32 @strbuf_addstr(%struct.strbuf*, i8*) #1

declare dso_local i8* @oid_to_hex(%struct.object_id*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
